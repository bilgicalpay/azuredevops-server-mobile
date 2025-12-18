/// Market Service
/// 
/// Azure DevOps Git repository'den release'leri ve artifact'ları çeker.
/// APK ve IPA dosyalarını indirme işlemlerini yönetir.
/// 
/// @author Alpay Bilgiç

import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:logging/logging.dart';
import 'auth_service.dart';
import 'certificate_pinning_service.dart';

/// Release model
class Release {
  final String tag;
  final String name;
  final String? description;
  final DateTime? publishedAt;
  final List<Artifact> artifacts;

  Release({
    required this.tag,
    required this.name,
    this.description,
    this.publishedAt,
    required this.artifacts,
  });

  factory Release.fromJson(Map<String, dynamic> json) {
    return Release(
      tag: json['tag'] ?? json['name'] ?? '',
      name: json['name'] ?? json['tag'] ?? '',
      description: json['body'] ?? json['description'],
      publishedAt: json['published_at'] != null
          ? DateTime.tryParse(json['published_at'])
          : null,
      artifacts: (json['assets'] as List<dynamic>?)
              ?.map((asset) => Artifact.fromJson(asset))
              .toList() ??
          [],
    );
  }
}

/// Artifact model
class Artifact {
  final String name;
  final String downloadUrl;
  final int? size;
  final String contentType;

  Artifact({
    required this.name,
    required this.downloadUrl,
    required this.size,
    required this.contentType,
  });

  factory Artifact.fromJson(Map<String, dynamic> json) {
    return Artifact(
      name: json['name'] ?? '',
      downloadUrl: json['browser_download_url'] ?? json['downloadUrl'] ?? '',
      size: json['size'],
      contentType: json['content_type'] ?? json['contentType'] ?? 'application/octet-stream',
    );
  }

  bool get isApk => name.toLowerCase().endsWith('.apk');
  bool get isIpa => name.toLowerCase().endsWith('.ipa');
  bool get isAab => name.toLowerCase().endsWith('.aab');
}

/// Market Service
class MarketService {
  static final Logger _logger = Logger('MarketService');
  final AuthService _authService;

  MarketService(AuthService authService) : _authService = authService;

  /// Get releases from Azure DevOps Git repository
  /// Uses GitHub Releases API format or Azure DevOps Releases API
  Future<List<Release>> getReleases(String repoUrl) async {
    try {
      _logger.info('Fetching releases from: $repoUrl');

      // Parse repository URL
      // Format: https://{instance}/{collection}/{project}/_git/{repository}
      // or: https://{instance}/{collection}/{project}/_git/{repository}/releases
      final uri = Uri.parse(repoUrl);
      final pathSegments = uri.pathSegments;

      // Extract instance, collection, project, repository
      String? instance;
      String? collection;
      String? project;
      String? repository;

      if (pathSegments.isNotEmpty) {
        instance = uri.origin;
        // Find _git segment
        final gitIndex = pathSegments.indexOf('_git');
        if (gitIndex != -1 && gitIndex < pathSegments.length - 1) {
          repository = pathSegments[gitIndex + 1];
          // Extract collection and project from path
          if (gitIndex >= 2) {
            collection = pathSegments[0];
            project = pathSegments[1];
          }
        }
      }

      if (instance == null || collection == null || project == null || repository == null) {
        throw Exception('Invalid repository URL format. Expected: https://{instance}/{collection}/{project}/_git/{repository}');
      }

      // Try Azure DevOps Releases API first
      try {
        return await _getReleasesFromAzureDevOps(instance, collection, project);
      } catch (e) {
        _logger.warning('Azure DevOps Releases API failed, trying Git Tags: $e');
        // Fallback to Git Tags
        return await _getReleasesFromGitTags(instance, collection, project, repository);
      }
    } catch (e) {
      _logger.severe('Error fetching releases: $e');
      rethrow;
    }
  }

  /// Get releases from Azure DevOps Releases API
  Future<List<Release>> _getReleasesFromAzureDevOps(
    String instance,
    String collection,
    String project,
  ) async {
    final token = await _authService.getAuthToken();
    if (token == null) {
      throw Exception('Authentication required');
    }

    final dio = CertificatePinningService.createSecureDio();
    
    final url = '$instance/$collection/$project/_apis/release/releases?api-version=6.0';
    
    final response = await dio.get(
      url,
      options: Options(
        headers: {
          'Authorization': 'Basic ${base64Encode(utf8.encode(':$token'))}',
          'Content-Type': 'application/json',
        },
      ),
    );

    if (response.statusCode == 200) {
      final data = response.data;
      final releases = (data['value'] as List<dynamic>?)
          ?.map((release) => _convertAzureDevOpsRelease(release))
          .toList() ?? [];
      
      // Sort by published date (newest first)
      releases.sort((a, b) {
        final aDate = a.publishedAt ?? DateTime(1970);
        final bDate = b.publishedAt ?? DateTime(1970);
        return bDate.compareTo(aDate);
      });
      
      return releases;
    } else {
      throw Exception('Failed to fetch releases: ${response.statusCode}');
    }
  }

