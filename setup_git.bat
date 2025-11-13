@echo off
echo ========================================
echo Git and Git LFS Setup Script
echo ========================================
echo.

REM Check if we're in the right directory
if not exist "web_panel.py" (
    echo ERROR: web_panel.py not found!
    echo Please run this script from C:\EMOTE_BOT_OB51
    pause
    exit /b 1
)

echo [1/7] Initializing Git repository...
git init
if errorlevel 1 (
    echo ERROR: Failed to initialize Git
    pause
    exit /b 1
)

echo.
echo [2/7] Installing Git LFS...
git lfs install
if errorlevel 1 (
    echo ERROR: Git LFS not installed. Please install it first.
    echo Download from: https://git-lfs.github.com/
    pause
    exit /b 1
)

echo.
echo [3/7] Tracking image files with Git LFS...
git lfs track "static/images/*.png"
git lfs track "static/images/*.jpg"
git lfs track "static/images/*.jpeg"
git lfs track "static/images/*.gif"

echo.
echo [4/7] Adding .gitattributes file...
git add .gitattributes
if errorlevel 1 (
    echo WARNING: .gitattributes not found, but continuing...
)

echo.
echo [5/7] Adding all files to Git...
git add .
if errorlevel 1 (
    echo ERROR: Failed to add files
    pause
    exit /b 1
)

echo.
echo [6/7] Creating initial commit...
git commit -m "Initial commit - Web panel with Git LFS for images"
if errorlevel 1 (
    echo ERROR: Failed to create commit
    echo This might be because there are no changes to commit.
    pause
    exit /b 1
)

echo.
echo [7/7] Git setup complete!
echo.
echo ========================================
echo Next Steps:
echo ========================================
echo 1. Create a repository on GitHub.com
echo 2. Run these commands:
echo.
echo    git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git
echo    git branch -M main
echo    git push -u origin main
echo.
echo ========================================
pause

