create database university1;
use university1;
Create table Students(
StudentId INT, 
Name VARCHAR(100), 
Address VARCHAR(200), 
Phone NUMERIC(10,0),
Email VARCHAR(50),
DateOfBirth Date ,
DateOfAdmission Date, 
DateOfPassing Date,
DeptName VARCHAR(50), 
CourseName VARCHAR(50), 
BatchName VARCHAR(10),
StudentStatus VARCHAR(10)
);
Insert INTO Students Values(1, 'Aditya Kumar', 'Sector5 Kolkata', 1234567890, 'aditya@gmail.com', '2000-01-01', '2018-08-01', '2022-05-15', 'Computer Science', 'BSC CS', 'BCS3A', 'Completed');
Insert INTO Students Values(2, 'Aditya Verma', 'Sector5 Kolkata', 1234567891, 'verma@gmail.com', '2000-02-01', '2018-08-01', '2022-05-15', 'Computer Science', 'BSC CS', 'BCS3A', 'Completed');
Insert INTO Students Values(3, 'Aditya Singh', 'Sector5 Kolkata', 1234567892, 'adityasingh@gmail.com', '2005-08-25', '2023-07-27', '2027-07-15', 'Computer Science', 'BSC CS', 'BCS3B', 'Active');
Insert INTO Students Values(4, 'Basit Kumar', 'Sector1 Kolkata', 1234567893, 'basit@gmail.com', '2005-02-25', '2023-07-01', '2027-07-15', 'Computer Science', 'BSC CS', 'BCS3C', 'Active');
Insert INTO Students Values(5, 'Dolly Singh', 'Pune', 1234567894, 'dolly@gmail.com', '2004-08-25', '2022-07-27', '2026-07-15', 'Computer Science', 'BSC CS', 'BCS4B', 'Active');
Insert INTO Students Values(6, 'Jai Raj', 'Dhanbad,Jharkhand', 1234567895, 'jairaj@gmail.com', '2005-08-25', '2023-07-27', '2027-07-15', 'Computer Science', 'BSC CS', 'BCS3E', 'Active');
Insert INTO Students Values(7, 'Kumar Yash', 'Sector5 Kolkata', 1234567896, 'kumar@gmail.com', '2000-08-25', '2020-07-27', '2024-07-15', 'Computer Application', 'BSC CA', 'BCA3B', 'Completed');
Insert INTO Students Values(8, 'Deepak Pandey', 'Sector5 Kolkata', 1234567897, 'deepak@gmail.com', '2005-07-25', '2023-07-27', '2027-07-15', 'Computer Science', 'BSC CS', 'BCS3B', 'Left');
Insert INTO Students Values(9, 'Pankaj Kumar', 'Sector5 Kolkata', 1234567898, 'pankaj@gmail.com', '2005-02-25', '2023-07-27', '2027-07-15', 'Computer Science', 'BSC CS', 'BCS3B', 'Active');
Insert INTO Students Values(10, 'Aditya Vikram Dhar', 'Delhi', 1234567800, 'adityavikram@gmail.com', '2005-01-25', '2023-07-27', '2027-07-15', 'Computer Science', 'BSC CSAI', 'BCSAI3A', 'Active');
Update Students SET StudentStatus = 'Completed' where BatchName = 'BCS3A';
Select * from Students;
DELETE FROM Students WHERE  DeptName = 'Computer Application';
SELECT * FROM Students WHERE StudentStatus <> 'Completed';
TRUNCATE TABLE Students; 
DROP TABLE Students;