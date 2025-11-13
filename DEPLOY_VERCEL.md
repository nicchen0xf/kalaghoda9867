# Deploy Web Panel to Vercel

## Step-by-Step Guide

### 1. Update Orihost API to Allow External Access

First, update your `main.py` on Orihost to bind the API to `0.0.0.0` instead of `127.0.0.1` so Vercel can access it.

The change has already been made in `main.py` - it now binds to `0.0.0.0` by default.

**On Orihost, make sure your firewall allows port 8080.**

### 2. Get Your Orihost IP Address

From your Orihost dashboard, note your server IP (e.g., `23.136.44.210`).

### 3. Install Vercel CLI (if not installed)

```bash
npm install -g vercel
```

### 4. Login to Vercel

```bash
vercel login
```

### 5. Deploy to Vercel

From your project root directory:

```bash
vercel
```

Follow the prompts:
- Set up and deploy? **Yes**
- Which scope? (Select your account)
- Link to existing project? **No**
- Project name? (e.g., `emote-bot-panel`)
- Directory? **./** (current directory)
- Override settings? **No**

### 6. Set Environment Variables

After deployment, set the environment variable for Orihost IP:

```bash
vercel env add ORIHOST_IP
# Enter your Orihost IP: 23.136.44.210
# Select: Production, Preview, Development (all)
```

Also set the API port (if different from 8080):

```bash
vercel env add API_PORT
# Enter: 8080
# Select: Production, Preview, Development (all)
```

### 7. Redeploy with Environment Variables

```bash
vercel --prod
```

### 8. Alternative: Upload via GitHub

If you prefer using GitHub:

1. **Create a new repository** (or use existing)
2. **Upload files** (excluding large files):
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin YOUR_GITHUB_REPO_URL
   git push -u origin main
   ```

3. **For the 317 images**, you have options:
   
   **Option A: Use Git LFS (Large File Storage)**
   ```bash
   git lfs install
   git lfs track "static/images/*.png"
   git add .gitattributes
   git add static/images/
   git commit -m "Add images with LFS"
   git push
   ```

   **Option B: Upload images to Vercel separately**
   - After initial deploy, use Vercel dashboard to upload `static/images/` folder
   - Or use Vercel CLI: `vercel --prod` (it will upload all files)

   **Option C: Use a CDN** (Cloudinary, Imgur, etc.)
   - Upload images to CDN
   - Update your HTML to use CDN URLs

4. **Connect GitHub to Vercel**:
   - Go to Vercel Dashboard
   - Click "New Project"
   - Import your GitHub repository
   - Set environment variables (ORIHOST_IP, API_PORT)
   - Deploy

### 9. Verify Deployment

After deployment, Vercel will give you a URL like:
`https://your-project.vercel.app`

Visit it and test the web panel!

## Important Notes

- **API Access**: Make sure Orihost API (port 8080) is accessible from the internet
- **CORS**: If you get CORS errors, you may need to add CORS headers in `main.py`
- **Images**: All 317 images in `static/images/` will be served as static files by Vercel
- **Session Storage**: Vercel serverless functions use in-memory sessions (may reset on cold starts)

## Troubleshooting

- **API Connection Error**: Check that Orihost IP is correct and port 8080 is open
- **Images Not Loading**: Ensure `static/images/` folder is included in deployment
- **Build Errors**: Check `api/requirements.txt` has all dependencies

