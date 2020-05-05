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
      $sql = "SELECT * FROM pastpro where pyear = '2017-18'";
      $result = $conn->query($sql);

    if ($result->num_rows > 0) {
     echo "<table border='3'>
  <tr>
 <td >Project ID</td>
 <td>Student ID</td>
 <td>Student Name</td>
 <td>Project Name</td>
 <td>Guide</td>
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
echo $row["teachername"];
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