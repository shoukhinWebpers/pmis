$(document).ready(function(){

	$("select").change(function(){
		var data = $(this).val();
		if( data == '' ){
			$('tbody tr').show();
		}else{
			$('tbody tr').hide();
			$('tbody tr[component="'+data+'"]').show();
		}
	});

});