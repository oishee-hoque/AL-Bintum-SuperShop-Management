SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER update_product_in_Product
AFTER Update  ON product
FOR EACH ROW 
DECLARE 

     x int;
	 
                   
BEGIN 
                
	
      x:=:new.branchId;
   -- Insert record into audit table
     if(x=1) then
     update store1
     set numberOfproducts=:new.noOfproduct
     where  productId=:new.productId and branchId=:new.branchId;
	 DBMS_OUTPUT.PUT_LINE('New Value Updated In Site 1 Store Table');
     else
	  update store2
      set numberOfproducts=:new.noOfproduct
      where  productId=:new.productId and branchId=:new.branchId;
   	
	 DBMS_OUTPUT.PUT_LINE('New Value Updated In Site 2 Store Table');
	 end if;
	 
				
        
 
     
END; 
/ 