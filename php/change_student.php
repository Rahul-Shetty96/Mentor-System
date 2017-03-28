<?php
	require 'dp.php';
	if(isset($_POST['done']))
    {
    	$clss = $_POST['class'];
    	$roll = $_POST['roll'];
    	$sql = "Select * from mentee where class='$clss' and roll_no='$roll'";
    	$res = mysqli_query($con,$sql);
    	if(mysqli_num_rows($res) == 0)
    	echo "0";
    	else
    	{
    		$ar = array();
			while($r = mysqli_fetch_row($res))
    		{
    			$ar[] = $r;
    		}
    		echo json_encode($ar);
    	}
    }
?>