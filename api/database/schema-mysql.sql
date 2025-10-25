-- MySQL Schema for Muscle Exercise Guide

-- Drop existing tables if they exist
DROP TABLE IF EXISTS Exercises;
DROP TABLE IF EXISTS MuscleSubcategories;
DROP TABLE IF EXISTS MuscleGroups;

-- Create MuscleGroups table
CREATE TABLE MuscleGroups (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    View VARCHAR(10) NOT NULL CHECK (View IN ('front', 'back'))
);

-- Create MuscleSubcategories table
CREATE TABLE MuscleSubcategories (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    MuscleGroupId INT NOT NULL,
    Name VARCHAR(100) NOT NULL,
    FOREIGN KEY (MuscleGroupId) REFERENCES MuscleGroups(Id)
);

-- Create Exercises table
CREATE TABLE Exercises (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    MuscleSubcategoryId INT NOT NULL,
    Name VARCHAR(200) NOT NULL,
    Description VARCHAR(1000),
    FOREIGN KEY (MuscleSubcategoryId) REFERENCES MuscleSubcategories(Id)
);

-- Insert Front View Muscle Groups
INSERT INTO MuscleGroups (Name, View) VALUES ('Chest', 'front');
INSERT INTO MuscleGroups (Name, View) VALUES ('Shoulders', 'front');
INSERT INTO MuscleGroups (Name, View) VALUES ('Biceps', 'front');
INSERT INTO MuscleGroups (Name, View) VALUES ('Forearms', 'front');
INSERT INTO MuscleGroups (Name, View) VALUES ('Abs', 'front');
INSERT INTO MuscleGroups (Name, View) VALUES ('Quadriceps', 'front');
INSERT INTO MuscleGroups (Name, View) VALUES ('Calves', 'front');

-- Insert Back View Muscle Groups
INSERT INTO MuscleGroups (Name, View) VALUES ('Traps', 'back');
INSERT INTO MuscleGroups (Name, View) VALUES ('Rear Deltoids', 'back');
INSERT INTO MuscleGroups (Name, View) VALUES ('Lats', 'back');
INSERT INTO MuscleGroups (Name, View) VALUES ('Lower Back', 'back');
INSERT INTO MuscleGroups (Name, View) VALUES ('Triceps', 'back');
INSERT INTO MuscleGroups (Name, View) VALUES ('Glutes', 'back');
INSERT INTO MuscleGroups (Name, View) VALUES ('Hamstrings', 'back');

-- Insert Subcategories for Chest (Id: 1)
INSERT INTO MuscleSubcategories (MuscleGroupId, Name) VALUES (1, 'Upper Chest');
INSERT INTO MuscleSubcategories (MuscleGroupId, Name) VALUES (1, 'Middle Chest');
INSERT INTO MuscleSubcategories (MuscleGroupId, Name) VALUES (1, 'Lower Chest');

-- Insert Subcategories for Shoulders (Id: 2)
INSERT INTO MuscleSubcategories (MuscleGroupId, Name) VALUES (2, 'Front Deltoids');
INSERT INTO MuscleSubcategories (MuscleGroupId, Name) VALUES (2, 'Side Deltoids');

-- Insert Subcategories for Biceps (Id: 3)
INSERT INTO MuscleSubcategories (MuscleGroupId, Name) VALUES (3, 'Biceps');

-- Insert Subcategories for Forearms (Id: 4)
INSERT INTO MuscleSubcategories (MuscleGroupId, Name) VALUES (4, 'Forearms');

-- Insert Subcategories for Abs (Id: 5)
INSERT INTO MuscleSubcategories (MuscleGroupId, Name) VALUES (5, 'Upper Abs');
INSERT INTO MuscleSubcategories (MuscleGroupId, Name) VALUES (5, 'Lower Abs');

-- Insert Subcategories for Quadriceps (Id: 6)
INSERT INTO MuscleSubcategories (MuscleGroupId, Name) VALUES (6, 'Outer Quads');
INSERT INTO MuscleSubcategories (MuscleGroupId, Name) VALUES (6, 'Inner Quads');

-- Insert Subcategories for Calves (Id: 7)
INSERT INTO MuscleSubcategories (MuscleGroupId, Name) VALUES (7, 'Calves');

-- Insert Subcategories for Traps (Id: 8)
INSERT INTO MuscleSubcategories (MuscleGroupId, Name) VALUES (8, 'Upper Traps');
INSERT INTO MuscleSubcategories (MuscleGroupId, Name) VALUES (8, 'Mid Traps');
INSERT INTO MuscleSubcategories (MuscleGroupId, Name) VALUES (8, 'Lower Traps');

