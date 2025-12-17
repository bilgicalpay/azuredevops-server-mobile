/// Belgeler ekranı
/// 
/// Uygulama dokümantasyonlarını gösterir.
/// Güvenlik, altyapı ve MDM entegrasyon dokümantasyonlarını içerir.
/// 
/// @author Alpay Bilgiç

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

/// Belgeler ekranı widget'ı
/// Dokümantasyonları listeler ve gösterir
class DocumentsScreen extends StatelessWidget {
  const DocumentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belgeler'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildDocumentCard(
            context,
            title: 'Güvenlik Dokümantasyonu',
            description: 'Güvenlik mimarisi, kimlik doğrulama, veri güvenliği ve güvenlik açıkları hakkında detaylı bilgi',
            icon: Icons.security,
            color: Colors.red,
            content: _securityContent,
          ),
          const SizedBox(height: 16),
          _buildDocumentCard(
            context,
            title: 'Altyapı Dokümantasyonu',
            description: 'Sistem gereksinimleri, ağ yapılandırması, sertifika yönetimi ve dağıtım adımları',
            icon: Icons.cloud,
            color: Colors.blue,
            content: _infrastructureContent,
          ),
          const SizedBox(height: 16),
          _buildDocumentCard(
            context,
            title: 'MDM Entegrasyon Kılavuzu',
            description: 'Microsoft Intune, VMware Workspace ONE ve diğer MDM sistemleri ile entegrasyon',
            icon: Icons.phone_android,
            color: Colors.green,
            content: _mdmContent,
          ),
          const SizedBox(height: 16),
          _buildDocumentCard(
            context,
            title: 'Genel Bakış',
            description: 'Uygulama hakkında genel bilgiler, özellikler ve hızlı başlangıç kılavuzu',
            icon: Icons.info,
            color: Colors.orange,
            content: _overviewContent,
          ),
        ],
      ),
    );
  }

  Widget _buildDocumentCard(
    BuildContext context, {
    required String title,
    required String description,
    required IconData icon,
    required Color color,
    required String content,
  }) {
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DocumentViewerScreen(
                title: title,
                content: content,
                icon: icon,
                color: color,
              ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(icon, color: color, size: 32),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}

/// Dokümantasyon görüntüleyici ekranı
class DocumentViewerScreen extends StatelessWidget {
  final String title;
  final String content;
  final IconData icon;
  final Color color;

  const DocumentViewerScreen({
    super.key,
    required this.title,
    required this.content,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(icon, color: color),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.copy),
            onPressed: () {
              Clipboard.setData(ClipboardData(text: content));
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('İçerik panoya kopyalandı'),
                  duration: Duration(seconds: 2),
                ),
              );
            },
            tooltip: 'Kopyala',
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: SelectableText(
          content,
          style: const TextStyle(
            fontSize: 14,
            height: 1.6,
            fontFamily: 'monospace',
          ),
        ),
      ),
    );
  }
}

// Dokümantasyon içerikleri
const String _securityContent = '''# Güvenlik Dokümantasyonu

**Uygulama:** Azure DevOps Server 2022 Mobile App
**Geliştirici:** Alpay Bilgiç
**Versiyon:** 1.0.0

## Güvenlik Mimarisi

Bu uygulama, kurumsal Azure DevOps Server 2022 on-premise kurulumlarına güvenli mobil erişim sağlar. Uygulama, MDM (Mobile Device Management) sistemleri ile entegre edilerek kurumsal güvenlik politikalarına uyumlu hale getirilir.

### Güvenlik Katmanları

1. **Cihaz Katmanı**: MDM ile yönetilen cihazlar
2. **Uygulama Katmanı**: Şifrelenmiş veri depolama ve güvenli API iletişimi
3. **Ağ Katmanı**: HTTPS/TLS şifreleme
4. **Sunucu Katmanı**: Azure DevOps Server kimlik doğrulama

## Kimlik Doğrulama

### Personal Access Token (PAT)

- Token'lar FlutterSecureStorage'da şifrelenmiş olarak saklanır
- Android: EncryptedSharedPreferences kullanılır
- iOS: Keychain kullanılır
- Token süresi Azure DevOps Server'da yönetilir

### Active Directory (AD)

- AD token (Base64 kodlanmış kullanıcı adı/şifre) FlutterSecureStorage'da şifrelenmiş olarak saklanır
- Şifreler HTTPS üzerinden gönderilir
- AD oturum yönetimi Azure DevOps Server tarafında yapılır

## Veri Güvenliği

### Yerel Veri Depolama

**Kullanılan Depolama:**
- FlutterSecureStorage (Token'lar için)
- SharedPreferences (Diğer veriler için)

**Saklanan Veriler:**
- Server URL (SharedPreferences)
- Authentication Token (FlutterSecureStorage - Şifrelenmiş)
- Username (SharedPreferences)
- Collection/Project bilgisi (SharedPreferences)
- Wiki URL (SharedPreferences)

**Güvenlik Özellikleri:**
- Token'lar AES-256 şifreleme ile korunur
- Root/jailbreak cihazlarda bile token'lar güvenli
- Cihaz şifreleme ile ek koruma

## Ağ Güvenliği

- Tüm API çağrıları HTTPS üzerinden yapılır
- Minimum TLS Versiyonu: TLS 1.2+
- API versiyonu: 7.0 (Azure DevOps Server 2022)

## Güvenlik Açıkları ve Önlemler

### Uygulanan Güvenlik Önlemleri

✅ Token şifreleme (FlutterSecureStorage)
✅ HTTPS zorunluluğu
✅ Güvenli veri depolama

### Önerilen İyileştirmeler

- Certificate pinning uygulanabilir
- Root/jailbreak tespiti eklenebilir
- Otomatik logout mekanizması eklenebilir

## Güvenlik Denetimi

Periyodik kontroller:
- Aylık: Güvenlik açığı taraması
- Yıllık: Penetrasyon testi

## İncilme Müdahale Planı

1. Anında Müdahale: Etkilenen hesapların askıya alınması
2. İnceleme: Log analizi ve etki değerlendirmesi
3. Düzeltme: Güvenlik açığının kapatılması
4. Önleme: Güvenlik politikalarının güncellenmesi
''';

