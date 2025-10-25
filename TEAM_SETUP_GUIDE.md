# 🚀 Team Member Setup Guide - FitMap Project

## Welcome to the Team! 👋

This guide will walk you through setting up the FitMap project on your machine.

---

## ⚠️ IMPORTANT Prerequisites

Before starting, make sure you have:

1. ✅ **MySQL** installed (NOT SQL Server!)
   - Download: https://dev.mysql.com/downloads/mysql/
   - OR MySQL via Homebrew: `brew install mysql`
   - Remember your root password during installation!

2. ✅ **.NET 8 SDK** or later
   - Download: https://dotnet.microsoft.com/download
   - Verify: Run `dotnet --version` in terminal

3. ✅ **Python 3** (for running the frontend)
   - Usually pre-installed on Mac
   - Verify: Run `python3 --version` in terminal

4. ✅ **MySQL Workbench** (for database management)
   - Download: https://dev.mysql.com/downloads/workbench/

---

## 📥 Step 1: Clone the Repository

```bash
git clone https://github.com/grantsegura/group2-project.git
cd group2-project
```

---

## 🗄️ Step 2: Set Up MySQL Database

### A. Open MySQL Workbench

1. Launch MySQL Workbench
2. Connect to your local MySQL server (usually "Local instance 3306")

### B. Create the Database

In the query window, run:

```sql
CREATE DATABASE MuscleExerciseDB;
USE MuscleExerciseDB;
```

Click the ⚡ lightning bolt to execute.

### C. Import the Data

1. Click **File** → **Open SQL Script**
2. Navigate to: `api/database/complete-database-with-all-exercises.sql`
3. Click **Open**
4. Click the ⚡ lightning bolt to execute
5. Wait ~10 seconds for it to complete

### D. Verify It Worked

Run this query:

```sql
SELECT COUNT(*) as TotalExercises FROM Exercises;
```

**Expected result:** 250 exercises ✅

If you don't see 250, re-run the script!

---

## 🔐 Step 3: Configure Your Database Password

**CRITICAL:** Never commit your actual password!

1. Open: `api/MuscleWebApi/appsettings.Development.json`

2. Find line 9 and replace `YOUR_MYSQL_PASSWORD_HERE` with YOUR actual MySQL root password:

```json
"DefaultConnection": "Server=localhost;Database=MuscleExerciseDB;User=root;Password=YOUR_ACTUAL_PASSWORD;"
```

3. **Save the file**

**Note:** This file is gitignored and will NOT be pushed to GitHub (your password stays private!)

---

## ▶️ Step 4: Run the Project

You need to run TWO things simultaneously (two terminal windows):

### Terminal 1: Start the API

```bash
cd api/MuscleWebApi
dotnet restore
dotnet run
```

✅ **Success looks like:**
```
info: Now listening on: http://localhost:5108
```

**Keep this terminal running!**

---

### Terminal 2: Start the Frontend

```bash
cd frontend
python3 -m http.server 8000
```

✅ **Success looks like:**
```
Serving HTTP on 0.0.0.0 port 8000
```

**Keep this terminal running too!**

---

## 🌐 Step 5: Open the Website

Open your browser and go to:

```
http://localhost:8000
```

You should see:
- ✅ Purple gradient background
- ✅ "FITMAP" logo in the navbar
- ✅ Body diagram with colorful muscles
- ✅ Front View / Back View buttons

**Try clicking on a muscle!** You should see 8-10 exercises appear below.

---

## 🐛 Common Issues & Solutions

### Issue: "Access denied for user 'root'@'localhost'"

**Solution:** Wrong password in `appsettings.Development.json`
- Double-check your MySQL password
- Make sure there are no extra spaces
- Save the file after editing

---

### Issue: "Unable to connect to database"

**Solution:** MySQL server not running
- Mac: Run `mysql.server start` in terminal
- Or: Check System Preferences → MySQL → Start Server
- Verify MySQL is running in Activity Monitor

---

### Issue: "Port 5108 already in use"

**Solution:** Another app is using that port
- Find and stop the other app
- Or change the port in `api/MuscleWebApi/Properties/launchSettings.json`
- Update the port in `frontend/js/api.js` to match

