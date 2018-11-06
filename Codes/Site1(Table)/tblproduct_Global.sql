DROP TABLE PRODUCT CASCADE CONSTRAINTS;
CREATE TABLE PRODUCT (
	productId int, 
	pname varchar2(30), 
	price int,
	catagory varchar2(30),
	numberOfProduct int,
	PRIMARY KEY(productId )
);