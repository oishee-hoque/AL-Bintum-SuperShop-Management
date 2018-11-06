DROP TABLE BRANCH CASCADE CONSTRAINTS;

CREATE TABLE BRANCH(
	branchId int, 
	address varchar2(30), 
	district varchar2(30),
	PRIMARY KEY(branchId )
);