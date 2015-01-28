update xubaomain set xbflag = '0' where proposalno = 'TDAA201444180000001111';
select xbflag from xubaomain where proposalno = 'TDAA201444180000001111';
delete from middle_car_renewal where 1=1;
insert into middle_car_renewal(oldproposalno,oldcomcode) values ('TDAA201444180000001111','44181004');
select xbflag from xubaomain where proposalno = 'TDAA201444180000001111';

-- update xubaomain set xbflag where proposalno = xb.proposalno;