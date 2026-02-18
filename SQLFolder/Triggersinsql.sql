#Triggers 
create database Showroom;
use Showroom;

CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100)
);

create table emp_trigger(
log int auto_increment primary key,
employee_id int,
messege varchar(100),
created_at timestamp default current_timestamp);

delimiter $$

create trigger after_insert 
after insert on employees
for each row
begin
	insert into emp_trigger(employee_id,messege)
    values (new.employee_id,concat('New employee added:',new.name));
end$$

delimiter ;

insert into employees(name,department)
values("Priya","Admin");

select * from emp_trigger;

delimiter $$
create trigger after_delete
after delete on employees
for each row
begin
	insert into emp_trigger(employee_id,messege)
    values (old.employee_id,concat('employee deleted: ',old.name));
end$$

delimiter ;

delete from employees where employee_id=1;

delimiter $$
create trigger after_update
after update on employees
for each row
begin
	insert into emp_trigger(employee_id,messege)
    values (new.employee_id,concat('employee update: ',old.name,"new name",new.name));
end$$

delimiter ;

  
  update employees 
  set name = "Shejal"
  where employee_id = 2;
  
  
  
  select * from emp_trigger;