create database Hospital;
use Hospital;

create table Patients(
patients_id int primary key,
patients_name varchar(50),
age int,
gender varchar(10),
city varchar(50));

create table Doctors(
doctor_id int primary key,
doctor_name varchar(50),
specialization varchar(50));

create table Appointments(
appointment_id int primary key,
patients_id int,
doctor_id int,
appointment_date date,
foreign key (patients_id) references Patients(patients_id),
foreign key (doctor_id) references Doctors(doctor_id)
);
insert into Patients values
(1,"Akriti",19,"Female","Kanpur"),
(2,"Priya",21,"Female","Ballia"),
(3,"Rahul",22,"Male","Mumbai"),
(4,"Sanskar",23,"Male","Delhi"),
(5,"Mahesh",25,"Male","Prayagraj");

insert into Doctors values
(101,"Dr.Radha","Cardiologist"),
(102,"Dr.Sakshi","Physiotherepist"),
(103,"Dr.Maya","Neurologist");
insert into Doctors values(104,"Dr.Mohan","Surgeon");

insert into Appointments values
(1001,1,101,"2025-01-10"),
(1002,1,102,"2025-01-11"),
(1003,2,103,"2025-02-04"),
(1004,4,101,"2025-12-12");

# Inner join-Show patients along with 
select p.patients_name,
d.doctor_name,
d.specialization,
a.appointment_date
from Appointments a
inner join Patients p on a.patients_id=p.patients_id
inner join Doctors d on a.doctor_id=d.doctor_id;

select * from Patients
inner join Appointments
on Patients.patients_id=Appointments.patients_id;

select *
from Doctors
left join Appointments
on Doctors.doctor_id = Appointments.doctor_id;

select *
from Appointments
right join Doctors
on Appointments.doctor_id = Doctors.doctor_id;

select p.patients_name,d.specialization
from Patients p cross join Doctors d;









