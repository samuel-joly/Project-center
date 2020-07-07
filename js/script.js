function autocomplete(value, main=true) {
    if(value.length >= 1 ) {
        $.ajax({
		url:"controller/search/search_controller.php",
		type:'get',
		data:{"action":"search" , "value":value},

			success:function(data){
				$(".search_list").remove();
				if(main){
					$(".search_main_parent").append("<div class='search_list col-4 offset-4 p-0'>"+data+"</div>");
				} else {
					$(".search_parent").append("<div class='search_list p-0'>"+data+"</div>");
				}
				
				set_search_event();
			}
		}); 
	} else {
		$("#search_list").remove();
    }
}

function set_search_event() {
	$('.search-item').on('click', '*', function(e) {
		e.stopPropagation();	
		target = $(e.target).parent();
		
		while(!target.hasClass("search-item")){
			target = target.parent();
		}
		
		$.ajax({
			url:"controller/users/profile.php",
			type:'get',
			data:{'id':target.attr('id')},
			success:function(data) {
				$("body").append(data);
				$('#userProfile').modal("show");
			}

		});

	});
}

function set_rating(e){
		target = $(e.target);
		while(!target.hasClass("rate-row"))
		{
			target = target.parent();
		}

		id_project = target.attr('id');
		rate = $(e.target).attr("id");

		$.ajax({
			url:'controller/projects/project.php',
			type:"POST",
			data:{'id_project':id_project, "rate":rate, "action":"set_rating"},
			success:function(data){
				if(data){
					$.ajax({
						url:"controller/projects/project.php",
						type:'POST',
						data:{"action":"get_rating", "id_project":id_project},
						success:function(data){
							$("#"+id_project+" #rating").children(".rate").tooltip("dispose");
							$("#"+id_project+" #rating").children(".rate").remove();
							$("#"+id_project+" #rating").append(data);

							$(".rate").click(function(e){
								set_rating(e)
							});

							$("#"+id_project+" #rating").children(".rate").tooltip()
						}
					})
				}
			}
		})
}

$("document").ready(function() {

	$("#search").on(
		{ 'keyup':function() {
			value = $("#search").val();
			autocomplete(value, false);
		},'click':function(){
			value = $("#search").val();
			autocomplete(value,false);
		}
	});

	$("#search_main").on(
		{ 'keyup':function() {
			value = $("#search_main").val();
			autocomplete(value);
		},'click':function(){
			value = $("#search_main").val();
			autocomplete(value);
		}
	});

	$("body").click(function() { $(".search_list").remove(); })

	$('[data-toggle="tooltip"]').tooltip()

	$(".rate").click(function(e){
		set_rating(e)
	});

});

