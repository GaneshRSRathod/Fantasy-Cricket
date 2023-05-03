<!DOCTYPE html>
<?php
include "connection.php"
?>
<html>
<head>
<style>
label{display:inline-block;width:100px;margin-bottom:10px;}
</style>


<title>Add Employee</title>
</head>
<body>

<form method="POST" action="porcess.php">
<label>First Name</label>
<input type="text" name="first_name" />
<br />
<label>Last Name</label>
<input type="text" name="last_name" />
<br />
<label>Department</label>
<input type="text" name="department" />
<br />
<label>Email</label>
<input type="text" name="email" />

<br />
<input type="submit" value="Add Employee" name="submit">
</form>



</body>
</html>

