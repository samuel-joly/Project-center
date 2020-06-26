function autocomplete(value, main=true) {
    if(value.length >= 1 ) {
        $.ajax({
		url:"models/search/search_controller.php",
		type:'get',
		data:{"action":"search" , "value":value},

		success:function(data){
			$(".search_list").remove();
			if(main){
				$(".search_main_parent").append("<div class='search_list col-4 offset-4 p-0'>"+data+"</div>");
			} else {
				$(".search_parent").append("<div class='search_list p-0'>"+data+"</div>");
			}
		}
	});
    } else {
	$("#search_list").remove();
    }
}



$("#search").keyup(function() {
	value = $("#search").val();
	autocomplete(value, false);
})

$("#search_main").keyup(function() {
	value = $("#search_main").val();
	autocomplete(value);
})

$("body").click(function() {$(".search_list").remove();})

