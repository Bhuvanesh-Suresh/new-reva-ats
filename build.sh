#!/usr/bin/env bash
# Exit on error
set -o errexit  

# Frontend build
cd frontend
npm install
npm run build
cd ..

# Move build files into backend (if using Flask + static files)
mkdir -p backend/static
cp -r frontend/dist/* backend/static/
