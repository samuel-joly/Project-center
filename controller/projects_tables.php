<?php
session_start();
require("models/unit/unit.php");
try {
	$u = new Unit();

	$units = $u->get_all_unit();

	foreach($units as $unit) {
			$infos = $u->get_unit_infos($unit["id"]);
			require("views/project_table.php");
			echo $table_head;

			$projects = $u->get_unit_projects($unit["id"], $_SESSION["promo"]);
			foreach($projects as $project) {
				require("views/project_table_content.php");
				echo $table_content;
			}

			require("views/project_table_end.php");
			echo $table_end;
	}
} catch (Exception $e) {
	echo $e->get_error_message();
}
