# MySQL Setup Guide

This project has been configured to work with **MySQL** instead of SQL Server.

## MySQL Workbench Setup

### Step 1: Create the Database

1. Open **MySQL Workbench**
2. Connect to your MySQL server (usually localhost)
3. In the query tab, type:
   ```sql
   CREATE DATABASE MuscleExerciseDB;
   ```
4. Click the **lightning bolt ⚡** icon to execute
5. You should see "1 row(s) affected"

### Step 2: Select the Database

```sql
USE MuscleExerciseDB;
```
Click the lightning bolt ⚡ again

### Step 3: Run the Schema Script

1. Click **File** → **Open SQL Script** (Ctrl+Shift+O)
2. Navigate to: `api/database/schema-mysql.sql`
3. Click **Open**
4. Click the **lightning bolt ⚡** icon to execute the entire script
5. You should see output showing tables created and data inserted

### Step 4: Verify the Setup

1. In the left sidebar under **SCHEMAS**, click the **refresh icon** 🔄
2. Expand **MuscleExerciseDB** → **Tables**
3. You should see:
   - `MuscleGroups`
   - `MuscleSubcategories`
   - `Exercises`

Run this verification query:
```sql
SELECT 
    (SELECT COUNT(*) FROM MuscleGroups) as MuscleGroups,
    (SELECT COUNT(*) FROM MuscleSubcategories) as Subcategories,
    (SELECT COUNT(*) FROM Exercises) as Exercises;
```

**Expected results**: 14 muscle groups, 25 subcategories, 100+ exercises

---

## Configure the API

### Update the Connection String

1. Open `api/MuscleWebApi/appsettings.json`
2. Update the connection string with your MySQL credentials:

```json
{
  "ConnectionStrings": {
    "DefaultConnection": "Server=localhost;Database=MuscleExerciseDB;User=root;Password=YOUR_MYSQL_PASSWORD;"
  }
}
```

**Replace:**
- `YOUR_MYSQL_PASSWORD` with your actual MySQL root password
- If you use a different user, change `root` to your username
- If MySQL runs on a different port, add `;Port=3307` (or your port number)

### Common Connection String Variations:

**Default (root user)**:
```
Server=localhost;Database=MuscleExerciseDB;User=root;Password=your_password;
```

**Custom user**:
```
Server=localhost;Database=MuscleExerciseDB;User=myuser;Password=mypassword;
```

**Custom port** (if not using default 3306):
```
Server=localhost;Port=3307;Database=MuscleExerciseDB;User=root;Password=your_password;
```

**With SSL** (more secure):
```
Server=localhost;Database=MuscleExerciseDB;User=root;Password=your_password;SslMode=Required;
```

---

## Run the API

1. Open terminal and navigate to the API directory:
   ```bash
   cd api/MuscleWebApi
   ```

2. Restore packages:
   ```bash
   dotnet restore
   ```

3. Run the API:
   ```bash
   dotnet run
   ```

4. You should see:
   ```
   info: Now listening on: https://localhost:7143
   info: Now listening on: http://localhost:5108
   ```

---

## Test the API

Open your browser and test these URLs:

1. **Get all muscle groups**:
   ```
   https://localhost:7143/api/exercises/musclegroups
   ```
   Should return JSON with 14 muscle groups

2. **Get exercises for Chest (ID: 1)**:
   ```
   https://localhost:7143/api/exercises/1
   ```
   Should return exercises organized by subcategories

---

## Troubleshooting

### "Access denied for user 'root'@'localhost'"

**Problem**: Wrong password in connection string

**Solution**: 
- Check your MySQL password
- Update the password in `appsettings.json`
- If you don't know your password, you can reset it in MySQL Workbench

### "Unable to connect to any of the specified MySQL hosts"

**Problem**: MySQL server not running or wrong server address

**Solution**:
- Check if MySQL is running (look for MySQL in your system services)
- Verify the server address in the connection string
- Try `127.0.0.1` instead of `localhost`

### "Unknown database 'MuscleExerciseDB'"

**Problem**: Database wasn't created

**Solution**:
- Go back to MySQL Workbench
- Run: `CREATE DATABASE MuscleExerciseDB;`
- Then run the schema script

### Authentication plugin 'caching_sha2_password' cannot be loaded

**Problem**: MySQL 8.0+ uses a newer authentication method

**Solution**: Update connection string to:
```
Server=localhost;Database=MuscleExerciseDB;User=root;Password=your_password;AllowPublicKeyRetrieval=true;
```

---

## MySQL Workbench Quick Reference

### Important Buttons:
- **Lightning bolt ⚡**: Execute the current query
- **Lightning bolt with cursor ⚡|**: Execute query at cursor
- **Refresh 🔄**: Refresh the schema tree
- **Save 💾**: Save your SQL script

### Keyboard Shortcuts:
- **Ctrl+Enter**: Execute current query
- **Ctrl+Shift+Enter**: Execute all queries
- **Ctrl+Shift+O**: Open SQL script
- **Ctrl+S**: Save script

---

## Next Steps

Once your database is set up and API is running:

1. ✅ Database created and populated
2. ✅ API running on `https://localhost:7143`
3. ➡️ **Next**: Open the frontend
   ```bash
   cd frontend
   python -m http.server 8000
   ```
4. ➡️ Open browser to: `http://localhost:8000`

---

## Differences from SQL Server Version

If you're used to SQL Server:

| SQL Server | MySQL |
|------------|-------|
| `IDENTITY(1,1)` | `AUTO_INCREMENT` |
| `NVARCHAR` | `VARCHAR` |
| Trusted_Connection | User + Password |
| SSMS | MySQL Workbench |
| Port 1433 | Port 3306 |

---

## Sample MySQL Queries

### View all muscle groups:
```sql
SELECT * FROM MuscleGroups;
```

### View exercises for Chest:
```sql
SELECT 
    mg.Name as MuscleGroup,
    ms.Name as Subcategory,
    e.Name as Exercise,
    e.Description
FROM MuscleGroups mg
JOIN MuscleSubcategories ms ON mg.Id = ms.MuscleGroupId
JOIN Exercises e ON ms.Id = e.MuscleSubcategoryId
WHERE mg.Name = 'Chest'
ORDER BY ms.Id, e.Name;
```

### Add a new exercise:
```sql
-- Find the subcategory ID first
SELECT * FROM MuscleSubcategories WHERE Name = 'Upper Chest';

-- Then insert (assuming subcategory ID is 1)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description)
VALUES (1, 'Cable Incline Flyes', 'Incline flyes using cable machine');
```

---

**Database**: MySQL ✅  
**API**: .NET with MySqlConnector ✅  
**Frontend**: Vanilla JavaScript ✅  

Ready to go! 🚀

