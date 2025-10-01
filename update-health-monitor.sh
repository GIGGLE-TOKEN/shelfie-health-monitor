#!/bin/bash

# 🏥 Shelfie Health Monitor - Quick Update Script
# This script helps update the health monitor repository

echo "🏥 Updating Shelfie Health Monitor..."

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo "❌ Error: Please run this script from the shelfie-health-monitor directory"
    echo "💡 Run: cd ../shelfie-health-monitor && ./update-health-monitor.sh"
    exit 1
fi

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "❌ Error: Git repository not initialized"
    exit 1
fi

# Add all changes
echo "📁 Adding changes to git..."
git add .

# Get commit message from user or use default
if [ -z "$1" ]; then
    COMMIT_MSG="Update health monitor - $(date '+%Y-%m-%d %H:%M:%S')"
else
    COMMIT_MSG="$1"
fi

# Commit changes
echo "💾 Committing changes: $COMMIT_MSG"
git commit -m "$COMMIT_MSG"

# Push to GitHub
echo "🚀 Pushing to GitHub..."
git push origin main

echo "✅ Health monitor updated successfully!"
echo "📊 Dashboard URL: https://giggle-token.github.io/shelfie-health-monitor"
echo "🔄 GitHub Pages will auto-deploy in 1-2 minutes"
echo ""
echo "💡 To use this script with a custom message:"
echo "   ./update-health-monitor.sh 'Your custom commit message'"