const String _infrastructureContent = '''# Altyapı ve Dağıtım Dokümantasyonu

**Uygulama:** Azure DevOps Server 2022 Mobile App
**Geliştirici:** Alpay Bilgiç
**Versiyon:** 1.0.0

## Sistem Gereksinimleri

### Azure DevOps Server

- Azure DevOps Server 2022 veya üzeri
- API Versiyonu: 7.0
- HTTPS erişimi (TLS 1.2+)

### Mobil Cihazlar

**Android:**
- Minimum: Android 5.0 (SDK 21)
- Target: Android 14 (SDK 34)

**iOS:**
- Minimum: iOS 12.0
- Target: iOS 17.0

## Ağ Yapılandırması

### Firewall Kuralları

- Port 443/TCP (HTTPS) - Azure DevOps Server API erişimi
- Gerekli Endpoint'ler:
  - /_apis/projects?api-version=7.0
  - /_apis/wit/workitems?api-version=7.0
  - /_apis/wit/queries?api-version=7.0
  - /_apis/wiki/wikis/*?api-version=7.0

### VPN Yapılandırması

- IPsec VPN
- SSL VPN
- Always-On VPN (Android Enterprise)
- Per-App VPN (iOS)

## Sertifika Yönetimi

- Geçerli SSL sertifikası gerekli
- Kurumsal CA sertifikası önerilir
- Sertifika zinciri tam olmalı

## Dağıtım Adımları

1. **Uygulama Paketini Hazırlama**
   - Android: flutter build apk --release
   - iOS: flutter build ipa

2. **MDM'e Yükleme**
   - APK/IPA dosyasını MDM'e yükle
   - Yapılandırma profilini ekle
   - Dağıtım grubunu seç

3. **Pilot Test**
   - Küçük kullanıcı grubuna dağıt
   - Fonksiyonellik testleri yap

4. **Genel Dağıtım**
   - Tüm kullanıcı gruplarına dağıt
   - Kullanıcı eğitimi sağla

## Yapılandırma

### Zorunlu Parametreler
- server_url: Azure DevOps Server URL'si

### Opsiyonel Parametreler
- collection: Collection adı
- default_project: Varsayılan proje
- wiki_url: Varsayılan wiki URL'si

## İzleme ve Bakım

- Haftalık: Log analizi
- Aylık: Güvenlik açığı taraması
- Yıllık: Güvenlik denetimi

## Sorun Giderme

### Yaygın Sorunlar

1. **Bağlantı Hatası**
   - Server URL'in doğru olduğunu kontrol et
   - Ağ bağlantısını kontrol et
   - VPN bağlantısını kontrol et

2. **Kimlik Doğrulama Hatası**
   - Token'ın geçerli olduğunu kontrol et
   - Token süresinin dolmadığını kontrol et

3. **Sertifika Hatası**
   - Sertifikanın geçerli olduğunu kontrol et
   - Sertifika zincirinin tam olduğunu kontrol et
''';

