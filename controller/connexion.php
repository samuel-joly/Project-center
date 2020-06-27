<?php
try {
	require("../models/user/user.php");
	$user = new User();
	if($user->connect($_POST["email"], $_POST["psw"])) {
		header("location:main.php");
	}

} catch (Exception $e){
	echo $e->getMessage();
}
