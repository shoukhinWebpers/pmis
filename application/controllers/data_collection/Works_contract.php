<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Works_contract extends CI_Controller {

	function __construct(){
	    Parent::__construct();
	    
	    $this->_init();
	}

	private function _init()
	{
		$this->load->css('assets/css/custom.css');
		$this->load->css('assets/css/confirmBox.css');
		$this->load->js('assets/js/app.js');
		$this->output->set_template('default');
		return;
	}

	public function index(){

		$this->load->view('forms/data_collection/data_collection_for_works_contracts');
		return;

	}
}
