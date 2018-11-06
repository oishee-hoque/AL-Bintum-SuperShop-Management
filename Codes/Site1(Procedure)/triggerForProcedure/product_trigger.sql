SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER display_price_changes 
AFTER UPDATE ON product 
FOR EACH ROW 
DECLARE 
   price_diff number; 
BEGIN 
   price_diff := :NEW.price  - :OLD.price; 
   dbms_output.put_line('Old Price of ' || :New.pname || ' : ' ||  :OLD.price || ' BDT'); 
   dbms_output.put_line('New Price of ' || :New.pname || ' : ' ||:NEW.price || ' BDT'); 
   dbms_output.put_line('Price difference: ' || price_diff); 
END; 
/ 