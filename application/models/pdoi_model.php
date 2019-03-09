<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class PDOI_model extends CI_Model {

    public function __construct()
    {
        $this->load->database();
    }

    public function get_indicator(){

        $this->db->select('*');
        $this->db->from('project_development_objective_indicators_name');
        $this->db->order_by('indicator_name');

        $query = $this->db->get();
        return $query->result();

    }

    public function get_unit_of_measure(){

        $this->db->select('*');
        $this->db->from('unit_of_measure');
        $this->db->order_by('unit_of_measure');

        $query = $this->db->get();
        return $query->result();

    }

    public function insert_data( $data ){

        if( $this->db->insert( 'rslt_frmwrk_prjct_dvlpmnt_objctv_indctrs', $data ) ){

            return $this->db->insert_id();

        }

        return FALSE;

    }

    public function get_data( $id = NULL ){

        $this->db->select('*');
        $this->db->from('rslt_frmwrk_prjct_dvlpmnt_objctv_indctrs a');
        $this->db->join('project_development_objective_indicators_name b', 'a.ind_id = b.id');
        $this->db->join('unit_of_measure c', 'a.measure_id = c.id');
        $this->db->order_by('a.ind_id, a.year');

        if( !is_null( $id ) ){
            $this->db->where('a.id', $id);
        }

        $query = $this->db->get();
        return $query->result_array();

    }

}