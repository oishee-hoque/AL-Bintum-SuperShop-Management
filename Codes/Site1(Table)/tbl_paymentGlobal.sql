DROP TABLE PAYMENT CASCADE CONSTRAINTS;
CREATE TABLE PAYMENT (
	paymentNo int, 
	branchId  int,
	paymentDate date default (sysdate) NOT NULL,
	total int,
	PRIMARY KEY(paymentNo )
);
