use db;

create table customers
(
customerid int,
customername varchar(20),
city varchar(20),
address varchar(20),
postalcode varchar(20),
country varchar(20),
primary key(customerid)
);

INSERT INTO customers (customerid, customername, city, address, postalcode, country)
VALUES
(1, 'Alice Johnson', 'New York', '123 Main St', '10001', 'USA'),
(2, 'Ravi Kumar', 'Hyderabad', '45 MG Road', '500081', 'India'),
(3, 'Maria Gonzalez', 'Madrid', 'Calle Mayor 12', '28013', 'Spain'),
(4, 'Chen Wei', 'Beijing', '88 Chaoyang Ave', '100020', 'China'),
(5, 'Sophia Müller', 'Berlin', 'Unter den Linden 5', '10117', 'Germany'),
(6, 'James Smith', 'London', '221B Baker St', 'NW1 6XE', 'UK'),
(7, 'Fatima Al-Sayed', 'Dubai', 'Palm Jumeirah Villa', '00000', 'UAE'),
(8, 'Lucas Silva', 'São Paulo', 'Av Paulista 1000', '01310-100', 'Brazil'),
(9, 'Olga Ivanova', 'Moscow', 'Lenina St 23', '101000', 'Russia'),
(10, 'Hiroshi Tanaka', 'Tokyo', 'Shibuya Crossing 1', '150-0002', 'Japan');

select * from customers;

create table orders
(
orderid int,
customerid int,
employeeid int,
orderdate datetime,
shipperid int,
primary key(orderid)
);

INSERT INTO orders (orderid, customerid, employeeid, orderdate, shipperid)
VALUES
(101, 1, 5, '2024-01-15 10:30:00', 2),
(102, 3, 2, '2024-02-03 14:45:00', 1),
(103, 5, 4, '2024-02-20 09:20:00', 3),
(104, 2, 1, '2024-03-01 16:10:00', 2),
(105, 7, 3, '2024-03-12 11:00:00', 1),
(106, 4, 6, '2024-04-05 13:25:00', 2),
(107, 8, 2, '2024-04-18 15:40:00', 3),
(108, 6, 5, '2024-05-02 10:05:00', 1),
(109, 9, 4, '2024-05-15 17:50:00', 2),
(110, 10, 1, '2024-06-01 12:00:00', 3);

INSERT INTO orders (orderid, customerid, employeeid, orderdate, shipperid)
VALUES
(111, 3, 2, '2024-06-15 09:45:00', 1),
(112, 5, 4, '2024-07-02 14:20:00', 2),
(113, 7, 6, '2024-07-18 11:10:00', 3),
(114, 8, 1, '2024-08-05 16:30:00', 2),
(115, 10, 3, '2024-08-22 13:55:00', 1);

select * from orders;

select c.customerid, c.customername, c.city, o.orderid
from customers c 
left join orders o
on c.customerid = o.customerid;

select o.customerid, c.customername, c.city, o.orderid
from customers c 
right join orders o
on c.customerid = o.customerid;

select c.customerid, c.customername, c.city, o.orderid
from customers c 
inner join orders o
on c.customerid = o.customerid;

select c.customerid, c.customername, c.city, o.orderid
from customers c 
left outer join orders o
on c.customerid = o.customerid;

select o.customerid, c.customername, c.city, o.orderid
from customers c 
right outer join orders o
on c.customerid = o.customerid;

select c.customerid, c.customername, c.city, o.orderid, o.orderdate
from customers c 
left outer join orders o
on c.customerid = o.customerid
UNION
select o.customerid, c.customername, c.city, o.orderid, o.orderdate
from customers c 
right outer join orders o
on c.customerid = o.customerid;

SELECT customerid FROM customers
INTERSECT
SELECT customerid FROM orders;
