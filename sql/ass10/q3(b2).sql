declare
begin
for i in 1..10
loop
insert into square values(i,i*i);
end loop;
end;
/