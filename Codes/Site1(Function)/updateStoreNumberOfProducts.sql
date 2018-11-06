SET SERVEROUTPUT ON;
SET VERIFY OFF;

ACCEPT a PROMPT 'Enter BranchId id:';
ACCEPT b PROMPT 'Enter Product Id :';
ACCEPT c PROMPT 'Enter Product Quantity :';
DECLARE
	a number := &a;
	b number := &b;
	c number :=&c;

BEGIN
        
                       update stores
	     set noOfProduct=c
	     where productid=a and stores.branchId=b;

	
END;
/