-- Insert Subcategories for Rear Deltoids (Id: 9)
INSERT INTO MuscleSubcategories (MuscleGroupId, Name) VALUES (9, 'Rear Deltoids');

-- Insert Subcategories for Lats (Id: 10)
INSERT INTO MuscleSubcategories (MuscleGroupId, Name) VALUES (10, 'Upper Lats');
INSERT INTO MuscleSubcategories (MuscleGroupId, Name) VALUES (10, 'Lower Lats');

-- Insert Subcategories for Lower Back (Id: 11)
INSERT INTO MuscleSubcategories (MuscleGroupId, Name) VALUES (11, 'Lower Back');

-- Insert Subcategories for Triceps (Id: 12)
INSERT INTO MuscleSubcategories (MuscleGroupId, Name) VALUES (12, 'Long Head');
INSERT INTO MuscleSubcategories (MuscleGroupId, Name) VALUES (12, 'Lateral/Medial Head');

-- Insert Subcategories for Glutes (Id: 13)
INSERT INTO MuscleSubcategories (MuscleGroupId, Name) VALUES (13, 'Upper Glutes');
INSERT INTO MuscleSubcategories (MuscleGroupId, Name) VALUES (13, 'Lower Glutes');

-- Insert Subcategories for Hamstrings (Id: 14)
INSERT INTO MuscleSubcategories (MuscleGroupId, Name) VALUES (14, 'Upper Hamstrings');
INSERT INTO MuscleSubcategories (MuscleGroupId, Name) VALUES (14, 'Lower Hamstrings');

-- Insert Sample Exercises for Chest - Upper (Subcategory Id: 1)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (1, 'Incline Barbell Press', 'Barbell press on an incline bench');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (1, 'Incline Dumbbell Press', 'Dumbbell press on an incline bench');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (1, 'Incline Dumbbell Flyes', 'Flyes performed on an incline bench');

-- Insert Sample Exercises for Chest - Middle (Subcategory Id: 2)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (2, 'Flat Barbell Bench Press', 'Standard barbell bench press');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (2, 'Flat Dumbbell Press', 'Dumbbell press on flat bench');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (2, 'Cable Crossovers', 'Cable flyes at mid-level');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (2, 'Push-Ups', 'Standard push-up exercise');

-- Insert Sample Exercises for Chest - Lower (Subcategory Id: 3)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (3, 'Decline Barbell Press', 'Barbell press on decline bench');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (3, 'Decline Dumbbell Press', 'Dumbbell press on decline bench');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (3, 'Dips', 'Chest-focused dips');

-- Insert Sample Exercises for Shoulders - Front Deltoids (Subcategory Id: 4)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (4, 'Front Dumbbell Raise', 'Raise dumbbells to front');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (4, 'Barbell Front Raise', 'Raise barbell to front');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (4, 'Arnold Press', 'Rotating dumbbell shoulder press');

-- Insert Sample Exercises for Shoulders - Side Deltoids (Subcategory Id: 5)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (5, 'Lateral Raises', 'Raise dumbbells to the side');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (5, 'Cable Lateral Raises', 'Lateral raises using cables');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (5, 'Overhead Press', 'Barbell or dumbbell overhead press');

-- Insert Sample Exercises for Biceps (Subcategory Id: 6)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (6, 'Barbell Curl', 'Standard barbell bicep curl');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (6, 'Dumbbell Curl', 'Alternating or simultaneous dumbbell curls');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (6, 'Hammer Curls', 'Neutral grip dumbbell curls');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (6, 'Preacher Curls', 'Curls on preacher bench');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (6, 'Cable Curls', 'Bicep curls using cable machine');

-- Insert Sample Exercises for Forearms (Subcategory Id: 7)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (7, 'Wrist Curls', 'Wrist flexion with dumbbell or barbell');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (7, 'Reverse Wrist Curls', 'Wrist extension exercise');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (7, 'Farmers Walk', 'Walking while holding heavy weights');

-- Insert Sample Exercises for Abs - Upper (Subcategory Id: 8)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (8, 'Crunches', 'Standard abdominal crunches');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (8, 'Cable Crunches', 'Crunches using cable machine');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (8, 'Decline Sit-Ups', 'Sit-ups on decline bench');

-- Insert Sample Exercises for Abs - Lower (Subcategory Id: 9)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (9, 'Leg Raises', 'Raise legs while lying or hanging');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (9, 'Reverse Crunches', 'Bring knees to chest');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (9, 'Mountain Climbers', 'Dynamic core exercise');

-- Insert Sample Exercises for Quadriceps - Outer (Subcategory Id: 10)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (10, 'Squats', 'Barbell back squats');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (10, 'Front Squats', 'Squats with bar in front position');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (10, 'Leg Press', 'Machine leg press');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (10, 'Lunges', 'Walking or stationary lunges');

