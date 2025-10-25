# Getting Started Guide

This guide will help you get the Muscle Exercise Guide website up and running on your local machine.

## Quick Start Checklist

- [ ] SQL Server installed and running
- [ ] .NET 8 SDK installed
- [ ] Database created and schema applied
- [ ] API running
- [ ] Frontend opened in browser

## Step-by-Step Setup

### 1. Install Prerequisites

Make sure you have these installed:

1. **.NET 8 SDK**: Download from [dotnet.microsoft.com](https://dotnet.microsoft.com/download)
2. **SQL Server**: 
   - LocalDB (included with Visual Studio)
   - SQL Server Express (free)
   - Or full SQL Server
3. **SQL Server Management Studio (SSMS)** or **Azure Data Studio** for database management

### 2. Set Up the Database

#### Option A: Using SQL Server Management Studio (SSMS)

1. Open SSMS and connect to your SQL Server instance
2. Right-click on "Databases" and select "New Database..."
3. Name it `MuscleExerciseDB` and click OK
4. Open the file `api/database/schema.sql`
5. Click "Execute" to create tables and insert seed data

#### Option B: Using Command Line

```bash
# Connect to SQL Server and create database
sqlcmd -S localhost -E -Q "CREATE DATABASE MuscleExerciseDB"

# Run the schema script
sqlcmd -S localhost -E -d MuscleExerciseDB -i api/database/schema.sql
```

### 3. Configure the API

1. Open `api/MuscleWebApi/appsettings.json`

2. Update the connection string if needed:
   ```json
   {
     "ConnectionStrings": {
       "DefaultConnection": "Server=localhost;Database=MuscleExerciseDB;Trusted_Connection=true;TrustServerCertificate=true;"
     }
   }
   ```

   Common connection string variations:
   - **LocalDB**: `Server=(localdb)\\mssqllocaldb;Database=MuscleExerciseDB;Trusted_Connection=true;`
   - **SQL Express**: `Server=localhost\\SQLEXPRESS;Database=MuscleExerciseDB;Trusted_Connection=true;TrustServerCertificate=true;`
   - **With credentials**: `Server=localhost;Database=MuscleExerciseDB;User Id=your_username;Password=your_password;TrustServerCertificate=true;`

### 4. Run the API

1. Open a terminal/command prompt

2. Navigate to the API directory:
   ```bash
   cd api/MuscleWebApi
   ```

3. Restore NuGet packages:
   ```bash
   dotnet restore
   ```

4. Run the API:
   ```bash
   dotnet run
   ```

5. You should see output like:
   ```
   info: Microsoft.Hosting.Lifetime[14]
         Now listening on: https://localhost:7143
   info: Microsoft.Hosting.Lifetime[14]
         Now listening on: http://localhost:5108
   ```

6. **Leave this terminal window open** - the API needs to keep running

### 5. Test the API (Optional)

Open a browser and test these URLs:

- `https://localhost:7143/api/exercises/musclegroups` - Should return JSON with muscle groups
- `https://localhost:7143/api/exercises/1` - Should return exercises for Chest

If you get a certificate warning, it's safe to proceed (it's your local development certificate).

### 6. Run the Frontend

You have two options:

#### Option A: Simple Method (Double-click)
1. Navigate to the `frontend` folder
2. Double-click `index.html` to open it in your browser

**Note**: Some browsers may block the API calls due to CORS when opening files directly. If this happens, use Option B.

#### Option B: Local Web Server (Recommended)

**Using Python** (if installed):
```bash
cd frontend
python -m http.server 8000
```

**Using Node.js** (if installed):
```bash
cd frontend
npx http-server -p 8000
```

**Using .NET**:
```bash
cd frontend
dotnet tool install --global dotnet-serve
dotnet serve -p 8000
```

Then open your browser to: `http://localhost:8000`

### 7. Use the Application

