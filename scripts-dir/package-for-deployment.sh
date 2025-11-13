
#!/bin/bash

echo "=== AHK Script Finder - Deployment Package Creator ==="
echo ""

# Create deployment package directory
PACKAGE_DIR="ahk-script-finder-deploy"
rm -rf $PACKAGE_DIR
mkdir -p $PACKAGE_DIR

echo "✓ Creating package directory..."

# Copy essential files
cp -r client $PACKAGE_DIR/
cp -r server $PACKAGE_DIR/
cp -r shared $PACKAGE_DIR/
cp package.json $PACKAGE_DIR/
cp package-lock.json $PACKAGE_DIR/
cp tsconfig.json $PACKAGE_DIR/
cp vite.config.ts $PACKAGE_DIR/
cp tailwind.config.ts $PACKAGE_DIR/
cp postcss.config.js $PACKAGE_DIR/
cp components.json $PACKAGE_DIR/
cp vercel.json $PACKAGE_DIR/
cp .gitignore $PACKAGE_DIR/
cp BUILD_AND_DEPLOY.md $PACKAGE_DIR/README.md
cp DEPLOYMENT_GUIDE.md $PACKAGE_DIR/

echo "✓ Copied source files..."

# Create .env.example
cat > $PACKAGE_DIR/.env.example << EOF
# GitHub Personal Access Token (optional but recommended for higher rate limits)
GITHUB_TOKEN=your_github_token_here

# OpenAI API Key (required for AI script generation)
OPENAI_API_KEY=your_openai_api_key_here

# Port (default: 5000)
PORT=5000

# Node Environment
NODE_ENV=production
EOF

echo "✓ Created .env.example..."

# Create quick start script
cat > $PACKAGE_DIR/quick-start.sh << 'EOF'
#!/bin/bash
echo "=== AHK Script Finder - Quick Start ==="
echo ""
echo "Installing dependencies..."
npm install

echo ""
echo "Building application..."
npm run build

echo ""
echo "Setup complete! To start the server:"
echo "  npm start"
echo ""
echo "Or for development:"
echo "  npm run dev"
echo ""
echo "Don't forget to set environment variables in .env file!"
EOF

chmod +x $PACKAGE_DIR/quick-start.sh

echo "✓ Created quick-start script..."

# Create archive
tar -czf ahk-script-finder-deploy.tar.gz $PACKAGE_DIR/

echo "✓ Created deployment archive..."
echo ""
echo "=== Package Complete! ==="
echo ""
echo "Package contents:"
echo "  - Full source code"
echo "  - All 13 pre-compiled scripts"
echo "  - Configuration files"
echo "  - Deployment guides"
echo "  - Quick start script"
echo ""
echo "Files created:"
echo "  - $PACKAGE_DIR/ (directory)"
echo "  - ahk-script-finder-deploy.tar.gz (archive)"
echo ""
echo "To deploy:"
echo "  1. Extract archive on your server"
echo "  2. Run ./quick-start.sh"
echo "  3. Set environment variables"
echo "  4. Run npm start"
echo ""
echo "Or deploy directly to Replit - just click Deploy!"
