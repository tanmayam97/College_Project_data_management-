<?php
  session_start();
  if($_SESSION["id"]!="100079")
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
  <title>Teachers List</title>
</head>

<body>
  
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
                        <a href="all.php">All Projects</a>
                    </li>
                    <li>
                        <a class="active" href="adpal.php">Admin Panel</a>
                    </li>
                    <li>
                        <a href="#">Settings</a>
                    </li>
                    <li>
                        <a href="logout.php">Logout</a>
                    </li>
         
      </ul>
  </nav>

  
  <main>
    <h2 class="page-heading">Teachers</h2>
        
<?php
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
      $sql = "SELECT tid, teacherid, teachername, password FROM teacher";
      $result = $conn->query($sql);

if ($result->num_rows > 0) {
   echo " <table border= '3' style='width:50%'>
  <tr>
    <th>Sr. No.</th>
    <th>Teacher ID</th>
    <th>Teacher Name</th>
  </tr>";

if ($result->num_rows > 0) {
while($row = $result->fetch_assoc()) {
        echo '<tr><td align="center">' . $row["tid"]. '</td><td align="center">' . $row["teacherid"]. '</td><td align="left">' . $row["teachername"]. '</td></tr>';
      }
}
    echo "</table>";
  }
}
?>
</main><br>
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
                        <a href="ap.php">All Projects</a>
                    </li>
                    <li>
                        <a class="active" href="adpal.php">Admin Panel</a>
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
            <p>This Website is Under Construction</p>
        </div>
    </footer>
<script src="main.js"></script>
</body>

</html>