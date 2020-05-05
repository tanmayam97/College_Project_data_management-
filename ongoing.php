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
  <title>Ongoing Projects</title>
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
              <a href="index.php">Home</a>
          </li>
          <li>
              <a  href="attendance.php">Login</a>
          </li>
          <li>
              <a class="active" href="project.html">Projects</a>
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
    <h2 class="page-heading">Ongoing Projects</h2>
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
      $sql = "SELECT * FROM pastpro where pstatus='ongoing'";
      $result = $conn->query($sql);

    if ($result->num_rows > 0) {
     echo "<table border='3'>
  <tr>
 <td >Project ID</td>
 <td>Student ID</td>
 <td>Student Name</td>
 <td>Project Name</td>
 <td>Guide</td>
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
echo $row["teachername"];
 echo "</td>";
 echo "<td rowspan='5'>";
echo $row["pyear"];
 echo "</td>";
echo "<td rowspan='5'>";
echo "<input type='submit' value='View'>";
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
    <footer>
        <div id="left-footer">
            <h3>Quick Links</h3>
            <p>
                <ul>
                    <li>
                        <a href="index.php">Home</a>
                    </li>
                    <li>
                        <a href="attendance.html">Login</a>
                    </li>
                    <li>
                        <a class="active" href="project.html">Projects</a>
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