<?php
// phpinfo();


//  check if docker environment exists
if(getenv('DOCKER_ENVIRONMENT'))
{
	// connect using container credentials
	$con = mysqli_connect("db_zeroastro","zeroastro","zeroastro","zeroastro");

	// Check connection
	if (mysqli_connect_errno())
	{
	  echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}

	//  run a dummy query to check that everything is working
	$sql="SELECT * FROM users";
	$result=mysqli_query($con,$sql);

	$users = mysqli_fetch_assoc($result);

	mysqli_close($con);
}

?>

<h2> <?php echo $users['name']; ?>

<img src="<?php echo $users['avatar'];?>" alt="zeroastro" height="42" width="42"> 
</h2>
