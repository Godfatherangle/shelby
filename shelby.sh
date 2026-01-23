#!/bin/bash
set -e

echo "🔍 Checking Node.js version..."
node -v | grep -E "v2[2-9]" >/dev/null || {
  echo "❌ Node 22+ required"
  exit 1
}

echo "📦 Installing Shelby CLI..."
npm install -g @shelby-protocol/cli

echo "📁 Creating project directory..."
mkdir -p shelby-project
cd shelby-project

echo "🚀 Initializing Shelby (auto mode)..."
yes | shelby init

echo "👛 Listing Shelby accounts..."
shelby account list

echo "✅ Shelby setup completed successfully"
