# Deploy Scripts Kullanım Kılavuzu

Bu klasörde Android telefonuna ve iOS simülatörüne otomatik deploy yapan script'ler bulunmaktadır.

## Script'ler

### 1. `build_and_deploy_all.sh` - Build ve Deploy (Önerilen)
**Her derleme sonrasında kullanın**

Hem Android hem iOS için build yapar ve her iki cihaza da deploy eder.

```bash
./scripts/build_and_deploy_all.sh
```

**Ne yapar:**
- ✅ Android APK build eder
- ✅ Android telefonuna ADB ile yükler ve açar
- ✅ iOS Simulator için build eder
- ✅ iOS Simulator'a yükler ve açar

### 2. `quick_deploy.sh` - Sadece Deploy
**Build zaten yapılmışsa kullanın**

Build yapmadan sadece mevcut build'leri deploy eder.

```bash
./scripts/quick_deploy.sh
```

**Ne yapar:**
- ✅ Mevcut Android APK'yı telefona yükler
- ✅ Mevcut iOS build'ini simülatöre yükler

### 3. `build_and_deploy.sh` - Release Build ve Deploy
**Release için kullanın**

Version bump yapar, build eder, deploy eder ve GitHub'a pushlar.

```bash
./scripts/build_and_deploy.sh [patch|minor|major]
```

## Kullanım Senaryoları

### Senaryo 1: Her Kod Değişikliği Sonrası
```bash
# Kod değişikliği yaptınız, test etmek istiyorsunuz
./scripts/build_and_deploy_all.sh
```

### Senaryo 2: Sadece Deploy (Build Zaten Var)
```bash
# Build zaten yapılmış, sadece deploy etmek istiyorsunuz
./scripts/quick_deploy.sh
```

### Senaryo 3: Release Hazırlığı
```bash
# Release için version bump + build + deploy + push
./scripts/build_and_deploy.sh patch
```

## Gereksinimler

### Android
- ✅ Android telefon USB ile bağlı olmalı
- ✅ USB Debugging açık olmalı
- ✅ ADB path: `/Users/alpaybilgic/Library/Android/sdk/platform-tools/adb`

### iOS
- ✅ Xcode yüklü olmalı
- ✅ iOS Simulator mevcut olmalı
- ✅ Flutter path: `/Users/alpaybilgic/flutter/bin/flutter`

## Sorun Giderme

### Android cihaz bulunamıyor
```bash
# Cihazları kontrol edin
adb devices

# USB Debugging açık mı kontrol edin
# Telefon Ayarlar > Geliştirici Seçenekleri > USB Debugging
```

### iOS Simulator açılmıyor
```bash
# Simulator'ü manuel açın
open -a Simulator

# Mevcut simulator'leri listeleyin
xcrun simctl list devices
```

### Flutter bulunamıyor
```bash
# Flutter path'ini kontrol edin
which flutter

# Script'teki path'i güncelleyin
# FLUTTER_CMD="/path/to/flutter/bin/flutter"
```

## Otomatik Deploy (Opsiyonel)

Her derleme sonrasında otomatik deploy için `.vscode/tasks.json` veya IDE ayarlarınızı kullanabilirsiniz.

### VS Code için
`.vscode/tasks.json` dosyasına ekleyin:
```json
{
  "version": "2.0.0",
  "tasks": [
    {
      "label": "Build and Deploy All",
      "type": "shell",
      "command": "./scripts/build_and_deploy_all.sh",
      "group": "build",
      "presentation": {
        "reveal": "always"
      }
    }
  ]
}
```

## Notlar

- ⚠️ İlk çalıştırmada script'ler cihazları otomatik bulur
- ⚠️ iOS Simulator ilk açılışta biraz zaman alabilir
- ⚠️ Android cihazda "Bilinmeyen kaynaklardan yükleme" izni gerekebilir
- ✅ Script'ler hata durumunda durur (set -e)
- ✅ Her deploy sonrası uygulama otomatik açılır

