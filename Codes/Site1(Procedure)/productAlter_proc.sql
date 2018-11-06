create or replace procedure productAlter(tid IN int,pid in int)
	is
	newP product.price%type;
	v_id product.productId%type ;

	cursor productAlter_cur is
		select productid,price from product;


begin
	
open productAlter_cur ;
	loop
		fetch productAlter_cur into v_id , newP;
		exit when productAlter_cur %notfound;

			if newP <pid
			then
			--tid:=(tid / 100.00);
			newP := newP + ( newP * tid / 100);
			Update Product set price =newP where productId=v_id;
			--DBMS_OUTPUT.PUT_LINE(TO_CHAR(total ));se
			end if;
		
		end loop;
	close productAlter_cur ;

commit;
end;
/

SET SERVEROUTPUT ON;
SET VERIFY OFF;

ACCEPT a PROMPT 'Enter Percentage of Price Increasing:';
ACCEPT b PROMPT 'Enter Min Price for Increasing:';


DECLARE
	a number := &a;
	b number := &b;
	
BEGIN
	add_PriceAlter_Package.productAlter(a,b);

	
END;
/