1. You should see the "Muscle Exercise Guide" interface with a body diagram
2. Click the "Front View" or "Back View" toggle to switch views
3. Click on any colored muscle group (chest, shoulders, abs, etc.)
4. Scroll down to see exercises organized by subcategories

## Troubleshooting

### Issue: "Unable to connect to SQL Server"

**Solution**:
- Make sure SQL Server is running
- Check Windows Services for "SQL Server (MSSQLSERVER)" or "SQL Server (SQLEXPRESS)"
- Verify your connection string in `appsettings.json`
- Test connection in SSMS or Azure Data Studio

### Issue: "Failed to load muscle groups"

**Solution**:
- Ensure the API is running (check terminal output)
- Verify the API URL in `frontend/js/api.js` matches the port shown in the API terminal
- Open browser developer console (F12) to see detailed error messages
- Check if CORS is enabled in the API (already configured in Program.cs)

### Issue: "Certificate error" or "NET::ERR_CERT_AUTHORITY_INVALID"

**Solution**:
- This is normal for local development HTTPS
- Click "Advanced" and "Proceed" (safe for localhost)
- Or use HTTP instead: change API URL to `http://localhost:5108/api`

### Issue: SVG diagrams not showing

**Solution**:
- Make sure you're using a web server (not just opening the HTML file)
- Check that `frontend/svg/body-front.svg` and `body-back.svg` exist
- Open browser console (F12) to check for file loading errors

### Issue: No exercises showing after clicking muscle

**Solution**:
- Check if the database schema script was executed successfully
- Verify tables exist: Open SSMS and expand `MuscleExerciseDB > Tables`
- Should see: `MuscleGroups`, `MuscleSubcategories`, `Exercises`
- Re-run the schema.sql script if tables are missing or empty

### Issue: Port already in use

**Solution**:
- The API will try to use port 7143 and 5108
- If these are taken, edit `api/MuscleWebApi/Properties/launchSettings.json`
- Change the port numbers in `applicationUrl`
- Update the port in `frontend/js/api.js` to match

## Development Tips

### Using Visual Studio or VS Code

1. Open the `MuscleWebApi.sln` or `MuscleWebApi.csproj` in your IDE
2. Press F5 to run with debugging
3. Set breakpoints in controllers to debug API calls

### Viewing API Documentation

When the API is running, you can view the OpenAPI documentation:
- Navigate to: `https://localhost:7143/swagger` (if Swagger is enabled)

### Database Changes

If you need to add more exercises or muscle groups:
1. Add INSERT statements to `schema.sql`
2. Re-run the script, or
3. Insert directly through SSMS

### Frontend Changes

- HTML structure: Edit `frontend/index.html`
- Styling: Edit `frontend/css/custom.css`
- JavaScript logic: Edit `frontend/js/app.js`
- API calls: Edit `frontend/js/api.js`
- SVG diagrams: Edit files in `frontend/svg/`

## Next Steps

Once everything is working:

1. **Customize the exercises**: Add your own exercises to the database
2. **Enhance the UI**: Modify the CSS to match your preferred style
3. **Add features**: Implement the future enhancements listed in README.md
4. **Deploy**: Set up hosting for production use
5. **Add to GitHub**: Commit your changes and push to your repository

## Getting Help

If you encounter issues:

1. Check the browser console (F12) for JavaScript errors
2. Check the API terminal for error messages
3. Verify all prerequisite software is installed
4. Review the connection string configuration
5. Ensure the database was created and schema was applied

## Project Structure Summary

```
group2-project/
├── frontend/           # Client-side application
│   ├── index.html     # Main page
│   ├── js/            # JavaScript files
│   ├── svg/           # Body diagrams
│   └── css/           # Stylesheets
├── api/               # Server-side application
│   ├── MuscleWebApi/  # .NET API project
│   └── database/      # SQL schema
├── README.md          # Project overview
└── GETTING_STARTED.md # This file
```

Good luck with your project! 💪

