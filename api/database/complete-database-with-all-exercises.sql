-- Complete MySQL Database Script with 8-10 Exercises Per Subcategory
-- This script will clear and rebuild everything

USE MuscleExerciseDB;

-- Drop and recreate all tables
DROP TABLE IF EXISTS Exercises;
DROP TABLE IF EXISTS MuscleSubcategories;
DROP TABLE IF EXISTS MuscleGroups;

-- Create tables
CREATE TABLE MuscleGroups (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    View VARCHAR(10) NOT NULL CHECK (View IN ('front', 'back'))
);

CREATE TABLE MuscleSubcategories (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    MuscleGroupId INT NOT NULL,
    Name VARCHAR(100) NOT NULL,
    FOREIGN KEY (MuscleGroupId) REFERENCES MuscleGroups(Id)
);

CREATE TABLE Exercises (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    MuscleSubcategoryId INT NOT NULL,
    Name VARCHAR(200) NOT NULL,
    Description VARCHAR(1000),
    FOREIGN KEY (MuscleSubcategoryId) REFERENCES MuscleSubcategories(Id)
);

-- Insert Muscle Groups
INSERT INTO MuscleGroups (Name, View) VALUES 
('Chest', 'front'),
('Shoulders', 'front'),
('Biceps', 'front'),
('Forearms', 'front'),
('Abs', 'front'),
('Quadriceps', 'front'),
('Calves', 'front'),
('Traps', 'back'),
('Rear Deltoids', 'back'),
('Lats', 'back'),
('Lower Back', 'back'),
('Triceps', 'back'),
('Glutes', 'back'),
('Hamstrings', 'back');

-- Insert Subcategories
INSERT INTO MuscleSubcategories (MuscleGroupId, Name) VALUES 
(1, 'Upper Chest'), (1, 'Middle Chest'), (1, 'Lower Chest'),
(2, 'Front Deltoids'), (2, 'Side Deltoids'),
(3, 'Biceps'),
(4, 'Forearms'),
(5, 'Upper Abs'), (5, 'Lower Abs'),
(6, 'Outer Quads'), (6, 'Inner Quads'),
(7, 'Calves'),
(8, 'Upper Traps'), (8, 'Mid Traps'), (8, 'Lower Traps'),
(9, 'Rear Deltoids'),
(10, 'Upper Lats'), (10, 'Lower Lats'),
(11, 'Lower Back'),
(12, 'Long Head'), (12, 'Lateral/Medial Head'),
(13, 'Upper Glutes'), (13, 'Lower Glutes'),
(14, 'Upper Hamstrings'), (14, 'Lower Hamstrings');

-- CHEST - Upper (10 exercises)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES 
(1, 'Incline Barbell Press', 'Barbell press on an incline bench'),
(1, 'Incline Dumbbell Press', 'Dumbbell press on an incline bench'),
(1, 'Incline Dumbbell Flyes', 'Flyes performed on an incline bench'),
(1, 'Incline Cable Flyes', 'Cable flyes on incline bench'),
(1, 'Incline Smith Machine Press', 'Smith machine press at incline angle'),
(1, 'Low to High Cable Flyes', 'Cable crossover from low to high position'),
(1, 'Incline Push-Ups', 'Push-ups with feet elevated'),
(1, 'Landmine Press', 'Pressing barbell in landmine attachment at angle'),
(1, 'Incline Hex Press', 'Neutral grip dumbbell press on incline'),
(1, 'Incline Machine Press', 'Chest press machine at incline');

-- CHEST - Middle (10 exercises)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES 
(2, 'Flat Barbell Bench Press', 'Standard barbell bench press'),
(2, 'Flat Dumbbell Press', 'Dumbbell press on flat bench'),
(2, 'Cable Crossovers', 'Cable flyes at mid-level'),
(2, 'Push-Ups', 'Standard push-up exercise'),
(2, 'Pec Deck Machine', 'Chest fly machine'),
(2, 'Flat Dumbbell Flyes', 'Dumbbell flyes on flat bench'),
(2, 'Machine Chest Press', 'Plate-loaded or selectorized chest press'),
(2, 'Floor Press', 'Bench press performed on floor'),
(2, 'Chest Squeeze Press', 'Dumbbells pressed together during movement'),
(2, 'Wide Grip Bench Press', 'Bench press with wider hand placement');