  /// Convert Azure DevOps Release to Release model
  Release _convertAzureDevOpsRelease(Map<String, dynamic> json) {
    final artifacts = <Artifact>[];
    
    // Extract artifacts from release artifacts
    if (json['artifacts'] != null) {
      for (var artifact in json['artifacts']) {
        if (artifact['alias'] != null) {
          // Try to get download URL from artifact
          final downloadUrl = artifact['downloadUrl'] ?? '';
          if (downloadUrl.isNotEmpty) {
            artifacts.add(Artifact(
              name: artifact['alias'] ?? 'artifact',
              downloadUrl: downloadUrl,
              size: null,
              contentType: 'application/octet-stream',
            ));
          }
        }
      }
    }

    return Release(
      tag: json['name'] ?? json['id']?.toString() ?? '',
      name: json['name'] ?? json['id']?.toString() ?? '',
      description: json['description'],
      publishedAt: json['createdOn'] != null
          ? DateTime.tryParse(json['createdOn'])
          : null,
      artifacts: artifacts,
    );
  }

  /// Get releases from Git Tags (fallback)
  Future<List<Release>> _getReleasesFromGitTags(
    String instance,
    String collection,
    String project,
    String repository,
  ) async {
    final token = await _authService.getAuthToken();
    if (token == null) {
      throw Exception('Authentication required');
    }

    final dio = CertificatePinningService.createSecureDio();
    
    // Get Git repository ID first
    final repoUrl = '$instance/$collection/$project/_apis/git/repositories?api-version=6.0';
    final repoResponse = await dio.get(
      repoUrl,
      options: Options(
        headers: {
          'Authorization': 'Basic ${base64Encode(utf8.encode(':$token'))}',
          'Content-Type': 'application/json',
        },
      ),
    );

    if (repoResponse.statusCode != 200) {
      throw Exception('Failed to fetch repositories: ${repoResponse.statusCode}');
    }

    final repositories = repoResponse.data['value'] as List<dynamic>;
    dynamic repo;
    try {
      repo = repositories.firstWhere(
        (r) => (r['name'] as String).equalsIgnoreCase(repository),
      );
    } catch (e) {
      throw Exception('Repository not found: $repository');
    }

    final repoId = repo['id'] as String;

    // Get tags
    final tagsUrl = '$instance/$collection/$project/_apis/git/repositories/$repoId/refs?filter=tags&api-version=6.0';
    final tagsResponse = await dio.get(
      tagsUrl,
      options: Options(
        headers: {
          'Authorization': 'Basic ${base64Encode(utf8.encode(':$token'))}',
          'Content-Type': 'application/json',
        },
      ),
    );

    if (tagsResponse.statusCode != 200) {
      throw Exception('Failed to fetch tags: ${tagsResponse.statusCode}');
    }

    final tags = tagsResponse.data['value'] as List<dynamic>;
    final releases = <Release>[];

    // For each tag, try to find artifacts
    for (var tag in tags) {
      final tagName = tag['name']?.replaceAll('refs/tags/', '') ?? '';
      if (tagName.startsWith('v')) {
        // Try to find artifacts in releases folder
        try {
          final artifacts = await _getArtifactsFromTag(
            instance,
            collection,
            project,
            repoId,
            tagName,
          );

          releases.add(Release(
            tag: tagName,
            name: tagName,
            publishedAt: null,
            artifacts: artifacts,
          ));
        } catch (e) {
          _logger.warning('Failed to get artifacts for tag $tagName: $e');
        }
      }
    }

    // Sort by tag name (newest first - assuming semantic versioning)
    releases.sort((a, b) => b.tag.compareTo(a.tag));

    return releases;
  }

  /// Get artifacts from a specific tag
  Future<List<Artifact>> _getArtifactsFromTag(
    String instance,
    String collection,
    String project,
    String repoId,
    String tag,
  ) async {
    final token = await _authService.getAuthToken();
    if (token == null) {
      return [];
    }

    final dio = CertificatePinningService.createSecureDio();
    final artifacts = <Artifact>[];

    // Common artifact paths
    final paths = [
      'releases/android/azuredevops-$tag.apk',
      'releases/android/azuredevops.apk',
      'releases/ios/azuredevops-$tag.ipa',
      'releases/ios/azuredevops.ipa',
      'releases/android/app-release.aab',
    ];

    for (var path in paths) {
      try {
        final itemUrl = '$instance/$collection/$project/_apis/git/repositories/$repoId/items?path=$path&api-version=6.0';
        final response = await dio.get(
          itemUrl,
          options: Options(
            headers: {
              'Authorization': 'Basic ${base64Encode(utf8.encode(':$token'))}',
              'Content-Type': 'application/json',
            },
          ),
        );

        if (response.statusCode == 200) {
          final item = response.data;
          final downloadUrl = item['_links']?['self']?['href'] ?? itemUrl;
          
          artifacts.add(Artifact(
            name: path.split('/').last,
            downloadUrl: downloadUrl,
            size: item['size'],
            contentType: 'application/octet-stream',
          ));
        }
      } catch (e) {
        // Artifact not found, continue
        continue;
      }
    }

    return artifacts;
  }

  /// Download artifact
  Future<String> downloadArtifact(Artifact artifact, String savePath) async {
    try {
      final token = await _authService.getAuthToken();
      if (token == null) {
        throw Exception('Authentication required');
      }

      final dio = CertificatePinningService.createSecureDio();
      
      final response = await dio.download(
        artifact.downloadUrl,
        savePath,
        options: Options(
          headers: {
            'Authorization': 'Basic ${base64Encode(utf8.encode(':$token'))}',
          },
          responseType: ResponseType.bytes,
        ),
      );

      if (response.statusCode == 200) {
        return savePath;
      } else {
        throw Exception('Download failed: ${response.statusCode}');
      }
    } catch (e) {
      _logger.severe('Error downloading artifact: $e');
      rethrow;
    }
  }
}

extension StringExtension on String {
  bool equalsIgnoreCase(String other) {
    return toLowerCase() == other.toLowerCase();
  }
}

