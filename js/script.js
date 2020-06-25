function test() {
	
}



$("#search").keyup(function() {
    value = $("#search").val();
    if(value.length >= 1 ) {

        $.ajax({
            url:"models/search/search_controller.php",
            type:'get',
            data:{"action":"search" , "value":value},

            success:function(data){
	    	$("#search_list").remove();
		$("#search_parent").append("<div id='search_list' class='col-lg-3 col-md-5 col-6 offset-8 p-0'>"+data+"</div>");
            }	});

    } else {

    }

})
