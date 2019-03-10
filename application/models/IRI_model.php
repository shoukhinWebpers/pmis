<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class IRI_model extends CI_Model {

    public function __construct()
    {
        $this->load->database();
    }

    public function get_indicator( $component_id ){

        $this->db->select('*');
        $this->db->from('intermediate_result_indicators_name');
        $this->db->where('component_id', $component_id);
        $this->db->order_by('indicator_name');

        $query = $this->db->get();
        return $query->result();

    }

    public function get_component(){

        $this->db->select('*');
        $this->db->from('intermediate_result_indicators_component');
        $this->db->order_by('component_name');

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

        if( $this->db->insert( 'result_framework_intermediate_result_indicators', $data ) ){

            return $this->db->insert_id();

        }

        return FALSE;

    }

    public function get_data( $id = NULL ){

        $this->db->select('*');
        $this->db->from('result_framework_intermediate_result_indicators a');
        $this->db->join('intermediate_result_indicators_name b', 'a.ind_id = b.id');
        $this->db->join('unit_of_measure c', 'a.measure_id = c.id');
        $this->db->join('intermediate_result_indicators_component d', 'b.component_id = d.id');
        $this->db->order_by('b.component_id, a.ind_id');

        if( !is_null( $id ) ){
            $this->db->where('a.id', $id);
        }

        echo $query = $this->db->get_compiled_select();
        exit();
        return $query->result_array();

    }

}