#!/bin/bash

# Shelfie Health Monitor - Deployment Script
echo "🏥 Deploying Shelfie Health Monitor..."

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "❌ Git repository not initialized. Run 'git init' first."
    exit 1
fi

# Add all files
echo "📁 Adding files to git..."
git add .

# Commit changes
echo "💾 Committing changes..."
git commit -m "Update health monitor - $(date '+%Y-%m-%d %H:%M:%S')"

# Check if remote exists
if ! git remote get-url origin > /dev/null 2>&1; then
    echo "⚠️  No remote repository found."
    echo "📋 Please create a GitHub repository first:"
    echo "   1. Go to https://github.com/new"
    echo "   2. Repository name: shelfie-health-monitor"
    echo "   3. Make it public"
    echo "   4. Don't initialize with README (we already have files)"
    echo "   5. Copy the repository URL"
    echo "   6. Run: git remote add origin <repository-url>"
    echo "   7. Run: git push -u origin main"
    echo ""
    echo "🚀 Then enable GitHub Pages:"
    echo "   1. Go to repository Settings"
    echo "   2. Scroll to Pages section"
    echo "   3. Source: Deploy from a branch"
    echo "   4. Branch: main"
    echo "   5. Folder: / (root)"
    echo "   6. Click Save"
    echo ""
    echo "📊 Your dashboard will be available at:"
    echo "   https://yourusername.github.io/shelfie-health-monitor"
    exit 0
fi

# Push to GitHub
echo "🚀 Pushing to GitHub..."
git push origin main

echo "✅ Deployment complete!"
echo "📊 Dashboard URL: https://yourusername.github.io/shelfie-health-monitor"
echo "🔄 Auto-refresh every 30 seconds"
echo "📱 Mobile responsive"
