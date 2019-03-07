<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Goods_contract extends MY_Controller {

    function __construct(){
        Parent::__construct();
        $this->load->model("Goods_contract_model");
    }

    public function index(){

        $this->load->css('assets/css/confirmBox.css');
        $this->load->js('assets/js/app.js');
        $this->load->view('forms/data_collection/data_collection_for_goods_contracts');
        return;

    }

    public function submit_goods_contract(){

        $data_for_goods_contract                           = $this->input->post();
        $data_for_progress_of_procurements_goods_contracts = array();

        foreach ( $data_for_goods_contract as $key => $value ) {

            if( $key == "progress_of_procurement" || $key == "expenditure_contractor" 
                 || $key == "expenditure_vat_tax" || $key == "exp_date" 
                 || $key == "prgrss_date" ){

                $data_for_progress_of_procurements_goods_contracts[$key] = $value;
                unset( $data_for_goods_contract[$key] );

            }

        }

        $data_for_goods_contract['activity_id'] = 1;

        if( $id = $this->Goods_contract_model->insert_data_to_data_collection_for_goods_contracts( $data_for_goods_contract ) ){

            $data_for_progress_of_procurements_goods_contracts['contract_id'] = $id;
            $this->Goods_contract_model->insert_data_to_progress_of_procurements_goods_contracts( $data_for_progress_of_procurements_goods_contracts );

        }

        redirect('goods_contract_report/'.$id,'refresh');

    }

}