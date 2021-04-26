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
insert INTO amazon.product_details (P_ID , P_NAME,P_PRICE) VALUES (3,'MOBILE REALME',10000.0);
insert INTO amazon.product_details (P_ID , P_NAME,P_PRICE) VALUES (4,'MOBILE SAM ' ,25000.0);




