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

	$("#component").change(function(){
		var data = $(this).val();
		var counter = 1;
		
		$('#sub_component option').each(function() {
		    if ( $(this).attr("group") == data ) {
		        $(this).show();
		    }else if( data == "" && counter != 1 ){
		    	$(this).hide();
		    }else if( counter != 1 ){
		    	$(this).hide();
		    }
		    counter++;
		});

	});

	$("#sub_component").change(function(){
		var data = $("option:selected", this).attr("group");

		var counter = 1;

		$('#output option').each(function() {
		    if ( $(this).attr("group") == data ) {
		        $(this).show();
		    }else if( data == "" && counter != 1 ){
		    	$(this).hide();
		    }else if( counter != 1 ){
		    	$(this).hide();
		    }
		    counter++;
		});

	});

	$("#output").change(function(){
		var data = $("option:selected", this).attr("group");
		var counter = 1;
		
		$('#iris option').each(function() {
		    if ( $(this).attr("group") == data ) {
		        $(this).show();
		    }else if( data == "" && counter != 1 ){
		    	$(this).hide();
		    }else if( counter != 1 ){
		    	$(this).hide();
		    }
		    counter++;
		});

	});

});