# 🚀 Automatic Git Setup

I've created automatic setup scripts for you! Just run one of them:

## Option 1: Double-Click (Easiest)

**Double-click `setup_git.bat`** in Windows Explorer

## Option 2: Run from Command Prompt

```bash
cd C:\EMOTE_BOT_OB51
setup_git.bat
```

## Option 3: Run PowerShell Script

```powershell
cd C:\EMOTE_BOT_OB51
powershell -ExecutionPolicy Bypass -File setup_git.ps1
```

## What the Script Does:

✅ Initializes Git repository  
✅ Installs Git LFS  
✅ Tracks all image files (*.png, *.jpg, *.jpeg, *.gif)  
✅ Adds all files  
✅ Creates initial commit  

## After Running the Script:

1. **Create GitHub Repository:**
   - Go to https://github.com/new
   - Name it (e.g., `emote-bot-panel`)
   - **Don't** check "Initialize with README"
   - Click "Create repository"

2. **Push to GitHub:**
   ```bash
   git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git
   git branch -M main
   git push -u origin main
   ```

That's it! 🎉

