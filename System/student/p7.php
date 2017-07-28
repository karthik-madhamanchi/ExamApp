<html>
<body>
<?php
//connect to db
include '../db_config/connection.php';
$sql2 = "SELECT * FROM exam ";
$result=$conn->query($sql2);
$x = 0;
$score = 0;
while ($row = $result->fetch_assoc()) //do not know how to call the questions did in previous page since they are random
{
    echo $row['question'] . '<br />';

    $answered = $row[$_POST['q'.$x]] ; // the answers
    $correct = $row['answer'] ; 

    if ($answered == $correct ) {
        $score++;
        $acolor = 'green' ;
    }
    else {
    $acolor = 'red' ;
    }
    echo 'you answered <font color=' . $acolor . '>' . $answered . '<font color=black> <br />';
    echo 'the correct answer was ' . $correct . '<br />' ;
    echo '-------------------------------------- <br />' ;
    $x++;
}
echo 'You had a total of ' . $score . ' out of ' . $x . ' questions right!';
$conn->close();
?>
</body>
</html>