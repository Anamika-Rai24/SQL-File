select user();

select * from NSTI_college.students;

insert into NSTI_college.fee values(105,5,34000);

select * from NSTI_college.fee;


set sql_safe_updates = 0;

update NSTI_college.fee set amount = 55000 where student_id= 4;