<html>
<body>
<h3>Please answer all questions.</h3><br>
<form action="p7.php" method="post">
<?php
//connect to db
include '../db_config/connection.php';
$sql1= "SELECT * FROM exam ORDER BY RAND() LIMIT 1"; 
$result=$conn->query($sql1);
$x = 0;
while ($row = $result->fetch_assoc())
{   
   echo "<tr><td><b>Q-</b>".$row["question_id"].'<b>) </b>' . $row["question"]. "<br/></td>";
	print '<tr><td><input type="radio" name="q'.$x.'" value="'.$row["option1"].'" > '.$row["option1"].'<br> </td></tr>';
	print '<tr><td><input type="radio" name="q'.$x.'" value="'.$row["option2"].'" > '.$row["option2"].'<br></td></tr>';
	print '<tr><td><input type="radio" name="q'.$x.'" value="'.$row["option3"].'" > '.$row["option3"].'<br></td></tr>';
	print '<tr><td><input type="radio" name="q'.$x.'" value="'.$row["option4"].'" > '.$row["option4"].'<br></td></tr>';
	print '<tr><td colspan="10"><hr></td></tr>';
	print '<tr><td><input type="hidden" name="'.$x.'" value="'.$row["question_id"].'"</td></tr>';
	$x++;   
   };
$conn->close();
?>
<input type="submit" name="Submit" value="Submit" /> //go to next page
<br>
</form>
</body>
</html>