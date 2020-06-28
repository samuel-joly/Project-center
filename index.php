<?php
session_start();

	if(!isset($_SESSION["logged"])) {
		require("views/connexion_inscription.php");
	} else {
		require("main.php");
	}


?>
