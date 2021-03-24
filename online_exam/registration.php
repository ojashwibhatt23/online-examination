<?php
session_start();
header('location:login.php');
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
    echo "duplicate data"; 
} else {
        $qy="insert into signup(name, password) values ('$name' ,'$password' )";
         mysqli_query($con, $qy);
}
?>

