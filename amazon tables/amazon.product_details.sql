create table AMAZON.Product_Details(
P_ID int ,
P_NAME VARCHAR(15),
P_PRICE double ,
primary key (P_ID)
);
SELECT * FROM AMAZON.Product_Details;
USE AMAZON;
DESC AMAZON.product_details;
insert INTO amazon.product_details (P_ID , P_NAME,P_PRICE) VALUES (1,'MOBILE',15000.0);
insert INTO amazon.product_details (P_ID , P_NAME,P_PRICE) VALUES (2,'MOBILE MI ',20000.0);
insert INTO amazon.product_details (P_ID , P_NAME,P_PRICE) VALUES (5,'MOBILE MI ',6000.0);
insert INTO amazon.product_details (P_ID , P_NAME,P_PRICE) VALUES (6,'MOBILE MI ',8000.0);
insert INTO amazon.product_details (P_ID , P_NAME,P_PRICE) VALUES (7,'MOBILE MI ',8000.0);
insert INTO amazon.product_details (P_ID , P_NAME,P_PRICE) VALUES (3,'MOBILE REALME',1000.0);
insert INTO amazon.product_details (P_ID , P_NAME,P_PRICE) VALUES (4,'MOBILE SAM ' ,25000.0);
--  group
select count(P_ID), P_NAME from amazon.product_details group by P_NAME;
select count(P_ID), P_PRICE from amazon.product_details group by P_PRICE;

SELECT AVG(P_PRICE),P_NAME FROM amazon.product_details group by P_NAME;

SELECT SUM(P_PRICE),P_ID,P_NAME FROM amazon.product_details group by P_NAME HAVING sum(P_PRICE)>9000;
SELECT COUNT(P_ID),P_NAME FROM amazon.product_details group by P_NAME HAVING COUNT(P_ID)>2 order by P_NAME;

CREATE USER 'appu'@'localhost' IDENTIFIED BY 'appu1234';
GRANT ALL PRIVILEGES ON * . * TO 'appu'@'localhost';
SHOW GRANTS FOR 'appu'@'localhost';

 -- GRANT ALL PRIVILEGES ON amazon.* TO 'appu'@'localhost';

select * from amazon.product_details where P_PRICE=(select max(P_PRICE) from amazon.product_details) ;
select * from amazon.product_details where P_PRICE between 
(select min(P_PRICE)from amazon.product_details ) and (select max(P_PRICE) from amazon.product_details);
select * from amazon.product_details where P_PRICE=(select max(P_PRICE) from amazon.product_details) 
and P_PRICE =(select min(P_PRICE) from amazon.product_details);



