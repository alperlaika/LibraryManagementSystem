
<?php
require('dbconn.php');
session_start();
?>
<?php 
if ($_SESSION['RollNo']) {
    ?>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Books</title>

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.css" />

    <!-- Bootstrap CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link rel="stylesheet" href="css/style.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: "Lato", sans-serif;
}

.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

#main {
  transition: margin-left .5s;
  padding: 16px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
</head>
<body>
<?php require_once ("php/header.php"); ?>

<div id="mySidenav" class="sidenav">
<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="books.php"><i class="menu-icon icon-book"></i>All Books </a>
  <a href="current.php"><i class="menu-icon icon-list"></i>Possessed Books </a>
  <a href="issue_request.php"><i class="menu-icon icon-list"></i>Adding Books  </a>
  <a href="return_requests.php"><i class="menu-icon icon-list"></i>Books Returns  </a>
  <a href="logout.php"><i class="menu-icon icon-signout"></i>Logout </a>
</div>

<div id="main">
  <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; open</span>


                    <div class=" p-5 span9">
                        <div class="content">

                        <div class="module">
                            <div class="module-head justify-content-center">
                                <h3>Book Details</h3>
                            </div>
                            <div class="module-body">
                        <?php
                            $x=$_GET['id'];
                            $sql="select * from LMS.book where BookId='$x'";
                            $result=$conn->query($sql);
                            $row=$result->fetch_assoc();    
                            
                                $bookid=$row['BookId'];
                                $name=$row['Title'];
                                $publisher=$row['Publisher'];
                                $year=$row['Year'];
                                $avail=$row['Availability'];
                               // echo "<b>Book ID:</b> ".$bookid."<br><br>";
                               // echo "<b>Title:</b> ".$name."<br><br>";
                            //     $sql1="select * from LMS.author where BookId='$bookid'";
                            //     $result=$conn->query($sql1);
                                
                            //    // echo "<b>Author:</b> ";
                            //     while($row1=$result->fetch_assoc())
                            //     {
                            //         echo $row1['Author']."&nbsp;";
                            //     }
                               // echo "<br><br>";
                                //echo "<b>Publisher:</b> ".$publisher."<br><br>";
                                //echo "<b>Year:</b> ".$year."<br><br>";
                                //echo "<b>Availability:</b> ".$avail."<br><br>";

                                
                        
                           
                            ?>
                    <table class="table table-hover table-striped table-bordered">
					<tr><th>Book ID: </th><td><?php echo  $bookid ?></td></tr>
					<tr><th>Title: </th><td><?php echo   $name?></td></tr>
					<tr><th>Author: </th><td>
                    <?php
                     $sql1="select * from LMS.author where BookId='$bookid'";
                     $result=$conn->query($sql1);
                     while($row1=$result->fetch_assoc())
                     {
                         echo $row1['Author']."&nbsp;";
                     }
                     ?>
                     </td></tr>
					<tr><th>Publisher: </th><td><?php echo $publisher ?></td></tr>
					<tr><th>Year: </th><td><?php echo $year ?></td></tr>
                    <tr><th>Availability: </th><td><?php echo $avail ?></td></tr>

				</table>
                            
                        <a href="books.php" class="btn btn-warning justify-content-center">Go Back</a> 
                                                 
                               </div>
                           </div>
                            </div>
                
                </div>
            
           

</div>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
}
</script>

<?php require_once ("php/footer.php"); ?>
  
  <!-- Optional JavaScript; choose one of the two! -->

  <!-- Option 1: Bootstrap Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>

  <!-- Option 2: Separate Popper and Bootstrap JS -->
  <!--
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>
  -->
   
</body>
</html> 
<?php }
else {
    echo "<script type='text/javascript'>alert('Access Denied!!!')</script>";
} ?>
