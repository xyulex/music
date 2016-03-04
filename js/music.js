 $(function(){
 	var table 	= $('#gigsTable');
 	var tr 		= $('#gigsTable tr');


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
});
