create database students_management;
use students_management;

create table students(
id int primary key auto_increment,
name varchar(50),
age tinyint,
trade varchar(10),
course_id tinyint);

create table courses(
course_id tinyint primary key,
course_name varchar(50),
duration_months int);

create table marks(
mark_id tinyint primary key,
id int,
subject varchar(50),
marks smallint,
foreign key (id) references students(id));


insert into students (name,age,trade,course_id)
values ("Rahul",25,"AIPA",102),
("Asmita",22,"CSA",103),
("Rama",28,"EM",104),
("Raj",30,"COPA",105),
("Priya",27,"DM",106);

insert into courses values(101,"CTS",12),
(102,"CITS",14),
(103,"Diploma",24),
(104,"Apprentice",6),
(105,"Guest Faculty",11);

insert into marks values
(1,2,"DBMS",85),
(2,2,"Python",96),
(3,2,"Maths",88),
(4,3,"Machine Learing",92),
(5,4,"Deep Learing",77);

select * from students;

select count(*) as total_students from students;
select count(*) as total_marks from marks;
select count(*) as total_courses from courses;

select id, sum(marks) as Total_Marks from marks group by id;

select id,avg(marks) as Avg_marks from marks group by id;

select max(marks) as Highes_marks from marks;

select min(marks) as Minimum_marks from marks;











