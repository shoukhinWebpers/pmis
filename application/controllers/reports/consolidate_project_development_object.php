<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Consolidate_project_development_object extends CI_Controller {

	function __construct(){
	    Parent::__construct();
	    
	    $this->_init();
	}

	private function _init()
	{
		$this->output->set_template('default');
		return;

	}

	public function index(){

		$this->load->view('reports/pdo');
		return;

	}
}