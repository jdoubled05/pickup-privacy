#!/bin/bash

# Privacy Site Setup Script
# Automates GitHub repo creation and Vercel deployment

set -e  # Exit on error

echo "🏀 Pickup Privacy Site - Dev/Prod Setup"
echo "========================================"
echo ""

# Check prerequisites
echo "📋 Checking prerequisites..."

if ! command -v gh &> /dev/null; then
    echo "❌ GitHub CLI not found. Install it:"
    echo "   brew install gh"
    exit 1
fi

if ! command -v vercel &> /dev/null; then
    echo "❌ Vercel CLI not found. Install it:"
    echo "   npm i -g vercel"
    exit 1
fi

echo "✅ GitHub CLI found"
echo "✅ Vercel CLI found"
echo ""

# Check if user is logged in to GitHub
if ! gh auth status &> /dev/null; then
    echo "🔐 Please log in to GitHub:"
    gh auth login
fi

echo ""
echo "Step 1: Creating GitHub Repository"
echo "-----------------------------------"

# Initial commit
git add .
git commit -m "Initial commit: Privacy policy site with dev/prod setup"

# Create GitHub repo
echo "Creating repository 'pickup-privacy'..."
gh repo create pickup-privacy --public --source=. --push

echo "✅ GitHub repo created and pushed"
echo ""

echo "Step 2: Creating Dev Branch"
echo "----------------------------"

# Create and push dev branch
git checkout -b dev
git push -u origin dev
echo "✅ Dev branch created and pushed"

# Switch back to main
git checkout main
echo ""

echo "Step 3: Deploying to Vercel - Production"
echo "-----------------------------------------"
echo "Follow the Vercel prompts:"
echo "  - Project name: pickup-privacy"
echo "  - Directory: ./"
echo ""

# Deploy production
vercel --prod

echo ""
echo "✅ Production deployed"
echo ""

echo "Step 4: Deploying to Vercel - Development"
echo "------------------------------------------"

# Switch to dev and deploy
git checkout dev
vercel

echo ""
echo "✅ Development deployed"
echo ""

# Switch back to main
git checkout main

echo ""
echo "🎉 Setup Complete!"
echo "=================="
echo ""
echo "Your URLs:"
echo "  Production:  https://pickup-privacy.vercel.app"
echo "  Development: https://pickup-privacy-git-dev-[your-username].vercel.app"
echo ""
echo "Next steps:"
echo "  1. Test both URLs"
echo "  2. Update email addresses in HTML files"
echo "  3. Add production URL to App Store Connect"
echo ""
echo "Deployment guide: See DEPLOYMENT.md"
echo ""
