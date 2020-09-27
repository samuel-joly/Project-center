<?php
require_once($_SESSION["ROOT_PATH"]."models/bdd/bdd.php");

class Project extends Bdd{

	public function get_requirement($id_project) {
		$stmt = $this->pdo->prepare("select html,css,php,js,dtb from requirements where id_project = ?");
		if($stmt->execute(array($id_project))) {
			return $stmt->fetchAll(PDO::FETCH_ASSOC);
		} else {
			throw new Exception("Impossible de recuperer les prerequis du projet $id_project");
		}
	}

	public function get_rating($id_project){
		$stmt = $this->pdo->prepare("select AVG(rate) as rating from difficulty where id_project = ?");
		if($stmt->execute(array($id_project))) {
			return $stmt->fetch(PDO::FETCH_ASSOC)["rating"];
		} else {
			throw new Exception("Impossible de recuperer la difficulte du projet $id_project");
		}
	}

	public function display_rating($id_project){
		$rating = $this->get_rating($id_project);
		$tooltip = 	["gg ez",  "Easy peasy lemon squeezi",	"Là on parle",	"*sweating intensify*",	"TRIGGERED"	];
		$ret = "";
		for($i=0;$i<=4;$i++) { 
			if($i<$rating) { 
				$ret .= "<img src='medias/skull.png' class='rate' id='".($i+1)."' height='30' data-toggle='tooltip' data-placement='bottom' title='$tooltip[$i]'/>";
		 	} else { 
				$ret .= "<img src='medias/skull-empty.png' class='rate' id='".($i+1)."' height='30' data-toggle='tooltip' data-placement='bottom' title='$tooltip[$i]'/>";
			}
		}
		return $ret;
	}

	public function set_rating($id_project, $rate) {
		$stmt = $this->pdo->prepare("select * from difficulty where id_user = ? and id_project = ?");
		if($stmt->execute(array($_SESSION["id"], $id_project))) {
			if(count($stmt->fetchAll()) != 0) {
				$stmt = $this->pdo->query("DELETE from difficulty WHERE id_project= $id_project and id_user=".$_SESSION['id']);	
			}

			$stmt = $this->pdo->prepare("insert into difficulty(id, id_project, id_user, rate) values(NULL, ?, ?, ?)");
			if($stmt->execute(array($id_project, $_SESSION["id"], $rate))) {
				return true;
			} else {
				throw new Exception("Impossible d'ajouter la note $rate au projet projet $id_project");
			}
		} else {
			throw new Exception("Impossible de recuperer la difficulte du projet $id_project");
		}
	}
}
