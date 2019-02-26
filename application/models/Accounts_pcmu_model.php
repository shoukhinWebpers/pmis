<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Accounts_pcmu_model extends CI_Model {

    public function __construct()
    {
        $this->load->database();
    }

    public function insert_data( $data ){

        if( $this->db->insert( 'accounts_pcmu', $data ) ){
            return $this->db->insert_id();
        }

        return FALSE;

    }

    public function get_fiscal_years(){

        $this->db->select('fiscal_year');
        $this->db->from('accounts_pcmu');

        $query = $this->db->get();
        return $query->result_array();

    }

    public function get_data( $id ){

        $this->db->select('*');
        $this->db->from('accounts_pcmu');
        $this->db->where('id', $id);

        $query = $this->db->get();
        return $query->row();

    }

}