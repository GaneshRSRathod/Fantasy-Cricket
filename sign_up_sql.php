<html>
<meta name="viewport" content = "width=device-width, initial-scale = 1.0">
<head>
<title>Register to participate</title>
</head>
<style>
 body {
  background-image: url("adb.jpg");
  background-repeat: no-repeat;
  background-position: left top;
  background-attachment: fixed;
}
.button {
  display: inline-block;
  border-radius: 12px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -50px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}

h1 {
  color: aqua;
}


</style>

<body>

<center>
<h1 style ="font-size:5vw;">You have successfully registered for fantasy cricket, click on button to sign in</h1>
<a href="main.php"><button class="button" style="vertical-align:center"><span>Sign IN</span></button></a><br>
</center>

</body>
</html>

<?php include 'connection.php';


if(isset($_POST['submit'])){
// create a variable
$Name=$_POST['Name'];
$user_name=$_POST['username'];
$password=$_POST['pass'];


//Execute the query
 
mysqli_query($conn,"INSERT INTO fuser (Name,username,pass) VALUES ('$Name','$user_name','$password')");
				
if(mysqli_affected_rows($conn) > 0){
//	echo "<p>Registration Completed</p>";
	//<a href= "sign_in.php"> Go Back </a>;
} else {
	echo "Not registered<br />";
	echo mysqli_error ($conn);
}
}
?>
