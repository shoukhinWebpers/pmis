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

	$(document).on("change", "#component, #sub_component, #output", function(){
		var id      = $(this).attr("id");
        var cid     = $(this).val();
        var url     = "http://localhost/pmisV2/get_m_e_component_related_info";
        var workFor = $(this).parent().next(".form-group").children("select").attr("id");

        ajax_csrf_setup();

        $.post(
            url, 
            {getId: cid, dataFor: workFor}, 
            function( result ){
                $('#'+workFor).remove();
                $(result).insertAfter( "#sibling_"+workFor );

                $('#'+workFor' option').each(function() {
                    if( $(this).text().length > 100 ){
                    	var str     = $(this).text();
                    	var sub_str = str.slice(0, 80)+".....";
                    	$(this).text(sub_str);
                    	$(this).attr("data-toggle","tooltip");
                    	$(this).attr("title",str);
                    	$(this).attr("data-placement","left");
                    }
                });
            }
        );
    });

	$(document).on("change", "#sub_component", function(){
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

	$('[data-toggle="tooltip"]').tooltip();

	function ajax_csrf_setup(){
        $.ajaxSetup({
            data: {
                'csrf_pmis' : $("input[name=csrf_pmis]").val()
            }
        });
    }

});