# 🚀 Complete Deployment Guide

## Project Structure

```
EMOTE_BOT_OB51/
├── backend/          # Bot API Server (deploy anywhere)
│   ├── main.py
│   ├── start.py
│   ├── xC4.py
│   ├── xHeaders.py
│   ├── Pb2/
│   ├── config/
│   └── requirements.txt
│
└── frontend/         # Web Panel (deploy to Vercel)
    ├── web_panel.py
    ├── templates/
    ├── public/images/  # 317 PNG images
    ├── api/
    └── vercel.json
```

## Step 1: Deploy Backend (Anywhere)

> **Current deployment target:** Wispbyte server at `217.154.173.102` with external port `9246`. Adjust the instructions if you host elsewhere.

### Option A: Orihost (Current)

1. Upload `backend/` folder to Orihost
2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
3. Run:
   ```bash
   python main.py
   ```
   Or use:
   ```bash
   python start.py
   ```

### Option B: Railway/Render/Any VPS

1. Upload `backend/` folder
2. Install dependencies
3. Run `python main.py`
4. Note the server IP and port (Wispbyte server: `217.154.173.102:9246`)

**Important:** Make sure port 9246 (or whatever `API_PORT` you choose) is open and accessible from the internet!

## Step 2: Deploy Frontend to Vercel

### 1. Install Vercel CLI

```bash
npm install -g vercel
```

### 2. Login

```bash
vercel login
```

### 3. Navigate to Frontend

```bash
cd frontend
```

### 4. Deploy

```bash
vercel
```

Follow prompts:
- Set up? **Yes**
- Link to existing? **No**
- Project name? `emote-bot-panel` (or your choice)
- Directory? `./` (current)

### 5. Set Environment Variable

Set your backend API URL:

```bash
vercel env add BACKEND_API_URL
```

Enter your backend server URL:
- Example (Wispbyte): `http://217.154.173.102:9246`
- Or: `http://your-server-ip:PORT`

Select: **Production, Preview, Development** (all)

### 6. Deploy to Production

```bash
vercel --prod
```

## Step 3: Verify

### Test Images

Visit:
```
https://your-project.vercel.app/images/909000075.png
```

Should show the image directly!

### Test Web Panel

Visit:
```
https://your-project.vercel.app
```

Should show the web panel with all images loading!

## Troubleshooting

### Images Not Showing?

1. ✅ Check images are in `frontend/public/images/`
2. ✅ Verify HTML uses `/images/` paths (not `/static/images/`)
3. ✅ Check Vercel deployment logs

### API Connection Errors?

1. ✅ Verify `BACKEND_API_URL` is set correctly
2. ✅ Check backend server is running
3. ✅ Test backend: `curl http://YOUR_BACKEND_IP:PORT/status`
4. ✅ Ensure the chosen port (e.g., 9246) is open on backend server

### Backend Not Accessible?

- Check firewall allows the chosen port (e.g., 9246)
- Verify backend binds to `0.0.0.0` (not `127.0.0.1`)
- Test from another machine: `curl http://YOUR_IP:PORT/status`

## Summary

- **Backend**: Deploy `backend/` folder anywhere (Orihost, Railway, Render, etc.)
- **Frontend**: Deploy `frontend/` folder to Vercel
- **Images**: Automatically served from `public/images/` by Vercel
- **Connection**: Frontend connects to backend via `BACKEND_API_URL` environment variable

Done! 🎉

