# Frontend - Web Panel (Vercel)

This folder contains the web panel frontend that runs on Vercel. By default it targets the backend at `http://217.154.173.102:9246` (Wispbyte instance). Override with the `BACKEND_API_URL` environment variable if you host the backend elsewhere.

## Files

- `web_panel.py` - Flask web application
- `templates/` - HTML templates
- `public/images/` - Static images (317 PNG files) - **Vercel serves these automatically**
- `api/index.py` - Vercel serverless function entry point
- `vercel.json` - Vercel configuration

## Setup for Vercel

### 1. Install Vercel CLI

```bash
npm install -g vercel
```

### 2. Login to Vercel

```bash
vercel login
```

### 3. Deploy

```bash
vercel
```

### 4. Set Environment Variable

Set the backend API URL:

```bash
vercel env add BACKEND_API_URL
# Enter: http://YOUR_BACKEND_IP:PORT
# Example (Wispbyte): http://217.154.173.102:9246
# Select: Production, Preview, Development
```

### 5. Deploy to Production

```bash
vercel --prod
```

## Important Notes

- **Images**: All images in `public/images/` are automatically served by Vercel
- **Backend URL**: Set `BACKEND_API_URL` environment variable to your backend server
- **Public Folder**: Vercel automatically serves files from the `public/` folder
- **Image Paths**: Images are accessed as `/images/909000075.png` (not `/static/images/...`)

## Testing

After deployment, test an image:
```
https://your-project.vercel.app/images/909000075.png
```

This should display the image directly.

## Troubleshooting

**Images not showing?**
- Check that images are in `public/images/` folder
- Verify image paths in HTML use `/images/` (not `/static/images/`)
- Check Vercel deployment logs

**API connection errors?**
- Verify `BACKEND_API_URL` is set correctly
- Check backend server is running and accessible
- Test backend API: `curl http://YOUR_BACKEND_IP:PORT/status`

