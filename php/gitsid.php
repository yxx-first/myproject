<?php

include "conn_test.php";//引入数据库连接。
header('Access-Control-Allow-Origin:*');   //任意地址都可以访问
header('Access-Control-Allow-Method:POST,GET');  //跨越请求的方式

if(isset($_GET['datasid'])){
    //获取前端传来的数据
    $sid = $_GET['datasid'];
    $result=$conn->query("select * from taobaogoods where sid=$sid");//返回sid对应的那条条数据给$result
    echo json_encode($result->fetch_assoc());//输出数据，json转换。
}