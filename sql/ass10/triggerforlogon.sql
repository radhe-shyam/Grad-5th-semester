create trigger lo
after LOGON on 
declare
begin
dbms_output.put_line("Hello this is logon trigger");
end;
/