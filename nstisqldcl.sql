create database NSTI_College;
use NSTI_College;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    course VARCHAR(50)
);
CREATE TABLE fee (
    fee_id INT PRIMARY KEY,
    student_id INT,
    amount INT
);
INSERT INTO students VALUES
(1, 'Amit', 'BCA'),
(2, 'Neha', 'MCA'),
(3, 'Rahul', 'B.Tech');

INSERT INTO fee VALUES
(101, 1, 30000),
(102, 2, 35000),
(103, 3, 40000);

create user 'students'@'localhost' identified with mysql_native_password by 'std@123';

create user 'accountant'@'localhost' identified with mysql_native_password by 'acc@123';

create user 'ppl'@'localhost' identified with mysql_native_password by 'ppl@123';

#Read only for students
grant select on NSTI_College.students to 'students'@'localhost';

# Read and Update
grant select, insert,update on NSTI_college.fee to 'accountant'@'localhost';

#All Permission
grant all privileges on NSTI_college.* to 'ppl'@'localhost';

flush privileges;

# Show all Permission
show grants for 'students'@'localhost';
show grants for 'ppl'@'localhost';

select user();

#Revoke permission
revoke insert on nsti_college.fee from 'accountant'@'localhost';
revoke update on nsti_college.fee from 'accountant'@'localhost';
revoke select on nsti_college.students from 'accountant'@'localhost';
flush privileges;

revoke select on nsti_college.students from 'students'@'localhost';

