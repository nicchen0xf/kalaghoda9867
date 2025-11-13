"""
Vercel serverless function for Flask web panel
"""
import sys
import os

# Add parent directory to path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from web_panel import app

# Vercel expects the Flask app to be exported
# It will automatically handle WSGI conversion

