#!/bin/bash
set -e

echo "📦 Installing and building frontend..."
cd frontend
npm install
npm run build

echo "📁 Copying frontend build to backend/static..."
cd ..
mkdir -p backend/static
cp -r frontend/dist/* backend/static/

echo "🐍 Installing Python backend dependencies..."
pip install -r backend/requirements.txt

echo "✅ Build completed successfully!"
