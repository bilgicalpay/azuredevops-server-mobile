#!/bin/bash
# SBOM (Software Bill of Materials) Generator for Flutter
# Generates SPDX format SBOM

set -e

VERSION=$(grep '^version:' pubspec.yaml | sed 's/version: //' | tr -d ' ' | cut -d'+' -f1)
BUILD=$(grep '^version:' pubspec.yaml | sed 's/version: //' | tr -d ' ' | cut -d'+' -f2)
PACKAGE_NAME=$(grep '^name:' pubspec.yaml | sed 's/name: //' | tr -d ' ')
TIMESTAMP=$(date -u +"%Y-%m-%dT%H:%M:%SZ")

echo "Generating SBOM for $PACKAGE_NAME v$VERSION+$BUILD..."

# Create SBOM directory
mkdir -p build/sbom

# Generate basic SPDX SBOM
cat > build/sbom/spdx.json <<EOF
{
  "spdxVersion": "SPDX-2.3",
  "dataLicense": "CC0-1.0",
  "SPDXID": "SPDXRef-DOCUMENT",
  "documentNamespace": "https://github.com/bilgicalpay/azuredevops-onprem-clean/spdx/v$VERSION",
  "name": "$PACKAGE_NAME-$VERSION",
  "creationInfo": {
    "creators": [
      "Tool: Manual",
      "Person: Alpay Bilgiç (bilgicalpay@gmail.com)"
    ],
    "created": "$TIMESTAMP"
  },
  "packages": [
    {
      "SPDXID": "SPDXRef-Package-$PACKAGE_NAME",
      "name": "$PACKAGE_NAME",
      "versionInfo": "$VERSION+$BUILD",
      "packageFileName": "azuredevops.apk",
      "downloadLocation": "https://github.com/bilgicalpay/azuredevops-onprem-clean/releases/tag/v$VERSION",
      "filesAnalyzed": false,
      "packageVerificationCode": {
        "packageVerificationCodeValue": "NONE"
      }
    }
  ]
}
EOF

# Generate text format SBOM
cat > build/sbom/sbom.txt <<EOF
Software Bill of Materials (SBOM)
==================================

Package: $PACKAGE_NAME
Version: $VERSION+$BUILD
Generated: $TIMESTAMP

Dependencies:
EOF

# Extract dependencies from pubspec.yaml
grep -A 1000 "^dependencies:" pubspec.yaml | grep -E "^\s+\w+:" | sed 's/^[[:space:]]*//' | sed 's/:.*//' | while read dep; do
  echo "  - $dep" >> build/sbom/sbom.txt
done

echo "" >> build/sbom/sbom.txt
echo "Build Information:" >> build/sbom/sbom.txt
FLUTTER_PATH="/Users/alpaybilgic/flutter/bin/flutter"
if [ -f "$FLUTTER_PATH" ]; then
  if [ -f "$FLUTTER_PATH" ]; then
  echo "  - Flutter SDK: $($FLUTTER_PATH --version | grep -i 'flutter' | head -1)" >> build/sbom/sbom.txt
  echo "  - Dart SDK: $($FLUTTER_PATH --version | grep -i 'dart' | head -1)" >> build/sbom/sbom.txt
else
  echo "  - Flutter SDK: Not found" >> build/sbom/sbom.txt
  echo "  - Dart SDK: Not found" >> build/sbom/sbom.txt
fi
echo "  - Build Date: $(date)" >> build/sbom/sbom.txt

echo "✅ SBOM generated:"
echo "  - build/sbom/spdx.json (SPDX format)"
echo "  - build/sbom/sbom.txt (Text format)"

