<?php
	require 'dp.php';
	if(isset($_POST['done']))
    {
    	$pwd = $_POST['pwd'];
    	$name = $_POST['name'];
        $email =  $_POST['email'];

    	$sql = "INSERT INTO mentor(email, name,password) VALUES ('$email','$name','$pwd')";

    	$res = mysqli_query($con,$sql);
    	if(!$res)
        {
            echo "Error Occurred";
        }
        else
            echo "Insert Successfully";
    }
?>