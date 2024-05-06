declare
rollno varchar2(5);
total number;
begin
rollno:=&rollno;
select s1+s2+s3 into total from stdnt where rno=rollno; 
if (total >= 45 and total < 50 ) then
	update stdnt set s1=s1+5 where rno=rollno;
	dbms_output.put_line('Grace mark added');
	dbms_output.put_line('Total mark = ' || (total+5));
else
	dbms_output.put_line('Total mark = ' || total);
end if;
end;
/