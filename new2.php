<?php
   include("connection.php");
   session_start();
   
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // username and password sent from form 
      
      $username = mysqli_real_escape_string($conn,trim($_POST['username']));
      $password = mysqli_real_escape_string($conn,trim($_POST['pass'])); 
      
      $sql = "SELECT Name FROM fuser WHERE username = '$username' and pass = '$password'";
      $result = mysqli_query($conn,$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
      $active = $row['active'];
      
      $count = mysqli_num_rows($result);
      
      // If result matched $myusername and $mypassword, table row must be 1 row
      if($count == 1) {
         //session_register("myusername");
         $_SESSION['login_user'] = $username;
         
         header("location: select_team.php");
      }else {
		header("location:new1.php");
      }

	      

   }
?>
