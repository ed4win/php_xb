LOAD DATA LOCAL INFILE "e:\\phpStudy\\WWW\\xubao\\data\\middle_car_renewal.unl"
INTO TABLE test.middle_car_renewal CHARACTER SET gbk
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"'
LINES TERMINATED BY '\n'