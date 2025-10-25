# FitMap - Interactive Muscle Exercise Guide 💪

An interactive web application for exploring weightlifting exercises organized by muscle groups. Click on different muscle groups in the anatomical diagrams to see exercises targeting those areas.

## 🚀 Quick Start for Team Members

**New to the project?** Start here: **[TEAM_SETUP_GUIDE.md](TEAM_SETUP_GUIDE.md)**

This comprehensive guide walks you through everything from installing prerequisites to running the project.

---

## ⚠️ Important: This Project Uses MySQL

**NOT SQL Server!** Make sure you have MySQL installed before starting.

---

## Features

- **Interactive Muscle Diagrams**: Front and back view SVG diagrams with clickable muscle groups
- **12 Muscle Groups**: Organized into major muscle categories
- **250+ Exercises**: 8-10 exercises per muscle subcategory (e.g., Upper/Middle/Lower Chest)
- **Modern UI**: Purple gradient background with colorful, animated cards
- **Responsive Design**: Built with Bootstrap 5 for mobile and desktop
- **REST API Backend**: .NET 9 API with MySQL database

## Project Structure

```
group2-project/
├── frontend/
│   ├── index.html          # Main HTML file
│   ├── js/
│   │   ├── app.js          # Main application logic
│   │   └── api.js          # API service
│   ├── svg/
│   │   ├── body-front.svg  # Front view diagram
│   │   └── body-back.svg   # Back view diagram
│   └── css/
│       └── custom.css      # Custom styles
└── api/
    ├── MuscleWebApi/       # .NET Web API project
    │   ├── Controllers/
    │   ├── Models/
    │   ├── Data/
    │   └── appsettings.json
    └── database/
        └── schema.sql      # Database schema and seed data
```

## Setup Instructions

### Prerequisites

- .NET 8.0 SDK
- SQL Server (LocalDB, Express, or full version)
- A web browser
- Optional: Visual Studio Code or Visual Studio

### Database Setup

1. **Create the database in SQL Server**:
   - Open SQL Server Management Studio (SSMS) or Azure Data Studio
   - Connect to your SQL Server instance
   - Create a new database named `MuscleExerciseDB`

2. **Run the schema script**:
   ```sql
   -- In SSMS or Azure Data Studio, open the file:
   -- api/database/schema.sql
   -- Execute the script against the MuscleExerciseDB database
   ```

3. **Update connection string** (if needed):
   - Edit `api/MuscleWebApi/appsettings.json`
   - Modify the `DefaultConnection` string to match your SQL Server setup:
   ```json
   "ConnectionStrings": {
     "DefaultConnection": "Server=localhost;Database=MuscleExerciseDB;Trusted_Connection=true;TrustServerCertificate=true;"
   }
   ```

### Backend Setup

1. **Navigate to the API directory**:
   ```bash
   cd api/MuscleWebApi
   ```

2. **Restore dependencies**:
   ```bash
   dotnet restore
   ```

3. **Run the API**:
   ```bash
   dotnet run
   ```

4. **Note the API URL**:
   - The API will run on `https://localhost:7143` or `http://localhost:5108`
   - Check the console output to confirm the exact port

### Frontend Setup

1. **Update API URL** (if different from default):
   - Edit `frontend/js/api.js`
   - Update the `API_BASE_URL` constant to match your API's URL:
   ```javascript
   const API_BASE_URL = 'https://localhost:7143/api';
   ```

2. **Open the frontend**:
   - Open `frontend/index.html` in your web browser
   - Or use a local development server:
   ```bash
   # Using Python
   cd frontend
   python -m http.server 8000
   # Then open http://localhost:8000
   
   # Or using Node.js http-server
   npx http-server frontend -p 8000
   ```

## Usage

1. **Select View**: Toggle between "Front View" and "Back View" to see different muscle groups
2. **Click Muscle**: Click on any colored muscle group in the diagram
3. **View Exercises**: Scroll down to see exercises organized by subcategories
4. **Explore**: Try different muscle groups to see all available exercises

## Muscle Groups Included

### Front View
- Chest (Upper, Middle, Lower)
- Shoulders (Front, Side)
- Biceps
- Forearms
- Abs (Upper, Lower)
- Quadriceps (Outer, Inner)
- Calves

### Back View
- Traps (Upper, Mid, Lower)
- Rear Deltoids
- Lats (Upper, Lower)
- Lower Back
- Triceps (Long Head, Lateral/Medial)
- Glutes (Upper, Lower)
- Hamstrings (Upper, Lower)

## API Endpoints

- `GET /api/exercises/musclegroups` - Get all muscle groups
- `GET /api/exercises/{id}` - Get exercises for a specific muscle group

## Technologies Used

### Frontend
- HTML5
- CSS3
- Vanilla JavaScript (ES6+)
- Bootstrap 5.3.0
- SVG graphics

### Backend
- .NET 8.0
- ASP.NET Core Web API
- C#
- Microsoft.Data.SqlClient

### Database
- SQL Server
- Direct SQL queries (no ORM)

## Future Enhancements

- Add exercise images/videos
- Include equipment requirements
- Add sets/reps recommendations
- Implement workout plan builder
- Add user accounts and favorites
- Include difficulty levels

## Troubleshooting

### API Not Connecting
- Ensure the .NET API is running
- Check the port number in `api.js` matches the running API
- Verify CORS is enabled in the API

### Database Connection Issues
- Verify SQL Server is running
- Check connection string in `appsettings.json`
- Ensure database and tables exist
- Run the schema.sql script if tables are missing

### SVG Not Loading
- Ensure you're using a web server (not just opening the HTML file directly)
- Check browser console for errors
- Verify SVG files exist in the `frontend/svg/` directory

## License

This project is for educational purposes as part of MIS321 coursework.

