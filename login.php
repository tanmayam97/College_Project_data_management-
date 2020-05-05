<?php

session_start();
$con = mysqli_connect('localhost','root','');

mysqli_select_db($con, 'mitcse');

$teacherid = $_POST['teacherid'];
$_SESSION["id"]=$teacherid;
$password = $_POST['password'];

$s = " select * from teacher where teacherid = '$teacherid' && password = '$password' ";

$result = mysqli_query($con, $s);

$num = mysqli_num_rows($result);
if($teacherid == "100079" && $password == "admin" )
{
	$_SESSION["teacherid"] = $_POST['teacherid'];

	echo"<script>alert('Login Successful');</script>";
  	header('location:admin.php');
}	
else if($teacherid == "teacherid" && $password == "password")
{

$_SESSION["teacherid"] = $_POST['teacherid'];

	echo"<script>alert('Login Successful');</script>";
  	header('location:admin.php');
}
else if ($num == 1) {
	
$_SESSION["teacherid"] = $_POST['teacherid'];

  echo"<script>alert('Login Successful');</script>";
  header('location:staff.php');
}else{
  echo"<script>alert('Wrong id or password');</script>";
  header('location:attendance.html');
}
  
?>


