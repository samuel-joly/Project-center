<?php ob_start(); ?>
<div class='col-12 border m-0 p-0 row d-flex align-items-center bg-light search-item'>
	<div class='col-8 row d-flex align-items-center p-0 mt-1 mr-0 ml-0'>
		<p class='text-black col-12 m-0' style='font-size:1.3em;'><b><?=$match["prenom"]?></b></p>
		<p class='text-muted col-12 m-0' style='font-size:1em;'><?=$match["status"]?></p>
	</div>
	<div class='col-4 d-flex justify-content-end p-0'>
		<img src='medias/avatars/<?=$match["image"]?>' style='height:4em;' class='rounded-circle m-1 border'/>
	</div>
</div>
<?php echo ob_get_clean(); ?>
