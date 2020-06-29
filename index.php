<?php
session_start();

	if(!isset($_SESSION["logged"]) || !isset($_SESSION["promo"])) {
		require("views/connexion_inscription.php");
	} else {
		require("main.php");
	}


?>
