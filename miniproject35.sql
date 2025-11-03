create database mini35_db;
use mini35_db;
create table product(product_id int primary key,product_name varchar(50),stock int);
describe product;
insert into product(product_id,product_name,stock)values(101,'productA',40),(102,'PRODUCT B',30),(103,'PRODUCT C',20),
            (104,'PRODUCT D',10);
Select * from product;
update product set stock=stock-7 where product_name='product B';
select * FROM PRODUCT;
INSERT into product(product_id,product_name,stock)values(106,'product E',10);
select * FROM product;
delete  from product where product_id=105;
update  product set product_id=105 where product_name='product E';
select * from product;