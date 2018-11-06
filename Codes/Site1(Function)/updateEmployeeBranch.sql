CREATE OR REPLACE FUNCTION search(num IN int, bid IN int)
RETURN number
  IS

    employeeId1 int; 
	ename1 varchar2(30);
	sex1 varchar2(30);	
	age1 int;
	phoneNo1 varchar2(30);
	catagory1 varchar2(30);
	branchId1 int;



BEGIN


   
	update employee
	set branchid=bid
	where employeeid=num;
    SELECT * into employeeId1,ename1,sex1,age1,phoneNo1,catagory1,branchId1 FROM (( Select * from Employees1 UNION Select * from  Employees2 )) where employeeid=num;
    if(branchId1=1 and bid=1) then
	update employees1
	set branchid=bid
	where employeeid=num;
	elsif(branchId1=1 and bid!=1) then
	delete from employees1
	where employeeid=num;
	INSERT into employees2(employeeId , ename, sex , age, phoneNo, catagory, branchId ) values (employeeId1,ename1,sex1,age1,phoneNo1,catagory1,branchId1);
	elsif(branchId1!=1 and bid=1) then
	delete from employees2
	where employeeid=num;
	INSERT into employees1(employeeId , ename, sex , age, phoneNo, catagory, branchId ) values (employeeId1,ename1,sex1,age1,phoneNo1,catagory1,branchId1);
	
    end if;
    commit;
	

	

	return 0;

END search;
/
