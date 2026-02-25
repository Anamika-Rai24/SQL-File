create database company;
use company;

create table employee(emp_ID tinyint,name varchar(50),age tinyint,phone bigint,email varchar(100));
insert into employee(emp_ID,name,age,phone,email)
values (101,"Anamika",19,9876543278,"anamika12@gmail.com"),
(102,"Priya",21,5678943562,"priya21@gmail.com"),
(103,"Riya",20,8796543267,"riya34@gmail.com"),
(104,"Radha",24,5678903467,"radha456@gmail.com"); 
select * from employee;
alter table employee add primary key(emp_ID); -- #Primary key
alter table employee add column Address varchar(100);  -- # to add column in table
alter table employee change column phone mobile_no bigint;   -- # to change the name of the column in the table
-- alter table employee modify column age smallint; -- # change the datatype of column in table
alter table employee modify emp_ID tinyint auto_increment;
insert into employee(name,age,mobile_no,email)
values ("Aarti",23,9876543278,"aarti12@gmail.com"),
("Komal",22,5678956562,"komal21@gmail.com"),
("Riya",25,8796983267,"riya34@gmail.com"),
("Akriti",22,5678453467,"aakriti456@gmail.com");
 

set SQL_SAFE_UPDATES =0;
update employee set Address ="Allahabad" where age>19;
update employee set Address ="Varanasi" where age=19;


update employee set name="Rani" where emp_ID=103;
delete from employee where emp_ID=108;
select name,age,mobile_no;
select * from employee where age=19;
select * from employee;







