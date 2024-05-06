declare
cursor cur1 is select empno,empname,salary from employee;
e_empno employee.empno%type;
e_empname employee.empname%type;
e_salary employee.salary%type;
begin
dbms_output.put_line('Employee Details');
open cur1;
fetch cur1 into e_empno,e_empname,e_salary;
while cur1%found 
loop
	dbms_output.put_line('EMPNO ' || e_empno);
	dbms_output.put_line('EMPNAME ' || e_empname);
	dbms_output.put_line('SALARY ' || e_salary);
	dbms_output.put_line('********************************');
	fetch cur1 into e_empno,e_empname,e_salary;
end loop;
close cur1;
end;
/