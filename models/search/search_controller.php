<?php
require("../bdd/bdd.php");


if(isset($_GET["action"])) {

	$action = $_GET["action"];
	switch($action) {
		case "search":
			$pdo = new Bdd();

			$value = $_GET["value"];
			$query = $pdo->pdo->query("SELECT id, name, status, avatar FROM users WHERE name REGEXP'^$value'");
			$res = $query->fetchAll(PDO::FETCH_ASSOC);
			
			foreach($res as $match) { 
				require("../../views/search_list.php");
			}
		break;
	}

}

?>
