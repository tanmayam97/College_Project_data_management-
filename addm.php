<?php
  session_start();
  if($_SESSION["id"]!="100079")
  {
    header('location:attendance.html');
  }
?>
<!DOCTYPE html>


<html>
<style>
     p {
        font-size: 20px;
        color: white;
        }

    select{
        font-size: 18px;
    }
</style>

    
    <head>
        <title>Sign Up</title>
    </head>
    
    <style>
    
        *{margin: 0; padding: 0;}
        body{background: #ecf1f4; font-family: sans-serif;}
        
        .form-wrap{ width: 320px; background: #3e3d3d; padding: 40px 20px;margin-left: 30%; }
        h1{text-align: center; color: #fff; font-weight: normal; margin-bottom: 20px;}
        
        input{width: 100%; background: none; border: 1px solid #fff; border-radius: 3px; padding: 6px 15px; box-sizing: border-box; margin-bottom: 20px; font-size: 16px; color: #fff;}
        
        input[class="button"]{ background: #bac675; border: 0; cursor: pointer; color: #3e3d3d;}
        input[class="button"]:hover{ background: #a4b15c; transition: .6s;}
        
        ::placeholder{color: #fff;}
    
    </style>

    <body>
        <div class="form-wrap" id="frm1">
            <form action="server.php" method="post"> 
                <h1>Add Project</h1>
                <input type="text" placeholder="Project ID" name="pid" required>
                <input type="text" placeholder="Student ID 1" name="studid1" required>
                <input type="text" placeholder="Student Name 1" name="studname1" required>
                <input type="text" placeholder="Student ID 2" name="studid2" required>
                <input type="text" placeholder="Student Name 2" name="studname2" required>
                <input type="text" placeholder="Student ID 3" name="studid3">
                <input type="text" placeholder="Student Name 3" name="studname3">
                <input type="text" placeholder="Student ID 4" name="studid4">
                <input type="text" placeholder="Student Name 4" name="studname4" >
                <input type="text" placeholder="Student ID 5" name="studid5" >
                <input type="text" placeholder="Student Name 5" name="studname5">
                 <input type="text" placeholder="Project Name" name="pname" required>
                  <input type="text" placeholder="Teacher Name" name="teachername" required>
                <p> Select the Status of Projects: </p><br>
                <select name="pstatus">
                    <option value="ongoing"> On-Going </option>
                    <option value="completed"> Completed </option>
                </select><br><br>
                <input type="text" placeholder="Project Year" name="pyear" required>
                <p>Upload Abstract</p><br>
                <input type="file" name="myFile"><br><br>
                <input type="submit">


                <input class="button" type="submit" value="Next">

            </form>
        
        </div>

      
    
    </body>



</html>

