# Azure DevOps Server 2022 Mobile App - Dokümantasyon

**Geliştirici:** Alpay Bilgiç  
**Versiyon:** 1.0.0  
**Tarih:** 2024

## Genel Bakış

Bu uygulama, Azure DevOps Server 2022 on-premise kurulumları için mobil erişim sağlar. Kurumsal MDM (Mobile Device Management) sistemleri ile entegre edilerek güvenli bir şekilde dağıtılabilir.

## Özellikler

- ✅ Work Item görüntüleme ve yönetimi
- ✅ Query çalıştırma ve sonuç görüntüleme
- ✅ Wiki içerik görüntüleme
- ✅ Push notification desteği
- ✅ Personal Access Token (PAT) kimlik doğrulama
- ✅ Active Directory (AD) kimlik doğrulama
- ✅ MDM entegrasyonu
- ✅ Offline çalışma desteği (sınırlı)

## Dokümantasyon

### Güvenlik ve Altyapı

1. **[SECURITY.md](SECURITY.md)** - Güvenlik dokümantasyonu
   - Güvenlik mimarisi
   - Kimlik doğrulama
   - Veri güvenliği
   - Ağ güvenliği
   - Güvenlik açıkları ve önlemler

2. **[INFRASTRUCTURE.md](INFRASTRUCTURE.md)** - Altyapı dokümantasyonu
   - Sistem gereksinimleri
   - Ağ yapılandırması
   - Sertifika yönetimi
   - Dağıtım adımları
   - İzleme ve bakım

3. **[MDM_INTEGRATION.md](MDM_INTEGRATION.md)** - MDM entegrasyon kılavuzu
   - Microsoft Intune entegrasyonu
   - VMware Workspace ONE entegrasyonu
   - Yapılandırma profilleri
   - Uyumluluk politikaları

## Hızlı Başlangıç

### Güvenlik Ekibi İçin

1. **[SECURITY.md](SECURITY.md)** dosyasını inceleyin
2. Güvenlik gereksinimlerini değerlendirin
3. Güvenlik açıklarını gözden geçirin
4. Önerilen iyileştirmeleri planlayın

### Altyapı Ekibi İçin

1. **[INFRASTRUCTURE.md](INFRASTRUCTURE.md)** dosyasını inceleyin
2. Sistem gereksinimlerini kontrol edin
3. Ağ yapılandırmasını planlayın
4. Sertifika yönetimini yapılandırın

### MDM Yöneticisi İçin

1. **[MDM_INTEGRATION.md](MDM_INTEGRATION.md)** dosyasını inceleyin
2. MDM platformunuza göre entegrasyon adımlarını takip edin
3. Yapılandırma profillerini oluşturun
4. Uyumluluk politikalarını ayarlayın

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

## Güvenlik Notları

⚠️ **Önemli:** Production ortamında aşağıdaki iyileştirmeler yapılmalıdır:

1. **Token Şifreleme:** `flutter_secure_storage` kullanılmalıdır
2. **Certificate Pinning:** Sertifika pinning uygulanmalıdır
3. **Root/Jailbreak Tespiti:** Root/jailbreak tespiti eklenmelidir
4. **Otomatik Logout:** Otomatik logout mekanizması eklenmelidir

Detaylar için [SECURITY.md](SECURITY.md) dosyasına bakın.

## Dağıtım

### MDM Üzerinden Dağıtım

1. APK/IPA dosyasını hazırlayın
2. MDM sisteminize yükleyin
3. Yapılandırma profilini oluşturun
4. Dağıtım grubunu seçin
5. Uygulamayı dağıtın

Detaylar için [MDM_INTEGRATION.md](MDM_INTEGRATION.md) dosyasına bakın.

## Destek

**Teknik Destek:**
- Geliştirici: Alpay Bilgiç
- E-posta: [Geliştirici E-postası]

**Güvenlik Sorunları:**
- E-posta: [Güvenlik Ekibi E-postası]

**Altyapı Desteği:**
- E-posta: [Altyapı Ekibi E-postası]

## Lisans

Bu uygulama kurumsal kullanım için geliştirilmiştir.

---

**Son Güncelleme:** 2024  
**Dokümantasyon Versiyonu:** 1.0

