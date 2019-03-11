<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Imed extends MY_Controller {

    function __construct(){
        Parent::__construct();

        $this->load->model('Imed_model');
        
        if( !$this->input->is_ajax_request() ){
            $this->_init();
        }
    }

    private function _init()
    {
        $this->load->js('assets/js/imed.js');
        return;
    }

    public function index( $id ){

        $data['quarterly_financial_progress']      = $this->Imed_model->get_imed_quarterly_financial_progress( $id );
        $data['quarterly_component_wise_progress'] = $this->Imed_model->get_imed_quarterly_component_wise_progress( $id );
        $data['implementation_problems']           = $this->Imed_model->get_imed_implementation_problem( $id );
        $data['suggested_measure']                 = $this->Imed_model->get_imed_suggested_measures( $id );
        $data['contract_implementation']           = $this->Imed_model->get_imed_contract_implementation( $id );
        $data['reason_for_delaying']               = $this->Imed_model->get_reason_for_delaying( $id );

        $this->load->view( 'reports/imed/imed_report_01', $data );
        return;

    }

    public function allImedRepports(){

        $data['reports'] = $this->Imed_model->getAllImedReports();
        $this->load->view('reports/imed/imed_report_list',$data);

    }

}