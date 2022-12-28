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

    $PLANT_ID = $_POST['PLANT_ID'];

    // if(!$CONSUMER_ID){

    //     echo "注意: 输入有误，请重新输入.</br><a href='search.html'>重新输入</a>";

    //     exit;

    // }

    if(!get_magic_quotes_gpc()){

        $PLANT_ID = addslashes($PLANT_ID);

    }
    
   

        @$db = mysqli_connect('3170project','123456','123456');

        mysqli_select_db($db,'3170project');

        if(mysqli_connect_errno()){

         echo "Error: Could not connect to mysql database.";

         exit;

        }

        $q = "SELECT * FROM MACHINE WHERE PLANT_ID = '".$PLANT_ID."'";

        $result = mysqli_query($db,$q);

        $rownum = mysqli_num_rows($result);
        if ($rownum){
            // echo "PACKAGE_ID "."&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp";
            // echo "&nbsp;&nbsp;"."CONSUMER_ID"."&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
            // echo "TIME"."&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
            // echo "EXPENSE <br/>"."&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
            for($i=0; $i<$rownum; $i++){

                $row = mysqli_fetch_assoc($result);
                $p = "SELECT * FROM CHIP WHERE MACHINE_ID = '".$row['MACHINE_ID']."' ORDER BY PACKAGE_ID";
                $result2 = mysqli_query($db,$p);
                $rownum2 = mysqli_num_rows($result2);
                if ($rownum2) {
            echo "<pre>";
                    echo "&nbsp;&nbsp;&nbsp;&nbsp;"."CHIP_ID ";
                    echo "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"."PACKAGE_ID";
                    echo "&nbsp;&nbsp;&nbsp;&nbsp;"."MACHINE_ID";
                    echo "&nbsp;&nbsp;&nbsp;&nbsp;"."CHIP_TYPE_ID <br/>";
                    for ($j = 0; $j < $rownum2; $j++) {

                        $row2 = mysqli_fetch_assoc($result2);

                        // echo sprintf("%-4d", $row2['CHIP_ID']);
                        // echo sprintf("%-4d", $row2['PACKAGE_ID']);
                        // echo sprintf("%-4d", $row2['MACHINE_ID']);
                        // echo sprintf("%-4d", $row2['CHIP_TYPE_ID']);
                        // echo "</br>";
                echo "<pre>";
                        echo "" . $row2['CHIP_ID']."&nbsp;&nbsp;&nbsp;";
                        
                        echo "&nbsp;&nbsp;&nbsp;&nbsp;" . $row2['PACKAGE_ID'];

                        echo "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" . $row2['MACHINE_ID'];

                        echo "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" . $row2['CHIP_TYPE_ID'];



                    }
                }
        //    echo "&nbsp;".$row['CONSUMER_ID']."&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";

        //    echo "&nbsp;&nbsp;&nbsp;".$row['CONSUMER_NAME']."&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp";

        //    echo "".$row['PERSON_OR_COMPANY']."&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";

        //    echo "".$row['ADDRESS']."&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
            }
        }
        else {

            die ("未找不到此数据,请重新输入!</br><a href='search.html'>重新输入</a>". mysqli_error($db));
            
            }

        mysqli_free_result($result);

        mysqli_close($db);
        
        

?>
</span>
<div style="margin-top:3vh;color:#fff"><a href="search.html">继续搜索</a></div>
</div>

</body>

</html>