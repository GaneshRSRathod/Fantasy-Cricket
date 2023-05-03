<?php
   include("connection.php");
   session_start();
   
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // username and password sent from form 
      
      $username = mysqli_real_escape_string($conn,trim($_POST['username']));
      $password = mysqli_real_escape_string($conn,trim($_POST['pass'])); 
      
      $sql = "SELECT Name FROM fuser WHERE username = '$username' and pass = '$password'";
      $result = mysqli_query($conn,$sql);
      //$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
      //$active = $row['active'];
      
      $count = mysqli_num_rows($result);
      
      // If result matched $myusername and $mypassword, table row must be 1 row
		
      if($count == 1) {
         //session_register("myusername");
         $_SESSION['login_user'] = $myusername;
         
         header("location: welcome.php");
      }else {
         $error = "Your Login Name or Password is invalid";
      }
   }
?>
<html>
<head>
<title>Sign IN</title>

</head>
<style>
 body {
  background-image: url("signin.jpg");
  background-repeat: no-repeat;
  background-position: top;
  background-attachment: fixed;
}




</style>


<body>
<form method="POST" action="">
<center>

<h1 style="color:lightgray;">Username: <input type="text" name="username"></h1><br>
<h1 style="color: lightgray;">Password:<input type = "password" name= "pass"></h1><br>

<input type ="submit" value= "Submit" name = "submit">

</body>
</html>
