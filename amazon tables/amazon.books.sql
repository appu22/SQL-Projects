
SELECT * FROM BOOKS;
SELECT * FROM  amazon.amazon_PRODUCT;
CREATE TABLE AMAZON.BOOKS(
B_ID INT ,
B_PRICE DOUBLE,
B_NAME varchar(15),
B_NO_OF_PAGES int,
B_AUTHOR VARCHAR(15),
primary key (B_ID)
);

insert INTO AMAZON.BOOKS (B_ID, B_PRICE, B_NAME, B_NO_OF_PAGES, B_AUTHOR) VALUES (1,450.0,'JAVA',500,'James Gosling');
insert INTO AMAZON.BOOKS (B_ID, B_PRICE, B_NAME, B_NO_OF_PAGES, B_AUTHOR) VALUES (2,550.0,'HTML',400,'Timothy John');
insert INTO AMAZON.BOOKS (B_ID, B_PRICE, B_NAME, B_NO_OF_PAGES, B_AUTHOR) VALUES (3,650.0,'JS',550,'Brendan Eich');
insert INTO AMAZON.BOOKS (B_ID, B_PRICE, B_NAME, B_NO_OF_PAGES, B_AUTHOR) VALUES (4,1500.0,'REACT',1050,'Jordan Walke ');
SELECT * FROM AMAZON.BOOKS;
ALTER TABLE AMAZON.BOOKS rename to AMAZON.Book_Details;
SELECT * FROM AMAZON.Book_Details;
ALTER TABLE AMAZON.Book_Details ADD B_EDITION varchar(15);
ALTER TABLE AMAZON.Book_Details modify B_EDITION INT;
update  AMAZON.Book_Details set  B_EDITION =3 where B_ID =4 ;

update AMAZON.Book_Details set B_PRICE = 550 where B_ID in (1,3);
update AMAZON.Book_Details set B_PRICE = 300 where B_ID in (1);
select * from  AMAZON.Book_Details  where B_ID between 1 and 3;
select * from  AMAZON.Book_Details  where B_PRICE between 300 and 750;
select sum(B_PRICE)from AMAZON.Book_Details;

select count(B_NAME) from AMAZON.Book_Details ; -- null not counted
select avg(B_PRICE) from  AMAZON.Book_Details;  -- average 

select c.B_ID,B_NAME from  AMAZON.Book_Details as c;
--  aliyas is avoid the duplicate  name it will show the original value
select avg(coustomer_order_value) as avarage_vale  from  customer.customer_details;

select min(B_PRICE) as min_vale from AMAZON.Book_Details;
select min(B_PRICE) as min_vale from AMAZON.Book_Details;
select min(B_PRICE) as min_vale from AMAZON.Book_Details;
select max(coustomer_order_value) as max_vale from customer.customer_details;

select * from AMAZON.Book_Details where B_NAME like 'J%';
select * from AMAZON.Book_Details where B_NAME like 'J%A';
select * from AMAZON.Book_Details where B_NAME like 'J%s';
select * from AMAZON.Book_Details where B_NAME like '%J_V%';
select * from AMAZON.Book_Details where B_PRICE like '_0%';





