# Git Setup Guide for Your Project

## Step 1: Initialize Git Repository

Navigate to your project directory first:

```bash
cd C:\EMOTE_BOT_OB51
```

Then initialize Git:

```bash
git init
```

## Step 2: Setup Git LFS for Images

```bash
git lfs install
git lfs track "static/images/*.png"
git lfs track "static/images/*.jpg"
git lfs track "static/images/*.jpeg"
git lfs track "static/images/*.gif"
```

## Step 3: Create .gitignore (if not exists)

Create a `.gitignore` file with:

```
# Python
__pycache__/
*.py[cod]
*$py.class
*.so
.Python
env/
venv/
ENV/
.venv

# Config files (sensitive)
config/accounts_*.json

# IDE
.vscode/
.idea/
*.swp
*.swo

# OS
.DS_Store
Thumbs.db

# Vercel
.vercel/

# Logs
*.log
```

## Step 4: Add Files

```bash
# Add .gitattributes first
git add .gitattributes

# Add all other files
git add .

# Or add specific files/folders:
git add web_panel.py
git add templates/
git add static/
git add api/
git add vercel.json
git add requirements.txt
```

## Step 5: Commit

```bash
git commit -m "Initial commit - Web panel with Git LFS for images"
```

## Step 6: Create GitHub Repository

1. Go to GitHub.com
2. Click "New repository"
3. Name it (e.g., `emote-bot-panel`)
4. **Don't** initialize with README (you already have files)
5. Click "Create repository"

## Step 7: Connect and Push

```bash
# Add remote (replace YOUR_USERNAME and REPO_NAME)
git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git

# Push to GitHub
git branch -M main
git push -u origin main
```

## Alternative: If Images Are Too Large

If Git LFS still causes issues, you can:

1. **Exclude images from Git** (add to `.gitignore`):
   ```
   static/images/
   ```

2. **Upload images separately**:
   - Use Vercel dashboard to upload `static/images/` folder
   - Or use a CDN (Cloudinary, Imgur, etc.)

3. **Use a different approach**:
   - Deploy without images first
   - Add images later via Vercel's file upload

## Quick Commands Summary

```bash
cd C:\EMOTE_BOT_OB51
git init
git lfs install
git lfs track "static/images/*.png"
git add .gitattributes
git add .
git commit -m "Initial commit"
git remote add origin YOUR_GITHUB_REPO_URL
git push -u origin main
```

