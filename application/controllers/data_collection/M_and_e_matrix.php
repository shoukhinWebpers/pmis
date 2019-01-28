<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_and_e_matrix extends CI_Controller {

	function __construct(){
	    Parent::__construct();
	    
	    $this->_init();
	}

	private function _init()
	{

		$this->load->css( 'assets/css/custom.css' );
		$this->output->set_template( 'default' );
		return;

	}

	public function index(){
		$this->load->js( 'assets/js/mem.js' );
		$this->load->view( 'forms/data_collection/m_and_e_matrix' );
		return;
	}
}
