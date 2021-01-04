// Call the dataTables jQuery plugin
$(document).ready(function() {
  $('#dataTable').DataTable( {
 	ajax: {
		"url" : "admin/user/ajax",
        "dataType": "JSON"
},
    columns: [
        { data: 'id' },
        { data: 'name' },
        { data: 'author' },
        { data: 'manner' },
        { data: 'point' }
    ]
} );
});
