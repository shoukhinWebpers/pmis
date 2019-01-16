<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Check_list_for_structures extends CI_Controller {

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

        $this->load->view('forms/check_lists/check_list_for_structures');
        return;

    }
}