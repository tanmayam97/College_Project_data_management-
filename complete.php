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
  <title>All Projects</title>
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
                        <a href="attendance.html">Login</a>
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
      <input type="text" name="valueToSearch" placeholder="Search Here" >
  </div>

  <main>


  <h2 class="page-heading">Completed Projects</h2><br><br>

      <ul>
      <li>  
        <a href="2012-13.php"><h2 class="page-headings">View 2012-13 Projects</h2></a><br><br>
      </li>
        <li>
          <a href="2013-14.php"><h2 class="page-headings">View 2013-14 Projects</h2></a><br><br>
        </li>
        <li>
        <a href="2014-15.php"><h2 class="page-headings">View 2014-15 Projects</h2></a><br><br>
      </li>
      <li>
        <a href="2015-16.php"><h2 class="page-headings">View 2015-16 Projects</h2></a><br><br>
      </li>
      <li>
        <a href="2017-18.php"><h2 class="page-headings">View 2017-18 Projects</h2></a><br><br>
      </li>
    </ul>
        
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