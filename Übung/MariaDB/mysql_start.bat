@echo off

echo MySQL is starting

set DIR="C:\Program Files\MariaDB 10.11"
set PATH=%DIR%\bin;%PATH%
set DATA=C:\Users\%USERNAME%\AppData\Local\mariadb\data


if not exist %DATA% ( 
	echo Creating the database 
	mkdir %DATA%
	mysql_install_db --datadir=%DATA%
	
	rem my.ini überschreiben um u.a. charakter set auf utf8 zu stellen
	echo Overwrite my.ini
	echo [mysqld] > %Data%\my.ini
	echo datadir=%DATA%  >> %Data%\my.ini
	echo port=3306  >> %Data%\my.ini
	echo innodb_buffer_pool_size=2016M  >> %Data%\my.ini
	echo character-set-server=utf8mb4  >> %Data%\my.ini
	echo [client]  >> %Data%\my.ini
	echo port=3306  >> %Data%\my.ini
	echo plugin-dir=C:\Program Files\MariaDB 10.11/lib/plugin  >> %Data%\my.ini
	
	echo --------------------------- 
) 
rem Öffnet extra Fenster zur Kommando eingabe
rem start %~dp0mysql_cli.bat

echo !
echo --  WICHTIG: Beenden Sie den Server mit dem Skript mysql_stop.bat  --
echo !

%DIR%\bin\mysqld --standalone --console --datadir=%DATA%

pause