# Versiyon Yönetimi Kılavuzu

Bu dokümantasyon, Azure DevOps On-Premise Mobile App projesinde versiyon yönetimi ve otomatik build/deploy süreçlerini açıklar.

## 📋 İçindekiler

- [Versiyon Numaralandırma](#versiyon-numaralandırma)
- [Otomatik Versiyon Artırma](#otomatik-versiyon-artırma)
- [Build ve Deploy Script'leri](#build-ve-deploy-scriptleri)
- [Git Tag Yönetimi](#git-tag-yönetimi)
- [Versiyon Gösterimi](#versiyon-gösterimi)
- [Kullanım Örnekleri](#kullanım-örnekleri)

## 🔢 Versiyon Numaralandırma

Proje **Semantic Versioning** (SemVer) standardını kullanır:

```
MAJOR.MINOR.PATCH+BUILD_NUMBER
```

### Versiyon Bileşenleri

- **MAJOR**: Büyük değişiklikler, geriye dönük uyumsuzluklar
- **MINOR**: Yeni özellikler, geriye dönük uyumlu
- **PATCH**: Hata düzeltmeleri, küçük iyileştirmeler
- **BUILD_NUMBER**: Her build'de otomatik artırılan sayı

### Örnek

```
1.0.2+3
│ │ │ └─ Build number: 3
│ │ └─── Patch version: 2
│ └───── Minor version: 0
└─────── Major version: 1
```

### Versiyon Dosyası

Versiyon bilgisi `pubspec.yaml` dosyasında saklanır:

```yaml
version: 1.0.2+3
```

## 🚀 Otomatik Versiyon Artırma

### Bump Version Script

`scripts/bump_version.sh` script'i versiyonu otomatik olarak artırır ve git tag oluşturur.

#### Kullanım

```bash
./scripts/bump_version.sh [patch|minor|major]
```

#### Parametreler

- **patch** (varsayılan): Patch versiyonunu artırır (1.0.2 → 1.0.3)
- **minor**: Minor versiyonunu artırır (1.0.2 → 1.1.0)
- **major**: Major versiyonunu artırır (1.0.2 → 2.0.0)

#### Örnekler

```bash
# Patch versiyonunu artır (1.0.2 → 1.0.3)
./scripts/bump_version.sh patch

# Minor versiyonunu artır (1.0.2 → 1.1.0)
./scripts/bump_version.sh minor

# Major versiyonunu artır (1.0.2 → 2.0.0)
./scripts/bump_version.sh major
```

#### Script İşlemleri

1. Mevcut versiyonu `pubspec.yaml`'dan okur
2. Belirtilen tipe göre versiyonu artırır
3. Build number'ı otomatik artırır
4. `pubspec.yaml` dosyasını günceller
5. Git commit oluşturur
6. Git tag oluşturur (veya mevcut tag'i günceller)

## 📦 Build ve Deploy Script'leri

### Build and Deploy Script

`scripts/build_and_deploy.sh` script'i tüm build, deploy ve push işlemlerini otomatik olarak yapar.

#### Kullanım

```bash
./scripts/build_and_deploy.sh [patch|minor|major]
```

#### İşlem Adımları

1. **Versiyon Artırma**: `bump_version.sh` script'ini çalıştırır
2. **APK Build**: Flutter release APK'sını derler
3. **APK Yeniden Adlandırma**: `app-release.apk` → `azuredevops.apk`
4. **Cihaz Kontrolü**: Bağlı Android cihazı kontrol eder
5. **APK Yükleme**: Cihaz varsa APK'yı yükler
6. **Uygulama Başlatma**: Uygulamayı otomatik başlatır
7. **Git Push**: Değişiklikleri ve tag'i GitHub'a push eder

#### Örnekler

```bash
# Patch versiyonu ile build ve deploy
./scripts/build_and_deploy.sh patch

# Minor versiyonu ile build ve deploy
./scripts/build_and_deploy.sh minor

# Major versiyonu ile build ve deploy
./scripts/build_and_deploy.sh major
```

#### Çıktılar

- **APK Dosyası**: `build/app/outputs/flutter-apk/azuredevops.apk`
- **Git Tag**: `v1.0.2` formatında
- **Git Commit**: `chore(release): Bump version to X.Y.Z+BUILD`

## 🏷️ Git Tag Yönetimi

### Tag Formatı

Git tag'leri şu formatta oluşturulur:

```
vMAJOR.MINOR.PATCH
```

Örnek: `v1.0.2`

### Tag İşlemleri

#### Tag Oluşturma

Script otomatik olarak tag oluşturur:

```bash
git tag -a v1.0.2 -m "Release v1.0.2"
```

#### Mevcut Tag'i Güncelleme

Eğer tag zaten varsa, script otomatik olarak siler ve yeniden oluşturur:

```bash
git tag -d v1.0.2
git tag -a v1.0.2 -m "Release v1.0.2"
```

#### Tag Push Etme

```bash
git push origin v1.0.2
```

### Tag Listesi

Mevcut tag'leri görmek için:

```bash
git tag -l
```

## 📱 Versiyon Gösterimi

Uygulama içinde versiyon bilgisi AppBar'da gösterilir.

### Konum

- **Logo ve Başlık**: Üst satırda
- **Versiyon**: Logo ve başlığın altında, ayrı bir satırda

### Format

```
v1.0.2+3
```

### Görünüm

- Font boyutu: 11px
- Renk: Beyaz, %70 opacity
- Font ağırlığı: Normal
- Konum: Logo ve "AzureDevOps" metninin altında, ortalanmış

### Teknik Detaylar

Versiyon bilgisi `package_info_plus` paketi kullanılarak dinamik olarak alınır:

```dart
final packageInfo = await PackageInfo.fromPlatform();
final version = 'v${packageInfo.version}+${packageInfo.buildNumber}';
```

## 💡 Kullanım Örnekleri

### Senaryo 1: Hata Düzeltmesi Sonrası Release

```bash
# Hata düzeltmesi yapıldı, patch versiyonu artır
./scripts/build_and_deploy.sh patch
```

**Sonuç:**
- Versiyon: `1.0.2+3` → `1.0.3+4`
- Tag: `v1.0.3`
- APK derlenir ve telefona yüklenir
- GitHub'a push edilir

### Senaryo 2: Yeni Özellik Eklendikten Sonra Release

```bash
# Yeni özellik eklendi, minor versiyonu artır
./scripts/build_and_deploy.sh minor
```

**Sonuç:**
- Versiyon: `1.0.2+3` → `1.1.0+4`
- Tag: `v1.1.0`
- APK derlenir ve telefona yüklenir
- GitHub'a push edilir

### Senaryo 3: Sadece Versiyon Artırma (Build Yapmadan)

```bash
# Sadece versiyonu artır, build yapma
./scripts/bump_version.sh patch
```

**Sonuç:**
- Versiyon: `1.0.2+3` → `1.0.3+4`
- Tag: `v1.0.3`
- Git commit oluşturulur
- Build yapılmaz

### Senaryo 4: Manuel Build (Versiyon Artırmadan)

```bash
# Versiyon artırmadan sadece build yap
export JAVA_HOME=/opt/homebrew/opt/openjdk@17/libexec/openjdk.jdk/Contents/Home
flutter build apk --release
mv build/app/outputs/flutter-apk/app-release.apk build/app/outputs/flutter-apk/azuredevops.apk
```

## 🔧 Script Yapılandırması

### Gereksinimler

- Flutter SDK yüklü olmalı
- Git yapılandırılmış olmalı
- Android SDK yüklü olmalı (deploy için)
- Java 17 yüklü olmalı

### Script Yolları

Script'lerde kullanılan sabit yollar:

```bash
# Flutter path
/Users/alpaybilgic/flutter/bin/flutter

# Java path
/opt/homebrew/opt/openjdk@17/libexec/openjdk.jdk/Contents/Home

# ADB path
/Users/alpaybilgic/Library/Android/sdk/platform-tools/adb
```

**Not:** Farklı bir sistemde kullanıyorsanız, bu yolları script'lerde güncellemeniz gerekebilir.

## 📝 Best Practices

### Versiyon Artırma

1. **Patch**: Hata düzeltmeleri, küçük iyileştirmeler
2. **Minor**: Yeni özellikler, geriye dönük uyumlu değişiklikler
3. **Major**: Büyük değişiklikler, API değişiklikleri, geriye dönük uyumsuzluklar

### Git Commit Mesajları

Script otomatik olarak şu formatta commit mesajı oluşturur:

```
chore(release): Bump version to X.Y.Z+BUILD [skip ci]
```

### CI/CD Entegrasyonu

GitHub Actions workflow'ları `[skip ci]` tag'ini tanır ve bu commit'lerde CI/CD çalıştırmaz, böylece sonsuz döngü önlenir.

## 🐛 Sorun Giderme

### Tag Zaten Var Hatası

Eğer tag zaten varsa, script otomatik olarak siler ve yeniden oluşturur. Manuel olarak silmek için:

```bash
git tag -d v1.0.2
git push origin :refs/tags/v1.0.2
```

### Versiyon Güncellenmedi

`pubspec.yaml` dosyasını kontrol edin:

```bash
grep version pubspec.yaml
```

### Build Başarısız

Java versiyonunu kontrol edin:

```bash
echo $JAVA_HOME
java -version
```

Java 17 olmalı.

### Cihaz Bulunamadı

ADB ile cihazı kontrol edin:

```bash
adb devices
```

USB debugging açık olmalı ve cihaz yetkilendirilmiş olmalı.

## 📚 İlgili Dosyalar

- `pubspec.yaml`: Versiyon bilgisi
- `scripts/bump_version.sh`: Versiyon artırma script'i
- `scripts/build_and_deploy.sh`: Build ve deploy script'i
- `lib/screens/home_screen.dart`: Versiyon gösterimi
- `.github/workflows/android-build.yml`: CI/CD workflow

## 🔗 Daha Fazla Bilgi

- [Semantic Versioning](https://semver.org/)
- [Flutter Versioning](https://docs.flutter.dev/deployment/versioning)
- [Git Tags](https://git-scm.com/book/en/v2/Git-Basics-Tagging)

---

**Son Güncelleme:** 2025-12-18  
**Versiyon:** 1.0.2+3

