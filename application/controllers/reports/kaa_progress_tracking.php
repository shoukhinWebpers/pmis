<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kaa_progress_tracking extends CI_Controller {

	function __construct(){
	    Parent::__construct();
	    
	    $this->_init();
	}

	private function _init()
	{
		$this->load->js('assets/vendor/raphael/raphael.min.js');
		$this->load->js('assets/vendor/morrisjs/morris.min.js');
		$this->load->js('assets/data/morris-data.js');
		$this->output->set_template('default');
		return;
	}

	public function index(){

		$this->load->view('reports/progress');
		return;

	}
}
