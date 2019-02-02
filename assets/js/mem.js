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
        var url     = base_url+"get_m_e_component_related_info";
        var workFor = $(this).parent().next(".form-group").children("select").attr("id");

        if( cid == "" ){

        	var index       = $(".related-to-component").index(this);
        	var indexLength = $(".related-to-component").length;

        	for( var i = index + 1; i < indexLength; i++ ){

        		var idOfThis         = $('.related-to-component').eq(i-1).attr("id");
        		var idOfWorkingData  = $('.related-to-component').eq(i).attr("id");
        		var wordManipulation = idOfThis.split('_');
        		var manipulatedWord  = '';

        		wordManipulation.forEach(function( item ){
        			manipulatedWord += item + ' ';
        		});

        		$('.related-to-component').eq(i).remove();
        		$('<select id="'+idOfWorkingData+'" class="form-control related-to-component"><option value="">Please select ' + manipulatedWord.trim() + ' first</option></select>').insertAfter( "#sibling_"+idOfWorkingData );
        	}

        }else{
        	ajax_csrf_setup();

        	$.post(
        	    url, 
        	    {getId: cid, dataFor: workFor}, 
        	    function( result ){
        	        $('#'+workFor).remove();
        	        $(result).insertAfter( "#sibling_"+workFor );

        	        $('#'+workFor+' option').each( function() {
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
        }
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