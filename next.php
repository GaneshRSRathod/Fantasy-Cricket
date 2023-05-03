<html>
<body>
<?php include 'connection.php';
	session_start();
	$sql = "select match_no, team1, team2 from matches where done = 0";
	$result = mysqli_query($conn, $sql);
	while($ro = mysqli_fetch_assoc($result)) {
		if(array_key_exists($ro["match_no"], $_POST))
			break;
	}
	$match = $ro["match_no"];

	$k = 0;
	$sql = "select avg(runs/match_played) as avgruns, avg(wickets/match_played) as avgwickets from Player where (ID, Team) IN (select ID, Team from player_series where Team IN ('".$ro["team1"]."','".$ro["team2"]."'))";
	$result = mysqli_query($conn, $sql);
	$row = mysqli_fetch_assoc($result);
	$avgruns = $row["avgruns"];
	$avgwickets = $row["avgwickets"];
?>
<a href = "logout.php" align = "right"><button><h5>Logout</h5></button></a>

<form action = "select_team.php" method = "post">
<input type='submit' value = "Go To Home Page">
</form>
<form action="#" method="POST">
<center>
<input type='submit' value='create team' name=<?php echo $match;?>>
</center>
<br>
<br>
<table bgcolor="white" border="3">
<tr>
<td width="25%" valign='top'>
<?php

	$sql = "select * from Player where (ID, Team) IN (select ID, Team from player_series where Team IN (". "'".$ro["team1"]."'".","."'".$ro["team2"]."'".") and type='wicket_keeper')";
	$result = mysqli_query($conn, $sql);
	if(mysqli_num_rows($result) == 0) {
	?>
<font class="buttonpl"> No Player Found</font>
<?php }?>
<label class="buttonpl"> Mark Only 1 Wicket Keeper</label>
<?php
if(mysqli_num_rows($result) > 0) {
	while($row = mysqli_fetch_assoc($result)) {
		$playerid[$k] = $row["ID"];
		$playerteam[$k] = $row["Team"];
		$credit = 7.5 + $row["runs"]/$row["match_played"]/$avgruns * 1.15 + $row["wickets"]/$row["match_played"]/$avgwickets; 
		$credit = floor($credit * 2)/2;
		$playercr[$k] = $credit;
		$k++;
?>
<label class="container"><?php echo $row["Name"]; echo "   ".$credit;?>
<?php
        $flag = 1;
        if(!empty($_POST['wicket_keeper'])) {
                foreach($_POST['wicket_keeper'] as $selected) {
                        if($row["ID"].$row["Team"] == $selected) {?>
<input type="checkbox" value=<?php echo $row["ID"].$row["Team"]?> Name="wicket_keeper[]" checked = "checked">
<?php $flag = 0;
break;
                        }}}?>
<?php if($flag) {?>

<input type="checkbox" value=<?php echo $row["ID"].$row["Team"]?> Name="wicket_keeper[]">
<?php }?>
<span class="checkmark"></span>
</label>

<br>
<?php }}?>
</td>
<td width="25%" valign = 'top'>
<?php
	$sql = "select * from Player where (ID, Team) IN (select ID, Team from player_series where Team IN (". "'".$ro["team1"]."'".","."'".$ro["team2"]."'".") and type='batsman')";
	$result = mysqli_query($conn, $sql);
	if(mysqli_num_rows($result) == 0) {
	?>
<font class="buttonpl"> No Player Found</font>
<?php }?>
<label class="buttonpl">Mark 3 - 6 batsmans</label>
<?php
if(mysqli_num_rows($result) > 0) {
	while($row = mysqli_fetch_assoc($result)) {
		$playerid[$k] = $row["ID"];
		$playerteam[$k] = $row["Team"];
		$credit = 7 + $row["runs"]/$row["match_played"]/$avgruns * 1.15 + $row["wickets"]/$row["match_played"]/$avgwickets;
		$credit = floor($credit * 2)/2; 
		$playercr[$k] = $credit;
		$k++;

?>
<label class="container"><?php echo $row["Name"]; echo "   ".$credit;?>
<?php
        $flag = 1;
        if(!empty($_POST['batsman'])) {
                foreach($_POST['batsman'] as $selected) {
                        if($row["ID"].$row["Team"] == $selected) {?>
<input type="checkbox" value=<?php echo $row["ID"].$row["Team"]?> Name="batsman[]" checked = "checked">
<?php $flag = 0;
break;
                        }}}?>
<?php if($flag) {?>

<input type="checkbox" value=<?php echo $row["ID"].$row["Team"]?> Name="batsman[]">
<?php }?>
<span class="checkmark"></span>
</label>
<br>
<?php }}?>
</td>
<td width = "25%" valign = 'top'>
<?php

	$sql = "select * from Player where (ID, Team) IN (select ID, Team from player_series where Team IN (". "'".$ro["team1"]."'".","."'".$ro["team2"]."'".") and type='all_rounder')";
	$result = mysqli_query($conn, $sql);
	if(mysqli_num_rows($result) == 0) {
	?>
<font class="buttonpl"> No Player Found</font>
<?php }?>
<label class="buttonpl"> Mark Upto 1 - 3 all rounders</label>
<?php
if(mysqli_num_rows($result) > 0) {
	while($row = mysqli_fetch_assoc($result)) {
		$playerid[$k] = $row["ID"];
		$playerteam[$k] = $row["Team"];
		$credit = 7 + $row["runs"]/$row["match_played"]/$avgruns * 1.1 + $row["wickets"]/$row["match_played"]/$avgwickets * 1.1; 
		$credit = floor($credit * 2)/2; 
		$playercr[$k] = $credit;
		$k++;

?>
<label class="container"><?php echo $row["Name"]; echo "   ".$credit;?>
<?php
        $flag = 1;
        if(!empty($_POST['all_rounder'])) {
                foreach($_POST['all_rounder'] as $selected) {
                        if($row["ID"].$row["Team"] == $selected) {?>
<input type="checkbox" value=<?php echo $row["ID"].$row["Team"]?> Name="all_rounder[]" checked = "checked">
<?php $flag = 0;
break;
                        }}}?>
<?php if($flag) {?>

<input type="checkbox" value=<?php echo $row["ID"].$row["Team"]?> Name="all_rounder[]">
<?php }?>
<span class="checkmark"></span>
</label>
<br>
<?php }}?>
</td>
<td width = "25%" valign = 'top'>
<?php

	$sql = "select * from Player where (ID, Team) IN (select ID, Team from player_series where Team IN (". "'".$ro["team1"]."'".","."'".$ro["team2"]."'".") and type='bowler')";
	$result = mysqli_query($conn, $sql);
	if(mysqli_num_rows($result) == 0) {
	?>
<font class="buttonpl"> No Player Found</font>
<?php }?>
<label class="buttonpl"> Mark 3 - 5 bowlers </label>
<?php
if(mysqli_num_rows($result) > 0) {
	while($row = mysqli_fetch_assoc($result)) {
		$playerid[$k] = $row["ID"];
		$playerteam[$k] = $row["Team"];
		$credit = 7 + $row["runs"]/$row["match_played"]/$avgruns + $row["wickets"]/$row["match_played"]/$avgwickets * 1.1;
		$credit = floor($credit * 2) / 2;
		$playercr[$k] = $credit;
		$k++;

?>
<label class="container"><?php echo $row["Name"];echo "   ".$credit;?>
<?php
	$flag = 1;
	if(!empty($_POST['bowler'])) {
		foreach($_POST['bowler'] as $selected) {
			if($row["ID"].$row["Team"] == $selected) {?>
<input type="checkbox" value=<?php echo $row["ID"].$row["Team"]?> Name="bowler[]" checked = "checked">
<?php $flag = 0;
break;
			}}}?>
<?php if($flag) {?>
<input type="checkbox" value=<?php echo $row["ID"].$row["Team"]?> Name="bowler[]">
<?php }?>
<span class="checkmark"></span>
</label>

<br>
<?php }}?>
</td>
</tr>
</table>
<center>
<?php
$numwk = 0;
$numbat = 0;
$numall = 0;
$numbowl = 0;
if(isset($_POST[$match])){//to run PHP script on submit
	$flg = 1;
	$num = 0;
	if(!empty($_POST['wicket_keeper'])) {
		foreach($_POST['wicket_keeper'] as $selected){
			$numwk++;
			$pl[$num] = $selected;
			$num++;
		}
	}
	if($numwk != 1) {
		$flg = 0;
	}
	 if(!empty($_POST['batsman'])){
		foreach($_POST['batsman'] as $selected){
			$numbat++;
			$pl[$num] = $selected;
			$num++;
		}
	 }
	if($numbat > 6 || $numbat < 3) {
		$flg = 0;
	}
	 if(!empty($_POST['all_rounder'])){
		foreach($_POST['all_rounder'] as $selected){
			$numall++;
			$pl[$num] = $selected;
			$num++;
		}
	 }
	if($numall  > 3 || $numall < 1) {
		$flg = 0;
	}
	if(!empty($_POST['bowler'])){
		foreach($_POST['bowler'] as $selected){
			$numbowl++;
			$pl[$num] = $selected;
			$num++;
		}
	}
	if($numbowl > 5 || $numbowl < 3) {
		$flg = 0;
	}
	if($num  != 11) {
		$flg = 0;
	}
	$cr = 0;
	if($flg) {
		for($i = 0; $i < $k; $i++) {
        		for($j = 0; $j < 11; $j++) {
				if($pl[$j] == $playerid[$i].$playerteam[$i]) {
					$cr = $cr + $playercr[$i];
					break;
				}
			}
		}
	}
	if($cr > 100)
		$flg = 0;

	if($flg) {
		$t = 1;
		$sql = "insert into fteam (usr, match_no) values ('".$_SESSION['login_user']."', ".$match.")";
		mysqli_query($conn, $sql);
		for($i = 0; $i < $k; $i++) {
			for($j = 0; $j < 11; $j++) {
				if($pl[$j] == $playerid[$i].$playerteam[$i]) {
					$sql = "update fteam set pl".$t."_id = ".$playerid[$i]." where usr = '".$_SESSION['login_user']."' and match_no = ".$match;
					mysqli_query($conn, $sql);
					$sql = "update fteam set pl".$t."_team = '".$playerteam[$i]."' where usr = '".$_SESSION['login_user']."' and match_no = ".$match;
					mysqli_query($conn, $sql);
					$t++;
					break;
				}
			}

		}
?>
<center>
<label class = "buttoncl"> YOUR TEAM SAVED SUCCESFULLY</label>
<?php

	}
	
}
?>
<label class="button"> PLESE SELECT ELEVEN PLAYERS IN 100 Credits</label>
</center>
</form>
</center>
</body>
</html>
