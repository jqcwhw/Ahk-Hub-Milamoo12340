
# Complete Build & Deployment Guide

## Quick Deploy to Replit

Your app is already configured for Replit deployment. Just click the "Deploy" button in Replit!

## What's Included

### Pre-compiled Scripts (13 total)
1. **Window Snap Manager** (AHK v2) - Multi-monitor window management
2. **Text Expander** (AHK v2) - Abbreviation expansion
3. **Auto Clicker** (AHK v1) - Configurable auto-clicker
4. **Scroll Anywhere** (AHK v1) - Middle-mouse scrolling
5. **Window Info Tool** (AHK v1) - Development utility
6. **Clipboard Manager** (AHK v2) - Clipboard history
7. **Media Hotkeys** (AHK v1) - Global media controls
8. **Always On Top** (AHK v1) - Window management
9. **Roblox Anti-AFK** (AHK v2) - Gaming utility
10. **Roblox Auto Clicker** (AHK v2) - Gaming macro
11. **Roblox Pet Simulator Auto Hatch** (AHK v2) - Game automation
12. **Roblox Auto Farm** (AHK v2) - WASD walking patterns
13. **RealTime Code Tester** (AHK v1) - Script testing utility

### Core Features
- GitHub script search with rate limiting protection
- Personal script library (in-memory storage)
- AI script generator (OpenAI GPT-4o-mini)
- Script preview and download
- Script tester/validator tab
- Dark/light theme toggle

### Tech Stack
- **Frontend**: React 18, TypeScript, Vite, TailwindCSS, shadcn/ui
- **Backend**: Express, Node.js
- **API Integration**: GitHub API, OpenAI API
- **Storage**: In-memory (can be upgraded to PostgreSQL)

## Environment Variables Required

```bash
GITHUB_TOKEN=your_github_personal_access_token
OPENAI_API_KEY=your_openai_api_key
PORT=5000
NODE_ENV=production
```

## Build Commands

### Development
```bash
npm install
npm run dev
```

### Production Build
```bash
npm run build
```

This creates:
- `/dist/client` - Frontend static files
- `/dist/index.js` - Backend server bundle

### Start Production Server
```bash
npm start
```

## Replit Deployment Steps

1. **Set Environment Variables**
   - Go to Replit Secrets (lock icon in sidebar)
   - Add `GITHUB_TOKEN` (optional but recommended)
   - Add `OPENAI_API_KEY` (required for AI generator)

2. **Click Deploy Button**
   - Select deployment tier
   - Configure build command: `npm run build`
   - Configure run command: `npm start`
   - Click "Deploy"

3. **Your app will be live at**: `https://your-repl-name.repl.co`

## File Structure
```
/
├── client/               # React frontend
│   ├── src/
│   │   ├── components/  # UI components
│   │   ├── pages/       # Page components
│   │   └── lib/         # Utilities
│   └── index.html
├── server/              # Express backend
│   ├── index.ts         # Main server
│   ├── routes.ts        # API routes
│   └── storage.ts       # Data storage
├── shared/              # Shared types
│   └── schema.ts
└── dist/                # Build output (generated)
```

## API Endpoints

- `POST /api/search/github` - Search GitHub for AHK scripts
- `GET /api/scripts/personal` - Get personal scripts
- `POST /api/scripts/personal` - Add personal script
- `DELETE /api/scripts/personal/:id` - Delete script
- `POST /api/ai/generate` - Generate AHK script with AI

## Features Checklist

✅ GitHub search functionality
✅ Curated script library (13 scripts)
✅ Personal script management
✅ AI script generator
✅ Script tester/validator
✅ Dark/light theme
✅ Mobile responsive
✅ Download functionality
✅ Code preview
✅ Syntax validation

## Performance Notes

- GitHub API: 60 requests/hour (unauthenticated), 5000/hour (with token)
- OpenAI API: Pay-per-use (GPT-4o-mini is very cheap)
- In-memory storage: Scripts persist only during server runtime
- For persistent storage: Upgrade to PostgreSQL on Replit

## Troubleshooting

**Build fails**: Check `npm install` completed successfully
**GitHub search fails**: Verify GITHUB_TOKEN is set correctly
**AI generator fails**: Verify OPENAI_API_KEY is set correctly
**Port issues**: Replit automatically handles port 5000

## Next Steps to Add More Scripts

1. Edit `client/src/pages/Home.tsx`
2. Add to `mockCuratedScripts` array
3. Include: id, name, description, tags, downloadCount, content, version
4. Rebuild and redeploy

## Production Checklist

- [ ] Set environment variables in Replit Secrets
- [ ] Test GitHub search functionality
- [ ] Test AI generator
- [ ] Test script downloads
- [ ] Verify mobile responsiveness
- [ ] Monitor error logs
- [ ] Set up custom domain (optional)
