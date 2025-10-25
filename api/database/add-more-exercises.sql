-- Additional Exercises to expand database to 8-10 per subcategory
-- Run this AFTER the main schema-mysql.sql

-- Additional Exercises for Chest - Upper (Subcategory 1) - Adding 7 more
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (1, 'Incline Cable Flyes', 'Cable flyes on incline bench');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (1, 'Incline Smith Machine Press', 'Smith machine press at incline angle');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (1, 'Low to High Cable Flyes', 'Cable crossover from low to high position');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (1, 'Incline Push-Ups', 'Push-ups with feet elevated');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (1, 'Landmine Press', 'Pressing barbell in landmine attachment at angle');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (1, 'Incline Hex Press', 'Neutral grip dumbbell press on incline');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (1, 'Incline Machine Press', 'Chest press machine at incline');

-- Additional Exercises for Chest - Middle (Subcategory 2) - Adding 6 more
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (2, 'Pec Deck Machine', 'Chest fly machine');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (2, 'Flat Dumbbell Flyes', 'Dumbbell flyes on flat bench');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (2, 'Machine Chest Press', 'Plate-loaded or selectorized chest press');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (2, 'Floor Press', 'Bench press performed on floor');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (2, 'Chest Squeeze Press', 'Dumbbells pressed together during movement');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (2, 'Wide Grip Bench Press', 'Bench press with wider hand placement');

-- Additional Exercises for Chest - Lower (Subcategory 3) - Adding 7 more
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (3, 'Decline Dumbbell Flyes', 'Flyes on decline bench');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (3, 'Decline Machine Press', 'Machine press at decline angle');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (3, 'Weighted Dips', 'Dips with added weight');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (3, 'High to Low Cable Flyes', 'Cable crossover from high to low');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (3, 'Decline Push-Ups', 'Push-ups with hands elevated');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (3, 'Decline Cable Press', 'Cable press at decline angle');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (3, 'Decline Smith Machine Press', 'Smith machine at decline angle');

-- Additional Exercises for Shoulders - Front Deltoids (Subcategory 4) - Adding 7 more
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (4, 'Military Press', 'Standing barbell overhead press');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (4, 'Seated Dumbbell Press', 'Overhead dumbbell press seated');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (4, 'Machine Shoulder Press', 'Shoulder press machine');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (4, 'Cable Front Raise', 'Front raise using cable');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (4, 'Plate Front Raise', 'Front raise holding weight plate');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (4, 'Pike Push-Ups', 'Push-ups in pike position');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (4, 'Landmine Shoulder Press', 'Press using landmine attachment');

-- Additional Exercises for Shoulders - Side Deltoids (Subcategory 5) - Adding 7 more
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (5, 'Dumbbell Shoulder Press', 'Seated or standing dumbbell press');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (5, 'Machine Lateral Raise', 'Lateral raise machine');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (5, 'Single Arm Lateral Raise', 'One arm at a time lateral raise');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (5, 'Leaning Lateral Raise', 'Lateral raise while leaning');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (5, 'Upright Rows', 'Pulling bar or dumbbells to chin');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (5, 'Behind the Neck Press', 'Overhead press behind head');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (5, 'W-Raise', 'Lateral movement forming W shape');

-- Additional Exercises for Biceps (Subcategory 6) - Adding 5 more
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (6, 'Concentration Curls', 'Isolated bicep curl seated');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (6, 'Spider Curls', 'Curls on incline bench face down');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (6, 'EZ Bar Curl', 'Curls using EZ curl bar');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (6, '21s Curls', 'Three ranges of motion for 21 reps');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (6, 'Zottman Curls', 'Curls with rotation');

-- Additional Exercises for Forearms (Subcategory 7) - Adding 7 more
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (7, 'Reverse Curls', 'Curls with overhand grip');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (7, 'Hammer Curl', 'Neutral grip forearm builder');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (7, 'Plate Pinch Hold', 'Holding weight plates together');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (7, 'Towel Pull-Ups', 'Pull-ups gripping towels');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (7, 'Wrist Roller', 'Rolling weight up and down');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (7, 'Dead Hang', 'Hanging from bar for time');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (7, 'Finger Curls', 'Curling fingers with weight');

-- Additional Exercises for Abs - Upper (Subcategory 8) - Adding 7 more
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (8, 'Weighted Crunches', 'Crunches holding weight plate');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (8, 'Ab Wheel Rollouts', 'Rolling out with ab wheel');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (8, 'Stability Ball Crunches', 'Crunches on stability ball');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (8, 'Rope Crunches', 'Cable crunches with rope attachment');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (8, 'Machine Crunches', 'Ab crunch machine');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (8, 'V-Ups', 'Touching hands to feet simultaneously');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (8, 'Toe Touch Crunches', 'Reaching for toes while crunching');

-- Additional Exercises for Abs - Lower (Subcategory 9) - Adding 7 more
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (9, 'Hanging Leg Raises', 'Raising legs while hanging from bar');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (9, 'Scissor Kicks', 'Alternating leg raises');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (9, 'Flutter Kicks', 'Small alternating leg movements');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (9, 'Dead Bug', 'Opposite arm and leg movements');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (9, 'Bicycle Crunches', 'Alternating elbow to knee');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (9, 'Dragon Flags', 'Advanced full body ab movement');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (9, 'Toes to Bar', 'Hanging and raising toes to bar');

