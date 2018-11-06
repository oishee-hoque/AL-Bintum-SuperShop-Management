DROP TABLE BRANCH2 CASCADE CONSTRAINTS;

CREATE TABLE BRANCH2(
	branchId int, 
	address varchar2(30), 
	district varchar2(30),
	PRIMARY KEY(branchId )
);