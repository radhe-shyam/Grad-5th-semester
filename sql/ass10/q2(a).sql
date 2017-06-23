declare
emp_id emp.eid%type;
New_Salary emp.sal%type;
begin
emp_id:=&emp_id;
update emp set sal=&New_Salary where eid=emp_id;
end;
/