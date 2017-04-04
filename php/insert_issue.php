<?php

  require "dp.php";
  if(isset($_POST['email']))
  { 

  	$email = $_POST['email'];
  	$issue = $_POST['issue'];
  	$q = "Insert into log_record values('".$email."','".date("Y-m-d")."','".$issue."')";
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