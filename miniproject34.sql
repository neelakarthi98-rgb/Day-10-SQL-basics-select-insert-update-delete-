create database mini34_db;
use mini34_db;

create table sales(order_id int primary key,product varchar(20),quantity int,price decimal(5,2),region varchar(10));
ALTER TABLE sales
MODIFY price DECIMAL(10,2);

describe sales;
insert into sales(order_id,product,quantity,price,region)values(1,'A',2,500,'EAST'),(2,'B',4,1000,'SOUTH'),(3,'C',6,1500,'EAST'),
                   (4,'D',5,1250,'EAST'),(5,'E',3,750,'EAST'),(6,'F',2,500,'SOUTH');
select* from sales;
select SUM(quantity*price) as total_revenue from sales;
insert into sales(order_id,product,quantity,price,region)values(7,'A',6,250,'East'),(8,'c',7,800,'south'),(9,'F',7,2000,'East');
select* from sales;
select * from sales where region='East' and quantity>5 order by price desc;
select product, avg(price) as average from sales group by product;

                