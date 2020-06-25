
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
