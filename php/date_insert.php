<?php

  require "dp.php";
  if(isset($_POST['email']))
  { 

  	$email = $_POST['email'];
  	$date = $_POST['date'];
  	$q = "Insert into next_meet values('".$email."','".$date."')";
  	$res = mysqli_query($con,$q);

  	if(!$res)
  	{
  		echo "Error Occured";
  	}
  	else
  	{
  		echo "Inserted Successfully";
  	}
  }
 ?>