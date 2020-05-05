<?php
  session_start();
  if($_SESSION["id"]!="100079")
  {
    header('location:attendance.html');
  }
?>

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
      $sql = "SELECT pid, studid1, studname1, studid2, studname2, studid3, studname3, studid4, studname4, studid5, studname5, pname, teachername, pstatus, pyear , img_name FROM pastpro";
      $result = $conn->query($sql);
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <style>
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
  <meta http-equiv="refresh" content="5">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
    crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Roboto|Roboto+Condensed|Roboto+Slab" rel="stylesheet">
  <link rel="stylesheet" href="style.css">
  <title>Admin Panel</title>
</head>

<body>
  <nav>
      <div id="logo-img">
          <a href="index.html">
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
                        <a  href="all.php">All Projects</a>
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
    <div class="row">
      <div class="column" style="height: 750px;">
    
      <h2 class="page-headings">Add Students Data</h2>
        <form method="get" action="studform.php">
            <button class="button" type="submit">Add Data</button>
         </form>
         <form method="get" action="studentlist.php">
            <button class="button" type="submit">View Students</button>
         </form>
         <form method="get" action="excel1.php">
              <button class="button" type="submit">Upload Excel</button>
            </form>

      <h2 class="page-headings">Add Teacher Data</h2>
        <form method="get" action="teachform.php">
            <button class="button" type="submit">Add Data</button>
         </form> 
         <form method="get" action="teacherlist.php">
            <button class="button" type="submit">View Teachers</button>
         </form>
         <form method="get" action="trand.php">
              <button class="button" type="submit">Assign Groups</button>
            </form>

       <h2 class="page-headings">Update Notice Here</h2>

        <form method="POST" action="adpal.php">
       <textarea style="height: 100px;" rows = "50" cols = "50" name = "notice" placeholder="Enter Notice Here..">
         </textarea><br>
            <input class="button2" type="submit" name="up" value="Update">
         </form>     
              
  </div>
  <div class="column" style="height: 750px;">
      <h2 class="page-headings">Create New Groups</h2>

        <form method="get" action="rand.php">
            <button class="button" type="submit">Create</button>
        </form>
        <form method="get" action="gpview.php">
            <button class="button" type="submit">Veiw Created</button>
        </form>

      <h2 class="page-headings">Add Projects</h2>
        <form method="get" action="addm.php">
            <button class="button" type="submit">Add Project</button>
         </form>

      <h2 class="page-headings">Add Excel File</h2>
            <form method="get" action="excel.php">
              <button class="button" type="submit">Upload Excel</button>
            </form>

      <h2 class="page-headings">Update Project Status</h2>
            <form action="adpal.php" method="post">
              <h8 style="font-size: 18px"><b>Change Status to Complete</b></h8>
              <select name="ps" style="width: 118px;height: 30px;font-size:21px;" required>

                <?php

                $sql = "SELECT pid FROM pastpro WHERE pstatus = 'ongoing'";
                $result = $conn->query($sql);

                if (@$result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                echo '<option value="'. $row["pid"].'">'.$row["pid"].'</option>';
                }
              }

                ?>
              </select><br>
                  <button class="button2" type="submit" name="update">Update</button>
            </form>

            <form action="adpal.php" method="post">
            <h8 style="font-size: 18px"><b>Change Status to Ongoing</b></h8>
            <select name="ps" style="width: 118px;height: 30px;font-size:21px;" required>
              <?php

                $sql = "SELECT pid FROM pastpro WHERE pstatus = 'completed'";
                $result = $conn->query($sql);

                if (@$result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                echo '<option value="'. $row["pid"].'">'.$row["pid"].'</option>';
                }
              }
                
                ?>
            </select>
            <br>
              <button class="button2" type="submit" name="update1">Update</button>
            </form>

  </div>
</div>
    
      
    </main>
   <footer>
        <div id="left-footer">
            <h3>Quick Links</h3>
            <p>
                <ul>
                    <li>
                        <a href="admin.php">Home</a>
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
            <p>This website is Under Construction</p>
        </div>
    </footer>
  <script src="main.js"></script>
</body>

</html>

                


        <?php if (isset($_POST['update1'])) {
                $qry2="update pastpro set pstatus='ongoing' where pid='".$_POST['ps']."'";
                $conn->query($qry2);
              } ?>

              <?php if (isset($_POST['update'])) {
                echo $_POST['ps'];
                $qry2="update pastpro set pstatus='completed' where pid='".$_POST['ps']."'";
                $conn->query($qry2);
              } 

if(isset($_POST['up']))
{

$notice = $_POST['notice'];

if (!empty($notice)) {
    
        $sql = "INSERT INTO notice (note) values ('$notice')";

            if ($conn->query($sql)) {
            echo "<script>alert('Success')</script>";
            
                header("Location: all.php");
            }
            else {
            echo "Error: ". $sql ."<br>". $conn->error;
            }
        $conn->close();
}
else {
    echo "All fields are required.";
    die();
}
}
?>