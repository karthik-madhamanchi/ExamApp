
<?php
session_start();
include '../db_config/connection.php';
//Start with question ID
if (isset($_GET['id']))
{
	
	
	//get question id from user and store
	$question_id = $_GET['id'];
}
else
{
	$question_id = 1;
	//no question id submitted
	
	//unset session data
	unset($_SESSION['questions']);
	unset($_SESSION['total']);
	
}

//If the questions array has been built
if (isset($_SESSION['questions']))
{
	//has the user selected a radio button
	if (isset($_REQUEST['value']))
	{
		//check for correct
		if ($_SESSION['answer'] == $_REQUEST['value'])
		{
			//correct answer	
			$_SESSION['total']++;			
			
		}	
	}
	else
	{
		//No value inputted from the user 
		echo "hey boo click a button";
		$question_id--;
	}
}
//Questions array is not been built
else
{
	//get a list of question id's
	$sql = "SELECT question_id FROM exam ORDER BY question_id ASC";
    $result=$conn->query($sql);
	$stringtemp = "";
	$maxtemp = 1;

	while ($row = $result->fetch_assoc())  //More results
	{
		
		$stringtemp = $stringtemp." ".$row['question_id'];
		$maxtemp++;
	}
	
	//Create question id array pulled from database
	$_SESSION['questions'] = explode(" ",$stringtemp);
	
	//Max value of the array
	$_SESSION['max']=$maxtemp;

}





$sql1 = "select * from exam where question_id =".$_SESSION['questions'][$question_id];
$result=$conn->query($sql1); 
$row = $result->fetch_assoc()

//Store correct answer for next pageload	
//$_SESSION['answer'] = $row['correct'];


$nextid=$question_id+1;

if ($nextid == $_SESSION['max'])
{
	//Final question
	$next = "p2.php";
	
}
else
{
$_SESSION['name'] = $name;
	//Not the final question
	$next = "p8.php?id=".$nextid;
	
}


echo "<form action=\"".$next."\" method=\"post\" name=\"form\" >

<p>".$row['question_text']."</p>
<input type=\"radio\" name=\"value\" value=\"1\">".$row['option1']."<br>
<input type=\"radio\" name=\"value\" value=\"2\">".$row['option2']."<br>
<input type=\"radio\" name=\"value\" value=\"3\">".$row['option3']."<br>
<input type=\"radio\" name=\"value\" value=\"4\">".$row['option4']."<br>
<input class=\"submit\" type=\"submit\" value=\"Submit\"/>
</form>
</body>
</html>
";

?>