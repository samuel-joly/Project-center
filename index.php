<?php
	if(!isset($_COOKIE["email"]) || !isset($_COOKIE["password"])) {
		require("views/connexion_inscription.php");
	} else {
		require("main.php");
	}


?>
