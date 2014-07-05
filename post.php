
<?php
header("Content-type: text/html; charset=utf-8");
session_start();
$newPath="";//记录图片路径
if($_SESSION['login']!=111)
{
    Header("Location:login.html"); //未登陆状态下转到登陆窗口界面
    exit;

}
else
{
  if ((($_FILES["file1"]["type"] == "image/jpeg")
|| ($_FILES["file1"]["type"] == "image/pjpeg"))
)
  {
    
  if ($_FILES["file1"]["error"] > 0)
    {
    echo "Return Code: " . $_FILES["file1"]["error"] . "<br />";
    }
  else
    {

    if (file_exists("images/photos/" . $_FILES["file1"]["name"]))
      {
      unlink("images/photos/" . $_FILES["file1"]["name"]);
      }
      $date=date('Ymdhis');//得到当前时间,如;20070705163148
      $fileName=$_FILES['file1']['name'];//得到上传文件的名字
      $name=explode('.',$fileName);//将文件名以'.'分割得到后缀名,得到一个数组
      $newPath=$date.'.'.$name[1];//得到一个新的文件为'20070705163148.jpg',即新的路径
      $_FILES['file1']['name']=$newPath;
      move_uploaded_file($_FILES["file1"]["tmp_name"],
      "images/photos/" . $_FILES["file1"]["name"]);

      
    }
  }
require('db.php');
$dbs = new db('localhost','root','root');
$cons=$dbs->connect();

$title=$_POST['title'];
$cont=$_POST['cont'];
$hide=$_POST['hide'];
$file1=$_POST['file1'];
if($title==null||$cont==null||$hide==null){
        echo("no");
        exit;
 }


if(!get_magic_quotes_gpc()){
    $title=addslashes($title);
    $cont=addslashes($cont);
    $hide=addslashes($hide);
}


mysql_select_db("news", $cons);
mysql_query("set names utf-8");
$q="INSERT INTO diary (id, title, cont, replay,types,path)
VALUES (null,'$title','$cont',0 ,'$hide','$newPath')";
    if(!mysql_query($q)){
        echo("error");
    }
    else{
        Header("Location:back_index.php");
    }
;
$dbs->close($cons);
}
?>
