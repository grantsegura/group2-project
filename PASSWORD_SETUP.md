# Password Setup Instructions

## ✅ Safe Setup Complete!

I've configured the project so your MySQL password is **NOT** committed to GitHub.

## How It Works

### Two Config Files:

1. **`appsettings.json`** (committed to GitHub)
   - Contains a placeholder password
   - Safe to share with your team
   - Everyone will see this

2. **`appsettings.Development.json`** (local only, NOT committed)
   - Contains YOUR real password
   - Git ignores this file
   - Never pushed to GitHub

## What You Need To Do

### Put Your Real Password Here:

Open: `api/MuscleWebApi/appsettings.Development.json`

Change line 9:
```json
"DefaultConnection": "Server=localhost;Database=MuscleExerciseDB;User=root;Password=YOUR_MYSQL_PASSWORD_HERE;"
```

Replace `YOUR_MYSQL_PASSWORD_HERE` with your actual MySQL password.

**Example:**
If your MySQL password is `mysqlpass123`:
```json
"DefaultConnection": "Server=localhost;Database=MuscleExerciseDB;User=root;Password=mysqlpass123;"
```

**Save the file!**

---

## For Your Team Members

When they clone the repo, they need to:

1. Install MySQL
2. Run the `schema-mysql.sql` script in MySQL Workbench
3. Open `appsettings.Development.json`
4. Add THEIR MySQL password to line 9
5. Save and run

Each person uses their own password locally - never shared on GitHub!

---

## Testing Your Setup

After updating your password:

```bash
cd api/MuscleWebApi
dotnet restore
dotnet run
```

If you see "Now listening on: https://localhost:7143" - **you're good!** ✅

If you get an error about authentication - **check your password in appsettings.Development.json**

---

## Summary

✅ `appsettings.json` = Public (on GitHub) with placeholder  
✅ `appsettings.Development.json` = Private (local only) with real password  
✅ `.gitignore` = Prevents Development file from being committed  

**Safe and secure!** 🔒

