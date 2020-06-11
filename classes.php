<?php
require("functions.php");
class userpdo
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
    
    public function insertdata() //--------------------J'ai utiliser ceci pour insérer des données dans la bdd plus rapidement.
    {
        if (isset($_GET['bouton'])) {
            $nom = $_GET['nom'];
            $request = "SELECT * FROM prenoms WHERE prenom ='$nom'";
            $query = $this->pdo->query($request);
            $result = $query->fetchAll(PDO::FETCH_ASSOC);

            if (!empty($result)) {
	    	return display_errors(["Ce pseudo existe deja"]);
            } else if (empty($nom)) {
	    	return display_errors(["Veuillez entrer un nom."]);
            }
            else {
                $nomhtml = htmlspecialchars($_GET['nom']);
                $descrhtml = htmlspecialchars($_GET['descr']);
                $request = "INSERT INTO `prenoms` (`prenom`, description) VALUES (:prenom, :description)";
                $data = [
                    'prenom' => $nomhtml,
                    'description' => $descrhtml
                ];
                $prepare = $bdd->prepare($request);
                $prepare->execute($data);
                echo "Entrée insérée";
            }
        }
    }
    public function search() {
        if (!empty($_GET['research']))
        {
		$research = $_GET['research'];
		$request = "SELECT * FROM 'prenoms' WHERE prenom LIKE $research%";
		$prepare = $this->pdo->prepare($request);
		$prepare->execute($request);
        }
        else {
		return display_Errors(["Pas de résultat."]);
        }


    }
}
