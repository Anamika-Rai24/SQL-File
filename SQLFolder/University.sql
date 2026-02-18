create database University_Management;
use University_Management;

create table Students(
StudentID int primary key,
Name varchar(50),
Email varchar(100),
Address varchar(100),
DateofBirth date);

create table Faculty(
FacultyID int primary key,
Name varchar(50),
Designation varchar(50),
DepartmentID int,
foreign key (DepartmentID) references Department(DepartmentID));

create table Courses(
CourseID int primary key,
CourseName varchar(50),
Credits int,
DepartmentID int,
foreign key (DepartmentID) references Department(DepartmentID));

create table Department(
DepartmentID int primary key,
DepartmentName varchar(100),
HeadofDepartment varchar(50));

create table Registrations(
RegistrationID int primary key,
StudentID int,
CourseID int,
Semester varchar(20),
Year int,
foreign key (StudentID) references Students(StudentID),
foreign key (CourseID) references Courses(CourseID));

create table Classrooms(
RoomNumber int primary key,
Building varchar(50),
Capacity int);

show tables;

insert into Department values
(1, "COPA", "Mrs.Sarika Shrivtastav"),
(2, "EM", "Mr.Anil Kumar"),
(3, "AIPA", "Mrs.Ritu Shukla Tripathi");

insert into Students values
(1,'Anita','anit@gmail.com','Delhi','2000-01-10'),
(2,'Riya','riya@gmail.com','Mumbai','2004-02-12'),
(3,'Priya','priya@gmail.com','Pune','2002-04-01');

insert into Faculty values
(201,"Mr.Prashant Sharma", "Faculty COPA",1),
(202,"Mr. Sudheer Kumar", "Faculty EM",2),
(203,"Mr.Shailesh Yadav", "Faculty AIPA",3);

insert into Courses values
(301,"Computer Operator",4,1),
(302,"Computer Fandamental",5,1),
(303,"Electronics Mechanic",4,2),
(304,"Artificial Intelligence",4,3);

insert into Registrations values
(1, 1, 301, 'Semester 1', 2025),
(2, 1, 302, 'Semester 1', 2025),
(3, 2, 301, 'Semester 1', 2025),
(4, 3, 303, 'Semester 2', 2025);

insert into Classrooms values
(101,"Block A", 500),
(102,"Block B", 500);

select * from Department;
select * from Students;
select * from Faculty;
select * from Courses;
select * from Registrations;
select * from Classrooms;




