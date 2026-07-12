@echo off

echo Mysql shutdown ...

set DIR="C:\Program Files\MariaDB 10.11"

%DIR%\bin\mysqladmin.exe -u root shutdown

