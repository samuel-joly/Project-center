<?php ob_start(); ?>
<div class='card border rounded col-5 p-2 m-4' style='height:fit-content;background:<?=$unit["color"]?>;'> 

	<p class='h2 text-white text-center' style='font-size:2.5em;'><?=$unit["name"]?></p>
	<p class='text-white text-center' style='font-size:1em;'><?=$unit["description"]?></p>

	<table class='table col-12 table-stripped table-bordered table-sm mb-0'>
		<thead class='thead-dark'>
			<tr>
				<th class='text-center' style='width:5em;'>Nom</th>
				<th class='text-center' style='width:7em;'>Taille équipe</th>
				<th class='text-center' style='width:7em;'>Temps impartis</th>
				<th class='text-center' style='width:1em;'>PDF</th>
				<th class='text-center' style='width:8em;'>Recherche groupe</th>
			</tr>
		</thead>

		<tbody class='bg-light'>

<?php $table_head = ob_get_clean(); ?>
