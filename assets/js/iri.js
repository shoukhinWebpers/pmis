$(document).ready(function(){

	$(document).on("change", "#component", function(){

		var id  = $(this).attr("id");
        var cid = $(this).val();
        var url = base_url+"get_indicator_based_on_component";

        if( cid == "" ){
        	$('#indicator_selection').remove();
        	$('<select id="indicator_selection" class="form-control"><option value="">Please select a component first</option></select>').insertAfter( "#indicator_label" );

        }else{
        	ajax_csrf_setup();

        	$.post(
        	    url, 
        	    { getId: cid }, 
        	    function( result ){
                    console.log( result );
        	        $('#indicator_selection').remove();
        	        $(result).insertAfter( "#indicator_label" );
        	    }
        	);
        }
    });

	function ajax_csrf_setup(){
        $.ajaxSetup({
            data: {
                'csrf_pmis' : $("input[name=csrf_pmis]").val()
            }
        });
    }

});