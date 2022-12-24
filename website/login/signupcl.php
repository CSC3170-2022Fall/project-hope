<?php
session_start();
// include("../fengzhuang/DBDA.class.php");
@ $db = mysqli_connect('localhost','123456','123456');
mysqli_select_db($db,'ourd');

if(mysqli_connect_errno()){

    echo "Error: Could not connect to mysql database.";

    exit;

}


$uid =$_POST["uid"];
$pwd = $_POST["pwd"];
$addr = $_POST["addr"];
 
$sql = "INSERT INTO consumer (CONSUMER_ID, CONSUMER_NAME, PERSON_OR_COMPANY, `ADDRESS`, `PASSWORD`) values (2,'{$uid}',1,'{$addr}','{$pwd}')";

// $arr = mysqli_query($db,$sql);
$result = mysqli_query($db,$sql);

// $rownum = mysqli_num_rows($result);

// $row = mysqli_fetch_assoc($result);

// if($row['PASSWORD']==$pwd && !empty($pwd))//
// {
    echo 'qwq';
    // $_SESSION["uid"] =$uid;
    // header("location:main.php");
// }
// else
// {
    // echo arr[0]['password'];
//     echo"登录失败";
// }
?>