declare
cursor c1 is select empname,deptno,salary from (select * from employee order by salary desc) where rownum<=5;
e_emp c1%rowtype;
begin
dbms_output.put_line('*******Employee Details*******');
open c1;
fetch c1 into e_emp;
while c1%found
loop
	dbms_output.put_line('EMPNAME: ' || e_emp.empname);
	dbms_output.put_line('DEPTNO: ' || e_emp.deptno);
	dbms_output.put_line('SALARY: ' || e_emp.salary);
	dbms_output.put_line('*****************************');
	fetch c1 into e_emp;
end loop;
close c1;
end;
/
