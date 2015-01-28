update xubaomain set tbflag = '0' where 1=1;
/*
update xubaomain set tbflag = '1'
where 
xbflag <> '1' 
and datediff(current_date,enddate) >= 1
and datediff(current_date,enddate) <= 90
;

update xubaomain set tbflag = '1'
where
 tbflag <> '1' 
 and xbflag <> '1'
-- and 
-- ((datediff(enddate,current_date) <30) 
-- or (datediff(current_date,enddate) < 15))
and (datediff(enddate,current_date) between -15 and 30)
-- or
-- (datediff(current_date,enddate) between 0 and  15)
;
*/
update xubaomain set tbflag = '1'
where
tbflag <> '1' 
and xbflag <> '1'
and (datediff(enddate,current_date) between  -15 and 30);

select enddate from xubaomain where tbflag = '1';

select datediff(enddate,current_date)
from xubaomain
where 1=1;