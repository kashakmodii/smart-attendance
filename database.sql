-- Step 1: Create the Database
CREATE DATABASE IF NOT EXISTS attendance_db;
USE attendance_db;

-- Step 2: Create the Students Table
CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    roll VARCHAR(50) UNIQUE NOT NULL,
    encoding LONGBLOB NOT NULL -- Stores face encodings instead of images
);

-- Step 3: Create the Attendance Table
CREATE TABLE attendance (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_roll VARCHAR(50),
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (student_roll) REFERENCES students(roll) ON DELETE CASCADE
);

-- Step 4: Show All Students Data
SELECT * FROM students;

-- Step 5: Describe the Students Table Structure
DESC students;

-- Step 6: Alter Table (Ensure Encoding Column Exists)
ALTER TABLE students ADD COLUMN encoding LONGBLOB;


-- Step 7: Select Students with No Encoding Data
SELECT id, name, roll, encoding FROM students WHERE encoding IS NULL;

-- Step 8: Select All Students with Encoding Length
SELECT id, name, roll, LENGTH(encoding) FROM students;


SELECT id, name, roll, encoding 
FROM students 
WHERE encoding IS NULL;

SELECT id, name, roll, LENGTH(encoding) 
FROM students;
COMMIT;

DESC students;
commit;
DESCRIBE attendance;

select face_image from students;



