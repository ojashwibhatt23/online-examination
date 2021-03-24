<?php
session_start();
$con= mysqli_connect('localhost','root','');
if($con){
    echo 'connection successful';
} else {
    echo 'no connection';
}
mysqli_select_db($con,'examonline');

$name=$_POST['user'];
$password=$_POST['password'];

$q = "select * from signup where name='$name' && password='$password' ";
$result= mysqli_query($con, $q);
$number = mysqli_num_rows($result);
if($number==1){
    $_SESSION['username']=$name;
    header('location:subject.php');
} else {
       header ('location: login.php');
}
?>

