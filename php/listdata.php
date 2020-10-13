<?php

header('content-type:text/html;charset=utf-8');
header('Access-Control-Allow-Origin:*');   //任意地址都可以访问

//设置字符编码。

header('content-type:text/html;charset=utf-8');
define('HOST','localhost');//主机名
define('USERNAME','root');//数据库用户名
define('PASSWORD','');//数据库密码
define('DBNAME','test');//数据库名称
$conn=@new mysqli(HOST,USERNAME,PASSWORD,DBNAME);//$conn:数据库连接对象
//@:容错处理，错误信息不显示。
//自定义的错误处理
if($conn->connect_error){//满足条件，数据库连接有误。
    die('数据库连接错误'.$conn->connect_error);//退出，并输出括号里面的信息
}

//设置字符编码问题。
$conn->query('SET NAMES UTF8');
header('Access-Control-Allow-Method:POST,GET');  //跨越请求的方式

$result = $conn->query("select * from taobaogoods"); //获取数据的结果集(记录集)
$num = $result->num_rows; //记录集的总条数  22


$pagesize = 10; //单个页面展示的数据条数

$pagenum = ceil($num / $pagesize); //获取页数，一定选择向上取整。 3页


//获取前端的传来的页码，根据页码查询对应的数据，返回给前端。
if (isset($_GET['page'])) {//判断前端传入的页面是否存在，
    $pagevalue = $_GET['page'];//获取页面
} else {
    $pagevalue = 1;//默认为1
}


//根据传入的页码，计算起始的偏移值。
$page = ($pagevalue - 1) * $pagesize;
//$pagevalue=1   $page=0    
//$pagevalue=2   $page=10    
//$pagevalue=3   $page=20    

//limit
//limit接收一个或者两个数字参数(整数)进行数据的截取。
//参1：数据开始位置的索引(从0开始)，偏移量。
//参2：返回的记录集数目。
//limit 0,10  从偏移量0开始 取10条
//limit 10,10  从偏移量10开始 取10条
//limit 20,10 从偏移量20开始 取10条

$sql1 = "select * from taobaogoods limit $page,$pagesize";
$res = $conn->query($sql1);


//通过二维数组输出
// $result->num_rows; //记录集的条数
// $result->fetch_assoc(); //逐条获取记录集的值，结果是数组。
$arr = array();
for ($i = 0; $i < $res->num_rows; $i++) {
    $arr[$i] = $res->fetch_assoc();
}
echo json_encode($arr);//输出接口
