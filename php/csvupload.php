<?php
	
	require 'dp.php';
	if(isset($_POST['submit']))
    {
    	$tmp = $_FILES['csv']['tmp_name'];
		$handle = fopen($tmp,"r");
		while(($data = fgetcsv($handle,500,",")) !== FALSE)
		{
			$sql = "Insert into mentee(email,name,class,roll_no) values('$data[0]','$data[1]','$data[2]','$data[3]')";
			if(mysqli_query($con,$sql))
			{
				echo mysql_error();
			}
		}
		fclose($handle);
		header('Location:../html/admin1.php');
}
?>