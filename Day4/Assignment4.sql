use university1;

truncate table StudentInformation;
truncate table Department;
truncate table Course;
truncate table Batch;
truncate table StudentStatus;



alter table StudentInformation
add constraint fjk foreign key(CourseId)
references Course(CourseId)
on update SET NULL;

alter table StudentInformation
add constraint bk1 foreign key(BatchId)
references Batch(BatchId)

alter table StudentInformation
add constraint sk1 foreign key(StatusId)
references StudentStatus(StatusId)


insert into Department values(101,'CSE-AI');
insert into Department values(102,'CSE');
insert into Department values(103,'CSBS');
insert into Department values(104,'ECE');

insert into Course values(201,'DBMS');
insert into Course values(202,'DSA');
insert into Course values(203,'DAA');
insert into Course values(204,'OOPs');

insert into Batch values(301,'BCSAI3A');
insert into Batch values(302,'BCS3A');
insert into Batch values(303,'BCSAI2A');
insert into Batch values(304,'BCS2A');

insert into StudentStatus values(401,'ACTIVE');
insert into StudentStatus values(402,'LEFT');
insert into StudentStatus values(403,'COMPLETED');
insert into StudentStatus values(404,'OVER');

Select * from StudentInformation;

INSERT INTO StudentInformation (
StudentId, Name, Address, Phone, Email, DateOfBirth, DateOfAdmission, DateOfPassing, PresentAddress, AadharId, DeptId, CourseId, BatchId, StatusId , studenttype)
VALUES
(1, 'Amit Sharma', 'Kolkata', 9876543210, 'amit@gmail.com','2002-05-10', '2020-08-01', '2024-07-21', 'Kolkata',1234567890123456, 101, 201, 301, 401 , 'R'),
(2, 'Priya Verma','Delhi',9876501234, 'priya@gmail.com', '2001-11-22', '2020-08-01','2024-07-21', 'Delhi', 1234567890123457, 102, 202, 302, 402 ,'P'),
(3,'Rahul Singh', 'Mumbai', 9898989898, 'rahul@gmail.com','2002-01-15', '2020-08-01', '2024-07-21','Mumbai',1234567890123458, 103, 203, 303, 403 , 'C'),
(4, 'Sneha Das', 'Kolkata',9123456780, 'sneha@gmail.com', '2001-07-18', '2020-08-01','2024-07-21', 'Kolkata', 1234567890123459, 104, 204, 304, 404 , 'C'),
(5,'Arjun Mehta', 'Chennai', 9345678901, 'arjun@gmail.com','2002-02-05', '2020-08-01', '2024-07-21', 'Chennai',1234567890123460, 101, 201, 301, 401, 'R'),
(6, 'Isha Gupta','Hyderabad', 9456123789, 'isha@gmail.com', '2002-09-12','2020-08-01', '2024-07-21', 'Hyderabad', 1234567890123461,102, 202, 302, 402  , 'P'),
(7, 'Kunal Roy', 'Pune', 9567890123,'kunal@gmail.com', '2001-12-25', '2020-08-01', '2024-07-21', 'Pune',1234567890123462, 103, 203, 303, 403  , 'P'),
(8, 'Meera Nair', 'Kerala',9678901234, 'meera@gmail.com', '2002-03-14', '2020-08-01','2024-07-21', 'Kochi', 1234567890123463,104, 204, 304, 404 , 'P'),
(9,'Vikram Rao', 'Bangalore', 9789012345, 'vikram@gmail.com','2001-06-30', '2020-08-01', '2024-07-21', 'Bangalore',1234567890123464, 104, 203, 303, 404 , 'R'),
(10, 'Ananya Bose','Kolkata', 9890123456, 'ananya@gmail.com', '2002-08-19','2020-08-01', '2024-07-21', 'Kolkata', 1234567890123465, 102, 204, 304, 404 ,'C');

select  * from Department D
join StudentInformation S on D.DeptID = S.DeptID
where D.DeptID = 101;

delete from Department
where DeptID = 101;
select  * from Department D
join StudentInformation S on D.DeptID = S.DeptID
where D.DeptID = 101;

select * from Course c
join StudentInformation s on c.CourseId = s.CourseId
where c.CourseId = 201;

Update Course 
set CourseId = 210
where CourseId = 201;
select * from Course c
join StudentInformation s on c.CourseId = s.CourseId
where c.CourseId = 201;

select * from Batch b 
join StudentInformation s on b.BatchId = s.BatchId
where b.BatchId = 301;

delete from Batch where BatchId = 301;
select * from Batch b 
join StudentInformation s on b.BatchId = s.BatchId
where b.BatchId = 301;