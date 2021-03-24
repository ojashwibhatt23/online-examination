
<?php
session_start();
if (!isset($_SESSION['username'])) {
    header('location:login.php');
}
$con = mysqli_connect('localhost', 'root', '');
mysqli_select_db($con, 'exam');
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="bootstrap.css">
    </head>
    <body style="background:lightCyan">
        <div class="container"><br>
            <h2 class="text-center text-success"> Welcome <?php echo $_SESSION['username']; ?> </h2>
            <hr style="border:solid 2px">
            <h3 style="margin-left: 450px;"><b> Choose one subject</b> </h3>
            
            <ul style="margin-left: 400px; padding-top: 5px;">
                <li style="padding-top: 10px; font-size: 20px;"><a href="html.php">Html, Css and JavaScript</a></li>
                <li style="padding-top: 10px; font-size: 20px;"><a href="java.php">Java</a></li>
                <li style="padding-top: 10px; font-size: 20px;"><a href="c.php">C Language</a></li>
                <li style="padding-top: 10px; font-size: 20px;"><a href="databasemanagement.php">Database Management</a></li>
            </ul>
            <a href="logout.php" class="btn btn-primary" style="margin-left: 500px;">LOGOUT </a>
        </div>

    </body>
</html>
