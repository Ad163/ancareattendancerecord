CREATE DATABASE ANCAttendanceRecordS;
-- Ofor Ruth Uket
-- LASCOHET/HIMPD/2021/033

-- I highly recommend making this configuration change before executing the query to avoid triggering an error. 
-- If you come across a file privilege error in MySQL, specifically related to 'secure-file-priv', 
-- you can resolve it by editing a file located at: C:\ProgramData\MySQL\MySQL Server 8.0\my.ini or C:\ProgramData\MySQL\MySQL Server 8.0\my
-- Here's what you need to do:
-- 1. Open the file using a text editor like Notepad.
-- 2. Look for the line that contains secure-file-priv="C:\ProgramData\MySQL\MySQL Server 8.0\Uploads"
-- 3. Replace that line with secure-file-priv=""
-- 4. Save the changes to the file.
-- 5. Then Restart the Mysql Services to incorporate the change


USE ANCAttendanceRecordS;
CREATE TABLE AttendanceRecords (
    Name VARCHAR(50),
    patient_card_number VARCHAR(20),
	age VARCHAR(4),
    Parity CHAR(5),
    New VARCHAR(4),
    Revisit VARCHAR(4),
    LMP DATE,
    Age_of_Pregnancy INT,
    weight DECIMAL(5 , 2 ),
    Height DECIMAL(10 , 9 ),
    Blood_Pressure VARCHAR(10),
    visit_count INT,
    hiv_testing CHAR(5),
    fgm CHAR(5),
    family_planning CHAR(5),
    nutrition CHAR(5),
    exclusive_breastfeeding CHAR(5),
    breastfeeding CHAR(5),
    Syphilis_testing VARCHAR(255),
    Hepatitis_B VARCHAR(255),
    Hepatitis_C VARCHAR(255),
    HB_PCV DECIMAL(5 , 2 ),
    gestational_sugar CHAR(5),
    LLIN CHAR(5),
    IPT1 CHAR(5),
    IPT2 CHAR(5),
    IPT3 CHAR(5),
    Hematinics CHAR(5),
    TD VARCHAR(20),
    Associated_Problems VARCHAR(255),
    Treated CHAR(5),
    Admitted CHAR(5)
);

-- replace the location with the one that match the location the database.csv file is stored 
-- or you move it to the directory of the database but i would recommend moving it and going on with this code
LOAD DATA INFILE 'database.csv' 
INTO TABLE AttendanceRecords
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * 
from AttendanceRecords;
