DROP TABLE GOT CASCADE CONSTRAINTS;
CREATE TABLE GOT (
	paymentNo int, 
	productId int,
	noOfProducts int,
	PRIMARY KEY(productId, paymentNo)
);