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

    public function index( $id = NULL ){

        if( is_null($id) && $this->session->has_userdata('crnt_imed') ){
            $this->session->unset_userdata('crnt_imed');
        }

        $data['list_of_ministry'] = get_ministry_list();
        $data['list_of_agency']   = get_agency_list();

        $this->load->view( 'forms/imed/imed_01', $data );
        return;

    }

    public function get_division_under_the_ministry(){

        if( $this->input->is_ajax_request() ){

            $ministryID = $this->input->post('ministryId');
            $result     = $this->Imed_model->get_division($ministryID);
            $data['']   = "Select a division";
            
            foreach ($result as $key => $value) {
                $data[$value->id] = $value->division_name;
            }

            echo form_dropdown('division', $data, '', 'id="list_of_division" class="form-control"');
            
            return;

        }else{
            show_404();
            return;
        }

    }

    public function imed_01_submit(){

        $data_basic_info['project_title'] = $this->input->post('project_title');
        $data_basic_info['ministry']      = $this->input->post('ministry');
        $data_basic_info['agency']        = $this->input->post('agency');

        if( isset( $_POST['division'] ) ){

            $data_basic_info['division'] = $this->input->post('division');

        }

        if( $insert_id = $this->Imed_model->insert_basic_info($data_basic_info) ){

            $data['imed_bi_id']                          = $insert_id;
            $data['release_for_the_quarter_revenue_gob'] = $this->input->post('revenue_rtq_gob');
            $data['release_for_the_quarter_capital_gob'] = $this->input->post('capital_rtq_gob');
            $data['release_for_the_quarter_revenue_rpa'] = $this->input->post('revenue_rtq_rpa');
            $data['release_for_the_quarter_capital_rpa'] = $this->input->post('capital_rtq_rpa');
            $data['exp_for_the_quarter_revenue_gob']     = $this->input->post('exp_for_the_qrtr_revenue_gob');
            $data['exp_for_the_quarter_capital_gob']     = $this->input->post('exp_for_the_qrtr_capital_gob');
            $data['exp_for_the_quarter_revenue_rpa']     = $this->input->post('exp_for_the_qrtr_revenue_rpa');
            $data['exp_for_the_quarter_capital_rpa']     = $this->input->post('exp_for_the_qrtr_capital_rpa');
            $data['exp_for_the_quarter_revenue_dpa']     = $this->input->post('exp_for_the_qrtr_revenue_dpa');
            $data['exp_for_the_quarter_capital_dpa']     = $this->input->post('exp_for_the_qrtr_capital_dpa');
            $data['crnt_yrs_exp_revenue_gob']            = $this->input->post('crrnt_year_exp_revenue_gob');
            $data['crnt_yrs_exp_capital_gob']            = $this->input->post('crrnt_year_exp_capital_gob');
            $data['crnt_yrs_exp_revenue_rpa']            = $this->input->post('crrnt_year_exp_revenue_rpa');
            $data['crnt_yrs_exp_capital_rpa']            = $this->input->post('crrnt_year_exp_capital_rpa');
            $data['crnt_yrs_exp_revenue_dpa']            = $this->input->post('crrnt_year_exp_revenue_dpa');
            $data['crnt_yrs_exp_capital_dpa']            = $this->input->post('crrnt_year_exp_capital_dpa');
            $data['cash_frgn_exchng_spent']              = $this->input->post('cash_foreign_exchange_spent');
            $data['cash']                                = $this->input->post('spent_from_own_resources_cash');
            $data['kind']                                = $this->input->post('spent_from_own_resources_kind');
            $data['cd_vat']                              = $this->input->post('cd_vat');
            $data['rpa_spent']                           = $this->input->post('rpa_spent_cumulative_to_date');
            $data['rpa_claimed_1']                       = $this->input->post('rpa_claimed_reporting_quarter');
            $data['rpa_claimed_2']                       = $this->input->post('rpa_claimed_cumulative_to_date');
            $data['rpa_reimbursed_1']                    = $this->input->post('rpa_reimbursed_reporting_quarter');
            $data['rpa_reimbursed_2']                    = $this->input->post('rpa_reimbursed_cumulative_to_date');

            if( $this->Imed_model->insert_quarterly_financial_progress( $data ) ){ 
                $this->session->set_userdata( 'crnt_imed', $insert_id );
                redirect('imed_form_02','refresh');
            }

        }else{
            echo "Error Happens!";
            exit();
        }

    }

    public function imed_02_load(){

        $data['project_title']        = $this->Imed_model->get_project_title( $this->session->userdata('crnt_imed') );
        $data['crnt_imed_working_id'] = $this->session->userdata('crnt_imed');
        $this->load->view( 'forms/imed/imed_02', $data );
        return;

    }

    public function imed_02_submit(){

        $data               = $this->input->post();
        $data['imed_bi_id'] = $this->session->userdata('crnt_imed');

        if( $this->Imed_model->insert_quarterly_component_wise_progress( $data ) ){ 
            redirect('imed_form_03','refresh');
        }else{
            echo "Error Happens!";
            exit();
        }

    }

    public function imed_03_load(){
        $data['project_title']        = $this->Imed_model->get_project_title( $this->session->userdata('crnt_imed') );
        $data['crnt_imed_working_id'] = $this->session->userdata('crnt_imed');

        $result            = $this->Imed_model->get_imed_problem_type();
        $problem_types[''] = "Select a problem type";
        
        foreach ($result as $key => $value) {
            $problem_types[$value->id] = $value->problem_type;
        }

        $data['problem_types'] = $problem_types;

        $this->load->view( 'forms/imed/imed_03', $data );
        return;
    }

    public function imed_03_submit(){

        $imed_implementation_problem['problem_type_id'] = $this->input->post('problem_type_id');
        $imed_implementation_problem['desc_of_problem'] = $this->input->post('desc_of_problem');
        $imed_implementation_problem['imed_bi_id']      = $this->session->userdata('crnt_imed');

        if( $this->Imed_model->insert_implementation_problem( "imed_implementation_problems", $imed_implementation_problem ) ){

            $imed_suggested_measures['suggested_measures'] = $this->input->post('suggested_measures');
            $imed_suggested_measures['imed_bi_id']         = $this->session->userdata('crnt_imed');

            if( $this->Imed_model->insert_implementation_problem( "imed_suggested_measures", $imed_suggested_measures ) ){

                $imed_project_declaration['project_declaration'] = $this->input->post('project_declaration');
                $imed_project_declaration['imed_bi_id']          = $this->session->userdata('crnt_imed');

                if( $this->Imed_model->insert_implementation_problem( "imed_project_declaration", $imed_project_declaration ) ){

                    redirect('imed_form_04','refresh');

                }else{
                    echo "Error Happens 3!";
                    exit();
                }

            }else{
                echo "Error Happens 2!";
                exit();
            }
            
        }else{
            echo "Error Happens 1!";
            exit();
        }

    }

    public function imed_04_load(){
        $data['project_title']        = $this->Imed_model->get_project_title( $this->session->userdata('crnt_imed') );
        $data['crnt_imed_working_id'] = $this->session->userdata('crnt_imed');

        $this->load->view( 'forms/imed/imed_04', $data );
        return;
    }

    public function imed_04_submit(){

        $data               = $this->input->post();
        $data['imed_bi_id'] = $this->session->userdata('crnt_imed');

        if( $this->Imed_model->insert_contract_implementation_data( $data ) ){
            $this->session->unset_userdata('crnt_imed'); 
            redirect('imed','refresh');
        }else{
            echo "Error Happens!";
            exit();
        }

    }
}