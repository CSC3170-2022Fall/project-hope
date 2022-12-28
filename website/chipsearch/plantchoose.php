<html lang="en">

<head>
    <meta charset="UTF-8">

   <title>Result</title>
    <style>
        .w1200{width:120vh;margin:0 auto;text-align: center;}
        .w1200 h2{letter-spacing:2px;}
    </style>
    

</head>

<body style="min-height: 100vh;background: linear-gradient(45deg,#4e65ff,#92effd);display:flex;
justify-content:center;
align-items:center;">

<div class="w1200">
   <h2>Result</h2>

    <span style="color:#fff">
    <?php

        $CHIP_TYPE_ID = $_POST['CHIP_TYPE_ID'];

        if(!$CHIP_TYPE_ID){

            echo "ERROR: There is something wrong with your input.</br><a href='index.html'>Input Again</a>";

            exit;

        }

        if(!get_magic_quotes_gpc()){

            $CHIP_TYPE_ID = addslashes($CHIP_TYPE_ID);

        }
        
    

            @ $db = mysqli_connect('localhost','123456','123456');

            mysqli_select_db($db,'ourd');

            if(mysqli_connect_errno()){

            echo "Error: Could not connect to mysql database.";

            exit;

            }

            $q = "SELECT * FROM chip_operation WHERE CHIP_TYPE_ID = '".$CHIP_TYPE_ID."' ORDER BY order_number";

            $result = mysqli_query($db,$q);

            $rownum = mysqli_num_rows($result);

            echo "CHIP TYPE ID&emsp;OPERATION TYPE ID&emsp;ORDER&emsp;&emsp;&emsp;&emsp;PLANT<br>";
            
            if ($rownum){//str_pad
            
                for($i=0; $i<$rownum; $i++){

                    $row = mysqli_fetch_assoc($result);

                    echo str_pad("&emsp;&emsp;&emsp;&emsp;&emsp;".$row['Chip_type_id']."&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;",2);

                    echo str_pad("".$row['operation_type_id']."&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;",2);

                    echo str_pad("".$row['order_number']."&emsp;&emsp;&emsp;&emsp;&emsp;",1);

                    $q1 = "SELECT MACHINE_TYPE_ID FROM machine_type WHERE OPERATION_TYPE_ID = {$row['operation_type_id']} ";
                    $result1 = mysqli_query($db,$q1);
                    $rownum1 = mysqli_num_rows($result1);
                    
                    if($rownum1){
                        echo "<select name = plant{$i}>";
                        echo "<option value = '0'>--</option>";
                        for($j=0;$j<$rownum1;$j++)
                        {
                            $row1 = mysqli_fetch_assoc($result1);
                            $q2 = "SELECT * FROM plant WHERE MACHINE_TYPE_ID = {$row1['MACHINE_TYPE_ID']}";
                            $result2 = mysqli_query($db,$q2);
                            $rownum2 = mysqli_num_rows($result2);

                            for($k=0;$k<$rownum2;$k++)
                            {
                                $k1=$k+1;
                                $row2 = mysqli_fetch_assoc($result2);
                                echo "<option value = {$k1}>{$row2['NAME']}</option>";
                                // echo str_pad("".$row2['NAME']."&emsp;&emsp;&emsp;&emsp;&emsp;",25);
                            }
                        }
                        echo "</select>";
                    }

                    echo "<br><br><br>";
                    
                // <button type="submit" onclick="window.location.href='../web4/index.html'">
                //     choose plant
                // </button>

                }
            }
            else {

                die ("Cannot find this data, please re-enter!</br><a href='index.html'>Re-Input</a>". mysqli_error($db));
                
                }

            mysqli_free_result($result);

            mysqli_close($db);
            
            

    ?>
    </span>

    <div style="margin-top:3vh;color:#fff"><a href="index.html">Search Again</a></div>

</div>

    <button type="submit" onclick="window.location.href='../purchase.html'">
        purchase
    </button>

</body>


</html>

