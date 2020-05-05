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
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
    crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Roboto|Roboto+Condensed|Roboto+Slab" rel="stylesheet">
  <link rel="stylesheet" href="style.css">
  <title>Welcome <?php 
        echo $_SESSION["id"];
      ?></title>
</head>

<body>
  <div id="slideout-menu">
        <ul>
                    <li>
                        <a class="active" href="staff.php">Home</a>
                    </li>
                    <li>
                        <a href="update.php">Project Under Me</a>
                    </li>
                    <li>
                        <a href="#">Settings</a>
                    </li>
                    <li>
                        <a href="logout.php">Logout</a>
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
                        <a class="active" href="staff.php">Home</a>
                    </li>
                    <li>
                        <a href="update.php">Project Under Me</a>
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

    <br><br><br><br>
    <h2 class="page-heading">Welcome 
      <?php 
        echo $_SESSION["id"];
      ?>
    </h2>
    <div id="post-container">
      <section id="about">
        <div class="card">
          <div class="card-description">
            



          </div>
        </div>
      </section>
    </div>

  </main>
<br><br><br><br><br><br><br>
    <footer>
        <div id="left-footer">
            <h3>Quick Links</h3>
            <p>
                <ul>
                    <li>
                        <a class="active" href="staff.php">Home</a>
                    </li>
                    <li>
                        <a href="update.php">Project Under Me</a>
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