-- CHEST - Lower (10 exercises)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES 
(3, 'Decline Barbell Press', 'Barbell press on decline bench'),
(3, 'Decline Dumbbell Press', 'Dumbbell press on decline bench'),
(3, 'Dips', 'Chest-focused dips'),
(3, 'Decline Dumbbell Flyes', 'Flyes on decline bench'),
(3, 'Decline Machine Press', 'Machine press at decline angle'),
(3, 'Weighted Dips', 'Dips with added weight'),
(3, 'High to Low Cable Flyes', 'Cable crossover from high to low'),
(3, 'Decline Push-Ups', 'Push-ups with hands elevated'),
(3, 'Decline Cable Press', 'Cable press at decline angle'),
(3, 'Decline Smith Machine Press', 'Smith machine at decline angle');

-- SHOULDERS - Front Deltoids (10 exercises)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES 
(4, 'Front Dumbbell Raise', 'Raise dumbbells to front'),
(4, 'Barbell Front Raise', 'Raise barbell to front'),
(4, 'Arnold Press', 'Rotating dumbbell shoulder press'),
(4, 'Military Press', 'Standing barbell overhead press'),
(4, 'Seated Dumbbell Press', 'Overhead dumbbell press seated'),
(4, 'Machine Shoulder Press', 'Shoulder press machine'),
(4, 'Cable Front Raise', 'Front raise using cable'),
(4, 'Plate Front Raise', 'Front raise holding weight plate'),
(4, 'Pike Push-Ups', 'Push-ups in pike position'),
(4, 'Landmine Shoulder Press', 'Press using landmine attachment');

-- SHOULDERS - Side Deltoids (10 exercises)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES 
(5, 'Lateral Raises', 'Raise dumbbells to the side'),
(5, 'Cable Lateral Raises', 'Lateral raises using cables'),
(5, 'Overhead Press', 'Barbell or dumbbell overhead press'),
(5, 'Dumbbell Shoulder Press', 'Seated or standing dumbbell press'),
(5, 'Machine Lateral Raise', 'Lateral raise machine'),
(5, 'Single Arm Lateral Raise', 'One arm at a time lateral raise'),
(5, 'Leaning Lateral Raise', 'Lateral raise while leaning'),
(5, 'Upright Rows', 'Pulling bar or dumbbells to chin'),
(5, 'Behind the Neck Press', 'Overhead press behind head'),
(5, 'W-Raise', 'Lateral movement forming W shape');

-- BICEPS (10 exercises)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES 
(6, 'Barbell Curl', 'Standard barbell bicep curl'),
(6, 'Dumbbell Curl', 'Alternating or simultaneous dumbbell curls'),
(6, 'Hammer Curls', 'Neutral grip dumbbell curls'),
(6, 'Preacher Curls', 'Curls on preacher bench'),
(6, 'Cable Curls', 'Bicep curls using cable machine'),
(6, 'Concentration Curls', 'Isolated bicep curl seated'),
(6, 'Spider Curls', 'Curls on incline bench face down'),
(6, 'EZ Bar Curl', 'Curls using EZ curl bar'),
(6, '21s Curls', 'Three ranges of motion for 21 reps'),
(6, 'Zottman Curls', 'Curls with rotation');

-- FOREARMS (10 exercises)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES 
(7, 'Wrist Curls', 'Wrist flexion with dumbbell or barbell'),
(7, 'Reverse Wrist Curls', 'Wrist extension exercise'),
(7, 'Farmers Walk', 'Walking while holding heavy weights'),
(7, 'Reverse Curls', 'Curls with overhand grip'),
(7, 'Hammer Curl', 'Neutral grip forearm builder'),
(7, 'Plate Pinch Hold', 'Holding weight plates together'),
(7, 'Towel Pull-Ups', 'Pull-ups gripping towels'),
(7, 'Wrist Roller', 'Rolling weight up and down'),
(7, 'Dead Hang', 'Hanging from bar for time'),
(7, 'Finger Curls', 'Curling fingers with weight');

-- ABS - Upper (10 exercises)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES 
(8, 'Crunches', 'Standard abdominal crunches'),
(8, 'Cable Crunches', 'Crunches using cable machine'),
(8, 'Decline Sit-Ups', 'Sit-ups on decline bench'),
(8, 'Weighted Crunches', 'Crunches holding weight plate'),
(8, 'Ab Wheel Rollouts', 'Rolling out with ab wheel'),
(8, 'Stability Ball Crunches', 'Crunches on stability ball'),
(8, 'Rope Crunches', 'Cable crunches with rope attachment'),
(8, 'Machine Crunches', 'Ab crunch machine'),
(8, 'V-Ups', 'Touching hands to feet simultaneously'),
(8, 'Toe Touch Crunches', 'Reaching for toes while crunching');