const String _mdmContent = '''# MDM Entegrasyon Kılavuzu

**Uygulama:** Azure DevOps Server 2022 Mobile App
**Geliştirici:** Alpay Bilgiç
**Versiyon:** 1.0.0

## MDM Genel Bakış

### Desteklenen MDM Platformları

- Microsoft Intune (Önerilen)
- VMware Workspace ONE
- MobileIron
- IBM MaaS360
- SOTI MobiControl
- Diğer standart MDM sistemleri

## Uygulama Bilgileri

**Android:**
- Package Name: io.purplesoft.azuredevops_onprem
- Minimum SDK: 21
- Target SDK: 34

**iOS:**
- Bundle ID: io.purplesoft.azuredevops_onprem
- Minimum iOS: 12.0
- Target iOS: 17.0

## Microsoft Intune Entegrasyonu

### Android Enterprise Yapılandırması

1. **Uygulama Ekleme**
   - Intune Admin Center → Apps → Android
   - Add → Line-of-business app
   - APK dosyasını yükle

2. **Yapılandırma Profili**
   - Apps → App configuration policies → Add
   - Platform: Android
   - Profile type: Managed apps
   - Target app: Azure DevOps Mobile

3. **Yapılandırma JSON:**
{
  "server_url": "https://devops.example.com",
  "collection": "DefaultCollection",
  "require_vpn": true,
  "auto_logout_minutes": 30
}

### iOS Yapılandırması

1. **Uygulama Ekleme**
   - Intune Admin Center → Apps → iOS
   - Add → Line-of-business app
   - IPA dosyasını yükle

2. **Yapılandırma Profili (XML):**
<dict>
  <key>server_url</key>
  <string>https://devops.example.com</string>
  <key>collection</key>
  <string>DefaultCollection</string>
</dict>

## VMware Workspace ONE Entegrasyonu

### Android Yapılandırması

1. Workspace ONE UEM Console → Apps → Native
2. Add Application → Internal
3. APK dosyasını yükle
4. App Configuration → Add Configuration
5. JSON yapılandırmasını ekle

### iOS Yapılandırması

1. Workspace ONE UEM Console → Apps → Native
2. Add Application → Internal
3. IPA dosyasını yükle
4. App Configuration → XML yapılandırmasını ekle

## Uyumluluk Politikaları

### Önerilen Politikalar

1. **Cihaz Güvenliği**
   - Device encryption: Required
   - Minimum password length: 6
   - Root/jailbreak detection: Block

2. **Uygulama Güvenliği**
   - App data encryption: Required
   - Screen capture: Allowed (opsiyonel)

3. **Ağ Güvenliği**
   - VPN required: Yes (opsiyonel)
   - Certificate validation: Required

## Dağıtım Senaryoları

### Senaryo 1: Pilot Dağıtım
- Küçük kullanıcı grubu (10-20 kullanıcı)
- 1-2 hafta test
- Geri bildirim toplama

### Senaryo 2: Aşamalı Dağıtım
- İlk aşama: %25 kullanıcı
- İkinci aşama: %50 kullanıcı
- Üçüncü aşama: %75 kullanıcı
- Son aşama: %100 kullanıcı

### Senaryo 3: Zorunlu Dağıtım
- Tüm kullanıcılara tek seferde
- Installation: Required
''';

const String _overviewContent = '''# Azure DevOps Server 2022 Mobile App

**Geliştirici:** Alpay Bilgiç
**Versiyon:** 1.0.0

## Genel Bakış

Bu uygulama, Azure DevOps Server 2022 on-premise kurulumları için mobil erişim sağlar. Kurumsal MDM (Mobile Device Management) sistemleri ile entegre edilerek güvenli bir şekilde dağıtılabilir.

## Özellikler

✅ Work Item görüntüleme ve yönetimi
✅ Query çalıştırma ve sonuç görüntüleme
✅ Wiki içerik görüntüleme
✅ Push notification desteği
✅ Personal Access Token (PAT) kimlik doğrulama
✅ Active Directory (AD) kimlik doğrulama
✅ MDM entegrasyonu
✅ Güvenli token saklama (FlutterSecureStorage)

## Sistem Gereksinimleri

### Azure DevOps Server
- Azure DevOps Server 2022 veya üzeri
- API Versiyonu: 7.0
- HTTPS erişimi (TLS 1.2+)

### Mobil Cihazlar
- Android: Minimum 5.0 (SDK 21)
- iOS: Minimum 12.0

## Güvenlik

### Uygulanan Güvenlik Önlemleri

✅ Token şifreleme (FlutterSecureStorage)
✅ HTTPS zorunluluğu
✅ Güvenli veri depolama
✅ MDM entegrasyonu

### Güvenlik Notları

- Token'lar FlutterSecureStorage'da şifrelenmiş olarak saklanır
- Android: EncryptedSharedPreferences kullanılır
- iOS: Keychain kullanılır
- Tüm API çağrıları HTTPS üzerinden yapılır

## Hızlı Başlangıç

1. Uygulamayı açın
2. Server URL girin
3. Kimlik doğrulama yöntemini seçin (PAT veya AD)
4. Giriş yapın
5. Work item'larınızı görüntüleyin

## Destek

Teknik destek için geliştirici ile iletişime geçin.

Güvenlik sorunları için güvenlik ekibi ile iletişime geçin.
''';

