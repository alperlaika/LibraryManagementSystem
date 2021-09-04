<?php
require('dbconn.php');
session_start();

$id=$_GET['id'];

$roll=$_SESSION['RollNo'];

$sql="insert into LMS.record (RollNo,BookId,Time) values ('$roll','$id', curtime())";
try {
    if($conn->query($sql) === TRUE)
{
    echo "<script type='text/javascript'>alert('You Are Being Redirected To Add Books Page.')</script>";
    header( "Refresh:0.01; url=issue_request.php", true, 303);
    }
} catch (\Throwable $th) {
    echo "<script type='text/javascript'>alert('Adding Unsuccesful.')</script>";
    header( "Refresh:0.01; url=issue_request.php", true, 303);

    echo $th;
}


	



?>