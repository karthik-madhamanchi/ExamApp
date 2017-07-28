<?php

include 'check_login.php';
			  include '../db_config/connection.php';
			  
			  $sql = "SELECT * FROM user_info where user_id='$myusername' or email='$myusername'";
               $result = $conn->query($sql);

                  if ($result->num_rows > 0) {
        
                while($row = $result->fetch_assoc()) {
                    $current_std_no = $row['user_id'];

                     }
                   } else {
                
                  }
                   $conn->close();

/*$ans1 = ;
$ans2 = $_GET['q2'];
$ans3 = $_GET['q3'];
$ans4 = $_GET['q4'];
$ans5 = $_GET['q5'];
$ans6 = $_GET['q6'];
$ans7 = $_GET['q7'];
$ans8 = $_GET['q8'];
$ans9 = $_GET['q9'];
$ans10 = $_GET['q10'];
$ans11 = $_GET['q11'];
$ans12 = $_GET['q12'];
$ans13 = $_GET['q13'];
$ans14 = $_GET['q14'];
$ans15 = $_GET['q15'];
$ans16 = $_GET['q16'];
$ans17 = $_GET['q17'];
$ans18 = $_GET['q18'];
$ans19 = $_GET['q19'];
$ans20 = $_GET['q20'];*/

/*$qu1 = $_GET['1'];
$qu2 = $_GET['2'];
$qu3 = $_GET['3'];
$qu4 = $_GET['4'];
$qu5 = $_GET['5'];
$qu6 = $_GET['6'];
$qu7 = $_GET['7'];
$qu8 = $_GET['8'];
$qu9 = $_GET['9'];
$qu10 = $_GET['10'];
$qu11 = $_GET['11'];
$qu12 = $_GET['12'];
$qu13 = $_GET['13'];
$qu14 = $_GET['14'];
$qu15 = $_GET['15'];
$qu16 = $_GET['16'];
$qu17 = $_GET['17'];
$qu18 = $_GET['18'];
$qu19 = $_GET['19'];
$qu20 = $_GET['20'];*/
//include 'fetch_questions.php';
include 'fetch_answers.php';
if(isset($_GET['q1'])){
if ($_GET['q1'] == $mark1) {
	$score1 = 1;
}else {
	$score1 = 0;
}
}
else {
	$score1 = 0;
}
if(isset($_GET['q2'])){

if ($_GET['q2'] == $mark2) {
	$score2 = 1;
}else {
	$score2 = 0;
}
}
else {
	$score2 = 0;
}
if(isset($_GET['q3'])){

if ($_GET['q3'] == $mark3) {
	$score3 = 1;
}else{
	$score3 = 0;
}
}else {
	$score3 = 0;
}

if(isset($_GET['q4'])){
if ($_GET['q4'] == $mark4) {
	$score4 = 1;
}else {
	$score4 = 0;
}
}else {
	$score4 = 0;
}

if(isset($_GET['q5'])){
if ($_GET['q5'] == $mark5) {
	$score5 = 1;
}else {
	$score5 = 0;
}
}else {
	$score5 = 0;
}

if(isset($_GET['q6'])){
if ($_GET['q6'] == $mark6) {
	$score6 = 1;
}else {
	$score6 = 0;
}
}
else {
	$score6 = 0;
}
if(isset($_GET['q7'])){
if ($_GET['q7'] == $mark7) {
	$score7 = 1;
}else {
	$score7 = 0;
}}
else {
	$score7 = 0;
}
if(isset($_GET['q8'])){
if ($_GET['q8']== $mark8) {
	$score8 = 1;
}else {
	$score8 = 0;
}}
else {
	$score8 = 0;
}
if(isset($_GET['q9'])){
if ($_GET['q9']== $mark9) {
	$score9 = 1;
}else {
	$score9 = 0;
}}
else {
	$score9 = 0;
	
}
if(isset($_GET['q10'])){
if ($_GET['q10'] == $mark10) {
	$score10 = 1;

}else {
	$score10 = 0;
	
}}else {
	$score10 = 0;
	
}

