<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Goods_contract extends MY_Controller {

    function __construct(){

        Parent::__construct();
        $this->load->model("Goods_contract_model");

    }

    public function index( $id ){

        $data['data'] = $this->Goods_contract_model->get_data_goods_contract( $id );

        $this->load->view( 'reports/goods_contract', $data );
        return;

    }


}