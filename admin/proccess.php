<?php
include("../connect.php");
$id= $_GET['id'];

$url='http://localhost/webmusica/admin/?option=qlbh';
$connect=new MyConnect();
$connect->XoaBH($id);






header('Location: '.$url);
?>