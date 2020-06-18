$("#search").keyup(function() {
    value = $("#search").val();
    if(value.length >= 1 ) {
        $.ajax({
            url:"search_controller.php",
            type:'get',
            data:{"action":"search" , "value":value},
            datatype : "json",
            success:function(datatype){
                data = JSON.parse(datatype);
		data.forEach(function(item, index) {
			console.log(data[index]);
		})
            }
        });
    }

})
