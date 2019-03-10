<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Intermediate_results_indicators extends MY_Controller {

	function __construct(){
	    Parent::__construct();
	    $this->load->model('IRI_model');
	}

	public function index(){

		$this->load->view('reports/iri');
		return;

	}

	public function data_collection_form(){

		//$data['indicator']       = create_an_array( $this->IRI_model->get_indicator(), "indicator_name", "an Indicator" );
		$data['component']       = create_an_array( $this->IRI_model->get_component(), "component_name", "a Component" );
		$data['unit_of_measure'] = create_an_array( $this->IRI_model->get_unit_of_measure(), "unit_of_measure", "a Unit of Measure" );

		$this->load->js( 'assets/js/iri.js' );
		$this->load->view( 'forms/data_collection/iri_form', $data );

	}

	public function get_indicator(){

		if( !$this->input->is_ajax_request() ){

            show_404();

        }else{

        	$component_id = $this->input->post( 'getId' );
        	$data = create_an_array( $this->IRI_model->get_indicator( $component_id ), "indicator_name", "an Indicator" );
        	echo form_dropdown( 'ind_id', $data, '','id="indicator_selection" class="form-control"' );

        }

	}

	public function submit_the_form(){

		$data = $this->input->post();

		unset( $data['cmp_id'] );

		if( $id = $this->IRI_model->insert_data( $data ) ){
			redirect( 'get_iri_form_data/'.$id, 'refresh' );
		}else{
			return FALSE;
		}

	}


	public function get_iri_data( $id = null ){

		$data['data'] = $this->IRI_model->get_data( $id );

		$this->load->view( 'reports/iri', $data );

	}

}
