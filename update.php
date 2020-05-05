<?php
  session_start();
  if(!isset($_SESSION["id"]))
  {
    header('location:attendance.html');
  }
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
    crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Roboto|Roboto+Condensed|Roboto+Slab" rel="stylesheet">
  <link rel="stylesheet" href="style.css">
  <title>Projects Under Me
  </title>
</head>

<body>
  <div id="slideout-menu">
      <ul>
          <li>
                        <a href="staff.php">Home</a>
                    </li>
                    <li>
                        <a class="active" href="update.php">Project Under Me</a>
                    </li>
                    <li>
                        <a href="#">Settings</a>
                    </li>
                    <li>
                        <a href="logout.php">Logout</a>
                    </li>
          <li>
              <input type="text" placeholder="Search Here">
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
                        <a href="staff.php">Home</a>
                    </li>
                    <li>
                        <a class="active" href="update.php">Project Under Me</a>
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
      <input type="text" placeholder="Search Here">
  </div>

  <main>
    <br><br><br><br>
    <h2 class="page-heading">Projects Under You</h2>
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
      $sql = "SELECT * FROM pastpro where teacherid = ".$_SESSION["id"]."";
      $result = $conn->query($sql);

    if ($result->num_rows > 0) {
     echo "<table border='3'>
  <tr>
 <td >Project ID</td>
 <td>Student ID</td>
 <td>Student Name</td>
 <td>Project Name</td>
 <td>Project Status</td>
 <td>Project Year</td>
 <td>Abstract</td>
 </tr>";
    while($row = $result->fetch_assoc()) { 
  echo "<tr>
 <td rowspan='5'>";
  echo $row["pid"];
  echo "</td>";
  echo "<td>";
  echo $row["studid1"];
  echo "</td>";
  echo "<td>";
  echo $row["studname1"];
  echo "</td>";
  echo "<td rowspan='5'>";
echo $row["pname"];
 echo "</td>";
  echo "<td rowspan='5'>";
echo $row["pstatus"];
 echo "</td>";
 echo "<td rowspan='5'>";
echo $row["pyear"];
 echo "</td>";
echo "<td rowspan='5'>";
echo $row["img_name"];
 echo "</td>";
echo "</tr>";


echo "<tr>";
  echo "<td>";
  echo $row["studid2"];
  echo "</td>";
  echo "<td>";
  echo $row["studname2"];
  echo "</td>";
echo "</tr>";

echo "<tr>";
  echo "<td>";
  echo $row["studid3"];
  echo "</td>";
  echo "<td>";
  echo $row["studname3"];
  echo "</td>";
echo "</tr>";
echo "<tr>";
  echo "<td>";
  echo $row["studid4"];
  echo "</td>";
  echo "<td>";
  echo $row["studname4"];
  echo "</td>";
echo "</tr>";
echo "<tr>";
  echo "<td>";
  echo $row["studid5"];
  echo "</td>";
  echo "<td>";
  echo $row["studname5"];
  echo "</td>";
echo "</tr>";
    }
      }

echo "</table>";
 


}
?> 

  </main>
<br><br>

    <footer>
        <div id="left-footer">
            <h3>Quick Links</h3>
            <p>
                <ul>
                    <li>
                        <a href="staff.php">Home</a>
                    </li>
                    <li>
                        <a class="active" href="update.php">Project Under Me</a>
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
            <p>This website is Under Construction</p>
        </div>
    </footer>

  <script src="main.js"></script>
</body>

</html>