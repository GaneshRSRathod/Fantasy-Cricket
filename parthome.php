<html>
<body>
<?php include 'connection.php';
session_start();
	$sql = "SELECT match_no, team1, team2 FROM matches where done = 1 and match_no IN (select match_no from fteam where usr = '".$_SESSION['login_user']."')";
	$result = mysqli_query($conn, $sql);

?>
<a href = "select_team.php" align = "right"><button><h5>Go Back</h5></button></a>

<form action="part.php" method ="post">
<br>
<font color ="blue" size="5">Welcome<?php echo "  ".$_SESSION['login_user']?></font>
<center>
<?php if (mysqli_num_rows($result) > 0) {
while($row = mysqli_fetch_assoc($result)) {?>
<button class="button" Name = <?php echo $row["match_no"];?>> <?php echo $row["team1"]."  V/S  ". $row["team2"]?></button>
<br>
<?php }}else {?> <font class="button"> NO Matches Found</font><?php }?>

<br>
<br>
</center>
</form>
</body>
</html>

