<!DOCTYPE html>
<html lang="en">
<head>
 <meta content="text/html;charset=utf-8" http-equiv="Content-Type">
    <meta content="utf-8" http-equiv="encoding">
	<title>Welcome</title>
	<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
	<script src="../js/jquery.js" type="text/javascript"></script>
	<script src="../bootstrap/js/bootstrap.min.js"></script>
	<script src="../js/admin1.js" type="text/javascript"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-filestyle/1.2.1/bootstrap-filestyle.min.js"></script>
	<link href="../css/header.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <link rel="stylesheet" href="../css/footer.css">

</head>
<body>

<?php require 'header.php'; 
	  session_start();
    if(!isset($_SESSION['email']))
    header('Location:logform2.php');

    require '../php/dp.php';

    if(isset($_POST['logout']))
    {
    session_destroy();
    header('Location:logform2.php');
    }

    $query = "Select name from mentor where email = '".$_SESSION['email']."'";
    $res = mysqli_query($con,$query);

    if(!$res)
    {
    // header('Location:logform2.php');    
    }
    else
    {
      $a = mysqli_fetch_assoc($res);
      $name = $a['name'];
    }

?>

<div class="container">
  <h2>Hello <?php echo $name ?>,</h2>
  <h3>Your Mentees<h3>
<h4>D10<h4> 
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Roll No</th>
        <th>Student Name</th>
        <th>Last Meet</th>
        <th>Issue Discussed</th>
		    <th>Next Meet</th>
      </tr>
    </thead>
    <tbody>
      <?php

    $query = "Select email,roll_no,name from mentee where mentor = '".$_SESSION['email']."' and class='D10' order by roll_no";
      $res = mysqli_query($con,$query);

      $ar1 = array();
      $ar2 = array();
      $ar3 = array();
      while ($row = $res->fetch_array())
      {
           $ar1[] = $row['email'];
           $ar2[] = $row['roll_no'];
           $ar3[] = $row['name'];
      }

      for($i=0;$i<sizeof($ar1);$i++)
      {
        $roll = $ar2[$i];
        $email = $ar1[$i];
        $name = $ar3[$i];

        $q1 = "select * from log_record where email = '".$email."' order by prev_meet asc limit 1";
        $q2 = "select * from next_meet where email = '".$email."' order by next_meet";
        $res1 = mysqli_query($con,$q1);
        $res2 = mysqli_query($con,$q2);
        if(mysqli_num_rows($res1)==0 && mysqli_num_rows($res2)==0)
        {
          $nm = "-";
          $pm = "-";
          $is = "-";
     }
        else
        {
            $row = $res1->fetch_array();
            $pm =  $row['prev_meet'];
            
            //pre-process date
            $day = substr($pm,8,2);
            $month = substr($pm,5,2);
            $year = substr($pm,0,4);

            $pm = $day."/".$month."/".$year;


            $is =  $row['issue'];
            
            $row = $res2->fetch_array();
            $nm =  $row['next_meet'];


        }






        echo "<tr><td>".$roll.'</td><td><a href="profile.php?email='.$email.'">'.$name."</a></td><td>".$pm."</td><td>".$is."</td><td>".$nm."</td></tr>";
      }




    ?>
    </tbody>
  </table>
  <br>
  <h4>D15<h4>
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Roll No</th>
        <th>Student Name</th>
        <th>Last Meet</th>
        <th>Issue Discussed</th>
		    <th>Next Meet<th>
      </tr>
    </thead>
    <tbody>
    
    <?php

    $query = "Select email,roll_no,name from mentee where mentor = '".$_SESSION['email']."' and class='D15' order by roll_no";
      $res = mysqli_query($con,$query);

      $ar1 = array();
      $ar2 = array();
      $ar3 = array();
      while ($row = $res->fetch_array())
      {
           $ar1[] = $row['email'];
           $ar2[] = $row['roll_no'];
           $ar3[] = $row['name'];
      }

      for($i=0;$i<sizeof($ar1);$i++)
      {
        $roll = $ar2[$i];
        $email = $ar1[$i];
        $name = $ar3[$i];

        $q1 = "select * from log_record where email = '".$email."' order by prev_meet desc limit 1";
        $q2 = "select * from next_meet where email = '".$email."' order by next_meet";
        $res1 = mysqli_query($con,$q1);
        $res2 = mysqli_query($con,$q2);
        if(mysqli_num_rows($res1)==0 && mysqli_num_rows($res2)==0)
        {
          $nm = "-";
          $pm = "-";
          $is = "-";
        }
        else
        {
             $row = $res1->fetch_array();
            $pm =  $row['prev_meet'];
            
            //pre-process date
            $day = substr($pm,8,2);
            $month = substr($pm,5,2);
            $year = substr($pm,0,4);

            $pm = $day."/".$month."/".$year;


            $is =  $row['issue'];
            
            $row = $res2->fetch_array();
            $nm =  $row['next_meet'];
        }




  

        echo "<tr><td>".$roll.'</td><td><a href="profile.php?email='.$email.'">'.$name."</a></td><td>".$pm."</td><td>".$is."</td><td>".$nm."</td></tr>";
      }




    ?>
    </tbody>
  </table>
  <br>
  <h4>D20<h4>
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Roll No</th>
        <th>Student Name</th>
        <th>Last Meet</th>
        <th>Issue Discussed</th>
		<th>Next Meet<th>
      </tr>
    </thead>
    <tbody>
    
    </tbody>
  </table>
</div>
<?php require'footer.php' ?>
</body>
</html>
