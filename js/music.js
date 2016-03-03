 $(function(){
 	 $('#gigsTable').DataTable({
 	 	"lengthMenu": [[10, 20, 50, -1], [10, 20, 50, "Todos"]],
 	 	"pageLength": 20,
 	 	"language": {
            "url": "/music/js/spanish.json"
        }
 	 });
});
