import 'dart:io';
import 'package:root_detector/root_detector.dart';
import 'package:jailbreak_detector/jailbreak_detector.dart';
import 'package:logging/logging.dart';

/// Security service for device security checks and logging
class SecurityService {
  static final Logger _logger = Logger('SecurityService');
  static bool _isInitialized = false;

  /// Initialize security service
  static Future<void> initialize() async {
    if (_isInitialized) return;
    
    // Setup logging
    Logger.root.level = Level.INFO;
    Logger.root.onRecord.listen((record) {
      // Log to console in debug mode
      if (record.level >= Level.WARNING) {
        print('${record.level.name}: ${record.time}: ${record.message}');
      }
    });
    
    _isInitialized = true;
    _logSecurityEvent('SecurityService initialized');
  }

  /// Check if device is rooted (Android) or jailbroken (iOS)
  static Future<bool> isDeviceCompromised() async {
    try {
      if (Platform.isAndroid) {
        final isRooted = await RootDetector.isRooted();
        if (isRooted) {
          _logSecurityEvent('Device is rooted', Level.SEVERE);
        }
        return isRooted;
      } else if (Platform.isIOS) {
        final isJailbroken = await JailbreakDetector.isJailbroken();
        if (isJailbroken) {
          _logSecurityEvent('Device is jailbroken', Level.SEVERE);
        }
        return isJailbroken;
      }
      return false;
    } catch (e) {
      _logSecurityEvent('Error checking device security: $e', Level.SEVERE);
      return false;
    }
  }

  /// Log security events
  static void _logSecurityEvent(String message, [Level level = Level.INFO]) {
    _logger.log(level, message);
    // In production, send to security monitoring service
    // TODO: Integrate with security monitoring service
  }

  /// Log authentication events
  static void logAuthentication(String event, {Map<String, dynamic>? details}) {
    _logSecurityEvent('Auth: $event ${details ?? {}}', Level.INFO);
  }

  /// Log token operations
  static void logTokenOperation(String operation, {bool success = true}) {
    _logSecurityEvent('Token: $operation - ${success ? "SUCCESS" : "FAILED"}', 
        success ? Level.INFO : Level.WARNING);
  }

  /// Log API calls
  static void logApiCall(String endpoint, {String? method, int? statusCode}) {
    _logSecurityEvent('API: $method $endpoint - Status: $statusCode', Level.INFO);
  }

  /// Log sensitive data access
  static void logSensitiveDataAccess(String dataType, {bool authorized = true}) {
    _logSecurityEvent('Data Access: $dataType - ${authorized ? "AUTHORIZED" : "UNAUTHORIZED"}', 
        authorized ? Level.INFO : Level.SEVERE);
  }
}

