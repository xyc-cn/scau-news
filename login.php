<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 14-4-24
 * Time: 下午3:29
 */
session_start();
$_SESSION['login']=000;
require('db.php');
$dbs = new db('localhost','root','root');
$cons=$dbs->connect();
$user=$_GET['user'];
$pass=$_GET['pass'];

if($user==null||$pass==null){
    echo("no");
    exit;
}
$login=1;
mysql_select_db("news", $cons);
$result = mysql_query("SELECT * FROM user WHERE username ="."'".$user."'");
$rownum = mysql_num_rows($result);
if($rownum==1){
    $row=mysql_fetch_assoc($result);
    if($row['password']==$pass){
        $_SESSION['login']=111;
        echo("ok");
        mysql_free_result($result);
        $dbs->close($cons);
        exit;
    }
}
echo("error");

$dbs->close($cons);



?>