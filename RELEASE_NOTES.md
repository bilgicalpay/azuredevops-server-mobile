# Release Notes - v1.0.20 (Build 22)

**Release Date:** 2025-12-18 13:23:24 UTC  
**Package Name:** io.rdc.azuredevops  
**Developer:** Alpay Bilgiç (bilgicalpay@gmail.com)

## 📦 Build Files

- **Android APK:** azuredevops-1.0.20.apk
- **iOS IPA:** azuredevops-1.0.20.ipa

## 🚀 Deployment Status

- ✅ **Android:** Ready for deployment
- ✅ **iOS:** Ready for deployment

## 🔒 Security Enhancements

### Security Audit & Compliance
- ✅ **SBOM Generated:** Software Bill of Materials created in SPDX and text formats
  - build/sbom/spdx.json (SPDX format)
  - build/sbom/sbom.txt (Text format)
- ✅ **Security Audit Report:** Comprehensive security analysis completed
  - security/security_audit.md
- ✅ **OWASP Top 10 Analysis:** Security vulnerabilities assessed
- ✅ **Dependency Vulnerability Scan:** Outdated packages identified
- ✅ **Dependency Update Report:** Latest dependency status tracked
- ✅ **Comprehensive Security Audit:** Combined security analysis

### Security Features
- ✅ Secure token storage using FlutterSecureStorage
- ✅ Android: EncryptedSharedPreferences
- ✅ iOS: Keychain
- ✅ HTTPS enforced for all API calls
- ✅ Background service security improvements
- ✅ Android 15 compatibility

## ✨ Features

- Background service notifications (Android 15 compatible)
- User-configurable polling interval (5-300 seconds)
- Persistent storage for background service tracking
- Real-time work item updates
- Push notifications for new work items and changes
- Wiki content display
- Query execution and results display
- Work item detail view

## 🔧 Technical Details

### Dependencies
- Flutter SDK: 3.27.0
- Dart SDK: 3.5.0+
- Minimum Android: SDK 21 (Android 5.0)
- Target Android: SDK 34 (Android 14)
- Minimum iOS: 13.0
- Target iOS: 17.0

### Build Information
- Build Date: Thu Dec 18 16:23:24 +03 2025
- Build Number: 22
- Version: 1.0.20

## 📝 Security Recommendations

1. Update outdated dependencies to latest versions
2. Implement certificate pinning for production
3. Add root/jailbreak detection
4. Implement automatic token refresh
5. Add security logging for sensitive operations
6. Regular security audits and dependency updates

## 📦 Files Included in Release

- azuredevops-1.0.20.apk (Android APK)
- azuredevops-1.0.20.ipa (iOS IPA)
- RELEASE_NOTES.md (This file)
- spdx.json (SBOM - SPDX format)
- sbom.txt (SBOM - Text format)
- security_report.md (Security Report)
- security_audit.md (Security Audit)
- dependency_update_report.md (Dependency Update Report)
- comprehensive_audit.md (Comprehensive Security Audit)

## 🔗 Links

- **Repository:** https://github.com/bilgicalpay/azuredevops-onprem-clean
- **Release:** https://github.com/bilgicalpay/azuredevops-onprem-clean/releases/tag/v1.0.20
- **Security Report:** security/security_report.md
- **SBOM:** build/sbom/

## 📞 Support

**Developer:** Alpay Bilgiç  
**Email:** bilgicalpay@gmail.com

---

**Note:** This release includes comprehensive security audits, SBOM generation, dependency updates, and all necessary documentation for compliance and security review.
