
	
<?php include 'connection.php';
 

if(isset($_POST['submit'])){
// create a variable
$first_name=$_POST['first_name'];
$last_name=$_POST['last_name'];
$department=$_POST['department'];
$email=$_POST['email'];

//Execute the query
 
 
mysqli_query($conn,"INSERT INTO employee (first_name,last_name,department,email) VALUES ('$first_name','$last_name','$department','$email')");
				
if(mysqli_affected_rows($conn) > 0){
	echo "<p>Employee Added</p>";
	//echo "<a href= "data.php">Go Back</a>";
} else {
	echo "Employee NOT Added<br />";
	echo mysqli_error ($conn);
}
}
?>
