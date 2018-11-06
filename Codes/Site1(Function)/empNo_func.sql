create or replace function emp_cat(eNo IN varchar2)
	return number
	is
	n number;
	x varchar2(30);
	
begin

	Select  branch.address, count(employeeId) into x,n
   	from employee 
	INNER JOIN Branch
	on employee .branchid = branch.branchid
	group by branch.address;
	return n;


end;
/