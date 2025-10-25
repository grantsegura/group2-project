# Quick Reference Guide

## 🚀 Quick Start (3 Steps)

### 1. Database Setup
```sql
-- In SQL Server Management Studio:
CREATE DATABASE MuscleExerciseDB;
GO

-- Then run: api/database/schema.sql
```

### 2. Start API
```bash
cd api/MuscleWebApi
dotnet run
```
✅ API running at: `https://localhost:7143`

### 3. Open Frontend
```bash
cd frontend
python -m http.server 8000
```
✅ Open browser to: `http://localhost:8000`

---

## 📁 Important Files

| File | Purpose |
|------|---------|
| `api/database/schema.sql` | Database setup |
| `api/MuscleWebApi/appsettings.json` | Connection string |
| `frontend/index.html` | Main page |
| `frontend/js/api.js` | API configuration |

---

## 🔧 Configuration

### Change API Port
Edit: `api/MuscleWebApi/Properties/launchSettings.json`
```json
"applicationUrl": "https://localhost:YOUR_PORT"
```

### Change Database Server
Edit: `api/MuscleWebApi/appsettings.json`
```json
"ConnectionStrings": {
  "DefaultConnection": "Server=YOUR_SERVER;Database=MuscleExerciseDB;..."
}
```

### Update Frontend API URL
Edit: `frontend/js/api.js`
```javascript
const API_BASE_URL = 'https://localhost:YOUR_PORT/api';
```

---

## 🎯 Testing Checklist

- [ ] SQL Server running
- [ ] Database `MuscleExerciseDB` exists
- [ ] Tables created (MuscleGroups, MuscleSubcategories, Exercises)
- [ ] API starts without errors
- [ ] Can access: `https://localhost:7143/api/exercises/musclegroups`
- [ ] Frontend loads in browser
- [ ] Can toggle Front/Back view
- [ ] Clicking muscle shows exercises
- [ ] Exercises organized by subcategories

---

## 🎨 Muscle Groups & IDs

### Front View
| ID | Muscle | Subcategories |
|----|--------|---------------|
| 1  | Chest | Upper, Middle, Lower |
| 2  | Shoulders | Front, Side |
| 3  | Biceps | - |
| 4  | Forearms | - |
| 5  | Abs | Upper, Lower |
| 6  | Quadriceps | Outer, Inner |
| 7  | Calves | - |

### Back View
| ID | Muscle | Subcategories |
|----|--------|---------------|
| 8  | Traps | Upper, Mid, Lower |
| 9  | Rear Deltoids | - |
| 10 | Lats | Upper, Lower |
| 11 | Lower Back | - |
| 12 | Triceps | Long Head, Lateral/Medial |
| 13 | Glutes | Upper, Lower |
| 14 | Hamstrings | Upper, Lower |

---

## 🐛 Common Issues

### "Cannot connect to database"
```bash
# Check SQL Server is running
# Windows: Services → SQL Server (MSSQLSERVER)
# Or verify connection string in appsettings.json
```

### "API not found" / CORS error
```bash
# Make sure API is running
# Check port in frontend/js/api.js matches API port
# Look for "Now listening on:" in API terminal
```

### SVG not showing
```bash
# Use a web server, don't just open HTML file
# Try: python -m http.server 8000
```

---

## 📊 Database Schema

```
MuscleGroups
├── Id (PK)
├── Name
└── View (front/back)

MuscleSubcategories
├── Id (PK)
├── MuscleGroupId (FK)
└── Name

Exercises
├── Id (PK)
├── MuscleSubcategoryId (FK)
├── Name
└── Description
```

---

## 🔗 API Endpoints

```
GET /api/exercises/musclegroups
→ Returns: List of all muscle groups

GET /api/exercises/{muscleGroupId}
→ Returns: Subcategories with exercises for that muscle
```

**Example Response**:
```json
[
  {
    "id": 1,
    "muscleGroupId": 1,
    "name": "Upper Chest",
    "exercises": [
      {
        "id": 1,
        "name": "Incline Barbell Press",
        "description": "Barbell press on an incline bench"
      }
    ]
  }
]
```

---

## 💻 Tech Stack Summary

| Layer | Technology |
|-------|------------|
| Frontend | HTML, CSS, JavaScript, Bootstrap 5, SVG |
| Backend | .NET 9, ASP.NET Core Web API, C# |
| Database | SQL Server, Direct SQL queries |
| Tools | Visual Studio Code, SSMS, Git |

---

## 📝 Adding New Exercises

```sql
-- 1. Find the MuscleSubcategoryId
SELECT * FROM MuscleSubcategories WHERE Name = 'Upper Chest';

-- 2. Insert new exercise
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description)
VALUES (1, 'Cable Incline Press', 'Incline press using cables');
```

---

## 🎓 Project Files Overview

```
📦 group2-project
┣ 📂 frontend          → Client-side application
┃ ┣ 📂 js             → JavaScript logic
┃ ┣ 📂 svg            → Body diagrams
┃ ┣ 📂 css            → Styles
┃ ┗ 📄 index.html     → Main page
┣ 📂 api              → Server-side application
┃ ┣ 📂 MuscleWebApi   → .NET project
┃ ┗ 📂 database       → SQL scripts
┣ 📄 README.md        → Full documentation
┣ 📄 GETTING_STARTED.md → Setup guide
┣ 📄 PROJECT_SUMMARY.md → Implementation details
┗ 📄 QUICK_REFERENCE.md → This file
```

---

## 🚨 Remember

1. **API must be running** before opening frontend
2. **Database must exist** before starting API
3. **Use web server** for frontend (not direct file open)
4. **Check ports** if getting connection errors
5. **Browser console** (F12) shows helpful error messages

---

## ✅ Success Indicators

You'll know it's working when:
- ✅ API terminal shows "Now listening on..."
- ✅ Browser shows body diagram with colored muscles
- ✅ Muscles have hover effect
- ✅ Clicking muscle shows exercises below
- ✅ Exercises grouped by subcategories in cards
- ✅ Can switch between front and back views

---

## 🆘 Need Help?

1. Check **GETTING_STARTED.md** for detailed setup
2. Check **README.md** for project overview
3. Open browser console (F12) for error details
4. Check API terminal for server errors
5. Verify all 3 checklist items above are working

---

**Status**: Ready to use  
**Last Updated**: October 24, 2025

💪 Happy coding!

