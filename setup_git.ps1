# Git and Git LFS Setup Script (PowerShell)
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Git and Git LFS Setup Script" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if we're in the right directory
if (-not (Test-Path "web_panel.py")) {
    Write-Host "ERROR: web_panel.py not found!" -ForegroundColor Red
    Write-Host "Please run this script from C:\EMOTE_BOT_OB51" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host "[1/7] Initializing Git repository..." -ForegroundColor Yellow
git init
if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: Failed to initialize Git" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""
Write-Host "[2/7] Installing Git LFS..." -ForegroundColor Yellow
git lfs install
if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: Git LFS not installed. Please install it first." -ForegroundColor Red
    Write-Host "Download from: https://git-lfs.github.com/" -ForegroundColor Yellow
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""
Write-Host "[3/7] Tracking image files with Git LFS..." -ForegroundColor Yellow
git lfs track "static/images/*.png"
git lfs track "static/images/*.jpg"
git lfs track "static/images/*.jpeg"
git lfs track "static/images/*.gif"

Write-Host ""
Write-Host "[4/7] Adding .gitattributes file..." -ForegroundColor Yellow
git add .gitattributes
if ($LASTEXITCODE -ne 0) {
    Write-Host "WARNING: .gitattributes not found, but continuing..." -ForegroundColor Yellow
}

Write-Host ""
Write-Host "[5/7] Adding all files to Git..." -ForegroundColor Yellow
git add .
if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: Failed to add files" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""
Write-Host "[6/7] Creating initial commit..." -ForegroundColor Yellow
git commit -m "Initial commit - Web panel with Git LFS for images"
if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: Failed to create commit" -ForegroundColor Red
    Write-Host "This might be because there are no changes to commit." -ForegroundColor Yellow
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""
Write-Host "[7/7] Git setup complete!" -ForegroundColor Green
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Next Steps:" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "1. Create a repository on GitHub.com" -ForegroundColor White
Write-Host "2. Run these commands:" -ForegroundColor White
Write-Host ""
Write-Host "   git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git" -ForegroundColor Gray
Write-Host "   git branch -M main" -ForegroundColor Gray
Write-Host "   git push -u origin main" -ForegroundColor Gray
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Read-Host "Press Enter to exit"

