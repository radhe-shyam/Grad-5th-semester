declare
ed emp.eid%type;
nme emp.name%type;
sl emp.sal%type;
dep emp.d_no%type;
begin
insert into emp values(&ed,'&nme',&sl,&dep);
end;
/