if(isset($_GET['q11'])){
if ($_GET['q11'] == $mark11) {
	$score11 = 1;
}else {
	$score11 = 0;
}}else {
	$score11 = 0;
}

if(isset($_GET['q12'])){
if ($_GET['q12'] == $mark12) {
	$score12 = 1;
}else {
	$score12 = 0;
}}
else {
	$score12 = 0;
}

if(isset($_GET['q13'])){
if ($_GET['q13'] == $mark13) {
	$score13 = 1;
}else {
	$score13 = 0;
}}
else {
	$score13 = 0;
}
if(isset($_GET['q14'])){
if ($_GET['q14'] == $mark14) {
	$score14 = 1;
}else {
	$score14 = 0;
	
}}
else {
	$score14 = 0;
	}
if(isset($_GET['q15'])){
if ($_GET['q15'] == $mark15) {
	$score15 = 1;
	}
	else {
	$score15 = 0;
	
}}
else {
	$score15 = 0;
	
}
if(isset($_GET['q16'])){
if ($_GET['q16'] == $mark16) {
	$score16 = 1;
}else {
	$score16 = 0;
}}
else {
	$score16 = 0;
}

if(isset($_GET['q17'])){
if ($_GET['q17'] == $mark17) {
	$score17 = 1;
}else {
	$score17 = 0;
}}
else {
	$score17 = 0;
}
if(isset($_GET['q18'])){
if ($_GET['q18'] == $mark18) {
	$score18 = 1;
}else {
	$score18 = 0;
}}
else {
	$score18 = 0;
}
if(isset($_GET['q19'])){
if ($_GET['q19'] == $mark19) {
	$score19 = 1;
}else {
	$score19 = 0;
}}
else {
	$score19 = 0;
}
if(isset($_GET['q20'])){
if ($_GET['q20'] == $mark20) {
	$score20 = 1;
}else {
	$score20 = 0;
}}
else {
	$score20 = 0;
}

if(isset($_GET['q21'])){
if ($_GET['q21'] == $mark21) {
	$score21 = 1;
}else {
	$score21 = 0;
}
}
else {
	$score21 = 0;
}
if(isset($_GET['q22'])){

if ($_GET['q22'] == $mark22) {
	$score22 = 1;
}else {
	$score22 = 0;
}
}
else {
	$score22 = 0;
}
if(isset($_GET['q23'])){

if ($_GET['q23'] == $mark23) {
	$score23 = 1;
}else{
	$score23 = 0;
}
}else {
	$score23 = 0;
}

if(isset($_GET['q24'])){
if ($_GET['q24'] == $mark24) {
	$score24 = 1;
}else {
	$score24 = 0;
}
}else {
	$score24 = 0;
}

if(isset($_GET['q25'])){
if ($_GET['q25'] == $mark25) {
	$score25 = 1;
}else {
	$score25 = 0;
}
}else {
	$score25 = 0;
}

if(isset($_GET['q26'])){
if ($_GET['q26'] == $mark26) {
	$score26 = 1;
}else {
	$score26 = 0;
}
}
else {
	$score26 = 0;
}
if(isset($_GET['q27'])){
if ($_GET['q27'] == $mark27) {
	$score27 = 1;
}else {
	$score27 = 0;
}}
else {
	$score27 = 0;
}
if(isset($_GET['q28'])){
if ($_GET['q28']== $mark28) {
	$score28 = 1;
}else {
	$score28 = 0;
}}
else {
	$score28 = 0;
}
if(isset($_GET['q29'])){
if ($_GET['q29']== $mark29) {
	$score29 = 1;
}else {
	$score29 = 0;
}}
else {
	$score29 = 0;
	
}
if(isset($_GET['q30'])){
if ($_GET['q30'] == $mark30) {
	$score30 = 1;

}else {
	$score30 = 0;
	
}}else {
	$score30 = 0;
	
}

if(isset($_GET['q31'])){
if ($_GET['q31'] == $mark31) {
	$score31 = 1;
}else {
	$score31 = 0;
}}else {
	$score31 = 0;
}

if(isset($_GET['q32'])){
if ($_GET['q32'] == $mark32) {
	$score32 = 1;
}else {
	$score32 = 0;
}}
else {
	$score32 = 0;
}