-- Additional Exercises for Quadriceps - Outer (Subcategory 10) - Adding 6 more
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (10, 'Hack Squats', 'Squats on hack squat machine');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (10, 'Smith Machine Squats', 'Squats using Smith machine');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (10, 'Barbell Box Squats', 'Squats to box or bench');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (10, 'Walking Lunges', 'Lunges while walking forward');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (10, 'Sissy Squats', 'Bodyweight quad isolation');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (10, 'Belt Squats', 'Squats with weight belt');

-- Additional Exercises for Quadriceps - Inner (Subcategory 11) - Adding 7 more
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (11, 'Single Leg Extensions', 'One leg at a time extension');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (11, 'Reverse Lunges', 'Lunges stepping backward');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (11, 'Terminal Knee Extensions', 'Standing knee extension with band');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (11, 'Sumo Squats', 'Wide stance squats');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (11, 'Wall Sits', 'Isometric squat against wall');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (11, 'Narrow Stance Leg Press', 'Leg press with feet close together');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (11, 'Curtsy Lunges', 'Lunges crossing back leg');

-- Additional Exercises for Calves (Subcategory 12) - Adding 7 more
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (12, 'Single Leg Calf Raise', 'One leg at a time calf raise');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (12, 'Donkey Calf Raises', 'Bent over calf raises');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (12, 'Calf Press on Leg Press', 'Using leg press machine for calves');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (12, 'Smith Machine Calf Raise', 'Calf raises under Smith machine bar');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (12, 'Box Jumps', 'Explosive jumping onto platform');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (12, 'Tib Raises', 'Raising toes for anterior tibialis');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (12, 'Farmer Walk on Toes', 'Walking on toes while carrying weight');

-- Additional Exercises for Traps - Upper (Subcategory 13) - Adding 7 more
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (13, 'Smith Machine Shrugs', 'Shrugs using Smith machine');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (13, 'Behind Back Barbell Shrugs', 'Shrugs with bar behind body');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (13, 'Overhead Shrugs', 'Shrugs with arms overhead');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (13, 'Cable Shrugs', 'Shrugs using cable machine');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (13, 'Trap Bar Shrugs', 'Shrugs using hex/trap bar');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (13, 'Snatch Grip High Pulls', 'Wide grip explosive pulls');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (13, 'Farmer Carries', 'Walking with heavy weights');

-- Additional Exercises for Traps - Mid (Subcategory 14) - Adding 7 more
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (14, 'Dumbbell Rows', 'Single arm dumbbell rows');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (14, 'Cable Rows', 'Seated cable row variations');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (14, 'Chest Supported Rows', 'Rows on incline bench');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (14, 'Band Pull Aparts', 'Pulling resistance band apart');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (14, 'Reverse Flyes', 'Rear delt flyes');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (14, 'Wide Grip Rows', 'Rows with wider hand placement');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (14, 'Seal Rows', 'Rows lying face down on bench');

-- Additional Exercises for Traps - Lower (Subcategory 15) - Adding 8 more
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (15, 'Prone Y-Raise', 'Y-raises lying face down');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (15, 'Prone T-Raise', 'T-raises lying face down');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (15, 'Scapular Pull-Ups', 'Partial pull-ups focusing on scapula');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (15, 'Cable Y-Raise', 'Y-raises using cables');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (15, 'Band Pull Downs', 'Pulling band down from overhead');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (15, 'Prone W-Raise', 'W-shape arm raises prone');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (15, 'Wall Slides', 'Sliding arms up wall for scapular control');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (15, 'Dumbbell Pullovers', 'Pullover movement for lower traps');

-- Additional Exercises for Rear Deltoids (Subcategory 16) - Adding 7 more
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (16, 'Cable Rear Delt Flyes', 'Cable flyes for rear delts');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (16, 'Bent Over Lateral Raises', 'Lateral raises bent over');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (16, 'Seated Bent Over Flyes', 'Rear delt flyes seated');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (16, 'Single Arm Cable Face Pull', 'Face pulls one arm at a time');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (16, 'Band Pull Aparts', 'Pulling resistance band at chest level');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (16, 'Rear Delt Rows', 'Rows targeting rear delts');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (16, 'Prone Reverse Flyes', 'Reverse flyes on incline bench');

-- Additional Exercises for Lats - Upper (Subcategory 17) - Adding 7 more
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (17, 'Chin-Ups', 'Pull-ups with underhand grip');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (17, 'Wide Grip Lat Pulldowns', 'Lat pulldowns with wide grip');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (17, 'Straight Arm Pulldowns', 'Pulldowns with straight arms');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (17, 'Assisted Pull-Ups', 'Pull-ups with assistance');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (17, 'Neutral Grip Pull-Ups', 'Pull-ups with parallel grip');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (17, 'Behind Neck Pulldowns', 'Lat pulldowns behind head');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (17, 'Weighted Pull-Ups', 'Pull-ups with added weight');

