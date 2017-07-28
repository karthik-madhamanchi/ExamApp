<!DOCTYPE html>
<html>
<head>
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
<style>
body {font-family: "Lato", sans-serif;}
div.tab {
    overflow: hidden;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
div.tab button {
    background-color: inherit;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    transition: 0.3s;
    font-size: 17px;
}

/* Change background color of buttons on hover */
div.tab button:hover {
    background-color: #ddd;
}

/* Create an active/current tablink class */
div.tab button.active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
    display: none;
    padding: 6px 12px;
    border: 1px solid #ccc;
    border-top: none;
}
</style>
</head>
<body>
<div class="tab">
  <button class="tablinks" onclick="openCity(event,'Physics')">Physics</button>
  <button class="tablinks" onclick="openCity(event, 'Maths')">Maths</button>
  <button class="tablinks" onclick="openCity(event, 'Chemistry')">Chemistry</button>
</div>
<div id="main" class="content">
<form action="submit_exam.php" method="GET">
<div id="Physics" class="tabcontent">
  <p><?php
include '../db_config/connection.php';

$sql = "SELECT * FROM exam ORDER BY question_id LIMIT 20";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
		$quesno = 1;
		while($quesno <= 20) {
	while($row = $result->fetch_assoc()) {
		
		
    echo "<tr><td><b>Q-</b>".$row["question_id"].'<b>) </b>' . $row["question"]. "<br/></td>";
	print '<tr><td><input type="radio" name="q'.$quesno.'" value="'.$row["option1"].'" > '.$row["option1"].'<br> </td></tr>';
	print '<tr><td><input type="radio" name="q'.$quesno.'" value="'.$row["option2"].'" > '.$row["option2"].'<br></td></tr>';
	print '<tr><td><input type="radio" name="q'.$quesno.'" value="'.$row["option3"].'" > '.$row["option3"].'<br></td></tr>';
	print '<tr><td><input type="radio" name="q'.$quesno.'" value="'.$row["option4"].'" > '.$row["option4"].'<br></td></tr>';
	print '<tr><td colspan="10"><hr></td></tr>';
	print '<tr><td><input type="hidden" name="'.$quesno.'" value="'.$row["question_id"].'"</td></tr>';
    $quesno++;}
}
		 
} else {
    
}
$conn->close();

?></p>

</div>

<div id="Maths" class="tabcontent">
  <p><?php
include '../db_config/connection.php';

$sql = "SELECT * FROM exam WHERE question_id BETWEEN 21 AND 40";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
		$quesno = 21;
		while($quesno > 20 && $quesno<=40) {
	while($row = $result->fetch_assoc()) {	
    echo "<tr><td><b>Q-</b>".$row["question_id"].'<b>) </b>' . $row["question"]. "<br/></td>";
	print '<tr><td><input type="radio" name="q'.$quesno.'" value="'.$row["option1"].'" > '.$row["option1"].'<br> </td></tr>';
	print '<tr><td><input type="radio" name="q'.$quesno.'" value="'.$row["option2"].'" > '.$row["option2"].'<br></td></tr>';
	print '<tr><td><input type="radio" name="q'.$quesno.'" value="'.$row["option3"].'" > '.$row["option3"].'<br></td></tr>';
	print '<tr><td><input type="radio" name="q'.$quesno.'" value="'.$row["option4"].'" > '.$row["option4"].'<br></td></tr>';
	print '<tr><td colspan="10"><hr></td></tr>';
	print '<tr><td><input type="hidden" name="'.$quesno.'" value="'.$row["question_id"].'"</td></tr>';
    $quesno++;}
}
		 
} else {
    
}
$conn->close();

?></p> 

</div>

<div id="Chemistry" class="tabcontent">
  <p><?php
include '../db_config/connection.php';

$sql = "SELECT * FROM exam WHERE question_id BETWEEN 41 AND 60";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
		$quesno = 41;
		while($quesno > 40 && $quesno<=60) {
	while($row = $result->fetch_assoc()) {	
    echo "<tr><td><b>Q-</b>".$row["question_id"].'<b>) </b>' . $row["question"]. "<br/></td>";
	print '<tr><td><input type="radio" name="q'.$quesno.'" value="'.$row["option1"].'" > '.$row["option1"].'<br> </td></tr>';
	print '<tr><td><input type="radio" name="q'.$quesno.'" value="'.$row["option2"].'" > '.$row["option2"].'<br></td></tr>';
	print '<tr><td><input type="radio" name="q'.$quesno.'" value="'.$row["option3"].'" > '.$row["option3"].'<br></td></tr>';
	print '<tr><td><input type="radio" name="q'.$quesno.'" value="'.$row["option4"].'" > '.$row["option4"].'<br></td></tr>';
	print '<tr><td colspan="10"><hr></td></tr>';
	print '<tr><td><input type="hidden" name="'.$quesno.'" value="'.$row["question_id"].'"</td></tr>';
    $quesno++;}
}
		 
} else {
    
}
$conn->close();

?></p>
</div>
<button type="submit" onclick="return confirm('Are you sure you want to submit your assessment ?')" style="margin:auto;" class="btn btn-primary">Submit Assessment</button><br>
</form>

</div>
<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}
document.getElementsByClassName('tablinks')[0].click()
</script>
     
</body>
</html> 


