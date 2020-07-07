<?php
try {
	require("../models/user/user.php");
	$user = new User();
	if($user->sign_up($_POST["email"], $_POST["name"], $_POST["second_name"], $_POST["pswi"], $_POST["pswci"],"", $_POST["promo"] , $_POST["discord"])) {
		header("location:../views/connexion_inscription.php?inscr=true");
	}

} catch (Exception $e){
	echo $e->getMessage();
}
