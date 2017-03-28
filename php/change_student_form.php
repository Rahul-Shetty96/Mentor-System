<?php
	
	require 'dp.php';
	if(isset($_POST['done']))
    {
    	$name =  $_POST['name'];
    	$email =  $_POST['email'];
    	$hemail =  $_POST['hidden'];
    	$mentor = $_POST['mentor'];
    	$roll = $_POST['roll'];
    	$clss =  $_POST['class'];

    	if($email == $hemail)
    	{
    		$sql = "Update mentee 
    				set name = '$name',
    				    roll_no = '$roll',
    				    mentor = '$mentor',
    				    class = '$clss'
    				where email = '$email'";
    		
    		$res = mysqli_query($con,$sql);

    		if(!$res)
    		{
    			echo "Error occured";
    		}
    		else
    	    {
    	    	echo "Successfully  updated";
    	    }
    	}
    	else
    	{
    		$sql = "Update mentee 
    				set email = '$email'
    				where email = '$hemail'";
    		echo $sql;
    		$res = mysqli_query($con,$sql);

    		if(!$res)
    		{
    			echo "Error occured";
    		}
    		else{
    			echo "Successfully updated email";
    		}
    	}
    }
?>