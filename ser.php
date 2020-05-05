<?php
$studid = $_POST['studid'];
$studname = $_POST['studname'];
$class = $_POST['class'];


if (!empty($studid) || !empty($studname) || !empty($class)) {
    $host="localhost";
    $dbUsername="root";
    $dbPassword="";
    $dbname="mitcse";

    $conn = new mysqli($host, $dbUsername, $dbPassword, $dbname);
    if (mysqli_connect_error()) {
        die('Connect Error('. mysqli_connect_error().')'. mysqli_connect_error());
    }
    else {
        $sql = "INSERT INTO student(studid, studname, class) values ('$studid', '$studname', '$class')";

            if ($conn->query($sql)) {
            echo "<script>alert('Success')</script>";
            
                header("Location: studentlist.php");
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