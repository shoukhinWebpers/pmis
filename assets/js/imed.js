$(document).ready(function(){
    $(document).on("change", "#list_of_ministry", function(){

        var mid = $("select[name=ministry]").val();
        var url = "http://localhost/pmisV2/get_division";
        
        ajax_csrf_setup();

        $.post(
            url, 
            {ministryId: mid}, 
            function( result ){
                $("#list_of_division").remove();
                $(result).insertAfter( "#sibling_list_of_division" );
            }
        );

    });

    $(document).on("keyup", "input[name=revenue_rtq_gob], input[name=capital_rtq_gob]", function(e){
        
        var val1 = $("input[name=revenue_rtq_gob]").val();
        var val2 = $("input[name=capital_rtq_gob]").val();

        if( val1 != '' && val2 != '' && parseFloat(val1) == val1 && parseFloat(val2) == val2 ){
            var result = addition( val1, val2 );
            $("input[name=grand_total_rtq_gob]").val(result);
        }else if( ( ( val1 != '' && parseFloat(val1) != val1 ) || ( parseFloat(val2) != val2 && val2 != '' ) ) && e.keyCode != 8 && e.keyCode != 46 ){
            alert("Please provide a valid amount!");
            $("input[name=grand_total_rtq_gob]").val('');
        }else{
            $("input[name=grand_total_rtq_gob]").val('');
        }

    });    

    function addition( val1, val2 ){

        var result = parseFloat( val1 ) + parseFloat( val2 );
        return result;

    }

    function ajax_csrf_setup(){
        $.ajaxSetup({
            data: {
                'csrf_pmis' : $("input[name=csrf_pmis]").val()
            }
        });
    }

});