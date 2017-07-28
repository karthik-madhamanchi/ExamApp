<html>
<body>
<h3>Please answer all questions.</h3><br>


	<?php
	include '../db_config/connection.php';
	$sql1="SELECT * FROM exam ORDER BY question LIMIT 30";
	$result1=$conn->query($sql1);
	if ($result1->num_rows ==30) {
		$quesno = 1;
		while($quesno <= 30) {
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