$("#search").keyup(function() {
    value = $("#search").val();
    if(value.length >= 1 ) {
        $.ajax({
            url:"models/search/search_controller.php",
            type:'get',
            data:{"action":"search" , "value":value},
            success:function(data){
	    	$('#search_option').children("div").remove();
	    	$('#search_option').append(data);
            }
        });
    } else {
	    	$('#search_option').children("div").remove();
    }

})