-- Additional Exercises for Lats - Lower (Subcategory 18) - Adding 7 more
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (18, 'Pendlay Rows', 'Explosive barbell rows from floor');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (18, 'Meadows Rows', 'Single arm landmine rows');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (18, 'Chest Supported T-Bar Rows', 'T-bar rows on supported bench');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (18, 'Machine Rows', 'Plate-loaded row machine');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (18, 'Kroc Rows', 'Heavy single arm dumbbell rows');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (18, 'Inverted Rows', 'Bodyweight rows under bar');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (18, 'Cable Low Rows', 'Low cable rows with various attachments');

-- Additional Exercises for Lower Back (Subcategory 19) - Adding 6 more
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (19, 'Sumo Deadlifts', 'Wide stance deadlift variation');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (19, 'Rack Pulls', 'Partial deadlifts from elevated position');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (19, 'Superman Hold', 'Lying face down and raising limbs');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (19, 'Reverse Hyperextensions', 'Raising legs on hyperextension bench');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (19, 'Bird Dogs', 'Opposite arm and leg extension on all fours');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (19, 'Trap Bar Deadlifts', 'Deadlifts using hex/trap bar');

-- Additional Exercises for Triceps - Long Head (Subcategory 20) - Adding 7 more
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (20, 'Dumbbell Overhead Extension', 'Two-arm overhead extension');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (20, 'Cable Overhead Extension', 'Overhead extension using cable');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (20, 'French Press', 'Lying tricep extension with EZ bar');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (20, 'Single Arm Overhead Extension', 'One arm overhead tricep extension');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (20, 'Incline Skullcrushers', 'Skullcrushers on incline bench');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (20, 'JM Press', 'Hybrid between bench and skullcrusher');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (20, 'Rolling Tricep Extensions', 'Dynamic tricep extension movement');

-- Additional Exercises for Triceps - Lateral/Medial Head (Subcategory 21) - Adding 7 more
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (21, 'Rope Pushdowns', 'Cable pushdowns with rope attachment');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (21, 'V-Bar Pushdowns', 'Pushdowns with V-bar attachment');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (21, 'Reverse Grip Pushdowns', 'Cable pushdowns with underhand grip');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (21, 'Bench Dips', 'Dips with hands on bench');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (21, 'Overhead Cable Extension', 'Cable extension from behind');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (21, 'Single Arm Pushdowns', 'Cable pushdowns one arm at a time');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (21, 'Tricep Push-Ups', 'Push-ups with hands close together');

-- Additional Exercises for Glutes - Upper (Subcategory 22) - Adding 7 more
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (22, 'Single Leg Hip Thrust', 'Hip thrust with one leg');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (22, 'Banded Hip Thrust', 'Hip thrust with resistance band');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (22, 'Frog Pumps', 'Hip thrusts with feet together');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (22, 'Donkey Kicks', 'Kicking leg back on all fours');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (22, 'Fire Hydrants', 'Raising leg to side on all fours');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (22, 'Smith Machine Hip Thrust', 'Hip thrust using Smith machine');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (22, 'Glute Squeeze', 'Isometric glute contraction');

-- Additional Exercises for Glutes - Lower (Subcategory 23) - Adding 7 more
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (23, 'Bulgarian Split Squat', 'Single leg squat with back foot elevated');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (23, 'Curtsy Squats', 'Squat crossing leg behind');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (23, 'Goblet Squat', 'Squat holding dumbbell at chest');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (23, 'Lateral Lunges', 'Lunges stepping to the side');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (23, 'Reverse Lunges', 'Lunges stepping backward');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (23, 'Box Step-Ups', 'Stepping up onto elevated platform');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (23, 'Single Leg Deadlifts', 'Deadlift balancing on one leg');

-- Additional Exercises for Hamstrings - Upper (Subcategory 24) - Adding 7 more
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (24, 'Single Leg Romanian Deadlift', 'RDL on one leg');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (24, 'Stiff Leg Deadlifts', 'Deadlift with minimal knee bend');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (24, 'Kettlebell Swings', 'Explosive hip hinge with kettlebell');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (24, 'Glute Ham Raise', 'Hamstring curl on GHD machine');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (24, 'Dumbbell RDLs', 'Romanian deadlifts with dumbbells');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (24, 'Banded Good Mornings', 'Good mornings with resistance band');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (24, '45-Degree Back Extensions', 'Back extension focusing on hamstrings');

-- Additional Exercises for Hamstrings - Lower (Subcategory 25) - Adding 7 more
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (25, 'Seated Leg Curls', 'Leg curls in seated position');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (25, 'Standing Leg Curls', 'Single leg curl standing');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (25, 'Cable Pull Throughs', 'Hip hinge with cable between legs');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (25, 'Slider Leg Curls', 'Leg curls using sliders');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (25, 'Nordic Hamstring Curl', 'Eccentric hamstring curl');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (25, 'Ball Hamstring Curls', 'Curls with feet on stability ball');
INSERT INTO Exercises (MuscleSubcategoryId, Name, Description) VALUES (25, 'Dumbbell Single Leg Deadlift', 'Single leg deadlift with dumbbell');

