<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_and_e_matrix extends CI_Controller {

	function __construct(){
	    Parent::__construct();

	    $this->load->model("M_and_E_model");
	    
	    if( !$this->input->is_ajax_request() ){
            $this->_init();
        }
	}

	private function _init(){
		$this->load->css( 'assets/css/custom.css' );
		$this->output->set_template( 'default' );
		return;
	}

	public function index(){
		$this->load->js( 'assets/js/mem.js' );
		$data['component'] = get_urp_component();
		$this->load->view( 'forms/data_collection/m_and_e_matrix', $data );
		return;
	}

	public function get_m_and_e_data_related_to_component(){
		if( !$this->input->is_ajax_request() ){
            show_404();
        }else{

        	$search_id  = $this->input->post( "getId" );
        	$search_for = $this->input->post( "dataFor" );

        	if( $search_for == "sub_component" ){

        		$result   = $this->M_and_E_model->get_sub_component( $search_id );
        		$data[''] = "Select a sub component";
        		
        		foreach ( $result as $key => $value ) {

        		    $data[$value->id] = $value->activities_name;

        		}

        		echo form_dropdown( 'sub_component', $data, '', 'id="sub_component" class="form-control related-to-component"' );        	
        		return;

        	}else if( $search_for == "output" ){

        		$result   = $this->M_and_E_model->get_output( $search_id );
        		$data[''] = "Select an output";
        		
        		foreach ( $result as $key => $value ) {

        		    $data[$value->id] = $value->output_name;

        		}

        		echo form_dropdown( 'output', $data, '', 'id="output" class="form-control related-to-component"' );       	
        		return;

        	}else if( $search_for == "iris" ){

        		$result = $this->M_and_E_model->get_iri( $search_id );

        		$data[''] = "Select an IRI";
        		
        		foreach ( $result as $key => $value ) {

        		    $data[$value->id] = $value->iris;

        		}

        		echo form_dropdown( 'output', $data, '', 'id="iris" class="form-control related-to-component"' );        	
        		return;

        	}

        }
	}
}
