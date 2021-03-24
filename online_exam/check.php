<?php
session_start();
$con = mysqli_connect('localhost', 'root', '');
mysqli_select_db($con, 'exam');
?>


<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="bootstrap.css">
    </head>
    <body>

        <div class="container text-center">
            <h2 class="text-center text-primary"> Online Examination System </h2>
            <br><br>
            <table class="table text-center table-bordered table-hover" >
                <tr>
                    <th colspan="2" class="bg-dark"> <h2 class="text-white"> Results </h2></th>
                </tr>
                <tr>
                    <td>
                        Question Attempted
                    </td>


                    <?php
                    $Resultans = 0;
                    $counter=0;
                    if (isset($_POST['submit'])) {
                        if (!empty($_POST['examcheck'])) {
                            $checked_count = count($_POST['examcheck']);
                            ?>
                            <td>
                                <?php
                                echo "Out of 5, you have selected " . $checked_count . " options ";
                                ?>
                            </td>

                            <?php
                            $selected = $_POST['examcheck'];
                            
                            $q = "select * from questions";
                            $ansresults = mysqli_query($con, $q);
                            $i = 1;
                            while ($rows = mysqli_fetch_array($ansresults)) {
                                $flag = $rows['ans_id'] == $selected[$i];

                                if ($flag) {
                                    $counter++;
                                    $Resultans++;
                                } else {
                                 $counter++;   
                                }
                                $i++;
                            }
                            ?> 



                            <?php
                            $selected = $_POST['examcheck'];

                            $q = "select * from d_questions";
                            $ansresults = mysqli_query($con, $q);
                            $l = 1;
                            while ($rows = mysqli_fetch_array($ansresults)) {
                                $flag = $rows['ans_id'] == $selected[$l];

                                if ($flag) {
                                    $counter++;
                                    $Resultans++;
                                } else {
                                    $counter++;
                                }
                                $l++;
                            }
                            ?>

                            <?php
                            $selected = $_POST['examcheck'];

                            $q = "select * from c_questions";
                            $ansresults = mysqli_query($con, $q);
                            $k = 1;
                            while ($rows = mysqli_fetch_array($ansresults)) {
                                $flag = $rows['ans_id'] == $selected[$k];

                                if ($flag) {
                                    $counter++;
                                    $Resultans++;
                                } else {
                                    $counter++;
                                }
                                $k++;
                            }
                            ?>

                            <?php
                            $selected = $_POST['examcheck'];

                            $q = "select * from java_questions";
                            $ansresults = mysqli_query($con, $q);
                            $j = 1;
                            while ($rows = mysqli_fetch_array($ansresults)) {
                                $flag = $rows['ans_id'] == $selected[$j];

                                if ($flag) {
                                    $counter++;
                                    $Resultans++;
                                } else {
                                    $counter++;
                                }
                                $j++;
                            }
                            ?>


                        </tr>
                        <tr>
                            <td> Your-Total score</td>
                            <td colspan="2">
                                <?php
                                echo " Your score is " . $Resultans . ".";
                            } else {
                                echo "<b>Please Select Atleast One Option.</b>";
                            }
                        }
                        ?>

                    </td>
                </tr>

                <?php
                $name = $_SESSION['username'];
                $finalresult = "insert into user(username,totalques,answerscorrect) values ('$name','5','$Resultans')";
                $queryresult = mysqli_query($con, $finalresult);
                ?>

            </table>
            <a href="logout.php" class="btn btn-success">Logout</a>
        </div>
    </body>
</html>

