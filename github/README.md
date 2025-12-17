# GitHub Actions Configuration

Bu klasör GitHub Actions CI/CD workflow yapılandırmalarını içerir.

## Workflow Dosyaları

### 1. android-build.yml
Ana build ve deploy workflow'u:
- **Test** - Kod analizi ve unit testler
- **Build APK** - Release APK oluşturma
- **Build AAB** - App Bundle oluşturma (tag'ler için)
- **Deploy Beta** - Beta ortamına deploy
- **Deploy Production** - Production ortamına deploy

### 2. fastlane-deploy.yml
Manuel Fastlane deployment workflow'u:
- Manuel tetikleme ile beta veya production deploy

## Kullanım

### Otomatik Tetikleme

Workflow şu durumlarda otomatik çalışır:
- `main` veya `develop` branch'ine push
- `v*` formatında tag oluşturulduğunda (örn: `v1.0.0`)
- Pull request oluşturulduğunda (sadece test)

### Manuel Tetikleme

1. GitHub repository'de "Actions" sekmesine gidin
2. İlgili workflow'u seçin
3. "Run workflow" butonuna tıklayın
4. Parametreleri seçin ve çalıştırın

## Yapılandırma

### Secrets Ayarlama

Deployment için gerekli secrets'ları GitHub repository ayarlarından ekleyin:

1. Repository Settings > Secrets and variables > Actions
2. "New repository secret" butonuna tıklayın
3. Aşağıdaki secrets'ları ekleyin:

#### Google Play Store Deploy için:
- `GOOGLE_PLAY_SERVICE_ACCOUNT_JSON` - Google Play servis hesabı JSON anahtarı

#### Firebase App Distribution için:
- `FIREBASE_TOKEN` - Firebase CLI token
- `FIREBASE_APP_ID` - Firebase App ID

### Environment Protection

Production deploy için environment protection kurulumu:

1. Repository Settings > Environments
2. "New environment" oluşturun (production)
3. "Required reviewers" ekleyin
4. "Wait timer" ayarlayın (opsiyonel)

### Flutter Versiyonu

Workflow dosyalarındaki Flutter versiyonunu güncelleyin:
```yaml
flutter-version: '3.24.0'
```

## Artifact Yönetimi

Build artifact'ları otomatik olarak saklanır:
- APK: 7 gün
- AAB: 30 gün

Artifact'ları indirmek için:
1. Actions sekmesinde workflow run'ı açın
2. "Artifacts" bölümünden indirin

## Fastlane Entegrasyonu

Deploy aşamaları Fastlane kullanır. Fastlane yapılandırması için `fastlane/` klasörüne bakın.

## Örnek Kullanım Senaryoları

### Development Branch'e Push
```bash
git push origin develop
```
- Test çalışır
- APK build edilir
- Artifact oluşturulur

### Production Tag Oluşturma
```bash
git tag v1.0.0
git push origin v1.0.0
```
- Test çalışır
- APK ve AAB build edilir
- Production deploy hazır olur (manuel onay gerekir)

### Manuel Beta Deploy
1. GitHub Actions > fastlane-deploy
2. "Run workflow"
3. Environment: beta seçin
4. Çalıştırın

## Sorun Giderme

### Flutter Cache Sorunları

Cache temizlemek için workflow'da cache'i devre dışı bırakın:
```yaml
cache: false
```

### Java Versiyon Hatası

Java versiyonunu değiştirmek için:
```yaml
java-version: '17'  # 11, 17, 21, vb.
```

### Build Timeout

Büyük projelerde timeout olabilir. GitHub Actions limits:
- Free: 6 saat
- Pro: 6 saat
- Team: 6 saat

### Permission Hataları

Workflow permissions kontrol edin:
```yaml
permissions:
  contents: write
  packages: write
```

## Notlar

- Pull request'lerde sadece test çalışır, build yapılmaz
- Production deploy için tag gereklidir
- Environment protection ile production deploy onayı zorunlu kılınabilir

