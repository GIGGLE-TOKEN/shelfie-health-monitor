# 🏥 Shelfie Health Monitor

A standalone health monitoring dashboard for the Shelfie social media app infrastructure.

## 🎯 **Purpose**

This is a **completely separate** monitoring system that:
- ✅ **Independent**: Not part of your main app
- ✅ **Lightweight**: Static HTML with JavaScript
- ✅ **Deployable**: Can be hosted on GitHub Pages, Vercel, or Netlify
- ✅ **Real-time**: Monitors all your infrastructure connections
- ✅ **App Store Safe**: Won't interfere with your main app submission

## 🚀 **Features**

### **Real-time Monitoring**
- **API Server**: Tests `https://api.shelfieplatform.com/api/health`
- **CloudFlare CDN**: Verifies CDN functionality
- **Website**: Checks `https://shelfieplatform.com` accessibility
- **SendGrid**: Email service status (requires backend endpoint)
- **MongoDB**: Database connectivity (requires backend endpoint)

### **Visual Dashboard**
- **Color-coded Status**: Green (healthy), Yellow (warning), Red (error)
- **Response Times**: Shows latency for each service
- **Auto-refresh**: Updates every 30 seconds
- **Mobile Responsive**: Works on all devices

## 📁 **File Structure**

```
shelfie-health-monitor/
├── index.html          # Main dashboard (static HTML)
├── README.md           # This documentation
└── package.json        # Dependencies (if needed)
```

## 🚀 **Deployment Options**

### **Option 1: GitHub Pages (Recommended)**
1. Create a new GitHub repository: `shelfie-health-monitor`
2. Upload these files to the repository
3. Enable GitHub Pages in repository settings
4. Access at: `https://yourusername.github.io/shelfie-health-monitor`

### **Option 2: Vercel (Free)**
1. Connect your GitHub repository to Vercel
2. Deploy automatically
3. Access at: `https://shelfie-health-monitor.vercel.app`

### **Option 3: Netlify (Free)**
1. Drag and drop the `index.html` file to Netlify
2. Get instant deployment
3. Access at: `https://shelfie-health-monitor.netlify.app`

## 🔧 **Configuration**

Edit the `CONFIG` object in `index.html` to customize:

```javascript
const CONFIG = {
    apiBaseUrl: 'https://api.shelfieplatform.com',
    healthEndpoint: '/api/health',
    refreshInterval: 30000, // 30 seconds
    timeout: 10000 // 10 seconds
};
```

## 📊 **What It Monitors**

### **✅ Always Available (No Backend Required)**
- **API Server**: Tests your main API endpoint
- **CloudFlare CDN**: Verifies CDN is working
- **Website**: Checks your landing page
- **Overall Status**: Combined health status

### **🔧 Requires Backend Endpoints (Optional)**
- **SendGrid**: Email service connectivity
- **MongoDB**: Database connection status
- **PM2 Process**: Server process monitoring

## 🎨 **Customization**

### **Add New Services**
```javascript
async checkNewService() {
    try {
        const response = await fetch('https://your-service.com/health');
        return { 
            status: response.ok ? 'connected' : 'error',
            message: response.ok ? 'Service working' : 'Service error',
            latency: Date.now() - startTime
        };
    } catch (error) {
        return { 
            status: 'error', 
            message: `Service Error: ${error.message}`, 
            latency: null 
        };
    }
}
```

### **Change Refresh Interval**
```javascript
const CONFIG = {
    refreshInterval: 60000, // Change to 60 seconds
};
```

## 🔒 **Security & Privacy**

- **No Data Collection**: Only monitors public endpoints
- **No Authentication**: Public dashboard for monitoring
- **No Personal Data**: Only system status information
- **Read-Only**: Cannot modify your systems

## 📱 **Mobile Support**

The dashboard is fully responsive and works on:
- **Desktop**: Full dashboard view
- **Tablet**: Responsive grid layout
- **Mobile**: Optimized for small screens

## 🚨 **Troubleshooting**

### **If Services Show as Down**
1. **Check API**: Visit `https://api.shelfieplatform.com/api/health` directly
2. **Check Website**: Visit `https://shelfieplatform.com` directly
3. **Check CloudFlare**: Verify DNS settings
4. **Check Backend**: Ensure your server is running

### **If Dashboard Won't Load**
1. **Check Internet**: Ensure you have internet connection
2. **Check URL**: Verify the deployment URL is correct
3. **Check Browser**: Try a different browser
4. **Check Console**: Open browser developer tools for errors

## 🎯 **Benefits**

### **For Development**
- **Quick Status Check**: See all systems at a glance
- **Debug Issues**: Identify which service is down
- **Performance Monitoring**: Track response times
- **Uptime Verification**: Ensure services are running

### **For Production**
- **System Reliability**: Monitor production systems
- **User Experience**: Ensure services are accessible
- **Maintenance**: Plan maintenance windows
- **Scaling**: Monitor system performance

## 🔄 **Updates**

To update the dashboard:
1. **Edit Files**: Modify `index.html` as needed
2. **Commit Changes**: Push to your repository
3. **Auto-Deploy**: GitHub Pages/Vercel/Netlify will auto-update
4. **Verify**: Check the dashboard is working

## 📞 **Support**

This is a standalone monitoring system. For issues:
1. **Check Configuration**: Verify URLs and endpoints
2. **Check Network**: Ensure internet connectivity
3. **Check Services**: Verify your services are running
4. **Check Browser**: Try different browsers

---

**🎉 Your Shelfie infrastructure now has professional monitoring!**

This dashboard will help you:
- ✅ **Monitor** all your systems in real-time
- ✅ **Debug** issues quickly
- ✅ **Ensure** your app is always accessible
- ✅ **Maintain** high uptime for your users
