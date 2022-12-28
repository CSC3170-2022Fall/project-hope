<html lang="en">

<head>
    <meta charset="UTF-8">

   <title>查询结果</title>
    <style>
        .w1200{width:120vh;margin:0 auto;text-align: center;}
        .w1200 h2{letter-spacing:2px;}
    </style>
</head>

<body style="min-height: 100vh;background: linear-gradient(45deg,#4e65ff,#92effd);display:flex;
justify-content:center;
align-items:center;">

<div class="w1200">
   <h2>查询结果</h2>

<span style="color:#fff">
<?php

    $PACKAGE_ID = $_POST['PACKAGE_ID'];

    if(!$PACKAGE_ID){

        echo "注意: 输入有误，请重新输入.</br><a href='index.html'>重新输入</a>";

        exit;

    }

    if(!get_magic_quotes_gpc()){

        $PACKAGE_ID = addslashes($PACKAGE_ID);

    }
    
   

        @ $db = mysqli_connect('localhost','sst','123456');

        mysqli_select_db($db,'ourdb');

        if(mysqli_connect_errno()){

         echo "Error: Could not connect to mysql database.";

         exit;

        }

        $q = "SELECT * FROM package WHERE PACKAGE_ID = '".$PACKAGE_ID."'";

        $result = mysqli_query($db,$q);

        $rownum = mysqli_num_rows($result);
        if ($rownum){

        for($i=0; $i<$rownum; $i++){

           $row = mysqli_fetch_assoc($result);

           echo "".$row['PACKAGE_ID']."&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";

           echo "".$row['CONSUMER_ID']."&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";

           echo "".$row['TIME']."&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";

           echo "".$row['EXPENSE']."&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";

          

            }
        }
        else {

            die ("未找不到此数据,请重新输入!</br><a href='index.html'>重新输入</a>". mysqli_error($db));
            
            }

        mysqli_free_result($result);

        mysqli_close($db);
        
        

?>
</span>
<div style="margin-top:3vh;color:#fff"><a href="index.html">继续搜索</a></div>
</div>

</body>

</html>
