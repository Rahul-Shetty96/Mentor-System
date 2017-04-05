<?php

  require "dp.php";
  if(isset($_POST['email']))
  { 

  	$email = $_POST['email'];
  	$date = $_POST['date'];

    //delete if already a tuple exists
    $q1 = "select count(*) as d from next_meet where email = '".$email."'";
    $res2 = mysqli_query($con,$q1);
    $b = mysqli_fetch_assoc($res2);
    $n = $b['d'];
    
    if($n == 1)
    {
      $q1 = "delete from next_meet where email = '".$email."'";
      $res1 = mysqli_query($con,$q1);
      if(!$res1)
      echo "Error Occured";
    }


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