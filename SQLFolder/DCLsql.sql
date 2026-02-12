create database NSTI_DCL;
use NSTI_DCL;

create table students(
id int primary key,
name varchar(50),
course varchar(20));

insert into students values
(1,"Anu","BCA"),
(2,"Mohan","ADIT"),
(3,"Rahul","B.Tech");

# For read only
grant select on NSTI_DCL.students to 'viewer'@'localhost';

# Edit, Read & Modify
grant select,insert,update on NSTI_DCL.students to 'editor'@'localhost';

# Full Control
grant all privileges on NSTI_DCL.students to 'admin'@'localhost';

# To Apply all these permission
flush privileges;

select user, host from mysql.user;

show grants for 'viewer'@'localhost';
show grants for 'editor'@'localhost';
show grants for 'admin'@'localhost';

-- drop database NSTI_DCL;