-- ABS - Lower (10 exercises)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES 
(9, 'Leg Raises', 'Raise legs while lying or hanging'),
(9, 'Reverse Crunches', 'Bring knees to chest'),
(9, 'Mountain Climbers', 'Dynamic core exercise'),
(9, 'Hanging Leg Raises', 'Raising legs while hanging from bar'),
(9, 'Scissor Kicks', 'Alternating leg raises'),
(9, 'Flutter Kicks', 'Small alternating leg movements'),
(9, 'Dead Bug', 'Opposite arm and leg movements'),
(9, 'Bicycle Crunches', 'Alternating elbow to knee'),
(9, 'Dragon Flags', 'Advanced full body ab movement'),
(9, 'Toes to Bar', 'Hanging and raising toes to bar');

-- QUADRICEPS - Outer (10 exercises)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES 
(10, 'Squats', 'Barbell back squats'),
(10, 'Front Squats', 'Squats with bar in front position'),
(10, 'Leg Press', 'Machine leg press'),
(10, 'Lunges', 'Walking or stationary lunges'),
(10, 'Hack Squats', 'Squats on hack squat machine'),
(10, 'Smith Machine Squats', 'Squats using Smith machine'),
(10, 'Barbell Box Squats', 'Squats to box or bench'),
(10, 'Walking Lunges', 'Lunges while walking forward'),
(10, 'Sissy Squats', 'Bodyweight quad isolation'),
(10, 'Belt Squats', 'Squats with weight belt');

-- QUADRICEPS - Inner (10 exercises)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES 
(11, 'Leg Extensions', 'Isolated quad extension machine'),
(11, 'Goblet Squats', 'Squats holding dumbbell at chest'),
(11, 'Bulgarian Split Squats', 'Single-leg squat variation'),
(11, 'Single Leg Extensions', 'One leg at a time extension'),
(11, 'Reverse Lunges', 'Lunges stepping backward'),
(11, 'Terminal Knee Extensions', 'Standing knee extension with band'),
(11, 'Sumo Squats', 'Wide stance squats'),
(11, 'Wall Sits', 'Isometric squat against wall'),
(11, 'Narrow Stance Leg Press', 'Leg press with feet close together'),
(11, 'Curtsy Lunges', 'Lunges crossing back leg');

-- CALVES (10 exercises)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES 
(12, 'Standing Calf Raises', 'Calf raises on machine or platform'),
(12, 'Seated Calf Raises', 'Seated calf raise machine'),
(12, 'Jump Rope', 'Jumping rope for calf development'),
(12, 'Single Leg Calf Raise', 'One leg at a time calf raise'),
(12, 'Donkey Calf Raises', 'Bent over calf raises'),
(12, 'Calf Press on Leg Press', 'Using leg press machine for calves'),
(12, 'Smith Machine Calf Raise', 'Calf raises under Smith machine bar'),
(12, 'Box Jumps', 'Explosive jumping onto platform'),
(12, 'Tib Raises', 'Raising toes for anterior tibialis'),
(12, 'Farmer Walk on Toes', 'Walking on toes while carrying weight');

-- TRAPS - Upper (10 exercises)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES 
(13, 'Barbell Shrugs', 'Shoulder shrugs with barbell'),
(13, 'Dumbbell Shrugs', 'Shoulder shrugs with dumbbells'),
(13, 'Upright Rows', 'Pull bar up to chin level'),
(13, 'Smith Machine Shrugs', 'Shrugs using Smith machine'),
(13, 'Behind Back Barbell Shrugs', 'Shrugs with bar behind body'),
(13, 'Overhead Shrugs', 'Shrugs with arms overhead'),
(13, 'Cable Shrugs', 'Shrugs using cable machine'),
(13, 'Trap Bar Shrugs', 'Shrugs using hex/trap bar'),
(13, 'Snatch Grip High Pulls', 'Wide grip explosive pulls'),
(13, 'Farmer Carries', 'Walking with heavy weights');

-- TRAPS - Mid (10 exercises)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES 
(14, 'Face Pulls', 'Cable face pulls'),
(14, 'Bent Over Rows', 'Barbell rows'),
(14, 'T-Bar Rows', 'Rows using T-bar'),
(14, 'Dumbbell Rows', 'Single arm dumbbell rows'),
(14, 'Cable Rows', 'Seated cable row variations'),
(14, 'Chest Supported Rows', 'Rows on incline bench'),
(14, 'Band Pull Aparts', 'Pulling resistance band apart'),
(14, 'Reverse Flyes', 'Rear delt flyes'),
(14, 'Wide Grip Rows', 'Rows with wider hand placement'),
(14, 'Seal Rows', 'Rows lying face down on bench');

