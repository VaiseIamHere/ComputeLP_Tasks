create database company;
use company;

create table Orders(
	order_id int primary key,
    customer_id int not null,
    product_id int not null,
    quantity int not null,
    order_date date not null
);

create table Products(
	product_id int primary key,
    product_name varchar(50),
    price decimal not null
);

insert into Products
values
(1, "Oil", 50),
(2, "Shampoo", 10),
(3, "Wheat" ,100),
(4, "Rice", 10),
(5, "Lays", 5),
(6, "Pepsi", 110),
(7, "Pen", 5),
(8, "Book", 30),
(9, "Laptop", 1000);

insert into Orders 
values
(1, 20, 5, 12, '2024-08-30');

insert into Orders
values
(2, 20, 8, 10, '2024-09-01'),
(3, 20, 5, 12, '2024-08-27'),
(4, 2, 2, 1, '2023-09-01'),
(5, 17, 1, 1, '2022-09-01'),
(6, 10, 7, 3, '2024-09-02'),
(7, 10, 9, 100, '2020-12-25'),
(8, 10, 7, 3, '2024-09-02'),
(9, 100, 7, 3, '2024-09-02'),
(10, 77, 3, 3, '2024-01-02'),
(11, 98, 4, 3, '2023-12-02'),
(12, 110, 6, 54, '2024-01-01');

select * from Orders;
select * from Products;

insert into Products values (10, "Phone", 1);
insert into Orders values (13, 23, 8, 9, '2023-09-15');

insert into Orders
values
(14, 20, 1, 15, '2023-08-15'),
(15, 20, 5, 150, '2023-07-15'),
(16, 20, 9, 5, '2023-06-15');