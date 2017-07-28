<?php
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

?>