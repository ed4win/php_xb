drop trigger IF EXISTS t_afterinsert_on_xubaomain ;
CREATE TRIGGER t_afterinsert_on_xubaomain 
AFTER insert ON middle_car_renewal
FOR EACH ROW
BEGIN

     update xubaomain set xbflag = '1' where xubaomain.proposalno = new.oldproposalno; /*大口径续保*/
     update xubaomain set xbflag = '2' where xubaomain.proposalno = new.oldproposalno
     and xubaomain.comcode = new.oldcomcode;   /*小口径续保*/
END;
 
