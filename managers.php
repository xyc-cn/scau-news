<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 14-4-27
 * Time: 下午3:27
 */
require('db.php');

class managers {
    function getinfobytype($type,$page){
        $dbs = new db('localhost','root','root');
        $cons=$dbs->connect();
        $q="SELECT * FROM diary WHERE types ="."'".$type."' "."limit ".$page.",4";
        mysql_select_db("news", $cons);
        $result = mysql_query($q);
        return $result;
    }
    function getinfonum($type){
        $dbs = new db('localhost','root','root');
        $cons=$dbs->connect();
        $q="SELECT * FROM diary WHERE types ="."'".$type."'";
        mysql_select_db("news", $cons);
        $result = mysql_query($q);
        $rownum = mysql_num_rows($result);
        return $rownum;
    }
    function getid($id){
        $dbs = new db('localhost','root','root');
        $cons=$dbs->connect();
        $q="SELECT * FROM diary WHERE id =".$id;
        mysql_select_db("news", $cons);
        $result = mysql_query($q);
        return $result;
    }
    function getlist($page){
        $dbs = new db('localhost','root','root');
        $cons=$dbs->connect();
        $q="SELECT * FROM diary WHERE types = '顶层新闻' limit ".$page.",4";
        mysql_select_db("news", $cons);
        $result = mysql_query($q);
        return $result;
    }
} 