<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	function __construct(){
	    Parent::__construct();
	    
	    $this->_init();
	}

	private function _init()
	{
		$this->output->set_template('default');

		$this->load->js('assets/vendor/raphael/raphael.min.js');
		$this->load->js('assets/vendor/morrisjs/morris.min.js');
		$this->load->js('assets/data/morris-data.js');
		$this->load->js('assets/vendor/flot/excanvas.min.js');
		$this->load->js('assets/vendor/flot/jquery.flot.js');
		$this->load->js('assets/vendor/flot/jquery.flot.pie.js');
		$this->load->js('assets/vendor/flot/jquery.flot.resize.js');
		$this->load->js('assets/vendor/flot/jquery.flot.time.js');
		$this->load->js('assets/vendor/flot-tooltip/jquery.flot.tooltip.min.js');
		$this->load->js('assets/data/flot-data.js');

		return;

	}

	public function index(){

		$this->load->view('dashboard');
		return;

	}
}
