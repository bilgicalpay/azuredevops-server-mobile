#!/bin/bash
# Script to sign artifacts using Sigstore (Cosign)
# Usage: ./scripts/sign_artifact.sh <artifact-path>

set -e

ARTIFACT_PATH="$1"
SIGSTORE_OUTPUT="${ARTIFACT_PATH}.sigstore"

if [ -z "$ARTIFACT_PATH" ]; then
    echo "❌ Error: Artifact path is required"
    echo "Usage: $0 <artifact-path>"
    exit 1
fi

if [ ! -f "$ARTIFACT_PATH" ]; then
    echo "❌ Error: Artifact file not found: $ARTIFACT_PATH"
    exit 1
fi

echo "🔐 Signing artifact with Sigstore..."
echo "   Artifact: $ARTIFACT_PATH"

# Check if cosign is installed
if ! command -v cosign &> /dev/null; then
    echo "⚠️  Warning: cosign is not installed. Skipping signing."
    echo "   Install cosign: https://docs.sigstore.dev/cosign/installation/"
    exit 0
fi

# Sign the artifact
cosign sign-blob \
    --bundle "$SIGSTORE_OUTPUT" \
    "$ARTIFACT_PATH"

if [ $? -eq 0 ]; then
    echo "✅ Artifact signed successfully!"
    echo "   Signature: $SIGSTORE_OUTPUT"
    ls -lh "$SIGSTORE_OUTPUT"
else
    echo "❌ Error: Failed to sign artifact"
    exit 1
fi

