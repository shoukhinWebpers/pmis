$(document).ready(function(){

	$(document).on("keyup", "input", function(){
		
        var addition = 0;

        var data1 = ( $(this).closest('tr').children(':nth-child(3)').children("input").val() !='' ) ? convert_value( $(this).closest('tr').children(':nth-child(3)').children("input").val() ):0;
        var data2 = ( $(this).closest('tr').children(':nth-child(4)').children("input").val() !='' ) ? convert_value( $(this).closest('tr').children(':nth-child(4)').children("input").val() ):0;
        var data3 = ( $(this).closest('tr').children(':nth-child(5)').children("input").val() !='' ) ? convert_value( $(this).closest('tr').children(':nth-child(5)').children("input").val() ):0;
        var data4 = ( $(this).closest('tr').children(':nth-child(6)').children("input").val() !='' ) ? convert_value( $(this).closest('tr').children(':nth-child(6)').children("input").val() ):0;

        addition = parseFloat( data1 ) + parseFloat( data2 ) + parseFloat( data3 ) + parseFloat( data4 );
        var bangla_result = convert_value_to_bangla ( addition );

        $(this).closest('tr').children(':nth-child(7)').html( bangla_result );

    });


    function convert_value( s ){

        var convertedValue = '';

        for (var i = 0; i < s.length; i++) {
            if( s.charAt(i) === '০' ){

                convertedValue += '0';

            }else if( s.charAt(i) === '১' ){

                convertedValue += '1';

            }else if( s.charAt(i) === '২' ){

                convertedValue += '2';

            }else if( s.charAt(i) === '৩' ){

                convertedValue += '3';

            }else if( s.charAt(i) === '৪' ){

                convertedValue += '4';

            }else if( s.charAt(i) === '৫' ){

                convertedValue += '5';

            }else if( s.charAt(i) === '৬' ){

                convertedValue += '6';

            }else if( s.charAt(i) === '৭' ){

                convertedValue += '7';

            }else if( s.charAt(i) === '৮' ){

                convertedValue += '8';

            }else if( s.charAt(i) === '৯' ){

                convertedValue += '9';

            }else if( s.charAt(i) === '.' ){

                convertedValue += '.';

            }

        }

        return convertedValue;

    }

    function convert_value_to_bangla( a ){

        var convertedValue = '';
        var s = a.toString();

        for (var i = 0; i < s.length; i++) {
            if( s.charAt(i) === '0' ){

                convertedValue += '০';

            }else if( s.charAt(i) === '1' ){

                convertedValue += '১';

            }else if( s.charAt(i) === '2' ){

                convertedValue += '২';

            }else if( s.charAt(i) === '3' ){

                convertedValue += '৩';

            }else if( s.charAt(i) === '4' ){

                convertedValue += '৪';

            }else if( s.charAt(i) === '5' ){

                convertedValue += '৫';

            }else if( s.charAt(i) === '6' ){

                convertedValue += '৬';

            }else if( s.charAt(i) === '7' ){

                convertedValue += '৭';

            }else if( s.charAt(i) === '8' ){

                convertedValue += '৮';

            }else if( s.charAt(i) === '9' ){

                convertedValue += '৯';

            }else if( s.charAt(i) === '.' ){

                convertedValue += '.';

            }

        }

        return convertedValue;

    }

});