SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER new_product_in_STORES
AFTER INSERT  ON stores
FOR EACH ROW 
DECLARE 

     x int;
	 
                   
BEGIN 
                
	
      x:=:new.branchId;
   -- Insert record into audit table
     if(x=1) then
     INSERT INTO store1
     VALUES
     ( :new.branchId,
       :new.productId,
       :new.noOfproduct
     );	
	 DBMS_OUTPUT.PUT_LINE('New Value Inserted In Site 1 Store Table');
     else
	 INSERT INTO store2
     VALUES
     ( :new.branchId,
       :new.productId,
       :new.noOfproduct
     );	
	 DBMS_OUTPUT.PUT_LINE('New Value Inserted In Site 2 Store Table');
	 end if;
	 
				
        
 
     
END; 
/ 