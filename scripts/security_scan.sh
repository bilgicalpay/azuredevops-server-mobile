#!/bin/bash
# Security Scanning Script
# Checks for known vulnerabilities and security issues

set -e

echo "🔒 Starting Security Scan..."
echo ""

# Check for outdated packages with known vulnerabilities
echo "📦 Checking for outdated packages..."
flutter pub outdated 2>&1 | grep -E "available|discontinued" || echo "No critical updates found"

echo ""
echo "🔍 Analyzing dependencies for security issues..."

# Check pubspec.yaml for insecure dependencies
if grep -q "http:" pubspec.yaml; then
  echo "⚠️  Warning: Using 'http:' instead of 'https:' in some dependencies"
fi

# Check for known vulnerable packages
VULNERABLE_PACKAGES=(
  "http:"
  "path:"
)

for pkg in "${VULNERABLE_PACKAGES[@]}"; do
  if grep -q "$pkg" pubspec.yaml; then
    echo "ℹ️  Found: $pkg (review for security)"
  fi
done

echo ""
echo "✅ Security scan completed"
echo ""
echo "📋 Recommendations:"
echo "  1. Review outdated packages and update if security patches available"
echo "  2. Ensure all network calls use HTTPS"
echo "  3. Review dependencies for known CVEs"
echo "  4. Use 'flutter pub audit' when available (Flutter 3.0+)"

