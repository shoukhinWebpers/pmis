<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Summary_of_completion_progress_of_all_sub_activity_of_KAAs extends CI_Controller {

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

		$this->load->view('reports/summary_of_completion_kaa');
		return;

	}
}