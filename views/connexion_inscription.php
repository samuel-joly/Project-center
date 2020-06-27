<!DOCTYPE html>
<html lang="fr">

	<head>
	    <meta charset="UTF-8">
	    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	</head>

	<body class='m-0 p-2 d-flex justify-content-center align-items-center row' style='background:url("medias/promo2002-dark.jpeg") no-repeat center;background-size:cover; height:100vh;'>
		<div class='row d-flex flex-column col-12 align-items-center justify-content-center'>
			<form class='form-group col-lg-4 col-md-5 col-12 row rounded bg-light shadow m-2 p-2' method='POST' action='controller/connexion.php'>
				<p class='col-12 h2 text-center m-0 p-0'>Connexion</p>
				<div class='col-12 d-flex row justify-content-center m-1 p-1'>
					<div class='row p-1 col-12 ' style='position:relative;'>
						<label class='col-6 p-0 m-0' for='email'>Email</label>
						<input type='mail' id='email' name='email' class='col-12 m-0 p-0 form-control' placeholder='VotreEmail@laplateforme.io' required/>
					</div>

					<div class='row p-1 col-12 '>
						<label for='password' class='col-12 p-0 m-0' >Mot de passe </label>
						<input type='password' id='password' name='psw' class='col-12 m-0 p-0 form-control ' required/>
					</div>
				</div>
				<div class='col-12 d-flex justify-content-center m-1 p-1'>
					<button class='btn btn-primary' id='con-btn' name='conn-submit' type='submit'>Se connecter</button>
				</div>
			</form>

			<form class='col-lg-4 col-md-5 col-12 row rounded bg-light shadow m-2 justify-content-center p-2' method='POST' action='controller/inscription.php'>
				<p class='h2 col-12 text-center m-0 p-0'>Inscription</p>

				<div class='col-12 row d-flex m-1' style='position:relative;'>
					<label for='emaili' class='col-6 p-0 mb-0 justify-self-start'>Email :</label>
					<input type='text' class='col-12 m-0 p-0 form-control ' id='emaili' name='email' placeholder='VotreEmail@laplateforme.io' required/>
					<small class='font-text m-0 invalid-feedback' style='position:absolute;top:100%;'>L'email doit terminer par <u>@laplateforme.io</u></small>
				</div>

				<div class='col-12 row d-flex m-1 justify-content-between ' >
					<label for='pswi' class='col-5 p-0 mb-0'>Mot de passe :</label>
					<input type='psw' class='col-12 p-0 form-control ' id='pswi' name='pswi' required/>
					<small class='p-0 col-12 font-text m-0 text-muted'>Ne rentrez pas votre mot de passe laplateforme !</small>
				</div>

				<div class='col-12 row d-flex m-1 justify-content-between ' style='position:relative;'>
					<label for='pswci' class='col-5 p-0 mb-0'>Confirmez le mot de passe :</label>
					<input type='psw' class='col-12 p-0 form-control ' id='pswci' name='pswci' required/>
					<small class='font-text m-0 invalid-feedback' style='position:absolute;top:100%;'>Les mots de passe ne correspondent pas.</small>
				</div>

				<div class='col-12 row d-flex m-1 justify-content-between ' style='position:relative;'>
					<label for='prenomi' class='col-5 m-0 p-0'>Prénom :</label>
					<input type='text' class='col-12 p-0 form-control ' id='prenomi' name='second_name' placeholder='Jean'/>
				</div>
				
				<div class='col-12 row d-flex m-1 justify-content-between ' style='position:relative;'>
					<label for='nomi' class='col-5 p-0 m-0'>Nom :</label>
					<input type='text' class='col-12 p-0 form-control ' id='nomi' name='name' placeholder='Neymar'/>
				</div>
				
				<div class='d-flex justify-content-between col-12'>
					<div class='input-group row col-6 justify-content-center p-0 mt-1'>
						<div class='col-12 row d-flex' >
							<label for='discord' class='col-7 m-0 p-0 '>Discord <small class='text-muted'>facultatif</small></label>
							<input type='text' class='col-12 m-0 p-0 form-control' id='discord' name='discord' />
						</div>
					</div>

					<div class='input-group row col-6 justify-content-center mt-3 p-1 pr-3' style='position:relative;top:7px;'>
						<div class='col-12 row d-flex justify-content-between custom-file' style='position:relative'>
							<input type='file' class='custom-file-input' id='avatarInput' name='avatar' aria-describedby='avatarInput'/>
							<label for='avatarInput' class='custom-file-label '>Avatar</label>
						</div>
					</div>
				</div>

				<div class='col-12 d-flex justify-content-center m-1 p-1'>
					<button class='btn btn-primary m-2' id='inscr-btn' name='conn-submit' type='submit'>S'inscrire</button>
					<button class='btn btn-danger m-2' type='reset'>Reset</button>
				</div>

			</form>
		</div>

		<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
		<script src='js/inscription_connexion_error.js'></script>
		</body>

</html>
