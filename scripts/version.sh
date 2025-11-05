#!/bin/bash

GIT_HASH=$(git rev-parse --short HEAD)
GIT_COUNT=$(git rev-list --count HEAD)

APP_VERSION=$(grep '^version:' alias ../pubspec.yaml | awk '{print $2}')

FILE="../assets/version"

cat > "$FILE" <<EOF
version=$APP_VERSION
commit=$GIT_COUNT
hash=$GIT_HASH
EOF
echo "   version=$APP_VERSION"
echo "   commit=$GIT_COUNT"
echo "   hash=$GIT_HASH"
