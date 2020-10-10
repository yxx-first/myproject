<?php

header('content-type:text/html;charset=utf-8');
header('Access-Control-Allow-Origin:*');   //任意地址都可以访问
header('Access-Control-Allow-Method:POST,GET');  //跨越请求的方式
include "conn.php";

$result=$conn->query("select * from ocjproject");

$arr = array();
for($i=0;$i<$result->num_rows;$i++){
    $arr[$i] = $result->fetch_assoc();
}

echo json_encode($arr);



