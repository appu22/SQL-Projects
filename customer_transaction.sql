select * from customer_transaction;
DESC customer_transaction;
INSERT INTO customer_transaction (transaction_Id,transaction_Time,transaction_Amount,transaction_Type,transaction_status)VALUES(5,'06:00:00',2500.0,'PHONE PAY','ONE');
INSERT INTO customer_transaction (transaction_Id,transaction_Time,transaction_Amount,transaction_Type,transaction_status)VALUES(6,'07:00:00',500.0,'GOOGLE PAY','THREE');
INSERT INTO customer_transaction (transaction_Id,transaction_Time,transaction_Amount,transaction_Type,transaction_status)VALUES(8,'09:40:05',3000.0,'NET PAY','FOUR');
INSERT INTO customer_transaction (transaction_Id,transaction_Time,transaction_Amount,transaction_Type,transaction_status)VALUES(9,'09:50:05',2500.0,'NET PAY','FOUR');
INSERT INTO customer_transaction (transaction_Id,transaction_Time,transaction_Amount,transaction_Type,transaction_status)VALUES(10,'11:40:00',500.0,'CHECK',NULL);
INSERT INTO customer_transaction (transaction_Id,transaction_Time,transaction_Amount,transaction_Type,transaction_status)VALUES(7,'10:40:05',3000.0,'CHECK','GOUR');
SELECT current_timestamp();
SELECT transaction_Id, transaction_Amount  from customer.customer_transaction;

SELECT DISTINCT transaction_Amount FROM customer.customer_transaction;

SELECT * FROM customer.customer_transaction WHERE  transaction_Id=6;
SELECT * FROM customer.customer_transaction WHERE  transaction_Id !=6;
SELECT * FROM customer.customer_transaction WHERE  transaction_Amount = 3000;
SELECT * FROM customer.customer_transaction WHERE  transaction_Amount = 3000 && transaction_Type='NET PAY';
SELECT * FROM customer.customer_transaction WHERE  transaction_Amount = 2500 && transaction_Type='PHONE PAY';
SELECT * FROM customer.customer_transaction WHERE 
 transaction_Amount > 2500 && 
 transaction_Type='PHONE PAY' OR
 transaction_Type='GOOGLE PAY';
 SELECT * FROM customer_transaction WHERE transaction_status IS NULL ;
 SELECT * FROM customer_transaction limit 3;
 SELECT * FROM customer_transaction order by transaction_tYPE;
 SELECT * FROM customer_transaction order by transaction_ID DESC;
 SELECT * FROM customer_transaction order by transaction_TIME ASC;
 UPDATE customer_transaction SET transaction_Amount = 600 where transaction_Id = 8; 
 select * from customer_transaction where transaction_Id=8;
 update customer_transaction set transaction_Type ='UPI' ,transaction_status = 'FOUR' WHERE transaction_Id = 7;  
SELECT * FROM customer_transaction WHERE transaction_Id=7;

SELECT * FROM customer_transaction WHERE transaction_Amount= 800 ;

UPDATE customer_transaction set transaction_Amount=800 
 where transaction_Id in ((select transaction_Id from customer_transaction
 WHERE transaction_Amount <1000));


UPDATE customer_transaction set transaction_Amount=800 
 where transaction_Id in (1,6,8,10);
 
 (select transaction_Id from customer_transaction
 WHERE transaction_Amount <1000);
-- 18/04/2021
alter table customer.customer_details add coustomer_order_value double check ( coustomer_order_value > 0);
select * from customer_details;
insert into customer_details (CUSTOMER_ID,CUSTOMER_Name,CUSTOMER_Number,CUSTOMER_Address
,coustomer_order_value) values (5,'ram',9848808685,'belagavi',8);

insert into customer_details (CUSTOMER_Name,CUSTOMER_Number,CUSTOMER_Address
,coustomer_order_value) values ('pratham',876543219,'chandralayout',100);

update customer_details set CUSTOMER_Name = 'Appu' where CUSTOMER_ID =5;

select * from  customer.customer_details where CUSTOMER_Address in ('bangalauru','belagavi','mugalkhod');
update customer_details set coustomer_order_value='vishnu' where CUSTOMER_ID=3;

-- -- ------ between --and 
select * from  customer.customer_details  where coustomer_order_value between 10  and 100;

select * from  customer_details  where CUSTOMER_ID between 1  and 4;

select sum(coustomer_order_value)from customer.customer_details;

--  count will  ignore the null value 
select count(CUSTOMER_Name) from customer.customer_details;
select avg(coustomer_order_value) from  customer.customer_details;

select c.CUSTOMER_ID,CUSTOMER_Name from  customer_details as c;
--  aliyas is avoid the name it will show the original value
select avg(coustomer_order_value) as avarage_vale  from  customer.customer_details;

select min(coustomer_order_value) as min_vale from customer.customer_details;
select max(coustomer_order_value) as max_vale from customer.customer_details;
 --  wild card opeartors % _ 
select * from customer.customer_details where CUSTOMER_Name like 'v%';
select * from customer.customer_details where CUSTOMER_Name like '%am%';
select * from customer.customer_details where CUSTOMER_Name like 'r_m%';
select * from customer.customer_details where CUSTOMER_Address like 'b______i%';
select * from customer_details where coustomer_order_value like '_0%';

delete  from customer.customer_details where  CUSTOMER_Name ='pratham';







select  * from  customer_details_new ;








-- alter table customer.customer_details add coustomer_order_value double check ( coustomer_order_value > 0);
-- alter table customer.customer_details modify CUSTOMER_ID (primary key );


