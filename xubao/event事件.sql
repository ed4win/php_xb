/*
更新脱保标志
*/
show variables like 'event_scheduler';
drop event  if exists update_tbflag_event;
create event update_tbflag_event
on schedule every 1 day starts '2015-01-22 00:00:00'
on completion preserve enable
do
begin
/*脱保90日内开放电销查询*/
update xubaomain set dmflag = '1'
where 
dmflag <> '1'
and xbflag <> '1'
and datediff(current_date,enddate) >= 1
and datediff(current_date,enddate) <= 90;
/*脱保90日后,关闭电销查询*/
update xubaomain set dmflag = '2'
where
dmflag <> '2' 
and xbflag <> '1'
and datediff(current_date,enddate) > 90;

/*终保前30日,脱保15日之内,开放续保专岗查询*/
update xubaomain set tbflag = '1'
where
tbflag <> '1' 
and xbflag <> '1'
and (datediff(enddate,current_date) between  -15 and 30) ;

/*脱保15日后,关闭续保专岗查询*/
update xubaomain set tbflag = '2'
where 
tbflag <> '2'
and xbflag <> '1'
and datediff(current_date,enddate) > 15;
end;