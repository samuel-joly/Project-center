<?php
	if(isset($_GET["id"])) {
		require("../../models/user/user.php");
		$user = new User();
		$user = $user->get_infos($_GET["id"]);
		require("../../views/profile.php");		
	} else {
		throw new Exception("Impossible d'acceder au profil de cet utilisateur :/");
	}

?>