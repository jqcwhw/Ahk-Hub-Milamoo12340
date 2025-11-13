# Repository Organization

The repository has been cleaned and organized. Here's the current structure:

## Main Directories

### `/client`
Frontend React application code

### `/server`
Backend Express server code

### `/shared`
Shared types and schemas used by both frontend and backend

### `/docs`
Documentation files including:
- `VERCEL_DEPLOYMENT.md` - Complete Vercel deployment guide
- `DEPLOYMENT_GUIDE.md` - General deployment instructions
- `BUILD_AND_DEPLOY.md` - Build and deployment procedures
- `render.yaml` - Render.com configuration

### `/example-macros`
Example AutoHotkey macro files (.ahk, .amc, .txt)
- `/archives` - Compressed macro archives (.zip files)

### `/design-assets`
Design mockups and screenshots used during development

### `/scripts-dir`
Utility scripts for deployment and maintenance

### `/attached_assets`
User-uploaded or attached assets

## Root Configuration Files

Essential project configuration files remain in the root:
- `package.json` - Node.js dependencies and scripts
- `vite.config.ts` - Vite build configuration
- `tailwind.config.ts` - Tailwind CSS configuration
- `tsconfig.json` - TypeScript configuration
- `drizzle.config.ts` - Database configuration
- `vercel.json` - Vercel deployment configuration
- `components.json` - Shadcn components configuration
- `.env.example` - Environment variables template
- `replit.md` - Replit project documentation
- `design_guidelines.md` - Design system guidelines

## What Was Moved

- ✅ 30+ AutoHotkey files → `/example-macros`
- ✅ 5 ZIP archives → `/example-macros/archives`
- ✅ 8 PNG design images → `/design-assets`
- ✅ 4 documentation files → `/docs`
- ✅ 2 utility scripts → `/scripts-dir`

The repository is now clean, organized, and ready for development and deployment!