-- TRAPS - Lower (10 exercises)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES 
(15, 'Overhead Shrugs', 'Shrugs while holding weight overhead'),
(15, 'Y-Raises', 'Raises forming Y-shape with arms'),
(15, 'Prone Y-Raise', 'Y-raises lying face down'),
(15, 'Prone T-Raise', 'T-raises lying face down'),
(15, 'Scapular Pull-Ups', 'Partial pull-ups focusing on scapula'),
(15, 'Cable Y-Raise', 'Y-raises using cables'),
(15, 'Band Pull Downs', 'Pulling band down from overhead'),
(15, 'Prone W-Raise', 'W-shape arm raises prone'),
(15, 'Wall Slides', 'Sliding arms up wall for scapular control'),
(15, 'Dumbbell Pullovers', 'Pullover movement for lower traps');

-- REAR DELTOIDS (10 exercises)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES 
(16, 'Rear Delt Flyes', 'Dumbbell flyes bent over'),
(16, 'Face Pulls', 'Cable pulls to face'),
(16, 'Reverse Pec Deck', 'Machine reverse flyes'),
(16, 'Cable Rear Delt Flyes', 'Cable flyes for rear delts'),
(16, 'Bent Over Lateral Raises', 'Lateral raises bent over'),
(16, 'Seated Bent Over Flyes', 'Rear delt flyes seated'),
(16, 'Single Arm Cable Face Pull', 'Face pulls one arm at a time'),
(16, 'Band Pull Aparts', 'Pulling resistance band at chest level'),
(16, 'Rear Delt Rows', 'Rows targeting rear delts'),
(16, 'Prone Reverse Flyes', 'Reverse flyes on incline bench');

-- LATS - Upper (10 exercises)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES 
(17, 'Pull-Ups', 'Standard pull-up exercise'),
(17, 'Lat Pulldowns', 'Cable lat pulldown machine'),
(17, 'Close-Grip Pulldowns', 'Narrow grip lat pulldowns'),
(17, 'Chin-Ups', 'Pull-ups with underhand grip'),
(17, 'Wide Grip Lat Pulldowns', 'Lat pulldowns with wide grip'),
(17, 'Straight Arm Pulldowns', 'Pulldowns with straight arms'),
(17, 'Assisted Pull-Ups', 'Pull-ups with assistance'),
(17, 'Neutral Grip Pull-Ups', 'Pull-ups with parallel grip'),
(17, 'Behind Neck Pulldowns', 'Lat pulldowns behind head'),
(17, 'Weighted Pull-Ups', 'Pull-ups with added weight');

-- LATS - Lower (10 exercises)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES 
(18, 'Barbell Rows', 'Bent over barbell rows'),
(18, 'Dumbbell Rows', 'Single-arm dumbbell rows'),
(18, 'Seated Cable Rows', 'Cable rowing machine'),
(18, 'Pendlay Rows', 'Explosive barbell rows from floor'),
(18, 'Meadows Rows', 'Single arm landmine rows'),
(18, 'Chest Supported T-Bar Rows', 'T-bar rows on supported bench'),
(18, 'Machine Rows', 'Plate-loaded row machine'),
(18, 'Kroc Rows', 'Heavy single arm dumbbell rows'),
(18, 'Inverted Rows', 'Bodyweight rows under bar'),
(18, 'Cable Low Rows', 'Low cable rows with various attachments');

-- LOWER BACK (10 exercises)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES 
(19, 'Deadlifts', 'Barbell deadlift exercise'),
(19, 'Romanian Deadlifts', 'Stiff-leg deadlift variation'),
(19, 'Back Extensions', 'Hyperextension bench exercise'),
(19, 'Good Mornings', 'Hip hinge with bar on shoulders'),
(19, 'Sumo Deadlifts', 'Wide stance deadlift variation'),
(19, 'Rack Pulls', 'Partial deadlifts from elevated position'),
(19, 'Superman Hold', 'Lying face down and raising limbs'),
(19, 'Reverse Hyperextensions', 'Raising legs on hyperextension bench'),
(19, 'Bird Dogs', 'Opposite arm and leg extension on all fours'),
(19, 'Trap Bar Deadlifts', 'Deadlifts using hex/trap bar');

-- TRICEPS - Long Head (10 exercises)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES 
(20, 'Overhead Tricep Extension', 'Dumbbell extension overhead'),
(20, 'Skull Crushers', 'Lying tricep extension'),
(20, 'Close-Grip Bench Press', 'Bench press with narrow grip'),
(20, 'Dumbbell Overhead Extension', 'Two-arm overhead extension'),
(20, 'Cable Overhead Extension', 'Overhead extension using cable'),
(20, 'French Press', 'Lying tricep extension with EZ bar'),
(20, 'Single Arm Overhead Extension', 'One arm overhead tricep extension'),
(20, 'Incline Skullcrushers', 'Skullcrushers on incline bench'),
(20, 'JM Press', 'Hybrid between bench and skullcrusher'),
(20, 'Rolling Tricep Extensions', 'Dynamic tricep extension movement');

