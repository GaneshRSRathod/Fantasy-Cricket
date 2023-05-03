<html>
<head>
	<title>Fantacy Cricket</title>
<meta name = "viewport" content = "width=device-width, initial scale=1">
<style>
body {
	margin : 0;
	font-family:Arial, Helvetica,sans-serif;
}
.hero-image {
  background: url(front_im1.jpg) no-repeat center; 
  background-size: cover;
  height:600px;
  position: relative;
}

.hero-text {
  text-align: center;
  position: absolute;
  top: 25%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: white;
} 
f1 {
  color: red;
  text-align: center;
  font-family: georgia;
  font-size:500px;

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
</style>
</head>
<body>

<div class="hero-image">
<img src="dhoni.png" alt="dhoni" width="450" height="600" align ="center">
<img src="ipl.png" alt="ipl" width="300" height="300" align ="right">
  <div class="hero-text">
	

    <h1 style="font-size:60px">Fantasy Cricket</h1>
    <h2 style="font-color: pink">Dream League</h2>
  </div>
</div><center>
<a href="sign_in.php"><button class="button" style="vertical-align:center"><span>Sign IN</span></button></a><br>
<a href="sign_up.php">
<button class="button" style="vertical-align:center"><span>Sign Up</span></button></a><br>
<a href="admin.php"><button class="button" style="vertical-align:center"><span>Admin</span></button></a><br>

<h1 style="font-color:black">Upcoming Matches</h1>
</center>
</body>
</html>
