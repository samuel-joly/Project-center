<?php

require("models/bdd/bdd.php");

class Unit extends Bdd {

	public function get_unit_infos($id_unit){
		$sth = $this->pdo->prepare("SELECT * FROM units where id=?");

		if($sth->execute(array($id_unit))) {
			return $sth->fetchAll(PDO::FETCH_ASSOC);
		} else {
			throw new Exception("Can't get unit infos : Bad id '$id_unit'");
		}
	} 

	public function get_unit_projects($id_unit, $promo) {
		$sth = $this->pdo->prepare("SELECT * FROM projects WHERE unit=? and promo=?");
		if($sth->execute(array($id_unit, $promo))) {
			return $sth->fetchAll(PDO::FETCH_ASSOC);
		} else {
			throw new Exception("Can't get projects from unit Bad id '$id_unit'"); 
		}
	}

	public function get_all_unit() {
		return $this->pdo->query("SELECT * FROM units ORDER BY id DESC")->fetchAll(PDO::FETCH_ASSOC);
	}

}

