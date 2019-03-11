$(document).ready(function(){
    $(document).on("change", "#list_of_ministry", function(){

        var mid = $("select[name=ministry]").val();
        var url = base_url + "get_division";
        
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

        value_calculation(val1, val2, "grand_total_rtq_gob", e.keyCode);

    });

    $(document).on("keyup", "input[name=revenue_rtq_rpa], input[name=capital_rtq_rpa]", function(e){
        
        var val1 = $("input[name=revenue_rtq_rpa]").val();
        var val2 = $("input[name=capital_rtq_rpa]").val();

        value_calculation(val1, val2, "grand_total_rtq_rpa", e.keyCode);

    });

    $(document).on("keyup", "input[name=exp_for_the_qrtr_revenue_gob], input[name=exp_for_the_qrtr_capital_gob]", function(e){
        
        var val1 = $("input[name=exp_for_the_qrtr_revenue_gob]").val();
        var val2 = $("input[name=exp_for_the_qrtr_capital_gob]").val();

        value_calculation(val1, val2, "exp_for_the_qrtr_grand_total_gob", e.keyCode);

    });

    $(document).on("keyup", "input[name=exp_for_the_qrtr_revenue_rpa], input[name=exp_for_the_qrtr_capital_rpa]", function(e){
        
        var val1 = $("input[name=exp_for_the_qrtr_revenue_rpa]").val();
        var val2 = $("input[name=exp_for_the_qrtr_capital_rpa]").val();

        value_calculation(val1, val2, "exp_for_the_qrtr_grand_total_rpa", e.keyCode);

    });

    $(document).on("keyup", "input[name=exp_for_the_qrtr_revenue_dpa], input[name=exp_for_the_qrtr_capital_dpa]", function(e){
        
        var val1 = $("input[name=exp_for_the_qrtr_revenue_dpa]").val();
        var val2 = $("input[name=exp_for_the_qrtr_capital_dpa]").val();

        value_calculation(val1, val2, "exp_for_the_qrtr_grand_total_dpa", e.keyCode);

    });

    $(document).on("keyup", "input[name=crrnt_year_exp_revenue_gob], input[name=crrnt_year_exp_capital_gob]", function(e){
        
        var val1 = $("input[name=crrnt_year_exp_revenue_gob]").val();
        var val2 = $("input[name=crrnt_year_exp_capital_gob]").val();

        value_calculation(val1, val2, "crrnt_year_exp_grand_total_gob", e.keyCode);

    });

    $(document).on("keyup", "input[name=crrnt_year_exp_revenue_rpa], input[name=crrnt_year_exp_capital_rpa]", function(e){
        
        var val1 = $("input[name=crrnt_year_exp_revenue_rpa]").val();
        var val2 = $("input[name=crrnt_year_exp_capital_rpa]").val();

        value_calculation(val1, val2, "crrnt_year_exp_grand_total_rpa", e.keyCode);

    });

    $(document).on("keyup", "input[name=crrnt_year_exp_revenue_dpa], input[name=crrnt_year_exp_capital_dpa]", function(e){
        
        var val1 = $("input[name=crrnt_year_exp_revenue_dpa]").val();
        var val2 = $("input[name=crrnt_year_exp_capital_dpa]").val();

        value_calculation(val1, val2, "crrnt_year_exp_grand_total_dpa", e.keyCode);

    });

    $(document).on("keyup", "input[name=crrnt_year_exp_revenue_dpa], input[name=crrnt_year_exp_capital_dpa]", function(e){
        
        var val1 = $("input[name=crrnt_year_exp_revenue_dpa]").val();
        var val2 = $("input[name=crrnt_year_exp_capital_dpa]").val();

        value_calculation(val1, val2, "crrnt_year_exp_grand_total_dpa", e.keyCode);

    });

    function value_calculation( val1, val2, result_field, key_pressed ){

        if( val1 != '' && val2 != '' && parseFloat(val1) == val1 && parseFloat(val2) == val2 ){

            var result = addition( val1, val2 );
            $("input[name="+result_field+"]").val(result);

        }else if( 
            ( ( val1 != '' && parseFloat(val1) != val1 ) || ( parseFloat(val2) != val2 && val2 != '' ) ) 
            && key_pressed != 8 && key_pressed != 46 )
        {
            
            alert("Please provide a valid amount!");
            $("input[name="+result_field+"]").val('');

        }else{

            $("input[name="+result_field+"]").val('');
            
        }

    }    

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