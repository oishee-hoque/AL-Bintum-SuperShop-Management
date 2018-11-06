CREATE OR REPLACE PACKAGE add_PriceAlter_Package as
	
	procedure productAlter(tid IN int,pid in int);

END add_PriceAlter_Package;
/
CREATE OR REPLACE PACKAGE BODY add_PriceAlter_Package as
    procedure productAlter(tid IN int,pid in int)
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
END add_PriceAlter_Package;
/