if(isset($_GET['q33'])){
if ($_GET['q33'] == $mark33) {
	$score33 = 1;
}else {
	$score33 = 0;
}}
else {
	$score33 = 0;
}
if(isset($_GET['q34'])){
if ($_GET['q34'] == $mark34) {
	$score34 = 1;
}else {
	$score34 = 0;
	
}}
else {
	$score34 = 0;
	}
if(isset($_GET['q35'])){
if ($_GET['q35'] == $mark35) {
	$score35 = 1;
	}
	else {
	$score35 = 0;
	
}}
else {
	$score35 = 0;
	
}
if(isset($_GET['q36'])){
if ($_GET['q36'] == $mark36) {
	$score36 = 1;
}else {
	$score36 = 0;
}}
else {
	$score36 = 0;
}

if(isset($_GET['q37'])){
if ($_GET['q37'] == $mark37) {
	$score37 = 1;
}else {
	$score37 = 0;
}}
else {
	$score37 = 0;
}
if(isset($_GET['q38'])){
if ($_GET['q38'] == $mark38) {
	$score38 = 1;
}else {
	$score38 = 0;
}}
else {
	$score38 = 0;
}
if(isset($_GET['q39'])){
if ($_GET['q39'] == $mark39) {
	$score39 = 1;
}else {
	$score39 = 0;
}}
else {
	$score39 = 0;
}
if(isset($_GET['q40'])){
if ($_GET['q40'] == $mark40) {
	$score40 = 1;
}else {
	$score40 = 0;
}}
else {
	$score40 = 0;
}
if(isset($_GET['q41'])){
if ($_GET['q41'] == $mark41) {
	$score41 = 1;
}else {
	$score41 = 0;
}
}
else {
	$score41 = 0;
}
if(isset($_GET['q42'])){

if ($_GET['q42'] == $mark42) {
	$score42 = 1;
}else {
	$score42 = 0;
}
}
else {
	$score42 = 0;
}
if(isset($_GET['q43'])){

if ($_GET['q43'] == $mark43) {
	$score43 = 1;
}else{
	$score43 = 0;
}
}else {
	$score43 = 0;
}

if(isset($_GET['q44'])){
if ($_GET['q44'] == $mark44) {
	$score44 = 1;
}else {
	$score44 = 0;
}
}else {
	$score44 = 0;
}

if(isset($_GET['q45'])){
if ($_GET['q45'] == $mark45) {
	$score45 = 1;
}else {
	$score45 = 0;
}
}else {
	$score45 = 0;
}

if(isset($_GET['q46'])){
if ($_GET['q46'] == $mark46) {
	$score46 = 1;
}else {
	$score46 = 0;
}
}
else {
	$score46 = 0;
}
if(isset($_GET['q47'])){
if ($_GET['q47'] == $mark47) {
	$score47 = 1;
}else {
	$score47 = 0;
}}
else {
	$score47 = 0;
}
if(isset($_GET['q48'])){
if ($_GET['q48']== $mark48) {
	$score48 = 1;
}else {
	$score48 = 0;
}}
else {
	$score48 = 0;
}
if(isset($_GET['q49'])){
if ($_GET['q49']== $mark49) {
	$score49 = 1;
}else {
	$score49 = 0;
}}
else {
	$score49 = 0;
	
}
if(isset($_GET['q50'])){
if ($_GET['q50'] == $mark50) {
	$score50 = 1;

}else {
	$score50 = 0;
	
}}else {
	$score50 = 0;	
}

if(isset($_GET['q51'])){
if ($_GET['q51'] == $mark51) {
	$score51 = 1;
}else {
	$score51 = 0;
}
}
else {
	$score51 = 0;
}
if(isset($_GET['q52'])){

if ($_GET['q52'] == $mark52) {
	$score52 = 1;
}else {
	$score52 = 0;
}
}
else {
	$score52 = 0;
}
if(isset($_GET['q53'])){

if ($_GET['q53'] == $mark53) {
	$score53 = 1;
}else{
	$score53 = 0;
}
}else {
	$score53 = 0;
}

