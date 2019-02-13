<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Goods_contract_model extends CI_Model {

    public function __construct()
    {
        $this->load->database();
    }

    public function insert_data_to_data_collection_for_goods_contracts( $data ){

        if( $this->db->insert( 'data_collection_for_goods_contracts', $data ) ){
            return $this->db->insert_id();
        }

        return FALSE;

    }

    public function insert_data_to_progress_of_procurements_goods_contracts( $data ){

        if( $this->db->insert( 'progress_of_procurements_goods_contracts', $data ) ){
            return TRUE;
        }

        return FALSE;

    }

    public function get_data_goods_contract( $id ){

        $this->db->select('*');
        $this->db->from('data_collection_for_goods_contracts a');
        $this->db->join('progress_of_procurements_goods_contracts b', 'a.id = b.contract_id');
        $this->db->where('a.id', $id);

        $query = $this->db->get();
        return $query->row();

    }

}