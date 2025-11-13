# 🚀 Quick Git Setup Guide

## You're Not in a Git Repository Yet!

Follow these steps **in order**:

### Step 1: Navigate to Your Project Folder

```bash
cd C:\EMOTE_BOT_OB51
```

### Step 2: Initialize Git Repository

```bash
git init
```

### Step 3: Setup Git LFS for Images

```bash
git lfs install
git lfs track "static/images/*.png"
git lfs track "static/images/*.jpg"
git lfs track "static/images/*.jpeg"
```

### Step 4: Add .gitattributes File

```bash
git add .gitattributes
```

### Step 5: Add All Files

```bash
git add .
```

### Step 6: Make Your First Commit

```bash
git commit -m "Initial commit - Web panel with Git LFS"
```

### Step 7: Create GitHub Repository

1. Go to https://github.com/new
2. Repository name: `emote-bot-panel` (or your choice)
3. **Don't check** "Initialize with README" (you already have files)
4. Click "Create repository"

### Step 8: Connect to GitHub

```bash
# Replace YOUR_USERNAME and REPO_NAME with your actual values
git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git
git branch -M main
git push -u origin main
```

## ⚠️ Important Notes

- **Config files are ignored** - Your `config/accounts_*.json` won't be uploaded (for security)
- **Bot files are ignored** - `main.py`, `start.py` etc. won't be uploaded (not needed for Vercel)
- **Images use Git LFS** - Large images will be stored efficiently

## 🎯 Complete Command Sequence

Copy and paste these commands **one by one**:

```bash
cd C:\EMOTE_BOT_OB51
git init
git lfs install
git lfs track "static/images/*.png"
git add .gitattributes
git add .
git commit -m "Initial commit"
```

Then create GitHub repo and push:
```bash
git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git
git branch -M main
git push -u origin main
```

## 🔧 Troubleshooting

**"fatal: not a git repository"**
- Make sure you're in `C:\EMOTE_BOT_OB51` folder
- Run `git init` first

**"Git LFS not installed"**
- You already ran `git lfs install` - that's good!
- Just make sure you're in the project folder

**"Large files error"**
- Make sure you added `.gitattributes` before adding images
- Run: `git add .gitattributes` first, then `git add .`

