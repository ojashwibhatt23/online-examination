<?php
session_start();
if(!isset($_SESSION['username'])){
    header('location:login.php');
}

$con = mysqli_connect('localhost','root','');
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
        <div class="container"> 
            <h1 class="text-center text-primary">Online Examination System</h1>
            <h3 class="text-center text-success"> Welcome <?php echo $_SESSION['username']; ?></h3><br>
            <div class="card">
                <h4 class="text-center" >Welcome <?php echo $_SESSION['username']; ?> You have to select only one answer out of 4.</h4>
            </div><br>
            <form action="check.php" method="post">
             <?php
            for ($i=1;$i<6;$i++){
            $q= "select * from questions where qid=$i";
            $query= mysqli_query($con,$q);
            
            while($rows= mysqli_fetch_array($query)){
             ?>
                <div class="card">
                    <h5 class="card-header"><?php echo $rows['question'] ?></h5>
           
            <?php
            $q= "select * from answers where ans_id=$i";
            $query= mysqli_query($con,$q);
            
            while($rows= mysqli_fetch_array($query)){
             ?>
                    <div class="card-body">
                    <input type="radio" name="examcheck[<?php echo $rows['ans_id'] ?>]" value="<?php echo $rows['aid'] ;?>">
                   <?php echo $rows['answer']; ?>
                </div>
                
            <?php  }
            ?>    
            
            <?php  }
            }
            ?>
                <br>
                 <input type="submit" name="submit" Value="Submit" class="btn btn-success m-auto d-block" />
            </form>
</div><br> <br>
       
            <a href="logout.php" class="btn btn-primary d-block m-auto text-white" > Logout </a>
        </div>
        
            </form>
    </body>
</html>
