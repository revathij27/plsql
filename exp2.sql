declare
cursor c1 is select empno,salary from employee where job='ANALYST';
r_amt number;
eno employee.empno%type;
esal employee.salary%type;
begin
open c1;
fetch c1 into eno,esal;
while c1%found
loop
	r_amt:=esal*0.15;
	update employee set salary=salary+r_amt where empno=eno;
	insert into emp_raise values(eno,sysdate,r_amt);
	fetch c1 into eno,esal;
end loop;
close c1;
end;
/
