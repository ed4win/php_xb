LOAD DATA LOCAL INFILE "e:\\phpStudy\\WWW\\xubao\\data\\lpphone.unl"
INTO TABLE test.lpphone CHARACTER SET gbk
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"'
LINES TERMINATED BY '\n'