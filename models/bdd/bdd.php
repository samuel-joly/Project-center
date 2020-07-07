<?php
class Bdd
{
    public $pdo = "";

    public function __construct() {
        try {
		$pdo = new PDO("mysql:host=localhost;dbname=project-center;charset=UTF8","root","");
		$pdo->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING );
		} catch(Exception $e) { 
			throw new Exception("Une erreur est survenue lors de la connection ".$e->getMessage());
		}

		$this->pdo = $pdo;
    }
    
}
