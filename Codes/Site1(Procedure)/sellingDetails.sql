create or replace procedure total_product_sell1(tid IN int)
	is
	n varchar2(30);
	n1 int;
	n2 int;
	
	cursor cur5 is
	select pp.productid,pname as Product_Name,pp.p as Quantity
	from product
	inner join
	(select productid,sum(productid) as p
	from got
	group by productid) PP
	ON PP.productid=product.productid 
	order by Quantity;
	cursor cur2 is
	select pp.productid,pname as Product_Name,pp.p as Quantity
	from product
	inner join
	(select productid,sum(productid) as p
	from 
	(Select  *
	from got
	Left OUTER join Payment on got.paymentno=payment.paymentno
	where branchid=tid)
	group by productid) PP
	ON PP.productid=product.productid 
	order by Quantity;

begin
     DBMS_OUTPUT.PUT_LINE('In Total Selling Details');
     DBMS_OUTPUT.PUT_LINE('Product_Id Product_Name Quantity');
open cur5 ;
	loop
		fetch cur5 into n1 , n,n2;
		exit when cur5 %notfound;

			DBMS_OUTPUT.PUT_LINE(n1 || '              ' || n || '           ' || n2);

		end loop;
	close cur5 ;
	DBMS_OUTPUT.PUT_LINE('Selling Details Of Branch ' || tid);
open cur2 ;
	loop
		fetch cur2 into n1 , n,n2;
		exit when cur2 %notfound;

			DBMS_OUTPUT.PUT_LINE(n1 || '              ' || n || '           ' || n2);

		end loop;
	close cur2 ;
commit;
end;
/

SET SERVEROUTPUT ON;
SET VERIFY OFF;

ACCEPT a PROMPT 'Enter Branch id For Sell Details:';



DECLARE
	a number := &a;
	
BEGIN
	total_product_sell1(a);

	
END;
/