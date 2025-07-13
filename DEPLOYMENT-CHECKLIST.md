# Deployment Checklist for CFMS

## ✅ Configuration Updated

Your application has been configured with the following settings:

### **Frontend URL:**
- `https://cfms-frontend-afo0.onrender.com`

### **Database Configuration:**
- **Host:** `127.0.0.1`
- **User:** `root`
- **Password:** `Swa5athi*`
- **Database:** `cfms`
- **Port:** `3306`

## 🚀 Deployment Steps

### 1. **Database Setup**
```sql
-- Run this in your MySQL database
source database-setup.sql
```

### 2. **Render Deployment**

#### **Environment Variables to Set:**
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

#### **Deployment Settings:**
- **Build Command:** `npm install`
- **Start Command:** `npm start`
- **Plan:** Free

### 3. **Verification Steps**

#### **Health Check:**
- Visit: `https://your-backend-url.onrender.com/health`
- Should return: `{"status":"OK","timestamp":"..."}`

#### **Database Connection:**
- Check logs for: `"Connected to MySQL database"`
- If error: Verify database credentials and network access

#### **CORS Configuration:**
- Frontend should be able to make API calls to backend
- Check browser console for CORS errors

### 4. **Testing Checklist**

- [ ] Backend health endpoint responds
- [ ] Database connection successful
- [ ] Frontend can load products/services
- [ ] Customer registration works
- [ ] Product feedback submission works
- [ ] Service feedback submission works
- [ ] Admin login works (password: `admin123`)
- [ ] Admin dashboard loads feedback data
- [ ] Analytics charts display correctly

### 5. **Troubleshooting**

#### **Common Issues:**

1. **Database Connection Failed:**
   - Verify database is accessible from Render
   - Check firewall settings
   - Ensure database credentials are correct

2. **CORS Errors:**
   - Verify `FRONTEND_URL` is set correctly
   - Check that frontend URL matches exactly

3. **Build Failures:**
   - Check `package.json` has all dependencies
   - Verify Node.js version compatibility

4. **Runtime Errors:**
   - Check Render logs for detailed error messages
   - Verify all environment variables are set

### 6. **Security Notes**

- **Change admin password** from `admin123` in production
- **Generate a strong SESSION_SECRET**
- **Consider using environment variables** for sensitive data
- **Enable HTTPS** (Render provides this automatically)

## 📞 Support

If you encounter issues:
1. Check Render logs in the dashboard
2. Verify database connectivity
3. Test endpoints individually
4. Check browser console for frontend errors

## 🎉 Success Indicators

Your deployment is successful when:
- ✅ Backend responds to health check
- ✅ Frontend loads without errors
- ✅ Database operations work
- ✅ Admin dashboard displays data
- ✅ Feedback submission works 