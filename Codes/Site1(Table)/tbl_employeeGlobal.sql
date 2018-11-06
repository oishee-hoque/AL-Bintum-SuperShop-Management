
DROP TABLE Employee CASCADE CONSTRAINTS;
CREATE TABLE EMPLOYEE(
	employeeId int, 
	ename varchar2(30), 
	sex varchar2(30),	
	age int, 
	phoneNo varchar2(30),
	catagory varchar2(30),
	branchId int,
        PRIMARY KEY(employeeId )
); 