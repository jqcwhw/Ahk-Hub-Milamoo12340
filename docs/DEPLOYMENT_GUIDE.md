
# Vercel Deployment Guide

## Prerequisites
1. Install Vercel CLI: `npm i -g vercel`
2. Create a Vercel account at https://vercel.com

## Environment Variables Setup
Before deploying, set these environment variables in Vercel:
- `GITHUB_TOKEN` - Your GitHub personal access token (optional but recommended)
- `OPENAI_API_KEY` - Your OpenAI API key for AI script generation

## Deployment Steps

### 1. Build the Application
```bash
npm run build
```

### 2. Deploy to Vercel
```bash
vercel
```

Or for production:
```bash
vercel --prod
```

### 3. Set Environment Variables
```bash
vercel env add GITHUB_TOKEN
vercel env add OPENAI_API_KEY
```

## What Gets Deployed
- Complete web application with all curated AHK scripts
- GitHub search functionality
- Personal script library
- AI script generator
- All UI components and styling

## Post-Deployment
1. Your app will be available at: `https://your-project.vercel.app`
2. Add custom domain in Vercel dashboard if desired
3. Monitor deployment logs in Vercel dashboard

## Notes
- The app uses in-memory storage by default
- For persistent storage, consider adding a database connection
- All AHK scripts are embedded in the frontend bundle
