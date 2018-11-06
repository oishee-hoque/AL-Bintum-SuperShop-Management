DROP TABLE  PAYMENT1 CASCADE CONSTRAINTS;
CREATE TABLE  PAYMENT1(
	paymentNo int, 
	branchId  int,
	paymentDate date default (sysdate) NOT NULL,
	total int,
	PRIMARY KEY(paymentNo )
);
