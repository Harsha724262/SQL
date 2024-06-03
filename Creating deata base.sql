create database test;
create table customer
(cust_id int,
first_name varchar(150),
last_name varchar(200),
city varchar(150),
address varchar(150),
country varchar(150));

#northwind test table

create table testtable as 
select companyname, contactname
from customer;
select * from test;
alter table customer
add email_id varchar(150);
select * from customer;
create database Human;
create table department
(dept_id varchar(150),
department_name varchar(200),
department_head varchar(200),
location varchar(150)); 
alter table departmenttesttable
add city varchar(200);
select * from department;
# TEST DATA BASE 
create table persons 
(id int not null primary key ,
lastname varchar(255),
firstname varchar(255),
age int, check (age>=18));
insert into persons ( ID, firstname, lastname ,age)
values('1','Harsh','Baliger','22'),
	('2','Mahesh', 'Honnihalli','22');
    
    DELETE FROM persons where id = '1';
    create table consumer
    (id int primary key,
    firstname varchar(250),
    lastname varchar(250),
    age int);
    insert into consumer (id, firstname, lastname, age)
    values
    ('1', 'Sahana', 'Bangodi', '20'),
	('2', 'Suraj', 'Bangodi', '21'),
    ('3', 'Sumant', 'Bangodi', '12'),
    ('4', 'Babu', 'Babaji', '27'),
    ('5', 'Daya', 'Navalur', '27'),
    ('6', 'Akshay', 'Karale', '28'),
    ('7', 'Subhas', 'Angadi', '30'),
    ('8', 'Vittal', 'Hattiholi', '20'),
    ('9', 'Subhas', 'Bangodi', '50'),
    ('10', 'Jyothi', 'Bangodi', '38'),
    ('11', 'Tarun', 'Kavadi', '20'),
    ('12', 'Rithik', 'Vanakudare', '10'),
    ('13', 'Yeshmith', 'Timmapur', '9'),
    ('14', 'Laxmi', 'Vanakudare', '8'),
    ('15', 'Nidhi', 'Upadhye', '6'),
    ('16', 'Aadhya', 'Upadhye', '8');

ALTER TABLE consumer
ALTER City SET DEFAULT 'Sandnes';
 insert into consumer (id, firstname, lastname, age)
    values
    ('32', 'Sahana', 'Bangodi', '20'),
	('26', 'Suraj', 'Bangodi', '21');
    select * from consumer;
create table sales
 (id int primary key,
    firstname varchar(250),
    lastname varchar(250),
    age int);
    insert into sales(id,firstname,lastname,age)
    values
     ('1', 'Sahana', 'Bangodi', '20'),
	('2', 'Suraj', 'Bangodi', '21'),
    ('3', 'Sumant', 'Bangodi', '12'),
    ('4', 'Babu', 'Babaji', '27'),
    ('5', 'Daya', 'Navalur', '27'),
    ('6', 'Akshay', 'Karale', '28'),
    ('7', 'Subhas', 'Angadi', '30'),
    ('8', 'Vittal', 'Hattiholi', '20'),
    ('9', 'Subhas', 'Bangodi', '50'),
    ('10', 'Jyothi', 'Bangodi', '38'),
    ('11', 'Tarun', 'Kavadi', '20'),
    ('12', 'Rithik', 'Vanakudare', '10'),
    ('13', 'Yeshmith', 'Timmapur', '9'),
    ('14', 'Laxmi', 'Vanakudare', '8'),
    ('15', 'Nidhi', 'Upadhye', '6'),
    ('16', 'Aadhya', 'Upadhye', '8');
    
#northwind datbase
CREATE VIEW Brazil_Customers AS
SELECT CompanyName, ContactName
FROM Customer
WHERE Country = 'Brazil';
select * from Brazil_customers;


    
