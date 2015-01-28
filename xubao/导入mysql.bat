@@echo off 
::set errorlevel=0 
::set path_home_mysql=e:\phpStudy\MySQL\  
::set path_bin_mysql="C:\Program Files\MySQL\MySQL Server 5.0\bin\"
::echo %path_bin_mysql%
::set user_mysql=root 
::set password_mysql=password
::%path_bin_mysql%mysql -u%user_mysql% -p%password_mysql% <c:/msn.sql
::echo end backup
 
set errorlevel=0 
set path_home_mysql=e:\phpStudy\MySQL\  
set path_bin_mysql="e:\phpStudy\MySQL\bin\"
echo %path_bin_mysql%
set database_mysql=test
set user_mysql=root
set password_mysql=root
%path_bin_mysql%mysql.exe -u%user_mysql% -p%password_mysql% %database_mysql% < E:\phpStudy\WWW\xubao\mytestsql.sql
echo end backup
pause

::@echo off
::set /p name=用户名:
::set /p pwd=密码:
::set /p dbName=数据库:
::mysql -u%name% -p%pwd% %dbName% < mydb.sql
::rem mysql -u%name% -p%pwd% %dbName% < mydb.sql