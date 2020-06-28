<?php ob_start(); ?>

<tr style='font-size:1.2em;'>
	<td class='text-center'><?=$project["name"]?></td>
	<td class='text-center'><?=$project["min_size"]?></td>
	<td class='text-center'><?=$project["chrono"]?> jours</td>
	<td class='d-flex justify-content-center'><a href='<?=$project["pdf"]?>' class='btn btn-info project_pdf_btn m-0 pb-0 pt-0' style='height:1.8em;font-size:0.8em;'>Télécharger</a></td>
	<td class=' '><img src='medias/add.png' class='rounded-circle' height='30'/></td>
</tr>

<?php $table_content = ob_get_clean();?>
