<html>
<body>
<h3>Please answer all questions.</h3><br>
<?php

	include '../db_config/connection.php';
	$sql = "SELECT * FROM user_info WHERE roll='501' ";
    $result = $conn->query($sql);
	
	if ($result->num_rows > 0) {

    while($row = $result->fetch_assoc()) {
       $stdroll=$row['roll'];
	   
    }
} else {
}
$conn->close();
	?>
	<?php
	include '../db_config/connection.php';
	$sql1="SELECT DISTINCT(question),option1,option2,option3,option4,answer FROM exam LIMIT 31";
	$result1=$conn->query($sql1);
	if ($result1->num_rows >0) {
		$quesno = 1;
		while($quesno <= 31) {
	while ($row = $result1->fetch_assoc())
	{
		
	  $sql2="INSERT INTO tempexam(stdroll,question,option1,option2,option3,option4,answer) VALUES('$stdroll', '$row[question]', '$row[option1]','$row[option2]','$row[option3]','$row[option4]','$row[answer]')";
	
	$conn->query($sql2);
    $quesno++;}
	}
	}
	echo "New record created successfully";
	
	$conn->close();
	?>
	</body>
</html>