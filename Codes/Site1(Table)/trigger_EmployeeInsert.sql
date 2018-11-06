SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER new_employee_in_Store
AFTER INSERT  ON Employee
FOR EACH ROW 
DECLARE 

     x int;
	 
                   
BEGIN 
                
	
      x:=:new.branchId;
   -- Insert record into audit table
     if(x=1) then
     INSERT INTO Employees1
     VALUES
     ( :new.employeeId, 
	   :new.ename, 
	   :new.sex,	
	   :new.age, 
	   :new.phoneNo,
	   :new.catagory,
	   :new.branchId
     );	
	 DBMS_OUTPUT.PUT_LINE('New Value Inserted In Site 1 EmployeeTable');
     else
	 INSERT INTO Employees2
     VALUES
     ( :new.employeeId, 
	   :new.ename, 
	   :new.sex,	
	   :new.age, 
	   :new.phoneNo,
	   :new.catagory,
	   :new.branchId
     );	
	 DBMS_OUTPUT.PUT_LINE('New Value Inserted In Site 2 Employee Table');
	 end if;
	 
				
        
 
     
END; 
/ 