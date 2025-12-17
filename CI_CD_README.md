# CI/CD Pipeline Dokümantasyonu

Bu proje için GitLab CI/CD, GitHub Actions, Jenkins ve Fastlane yapılandırmaları hazırlanmıştır.

## 📁 Klasör Yapısı

```
.
├── fastlane/              # Fastlane yapılandırması
│   ├── Fastfile          # Fastlane lane tanımları
│   ├── Appfile           # Uygulama yapılandırması
│   └── README.md         # Fastlane dokümantasyonu
│
├── .gitlab-ci.yml        # GitLab CI/CD pipeline
├── gitlab/               # GitLab dokümantasyonu
│   └── README.md
│
├── .github/              # GitHub Actions workflows
│   └── workflows/
│       ├── android-build.yml
│       └── fastlane-deploy.yml
├── github/                # GitHub dokümantasyonu
│   └── README.md
│
└── jenkins/              # Jenkins pipeline
    ├── Jenkinsfile       # Jenkins pipeline tanımı
    ├── config.xml        # Job yapılandırma şablonu
    └── README.md         # Jenkins dokümantasyonu
```

## 🚀 Hızlı Başlangıç

### Fastlane

```bash
# Fastlane kurulumu
gem install fastlane

# APK build
fastlane android build_apk

# AAB build
fastlane android build_aab

# Beta deploy
fastlane android beta

# Production deploy
fastlane android release
```

### GitLab CI/CD

1. `.gitlab-ci.yml` dosyası proje kök dizininde
2. GitLab repository'ye push yapın
3. Pipeline otomatik çalışır

### GitHub Actions

1. `.github/workflows/` klasöründeki workflow'lar otomatik aktif
2. Repository'ye push yapın
3. Actions sekmesinden pipeline'ı izleyin

### Jenkins

1. Jenkins'te yeni Pipeline job oluşturun
2. `jenkins/Jenkinsfile` dosyasını kullanın
3. Job'u çalıştırın

## 📋 Pipeline Özellikleri

### Ortak Özellikler

Tüm pipeline'lar şu aşamaları içerir:

1. **Test**
   - Flutter analyze (kod analizi)
   - Flutter test (unit testler)

2. **Build**
   - APK build (release)
   - AAB build (Play Store için)

3. **Deploy**
   - Beta ortamına deploy
   - Production ortamına deploy

### Platform Özel Özellikler

#### GitLab CI/CD
- Docker image kullanımı
- Cache yönetimi
- Artifact saklama (1 hafta)

#### GitHub Actions
- Matrix build desteği
- Environment protection
- Secret yönetimi
- Artifact download

#### Jenkins
- Declarative Pipeline
- Parametreli build
- Manuel onay mekanizması
- Email bildirimleri

## 🔧 Yapılandırma

### Gereksinimler

- **Flutter SDK**: 3.24.0
- **Java JDK**: 17
- **Android SDK**: (CI/CD ortamında otomatik yüklenir)

### Environment Variables

#### GitLab
```yaml
FLUTTER_VERSION: "3.24.0"
JAVA_VERSION: "17"
```

#### GitHub Actions
Secrets ekleyin:
- `GOOGLE_PLAY_SERVICE_ACCOUNT_JSON` (deploy için)

#### Jenkins
Job parametreleri:
- `DEPLOY_BETA`: true/false
- `DEPLOY_PRODUCTION`: true/false
- `FLUTTER_VERSION`: 3.24.0

### Fastlane

`fastlane/Appfile` dosyasında:
- Package name: `io.purplesoft.azuredevops_onprem`
- Google Play Store credentials (opsiyonel)

## 📦 Build Artifacts

### APK
- Path: `build/app/outputs/flutter-apk/app-release.apk`
- Kullanım: Manuel dağıtım, internal testing
- **GitHub Release**: Tag oluşturulduğunda otomatik olarak GitHub Release'e eklenir

### AAB (App Bundle)
- Path: `build/app/outputs/bundle/release/app-release.aab`
- Kullanım: Google Play Store upload
- **GitHub Release**: Tag oluşturulduğunda otomatik olarak GitHub Release'e eklenir

### GitHub Release Assets

Tag oluşturulduğunda (örn: `v1.0.0`), dosyalar otomatik olarak şu formatta adlandırılır ve GitHub Release'e eklenir:
- APK: `azuredevops-onprem-v1.0.0.apk`
- AAB: `azuredevops-onprem-v1.0.0.aab`

**İndirme URL formatı:**
```
https://github.com/USERNAME/REPO/releases/download/v1.0.0/azuredevops-onprem-v1.0.0.apk
https://github.com/USERNAME/REPO/releases/download/v1.0.0/azuredevops-onprem-v1.0.0.aab
```

