 $(function(){
 	var table		= $('#gigsTable');
 	var tr			= $('#gigsTable tr');
 	var gigDetail	= $('#gigDetail img');

 	table.DataTable({
 	 	"lengthMenu": [[10, 20, 50, -1], [10, 20, 50, "Todos"]],
 	 	"pageLength": 20,
 	 	"language": {
            "url": "/music/js/spanish.json"
        }
 	});

 	tr.hover(function() {
 	 	$(this).css({
 	 		"cursor" 	 : "pointer",
 	 		"background" : "lightblue"
 	 	});
 	 	$(this).find("img").show();
 	}, function() {
 	 	$(this).find("img").hide();
 	 		$(this).css({
 	 			"background" : ""
 	 		});
 	});

 	tr.click(function() {
 	 	window.location.href = $(this).find("a").attr("href");
 	});

	gigDetail.load(function() {
	    $(this).attr("width", this.width / 2);
	}).bind('mouseenter mouseleave', function(e) {
	    $(this).stop().animate({
	        width: this.width * (e.type === 'mouseenter' ? 2 : 0.5)
	    });
	});
});