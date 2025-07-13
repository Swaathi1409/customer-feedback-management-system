# Customer Feedback Management System

A web application for managing customer feedback for products and services.

## Features

- Customer feedback submission for products and services
- Admin dashboard for viewing feedback and analytics
- Star rating system
- MySQL database integration
- Responsive web interface

## Local Development

1. **Install dependencies:**
   ```bash
   npm install
   ```

2. **Set up environment variables:**
   - Copy `env.example` to `.env`
   - Update the database configuration in `.env`

3. **Start the development server:**
   ```bash
   npm run dev
   ```

4. **Open your browser:**
   Navigate to `http://localhost:3003`

## Deployment on Render

### Prerequisites

1. A MySQL database (you can use Render's MySQL service or external providers like PlanetScale, Railway, etc.)
2. A Render account

### Deployment Steps

1. **Connect your repository to Render:**
   - Go to [Render Dashboard](https://dashboard.render.com)
   - Click "New +" and select "Web Service"
   - Connect your GitHub/GitLab repository

2. **Configure the service:**
   - **Name:** customer-feedback-system
   - **Environment:** Node
   - **Build Command:** `npm install`
   - **Start Command:** `npm start`
   - **Plan:** Free

3. **Set Environment Variables:**
   In the Render dashboard, go to your service → Environment → Add Environment Variable:

   ```
   NODE_ENV=production
   PORT=10000
   SESSION_SECRET=<generate-a-secure-random-string>
   DB_HOST=127.0.0.1
   DB_USER=root
   DB_PASSWORD=Swa5athi*
   DB_NAME=cfms
   DB_PORT=3306
   FRONTEND_URL=https://cfms-frontend-afo0.onrender.com
   ```

4. **Database Setup:**
   - Create your MySQL database
   - Import your database schema
   - Update the environment variables with your database credentials

5. **Deploy:**
   - Click "Create Web Service"
   - Render will automatically deploy your application

### Environment Variables

| Variable | Description | Required |
|----------|-------------|----------|
| `NODE_ENV` | Environment mode | Yes |
| `PORT` | Server port | Yes |
| `SESSION_SECRET` | Session encryption key | Yes |
| `DB_HOST` | Database host | Yes |
| `DB_USER` | Database username | Yes |
| `DB_PASSWORD` | Database password | Yes |
| `DB_NAME` | Database name | Yes |
| `DB_PORT` | Database port | No (default: 3306) |

### Database Schema

Make sure your MySQL database has the following tables:
- `customer` (with AUTO_INCREMENT cu_id)
- `customer_ph`
- `admin`
- `admin_ph`
- `product`
- `service`
- `product_rat`
- `service_rat`
- `analytics`

**Database Name:** `cfms`

### Health Check

The application includes a health check endpoint at `/health` for monitoring.

## Admin Access

- **URL:** `/admin`
- **Password:** `admin123` (change this in production)

## Technologies Used

- **Backend:** Node.js, Express.js
- **Database:** MySQL
- **Frontend:** HTML, CSS, JavaScript
- **Deployment:** Render

## License

MIT 