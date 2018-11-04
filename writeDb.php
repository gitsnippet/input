<?php
extract($_POST);
//$goods = $_POST["goods"];
//$totalPrice = $_POST["totalPrice"];
//$unitPrice = $_POST["unitPrice"];
//$amount = $_POST["amount"];
//$spec = $_POST["spec"];
//$location = $_POST["location"];
//$purchaseTime = $_POST["purchaseTime"];
//$batch = $_POST["batch"];
//$comments = $_POST["comments"];
if($batch === ""){
    $batch =1;}

$dsn = "mysql:host=localhost;dbname=goods";
$con = new PDO($dsn,"root","xyzzy");

$query ="insert into goods(goods,totalPrice,unitPrice,amount,spec,location,purchaseTime,batch,comments) 
         values('$goods','$totalPrice','$unitPrice','$amount','$spec','$location','$purchaseTime','$batch','$comments')"; 

if($con->query($query)){
    echo "成功写入数据库";
}
else{
    echo "something wrong";
}

?>
