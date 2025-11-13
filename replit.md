# Milamoos AutoHotkey Macro Hub

## Overview

Milamoos AutoHotkey Macro Hub is a web application that helps users discover, manage, and generate AutoHotkey (AHK) macros and code. The platform enables users to search GitHub for AHK code (both v1 and v2), browse curated macro collections, maintain a personal macro library, and generate custom macros using AI assistance. Built as a full-stack TypeScript application with a React frontend and Express backend, it provides a modern, gaming-focused interface for the AutoHotkey community.

**Recent Changes (Nov 9, 2025):**
- **Complete "Script" to "Macro" Rebranding**: Comprehensive terminology change across entire application
  - Backend: Schema (PersonalMacro), storage methods, API routes (/api/macros/*), initialization files
  - Frontend: MacroCard, AddMacroDialog, AIGenerator all use "macro" terminology
  - UI text: Personal library uses "macro", GitHub search uses "code", Script Tester keeps "script"
  - App title updated to "Milamoos AutoHotkey Macro Hub"
- **Enhanced Search Bar**: Significantly enlarged for better usability
  - Height increased from h-12 (48px) to h-16 (64px)
  - Text size increased from text-base to text-lg
  - Icon and button sizes matched to new height
  - Placeholder updated to "Search for AutoHotkey macros..."
- **Section Header Refinement**: Reduced from text-3xl font-black to text-xl font-bold for better visual hierarchy
- **Testing**: Full end-to-end testing completed - all features working correctly with new terminology

**Previous Changes (Nov 8, 2025):**
- **Major Professional Dark Theme Redesign**: Complete visual overhaul inspired by OMEN Gaming Hub and Razer Cortex
  - Dark sophisticated backgrounds (slate-950/900 gradients) replacing light blue theme
  - Professional glowing effects with blur opacity transitions on hover
  - Premium card designs with emerald/teal neon accent glows and shadows
  - High-contrast dark theme with emerald-400/teal-400 gradient text and borders
- **Enhanced Header & Navigation**: Glowing header with backdrop blur, gradient text logo, and professional tab system with emerald gradient active states and shadow effects
- **Premium Script Cards**: Dark card backgrounds with glowing border rings, emerald gradient top borders, professional icon badges with ring effects, visible code previews maintained with dark slate-950/50 backgrounds
- **Professional Button Styling**: Gradient buttons (emerald-to-teal), shadow effects, and hover state improvements across all interactive elements
- **Search Result Cards**: Matching dark professional theme with glowing hover effects, professional typography, and maintained code transparency
- **PS99 & Python Transcriber Cards**: Sophisticated dark cards with violet/fuchsia glowing effects, ring borders, and professional spacing
- **System Optimizer Section**: Dark theme with professional headers, emerald gradient accents, and organized tool categories
- **Typography Overhaul**: Font-black weights, uppercase tracking for headers, improved readability with slate-100/300 text colors
- **Maintained Core Feature**: All script cards still show visible code previews for complete transparency - now with professional dark code panels

## User Preferences

Preferred communication style: Simple, everyday language.

## System Architecture

### Frontend Architecture

**Framework & Build System**
- React 18 with TypeScript for type-safe component development
- Vite as the build tool and development server for fast hot module replacement
- Wouter for lightweight client-side routing (single-page application)

**UI Component System**
- shadcn/ui component library built on Radix UI primitives
- Tailwind CSS for utility-first styling with custom design tokens
- Design approach follows Material Design and GitHub-inspired patterns for developer-focused aesthetics
- Custom theming system supporting light/dark modes with HSL color variables
- Component library includes cards, dialogs, buttons, forms, and specialized components (AIGenerator, CodeViewer, SearchBar, MacroCard, SearchResultCard)

**State Management**
- TanStack Query (React Query) for server state management, caching, and data fetching
- Local component state with React hooks for UI interactions
- Custom hooks (`use-toast`, `use-mobile`) for reusable functionality

**Key Features**
- GitHub code search with syntax preview and metadata display
- Personal macro library with CRUD operations
- AI-powered macro generation interface
- Code syntax highlighting and copy functionality
- Responsive design with mobile-first approach
- **Pet Simulator 99 Tools** (Real-time Big Games API integration)
  - Live clan tracker with top 20 leaderboard
  - Individual clan lookup and statistics
  - Active clan battle monitoring
  - RAP (Recent Average Price) checker for pets and items
  - Real-time data updates every 30-60 seconds
- **Pre-loaded Scripts**
  - Fisch Macro V11.2 for Roblox fishing automation
  - PS99 Enhanced Clan Tracker for Pet Simulator 99
  - InkGame AutoRoll for Ink Game power rolling

### Backend Architecture

**Server Framework**
- Express.js with TypeScript for API routes and middleware
- HTTP server created via Node's native `http` module
- Custom logging middleware for API request/response tracking
- JSON body parsing with raw body preservation for webhooks

**API Design**
- RESTful endpoints under `/api` namespace
- GitHub API integration for code search functionality
- In-memory storage implementation (MemStorage) with interface-based design (IStorage) for future database swapping
- Zod schemas for request validation and type safety

**Development Experience**
- Vite middleware integration in development mode for seamless HMR
- Custom error overlay plugin (@replit/vite-plugin-runtime-error-modal)
- Separate development and production build processes

### Data Storage Solutions

**Current Implementation**
- In-memory storage (MemStorage class) for users and personal macros
- UUID-based identifiers using Node's crypto module
- Map-based data structures for fast lookups

**Database Schema (Drizzle ORM)**
- PostgreSQL schema defined with Drizzle ORM (prepared for future migration)
- Users table with id, username, password fields
- Configuration for Neon Database serverless PostgreSQL
- Migration system configured via drizzle-kit

**Data Models**
- User: id, username, password
- PersonalMacro: id, name, description, content, tags, version
- GitHubSearchResult: repository metadata, code preview, download URL, language version
- Zod schemas provide runtime validation and TypeScript types

### External Dependencies

**Third-Party APIs**
- GitHub Code Search API (api.github.com/search/code)
  - Used for discovering AHK code across public repositories
  - Requires User-Agent header
  - Filters by .ahk file extension
  - Returns code preview, repository metadata, and download URLs
  - Rate limiting considerations (unauthenticated requests)
- Big Games PS99 Public API (https://ps99.biggamesapi.io/api)
  - Real-time Pet Simulator 99 game data
  - Clan rankings, battle information, and member data
  - RAP (Recent Average Price) for pets and items  
  - Collections data (pets, eggs, items, etc.)
  - No API key required - public access
  - Endpoints: /clans, /clan/:name, /activeClanBattle, /rap, /exists, /collections

**Database Services**
- Neon Database (PostgreSQL serverless) - configured but not yet connected
  - Connection via @neondatabase/serverless package
  - Environment variable: DATABASE_URL
  - Connection pooling support with connect-pg-simple for sessions

**UI Component Libraries**
- Radix UI primitives for accessible components (accordion, dialog, dropdown, tooltip, etc.)
- Embla Carousel for image/content carousels
- cmdk for command palette functionality
- lucide-react for icon system
- react-day-picker for date selection
- vaul for drawer components

**Fonts**
- Google Fonts: Inter (UI text), Fira Code (monospace/code)

**Development Tools**
- Replit-specific plugins: cartographer, dev-banner, runtime error modal
- TypeScript for type checking
- ESBuild for production server bundling

**Key Implementation Notes**
- The application currently uses in-memory storage but has Drizzle ORM schemas prepared for PostgreSQL migration
- GitHub API integration is unauthenticated; production deployment should consider API tokens for higher rate limits
- The design system emphasizes code-friendly aesthetics with monospace fonts, clear hierarchy, and GitHub-inspired patterns
- Vite configuration includes custom aliases (@, @shared, @assets) for clean import paths