<?php
require("../../models/bdd/bdd.php");


if(isset($_GET["action"])) {

	$action = $_GET["action"];
	switch($action) {
		case "search":
			$pdo = new Bdd();

			$value = $_GET["value"];
			$query = $pdo->pdo->query("SELECT projects.id, projects.name, pdf, units.name as unit_name FROM projects INNER JOIN units on projects.unit = units.id WHERE projects.name REGEXP'^$value'");
			$res = $query->fetchAll(PDO::FETCH_ASSOC);
			
			foreach($res as $match) { 
				require("../../views/search_list.php");
			}
		break;
	}

}

?>
