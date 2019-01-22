<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Imed extends CI_Controller {

    function __construct(){
        Parent::__construct();

        $this->load->model('Imed_model');
        
        if( !$this->input->is_ajax_request() ){
            $this->_init();
        }
    }

    private function _init()
    {
        $this->load->css('assets/css/custom.css');
        $this->load->js('assets/js/imed.js');
        $this->output->set_template('default');
        return;
    }

    public function index( $id ){

        $data['quarterly_financial_progress'] = $this->Imed_model->get_imed_quarterly_financial_progress( $id );

        $this->load->view('reports/imed/imed_report_01', $data);
        return;

    }
}