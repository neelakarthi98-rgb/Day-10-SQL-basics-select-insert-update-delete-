CREATE DATABASE mini36_db;
use mini36_db;
create table customer(customer_id int primary key,customer_name varchar(50),product varchar(50),price decimal(10,2));
insert into customer(customer_id,customer_name,product,price)values(101,'cust01','A',200),(102,'cust02','A',300),(103,'cust01','B',350),
(104,'cust03','A',150),(105,'cust02','B',100),(106,'cust03','A',500),(107,'cust01','c',600),(108,'cust03','c',100);
insert into customer(customer_id,customer_name,product,price)values(109,'cust04','C',400),(110,'cust05','A',400),(111,'cust06','c',100),(112,'cust07','A',600);
select * from customer;
select customer_name,SUM(price) as total_spend from customer group by customer_name;

SELECT 
    customer_name,
    SUM(price) AS total_spent
FROM 
    customer
GROUP BY 
    customer_name
ORDER BY 
    total_spent DESC LIMIT 5;