<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 14-4-23
 * Time: 下午10:05
 */

class db {
    private $host=1;
    private $database;
    private $password;
    function __construct($agr1,$agr2,$agr3){

        $this->host=$agr1;
        $this->database=$agr2;
        $this->password=$agr3;
    }
    function  connect(){
        $con = mysql_connect($this->host,$this->database,$this->password);
        if(mysqli_connect_error()){
            echo("connect error");
        }
        if (!$con)
        {
            die('Could not connect: ' . mysql_error());
            return null;
        }
        mysql_query("SET NAMES 'UTF8'");
        mysql_query("SET CHARACTER SET UTF8");
        mysql_query("SET CHARACTER_SET_RESULTS=UTF8'");
        return $con;
    }
    function close($con){
        mysql_close($con);
    }
}

?>