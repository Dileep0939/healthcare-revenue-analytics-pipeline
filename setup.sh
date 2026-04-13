#!/bin/bash

# Healthcare Revenue Analytics Pipeline - GitHub Setup Script
# Run this after creating your GitHub repository

echo "🏥 Healthcare Pipeline - Git Setup"
echo "=================================="
echo ""

# Replace with your GitHub username
read -p "Enter your GitHub username: " GITHUB_USERNAME

echo ""
echo "Setting up git repository..."

# Initialize git (if not already done)
git init

# Add all files
git add .

# Create initial commit
git commit -m "Initial commit: Healthcare revenue analytics pipeline with Databricks + Snowflake architecture"

# Set main branch
git branch -M main

# Add remote origin
git remote add origin https://github.com/$GITHUB_USERNAME/healthcare-revenue-analytics-pipeline.git

echo ""
echo "✅ Local repository configured!"
echo ""
echo "Next step: Push to GitHub with this command:"
echo ""
echo "git push -u origin main"
echo ""
echo "After pushing, visit:"
echo "https://github.com/$GITHUB_USERNAME/healthcare-revenue-analytics-pipeline"
echo ""
echo "Then pin it to your profile! 📌"
