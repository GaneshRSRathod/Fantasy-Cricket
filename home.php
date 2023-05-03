<html>
<body>
<form action="homepage.php" method="POST">
<?php include 'connection.php';
	$sql =  "select * from matches where done = 0";
	$result = mysqli_query($conn, $sql);
	if(mysqli_num_rows($result) > 0) {
		$ro = mysqli_fetch_assoc($result);
		$match = $ro['match_no'];
	$sql = "select Name, Team, ID from Player where (ID, Team) IN (select ID, Team from player_series where Team = '".$ro['team1']."')";
	$result1 = mysqli_query($conn, $sql);
	$sql = "select Name, Team, ID from Player where (ID, Team) IN (select ID, Team from player_series where Team = '".$ro['team2']."')";
	$result2 = mysqli_query($conn, $sql);

	$k = 1;
	if(mysqli_num_rows($result1) > 0) {
		while($row = mysqli_fetch_assoc($result1)) {
			$playerid[$k] = $row['ID'];
			$playerteam[$k] = $row['Team'];
			$k++;
		}
	}
	if(mysqli_num_rows($result2) > 0) {
		while($row = mysqli_fetch_assoc($result2)) {
			$playerid[$k] = $row['ID'];
			$playerteam[$k] = $row['Team'];
			$k++;
		}
	}


	for($i = 1; $i < $k; $i++) {
		$poi = 0;
		$run = (int)$_POST[$i."run"];
		$sql = "select point from points where type = 'run'";
		$result = mysqli_query($conn, $sql);
		$row = mysqli_fetch_assoc($result);
		$poi =  $run * $row['point'];
		if($run >= 100) {
			$sql = "select point from points where type = 'century'";
			$result = mysqli_query($conn, $sql);
	                $row = mysqli_fetch_assoc($result);
			$poi = $poi + $row['point'];
			$sql = "update player_series set hundreds = hundreds + 1 where ID = ".$playerid[$i]." and Team = '".$playerteam[$i]."'";
			mysqli_query($conn, $sql);

	}
		else if($run >= 50) {
                        $sql = "select point from points where type = 'half_century'";
                        $result = mysqli_query($conn, $sql);
                        $row = mysqli_fetch_assoc($result);
			$poi = $poi + $row['point'];
			$sql = "update player_series set fifties = fifties + 1 where ID = ".$playerid[$i]." and Team = '".$playerteam[$i]."'";
			mysqli_query($conn, $sql);
		}
		$sql = "update player_series set runs = runs + ".$run." where ID = ".$playerid[$i]." and Team = '".$playerteam[$i]."'";
		mysqli_query($conn, $sql);
		$sql = "update Player set runs = runs + ".$run." where ID = ".$playerid[$i]." and Team = '".$playerteam[$i]."'";
		mysqli_query($conn, $sql);

		$six = (int)$_POST[$i."six"];
		$sql = "select point from points where type = 'six'";
                $result = mysqli_query($conn, $sql);
		$row = mysqli_fetch_assoc($result);
		$poi = $poi + $six * $row['point'];
		$sql = "update player_series set sixes = sixes + ".$six." where ID = ".$playerid[$i]." and Team = '".$playerteam[$i]."'";
		mysqli_query($conn, $sql);

		$four = (int)$_POST[$i."four"];
                $sql = "select point from points where type = 'four'";
                $result = mysqli_query($conn, $sql);
                $row = mysqli_fetch_assoc($result);
		$poi = $poi + $four * $row['point'];
		$sql = "update player_series set fours = fours + ".$four." where ID = ".$playerid[$i]." and Team = '".$playerteam[$i]."'";
		mysqli_query($conn, $sql);

		$wicket = (int)$_POST[$i."wicket"];
                $sql = "select point from points where type = 'wicket'";
                $result = mysqli_query($conn, $sql);
                $row = mysqli_fetch_assoc($result);
		$poi = $poi + $wicket * $row['point'];
		$sql = "update player_series set wickets = wickets + ".$wicket." where ID = ".$playerid[$i]." and Team = '".$playerteam[$i]."'";
		mysqli_query($conn, $sql);

		$maiden = (int)$_POST[$i."maiden"];
                $sql = "select point from points where type = 'maiden'";
                $result = mysqli_query($conn, $sql);
                $row = mysqli_fetch_assoc($result);
		$poi = $poi + $maiden * $row['point'];
		$sql = "update player_series set maidens = maidens + ".$maiden." where ID = ".$playerid[$i]." and Team = '".$playerteam[$i]."'";
		mysqli_query($conn, $sql);


		if($wicket >= 5) {
		$sql = "select point from points where type = '5_wicket'";
        	        $result = mysqli_query($conn, $sql);
                	$row = mysqli_fetch_assoc($result);
			$poi = $poi + $row['point'];
			$sql = "update player_series set 5_wickets = 5_wickets + 1 where ID = ".$playerid[$i]." and Team = '".$playerteam[$i]."'";
			mysqli_query($conn, $sql);


		}
		$sql = "update Player set wickets = wickets + ".$wicket." where ID = ".$playerid[$i]." and Team = '".$playerteam[$i]."'";
		mysqli_query($conn, $sql);
		$catch = (int)$_POST[$i."catch"];
                $sql = "select point from points where type = 'catch'";
		$result = mysqli_query($conn, $sql);
		$row = mysqli_fetch_assoc($result);
		$poi = $poi + $catch * $row['point'];
		$sql = "update player_series set catches = catches + ".$catch." where ID = ".$playerid[$i]." and Team = '".$playerteam[$i]."'";
		mysqli_query($conn, $sql);

		$runout = (int)$_POST[$i."run_out"];
                $sql = "select point from points where type = 'run_out'";
                $result = mysqli_query($conn, $sql);
                $row = mysqli_fetch_assoc($result);
		$poi = $poi + $runout * $row['point'];
		$sql = "update player_series set run_outs = run_outs + ".$runout." where ID = ".$playerid[$i]." and Team = '".$playerteam[$i]."'";
		mysqli_query($conn, $sql);


		$sql = "update Player set match_played = match_played + 1 where ID = ".$playerid[$i]." and Team = '".$playerteam[$i]."'";

		mysqli_query($conn, $sql);

		for($j = 1; $j <= 11; $j++) {
			$sql = "select usr from fteam where pl".$j."_id = ".$playerid[$i]." and pl".$j."_team = '".$playerteam[$i]."'";
			$result = mysqli_query($conn, $sql);
			if(mysqli_num_rows($result) > 0) {
				while($row = mysqli_fetch_assoc($result)) {
					$sql = "update fteam set pl".$j."_credit = ".$poi." where usr = '".$row['usr']."'";
					mysqli_query($conn, $sql);
					break;
				}
			}
		}
		
	}
	$sql = "update matches set done = 1 where match_no = ".$match;
	mysqli_query($conn, $sql);?>
<center>
<label class = "buttonpl"> Statistics Updated Succesfully </label>
<?php }
else {
?>
<label class = "button"> No Match Found </label>
<?php }?>
<button type = "submit" class="buttonpl" name="sub"> Go to Home Page </button>

</form>
<br>
<br>
<br>
<br>
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
</body>
</html>

