SET SERVEROUTPUT ON;
SET VERIFY OFF;

ACCEPT a PROMPT 'Enter employee id:';
ACCEPT b PROMPT 'Enter New Branch Id :';

DECLARE
	a number := &a;
	b number := &b;
	c number;
	cursor cur is
	select branchid from employee where employeeid=a;
BEGIN
        open cur;
		fetch cur into c;
		--exit when cur%notfound;
		close cur;
		DBMS_OUTPUT.PUT_LINE('Old BranchId of this Employee: ' || c);
	c :=search(a,b);
	DBMS_OUTPUT.PUT_LINE('Done !');
	    open cur;
		fetch cur into c;
		--exit when cur%notfound;
		close cur;
		DBMS_OUTPUT.PUT_LINE('New BranchId of this Employee: ' || c);

	
END;
/