#!/bin/bash

# Portfolio Deployment Helper Script
# This script helps you deploy your portfolio to GitHub and Netlify

echo "╔════════════════════════════════════════════════════════════════╗"
echo "║        🚀 PORTFOLIO DEPLOYMENT HELPER                         ║"
echo "║         Deploy to GitHub & Netlify in seconds!               ║"
echo "╚════════════════════════════════════════════════════════════════╝"
echo ""

# Check if Git is initialized
if [ ! -d ".git" ]; then
    echo "❌ Git is not initialized. Running: git init"
    git init
    git add .
    git commit -m "Initial portfolio commit"
fi

echo ""
echo "📋 Current Git Status:"
echo "─────────────────────────────────────────────────────────────────"
git log --oneline -1
echo ""

echo "📁 Portfolio Files:"
echo "─────────────────────────────────────────────────────────────────"
ls -la | grep -E "(\.html|\.css|\.js|\.md|netlify)" | awk '{print "  " $9}'
echo ""

echo "🔗 Next Steps:"
echo "─────────────────────────────────────────────────────────────────"
echo ""
echo "1️⃣  CREATE GITHUB REPOSITORY"
echo "   Go to: https://github.com/new"
echo "   Name it: 'portfolio' (or any name you like)"
echo "   Click: 'Create repository'"
echo ""
echo "2️⃣  CONNECT YOUR LOCAL REPO"
echo "   After creating, you'll get a command like:"
echo "   $ git remote add origin https://github.com/YOUR_USERNAME/portfolio.git"
echo "   $ git push -u origin main"
echo ""
echo "3️⃣  DEPLOY TO NETLIFY"
echo "   Go to: https://netlify.com"
echo "   Sign up with GitHub"
echo "   Click 'New site from Git'"
echo "   Select your 'portfolio' repository"
echo "   Click 'Deploy site'"
echo ""
echo "4️⃣  GET YOUR LIVE LINK!"
echo "   Netlify will give you a URL like:"
echo "   https://your-portfolio-name.netlify.app"
echo ""
echo "─────────────────────────────────────────────────────────────────"
echo ""
echo "💡 TIP: For instant deployment without GitHub:"
echo "   Go to: https://app.netlify.com/drop"
echo "   Drag and drop your portfolio folder"
echo ""
echo "✨ After deployment, update these in index.html:"
echo "   - Your email address"
echo "   - Your phone number"
echo "   - Your location"
echo "   - Social media links"
echo "   - Project information"
echo ""
echo "📚 For detailed instructions, see: DEPLOYMENT_GUIDE.md"
echo ""
echo "═══════════════════════════════════════════════════════════════════"
