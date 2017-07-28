

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>MITS | Exam</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">
  <link rel="stylesheet" href="../plugins/iCheck/flat/blue.css">
  <link rel="stylesheet" href="../plugins/morris/morris.css">
  <link rel="stylesheet" href="../plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <link rel="stylesheet" href="../plugins/datepicker/datepicker3.css">
  <link rel="stylesheet" href="../plugins/daterangepicker/daterangepicker.css">
  <link rel="stylesheet" href="../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="icon" href="../dist/img/icon.png">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    <a href="#" class="logo">
	<span class="logo-mini"><b>M</b>ITS</span>
      <span class="logo-lg"><b>MITS</b> Examination</span>
    </a>
    <nav class="navbar navbar-static-top">
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
								  <?php
			  include '../db_config/connection.php';
			  
			  $sql = "SELECT * FROM user_info where user_id='$myusername' or email='$myusername'";
               $result = $conn->query($sql);

                  if ($result->num_rows > 0) {
        
                while($row = $result->fetch_assoc()) {
                 $avatar = $row['avatar'];
				 $gender = $row['gender'];
				 $regid = $row['user_id'];
				 if ($avatar == null) {
					 if ($gender == "Male") {
						 print '<img src="../dist/img/avatar.png" class="user-image" alt="'.$current_user.'" title="'.$current_user.'">';
					 }else {
						 print '<img src="../dist/img/avatar3.png" class="user-image" alt="'.$current_user.'" title="'.$current_user.'">';
					 }
					 
				 }else{
					   echo '<img src="data:image/jpeg;base64,'.base64_encode($row['avatar'] ).'" class="user-image" alt="'.$current_user.'" title="'.$current_user.'"/>';
				 }
                     }
                   } else {
                
                  }
                   $conn->close();
			  
			  ?>
          
              <span class="hidden-xs"><?php echo"$current_user"; ?></span>
            </a>
            <ul class="dropdown-menu">
              <li class="user-header">
			  <?php
			  include '../db_config/connection.php';
			  
			  $sql = "SELECT * FROM user_info where user_id='$myusername' or email='$myusername'";
               $result = $conn->query($sql);

                  if ($result->num_rows > 0) {
        
                while($row = $result->fetch_assoc()) {
                 $avatar = $row['avatar'];
				 $gender = $row['gender'];
				 $regid = $row['user_id'];
				 if ($avatar == null) {
					 if ($gender == "Male") {
						 print '<img src="../dist/img/avatar.png" class="img-circle" alt="'.$current_user.'" title="'.$current_user.'">';
					 }else {
						 print '<img src="../dist/img/avatar3.png" class="img-circle" alt="'.$current_user.'" title="'.$current_user.'">';
					 }
					 
				 }else{
					  echo '<img src="data:image/jpeg;base64,'.base64_encode($row['avatar'] ).'" class="img-circle" alt="'.$current_user.'" title="'.$current_user.'"/>';
				 }
                     }
                   } else {
                 
                  }
                   $conn->close();
			  
			  ?>
                

                <p>
                  <?php echo"$current_user"; ?>
                  <small><?php echo"$regid"; ?> , Student</small>
                </p>
              </li>
          
              <li class="user-footer">
                <div class="pull-left">
                  <a href="./" class="btn btn-default btn-flat">Profile</a>
                </div>
                <div class="pull-right">
                  <a href="logout.php" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
   
        </ul>
      </div>
    </nav>
  </header>
  <aside class="main-sidebar">
    <section class="sidebar">
      <div class="user-panel">
        <div class="pull-left image">
					  <?php
			  include '../db_config/connection.php';
			  
			  $sql = "SELECT * FROM user_info where user_id='$myusername' or email='$myusername'";
               $result = $conn->query($sql);

                  if ($result->num_rows > 0) {
        
                while($row = $result->fetch_assoc()) {
                 $avatar = $row['avatar'];
				 $gender = $row['gender'];
				 $regid = $row['user_id'];
				 if ($avatar == null) {
					 if ($gender == "Male") {
						 print '<img src="../dist/img/avatar.png" class="img-circle" alt="'.$current_user.'" title="'.$current_user.'">';
					 }else {
						 print '<img src="../dist/img/avatar3.png" class="img-circle" alt="'.$current_user.'" title="'.$current_user.'">';
					 }
					 
				 }else {
					  echo '<img src="data:image/jpeg;base64,'.base64_encode($row['avatar'] ).'" class="img-circle" alt="'.$current_user.'" title="'.$current_user.'"/>';
				 }
                     }
                   } else {
                 
                  }
                   $conn->close();
			  
			  ?>
      
        </div>
        <div class="pull-left info">
          <p><?php echo"$current_user"; ?></p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>

      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>

        <li>
     	  <li class="treeview active">
          <a href="#">
            <i class="fa fa-file-text"></i>
            <span>Examination</span>
   
          </a>
     <ul class="treeview-menu">
            <li><a href="instruction.php"><i class="fa fa-circle-o"></i> Instructions</a></li>
                     </ul>
        </li>
      </ul>
    </section>
 
  </aside>

  <div class="content-wrapper">
    <section class="content-header">
      <h1>
        Your Assessment 
      
      </h1>
    </section>

    <section class="content">
	<div class="container" width=100% border:"1px">
