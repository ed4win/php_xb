<?php
 define('IN_SYS', TRUE);
session_start();

//注销登录
if(isset($_GET['action'])){
    if($_GET['action'] == "logout"){
        unset($_SESSION['userid']);
        unset($_SESSION['username']);
        unset($_SESSION['power']);
        echo '注销登录成功！点击此处 <a href="login.html">登录</a>';
        exit;
    }
}

//登录
if(!isset($_POST['submit'])){
	exit('非法访问!');
}
$username = htmlspecialchars($_POST['username']);
$pass= ($_POST['password']);
$password = MD5($_POST['password']);
include('../checkip.php');
$currentIP = getip();
//echo $pass;
//包含数据库连接文件
include('../conn.php');
//检测用户名及密码是否正确
$check_query = mysql_query("select userid,power from user where username='$username' and password='$password'and ip = '$currentIP' limit 1");
if (!$check_query) { // add this check.
    die('Invalid query2: ' . mysql_error());
}
if($result = mysql_fetch_array($check_query)){
	//登录成功
	$_SESSION['username'] = $username;
	$_SESSION['userid'] = $result['userid'];
    $_SESSION['power'] = $result['power'];
	//echo $username,' 欢迎你！进入 <a href="my.php">用户中心</a><br />';
	//echo '点击此处 <a href="login.php?action=logout">注销</a> 登录！<br />';
$url = '';
if($result['power'] == 1){
    $url = "../xubao_main.html";  //要注意跳转路径
    echo "<script type='text/javascript'>";
    echo "window.location.href='$url'";  
    echo "</script>";
	exit;
    } 
elseif ($result['power'] == 2){
    $url = "../dx/dx_main_date.html";  //要注意跳转路径
    echo "<script type='text/javascript'>";
    echo "window.location.href='$url'";  
    echo "</script>";
    exit;
    } 
}else {
    //echo $check_query;
    echo 'ip',$currentIP;
	exit('登录失败！点击此处 <a href="javascript:history.back(-1);">返回</a> 重试');
}
?>