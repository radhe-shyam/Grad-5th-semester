declare
ron number(3);
nme varchar2(20);
per number(5);
tn varchar2(5);
rn number(3);
begin
rn:=&rn;
for i in 1..rn
loop
ron:=i+124;
per:=mod((i+i*10),100);
nme:='John '||chr(mod(65+i,26)+65)||chr(mod(61+i,26)+97)||chr(mod(64+i,26)+97)||chr(mod(50+i,26)+97)||' smith';
insert into stu values(ron,nme,per);
end loop;
end;
/