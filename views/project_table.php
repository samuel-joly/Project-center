<?php ob_start(); ?>
<div class='col-12 mb-0' style='height:fit-content;'> 

	<table class='table col-12 table-stripped table-bordered table-sm mb-0 bg-light table-hover'>
		<thead class='thead-dark'>
			<tr>
				<th class='text-center' style=''>Unit</th>
				<th class='text-center' style=''>Nom</th>
				<th class='text-center' style=''>Taille équipe min</th>
				<th class='text-center' style=''>Taille équipe max</th>
				<th class='text-center' style=''>Temps impartis</th>
				<th class='text-center' style=''>Prérequis</th>
				<th class='text-center' style=''>Difficulté</th>
				<th class='text-center' style=''>PDF</th>
			</tr> 
		</thead>

		<tbody class='bg-light'>

<?php $table_head = ob_get_clean(); ?>
