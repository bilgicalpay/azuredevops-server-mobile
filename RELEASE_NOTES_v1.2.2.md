# Release Notes - Version 1.2.2 (121)

## Güvenlik İyileştirmeleri

### 1. SAST (Static Application Security Testing) ve SCA (Software Composition Analysis) Taraması
- Flutter analyze ile kod kalitesi ve güvenlik taraması yapıldı
- Bağımlılık güvenlik açıkları tespit edildi ve giderildi
- Hardcoded secrets/tokens kontrolü yapıldı
- Input validation ve sanitization kontrolleri yapıldı
- SSL/TLS ve certificate pinning kontrolleri yapıldı

### 2. Bağımlılık Güncellemeleri (Güvenlik Yamaları)
- **shared_preferences**: 2.2.2 → 2.5.4
- **flutter_secure_storage**: 9.0.0 → 10.0.0
- **permission_handler**: 11.3.1 → 12.0.1
- **package_info_plus**: 8.0.0 → 9.0.0
- **flutter_local_notifications**: 17.0.0 → 19.5.0
- **file_picker**: 8.1.2 → 10.3.8
- **flutter_lints**: 5.0.0 → 6.0.0

### 3. Güvenlik Kod İyileştirmeleri
- Hardcoded token'lara güvenlik uyarıları eklendi (demo/development amaçlı olduğu belirtildi)
- `print()` statements `debugPrint()` ile değiştirildi (production'da otomatik devre dışı)
- SecurityService'te logging güvenliği iyileştirildi
- SECURITY_FIXES.md dokümantasyonu oluşturuldu

### 4. SBOM (Software Bill of Materials)
- SBOM oluşturma script'i mevcut (`scripts/generate_sbom.sh`)
- SPDX formatında SBOM desteği
- GitHub release'lere SBOM eklendi

## Wiki Görüntüleme İyileştirmeleri

### 1. Wiki Format Desteği
- Wiki içeriği artık hem HTML hem Markdown formatlarını destekliyor
- İçerik formatı otomatik tespit ediliyor (HTML tag kontrolü ile)
- Markdown içerik: `flutter_markdown` ile render ediliyor
- HTML içerik: `flutter_html` ile render ediliyor

### 2. Wiki API Endpoint Düzeltmeleri
- Text endpoint öncelikli olarak kullanılıyor (raw markdown içeriği için)
- HTML sayfası (JavaScript disabled) tespit ediliyor ve atlanıyor
- Azure DevOps Wiki API'sinden human-readable markdown içeriği alınıyor
- Text endpoint hem `text/plain` hem `text/markdown` accept header'ları ile deneniyor

### 3. Wiki Görüntüleme Sorunları Düzeltildi
- "JavaScript is Disabled" HTML mesajı sorunu çözüldü
- Wiki içeriği artık doğru şekilde markdown formatında görüntüleniyor
- Getting Started, Build and Test, Contribute gibi bölümler düzgün görüntüleniyor

## İyileştirmeler

- Wiki viewer performansı artırıldı
- Güvenlik taraması ve düzeltmeleri dokümante edildi
- Bağımlılık güncellemeleri ile güvenlik yamaları uygulandı
- Kod kalitesi iyileştirildi (lint kuralları güncellendi)

## Teknik Detaylar

### Güvenlik
- `SecurityService` logging güvenliği iyileştirildi
- `debugPrint` kullanımı production build'lerde otomatik devre dışı kalıyor
- Hardcoded token'lar sadece demo/development amaçlı, production'da kullanılmamalı

### Wiki
- `WikiService.fetchWikiContent()` text endpoint öncelikli kullanıyor
- `WikiViewerScreen` hem HTML hem Markdown formatlarını destekliyor
- Wiki içeriği format tespiti ile doğru renderer kullanılıyor

## Versiyon Bilgisi

- **Version:** 1.2.2
- **Version Code:** 121
- **Build Date: 2026-01-01 14:49:25

## Güvenlik Notları

⚠️ **Önemli:** Production build'lerde hardcoded token'lar kullanılmamalıdır. Bu token'lar sadece demo/development amaçlıdır. Kullanıcı token'ları FlutterSecureStorage'da güvenli şekilde saklanıyor.

✅ **Güvenlik Önlemleri:**
- Token'lar FlutterSecureStorage'da şifrelenmiş olarak saklanıyor
- HTTPS zorunlu, tüm API çağrıları HTTPS üzerinden
- Certificate pinning mevcut (production için yapılandırılabilir)
- Root/jailbreak detection mevcut
- Secure storage (EncryptedSharedPreferences/Keychain)
- Input sanitization (URL encoding, parameterized queries)
- OWASP Top 10 kontrolleri yapıldı