---

### Issue: "Failed to load muscle groups"

**Solution:** API not running or wrong URL
- Make sure Terminal 1 shows "Now listening on: http://localhost:5108"
- Check browser console (F12) for errors
- Verify `frontend/js/api.js` has the correct URL: `http://localhost:5108/api`

---

### Issue: SVG diagrams not showing

**Solution:** Not using a web server
- Don't just open `index.html` directly
- Must use `python3 -m http.server 8000`
- Then access via `http://localhost:8000`

---

### Issue: "Database 'MuscleExerciseDB' does not exist"

**Solution:** Database not created
- Open MySQL Workbench
- Run: `CREATE DATABASE MuscleExerciseDB;`
- Then run the `complete-database-with-all-exercises.sql` script

---

## 📝 Making Changes

### When you make code changes:

**Backend (C#) changes:**
1. Stop the API (Ctrl+C in Terminal 1)
2. Restart: `dotnet run`

**Frontend (HTML/CSS/JS) changes:**
1. Just refresh your browser
2. Use hard refresh: `Cmd+Shift+R` (clears cache)

**Database changes:**
1. Run your SQL queries in MySQL Workbench
2. No need to restart anything

---

## 🤝 Working with the Team

### Before you start working:

```bash
git pull origin main
```

This gets the latest changes from the team.

### After you make changes:

```bash
git add .
git commit -m "Describe what you changed"
git push origin main
```

### If you get merge conflicts:

1. Don't panic!
2. Open the conflicted files
3. Look for `<<<<<<<`, `=======`, `>>>>>>>` markers
4. Keep the changes you want
5. Remove the markers
6. `git add .` and `git commit`

---

## 🎯 Project Structure

```
group2-project/
├── frontend/               ← Website files
│   ├── index.html         ← Main page
│   ├── js/
│   │   ├── app.js         ← UI logic
│   │   └── api.js         ← API calls (UPDATE PORT HERE if needed)
│   ├── svg/               ← Body diagrams
│   └── css/
│       └── custom.css     ← Styling
├── api/
│   ├── MuscleWebApi/      ← .NET API
│   │   ├── Controllers/   ← API endpoints
│   │   ├── Models/        ← Data models
│   │   ├── Data/          ← Database helper
│   │   └── appsettings.Development.json  ← PUT YOUR PASSWORD HERE
│   └── database/
│       └── complete-database-with-all-exercises.sql  ← RUN THIS FILE
└── README.md              ← Project overview
```

---

## 💡 Quick Reference

| What | URL/Command |
|------|-------------|
| **Website** | http://localhost:8000 |
| **API** | http://localhost:5108 |
| **Start API** | `cd api/MuscleWebApi && dotnet run` |
| **Start Frontend** | `cd frontend && python3 -m http.server 8000` |
| **Your Password File** | `api/MuscleWebApi/appsettings.Development.json` |
| **Database Script** | `api/database/complete-database-with-all-exercises.sql` |

---

## 📚 Additional Documentation

- **README.md** - Full project overview
- **MYSQL_SETUP.md** - Detailed MySQL instructions
- **PASSWORD_SETUP.md** - Security details about passwords
- **QUICK_REFERENCE.md** - Commands cheat sheet

---

## 🆘 Still Having Issues?

1. Check the **Common Issues** section above
2. Ask in the group chat
3. Check browser console (F12) for error messages
4. Make sure both Terminal 1 (API) and Terminal 2 (Frontend) are running

---

## ✅ Setup Checklist

Before calling it done, verify:

- [ ] MySQL installed and running
- [ ] Database `MuscleExerciseDB` created
- [ ] `complete-database-with-all-exercises.sql` executed successfully
- [ ] 250 exercises in database (verified with SELECT COUNT(*))
- [ ] Your password added to `appsettings.Development.json`
- [ ] API starts without errors
- [ ] Can access API: http://localhost:5108/api/exercises/musclegroups
- [ ] Frontend serves without errors
- [ ] Website loads at http://localhost:8000
- [ ] Can click muscles and see exercises
- [ ] Exercises show 8-10 per subcategory

---

**Welcome to the team! Let's build something awesome! 💪**

Questions? Ask in the group chat!

