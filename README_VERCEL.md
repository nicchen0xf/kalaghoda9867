# Quick Start: Deploy to Vercel

## For the 317 Images Problem

You have 3 options:

### Option 1: Git LFS (Recommended for GitHub)
```bash
# Install Git LFS
git lfs install

# Track image files
git lfs track "static/images/*.png"
git add .gitattributes
git add static/images/
git commit -m "Add images with LFS"
git push
```

### Option 2: Direct Vercel Upload (Easiest)
Just deploy normally - Vercel will handle all files:
```bash
vercel --prod
```
Vercel can handle large files, no problem!

### Option 3: Use CDN (Best for Performance)
Upload images to Cloudinary/Imgur and update your HTML.

## Deployment Steps

1. **Update Orihost** - Make sure `main.py` binds API to `0.0.0.0:8080`

2. **Install Vercel CLI**:
   ```bash
   npm install -g vercel
   ```

3. **Login**:
   ```bash
   vercel login
   ```

4. **Deploy**:
   ```bash
   vercel
   ```

5. **Set Environment Variable**:
   ```bash
   vercel env add ORIHOST_IP
   # Enter: 23.136.44.210 (your Orihost IP)
   ```

6. **Deploy to Production**:
   ```bash
   vercel --prod
   ```

Done! Your web panel will be live on Vercel.

