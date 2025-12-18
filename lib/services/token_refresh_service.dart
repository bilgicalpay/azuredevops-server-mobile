import 'package:logging/logging.dart';
import 'storage_service.dart';
import 'security_service.dart';

/// Service for automatic token refresh
class TokenRefreshService {
  static final Logger _logger = Logger('TokenRefreshService');
  static const int _tokenExpiryBufferSeconds = 300; // 5 minutes before expiry

  /// Check if token needs refresh and refresh if necessary
  /// Requires StorageService instance
  static Future<bool> ensureValidToken(StorageService storage) async {
    try {
      final token = await storage.getToken();
      if (token == null || token.isEmpty) {
        SecurityService.logTokenOperation('No token found', success: false);
        return false;
      }

      final tokenExpiry = await storage.getTokenExpiry();
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
        return await _refreshToken(storage);
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
  static Future<bool> _refreshToken(StorageService storage) async {
    try {
      SecurityService.logTokenOperation('Refreshing token...');
      
      // Get current credentials
      final serverUrl = storage.getServerUrl();
      final collection = storage.getCollection();
      final username = storage.getUsername();
      final currentToken = await storage.getToken();

      if (serverUrl == null || currentToken == null) {
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
  static Future<void> setTokenExpiry(StorageService storage, DateTime expiryTime) async {
    await storage.setTokenExpiry(expiryTime.millisecondsSinceEpoch);
    SecurityService.logTokenOperation('Token expiry set: $expiryTime');
  }

  /// Clear token and expiry
  static Future<void> clearToken(StorageService storage) async {
    await storage.setTokenExpiry(null);
    SecurityService.logTokenOperation('Token cleared');
  }
}
