<?php
$connect = mysqli_connect("localhost", "root", "", "mitcse");
$output = '';
if(isset($_POST["import"]))
{
 @$extension = end(explode(".", $_FILES["excel"]["name"])); // For getting Extension of selected file
 $allowed_extension = array("xls", "xlsx", "csv"); //allowed extension
 if(in_array($extension, $allowed_extension)) //check selected file extension is present in allowed extension array
 {
  $file = $_FILES["excel"]["tmp_name"]; // getting temporary source of excel file
  include("PHPExcel-1.8/Classes/PHPExcel/IOFactory.php"); // Add PHPExcel Library in this code
  $objPHPExcel = PHPExcel_IOFactory::load($file); // create object of PHPExcel library by using load() method and in load method define path of selected file

  $output .= "<label class='text-success'>Data Inserted</label><br /><table class='table table-bordered'>";
  foreach ($objPHPExcel->getWorksheetIterator() as $worksheet)
  {
   $highestRow = $worksheet->getHighestRow();
   for($row=0; $row<=$highestRow; $row++)
   {
    $output .= "<tr>";
    $pid = mysqli_real_escape_string($connect, $worksheet->getCellByColumnAndRow(0, $row)->getValue());
    $studid1 = mysqli_real_escape_string($connect, $worksheet->getCellByColumnAndRow(1, $row)->getValue());
    $studname1 = mysqli_real_escape_string($connect, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
    $studid2 = mysqli_real_escape_string($connect, $worksheet->getCellByColumnAndRow(3, $row)->getValue());
    $studname2 = mysqli_real_escape_string($connect, $worksheet->getCellByColumnAndRow(4, $row)->getValue());
    $studid3 = mysqli_real_escape_string($connect, $worksheet->getCellByColumnAndRow(5, $row)->getValue());
    $studname3 = mysqli_real_escape_string($connect, $worksheet->getCellByColumnAndRow(6, $row)->getValue());
    $studid4 = mysqli_real_escape_string($connect, $worksheet->getCellByColumnAndRow(7, $row)->getValue());
    $studname4 = mysqli_real_escape_string($connect, $worksheet->getCellByColumnAndRow(8, $row)->getValue());
    $studid5 = mysqli_real_escape_string($connect, $worksheet->getCellByColumnAndRow(9, $row)->getValue());
    $studname5 = mysqli_real_escape_string($connect, $worksheet->getCellByColumnAndRow(10, $row)->getValue());
    $pname = mysqli_real_escape_string($connect, $worksheet->getCellByColumnAndRow(11, $row)->getValue());
    $teacherid = mysqli_real_escape_string($connect, $worksheet->getCellByColumnAndRow(12, $row)->getValue());
    $teachername = mysqli_real_escape_string($connect, $worksheet->getCellByColumnAndRow(13, $row)->getValue());
    $pstatus = mysqli_real_escape_string($connect, $worksheet->getCellByColumnAndRow(14, $row)->getValue());
    $pyear = mysqli_real_escape_string($connect, $worksheet->getCellByColumnAndRow(15, $row)->getValue());
    $query = "INSERT INTO pastpro (pid, studid1, studname1, studid2, studname2, studid3, studname3, studid4, studname4, studid5, studname5, pname, teacherid, teachername, pstatus, pyear) VALUES ('".$pid."','".$studid1."','".$studname1."','".$studid2."','".$studname2."','".$studid3."','".$studname3."','".$studid4."','".$studname4."','".$studid5."','".$studname5."','".$pname."','".$teacherid."','".$teachername."','".$pstatus."','".$pyear."')";
    mysqli_query($connect, $query);
    $output .= '<td>'.$pid.'</td>';   
    $output .= '<td>'.$studid1.'</td>';
    $output .= '<td>'.$studname1.'</td>';
    $output .= '<td>'.$studid2.'</td>';
    $output .= '<td>'.$studname2.'</td>';
    $output .= '<td>'.$studid3.'</td>';
    $output .= '<td>'.$studname3.'</td>';
    $output .= '<td>'.$studid4.'</td>';
    $output .= '<td>'.$studname4.'</td>';
    $output .= '<td>'.$studid5.'</td>';
    $output .= '<td>'.$studname5.'</td>';
    $output .= '<td>'.$pname.'</td>';
    $output .= '<td>'.$teacherid.'</td>';
    $output .= '<td>'.$teachername.'</td>';
    $output .= '<td>'.$pstatus.'</td>';
    $output .= '<td>'.$pyear.'</td>';
    $output .= '</tr>';
   }
  } 
  $output .= '</table>';

 }
 else
 {
  $output = '<label class="text-danger">Invalid File</label>'; //if non excel file then
 }
}
?>

<html>
 <head>
  <title>Import Excel to Mysql</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />
  <style>
  .body
  {
   margin:0;
   padding:0;
   background-color:#f1f1f1;
  }
  .box
  { 
   width:500px;
   border:1px solid #ccc;
   background-color:#fff;
   border-radius:5px;
   margin-top:100px;
  }
  
  </style>
 </head>
 <body>
  <div class="container box">
   <h3 align="center">Import Excel to Mysql</h3><br />
   <form method="post" enctype="multipart/form-data">
    <label>Select Excel File</label>
    <input type="file" name="excel" />
    <br />
    <input type="submit" name="import" class="btn btn-info" value="Import" />
   </form>
   <form action="adpal.php" ><input type="submit" class="button2" value="Go Back" ></form>
   <br>
   <br>
   <?php
   echo $output;
   ?>
  </div>
 </body>
</html>