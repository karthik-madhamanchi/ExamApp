
<?php

	include '../db_config/connection.php';
	if(isset($_POST['next']))
	{
		$a=$_POST['a'];
	}
	if(isset($_POST['prev']))
	{
		$a=$_POST['d'];
	}
	if(!isset($a))
	{
		$a=0;
	}
	echo "<form method='post' action=''>";
	$sql1="SELECT * FROM exam ORDER BY question_id LIMIT 1 OFFSET $a";
	$result=$conn->query($sql1);
	echo "<form method='post' action='submit.php'>";
	if( $a>=0 && $a<20){
	while ($row = $result->fetch_assoc())
	{
		
	echo "<tr><td><b>Q-</b>".$row["question_id"].'<b>) </b>' . $row["question"]. "<br/></td>";
	print '<tr><td><input type="radio" name="q'.$a.'" value="'.$row["option1"].'" > '.$row["option1"].'<br> </td></tr>';
	print '<tr><td><input type="radio" name="q'.$a.'" value="'.$row["option2"].'" > '.$row["option2"].'<br></td></tr>';
	print '<tr><td><input type="radio" name="q'.$a.'" value="'.$row["option3"].'" > '.$row["option3"].'<br></td></tr>';
	print '<tr><td><input type="radio" name="q'.$a.'" value="'.$row["option4"].'" > '.$row["option4"].'<br></td></tr>';
	print '<tr><td colspan="10"><hr></td></tr>';
	print '<tr><td><input type="hidden" name="'.$a.'" value="'.$row["question_id"].'"</td></tr>';
    
		}
	$b=$a+1;
	$c=$a-1;
	echo "<input type='hidden' value='$b' name='a'>";
	echo "<input type='hidden' value='$c' name='d'>";
	echo "<button type='submit' name='prev' value='Previous'>Previous</button>&nbsp";
	echo "<button type='submit' name='next' value='Save & Next'> Next</button>&nbsp";
	echo "<button type='submit' name='review' value='Mark for Review'>Mark for Review</button>&nbsp";
	echo "<input type='reset' name='reset' value='Reset'>";
	}
	else{
		echo "The End";
	}

	echo "</form>";
 

$conn->close();
?>
