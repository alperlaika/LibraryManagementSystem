<?php
require('dbconn.php');
session_start();

$bookid=$_GET['id1'];

$rollno=$_GET['id2'];

$sql="delete from LMS.record where RollNo='$rollno' and BookId='$bookid'";

if($conn->query($sql) === TRUE)
{
	//$sql1="insert into LMS.message (RollNo,Msg,Date,Time) values ('$rollno','Your request for issue of BookId: $bookid  has been rejected',curdate(),curtime())";
 //$result=$conn->query($sql1);
echo "<script type='text/javascript'>alert('Deleted')</script>";
header( "Refresh:0.01; url=issue_request.php", true, 303);
}
else
{
	echo "<script type='text/javascript'>alert('Error: Could not delete')</script>";
    header( "Refresh:0.01; url=issue_request.php", true, 303);

}




?>