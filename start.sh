#!/bin/bash

# School LMS Startup Script
echo "Starting School Learning Management System..."

# Function to start backend
start_backend() {
    echo "Starting backend server..."
    cd /media/awais/New\ Volume/no-code/lms/server
    npm run dev &
    BACKEND_PID=$!
    echo "Backend server started with PID: $BACKEND_PID"
}

# Function to start frontend
start_frontend() {
    echo "Starting frontend server..."
    cd /media/awais/New\ Volume/no-code/lms/client
    npm start &
    FRONTEND_PID=$!
    echo "Frontend server started with PID: $FRONTEND_PID"
}

# Check if both servers are already running
BACKEND_RUNNING=$(lsof -i :5000 | grep LISTEN)
FRONTEND_RUNNING=$(lsof -i :3000 | grep LISTEN)

if [ ! -z "$BACKEND_RUNNING" ]; then
    echo "Backend server is already running on port 5000"
else
    start_backend
fi

if [ ! -z "$FRONTEND_RUNNING" ]; then
    echo "Frontend server is already running on port 3000"
else
    start_frontend
fi

echo "School LMS is now running!"
echo "Backend: http://localhost:5000"
echo "Frontend: http://localhost:3000"
echo ""
echo "To stop the servers, run: pkill -f 'node|npm start'"