import 'package:logging/logging.dart';
import 'storage_service.dart';
import 'api_service.dart';
import 'security_service.dart';

/// Service for automatic token refresh
class TokenRefreshService {
  static final Logger _logger = Logger('TokenRefreshService');
  static const int _tokenExpiryBufferSeconds = 300; // 5 minutes before expiry

  /// Check if token needs refresh and refresh if necessary
  static Future<bool> ensureValidToken() async {
    try {
      final token = await StorageService.getToken();
      if (token == null || token.isEmpty) {
        SecurityService.logTokenOperation('No token found', success: false);
        return false;
      }

      final tokenExpiry = await StorageService.getTokenExpiry();
      if (tokenExpiry == null) {
        // No expiry info - assume token is valid
        return true;
      }

      final now = DateTime.now();
      final expiryTime = DateTime.fromMillisecondsSinceEpoch(tokenExpiry);
      final timeUntilExpiry = expiryTime.difference(now);

      // Check if token is expired or will expire soon
      if (timeUntilExpiry.inSeconds < _tokenExpiryBufferSeconds) {
        SecurityService.logTokenOperation('Token expiring soon, refreshing...');
        return await _refreshToken();
      }

      SecurityService.logTokenOperation('Token is valid');
      return true;
    } catch (e) {
      _logger.severe('Error checking token validity: $e');
      SecurityService.logTokenOperation('Token check failed', success: false);
      return false;
    }
  }

  /// Refresh the authentication token
  static Future<bool> _refreshToken() async {
    try {
      SecurityService.logTokenOperation('Refreshing token...');
      
      // Get current credentials
      final serverUrl = await StorageService.getServerUrl();
      final collection = await StorageService.getCollection();
      final username = await StorageService.getUsername();
      final currentToken = await StorageService.getToken();

      if (serverUrl == null || collection == null || username == null || currentToken == null) {
        SecurityService.logTokenOperation('Missing credentials for refresh', success: false);
        return false;
      }

      // Try to refresh token using API
      // Note: Azure DevOps PATs don't have refresh tokens, so this would need
      // to be implemented based on your authentication method
      // For PATs, user needs to generate a new token
      
      // TODO: Implement actual token refresh logic based on your auth method
      // This is a placeholder for token refresh implementation
      
      SecurityService.logTokenOperation('Token refresh not implemented for PAT', success: false);
      return false;
    } catch (e) {
      _logger.severe('Error refreshing token: $e');
      SecurityService.logTokenOperation('Token refresh failed', success: false);
      return false;
    }
  }

  /// Set token expiry time
  static Future<void> setTokenExpiry(DateTime expiryTime) async {
    await StorageService.setTokenExpiry(expiryTime.millisecondsSinceEpoch);
    SecurityService.logTokenOperation('Token expiry set: $expiryTime');
  }

  /// Clear token and expiry
  static Future<void> clearToken() async {
    await StorageService.setTokenExpiry(null);
    SecurityService.logTokenOperation('Token cleared');
  }
}

