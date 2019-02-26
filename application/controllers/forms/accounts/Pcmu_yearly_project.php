<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pcmu_yearly_project extends MY_Controller {

    function __construct(){

        Parent::__construct();
        $this->load->model("Accounts_pcmu_model");

    }

    public function index(){

    	$data['existed_fiscal_year'] = $this->Accounts_pcmu_model->get_fiscal_years();

    	/*for ($i=0; $i < sizeof($data['existed_fiscal_year']) ; $i++) { 
    		
    		if( in_array("2018-19", $data['existed_fiscal_year'][$i]) ){
    			echo "yes";
    		}

    	}

    	dd( $data['existed_fiscal_year'] );*/

    	$this->load->js( 'assets/js/pcmu_yearly_project.js' );
        $this->load->view( 'forms/accounts/pcmu_yearly_project', $data );
        return;

    }

    public function submit(){

    	$data = $this->input->post();

    	$new_data = $this->convert_numeric_to_english( $data );

    	if( $id = $this->Accounts_pcmu_model->insert_data( $new_data ) ){

    		redirect('pcmu_yearly_project_report/'.$id,'refresh');

    	}

    }

    public function get_data( $id ){

    	$data['data'] = $this->Accounts_pcmu_model->get_data( $id );
    	$this->load->js( 'assets/js/pcmu_yearly_project.js' );
        $this->load->view( 'forms/accounts/pcmu_yearly_project_report', $data );
        return;
    }

    public function convert_numeric_to_english( $data ){

    	foreach ($data as $key => $value) {

    		$strlen = mb_strlen( $value );
    		$numericEnglish = "";

    		for( $i = 0; $i <= $strlen; $i++ ) {

    		    $the_value = mb_substr( $value, $i, 1 );

    		    if( $the_value == '০' ){

    		    	$numericEnglish .= '0';

    		    }else if( $the_value == '১' ){

    		    	$numericEnglish .= '1';

    		    }else if( $the_value == '২' ){

    		    	$numericEnglish .= '2';

    		    }else if( $the_value == '৩' ){

    		    	$numericEnglish .= '3';

    		    }else if( $the_value == '৪' ){

    		    	$numericEnglish .= '4';

    		    }else if( $the_value == '৫' ){

    		    	$numericEnglish .= '5';

    		    }else if( $the_value == '৬' ){

    		    	$numericEnglish .= '6';

    		    }else if( $the_value == '৭' ){

    		    	$numericEnglish .= '7';

    		    }else if( $the_value == '৮' ){

    		    	$numericEnglish .= '8';

    		    }else if( $the_value == '৯' ){

    		    	$numericEnglish .= '9';

    		    }else if( $the_value == '.' ){

    		    	$numericEnglish .= '.';

    		    }
    		}

    		if( $numericEnglish != "" ){
    			$data[$key] = (float)$numericEnglish;
    		}

    	}

    	return $data;

    }

}