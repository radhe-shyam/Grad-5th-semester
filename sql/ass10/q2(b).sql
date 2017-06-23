set serveroutput on;
declare
temp emp.eid%type:=0;
Emp_id emp.eid%type;
Emp_Name emp.name%type;
Emp_Salary emp.sal%type;
Emp_Dep_no emp.d_no%type;
begin
Emp_id:=&Emp_id;
select count(eid) into temp from emp where eid=Emp_id;
if temp<1 then
insert into emp values(Emp_id,'&Emp_Name',&Emp_Salary,&Emp_Dep_no);
else
dbms_output.put_line('>>>>>>>>>>>>>>Data Already exists<<<<<<<<<<<<<<<<<<');
end if;
end;
/