::@echo 
::set errorlevel=0 
::set path_home_mysql=e:\phpStudy\MySQL\  
::set path_bin_mysql="C:\Program Files\MySQL\MySQL Server 5.0\bin\"
::echo %path_bin_mysql%
::set user_mysql=root 
::set password_mysql=password
::%path_bin_mysql%mysql -u%user_mysql% -p%password_mysql% <c:/msn.sql
::echo end backup
 ::µ¼Èëcsv ½Å±¾
set errorlevel=0 
set path_home_mysql=e:\phpStudy\MySQL\  
set path_bin_mysql="e:\phpStudy\MySQL\bin\"
echo %path_bin_mysql%
set database_mysql=test
set user_mysql=root
set password_mysql=root
%path_bin_mysql%mysql.exe -u%user_mysql% -p%password_mysql% %database_mysql% < mytestsql.sql
echo end backup