// Call the dataTables jQuery plugin
$(document).ready(function() {
  $('#dataTable').DataTable();
});

// Call the dataTables jQuery plugin
  $('#dataTable2').DataTable( {
 	ajax:{
	
  url:'user/ajax' ,
  dataSrc: ''},
    columns: [
		{ data: 'id' },
        { data: 'name' },
        { data: 'author' },
        { data: 'author2' },
        { data: 'manner' },
        { data: 'point' }
    ]
  });