<?php
	session_start();
	session_destroy();
	$_SESSION["ROOT_PATH"] = $_SERVER["DOCUMENT_ROOT"]."/Project-center/";
	
	if(!isset($_SESSION["logged"]) || !isset($_SESSION["promo"])) {
		require("views/connexion_inscription.php");
	} else {
		require("main.php");
	}


?>
