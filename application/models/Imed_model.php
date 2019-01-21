<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Imed_model extends CI_Model {

    public function __construct()
    {
        $this->load->database();
    }

    public function  get_division( $ministry_id ){

        $this->db->select('*');
        $this->db->from('tbl_list_of_ministry t1');
        $this->db->join('tbl_list_of_division t2', 't1.id = t2.ministry_id');
        $this->db->where('t1.id', $ministry_id);

        $query = $this->db->get();

        return $query->result();

    }

    public function insert_basic_info( $data ){
        if( $this->db->insert('imed_basic_info', $data) ){
            return $this->db->insert_id();
        }
        return FALSE;
    }

    public function insert_quarterly_financial_progress( $data ){
        if( $this->db->insert('imed_quarterly_financial_progress', $data) ){
            return TRUE;
        }
        return FALSE;
    }

    public function insert_quarterly_component_wise_progress( $data ){
        if( $this->db->insert('imed_quarterly_component_wise_progress', $data) ){
            return TRUE;
        }
        return FALSE;
    }

    public function insert_contract_implementation_data( $data ){
        if( $this->db->insert('imed_contract_implementation', $data) ){
            return TRUE;
        }
        return FALSE;
    }

    public function insert_implementation_problem( $tbl_name, $data ){
        if( $this->db->insert($tbl_name, $data) ){
            return TRUE;
        }
        return FALSE;
    }

    public function get_project_title( $id ){

        $this->db->select('project_title');
        $this->db->from('imed_basic_info');
        $this->db->where('id', $id);

        $query = $this->db->get();

        return $query->row()->project_title;

    }

    public function get_imed_problem_type(){

        $this->db->select('*');
        $this->db->from('imed_implementation_problem_type');

        $query = $this->db->get();

        return $query->result();

    }

}