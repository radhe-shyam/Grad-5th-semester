create trigger au6
after update or delete on emp
for each row
declare
op varchar(20);
begin
if updating then
	op:='update';
elsif deleting then
	op:='delete';
end if;
insert into stu values(0,op,45);
end;
/