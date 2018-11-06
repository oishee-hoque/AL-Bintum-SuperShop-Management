DROP TABLE PAYMENT2 CASCADE CONSTRAINTS;
CREATE TABLE PAYMENT2(
	paymentNo int, 
	branchId  int,
	paymentDate date default (sysdate) NOT NULL,
	total int,
	PRIMARY KEY(paymentNo )
);
