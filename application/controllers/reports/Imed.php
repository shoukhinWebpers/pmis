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

        $data['quarterly_financial_progress']      = $this->Imed_model->get_imed_quarterly_financial_progress( $id );
        $data['quarterly_component_wise_progress'] = $this->Imed_model->get_imed_quarterly_component_wise_progress( $id );
        $data['implementation_problems']           = $this->Imed_model->get_imed_implementation_problem( $id );
        $data['suggested_measure']                 = $this->Imed_model->get_imed_suggested_measures( $id );

        $this->load->view('reports/imed/imed_report_01', $data);
        return;

    }
}