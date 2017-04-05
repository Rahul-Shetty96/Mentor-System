<?php

  require "dp.php";
  if(isset($_POST['email']))
  { 

  	$email = $_POST['email'];
  	$query = "select * from log_record where email = '".$email."' order by prev_meet desc";
	    
  		echo "<tbody>";
	    $res = mysqli_query($con,$query);
	    if(mysqli_num_rows($res)==0)
        {
          $m = "-";
          $is = "-";
          echo "<tr><td>".$is."</td><td>".$m."</td></tr>";
        }
        else
        {
        	while($row = $res->fetch_array())
        	{
        		$m = $row['prev_meet'];
        		//pre-process date
        		$day = substr($m,8,2);
        		$month = substr($m,5,2);
        		$year = substr($m,0,4);

        		$date = $day."/".$month."/".$year;


        		$is = $row['issue'];
        		echo "<tr><td>".$is."</td><td>".$date."</td></tr>";
        	}
        }
        echo "</tbody>";
  }
?>