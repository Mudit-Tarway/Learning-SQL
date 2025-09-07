use university1;
create table StudentInformation
(
  StudentId INT, 
  Name VARCHAR(100), 
  Address VARCHAR(200), 
  Phone NUMERIC(10,0) ,
  Email VARCHAR(50) ,
  DateOfBirth Date ,
  DateOfAdmission Date ,
  DateOfPassing Date
);
Alter table StudentInformation add  PresentAddress VARCHAR(200);
Create table Department (DeptId INT, DeptName VARCHAR(50));
Create table Course (CourseId INT, CourseName VARCHAR(50));
Create table Batch (BatchId INT, BatchName VARCHAR(50));
Create table StudentStatus (StatusId INT, StatusDesc VARCHAR(50));
Alter table StudentInformation add DeptId INT , CourseId INT, BatchId INT, StatusId INT;
Insert into Department (DeptId , DeptName) values
(101 , 'CSE'),
(102 , 'CSE AI'),
(103 , 'CSBS'),
(104 , 'ECE');

Insert into  Course (CourseId , CourseName) values
(1011 , 'C Programming'),
(1021 , 'Artifical Intelligence'),
(1031 , 'Bioinformatics'),
(1041 , 'Circuit Analog');

Insert into Batch (BatchId , BatchName ) values
(1013 , 'BCS3B'),
(1023 , 'BCSAI3A'),
(1033 , 'BCCSBS3A'),
(1043 , 'BECE3A');

Insert into  StudentStatus  ( StatusId , StatusDesc ) values
(50 , 'Completed'),
(51 , 'Active'),
(52 , 'Left'),
(53 , 'Active');

 select * from StudentInformation ;
Insert into StudentInformation (StudentId , Name , Address,  Phone , Email, DateOfBirth, DateOfAdmission , DateOfPassing , PresentAddress , DeptId, CourseId, BatchId, StatusId ) 
values
(1 , 'Aditya Kumar' , 'Dhanbad' , 1234567890 , 'adityakumar@gmail.com' , '2003-01-01' , '2019-07-21' , '2023-07-21' , 'Bengaluru' , 101 , 1011 , 1013 , 52), 
(2 , 'Aditya Singh' , 'Ranchi' , 2134567890 , 'adityasingh@gmail.com' , '2003-02-01' , '2019-08-21' , '2023-07-21' , 'Delhi' , 101 , 1011 , 1013 , 52),
(3 , 'Aditya Verma' , 'Kolkata' , 2314567890 , 'adityaverma@gmail.com' , '2005-01-01' , '2023-07-21' , '2027-07-21' , 'Kolkata' , 101 , 1019 , 1014 , 51),
(4 , 'Aditya Singh' , 'Dum Dum' , 2341567890 , 'adityasingh@gmail.com' , '2005-02-01' , '2023-07-21' , '2027-07-21' , 'Dum Dum' , 101 , 1011 , 1013 , 53),
(5 , 'Aditya Saluja' , 'Patna' , 2345671890 , 'adityasaluja@gmail.com' , '2004-01-01' , '2022-07-21' , '2026-07-21' , 'Kolkata' , 103 , 1031 , 1033 , 50),
(6 , 'Prem Singh' , 'Sealdah' , 2345678901 , 'premsingh@gmail.com' , '2006-01-01' , '2025-07-21' , '2029-07-21' , 'Bengaluru' , 501 , 502 , 503 , 53),
(7 , 'Shivam Pandey' , 'Kolkata' , 2345678910 , 'shivampandey@gmail.com' , '2005-08-25' , '2023-07-21' , '2027-07-21' , 'Kolkata' , 101 , 1011 , 1013 , 51),
(8 , 'Shivam Kumar' , 'Pune' , 2345671890 , 'shivamkumar@gmail.com' , '2004-01-26' , '2020-07-21' , '2024-07-21' , 'Noida' , 105 , 1089 , 1021 , 50),
(9 , 'Sujal Kumar' , 'Dhanbad' , 2324567890 , 'sujalKumar@gmail.com' , '2005-02-01' ,'2023-07-21' , '2027-07-21' , 'Kolkata' , 101 , 1011 , 1013 , 53),
(10 , 'Priyaditya Sungh' , 'Sealdah' , 2345678990 , 'singh@gmail.com' , '2000-03-27' , '2019-07-21' , '2023-09-21' , 'Noida' , 101 , 1011 , 1013 , 52);

Select S.StudentId , S.Name , D.DeptName , S.DeptId
from StudentInformation S inner join Department D
on S.DeptId = D.DeptId;

Select C.CourseId , C.CourseName 
from Course C left join StudentInformation S
on C.CourseId = S.CourseId
where S.CourseId is Null ;

Insert into StudentInformation values (11 , 'Priyaditya Verma ' , 'Sealdah' , 2345678900 , 'verma@gmail.com' , '2000-03-27' , '2019-07-21' , '2023-09-21' , 'Noida' , 101 , 1011 , 1013 , 55);
Select S.*
from StudentInformation S
Left join StudentStatus SS on S.StatusId = SS.StatusId
where SS.StatusId is null ;

Insert into StudentInformation values (12 , 'Sujal Pandey' , 'Dhanbad' , 9102936765 , 'sujalpandey@gmail.com' , '2003-01-01' , '2019-07-21' , '2023-07-21' , 'Bengaluru' , 101 , 1011 , 1013 , 50);
Select S.*
from StudentInformation S
inner join Department D on S.DeptId = D.DeptId
inner join Batch B on S.BatchId = B.BatchId
inner join StudentStatus SS on SS.StatusId = S.StatusId 
where D.DeptName = 'CSE'
 and B.BatchName = 'BCS3B'
 and SS.StatusDesc = 'Completed';
 