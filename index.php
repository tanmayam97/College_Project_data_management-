<!DOCTYPE html>
<html lang="en">
<style>
.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #ffe6e6;
  min-width: 450px;
  min-height: 550px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  padding: 12px 16px;
  z-index: 1;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
        crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Roboto|Roboto+Condensed|Roboto+Slab" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <title>MIT (E) CSE Portal</title>
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
                <a class="active" href="index.php">Home</a>
            </li>
            <li>
                <div class="dropdown">
                    <a href="#"><span>Notices</span></a>
                    <div class="dropdown-content">
                    <p>
                        <?php
    $host="localhost";
    $dbUsername="root";
    $dbPassword="";
    $dbname="mitcse";

    $conn = new mysqli($host, $dbUsername, $dbPassword, $dbname);
    if (mysqli_connect_error()) {
        die('Connect Error('. mysqli_connect_error().')'. mysqli_connect_error());
    }
    else {
        $sql = "SELECT * FROM notice";
      $result = $conn->query($sql);

    if ($result->num_rows > 0) {
         while($row = $result->fetch_assoc()) { 
            echo $row['note'];
            echo "<br>";
            echo "<br>";
            }
        }
    }
?>

                    </p>
                    </div>
                </div>
            </li>
            <li>
                <a href="attendance.html">Login</a>
            </li>
            <li>
                <a href="project.html">Projects</a>
            </li>
            <li>
                        
            </li>
        </ul>

    </nav>

   
    <div id="banner">
    
        
    </div>

    <main>
            <h2 class="section-heading">All Blogs</h2>
        <section>
            <div class="card">
                <div class="card-image">
                    <a href="#">
                        <img src="img/1.jpg" alt="Card Image">
                    </a>
                </div>

                <div class="card-description">
                    <a href="rdm.html">
                        <h3>Coding Standards</h3>
                    </a>
                    <p>
                        Coding standards are a set of guidelines, best practices, programming styles and conventions that developers adhere to when writing source code for a project. All big software companies have them. Here are few guidelines from the ‘Linux kernel coding style’.
                    </p>
                    <a href="rdm.html" class="btn-readmore">Read more</a>
                </div>
            </div>

            <div class="card">
                <div class="card-image">
                    <a href="rdm1.html">
                        <img src="img/tax.jpg" alt="Card Image">
                    </a>
                </div>

                <div class="card-description">
                    <a href="rdm1.html">
                        <h3>GUI Standargs</h3>
                    </a>
                    <p>
                        User Interface (UI) Design focuses on anticipating what users might need to do and ensuring that the interface has elements that are easy to access, understand, and use to facilitate those actions. UI brings together concepts from interaction design, visual design, and information architecture.
                    </p>
                    <a href="rdm1.html" class="btn-readmore">Read more</a>
                </div>
            </div>
        </section>

    </main>
        <footer>
            <div id="left-footer">
                <h3>Quick Links</h3>
                <p>
                    <ul>
                        <li>
                            <a class="active" href="index.html">Home</a>
                        </li>
                        <li>
                            <a href="about.html">About</a>
                        </li>
                        <li>
                            <a href="project.html">Projects</a>
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