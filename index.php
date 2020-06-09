<?php 
	require('classes.php');
	$user = new userpdo; 
?>
<!DOCTYPE html>
<html lang="fr">
	<head>
	    <meta charset="UTF-8">
	    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	    <link rel="stylesheet" type="text/css" href="style.css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	</head>
	<body>
		<header>
		</header>

	    <main class='d-flex justify-content-start'>
		    <div class='input-group m-2 w-25'>
			    <input id="search" type="text" name="research" placeholder='Search a name' class='form-control'/>
			    <div class='input-group-append'>
				<button class='btn btn-primary' type='button' name='search' id='searchBtn'>Search</button>
			    </div>
		    </div>
		    
		    <div class='d-flex text-red' id='error_displayer'>
	
		    </div>

	    </main>

	    <footer></footer>
	    <script src='script.js?v=1'></script>
	</body>

</html>