<form action="submit_exam.php" method="GET">
<?php
include '../db_config/connection.php';

$sql = "SELECT * FROM results_info where student_no = '$regid'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
 
    while($row = $result->fetch_assoc()) {
      	print '
	<div class="callout callout-success">
        <h4>Assessment Taken</h4>
        You have already attempt the exam on '. $row['date'].' , your score was '. $row['score'].'%
      </div>';
    }
} else {
  include '../db_config/connection.php';
  $sql = "SELECT * FROM examstate";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
      $examstate = $row['state'];


if ($examstate == "locked") {
	print '
	<div class="callout callout-warning">
        <h4>Assessment is locked!</h4>
        Assessment is not active
      </div>';
}else {
	
	if(isset($_POST['next']))
	{
		$a=$_POST['a'];
	}
	if(!isset($a))
	{
		$a=0;
	}
	include '../db_config/connection.php';
	$sql1="SELECT * FROM exam ORDER BY question_id LIMIT 1 OFFSET $a";
	$result=$conn->query($sql1);
	
	while ($row = $result->fetch_assoc())
	{
		
	echo "<tr><td><b>Q-</b>".$row["question_id"].'<b>) </b>' . $row["question"]. "<br/></td>";
	print '<tr><td><input type="radio" name="q'.$a.'" value="'.$row["option1"].'" required="true"> '.$row["option1"].'<br> </td></tr>';
	print '<tr><td><input type="radio" name="q'.$a.'" value="'.$row["option2"].'" required="true""> '.$row["option2"].'<br></td></tr>';
	print '<tr><td><input type="radio" name="q'.$a.'" value="'.$row["option3"].'" required="true"> '.$row["option3"].'<br></td></tr>';
	print '<tr><td><input type="radio" name="q'.$a.'" value="'.$row["option4"].'" required="true"> '.$row["option4"].'<br></td></tr>';
	print '<tr><td colspan="10"><hr></td></tr>';
	print '<tr><td><input type="hidden" name="'.$a.'" value="'.$row["question_id"].'"</td></tr>';
    
		}
	$b=$a+1;
	echo "<input type='hidden' value='$b' name='a'>";
	echo "<input type='submit' style='color:red' name='prev' value='Previous'> ";
	echo "<input type='submit' name='next' value='Save & Next'> ";
	echo "<input type='submit' name='review' value='Mark for Review'> ";
	echo "<input type='reset' name='reset' value='Reset'>";
	

	echo "</form>";
}

    }
} else {
 
}
$conn->close();
}
?>
<button type="submit" onclick="return confirm('Are you sure you want to submit your assessment ?')"  class="btn btn-primary">Submit Assessment</button><br><br>
</div>

<div class="row">



      </div>

    </section>
  </div>
  <footer class="main-footer">
    
    <strong>Copyright &copy; <?php echo date('Y'); ?> Developed by <a target="_blank" href="#">MITSCSEANS</a>.</strong> All rights
    reserved.
  </footer>


  <div class="control-sidebar-bg"></div>
</div>

<script src="../plugins/jQuery/jquery-2.2.3.min.js"></script>

<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>

<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="../plugins/morris/morris.min.js"></script>
<script src="../plugins/sparkline/jquery.sparkline.min.js"></script>
<script src="../plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="../plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="../plugins/knob/jquery.knob.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
<script src="../plugins/daterangepicker/daterangepicker.js"></script>
<script src="../plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="../plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="../plugins/fastclick/fastclick.js"></script>
<script src="../dist/js/app.min.js"></script>
<script src="../dist/js/pages/dashboard.js"></script>
<script src="../dist/js/demo.js"></script>
</body>
</html>
