<?php
class userpdo
{

    public function insertdata() //--------------------J'ai utiliser ceci pour insérer des données dans la bdd plus rapidement.
    {
        if (isset($_GET['bouton'])) {
            $nom = $_GET['nom'];
            $bdd = new PDO("mysql:host=localhost;dbname=autocompletion", "root", "");
            $request = "SELECT * FROM prenoms WHERE prenom ='$nom'";
            $query = $bdd->query($request);
            $result = $query->fetchAll(PDO::FETCH_ASSOC);

            if (!empty($result)) {
                echo "Ce prénom existe déjà";
            } else if (empty($nom)) {
                echo "veuillez entrer un nom.";
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
}
