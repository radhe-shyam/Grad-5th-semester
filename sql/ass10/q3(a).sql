set serveroutput on;
declare
s_rn stu.roll_no%type;
s_name stu.name%type;
s_per stu.percentage%type;
begin
s_rn:=&s_rn;
select name,percentage into s_name,s_per from stu where roll_no=s_rn;
dbms_output.put_line('Name = '||s_name);
dbms_output.put_line('Percentage = '||s_per);
if s_per>59 and s_per<101 then
dbms_output.put_line('Result = First Division');
elsif s_per>47 and s_per<60 then
dbms_output.put_line('Result = Second Division');
elsif s_per>35 and s_per<48 then
dbms_output.put_line('Result = Third Division');
else
dbms_output.put_line('Result = Fail');
end if;
end;
/