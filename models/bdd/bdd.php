<?php
class Bdd
{
    public $pdo = "";

    public function __construct() {
        try { //Si une erreur apparait dans lebloc try
		$pdo = new PDO("mysql:host=localhost;dbname=autocompletion;charset=UTF8","root","");
	} catch(Exception $e) { // Elle est affiche ici
		return display_errors(["Une erreur est survenue lors de la connection ".$e->getMessage()]);
	}

	$this->pdo = $pdo;
    }
    
}
