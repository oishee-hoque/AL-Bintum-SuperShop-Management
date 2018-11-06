
DROP TABLE Employees1 CASCADE CONSTRAINTS;
CREATE TABLE EMPLOYEES1 (
	employeeId int, 
	ename varchar2(30), 
	sex varchar2(30),	
	age int, 
	phoneNo varchar2(30),
	catagory varchar2(30),
	branchId int,
        PRIMARY KEY(employeeId )
); 