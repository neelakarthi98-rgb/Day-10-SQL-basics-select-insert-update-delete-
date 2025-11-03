CREATE database company_db;
USE company_db;

create table department(dept_id int primary key,
                        dep_name varchar(50),
                        location varchar(20));
 show tables;    
 describe table department;
 insert into department(dept_id,dep_name,location)values
						(1,'HR','bengaluru'),
                        (2,'IT','hydrabad'),
                        (3,'finance','mumbai'),
                        (4,'marketing','mumbai');
select * from department;
create table employees(emp_id int primary key,name varchar(20),age int,gender char(1),salary decimal(10,2),
dept_id int,hiredate date,foreign key(dept_id) references department(dept_id));
insert into employees(emp_id,name,age,gender,salary,dept_id,hiredate)values
(101,'Arjun',28,'M',45000,2,'2020-05-10'),
(102,'Priya',31,'F',52000,1,'2019-03-15'),
(103,'Karthick',26,'M',40000,2,'2021-07-22'),
(104,'Divya',29,'F',60000,3,'2018-11-12'),
(105,'sneha',33,'F',70000,4,'2017-01-05');
select* from employees;
SELECT *
FROM employees
WHERE age = (SELECT MIN(age) FROM employees);
select count(*) from employees;
SELECT dep_name, COUNT(*) as dep_count
FROM department;
SELECT e.name, d.dep_name, e.salary
FROM employees e
JOIN department d ON e.dept_id = d.dept_id;
SELECT d.dep_name, COUNT(e.emp_id) AS employee_count
FROM department d
 JOIN employees e ON d.dept_id = e.dept_id
GROUP BY d.dep_name;
select name,salary from employees where gender='F' and salary>45000;
create database day10_db;
use day10_db;
drop table employees;
create table employees(id int primary key,name varchar(20),department varchar(20),salary decimal(10,2));
insert into employees(id,name,department,salary)values(1,'Alice','engineering',70000),
                                                      (2,'Bob','Marketing',60000);
select * from employees;
UPDATE employees SET salary=75000 
				WHERE name='Alice';
select * from employees;
Delete from employees where name='Bob';
select * from employees;




