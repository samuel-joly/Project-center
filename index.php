<!DOCTYPE html>
<html lang="fr">
	<head>
	    <meta charset="UTF-8">
	    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	    <link rel="stylesheet" type="text/css" href="css/style.css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	</head>
	<body class='m-0 p-0'>
	    <header class='d-flex row w-100 m-0 justify-content-center bg-light border-secondary'>

		<div class='input-group w-100 row col-12 mt-2 justify-content-between p-0 mb-2 mr-2' >
			<div class='col-4 row align-items-center m-0 p-0'>
				<img src='medias/logo.png' class='col-lg-2 col-4' height='50' />
				<p class='h3 text-black' class='col-lg-8 col-8 m-0 p-0'>La Plateforme_</p>
			</div>
			<div class='p-0 m-0 row col-lg-3 col-md-5 col-6 search_parent align-items-center' >
				<input id="search" type="text" name="research" placeholder="Cherchez quelqu'un" class='form-control col-lg-9 col-8'/>
				<div class='input-group-append col-lg-3 col-4 p-0'>
					<button class='btn btn-primary col-12' style='height:fit-content;'type='button' name='search' id='searchBtn'>Search</button>
				</div>
			</div>
		</div>

	    </header>

	    <main>
		<div class='w-100 row m-0 p-0' style='background:url("medias/promo2002-dark.jpeg") no-repeat center;background-size:cover; height:50em;'>
			<div class='input-group row col-12 mt-2 justify-content-center p-0 mb-2 mr-2 align-items-center' >
				<div class='p-0 m-0 row col-lg-12 align-items-center justify-content-center search_main_parent' style='height:fit-content;'>
					<p class='text-white text-center col-12 m-0' style='font-size:70px;'>Trouvez un partenaire</p>
					<p class='text-white text-center col-12 m-0' style='font-size:30px;'>Gérez vos projets</p>
					<input id="search_main" type="text" name="research" placeholder="Cherchez quelqu'un" class='form-control col-3'/>
					<div class='input-group-append col-1 p-0'>
						<button class='btn btn-primary col-12' style='height:fit-content;'type='button' name='search' id='searchBtn'>Search</button>
					</div>
				</div>
			</div>
			
			<div class='row col-12 m-0 p-0 justify-content-around'>
				<div class='col-4 m-0 p-0 row justify-content-center' style='height:fit-content;'>
					<p class='h3 text-white text-center col-12' style='height:fit-content;'>Trouvez vos projets</p>
					<img src='medias/project.png' style='height:15em;'/>
				</div>
				<div class='col-4 m-0 p-0 row justify-content-center' style='height:fit-content;'>
					<p class='h3 text-white text-center col-12' style='height:fit-content;'>Cherchez une équipe</p>
					<img src='medias/collaborate.png' style='height:15em;'/>
				</div>
				<div class='col-4 m-0 p-0 row justify-content-center' style='height:fit-content;'>
					<p class='h3 text-white text-center col-12' style='height:fit-content;'>Codez !</p>
					<img src='medias/program.png' style='height:15em;'/>
				</div>

			</div>

		</div>
	    </main>

	    <footer></footer>
	    <script src='js/script.js'></script>
	</body>

</html>
