
<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 14-4-27
 * Time: 下午12:49
 */
session_start();
if($_SESSION['login']!=111)
{
    Header("Location:login.html"); //未登陆状态下转到登陆窗口界面
    exit;

}
?>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" type="text/css" href="css/reset.css">
    <link rel="stylesheet" type="text/css" href="css/bg3.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <style type="text/css">
        .fi{
        }
        .se{
        }
        .lists{
            -webkit-border-radius: 6px;
            -khtml-border-radius: 6px;
            -moz-border-radius: 6px;
            border-radius: 6px;
            -webkit-box-shadow: 0px 0px 2px #69635a;
            -moz-box-shadow: 0px 0px 2px #69635a;
            box-shadow: 0px 0px 2px #69635a;
            width: 100%;
            background-color: #fff;
            overflow: hidden;
            border: solid 1px #eee;
            font-weight: bold;
        }
        .lists li{
            font-size: 20px;
            height: 40px;
            line-height: 40px;
            border-bottom: solid 1px #eee;
        }
        .lists li:last-child{
            border-bottom:0px;
        }
        .lists li a{
            display: block;
            width: 100%;
            height: 100%;
            padding-left: 10px;
        }
        .lists li:hover{
            background-color: #0088cc;
        }
        .lists li a:hover{
            color: #fff;
        }
        #footer{
            margin: 0 0 0 0;
            width: 100%;
            height: 100px;
            background: #000;
            background-color: #96dd3b;
        }
        .main{
            position: relative;
            width: 100%;
            min-height: 760px;
            background-color: #fff;
            -webkit-border-radius: 6px;
            -khtml-border-radius: 6px;
            -moz-border-radius: 6px;
            border-radius: 6px;
            margin-bottom: 20px;
            -webkit-box-shadow: 0px 0px 2px #69635a;
            -moz-box-shadow: 0px 0px 2px #69635a;
            box-shadow: 0px 0px 2px #69635a;
        }
        .main button{
            position: absolute;
            right: 5px;
            top: 5px;
        }
        .main_list{
            padding-top: 50px;
            padding-bottom: 10px;
            width: 100%;


        }
        .main_list li{
            position: relative;
            width: 100%;
            height: 200px;
            margin-bottom: 5px;
            border-bottom: solid 2px #ddd;
            overflow: hidden;
        }
        .main h2{
            position: absolute;
            top: 0px;
            left: 10px;
            font-weight: bold;
            font-family: "ff-tisa-web-pro-1","ff-tisa-web-pro-2","Lucida Grande","Helvetica Neue",Helvetica,Arial,"Hiragino Sans GB","Hiragino Sans GB W3","Microsoft YaHei UI","Microsoft YaHei","WenQuanYi Micro Hei",sans-serif;
            color: #0088ff;

        }
        .main h3{
            margin-left: 20px;
        }
        #footer h4{
            font-family: "ff-tisa-web-pro-1","ff-tisa-web-pro-2","Lucida Grande","Helvetica Neue",Helvetica,Arial,"Hiragino Sans GB","Hiragino Sans GB W3","Microsoft YaHei UI","Microsoft YaHei","WenQuanYi Micro Hei",sans-serif;
            font-weight: bold;
            position: relative;
            left: 10px;
            font-size: 16px;
            color: #fff;
            text-align: center;

        }
        .main_list li h4{
            font-family: "ff-tisa-web-pro-1","ff-tisa-web-pro-2","Lucida Grande","Helvetica Neue",Helvetica,Arial,"Hiragino Sans GB","Hiragino Sans GB W3","Microsoft YaHei UI","Microsoft YaHei","WenQuanYi Micro Hei",sans-serif;
            font-weight: bold;
            position: relative;
            left: 10px;
            font-size: 16px;

        }
        .main_list li .pp{
            border-top: solid 1px #dc2;
            margin-top: 20px;
            width: 98%;
            margin-left: 1%;
            margin-right: 1%;
            white-space: pre-wrap;
        }
        .main_list li .dele{
            position: absolute;
            top: 20px;
            left: 40px;
            border-bottom: none;
        }
        .main_list li .edit{
            position: absolute;
            top: 20px;
            left: 10px;
            border-bottom: none;
        } </style>
</head>
<body>
<?php
require("managers.php");
$title="顶层新闻";
$rownum=1;
$hasnum=0;
if(isset($_GET['type'])){
    $type=$_GET['type'];
    $mana=new managers();
    if(isset($_GET['num'])){
    $num=($_GET['num']);
    $info=$mana->getinfobytype($type,$num);
    }
    else{
        $info=$mana->getinfobytype($type,0);
    }
    $rownum = $mana->getinfonum($type);
    $hasnum=$rownum;
    $rownum =floor($rownum/4);
    
    $title=$type;


}else{
    $mana=new managers();
    $info=$mana->getinfobytype("news",0);

}
?>
<h1>Scau News Web Background</h1>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span2 fi">
            <ul class="lists">
                <li><a href="back_index.php?type=顶层新闻">顶层新闻</a></li>
                <li><a href="back_index.php?type=首页轮播">首页轮播</a></li>
                <li><a href="back_index.php?type=新闻中心">新闻中心</a></li>
                <li><a href="back_index.php?type=校园通告">校园通告</a></li>
                <li><a href="back_index.php?type=媒体华农">媒体华农</a></li>
                <li><a href="back_index.php?type=校园快讯">校园快讯</a></li>
            </ul>

        </div>
        <div class="span10 se">
            <div class="main">
                <?php
                echo "<h2>".$title."</h2>";
                ?>
                <a href="post.html"><button href="" class="btn btn-info">发表</button></a>

                <ul class="main_list">
                    <?php
                    if($hasnum==0){
                        echo "<h3>暂时没内容</h3>";
                    }
                    while($row = mysql_fetch_array($info))
                    {
                        ?>
                        <li><a href="" class="edit">编辑</a>
                            <a href="" class="dele">删除</a>
                            <a href=""><h4><?php  echo $row['title'] ?></h4></a>
                            <div class="pp"><?php  echo $row['cont'] ?></div>
                        </li>
                    <?php

                    }
                    ?>
                </ul>
                <div class="pagination pagination-right">
                    <ul>
                        <?php 
                            $index=1;
                            ?>
                        <li><a href="back_index.php?type=<?php echo($title)?>&&num=0">Prev</a></li>
                        <?php 
                            
                            while($rownum>=0){
                               
                                
                            ?>
                        <li><a href="back_index.php?type=<?php echo($title)?>&&num=<?php echo($index-1)?>"><?php echo($index);?></a></li>
  
                        <?php
                            $rownum--;
                         $index++;
                        }
                        ?>
                        <li><a href="back_index.php?type=<?php echo($title)?>&&num=<?php echo($index-2)?>">Next</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="footer">
    <br>
    <h4>scau news background</h4>
    <h4>powered by cheng</h4>
</div>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
