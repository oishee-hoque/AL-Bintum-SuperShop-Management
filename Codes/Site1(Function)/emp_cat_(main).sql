set serveroutput on;

declare
	cat varchar2(30):='&Category'; 
                  nt number;

begin
   
      nt:=emp_cat(cat);
     DBMS_OUTPUT.PUT_LINE('Employees with catagory '|| cat || '  are ' || TO_CHAR(nt));
    	
end;
/
