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
  <title>Create Groups</title>
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
                   <a href="adminupdate.php">ProjectUnderMe</a>
                </li>
                    <li>
                        <a href="all.php">AllProjects</a>
                    </li>
                    <li>
                        <a class="active" href="adpal.php">AdminPanel</a>
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


  <h2 class=page-heading">Create Groups</h2><br>
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
    $sql = "SELECT  studid, studname, class FROM student";
      $result = $conn->query($sql);

if ($result->num_rows > 0) {
   echo " <table border= '3' style='width:50%'>
  <tr>
    <th>Student Name</th>
    <th>Group No.</th>
    <th>Group</th>
  </tr> <tr>";
  ?>
  <form method="post" action="rand.php">
                <td>  <select name='sname' style='width:100%'>
<?php
if ($result->num_rows > 0) {
while($row = $result->fetch_assoc()) {
  ?>
      
<?php 
?>
               <option value="<?php echo $row['studname']; ?>"> 
              <?php echo $row['studname']; ?></option>
              <?php }} ?>
         </select>   
          </td>
          <td align="center" width="50%"><input type="text" name="Group" placeholder="Enter Group No."></td>
          <td align="center">
            <input type="submit" class="button2" Value="Add" name="add">
          </td>
        </tr>
      </form>

   <?php   
    echo "</table>";
  }
}
?>

<?php

if(isset($_POST['add']))
{
$group = $_POST['Group'];
         
$studname = $_POST['sname'];
  $sql = "INSERT INTO newgrp (studname, pgroup) values ('$studname','$group')";

      if ($conn->query($sql)) {
      @header('location:rand.php');
    
      }
      else {
      echo "Error: ". $sql ."<br>". $conn->error;
      }
}
?><br><br>
<form action="adpal.php" ><input type="submit" class="button2" value="Go Back" ></form>

        
</main><br><br>
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
