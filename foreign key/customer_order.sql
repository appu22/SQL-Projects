SELECT * FROM customer.customer_details;
INSERT INTO customer_details (CUSTOMER_ID, CUSTOMER_Name, CUSTOMER_Number, CUSTOMER_Address, coustomer_order_value)
VALUES (1,'APPU','8217237037','MALLESHWARAM',2500.0);

ALTER TABLE  customer_details modify CUSTOMER_ID INT primary key;
ALTER table customer_details RENAME COLUMN coustomer_order_value TO COUSTOMER_ORDER_VALUE;
UPDATE CUSTOMER_DETAILS SET  COUSTOMER_ORDER_VALUE=500.0 WHERE CUSTOMER_ID = 2;
update customer_details set COUSTOMER_ORDER_VALUE =1000.0 where CUSTOMER_ID=3;
update customer_details set COUSTOMER_ORDER_VALUE =500.0 where CUSTOMER_ID=4;
select * from customer_details;
DESC customer_details;