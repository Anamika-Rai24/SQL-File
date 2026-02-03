create database Adv_sql;
use Adv_sql;

CREATE TABLE Students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    course VARCHAR(50),
    marks INT,
    email VARCHAR(100)
);

INSERT INTO Students (id, name, course, marks, email) VALUES
(1, 'Amit Sharma', 'Computer Science', 85, 'amit.sharma@example.com'),
(2, 'Priya Verma', 'Information Technology', 90, 'priya.verma@example.com'),
(3, 'Rahul Singh', 'Data Science', 78, 'rahul.singh@example.com'),
(4, 'Sneha Gupta', 'Artificial Intelligence', 88, 'sneha.gupta@example.com'),
(5, 'Vikas Yadav', 'Cyber Security', 82, 'vikas.yadav@example.com'),
(6, 'Neha Patel', 'Machine Learning', 95, 'neha.patel@example.com'),
(7, 'Rohan Mehta', 'Software Engineering', 80, 'rohan.mehta@example.com'),
(8, 'Anjali Nair', 'Cloud Computing', 87, 'anjali.nair@example.com'),
(9, 'Karan Joshi', 'Database Systems', 76, 'karan.joshi@example.com'),
(10, 'Meera Iyer', 'Web Development', 89, 'meera.iyer@example.com');

create view Students_view as 
select name,course,marks 
from Students;

select * from Students_view;

create view FD_Std as 
select name,course,marks 
from Students
where marks>80;

select * from FD_Std;

#shows how view was created 
show create view FD_Std;

#update views
update Students_view 
set marks=75 
where name='Amit Sharma';

delete from Students_view where name='Amit Sharma';

#Apply on two tables

create table course (
course_id int primary key,
course_name varchar(20));

create table std (
id int primary key,
name varchar(50),
course_id int,
foreign key(course_id) references course(course_id));

insert into course values(
1,"AIPA"),(2,"CSA"),(3,"COPA");

insert into std values
(101,"Amit",1),
(102,"Manisha",2),
(103,"Ravi",2),
(104,"Ram",1),
(105,"Harsh",3);

create view std_name_course as 
select s.id, s.name, c.course_name 
from std s                # alias(shorter form of table name)
join course c on s.course_id=c.course_id;

select * from std_name_course;

#view details
show create view std_name_course;

-- drop view std_name_course;
----------------------------------------------------------------------------------------------
#Stored procedures 
use Adv_sql;

CREATE TABLE Students_SP (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    course VARCHAR(50),
    marks INT,
    fee INT
);

INSERT INTO Students_SP (name, age, course, marks, fee) VALUES
('Amit', 20, 'AIPA', 78, 40000),
('Neha', 19, 'AIPA', 85, 42000),
('Rahul', 17, 'COPA', 65, 30000),
('Pooja', 21, 'COPA', 90, 35000),
('Karan', 18, 'AIPA', 72, 38000);

select * from Students_SP;

DELIMITER $$
create procedure StudentsDetail()
begin
	select * from Students_SP;
end $$
-- create procedure AllCoursename()
-- begin
-- 	select * from Course_SP;
-- end $$

DELIMITER ;

call StudentsDetail(); 

DELIMITER $$ 
create procedure Students_Course(in course_name varchar(50))
begin
	select * from Students_SP where course=course_name;
end $$
DELIMITER ;

call Students_Course('AIPA');

DELIMITER $$ 
create procedure Eligible()
begin
	select name,age,
    if(age >=18,"Eligible","Not Eligible") as Remarks
    from Students_SP;
end $$
DELIMITER ;

call Eligible();

DELIMITER $$ 
create procedure FeeIncrease(in course_name varchar(10))
begin
	update Students_SP
    set fee = fee + 5000
    where course=course_name;
end$$
DELIMITER ;

call FeeIncrease('COPA');

call StudentsDetail();

#functions in SQL

DELIMITER $$ 
create function Grades(marks int)
returns varchar(1)
deterministic
begin 
	if marks >=85 then
		return 'A';
    elseif marks >=70 then
		return 'B';
	else
		return 'C';
	end if;
end $$
DELIMITER ;

select name,age,marks,Grades(marks) as STD_Grades from Students_SP;

DELIMITER $$
create function FeeDiscount(fee int)
returns int
deterministic
begin
	return fee * 0.10;
end $$
DELIMITER ;

select name,fee,FeeDiscount(fee) as Discounted_fee from Students_SP;

select name,marks,fee from Students_SP where Grades(marks)="A";

drop procedure if exists Students_Course;
drop function if exists FeeDiscount;