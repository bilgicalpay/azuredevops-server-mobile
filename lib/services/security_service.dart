import 'package:root_detector/root_detector.dart';
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
  /// 
  /// Uses root_detector package for detection
  /// Note: root_detector package uses isRooted() method (not property)
  static Future<bool> isDeviceCompromised() async {
    try {
      // root_detector package API: isRooted() is a method, not a property
      // For iOS, isRooted() also checks for jailbreak
      final isRooted = await RootDetector.isRooted();
      final isCompromised = isRooted;

      if (isCompromised) {
        _logSecurityEvent(
          'Device is compromised (rooted/jailbroken: $isRooted)',
          Level.SEVERE
        );
      } else {
        _logSecurityEvent(
          'Device security check passed (rooted/jailbroken: $isRooted)',
          Level.INFO
        );
      }
      
      return isCompromised;
    } catch (e) {
      // Handle iOS build errors gracefully
      // root_detector package may have compilation issues on iOS
      _logSecurityEvent(
        'Error checking device security (may be iOS build issue): $e',
        Level.WARNING
      );
      // Return false to allow app to continue (non-blocking)
      // In production, you might want to implement alternative detection
      return false;
    }
  }

  /// Log security events
  static void _logSecurityEvent(String message, [Level level = Level.INFO]) {
    _logger.log(level, message);
    // In production, send to security monitoring service
    // TODO: Integrate with security monitoring service
  }

  /// Log security events (public)
  static void logSecurityEvent(String message, [Level level = Level.INFO]) {
    _logSecurityEvent(message, level);
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
