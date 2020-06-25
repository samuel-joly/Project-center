<!DOCTYPE html>
<html lang="fr">
	<head>
	    <meta charset="UTF-8">
	    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	    <link rel="stylesheet" type="text/css" href="css/style.css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	</head>
	<body>
		<header>
		</header>

	    <main class='d-flex justify-content-start row'>

		<div class='row w-100 d-flex justify-content-start col-12'>
			<div class='input-group row mt-2 ml-2 mb-0 col-4'>
				<input id="search" type="text" name="research" placeholder='Search a name' class='form-control col-8'/>
				<div class='input-group-append'>
					<button class='btn btn-primary' type='button' name='search' id='searchBtn'>Search</button>
				</div>
			</div>
		</div>
		<div class='row w-100 col-12 m-0 '>
			<div class='col-4 row'>
				<div class='row border bg-light ml-2 col-8 p-0' style='overflow-y:scroll;max-height:15em;' id='search_option'>
				</div>
			</div>
		</div> 

	    </main>

	    <footer></footer>
	    <script src='js/script.js'></script>
	</body>

</html>
