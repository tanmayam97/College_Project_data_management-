<?php
$pid = $_POST['pid'];
$studid1 = $_POST['studid1'];
$studname1 = $_POST['studname1'];
$studid2 = $_POST['studid2'];
$studname2 = $_POST['studname2'];
$studid3 = $_POST['studid3'];
$studname3 = $_POST['studname3'];
$studid4 = $_POST['studid4'];
$studname4 = $_POST['studname4'];
$studid5 = $_POST['studid5'];
$studname5 = $_POST['studname5'];
$pname= $_POST['pname'];
$teachername = $_POST['teachername'];
$pstatus = $_POST['pstatus'];
$pyear = $_POST['pyear'];
$file_name = $_FILES['image']['name'];
$file_size = $_FILES['image']['size'];
$file_tmp = $_FILES['image']['tmp_name'];
$file_type = $_FILES['image']['type'];
$file_ext = strtolower(end(explode('.',$_FILES['image']['name'])));

$extensions= array("jpeg","jpg","png","pdf");

if (in_array($file_ext,$extensions)=== false) {
	$error[]="This Extension is not allowed please upload a JPEG or JPG or PNG or PDF file";
}

if ($file_size > 2097152000) {
	$error[]="File size Exceed";
}

if (empty($errors)== true) {
	move_uploaded_file($file_tmp,"picture/".$file_name);
	echo "Success";
}else {
	print_r($errors);
}

if (!empty($aid) || !empty($pname) || !empty($pstatus) || !empty($pyear) || !empty($img_name)) {
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
		$sql = "INSERT INTO pastpro (pid, studid1, studname1, studid2, studname2,studid3, studname3, studid4, studname4, studid5, studname5, pname,teacherid, teachername, pstatus, pyear, img_name) values ('$pid', '$studid1', '$studname1',  '$studid2', '$studname2', '$studid3', '$studname3', '$studid4', '$studname4', '$studid5', '$studname5','$pname','$teacherid','$teachername','$pstatus','$pyear', '$file_name')";

			if ($conn->query($sql)) {
			echo "<script>alert('Success')</script>";
			
				header("Location: all.php");
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