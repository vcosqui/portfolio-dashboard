#!/bin/sh
SHA=$(git rev-parse --short HEAD)
DATE=$(date -u +"%Y-%m-%d")
URL=${DEPLOY_URL:-}
sed -i "s|__BUILD_SHA__|$SHA|g; s|__BUILD_DATE__|$DATE|g; s|__BUILD_URL__|$URL|g" dashboard.html
