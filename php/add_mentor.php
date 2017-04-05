<?php
	require 'dp.php';
	if(isset($_POST['done']))
    {
    	$pwd = $_POST['pwd'];
    	$name = $_POST['name'];
        $email =  $_POST['email'];
        $query = "select * from mentor";
        $res = mysqli_query($con,$query);
        $id = mysqli_num_rows($res)+1;

    	$sql = "INSERT INTO mentor(email,name,password,id) VALUES ('$email','$name','$pwd','$id')";

    	$res = mysqli_query($con,$sql);
    	if(!$res)
        {
            echo "Error Occurred";
        }
        else
            echo "Insert Successfully";
    }
?>