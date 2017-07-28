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
$sql1="SELECT * FROM exam WHERE question NOT IN(SELECT question FROM tempexam WHERE stdroll='501') LIMIT 1 ";
		$result1=$conn->query($sql1);
		$a=$result1->num_rows;
		echo $a;
	$conn->close();
	?>