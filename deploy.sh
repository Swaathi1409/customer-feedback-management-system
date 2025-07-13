#!/bin/bash

# Deployment script for Customer Feedback Management System
echo "🚀 Preparing for deployment..."

# Check if .env file exists
if [ ! -f .env ]; then
    echo "⚠️  .env file not found. Please create one based on env.example"
    echo "📝 Copy env.example to .env and update the values"
    exit 1
fi

# Check if all required dependencies are installed
if [ ! -d "node_modules" ]; then
    echo "📦 Installing dependencies..."
    npm install
fi

# Test the application
echo "🧪 Testing the application..."
npm start &
SERVER_PID=$!

# Wait for server to start
sleep 5

# Test health endpoint
if curl -f http://localhost:3003/health > /dev/null 2>&1; then
    echo "✅ Application is running successfully"
    kill $SERVER_PID
else
    echo "❌ Application failed to start"
    kill $SERVER_PID
    exit 1
fi

echo "🎉 Application is ready for deployment!"
echo ""
echo "📋 Next steps:"
echo "1. Push your code to GitHub/GitLab"
echo "2. Connect your repository to Render"
echo "3. Set up your MySQL database"
echo "4. Configure environment variables in Render"
echo "5. Deploy!"
echo ""
echo "📖 See README.md for detailed deployment instructions" 