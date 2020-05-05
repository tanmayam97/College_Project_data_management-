<?php
$sid = $_POST['sid'];
$studid = $_POST['studid'];
$studname = $_POST['studname']; 
$class = $_POST['class'];
$group = $_POST['pgroup'];


if (!empty($sid) || !empty($studid) || !empty($studname) || !empty($class) || !empty($group)) {
	$host="localhost";
	$dbUsername="root";
	$dbPassword="";
	$dbname="mitcse";

	
	//Create Connection
	$conn = new mysqli($host, $dbUsername, $dbPassword, $dbname);
	if (mysqli_connect_error()) {
		die('Connect Error('. mysqli_connect_error().')'. mysqli_connect_error());
	}
	else {
		$sql = "INSERT INTO newgrp (sid, studid, studname, class, group) values ('$sid', '$studid', '$studname', '$class', '$group')";

			if ($conn->query($sql)) {
			echo "<script>alert('Success')</script>";
		
			}
			else {
			echo "Error: ". $sql ."<br>". $conn->error;
			}
		$conn->close();
	}
}
else {
	echo "All fields are required.";
	die();
}
?>