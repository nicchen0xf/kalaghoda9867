# 🚀 Quick Start: Deploy Web Panel to Vercel

## ⚠️ Important: About the 317 Images

**Vercel has a 100MB limit for free plans** (1GB for Pro). Your 317 images might exceed this.

### Solution Options:

**Option 1: Use Git LFS (Best for GitHub)**
```bash
git lfs install
git lfs track "static/images/*.png"
git add .gitattributes static/images/
git commit -m "Add images"
git push
```

**Option 2: Upload to CDN (Best Performance)**
- Upload images to Cloudinary/Imgur
- Update HTML to use CDN URLs
- This also makes your site faster!

**Option 3: Deploy without images first, then add them**
- Deploy the web panel first
- Upload images separately via Vercel dashboard

## 📋 Deployment Steps

### Step 1: Update Orihost API

Your `main.py` is already updated to bind to `0.0.0.0:8080` (allows external access).

**Make sure port 8080 is open on Orihost firewall!**

### Step 2: Install Vercel CLI

```bash
npm install -g vercel
```

### Step 3: Login to Vercel

```bash
vercel login
```

### Step 4: Deploy

```bash
# From your project root
vercel
```

Follow prompts:
- Set up? **Yes**
- Link to existing? **No**  
- Project name? `emote-bot-panel` (or your choice)
- Directory? `./` (current)

### Step 5: Set Environment Variables

```bash
# Set your Orihost IP
vercel env add ORIHOST_IP
# Enter: 23.136.44.210 (your actual Orihost IP)
# Select: Production, Preview, Development

# Set API port (if not 8080)
vercel env add API_PORT
# Enter: 8080
# Select: Production, Preview, Development
```

### Step 6: Deploy to Production

```bash
vercel --prod
```

### Step 7: Done! 🎉

Vercel will give you a URL like: `https://your-project.vercel.app`

Visit it and test!

## 🔧 Troubleshooting

**"Cannot connect to API"**
- Check Orihost IP is correct
- Verify port 8080 is open
- Test: `curl http://YOUR_ORIHOST_IP:8080/status`

**"Images not loading"**
- Check `static/images/` is in your repo
- Verify file paths in HTML
- Consider using CDN

**"Build failed"**
- Check `api/requirements.txt` has Flask and requests
- Verify Python version compatibility

## 📝 Files Created

- `vercel.json` - Vercel configuration
- `api/index.py` - Serverless function entry point
- `api/requirements.txt` - Python dependencies for Vercel
- `.vercelignore` - Files to exclude from deployment

## 🎯 What Gets Deployed

✅ `web_panel.py` - Flask app  
✅ `templates/` - HTML templates  
✅ `static/` - Static files (images, CSS, JS)  
✅ `api/` - Vercel serverless function  

❌ `main.py` - Stays on Orihost  
❌ `start.py` - Not needed for Vercel  
❌ `config/` - Not needed for Vercel  

