SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER insert_into_Branch
AFTER INSERT  ON Branch
FOR EACH ROW 
DECLARE 

     x int;
	 
                   
BEGIN 
                
	
      x:=:new.branchId;
   -- Insert record into audit table
     if(x=1) then
     INSERT INTO Branch1
     VALUES
     ( :new.branchId, 
	   :new.address, 
	   :new.district
     );	
	 DBMS_OUTPUT.PUT_LINE('New Value Inserted In Site 1 Branch Table');
     else
	 INSERT INTO Branch2
     VALUES
     ( :new.branchId, 
	   :new.address, 
	   :new.district
     );	
	 DBMS_OUTPUT.PUT_LINE('New Value Inserted In Site 2 Branch Table');
	 end if;
	 
				
        
 
     
END; 
/ 