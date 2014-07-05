<?php
header('Content-type: text/javascript');
require("managers.php");
    $mana=new managers();
    $info=null;
if(isset($_GET['id'])){
    $id=$_GET['id'];
    $info=$mana->getid($id);
}
else{
    $info=$mana->getinfobytype("news",1);
}

while($row = mysql_fetch_array($info)){

    $com[] = $row;

}
$callback=$_GET['callback'];
echo ($callback.'('.json_encode($com).')');
?>