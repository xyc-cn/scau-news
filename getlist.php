<?php
header('Content-type: text/javascript');
require("managers.php");
    $mana=new managers();
    $info=null;
if(isset($_GET['page'])){
    $page=$_GET['page'];
    $info=$mana->getlist($page);
}
else{
     $info=$mana->getlist(0);
}

while($row = mysql_fetch_array($info)){

    $com[] = $row;

}
$callback=$_GET['callback'];
echo ($callback.'('.json_encode($com).')');
?>