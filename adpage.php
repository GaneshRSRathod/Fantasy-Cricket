<html>
<body>
<?php include 'connection.php';
	$sql = "select * from matches where done = 0";
	$result = mysqli_query($conn, $sql);
	if(mysqli_num_rows($result) == 0) {
		   header("Location:home.php");
		   exit;
	}
	$ro =  mysqli_fetch_assoc($result);
	$match = $ro['match_no'];
	$sql = "select Name, Team, ID from Player where (ID, Team) IN (select ID, Team from player_series where Team = '".$ro['team1']."')";
	$result1 = mysqli_query($conn, $sql);
	$sql = "select Name, Team, ID from Player where (ID, Team) IN (select ID, Team from player_series where Team = '".$ro['team2']."')";
	$result2 = mysqli_query($conn, $sql);
	$k = 1;
?>
<form action = 'homepage.php' method='post'>
<input type = "submit" value  = "Go To Homepage">
</form>
<form action = "home.php" method="POST">
<center>
<input type= "label" value=<?php echo $match;?> name = "match" class = "buttonpl">
</center>
<table border=5 style="border:10px solid; font-size:30; font-family:arial;">
<td>Sr.no.</td>
<td>Name</td>
<td>Team</td>
<td>Runs</td>
<td>Sixes</td>
<td>Fours</td>
<td>Wickets</td>
<td>Maidens</td>
<td>Catches</td>
<td>Run Outs</td>
</tr>
<?php
	if(mysqli_num_rows($result1)) {
?>
<?php
		while($row = mysqli_fetch_assoc($result1)) {?>
<tr>
<td><?php echo $k?></td>
<td><?php echo $row['Name'];?></td>
<td><?php echo $row['Team'];?></td>
<td><input style="width:5em;" type='number' name=<?php echo $k."run";?> min = 0 default = 0></td>
<td><input style="width:5em;" type='number' name=<?php echo $k."six";?> min = 0 default = 0></td>
<td><input style="width:5em;" type='number' name=<?php echo $k."four";?> min = 0 default = 0></td>
<td><input style="width:5em;" type='number' name=<?php echo $k."wicket";?> min = 0 max = 10 default = 0></td>
<td><input style="width:5em;" type='number' name=<?php echo $k."maiden";?> min = 0 max = 4 default = 0></td>
<td><input style="width:5em;" type='number' name=<?php echo $k."catch";?> min = 0 max = 10 default = 0></td>
<td><input style="width:5em;" type='number' name=<?php echo $k."run_out";?>  min = 0 max = 10 default = 0></td>
</tr>
<?php 
	$k++;
}}?>
<?php
        if(mysqli_num_rows($result2)) {
?>
<?php
                while($row = mysqli_fetch_assoc($result2)) {?>
<tr>
<td><?php echo $k?></td>
<td><?php echo $row['Name'];?></td>
<td><?php echo $row['Team'];?></td>
<td><input style="width:5em;" type='number' name=<?php echo $k."run";?> min = 0 default = 0></td>
<td><input style="width:5em;" type='number' name=<?php echo $k."six";?> min = 0 default = 0></td>
<td><input style="width:5em;" type='number' name=<?php echo $k."four";?> min = 0 default = 0></td>
<td><input style="width:5em;" type='number' name=<?php echo $k."wicket";?> min = 0 max = 10 default = 0></td>
<td><input style="width:5em;" type='number' name=<?php echo $k."maiden";?> min = 0 max = 4 default = 0></td>
<td><input style="width:5em;" type='number' name=<?php echo $k."catch";?> min = 0 max = 10 default = 0></td>
<td><input style="width:5em;" type='number' name=<?php echo $k."run_out";?> min = 0 max = 10 default = 0></td>
</tr>
<?php 
	$k++;
		}}?>
</table>
<center>
<button type='submit' name="Sum" class="button" > Submit</button>
</center>
</form>
</body>
</html>
