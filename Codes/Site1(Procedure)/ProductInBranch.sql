create or replace procedure availproduct1(
	tid IN product.productid%TYPE)
	is
            
	pId int;
	pname varchar2(30);
	price int;
	bId int;
	numberOfProduct int;
	
	cursor st_cur is
	SELECT * from 
    ((Select product.productid,pname,price,branchid,numberOfProducts from product Inner Join Store1 On product.productid=store1.productid where product.productid=3)
	UNION
	(Select product.productid,pname,price,branchid,numberOfProducts from product Inner Join Store2 On product.productid=store2.productid where product.productid=3));

begin
    DBMS_OUTPUT.PUT_LINE('ProductId ProductName Price BranchId Quantity') ;
	open st_cur;
	loop
	
	fetch st_cur INTO pid,pname,price,bId,numberOfProduct;
	exit when st_cur%notfound;
    DBMS_OUTPUT.PUT_LINE(TO_CHAR(pid) || '          ' || TO_CHAR(pname) ||  '     ' || TO_CHAR(price) || '        ' || TO_CHAR(bid) ||  '     ' || TO_CHAR(numberOfProduct)) ;
		
	end loop;
	close st_cur;

end;
/
SET SERVEROUTPUT ON;
SET VERIFY OFF;

ACCEPT a PROMPT 'Enter Product id:';


DECLARE
	a number := &a;
	
BEGIN
	availproduct1(a);

	
END;
/
