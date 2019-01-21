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

    public function index(){

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
        }

    }
}