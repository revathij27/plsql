declare
rollno varchar2(5);
m1 number;
m2 number;
m3 number;
total number;
begin
rollno:=&rollno;
select s1 into m1 from stdnt where rno=rollno;
select s2 into m2 from stdnt where rno=rollno;
select s3 into m3 from stdnt where rno=rollno;
select (m1+m2+m3) into total from stdnt where rno=rollno;
if (total >= 45 and total < 50 ) then
update stdnt set s1=s1+5 where rno=rollno;
dbms_output.put_line('Grace mark added');
dbms_output.put_line('Total mark = ' || total+5);
else
dbms_output.put_line('Total mark = ' || total);
end if;
end;
/