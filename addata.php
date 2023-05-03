<?php include 'connection.php';
	$sql = "select match_no from matches";
	$result = mysqli_query($conn, $sql);
	$row = mysqli_num_rows($result);
?>
<html>
<body>
<h2>
<form action = "homepage.php" method="post">
<input type ="submit" value= "Go Back">
</form>
<form action="" method = "post">
<?php $sql = "select * from team_series";
	$result = mysqli_query($conn, $sql);
	while($r = mysqli_fetch_assoc($result)) {?>
		<input type = "checkbox" name="team[]" value = <?php echo $r['Name'];?>><?php echo $r['Name'];?>
<br>
<?php }?>
<br>
<input type="submit" name="submit" value="Submit">
<br>
<br>
<?php
	if(isset($_POST['submit'])) {
		$i = 0;
		if(!empty($_POST['team'])) {
			foreach($_POST['team'] as $team) {
				$tm[$i] = $team;
				$i++;
			}
		}
		$row++;
		if($i == 2) {
			$sql = "insert into matches (match_no, team1, team2, done) values (".$row.", '".$tm[0]."', '".$tm[1]."', 0)";
			mysqli_query($conn, $sql);
			echo "Successfully Updated Match";
		}
	}
?>

				

