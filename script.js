$("#search").keyup(function() {
	value = $("#search").val();
	if(value.length >= 1 ) {
		$.ajax({
			url:"search_controller.php",
			type:'get',
			data:{"action":"search" , "value":value},
			success:function(data){
				console.log(data);
				//data = JSON.parse(data);
				//console.log(data);
			}	
		});
	}

})
