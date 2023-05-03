<?php
	$servername = "localhost";
	$database = "Fcricket";
	$username = "root";
	$password = "";

	$conn = mysqli_connect($servername, $username, $password, $database);
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
	echo "<br>";
?>
<html>
<title>
Fantasy Cricket
</title>
<head>
<style>
.button {
  background-color: #f4511e;
  border: none;
  color: black;
  font: bold;
  padding: 16px 32px;
  text-align: center;
  font-size: 35px;
  margin: 4px 2px;
  opacity: 0.8;
  transition: 0.3s;
  display: inline-block;
  text-decoration: none;
  cursor: pointer;
  width: 70%;
}
.button:hover {opacity: 1}
.buttonpl {
  background-color: #4CAF50;
  border: none;
  color: white;
  font: bold;
  padding: 8px 32px;
  text-align: center;
  font-size: 25px;
  margin: 4px 2px;
  opacity: 0.8;
  transition: 0.3s;
  display: inline-block;
  text-decoration: none;
  cursor: pointer;
  width: 50%;
}
.buttonpl:hover {opacity: 1}
.buttoncl {
  background-color: #1481e4;
  border: none;
  color: black;
  font: bold;
  padding: 16px 32px;
  text-align: center;
  font-size: 35px;
  margin: 4px 2px;
  opacity: 0.8;
  transition: 0.3s;
  display: inline-block;
  text-decoration: none;
  cursor: pointer;
  width: 70%;

}
.buttoncl:hover {opacity: 1}

.big{ width: 2em; height: 2em; }
.container {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 22px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser's default checkbox */
.container input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
  height: 0;
  width: 0;
}

/* Create a custom checkbox */
.checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 25px;
  width: 25px;
  background-color: #eee;
}

/* On mouse-over, add a grey background color */
.container:hover input ~ .checkmark {
  background-color: #ccc;
}

/* When the checkbox is checked, add a blue background */
.container input:checked ~ .checkmark {
  background-color: #2196F3;
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the checkmark when checked */
.container input:checked ~ .checkmark:after {
  display: block;
}

/* Style the checkmark/indicator */
.container .checkmark:after {
  left: 9px;
  top: 5px;
  width: 5px;
  height: 10px;
  border: solid white;
  border-width: 0 3px 3px 0;
  -webkit-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
}
</style>
</head>
</html>
