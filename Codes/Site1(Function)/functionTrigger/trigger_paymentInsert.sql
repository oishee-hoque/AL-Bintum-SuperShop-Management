SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER new_payment_in_STORES
AFTER INSERT  ON payment
FOR EACH ROW 
DECLARE 

     x int;
	 
                   
BEGIN 
                
	
      x:=:new.branchId;
   -- Insert record into audit table
     if(x=1) then
     INSERT INTO payment1
     VALUES
     ( :new.paymentNo, 
	   :new.branchId,
	   :new.paymentDate,
	   :new.total
     );	
	 DBMS_OUTPUT.PUT_LINE('New Value Inserted In Site 1 Payment Table');
     else
	 INSERT INTO payment2
     VALUES
     ( :new.paymentNo, 
	   :new.branchId,
	   :new.paymentDate,
	   :new.total
     );	
	 DBMS_OUTPUT.PUT_LINE('New Value Inserted In Site 2 Payment Table');
	 end if;
	 
				
        
 
     
END; 
/ 