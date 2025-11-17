#!/bin/bash

# School LMS Stop Script
echo "Stopping School Learning Management System..."

# Kill backend server (Node.js on port 5000)
if lsof -i :5000 >/dev/null 2>&1; then
    pkill -f "node.*server.js"
    echo "Backend server stopped"
else
    echo "Backend server not running on port 5000"
fi

# Kill frontend server (React on port 3000)
if lsof -i :3000 >/dev/null 2>&1; then
    pkill -f "react-scripts start"
    echo "Frontend server stopped"
else
    echo "Frontend server not running on port 3000"
fi

echo "School LMS has been stopped."