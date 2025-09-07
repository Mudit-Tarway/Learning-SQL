use university1;

-- Answer1
SELECT * FROM StudentInformation WHERE StatusId IN (51)ORDER BY StudentId DESC;

-- Answer2
SELECT S.*
INTO student_copy
FROM StudentInformation S
INNER JOIN Department D 
    ON S.DeptId = D.DeptId
WHERE D.DeptName = 'CSE';

-- Answer3
SELECT DeptId, COUNT(StudentId) AS StudentCount FROM StudentInformation GROUP BY DeptId HAVING COUNT(StudentId) > 2;

-- Answer4
INSERT INTO StudentInformation(StudentId, Name, Address, Phone, Email, DateOfBirth, DateOfAdmission, DateOfPassing, PresentAddress, DeptId, CourseId, BatchId, StatusId)
VALUES
(20,'Ravi Patel', 'Ahmedabad', 9123001111, 'ravi@gmail.com','2002-03-15', '2020-07-21', '2024-07-21', 'Ahmedabad', 102, 1021, 1023, 50),
(21, 'Kiran Rao', 'Hyderabad', 9123001112, 'kiran@gmail.com', '2001-11-10', '2019-07-21', '2023-07-21', 'Hyderabad', 103, 1031, 1033, 52); 

INSERT INTO student_copy (StudentId, Name, Address, Phone, Email, DateOfBirth, DateOfAdmission, DateOfPassing, PresentAddress, DeptId, CourseId, BatchId, StatusId)
VALUES
(23, 'Ankit Sharma', 'Delhi', 9123001123, 'ankit@gmail.com', '2003-05-20', '2021-07-21', '2025-07-21', 'Delhi', 101, 1011, 1013, 51), 
( 24 , 'Gupta', 'Mumbai', 9123001124, 'neha@gmail.com', '2002-07-08', '2020-07-21', '2024-07-21', 'Mumbai', 101, 1011, 1013, 53);

-- Answer5
SELECT S.*FROM StudentInformation S LEFT JOIN student_copy C ON S.StudentId = C.StudentId WHERE C.StudentId IS NULL;

-- Answer6
DROP TABLE IF EXISTS StudentInformation, Department, Course, Batch, StudentStatus;

-- Answer7
CREATE TABLE StudentInformation (
StudentId INT NOT NULL,
Name VARCHAR(100), 
Address VARCHAR(200),
Phone NUMERIC(10,0),
Email VARCHAR(50), 
DateOfBirth DATE,
DateOfAdmission DATE,
DateOfPassing DATE,
PresentAddress VARCHAR(200), 
AadharId NUMERIC(16,0) NOT NULL, 
DeptId INT,
CourseId INT, 
BatchId INT, 
StatusId INT, 
PRIMARY KEY (StudentId),
UNIQUE (AadharId));

-- Answer8.
CREATE TABLE Department (DeptId INT NOT
NULL,DeptName VARCHAR(50), PRIMARY KEY (DeptId));
CREATE TABLE Course ( CourseId INT NOT NULL, CourseName
VARCHAR(50),PRIMARY KEY (CourseId));
CREATE TABLE Batch (BatchId INT NOT NULL, BatchName
VARCHAR(50),PRIMARY KEY (BatchId));
CREATE TABLE StudentStatus (StatusId INT NOT NULL,StatusDesc
VARCHAR(50), PRIMARY KEY (StatusId));

-- Answer9.
INSERT INTO Department (DeptId, DeptName) VALUES
(101, 'CSE'),(102, 'CSE AI'),(103, 'CSBS'),(104, 'ECE');

INSERT INTO Course (CourseId, CourseName) VALUES
(1011, 'C Programming'),(1021, 'Artificial Intelligence'),(1031,
'Bioinformatics'),(1041, 'Circuit Analog');

INSERT INTO Batch (BatchId, BatchName) VALUES
(1013, 'BCS3B'),(1023, 'BCSAI3A'),(1033, 'BCCSBS3A'),(1043,
'BECE3A');

INSERT INTO StudentStatus (StatusId, StatusDesc) VALUES
(50, 'Completed'),(51, 'Active'),(52, 'Left'),(53, 'On Leave');

-- Answer10.
INSERT INTO StudentInformation (
StudentId, Name, Address, Phone, Email, DateOfBirth, DateOfAdmission, DateOfPassing, PresentAddress, AadharId, DeptId, CourseId, BatchId, StatusId)
VALUES
(1, 'Amit Sharma', 'Kolkata', 9876543210, 'amit@gmail.com',
'2002-05-10', '2020-08-01', '2024-07-21', 'Kolkata',
1234567890123456, 101, 1011, 1013, 51),
(2, 'Priya Verma', 'Delhi',
9876501234, 'priya@gmail.com', '2001-11-22', '2020-08-01',
'2024-07-21', 'Delhi', 1234567890123457, 102, 1011, 1013, 53),
(3,
'Rahul Singh', 'Mumbai', 9898989898, 'rahul@gmail.com',
'2002-01-15', '2020-08-01', '2024-07-21', 'Mumbai',
1234567890123458, 103, 1021, 1023, 50),
(4, 'Sneha Das', 'Kolkata',
9123456780, 'sneha@gmail.com', '2001-07-18', '2020-08-01',
'2024-07-21', 'Kolkata', 1234567890123459, 102, 1021, 1023, 52),
(5,
'Arjun Mehta', 'Chennai', 9345678901, 'arjun@gmail.com',
'2002-02-05', '2020-08-01', '2024-07-21', 'Chennai',
1234567890123460, 103, 1031, 1033, 51),
(6, 'Isha Gupta',
'Hyderabad', 9456123789, 'isha@gmail.com', '2002-09-12',
'2020-08-01', '2024-07-21', 'Hyderabad', 1234567890123461, 103,
1031, 1033, 53),
(7, 'Kunal Roy', 'Pune', 9567890123,
'kunal@gmail.com', '2001-12-25', '2020-08-01', '2024-07-21', 'Pune',
1234567890123462, 104, 1041, 1043, 50),
(8, 'Meera Nair', 'Kerala',
9678901234, 'meera@gmail.com', '2002-03-14', '2020-08-01',
'2024-07-21', 'Kochi', 1234567890123463, 104, 1041, 1043, 52),
(9,
'Vikram Rao', 'Bangalore', 9789012345, 'vikram@gmail.com',
'2001-06-30', '2020-08-01', '2024-07-21', 'Bangalore',
1234567890123464, 101, 1011, 1013, 51),
(10, 'Ananya Bose',
'Kolkata', 9890123456, 'ananya@gmail.com', '2002-08-19',
'2020-08-01', '2024-07-21', 'Kolkata', 1234567890123465, 101, 1011,
1013, 53);

-- Answr11.
ALTER TABLE StudentInformation
ADD studenttype CHAR(1) NOT NULL DEFAULT 'R'
CHECK (studenttype IN ('R','P','C'));

-- Answer12.
ALTER TABLE StudentInformation
ADD CONSTRAINT CK_StudentInformation_studenttype
CHECK (studenttype IN ('R','P','C'));

Select * from StudentInformation;