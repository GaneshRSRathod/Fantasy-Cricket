<html>
<body>
<br>
<form action="main.php" method="post">
<input type="submit" value="Log Out">
</form>
<br>
<br>
<center>
<?php include 'connection.php';
	$sql = "select * from matches where done = 0";
	$result = mysqli_query($conn, $sql);
	if(mysqli_num_rows($result)) {
		$row = mysqli_fetch_assoc($result);
?>

<form action="adpage.php" method="post">
<button class = "buttoncl" type = "submit">Update Score Of The Match<br><?php echo $row['team1']."  V/S  ".$row['team2'];?></button>
<?php }
else {
?>
<label class = "buttoncl"> NO Match Available </label>
<?php }?>
<br>
<br>
<br>
</form>
<form action="addata.php" method="post">
<button class = "button" type="submit"> Enter New Match</button>
</form>
</body>
</html>


	

