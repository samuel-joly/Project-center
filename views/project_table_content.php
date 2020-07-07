<?php ob_start(); ?>

<tr style='font-size:1.2em;color:black;' id='<?=$project["id"]?>' class='rate-row'>
	<td class='text-center'><?=$unit["name"]?></td>
	<td class=''><?=$project["name"]?></td>
	<td class='text-center'><?=$project["min_size"]?></td>
	<td class='text-center'><?=$project["min_size"]?></td>
	<td class='text-center'><?=$project["chrono"]?> jours</td>
	<td class=''>
		<?php
			if(count($requirement)>0){
				foreach($requirement[0] as $req=>$value) { 
					if($value != 0){ ?>
						<img src='medias/<?=$req?>.png' class='' data-toggle='tooltip' data-placement='bottom' title='<?=$value?>' height='30'/>
			<?php	} 
				}
			}
		?>
		
	</td>
	<td class='text-center' id='rating'>
		<?=$p->display_rating($project["id"]);?>
	</td>
	<td class='text-center'>
		<a href='<?=$project["pdf"]?>' class='btn btn-info project_pdf_btn  m-0 pb-0 pt-0' style='height:1.8em;font-size:0.8em;'>Télécharger</a>
	</td>
	
</tr>

<?php $table_content = ob_get_clean();?>