-- TRICEPS - Lateral/Medial Head (10 exercises)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES 
(21, 'Tricep Pushdowns', 'Cable pushdown exercise'),
(21, 'Diamond Push-Ups', 'Push-ups with hands together'),
(21, 'Tricep Kickbacks', 'Dumbbell kickback exercise'),
(21, 'Rope Pushdowns', 'Cable pushdowns with rope attachment'),
(21, 'V-Bar Pushdowns', 'Pushdowns with V-bar attachment'),
(21, 'Reverse Grip Pushdowns', 'Cable pushdowns with underhand grip'),
(21, 'Bench Dips', 'Dips with hands on bench'),
(21, 'Overhead Cable Extension', 'Cable extension from behind'),
(21, 'Single Arm Pushdowns', 'Cable pushdowns one arm at a time'),
(21, 'Tricep Push-Ups', 'Push-ups with hands close together');

-- GLUTES - Upper (10 exercises)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES 
(22, 'Hip Thrusts', 'Barbell hip thrust exercise'),
(22, 'Glute Bridges', 'Bridge exercise for glutes'),
(22, 'Cable Kickbacks', 'Cable glute kickbacks'),
(22, 'Single Leg Hip Thrust', 'Hip thrust with one leg'),
(22, 'Banded Hip Thrust', 'Hip thrust with resistance band'),
(22, 'Frog Pumps', 'Hip thrusts with feet together'),
(22, 'Donkey Kicks', 'Kicking leg back on all fours'),
(22, 'Fire Hydrants', 'Raising leg to side on all fours'),
(22, 'Smith Machine Hip Thrust', 'Hip thrust using Smith machine'),
(22, 'Glute Squeeze', 'Isometric glute contraction');

-- GLUTES - Lower (10 exercises)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES 
(23, 'Squats', 'Barbell back squats'),
(23, 'Lunges', 'Walking or stationary lunges'),
(23, 'Step-Ups', 'Stepping up on platform'),
(23, 'Bulgarian Split Squat', 'Single leg squat with back foot elevated'),
(23, 'Curtsy Squats', 'Squat crossing leg behind'),
(23, 'Goblet Squat', 'Squat holding dumbbell at chest'),
(23, 'Lateral Lunges', 'Lunges stepping to the side'),
(23, 'Reverse Lunges', 'Lunges stepping backward'),
(23, 'Box Step-Ups', 'Stepping up onto elevated platform'),
(23, 'Single Leg Deadlifts', 'Deadlift balancing on one leg');

-- HAMSTRINGS - Upper (10 exercises)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES 
(24, 'Romanian Deadlifts', 'Stiff-leg deadlift variation'),
(24, 'Good Mornings', 'Hip hinge with bar on shoulders'),
(24, 'Nordic Curls', 'Bodyweight hamstring curl'),
(24, 'Single Leg Romanian Deadlift', 'RDL on one leg'),
(24, 'Stiff Leg Deadlifts', 'Deadlift with minimal knee bend'),
(24, 'Kettlebell Swings', 'Explosive hip hinge with kettlebell'),
(24, 'Glute Ham Raise', 'Hamstring curl on GHD machine'),
(24, 'Dumbbell RDLs', 'Romanian deadlifts with dumbbells'),
(24, 'Banded Good Mornings', 'Good mornings with resistance band'),
(24, '45-Degree Back Extensions', 'Back extension focusing on hamstrings');

-- HAMSTRINGS - Lower (10 exercises)
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES 
(25, 'Leg Curls', 'Hamstring curl machine'),
(25, 'Single-Leg Deadlifts', 'Romanian deadlift on one leg'),
(25, 'Swiss Ball Leg Curls', 'Hamstring curls on stability ball'),
(25, 'Seated Leg Curls', 'Leg curls in seated position'),
(25, 'Standing Leg Curls', 'Single leg curl standing'),
(25, 'Cable Pull Throughs', 'Hip hinge with cable between legs'),
(25, 'Slider Leg Curls', 'Leg curls using sliders'),
(25, 'Nordic Hamstring Curl', 'Eccentric hamstring curl'),
(25, 'Ball Hamstring Curls', 'Curls with feet on stability ball'),
(25, 'Dumbbell Single Leg Deadlift', 'Single leg deadlift with dumbbell');

