<?php
  session_start();
  if($_SESSION["id"]!="007")
  {
    header('location:attendance.html');
  }
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <style>

    .button3 {


    }
  .button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 10px 18px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
  }

  .button2 {
    background-color: white; 
    color: black; 
    border: 2px solid #008CBA;
  }

  .button2:hover {
    background-color: #008CBA;
    color: white;
  }
</style>

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
    crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Roboto|Roboto+Condensed|Roboto+Slab" rel="stylesheet">
  <link rel="stylesheet" href="style.css">
  <title>Login</title>
</head>

<body>
  <div id="slideout-menu">
        <ul>
            <li>
                        <a href="admin.php">Home</a>
                    </li>
                    <li>
                        <a href="adminupdate.php">Project Under Me</a>
                    </li>
                    <li>
                        <a class="active" href="all.php">All Projects</a>
                    </li>
                    <li>
                        <a  href="adpal.php">Admin Panel</a>
                    </li>
                    <li>
                        <a href="#">Settings</a>
                    </li>
                    <li>
                        <a href="logout.php">Logout</a>
                    </li>
            <li>

                <input type="text" name="valueToSearch" placeholder="Search Here" >                
            </li>
        </ul>
    </div>
  <nav>
      <div id="logo-img">
          <a href="#">
              <img src="img/logo.png" alt="MIT Logo">
          </a>
      </div>
      <div id="menu-icon">
          <i class="fas fa-bars"></i>
      </div>
      <ul>
                <li>
                    <a href="admin.php">Home</a>
                </li>
                <li>
                   <a href="adminupdate.php">Project Under Me</a>
                </li>
                    <li>
                        <a class="active" href="all.php">All Projects</a>
                    </li>
                    <li>
                        <a href="adpal.php">Admin Panel</a>
                    </li>
                    <li>
                        <a href="#">Settings</a>
                    </li>
                    <li>
                        <a href="logout.php">Logout</a>
                    </li>
          <li>
              <div id="search-icon">
                  <i class="fas fa-search"></i>
              </div>
          </li>
      </ul>
  </nav>

  <div id="searchbox">
      <input type="text" name="valueToSearch" placeholder="Search Here" >
  </div>

  <main>


  <h2 class="page-heading">Teachers</h2>
  
    <?php
      $teacherid = $_POST['teacherid'];
      $teachername = $_POST['teachername'];
      $password = $_POST['password'];


if (!empty($teacherid) || !empty($teachername) || !empty($password)) {
    $host="localhost";
    $dbUsername="root";
    $dbPassword="";
    $dbname="mitcse";

    $conn = new mysqli($host, $dbUsername, $dbPassword, $dbname);
    if (mysqli_connect_error()) {
        die('Connect Error('. mysqli_connect_error().')'. mysqli_connect_error());
    }
    else {
        $sql = "INSERT INTO teacher (teacherid, teachername, password) values ('$teacherid', '$teachername', '$password')";

            if ($conn->query($sql)) {
            echo "<script>alert('Success')</script>";
            
                header("Location: teacherlist.php");
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

</main>
    <footer>
        <div id="left-footer">
            <h3>Quick Links</h3>
            <p>
                <ul>
                    <li>
                        <a href="admin.html">Home</a>
                    </li>
                    <li>
                        <a href="adminupdate.php">Project Under Me</a>
                    </li>
                    <li>
                        <a class="active" href="ap.php">All Projects</a>
                    </li>
                    <li>
                        <a href="#">Settings</a>
                    </li>
                    <li>
                        <a href="logout.php">Logout</a>
                    </li>
                </ul>
            </p>
        </div>

        <div id="right-footer">
            <h3>Follow us on</h3>
            <div id="social-media-footer">
                <ul>
                    <li>
                        <a href="#">
                            <i class="fab fa-facebook"></i>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fab fa-youtube"></i>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fab fa-github"></i>
                        </a>
                    </li>
                </ul>
            </div>
            <p>This website is under construction</p>
        </div>
    </footer>
<script src="main.js"></script>
</body>

</html>