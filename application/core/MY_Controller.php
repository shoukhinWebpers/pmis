<?php defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Controller extends CI_Controller
{
    function __construct()
    {
        parent::__construct();

        if( !$this->input->is_ajax_request() ){
            $this->_init();
        }
    }

    private function _init(){

        $this->load->css( 'assets/css/custom.css' );
        $this->load->js( 'assets/js/config.js' );
        $this->output->set_template( 'default' );
        return;

    }

}
