<?php
   include("connection.php");
   session_start();
   
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // username and password sent from form 
      
      $username = mysqli_real_escape_string($conn,trim($_POST['adname']));
      $password = mysqli_real_escape_string($conn,trim($_POST['pass'])); 
      
      $sql = "SELECT * FROM admin WHERE adname = '$username' and pass = '$password'";
      $result = mysqli_query($conn,$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
      $active = $row['active'];

      $count = mysqli_num_rows($result);
      // If result matched $myusername and $mypassword, table row must be 1 row
      if($count == 1) {
         //session_register("myusername");
         $_SESSION['login_user'] = $username;
         
         header("location: homepage.php");
      }else {
         $error = "Your Login Name or Password is invalid";
      }
   }
?>
<html>
<head>
<title>Administrator</title>
</head>
<style>
 body {
  background-image: url("admin.jpg");
  background-repeat: no-repeat;
  background-position:  top;
  background-attachment: fixed;
}




</style>

<body>
<form method="POST" action="">
<center>

<h1 style="color:lightgray;">Adname: <input type="text" name="adname"></h1><br>
<h1 style="color: lightgray;">Password:<input type = "password" name= "pass"></h1><br>

<input type ="submit" value= "Log in" name = "submit">
</form>
</center>
</body>
</html>
