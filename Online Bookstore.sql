create database Bookstore_Management;
use Bookstore_Management;

# 2. Create tables
create table Customers(
customer_id int primary key,
customer_name varchar(100),
email varchar(100),
city varchar(100),
registration_date date);

create table Authors(
author_id int primary key,
author_name varchar(50),
country varchar(100));

create table Categories(
category_id int primary key,
category_name varchar(50));

create table Books(
book_id int primary key,
book_title varchar(100),
price int,
author_id int,
category_id int,
foreign key (author_id) references Authors(author_id),
foreign key (category_id) references Categories(category_id)
);

create table Orders(
order_id int primary key,
customer_id int,
order_date date,
total_amount int,
foreign key (customer_id) references Customers(customer_id)
);

create table Order_Details(
order_detail_id int primary key,
order_id int,
book_id int,
quantity tinyint,
foreign key (order_id) references Orders(order_id),
foreign key (book_id) references Books(book_id)
);

# 3. Alter the Customers
alter table Customers add contact_number bigint;

# 4. Insert values
insert into Customers values
(1,'Amit','amit@gmail.com','Delhi','2024-01-10','9876543210'),
(2,'Riya','riya@gmail.com','Mumbai','2024-02-12','9876543222'),
(3,'Neha','neha@gmail.com','Delhi','2024-03-15','9876543333'),
(4,'Rahul','rahul@gmail.com','Pune','2024-04-01','9876544444'),
(5,'Ankit','ankit@gmail.com','Delhi','2024-04-10','9876545555');

insert into Authors values
(1,'Robert Martin','USA'),
(2,'James Gosling','USA'),
(3,'Guido van Rossum','Netherlands'),
(4,'Dennis Ritchie','USA'),
(5,'Bjarne Stroustrup','Denmark');

insert into Categories values
(1,'Programming'),
(2,'Database'),
(3,'Networking'),
(4,'AI'),
(5,'Web Development');

insert into Books values
(1,'Clean Code',600,1,1),
(2,'Java Basics',450,2,1),
(3,'Python Guide',550,3,1),
(4,'C Programming',400,4,1),
(5,'AI Fundamentals',800,5,4);

insert into Orders values
(1,1,'2024-05-01',1200),
(2,2,'2024-05-03',450),
(3,1,'2024-05-05',800),
(4,3,'2024-05-07',600),
(5,1,'2024-05-10',400);

insert Order_Details values
(1,1,1,2),
(2,2,2,1),
(3,3,5,1),
(4,4,1,1),
(5,5,4,1);

# 5.Update the price 
update Books
set price = price * 1.10
where category_id = (
    select category_id from Categories
    where category_name = 'Programming'
);

# 6. Delete customers who have never placed any orders 
delete from Customers
where customer_id not in (
select distinct customer_id from Orders);

# 7. Display the total number of books in the store
select count(*) as total_books from Books;

# 8. Find the highest and lowest priced book
select max(price) as Highes_price from Books;

select min(price) as Lowest_marks from Books;

# 9. Display the average order value
select avg(total_amount) as Avg_order_value from Orders;

# 10. Display customer names in UPPERCASE along with their cities
select upper(customer_name) as name, city from Customers;

# 11. Display the total quantity of books sold. 
select sum(quantity) as Total_book_sold from Order_Details;

# 12. INNER JOIN:
select c.customer_name, b.book_title, o.order_date
from Orders o
inner join Customers c on o.customer_id = c.customer_id
inner join Order_Details od on o.order_id = od.order_id
inner join Books b on od.book_id = b.book_id;

# 13. LEFT JOIN:
select c.customer_name, o.order_id
from Customers c
left join Orders o on c.customer_id = o.customer_id;

# 14. RIGHT JOIN:
select b.book_title, od.order_id
from Order_Details od
right join Books b on od.book_id = b.book_id;

# 16. CROSS JOIN: 
select a.author_name, c.category_name
from Authors a
cross join Categories c;

# 18. total orders per customer
select customer_id, count(*) as total_orders from Orders group by customer_id;

# 17,19,20,21 Pending











