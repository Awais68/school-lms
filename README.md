# School Learning Management System (LMS)

A comprehensive Learning Management System built with MERN stack (MongoDB, Express, React, Node.js) for managing educational institutions up to Grade 10 with both campus and online course support.

## Features

- **Multi-Branch Support**: Manage multiple school branches from a single platform
- **Role-Based Access**: Admin, Teacher, Student, Parent, Accountant roles
- **Attendance Management**: Manual and biometric attendance tracking
- **Course Management**: Online and campus course creation and management
- **Fee Management**: Complete fee structure, invoicing, and payment processing
- **Transport Management**: Route planning, vehicle tracking, and student assignments
- **Staff Management**: Employee profiles and salary processing
- **Inventory Management**: Asset tracking and supply management
- **Library Management**: Book catalog and borrowing system
- **Academic Tools**: Assignment creation, grading, quizzes, and grade management
- **Real-time Features**: Live notifications and attendance sync via Socket.IO
- **AI Integration**: Intelligent chatbot with Gemini API for student support
- **Responsive Design**: Mobile, tablet, desktop, and projector compatible

## Technology Stack

- **Frontend**: React 18+, React Router, Tailwind CSS, GSAP for animations
- **Backend**: Node.js, Express.js, Socket.IO
- **Database**: MongoDB with Mongoose ODM
- **AI Integration**: Gemini API with secure proxy
- **File Storage**: Cloudinary for media files
- **Payments**: Stripe for fee processing
- **Authentication**: JWT with refresh tokens
- **Real-time**: Socket.IO for live updates
- **Styling**: Tailwind CSS with responsive design
- **Animations**: GSAP for smooth micro-interactions

## Project Structure

```
lms/
├── server/                 # Backend application
│   ├── config/             # Configuration files
│   ├── controllers/        # Request handlers
│   ├── models/             # Database models
│   ├── routes/             # API routes
│   ├── middleware/         # Custom middleware
│   ├── services/           # Business logic
│   ├── sockets/            # Socket.IO handlers
│   ├── utils/              # Utility functions
│   ├── server.js           # Main server file
│   └── package.json
├── client/                 # Frontend application
│   ├── public/             # Static assets
│   ├── src/
│   │   ├── components/     # React components
│   │   ├── context/        # React context providers
│   │   ├── hooks/          # Custom hooks
│   │   ├── pages/          # Page components
│   │   ├── services/       # API services
│   │   ├── styles/         # CSS files
│   │   ├── utils/          # Utility functions
│   │   ├── App.js          # Main app component
│   │   └── index.js        # Entry point
│   ├── package.json
│   └── tailwind.config.js
└── README.md
```

## Environment Variables

### Backend (.env)
```
NODE_ENV=development
PORT=5000
MONGODB_URI=mongodb://localhost:27017/school_lms
JWT_SECRET=your-super-secret-jwt-key-here-make-it-long-and-random
JWT_EXPIRE=7d
JWT_REFRESH_SECRET=your-refresh-token-secret
JWT_REFRESH_EXPIRE=30d
CLIENT_URL=http://localhost:3000
CLOUDINARY_CLOUD_NAME=your_cloud_name
CLOUDINARY_API_KEY=your_api_key
CLOUDINARY_API_SECRET=your_api_secret
EMAIL_HOST=smtp.gmail.com
EMAIL_PORT=587
EMAIL_USER=your-email@gmail.com
EMAIL_PASS=your-app-password
GEMINI_API_KEY=your-gemini-api-key-here
STRIPE_SECRET_KEY=sk_test_your_stripe_secret_key
STRIPE_WEBHOOK_SECRET=whsec_your_webhook_secret
BIOMETRIC_DEVICE_TOKEN=your-secure-device-token
SOCKET_IO_CORS_ORIGIN=http://localhost:3000
SESSION_SECRET=your-session-secret-for-development
TRUST_PROXY=false
LOG_LEVEL=debug
```

### Frontend (.env)
```
REACT_APP_API_URL=http://localhost:5000/api
REACT_APP_SOCKET_URL=http://localhost:5000
REACT_APP_GEMINI_ENABLED=true
```

## Installation

### Backend Setup
1. Navigate to the server directory:
```bash
cd /media/awais/New Volume/no-code/lms/server
```

2. Install dependencies:
```bash
npm install
```

3. Create a `.env` file with the variables above

4. Start the server:
```bash
npm run dev
```

### Frontend Setup
1. Navigate to the client directory:
```bash
cd /media/awais/New Volume/no-code/lms/client
```

2. Install dependencies:
```bash
npm install
```

3. Create a `.env` file with the variables above

4. Start the development server:
```bash
npm start
```

## API Endpoints

### Authentication
- `POST /api/auth/login` - User login
- `POST /api/auth/register` - User registration
- `GET /api/auth/profile` - Get user profile
- `PUT /api/auth/profile` - Update profile
- `PUT /api/auth/change-password` - Change password

### Core Endpoints
- `GET /api/users` - Get all users (with filters)
- `GET /api/courses` - Get all courses
- `POST /api/courses` - Create course
- `GET /api/attendance` - Get attendance records
- `POST /api/attendance/mark` - Mark attendance
- `GET /api/fees` - Get fee records
- `POST /api/fees` - Create fee record
- `POST /api/fees/:id/pay` - Process payment
- `GET /api/assignments` - Get assignments
- `POST /api/assignments` - Create assignment
- `GET /api/grades` - Get grades
- `POST /api/grades` - Create grade

## Database Models

The system includes comprehensive models for:
- User (with roles: admin, teacher, student, parent, accountant)
- Student (with enrollment and academic history)
- Teacher (with specializations and assigned classes)
- Course (with content management)
- Attendance (with manual and biometric methods)
- Fee (with payment processing)
- Assignment (with submission tracking)
- Grade (with academic performance)
- Transport (with routes and vehicles)
- Inventory (with stock management)
- Expense (with financial tracking)
- Library (with book management)

## Security Features

- JWT-based authentication with refresh tokens
- Role-based access control
- Input sanitization and validation
- Database indexing for performance
- Proper error handling and logging
- Secure file upload with validation
- API rate limiting
- CORS configuration

## Real-time Features

- Live attendance updates
- Notification system
- Chatbot responses
- Fee payment confirmations
- Assignment submissions

## UI/UX Features

- Responsive design for all devices
- Sky blue and navy blue color theme
- GSAP-powered micro-animations
- Real-time updates
- Intuitive navigation
- Role-specific dashboards
- Interactive charts and graphs

## Chatbot Integration

The system features an AI-powered chatbot using:
- Gemini API for natural language processing
- Secure server-side proxy for API keys
- Context-aware responses based on user role
- Action triggers for common tasks
- Real-time communication via WebSocket

## Biometric Integration

- Device communication protocol
- Attendance synchronization
- Data mapping and validation
- Offline storage with sync capability
- Real-time notification system

## Deployment

For production deployment:
1. Set `NODE_ENV=production` in environment variables
2. Use a cloud MongoDB provider (like MongoDB Atlas)
3. Set up Cloudinary for file storage
4. Configure proper SSL certificates
5. Set up reverse proxy (NGINX) for production

## Development Guidelines

- Follow consistent naming conventions
- Write comprehensive error handling
- Use environment variables for configuration
- Implement proper validation for all inputs
- Maintain clean and organized code structure
- Write unit tests for critical functionality

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.