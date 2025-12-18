import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:logging/logging.dart';
import 'security_service.dart';

/// Certificate pinning service for production security
class CertificatePinningService {
  static final Logger _logger = Logger('CertificatePinningService');
  
  // SHA-256 fingerprints of allowed certificates
  // TODO: Replace with your actual server certificate fingerprints
  static const List<String> _allowedFingerprints = [
    // Example: Add your Azure DevOps Server certificate fingerprints here
    // 'SHA256:XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
  ];

  /// Configure Dio with certificate pinning
  static Dio createSecureDio() {
    final dio = Dio();
    
    // Only enable certificate pinning in production
    if (const bool.fromEnvironment('PRODUCTION', defaultValue: false)) {
      (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
        final client = HttpClient();
        client.badCertificateCallback = (X509Certificate cert, String host, int port) {
          return _validateCertificate(cert);
        };
        return client;
      };
      SecurityService.logSecurityEvent('Certificate pinning enabled', Level.INFO);
    } else {
      SecurityService.logSecurityEvent('Certificate pinning disabled (development)', Level.INFO);
    }
    
    return dio;
  }

  /// Validate certificate fingerprint
  static bool _validateCertificate(X509Certificate cert) {
    try {
      // Get certificate fingerprint
      final fingerprint = _getCertificateFingerprint(cert);
      
      // Check if fingerprint is in allowed list
      final isValid = _allowedFingerprints.contains(fingerprint);
      
      if (!isValid) {
        SecurityService.logSecurityEvent(
          'Certificate validation failed: $fingerprint',
          Level.SEVERE
        );
      }
      
      return isValid;
    } catch (e) {
      SecurityService.logSecurityEvent(
        'Certificate validation error: $e',
        Level.SEVERE
      );
      return false;
    }
  }

  /// Get SHA-256 fingerprint of certificate
  static String _getCertificateFingerprint(X509Certificate cert) {
    // Extract SHA-256 fingerprint from certificate
    // This is a simplified version - in production, use proper certificate parsing
    return cert.sha1.toString(); // Placeholder - use SHA-256 in production
  }

  /// Extract certificate fingerprints from server
  /// Run this once to get your server's certificate fingerprints
  static Future<List<String>> extractServerFingerprints(String host, int port) async {
    try {
      final client = HttpClient();
      final request = await client.getUrl(Uri.parse('https://$host:$port'));
      final response = await request.close();
      
      final certificates = response.certificates;
      final fingerprints = certificates.map((cert) => 
        _getCertificateFingerprint(cert)
      ).toList();
      
      SecurityService.logSecurityEvent(
        'Extracted fingerprints: $fingerprints',
        Level.INFO
      );
      
      return fingerprints;
    } catch (e) {
      _logger.severe('Error extracting fingerprints: $e');
      return [];
    }
  }
}

