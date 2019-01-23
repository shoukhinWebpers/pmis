<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Imed_model extends CI_Model {

    public function __construct()
    {
        $this->load->database();
    }

    public function get_division( $ministry_id ){

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

    public function insert_contract_implementation_data( $tbl_name, $data ){
        if( $this->db->insert($tbl_name, $data) ){
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

    public function get_imed_quarterly_financial_progress( $id ){

        $this->db->select('a.id as imed_id, project_title, e.*, f.*,
                            a.created_at as imed_creation, name_of_ministry, division_name, name as agency_name');
        $this->db->from('imed_basic_info a');
        $this->db->join('list_of_ministry b', 'a.ministry=b.id');
        $this->db->join('list_of_division c', 'a.division=c.id');
        $this->db->join('list_of_implementing_agencies d', 'a.agency=d.id');
        $this->db->join('imed_quarterly_financial_progress e', 'a.id=e.imed_bi_id');
        $this->db->join('imed_project_declaration f', 'a.id=f.imed_bi_id');
        $this->db->where('a.id', $id);

        $query = $this->db->get();

        return $query->row();

    }

    public function get_imed_quarterly_component_wise_progress( $id ){

        $this->db->select('*');
        $this->db->from('imed_quarterly_component_wise_progress');
        $this->db->where('imed_bi_id', $id);

        $query = $this->db->get();
        return $query->result();

    }

    public function get_imed_implementation_problem( $id ){

        $this->db->select('*');
        $this->db->from('imed_implementation_problems a');
        $this->db->join('imed_implementation_problem_type b', 'a.problem_type_id = b.id');
        $this->db->where('imed_bi_id', $id);

        $query = $this->db->get();
        return $query->result();

    }

    public function get_imed_suggested_measures( $id ){

        $this->db->select('*');
        $this->db->from('imed_suggested_measures a');
        $this->db->where('imed_bi_id', $id);

        $query = $this->db->get();
        return $query->result();

    }

}