<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_and_e_matrix extends MY_Controller {

	function __construct(){
	    Parent::__construct();
	    $this->load->model("M_and_E_model");
	}

	public function index( $tracking_id = NULL ){

		$data['data'] = $this->M_and_E_model->get_m_and_e_data( $tracking_id );
		$this->load->js( 'assets/js/mem.js' );
		$this->load->view( 'reports/mem', $data );
		return;

	}
}
