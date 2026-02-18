create database Bank_Account;
use Bank_Account;

create table Account1(
id int primary key,
name varchar(50),
balance int);

insert into Account1 values
(1,'Anjli',5000),
(2,'Rahul',6000),
(3,'Vivan',4000),
(4,'Mohan',1000);

start transaction;

update Account1
set balance=balance + 1000
where id=4;

update Account1
set balance=balance - 1000
where id=2;

commit;

select * from Account1;

# Roll back procedure
delimiter $$

create procedure motransations()
begin
start transaction;
update Account1
set balance=balance -1000
where id=3;

if(select balance from Account1 where id=3)<0 then 
rollback;
signal sqlstate '45000'
set message_text ='Insufficient balance.';
end if;
update Account1 set balance=balance + 1000
where id=2;

commit;

end $$

delimiter ;

select * from Account1;

call motransations;

# Apply multiple tranaction using single procedure and savepoint

delimiter $$
create procedure TransferMoney(
in from_accnt int,
in to_accnt int,
in transfer_amount int)

begin
start transaction;
update Account1
set balance=balance - transfer_amount
where id=from_accnt;

if(select balance from Account1 where id=from_accnt)<0 then 
rollback;
signal sqlstate '45000'
set message_text ='Insufficient balance.';
end if;
update Account1
set balance=balance + transfer_amount
where id=to_accnt;

commit;

end $$

delimiter ;

call TransferMoney(2,4,1500);

select * from Account1;