if(isset($_GET['q54'])){
if ($_GET['q54'] == $mark54) {
	$score54 = 1;
}else {
	$score54 = 0;
}
}else {
	$score54 = 0;
}

if(isset($_GET['q55'])){
if ($_GET['q55'] == $mark55) {
	$score55 = 1;
}else {
	$score55 = 0;
}
}else {
	$score55 = 0;
}

if(isset($_GET['q56'])){
if ($_GET['q56'] == $mark56) {
	$score56 = 1;
}else {
	$score56 = 0;
}
}
else {
	$score56 = 0;
}
if(isset($_GET['q57'])){
if ($_GET['q57'] == $mark57) {
	$score57 = 1;
}else {
	$score57 = 0;
}}
else {
	$score57 = 0;
}
if(isset($_GET['q58'])){
if ($_GET['q58']== $mark58) {
	$score58 = 1;
}else {
	$score58 = 0;
}}
else {
	$score58 = 0;
}
if(isset($_GET['q59'])){
if ($_GET['q59']== $mark59) {
	$score59 = 1;
}else {
	$score59 = 0;
}}
else {
	$score59 = 0;
	
}
if(isset($_GET['q60'])){
if ($_GET['q60'] == $mark60) {
	$score60 = 1;

}else {
	$score60 = 0;
	
}}else {
	$score60 = 0;
	
}



$totral_score = $score1 + $score2 + $score3 + $score4 + $score5 + $score6 + $score7 + $score8 + $score9 + $score10 +
 $score11 + $score12 + $score13 + $score14 + $score15 + $score16 + $score17 + $score18 + $score19 + $score20+
 $score21 + $score22 + $score23 + $score24 + $score25 + $score26 + $score27 + $score28 + $score29 + $score30 +
 $score31 + $score32 + $score33 + $score34 + $score35 + $score36 + $score37 + $score38 + $score39 + $score40 + 
 $score44 + $score42 + $score43 + $score44 + $score45 + $score46 + $score47 + $score48 + $score49 + $score50 + 
 $score51 + $score52 + $score53 + $score54 + $score55 + $score56 + $score57 + $score58 + $score59 + $score60 ;
$av_score = $totral_score ;

if ($av_score >= 30) {
	$pass_status = "PASS";
} else {
	$pass_status = "FAIL";
}
?>

<?php
error_reporting(0);
session_start();
if (isset($_SESSION['examstarted']) && $_SESSION['examstarted'] == true) {
	  include '../db_config/connection.php';
	
	$sql = "UPDATE results_info SET score='$av_score', status='$pass_status' WHERE student_no='$current_std_no'";

if ($conn->query($sql) === TRUE) {
  $_SESSION['examstarted'] = false;
} else {
    
}

$conn->close();
	
}else{
	
}
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
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
<body>
  <div class="content">
    <?php
	if ($av_score >= 50) {
		print '
		<div class="callout callout-info">
        <h3>You have successfully completed the exam</h3>
        The Results will be announced soon.
        </div>';
	  
	}else{
		print '
		<div class="callout callout-info">
        <h3>You have successfully completed the exam</h3>
        The Results will be announced soon.
		</div>';
	}
	
	?>
<?php
include '../db_config/connection.php';
$sql1 = "SELECT * FROM school_info";
$result1 = $conn->query($sql);

if ($result1->num_rows > 0) {
    while($row1 = $result->fetch_assoc()) {
       $name = $row1['name'];
	   $email = $row1['email'];
	   $address = $row1['address'];
	   $phone = $row1['phone'];
	   $slogan = $row1['slogan'];
    }
} else {
  
}





print '<h3 style="color:white; font-weight: bold;">';

$str = $name;
$str = strtoupper($name);
echo"$str"; 
print '</h3>';
print '<p style="color:white; line-height: 35%; font-size: 14px;">'.$email.'</p>';
print '<p style="color:white; line-height: 35%;font-size: 14px;">'.$address.'</p>';
print '<p style="color:white; line-height: 35%; font-size: 14px;">'.$phone.'</p>';
print '<i><p style="color:white; line-height: 35%; font-size: 14px;">'.$slogan.'</p></i>';
$conn->close();
?>
</div>
</body>
</html>


