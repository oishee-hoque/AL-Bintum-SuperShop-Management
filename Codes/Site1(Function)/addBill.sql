create or replace function totalPay11(tid IN got.paymentNo%TYPE)
                 return product.price%type
	is
	Pid got.paymentNo%type;
	NP got.noofproducts%type;
	PP product.price%type;
	name  varchar2(30);
	total product.price%type :=0;
	

	cursor billing_cur is
		select got.paymentNo, got.noofproducts ,product.price,product.pname  from got
		inner join product 
		on got.productid=product.productid;


begin
DBMS_OUTPUT.PUT_LINE('ProductName Quantity  UnitPrice  Total');
	
open billing_cur;
	loop
		fetch billing_cur into Pid, NP, PP,name;
		exit when billing_cur%notfound;

			if Pid=tid
			then
			DBMS_OUTPUT.PUT_LINE(Name||'          ' || Np || '          ' ||  PP || '     ' ||  (NP*PP));
			total := total+ (NP*PP);
			
			end if;
		    
		end loop;
	close billing_cur;
	DBMS_OUTPUT.PUT_LINE('                            GrandTotal: ' || total);
	 return total;

commit;
end;
/