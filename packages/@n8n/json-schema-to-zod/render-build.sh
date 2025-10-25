#!/bin/bash
set -e  # Exit immediately if a command fails

# 1. Use Node.js 24.x (adjust the exact version if needed)
export NODE_VERSION=24.5.0
echo "Using Node.js version $NODE_VERSION"

# If you are using nvm on Render, uncomment the next line:
# nvm install $NODE_VERSION
# nvm use $NODE_VERSION

# 2. Clean existing node_modules and lock file
rm -rf node_modules pnpm-lock.yaml package-lock.json

# 3. Install dependencies
pnpm install

# 4. Build n8n packages
pnpm run build

echo "✅ Build completed successfully!"
