SET SERVEROUTPUT ON;
SET VERIFY OFF;

ACCEPT a PROMPT 'Enter Product id:';


DECLARE
	a number := &a;
	
BEGIN
	search(a);

	
END;
/