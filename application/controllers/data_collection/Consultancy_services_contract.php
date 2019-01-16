<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Consultancy_services_contract extends CI_Controller {

	function __construct(){
	    Parent::__construct();
	    
	    $this->_init();
	}

	private function _init()
	{
		$this->load->css('assets/css/custom.css');
		$this->output->set_template('default');
		return;
	}

	public function index(){

		$this->load->view('forms/data_collection/data_collection_for_works_contracts');
		return;

	}
}