-- Insert Sample Exercises for Quadriceps - Inner (Subcategory Id: 11)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (11, 'Leg Extensions', 'Isolated quad extension machine');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (11, 'Goblet Squats', 'Squats holding dumbbell at chest');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (11, 'Bulgarian Split Squats', 'Single-leg squat variation');

-- Insert Sample Exercises for Calves (Subcategory Id: 12)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (12, 'Standing Calf Raises', 'Calf raises on machine or platform');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (12, 'Seated Calf Raises', 'Seated calf raise machine');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (12, 'Jump Rope', 'Jumping rope for calf development');

-- Insert Sample Exercises for Traps - Upper (Subcategory Id: 13)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (13, 'Barbell Shrugs', 'Shoulder shrugs with barbell');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (13, 'Dumbbell Shrugs', 'Shoulder shrugs with dumbbells');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (13, 'Upright Rows', 'Pull bar up to chin level');

-- Insert Sample Exercises for Traps - Mid (Subcategory Id: 14)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (14, 'Face Pulls', 'Cable face pulls');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (14, 'Bent Over Rows', 'Barbell rows');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (14, 'T-Bar Rows', 'Rows using T-bar');

-- Insert Sample Exercises for Traps - Lower (Subcategory Id: 15)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (15, 'Overhead Shrugs', 'Shrugs while holding weight overhead');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (15, 'Y-Raises', 'Raises forming Y-shape with arms');

-- Insert Sample Exercises for Rear Deltoids (Subcategory Id: 16)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (16, 'Rear Delt Flyes', 'Dumbbell flyes bent over');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (16, 'Face Pulls', 'Cable pulls to face');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (16, 'Reverse Pec Deck', 'Machine reverse flyes');

-- Insert Sample Exercises for Lats - Upper (Subcategory Id: 17)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (17, 'Pull-Ups', 'Standard pull-up exercise');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (17, 'Lat Pulldowns', 'Cable lat pulldown machine');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (17, 'Close-Grip Pulldowns', 'Narrow grip lat pulldowns');

-- Insert Sample Exercises for Lats - Lower (Subcategory Id: 18)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (18, 'Barbell Rows', 'Bent over barbell rows');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (18, 'Dumbbell Rows', 'Single-arm dumbbell rows');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (18, 'Seated Cable Rows', 'Cable rowing machine');

-- Insert Sample Exercises for Lower Back (Subcategory Id: 19)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (19, 'Deadlifts', 'Barbell deadlift exercise');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (19, 'Romanian Deadlifts', 'Stiff-leg deadlift variation');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (19, 'Back Extensions', 'Hyperextension bench exercise');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (19, 'Good Mornings', 'Hip hinge with bar on shoulders');

-- Insert Sample Exercises for Triceps - Long Head (Subcategory Id: 20)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (20, 'Overhead Tricep Extension', 'Dumbbell extension overhead');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (20, 'Skull Crushers', 'Lying tricep extension');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (20, 'Close-Grip Bench Press', 'Bench press with narrow grip');

-- Insert Sample Exercises for Triceps - Lateral/Medial Head (Subcategory Id: 21)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (21, 'Tricep Pushdowns', 'Cable pushdown exercise');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (21, 'Diamond Push-Ups', 'Push-ups with hands together');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (21, 'Tricep Kickbacks', 'Dumbbell kickback exercise');

-- Insert Sample Exercises for Glutes - Upper (Subcategory Id: 22)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (22, 'Hip Thrusts', 'Barbell hip thrust exercise');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (22, 'Glute Bridges', 'Bridge exercise for glutes');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (22, 'Cable Kickbacks', 'Cable glute kickbacks');

-- Insert Sample Exercises for Glutes - Lower (Subcategory Id: 23)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (23, 'Squats', 'Barbell back squats');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (23, 'Lunges', 'Walking or stationary lunges');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (23, 'Step-Ups', 'Stepping up on platform');

-- Insert Sample Exercises for Hamstrings - Upper (Subcategory Id: 24)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (24, 'Romanian Deadlifts', 'Stiff-leg deadlift variation');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (24, 'Good Mornings', 'Hip hinge with bar on shoulders');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (24, 'Nordic Curls', 'Bodyweight hamstring curl');

-- Insert Sample Exercises for Hamstrings - Lower (Subcategory Id: 25)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (25, 'Leg Curls', 'Hamstring curl machine');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (25, 'Single-Leg Deadlifts', 'Romanian deadlift on one leg');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (25, 'Swiss Ball Leg Curls', 'Hamstring curls on stability ball');

