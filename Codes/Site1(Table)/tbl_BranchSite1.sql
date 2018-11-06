DROP TABLE BRANCH1 CASCADE CONSTRAINTS;

CREATE TABLE BRANCH1(
	branchId int, 
	address varchar2(30), 
	district varchar2(30),
	PRIMARY KEY(branchId )
);