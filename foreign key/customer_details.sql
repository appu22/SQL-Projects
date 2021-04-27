create database CUSTOMER;
create table customer_details(
	CUSTOMER_IDcustomer_detailscustomer_detailscustomer_details int ,
	CUSTOMER_Name varchar(15),
	CUSTOMER_Number bigint,
	CUSTOMER_Address varchar(200)
    
);
select * from customer_details;

desc customer_details;

create table customer_order(
customer_order_ID int,
customer_order_Name varchar(15),
customer_order_Price double

);

select * from customer_order;

desc customer_order;
show columns from customer_order;

create table customer_transaction(
transaction_Id int ,
transaction_Time time unique,
transaction_Amount double check (transaction_Amount>1),
transaction_Type varchar(10) not null,
transaction_status boolean,
primary key (transaction_Id)
);
desc customer_transaction;

alter table customer_transaction modify transaction_status boolean  default false;
desc customer_transaction;
alter table customer_transaction modify transaction_status varchAR(20)  default false;
desc customer_transaction;
alter table customer_transaction add transaction_Addreses varchAR(20)  not null;
alter table customer_transaction drop transaction_Addreses;
desc customer_transaction;
show tables;

create table  product(
product_id int,
product_Name varchar(15),
product_price double,
primary key (product_id)
);
show tables;
select * from product;
drop table  product;
create database student;

drop database student;

alter table product rename to product_Details;
alter table product_details rename column product_price to productPRice;
desc product_details;
alter table product_details rename column product_price to product_Price;
insert into product_details (product_id,product_Name,productPRice) values (1,'tv',15000.0);
insert into product_details (product_id,product_Name,productPRice) values (2,"watch",4500.0);
insert into product_details (product_id,product_Name,productPRice) values (3,'MObile',10000.0);
-- insert into product_details values (4,'Bike',450000.0),(5,'Sanitizer',50);  
insert into product_details (product_id,productPRice) values (5,15000.0);
select * from product_details;

-- delete the table records ------------------------------
truncate product_details;
select * from product_details;
-- -------------------------------------------------------- 








