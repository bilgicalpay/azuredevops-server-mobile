# Güvenlik Dokümantasyonu

**Uygulama:** Azure DevOps Server 2022 Mobile App  
**Geliştirici:** Alpay Bilgiç  
**Versiyon:** 1.0.0  
**Tarih:** 2024

## İçindekiler

1. [Güvenlik Mimarisi](#güvenlik-mimarisi)
2. [Kimlik Doğrulama](#kimlik-doğrulama)
3. [Veri Güvenliği](#veri-güvenliği)
4. [Ağ Güvenliği](#ağ-güvenliği)
5. [Cihaz Güvenliği](#cihaz-güvenliği)
6. [Güvenlik Açıkları ve Önlemler](#güvenlik-açıkları-ve-önlemler)
7. [Güvenlik Denetimi](#güvenlik-denetimi)
8. [İncilme Müdahale Planı](#incilme-müdahale-planı)

---

## Güvenlik Mimarisi

### Genel Bakış

Bu uygulama, kurumsal Azure DevOps Server 2022 on-premise kurulumlarına güvenli mobil erişim sağlar. Uygulama, MDM (Mobile Device Management) sistemleri ile entegre edilerek kurumsal güvenlik politikalarına uyumlu hale getirilir.

### Güvenlik Katmanları

1. **Cihaz Katmanı**: MDM ile yönetilen cihazlar
2. **Uygulama Katmanı**: Şifrelenmiş veri depolama ve güvenli API iletişimi
3. **Ağ Katmanı**: HTTPS/TLS şifreleme
4. **Sunucu Katmanı**: Azure DevOps Server kimlik doğrulama

---

## Kimlik Doğrulama

### Desteklenen Yöntemler

#### 1. Personal Access Token (PAT)

- **Kullanım**: Azure DevOps Server'da oluşturulan PAT token'ları
- **Güvenlik Seviyesi**: Yüksek
- **Saklama**: SharedPreferences (şifrelenmemiş - geliştirilebilir)
- **Öneri**: Production ortamında `flutter_secure_storage` kullanılmalıdır

**Güvenlik Notları:**
- Token'lar Base64 ile kodlanır ancak şifrelenmez
- Token'lar cihazda düz metin olarak saklanır
- Token süresi Azure DevOps Server'da yönetilir
- Token iptal edildiğinde uygulama erişim kaybeder

**Önerilen İyileştirmeler:**
```dart
// Production için önerilen paket
dependencies:
  flutter_secure_storage: ^9.0.0
```

#### 2. Active Directory (AD) Kullanıcı Adı/Şifre

- **Kullanım**: Windows AD kimlik bilgileri
- **Güvenlik Seviyesi**: Orta-Yüksek
- **Saklama**: Base64 kodlanmış olarak SharedPreferences'da
- **Uyarı**: Şifreler şifrelenmez, sadece Base64 ile kodlanır

**Güvenlik Notları:**
- Şifreler HTTPS üzerinden gönderilir
- Şifreler cihazda Base64 kodlanmış olarak saklanır
- AD oturum yönetimi Azure DevOps Server tarafında yapılır

**Önerilen İyileştirmeler:**
- Biometric authentication eklenebilir
- Keychain/Keystore entegrasyonu yapılabilir

### Token Yönetimi

**Mevcut Durum:**
- Token'lar SharedPreferences'da saklanır
- Token yenileme mekanizması yoktur
- Token süresi dolduğunda kullanıcı yeniden giriş yapmalıdır

**Önerilen İyileştirmeler:**
- Token yenileme mekanizması eklenmelidir
- Token süresi kontrolü yapılmalıdır
- Otomatik logout mekanizması eklenmelidir

---

## Veri Güvenliği

### Yerel Veri Depolama

**Kullanılan Depolama:**
- `SharedPreferences` (Android/iOS native storage)

**Saklanan Veriler:**
- Server URL
- Authentication Token (PAT veya AD token)
- Username (AD için)
- Collection/Project bilgisi
- Wiki URL

**Güvenlik Riskleri:**
- Token'lar şifrelenmemiş olarak saklanır
- Root/jailbreak cihazlarda veriler okunabilir
- Cihaz kaybı durumunda veriler erişilebilir

**Önerilen Çözümler:**

1. **Flutter Secure Storage Kullanımı:**
```yaml
dependencies:
  flutter_secure_storage: ^9.0.0
```

2. **Veri Şifreleme:**
- AES-256 şifreleme
- Cihaz özel key kullanımı
- Biometric authentication entegrasyonu

3. **MDM Politikaları:**
- Cihaz şifreleme zorunluluğu
- Uzaktan silme yeteneği
- Jailbreak/root tespiti

### Ağ Üzerinden İletilen Veriler

**İletişim Protokolü:**
- HTTPS/TLS 1.2+ (zorunlu)
- API versiyonu: 7.0 (Azure DevOps Server 2022)

**İletilen Veriler:**
- Work item bilgileri
- Query sonuçları
- Wiki içerikleri
- Kullanıcı kimlik bilgileri (sadece giriş sırasında)

**Güvenlik Önlemleri:**
- Tüm API çağrıları HTTPS üzerinden yapılır
- Certificate pinning eklenebilir (önerilir)
- API rate limiting Azure DevOps Server tarafında yapılır

---

## Ağ Güvenliği

### Gereksinimler

**Minimum TLS Versiyonu:**
- TLS 1.2 veya üzeri

**Desteklenen Protokoller:**
- HTTPS (HTTP üzerinden TLS)
- WebSocket (WSS) - gerçek zamanlı güncellemeler için (opsiyonel)

**Ağ Yapılandırması:**
- Azure DevOps Server'a erişim gereklidir
- İnternet erişimi gerekli değildir (on-premise kurulum)
- VPN bağlantısı desteklenir

### Certificate Pinning

**Mevcut Durum:**
- Certificate pinning uygulanmamıştır

**Önerilen Uygulama:**
```dart
// dio_certificate_pinning paketi ile
dependencies:
  dio_certificate_pinning: ^1.0.0
```

**Yapılandırma:**
- Azure DevOps Server'ın SSL sertifikası pin edilmelidir
- Sertifika değişikliklerinde uygulama güncellemesi gerekir

### Firewall ve Proxy Ayarları

**Gereksinimler:**
- Azure DevOps Server API endpoint'lerine erişim
- Port: 443 (HTTPS) veya kurumsal yapılandırmaya göre
- Proxy ayarları desteklenir (sistem proxy kullanılır)

**MDM Yapılandırması:**
- VPN profili yapılandırılabilir
- Proxy ayarları otomatik yapılandırılabilir
- Certificate trust store yönetimi

---

## Cihaz Güvenliği

### MDM Entegrasyonu

**Desteklenen Özellikler:**
- Uygulama dağıtımı ve güncelleme
- Uygulama yapılandırması
- Cihaz uyumluluk kontrolü
- Uzaktan silme

**Gereksinimler:**
- MDM ajanı yüklü ve yapılandırılmış olmalıdır
- Cihaz MDM sistemine kayıtlı olmalıdır
- Kurumsal sertifikalar yüklü olmalıdır

### Cihaz Uyumluluk Kontrolleri

**Önerilen Kontroller:**
- Jailbreak/root tespiti
- Cihaz şifreleme kontrolü
- Ekran kilidi kontrolü
- Uygulama güvenlik politikaları

**Uygulama İçi Kontroller:**
- Root/jailbreak tespiti eklenebilir
- Cihaz güvenlik durumu kontrol edilebilir

### Veri Koruma

**Uygulama Verileri:**
- Uygulama verileri cihazda saklanır
- Cihaz şifreleme ile korunur
- Uygulama silindiğinde veriler temizlenir

**Önerilen İyileştirmeler:**
- Uygulama verilerinin şifrelenmesi
- Biometric authentication
- Otomatik veri temizleme (belirli süre sonra)

---

## Güvenlik Açıkları ve Önlemler

### Bilinen Güvenlik Açıkları

#### 1. Token Şifreleme Eksikliği

**Risk Seviyesi:** Orta  
**Açıklama:** Token'lar SharedPreferences'da şifrelenmemiş olarak saklanır.

**Önlemler:**
- `flutter_secure_storage` kullanılmalıdır
- Keychain/Keystore entegrasyonu yapılmalıdır
- Biometric authentication eklenmelidir

#### 2. Certificate Pinning Eksikliği

**Risk Seviyesi:** Orta  
**Açıklama:** Man-in-the-middle saldırılarına karşı koruma yoktur.

**Önlemler:**
- Certificate pinning uygulanmalıdır
- Sertifika doğrulama güçlendirilmelidir

#### 3. Root/Jailbreak Tespiti Eksikliği

**Risk Seviyesi:** Düşük-Orta  
**Açıklama:** Root/jailbreak cihazlarda uygulama çalışmaya devam eder.

**Önlemler:**
- Root/jailbreak tespiti eklenmelidir
- Tespit edildiğinde uygulama erişimi engellenmelidir

#### 4. Otomatik Logout Eksikliği

**Risk Seviyesi:** Düşük  
**Açıklama:** Uzun süre kullanılmayan oturumlar açık kalır.

**Önlemler:**
- Otomatik logout mekanizması eklenmelidir
- Token süresi kontrolü yapılmalıdır

### Güvenlik Önerileri

1. **Production Deployment Öncesi:**
   - `flutter_secure_storage` entegrasyonu
   - Certificate pinning uygulaması
   - Root/jailbreak tespiti
   - Otomatik logout mekanizması

2. **MDM Yapılandırması:**
   - Cihaz şifreleme zorunluluğu
   - Uzaktan silme yeteneği
   - Uygulama güvenlik politikaları

3. **Sunucu Tarafı:**
   - API rate limiting
   - IP whitelisting (opsiyonel)
   - Token süresi yönetimi
   - Audit logging

---

## Güvenlik Denetimi

### Periyodik Kontroller

**Aylık Kontroller:**
- Güvenlik açığı taraması
- Bağımlılık güncellemeleri kontrolü
- Log analizi

**Yıllık Kontroller:**
- Penetrasyon testi
- Güvenlik mimarisi gözden geçirme
- Politika güncellemeleri

### Loglama

**Kaydedilen Olaylar:**
- Giriş/çıkış işlemleri
- API hataları
- Güvenlik ihlalleri (gelecekte)

**Log Saklama:**
- Cihazda sınırlı log saklama
- Sunucu tarafında merkezi loglama (Azure DevOps Server)

---

## İncilme Müdahale Planı

### Güvenlik İhlali Tespiti

**Tespit Yöntemleri:**
- Anormal API aktivitesi
- Başarısız giriş denemeleri
- Cihaz uyumsuzluk raporları

### Müdahale Adımları

1. **Anında Müdahale:**
   - Etkilenen kullanıcı hesaplarının askıya alınması
   - Token'ların iptal edilmesi
   - MDM üzerinden uygulamanın uzaktan silinmesi

2. **İnceleme:**
   - Log analizi
   - Etki alanı değerlendirmesi
   - Güvenlik açığı analizi

3. **Düzeltme:**
   - Güvenlik açığının kapatılması
   - Uygulama güncellemesi
   - Kullanıcı bilgilendirmesi

4. **Önleme:**
   - Güvenlik politikalarının güncellenmesi
   - Ek güvenlik önlemlerinin alınması

---

## İletişim

**Güvenlik Sorunları İçin:**
- E-posta: [Güvenlik Ekibi E-postası]
- Telefon: [Güvenlik Ekibi Telefonu]

**Teknik Destek:**
- Geliştirici: Alpay Bilgiç
- E-posta: [Geliştirici E-postası]

---

**Son Güncelleme:** 2024  
**Dokümantasyon Versiyonu:** 1.0

