# Emote Bot - Backend & Frontend

This project is split into two parts:

## 📁 Project Structure

- **`backend/`** - Bot API server (deploy anywhere: Orihost, Railway, Render, VPS, etc.)
- **`frontend/`** - Web panel (deploy to Vercel)

## 🚀 Quick Start

### Backend Setup

```bash
cd backend
pip install -r requirements.txt
python main.py
```

### Frontend Setup (Vercel)

```bash
cd frontend
vercel
vercel env add BACKEND_API_URL  # Set to http://217.154.173.102:9246 (or your backend URL)
vercel --prod
```

## 📖 Full Documentation

- **Backend**: See `backend/README.md`
- **Frontend**: See `frontend/README.md`
- **Deployment**: See `DEPLOYMENT_GUIDE.md`

## ✅ What's Fixed

- ✅ Images now in `frontend/public/images/` (Vercel serves automatically)
- ✅ HTML template uses `/images/` paths (not `/static/images/`)
- ✅ Backend and frontend separated
- ✅ Backend can be hosted anywhere
- ✅ Frontend optimized for Vercel

## 🎯 Next Steps

1. Deploy backend to your server (Orihost, Railway, etc.)
2. Deploy frontend to Vercel
3. Set `BACKEND_API_URL` environment variable in Vercel
4. Done! 🎉

