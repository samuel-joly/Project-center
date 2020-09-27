<?php
require_once($_SESSION["ROOT_PATH"]."models/unit/unit.php");
require_once($_SESSION["ROOT_PATH"]."models/project/project.php");

try {
	$u = new Unit();

	$units = $u->get_all_unit();
	
	require($_SESSION["ROOT_PATH"]."views/project_table.php");
	echo $table_head;

	foreach($units as $unit) {
			$infos = $u->get_unit_infos($unit["id"]);
			$projects = $u->get_unit_projects($unit["id"], $_SESSION["promo"]);
			foreach($projects as $project) {
				$p = new Project();
				$requirement = $p->get_requirement($project["id"]);
				require($_SESSION["ROOT_PATH"]."views/project_table_content.php");
				echo $table_content;
			}
	}

	require($_SESSION["ROOT_PATH"]."views/project_table_end.php");
	echo $table_end;

} catch (Exception $e) {
	echo $e->get_error_message();
}
