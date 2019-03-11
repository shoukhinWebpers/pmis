<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Accounts_model extends CI_Model {

    public function __construct()
    {
        $this->load->database();
    }

    public function insert_data( $data ){

        $insert_table = $this->table_look_for();

        if( $this->db->insert( $insert_table, $data ) ){
            return $this->db->insert_id();
        }

        return FALSE;

    }

    public function get_fiscal_years(){

        $search_table = $this->table_look_for();

        $this->db->select('fiscal_year');
        $this->db->from($search_table);

        $query = $this->db->get();
        return $query->result_array();

    }

    public function get_data( $id ){

        $search_table = $this->table_look_for();

        $this->db->select('*');
        $this->db->from($search_table);
        $this->db->where('id', $id);

        $query = $this->db->get();
        return $query->row();

    }

    private function table_look_for(){

        $request_comes_from = uri_string();

        if ( strpos($request_comes_from, 'pcmu') !== false ) {

            return "accounts_pcmu";
            
        }else if( strpos($request_comes_from, 'ddm') !== false ){

            return "accounts_ddm";

        }else if( strpos($request_comes_from, 'rajuk') !== false ){

            return "accounts_rajuk";

        }else if( strpos($request_comes_from, 'dncc') !== false ){

            return "accounts_dncc";

        }

    }

}