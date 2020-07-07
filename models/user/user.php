<?php
session_start();

require($_SESSION["ROOT_PATH"]."models/bdd/bdd.php");

class User extends Bdd {
	public function is_email_valid($email) {
		if(!empty(preg_match("/@laplateforme.io$/",$email))){
			return true;
		} else {
			return false;
		}
	}

	public function check_avatar($avatar) {
		$type = strtolower(pathinfo($avatar["name"], PATHINFO_EXTENSION));
		if($type != "jpg" && $type != "png" && $type != "jpeg") {
			return false;
		}

	}

	public function sign_up($email, $name, $surname, $password, $password_confirm, $avatar, $promo, $discord="") {
		if($this->is_email_valid($email)){
			$sth = $this->pdo->prepare("SELECT * FROM users WHERE email = ?");
			if($sth->execute(array($email))) {
				if(empty($sth->fetchAll())) {
					if($password == $password_confirm) {
						$password = password_hash($password, PASSWORD_BCRYPT);
						$sth = $this->pdo->prepare("INSERT INTO users(id, name, second_name, password, email, avatar, discord, description, promo) VALUES(NULL, ?, ?, ?, ?, 'default.png', ?, 'Etudiant a LaPlateforme_', ?)");
						if($sth->execute(array($name, $surname, $password, $email, $discord, $promo))) {
							return true;
						} else {
							throw new Exception("Couldn't add the user to the database");		}
					} else {
						throw new Exception("Passwords does not match.");	}
				} else {
					throw new Exception("Account already existing with the email :$email ");	}
			} else {
				throw new Exception("Couldn't get the database informations.");		}
		} else {
			throw new Exception("Email ($email) is not valid.");	}
	}

	public function connect($email, $password) {
		$sth = $this->pdo->prepare("SELECT password, promo, id FROM users WHERE email=?");
		$sth->execute(array($email));
		$dtb_password = $sth->fetch();
		if(!empty($dtb_password)) {
			if(password_verify($password, $dtb_password[0])) {
				$_SESSION["logged"] = $email;
				$_SESSION["promo"] = $dtb_password[1];
				$_SESSION["id"] = $dtb_password[2];
				return true;
			} else {
				throw new Exception("Wrong password or email.");
			}
		} else {
			throw new Exception("No account linked to this email\nConsider making an account.");
		}
	}

	public function get_infos($id){
		$stmt = $this->pdo->prepare("SELECT * FROM users WHERE id = ?");
		if($stmt->execute(array($id))) {
			return $stmt->fetchAll(PDO::FETCH_ASSOC)[0];			
		} else {
			throw new Exception("Impossible d'acceder aux donnees de l'utilisateur $id");
		}
	}

}

