declare
ed number(3);
nme varchar2(20);
sl number(5);
dp_no number(3);
tn varchar2(5);
rn number(3);
begin
rn:=&rn;
for i in 1..26
loop
ed:=i+124;
sl:=1200+i*10;
dp_no:=i*10;
nme:='John '||chr(mod(65+i,26)+65)||chr(mod(61+i,26)+97)||chr(mod(64+i,26)+97)||chr(mod(50+i,26)+97)||' smith';
insert into emp values(ed,nme,sl,dp_no);
end loop;
end;
/