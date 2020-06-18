<?php
require("classes.php");

$pdo = new userpdo();

if(isset($_GET["action"])) {

	$action = $_GET["action"];
	switch($action) {
		case "search":
			$value = $_GET["value"];
			$query = $pdo->pdo->query("SELECT id,prenom, description
			FROM prenoms WHERE prenom REGEXP
			'$value' ");
			$res = $query->fetchAll(PDO::FETCH_ASSOC);
			echo json_encode($res);
		break;
	}

}

?>
