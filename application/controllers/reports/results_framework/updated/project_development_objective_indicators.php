<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Project_development_objective_indicators extends MY_Controller {

	function __construct(){

	    Parent::__construct();
	    $this->load->model('PDOI_model');

	}

	private function _init()
	{
		$this->output->set_template('default');
		return;
	}

	public function index(){

		$this->load->view('reports/pdoi');
		return;

	}

	public function data_collection_form(){

		$data['indicator']       = create_an_array( $this->PDOI_model->get_indicator(), "indicator_name", "an Indicator" );
		$data['unit_of_measure'] = create_an_array( $this->PDOI_model->get_unit_of_measure(), "unit_of_measure", "a Unit of Measure" );
		$this->load->view( 'forms/data_collection/pdoi_form', $data );

	}

	public function submit_the_form(){

		$data = $this->input->post();

		if( $id = $this->PDOI_model->insert_data( $data ) ){
			redirect( 'get_pdoi_form_data/'.$id, 'refresh' );
		}else{
			return FALSE;
		}

	}

	public function get_pdoi_data( $id ){

		$data['data'] = $this->PDOI_model->get_data( $id );
		$this->load->view( 'reports/pdoi', $data );

	}

}
