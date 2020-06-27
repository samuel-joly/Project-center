<?php

require("../models/bdd/bdd.php");

class User extends Bdd {

	public function sign_up($email, $name, $surname, $password, $avatar, $promo, $discord="") {
		$sth = $this->pdo->prepare("SELECT * FROM users WHERE email = ? OR (discord = ? AND discord != '') ");
		
		if($sth->execute(array($email, $discord))) {
			if(empty($sth->fetchAll())) {
				//$private_key = crypt($password, '$5$somuchsalthereomg');			
				$password = password_hash($password, PASSWORD_BCRYPT);
				$sth = $this->pdo->prepare("INSERT INTO users(id, name, surname, password, email, promo, avatar, discord) VALUES(NULL, ?, ?, ?, ?, ?, ?, ?)");
				if($sth->execute(array($name, $surname, $password, $email, $promo, $avatar, $discord))) {
					return true;
				} else {
					throw new Exception("Couldn't add the user to the database");
				}

			} else {
				throw new Exception("Account already existing with the email :$email or discord :$discord.");
			}
		} else {
			throw new Exception("Couldn't get the database informations.");
		}
	}

	public function connect($email, $password) {
		$sth = $this->pdo->prepare("SELECT password FROM users WHERE email=?");
		$sth->execute(array($email));
		$dtb_password = $sth->fetch();
		if(!empty($dtb_password)) {
			if(password_verify($password, $dtb_password[0])) {
				setcookie("logged", password_hash($password."and a little bit of salt", PASSWORD_BCRYPT), time()+(3600*24)*180);
				setcookie("email", $email, time()+(3600*24)*180);
				return true;
			} else {
				throw new Exception("Wrong password or email.");
			}
		} else {
			throw new Exception("No account linked to this email\nConsider making an account.");
		}
	}

}