## 🚢 Deployment

### Beta Deployment

**GitLab:**
```bash
# develop branch'e push
git push origin develop
# Pipeline'da deploy:beta job'unu manuel çalıştır
```

**GitHub:**
```bash
# develop branch'e push
git push origin develop
# Actions'da deploy-beta job'u otomatik çalışır
```

**Jenkins:**
```bash
# Job'u "Build with Parameters" ile çalıştır
# DEPLOY_BETA: true seç
```

### Production Deployment

**GitLab:**
```bash
# Tag oluştur
git tag v1.0.0
git push origin v1.0.0
# Pipeline'da deploy:production job'unu manuel çalıştır
```

**GitHub:**
```bash
# Tag oluştur
git tag v1.0.0
git push origin v1.0.0
# Actions otomatik olarak:
# 1. Build APK ve AAB
# 2. GitHub Release oluşturur
# 3. APK ve AAB dosyalarını release asset olarak ekler
# 4. Release notes oluşturur
# 5. deploy-production job'u çalışır (environment protection ile)
```

**Jenkins:**
```bash
# Tag oluştur
git tag v1.0.0
git push origin v1.0.0
# Job otomatik tetiklenir
# DEPLOY_PRODUCTION: true ile build et
# Manuel onay ver
```

## 🔐 Güvenlik

### Credentials Yönetimi

- **GitLab**: CI/CD Variables
- **GitHub**: Repository Secrets
- **Jenkins**: Credentials Store

### Google Play Store

1. Google Play Console'da servis hesabı oluşturun
2. JSON anahtar dosyasını indirin
3. İlgili platform'un credentials sistemine ekleyin

## 📊 Monitoring

### Build Durumu

- **GitLab**: CI/CD > Pipelines
- **GitHub**: Actions sekmesi
- **Jenkins**: Job sayfası

### Artifact İndirme

- **GitLab**: Pipeline > Job > Artifacts
- **GitHub**: Actions > Run > Artifacts
- **Jenkins**: Build > Artifacts

## 🐛 Sorun Giderme

### Flutter SDK Bulunamıyor

Tüm pipeline'lar Flutter SDK'yı otomatik yükler. Manuel yüklemek için:

```bash
git clone https://github.com/flutter/flutter.git -b 3.24.0
export PATH="$PATH:/path/to/flutter/bin"
```

### Java Versiyon Hatası

Java 17 gereklidir. CI/CD ortamlarında otomatik yüklenir.

### Build Timeout

Timeout sürelerini artırın:
- **GitLab**: `.gitlab-ci.yml` timeout ayarı
- **GitHub**: Workflow timeout (varsayılan 6 saat)
- **Jenkins**: `Jenkinsfile` timeout ayarı

### Artifact Bulunamıyor

Build path'lerini kontrol edin:
- APK: `build/app/outputs/flutter-apk/app-release.apk`
- AAB: `build/app/outputs/bundle/release/app-release.aab`

## 📚 Detaylı Dokümantasyon

Her platform için detaylı dokümantasyon ilgili klasörlerde:

- **Fastlane**: `fastlane/README.md`
- **GitLab**: `gitlab/README.md`
- **GitHub**: `github/README.md`
- **Jenkins**: `jenkins/README.md`

## 🔄 Pipeline Akışı

```
┌─────────┐
│  Push   │
└────┬────┘
     │
     ▼
┌─────────┐
│ Checkout│
└────┬────┘
     │
     ▼
┌─────────┐
│  Setup  │ (Flutter, Java)
└────┬────┘
     │
     ▼
┌─────────┐
│  Test   │ (Analyze, Unit Tests)
└────┬────┘
     │
     ▼
┌─────────┐
│  Build  │ (APK, AAB)
└────┬────┘
     │
     ▼
┌─────────┐
│ Deploy  │ (Beta/Production)
└─────────┘
```

## 📝 Notlar

- Tüm pipeline'lar Fastlane ile entegre edilmiştir
- Production deploy için tag gereklidir
- Beta deploy için develop branch kullanılır
- Manuel onay mekanizmaları production deploy için aktif

## 🤝 Katkıda Bulunma

Pipeline'ları geliştirmek için:

1. İlgili klasördeki dosyaları düzenleyin
2. Test edin
3. Dokümantasyonu güncelleyin
4. Pull request oluşturun

## 📞 Destek

Sorularınız için:
- Fastlane: `fastlane/README.md`
- GitLab: `gitlab/README.md`
- GitHub: `github/README.md`
- Jenkins: `jenkins/README.md`

