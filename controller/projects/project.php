<?php
session_start();
require_once($_SESSION["ROOT_PATH"]."models/project/project.php");
require_once($_SESSION["ROOT_PATH"]."models/bdd/bdd.php");

$p = new Project();

if(isset($_POST["action"])){
	$action = $_POST["action"];

	switch($action){
		case "set_rating":
			$p->set_rating($_POST["id_project"], $_POST["rate"]);
			break;

		case "get_rating":
			echo $p->display_rating($_POST["id_project"]);
			break;
	}
}