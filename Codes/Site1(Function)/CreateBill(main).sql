
set serveroutput on;

begin
      
	  DBMS_OUTPUT.PUT_LINE('-------------WELCOME TO AL-BINTUM SHOP----------------');
	  DBMS_OUTPUT.PUT_LINE('HOW CAN WE HELP YOU? YOU CAN CHOOSE FROM BELOW');
	  DBMS_OUTPUT.PUT_LINE('1.Insert Data');
	  DBMS_OUTPUT.PUT_LINE('2.Update Data');
	  DBMS_OUTPUT.PUT_LINE('3.Make Bill');
	  DBMS_OUTPUT.PUT_LINE('4.Search Product In Branch');
	  DBMS_OUTPUT.PUT_LINE('5.Search Number Of Employee By Category');
	  DBMS_OUTPUT.PUT_LINE('6.Highest Selling Product On a Particular Date');
end;
/
     
		
declare
	tid number;
    tid2 int:=0;
    name1 varchar(30);
	a number;
	employeeId int;
	ename varchar2(30);
	sex varchar2(30);
	age int;
	type grades IS VARRAY(5) OF INTEGER; 
	ppid grades;
	num grades;
	phoneNo varchar2(30);
	catagory varchar2(30);
	b int;
	p int;
	branchId1 int;
	tot int;
	paymentNo int;
	cursor cur(a number,b number) is
	select productid,noOfProduct from stores where branchid=a and productid=b;
	
begin
	   
	 

	  paymentNo:=ll(1);
	  branchId1:=2;
	  ppid:=grades(1,2,3,4,5);
	  num:=grades(2,3,4,1,1);
	  tot:=ppid.count;

	  
	  for i in 1..5 loop
	  open cur(branchId1,ppid(i));
	  loop
	       fetch cur into b,p;
	        exit when cur%notfound;
		    tid2:=1;
		--	 DBMS_OUTPUT.PUT_LINE(p);
	        if(p<=0)then
			 update stores
	         set noOfProduct=0
	         where productid=ppid(i) and stores.branchId=branchId1;
	         num(i):=0;
	        else
	         update stores
	         set noOfProduct=noOfProduct-num(i)
	         where productid=ppid(i) and stores.branchId=branchId1;
	        end if;
	  end loop;
	  close cur;
	  if(tid2=0) then
	  --DBMS_OUTPUT.PUT_LINE('Product With pid  ' || b || ' is not available in this branch');
	  num(i):=0;
	  end if;
	  tid2:=0;
	  end loop;
	  DBMS_OUTPUT.PUT_LINE('Bill No: ' || paymentNo);
	    for i in 1..5 loop
		if(num(i)>0) then
	    bill_insert(paymentNo,ppid(i),num(i));
		else
		DBMS_OUTPUT.PUT_LINE('Product With pid  ' || ppid(i) || ' is not available');
		end if;
	    end loop;
	    tot:=totalPay11(paymentNo);
	    insert into PAYMENT  (paymentNo, branchId,total)values(paymentNo,branchId1,tot);
	    commit;
	  
	  
	  
    
   

	
end;
/