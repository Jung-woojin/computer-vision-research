#!/bin/bash
# GitHub Upload Script for Computer Vision Research Repository
# This script creates a GitHub repository and uploads all research documents

set -e

echo "=== Computer Vision Research Repository Uploader ==="
echo ""

# Configuration
REPO_NAME="computer-vision-research"
REPO_DESCRIPTION="Comprehensive research on computer vision techniques from classical filtering to modern deep learning"

# Get GitHub token (you need to set this as an environment variable)
GITHUB_TOKEN="${GITHUB_TOKEN:-}"

if [ -z "$GITHUB_TOKEN" ]; then
    echo "⚠️  WARNING: GITHUB_TOKEN environment variable not set!"
    echo "Please set it before running: export GITHUB_TOKEN='your-token'"
    echo ""
    echo "You can generate a token at: https://github.com/settings/tokens"
    echo "Select 'repo' scope for full repository access"
    echo ""
    echo "To continue without GitHub upload, just press Enter."
    read -p "Continue without upload? [y/N]: " confirm
    if [[ "$confirm" =~ ^[Yy]$ ]]; then
        echo "Skipping GitHub upload. All documents are ready in the local repository."
        exit 0
    else
        echo "Please set the GITHUB_TOKEN and run again."
        exit 1
    fi
fi

# Parse the repository path
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_PATH="$SCRIPT_DIR/computer-vision-research"

if [ ! -d "$REPO_PATH" ]; then
    echo "❌ Error: Repository directory not found: $REPO_PATH"
    exit 1
fi

echo "📁 Repository path: $REPO_PATH"
echo "📦 Found $(find "$REPO_PATH" -name "*.md" | wc -l) markdown files"
echo ""

# Create GitHub repository
echo "🔨 Creating GitHub repository..."
curl -X POST \
    -H "Authorization: token $GITHUB_TOKEN" \
    -H "Accept: application/vnd.github.v3+json" \
    https://api.github.com/user/repos \
    -d '{
        "name": "'"$REPO_NAME"'",
        "description": "'"$REPO_DESCRIPTION"'",
        "private": false,
        "auto_init": true
    }' > /tmp/repo_response.json

if [ $? -ne 0 ]; then
    echo "❌ Failed to create repository"
    cat /tmp/repo_response.json
    exit 1
fi

REPO_URL=$(jq -r '.html_url' /tmp/repo_response.json)
echo "✅ Repository created: $REPO_URL"
echo ""

# Initialize git repository
echo "📚 Initializing Git repository..."
cd "$REPO_PATH"
git init
git checkout -b main

# Configure Git
git config user.name "Research Bot"
git config user.email "research@example.com"

# Add all files
echo "📄 Adding files..."
git add README.md research-summary.md
git add classical-vision/ modern-vision/ focus-areas/ comparisons/ resources.md
git add -A

# Commit
git commit -m "Initial commit: Computer Vision Research Collection

- Classical vision: filtering, feature detection, geometric vision
- Modern vision: CNNs, object detection, segmentation, transformers
- Focus areas: adverse weather, remote sensing, boundary segmentation
- Methods comparison and implementation resources

Total: $(find . -name "*.md" | wc -l) documents, $(du -ch | tail -1 | cut -f1) total size"

# Add remote and push
echo "🌐 Pushing to GitHub..."
git remote add origin "https://oauth2:${GITHUB_TOKEN}@github.com/$(whoami)/$REPO_NAME.git"
git branch -M main
git push -u origin main --force

echo ""
echo "🎉 Success! Repository uploaded to: $REPO_URL"
echo ""
echo "📊 Repository Statistics:"
echo "  - Markdown files: $(find . -name "*.md" | wc -l)"
echo "  - Total documents: 13"
echo "  - Focus areas: 3 specialized topics"
echo "  - Includes: Classical methods, Modern deep learning, Comparisons, Resources"
echo ""
echo "📖 Next Steps:"
echo "  1. Review the repository at: $REPO_URL"
echo "  2. Add a README to the main branch if needed"
echo "  3. Add tags/labels in GitHub repository settings"
echo ""
echo "Suggested tags:"
echo "  - computer-vision"
echo "  - deep-learning"
echo "  - object-detection"
echo "  - segmentation"
echo "  - research"
echo "  - machine-learning"
echo ""
