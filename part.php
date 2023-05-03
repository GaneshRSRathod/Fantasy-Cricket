<?php include 'connection.php';
session_start();
	$sql = "select match_no, team1, team2 from matches where done = 1";
	$result = mysqli_query($conn, $sql);
	while($ro = mysqli_fetch_assoc($result)) {
		if(array_key_exists($ro["match_no"], $_POST))
			break;
	}
	$match = $ro["match_no"];

?>
<form action="parthome.php" method="post">
<input type = "submit" value = "Go Back">
</form>
<table border = "2" style="border:10px solid; font-size:30; font-family:arial; width:50%;">
<?php
	$max = 0;
	$winner = "NONE";
	$sql = "select * from fteam where match_no = ".$match;
	$result = mysqli_query($conn, $sql);
	if(mysqli_num_rows($result)) {
?>
<tr>
<td>
User
</td>
<td>
Points
</td>
</tr>
<?php
		while($row = mysqli_fetch_assoc($result)) {
		
?>
<tr>
<td>
<?php echo $row['usr'];?>
</td>
<td>
<?php $cr = $row['pl1_credit'] + $row['pl2_credit'] + $row['pl3_credit'] + $row['pl4_credit'] + $row['pl5_credit'] + $row['pl6_credit'] + $row['pl7_credit'] + $row['pl8_credit'] + $row['pl9_credit'] + $row['pl10_credit'] + $row['pl11_credit'];
if($cr > $max)  {
	$winner = $row['usr'];
	$max = $cr;
}
echo $cr;
?>
</td>
</tr>
<?php }}?>
</table>
<br>
<br>
<label class = "button"> Winner : <?php echo $winner;?></label>
</table>
</body>
</html>
