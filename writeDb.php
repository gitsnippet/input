<?php
$goods = $_POST["goods"];
$totalPrice = $_POST["total_price"];
$unitPrice = $_POST["unit_price"];
$spec = $_POST["spec"];
$location = $_POST["location"];
$purchaseTime = $_POST["purchaseTime"];
$batch = $_POST["batch"];
$comments = $_POST["comments"];
if($batch === ""){
    $batch =1;}

$dsn = "mysql:host=localhost;dbname=goods";
$con = new PDO($dsn,"root","xyzzy");

$query ="insert into goods(goods,totalPrice,unitPrice,spec,location,purchaseTime,batch,comments) 
         values('$goods','$totalPrice','$unitPrice','$spec','$location','$purchaseTime','$batch','$comments')"; 

if($con->query($query)){
    echo "成功写入数据库";
}
else{
    echo "something wrong";
}

?>
