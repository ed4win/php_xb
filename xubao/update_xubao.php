<?php

//$id = intval($_REQUEST['id']);
$proposalno = $_REQUEST['proposalno'];
$phoneflag = $_REQUEST['phoneflag'];
//$carkind = $_REQUEST['carkind'];
//echo $phoneflag;
//$listprice = $_REQUEST['listprice'];
//$unitcost = $_REQUEST['unitcost'];
//$attr1 = $_REQUEST['attr1'];
//$status = $_REQUEST['status'];

define('IN_SYS', TRUE);
include 'conn.php';

$sql = "update xubaomain set phoneflag ='$phoneflag' where proposalno='$proposalno'";
@mysql_query($sql);
echo json_encode(array(
	//'itemid' => $itemid,
	//'productid' => $productid,
	//'listprice' => $listprice,
	//'unitcost' => $unitcost,
	//'attr1' => $attr1,
    //'status' => $status
	//回写phoneflag 标志
    'phoneflag' => $phoneflag
));
?>