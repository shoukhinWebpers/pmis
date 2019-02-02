<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class M_and_E_model extends CI_Model {

    public function __construct()
    {
        $this->load->database();
    }

    public function get_urp_component(){

        $query = $this->db->get('me_urp_component_ia');
        return $query->result();

    }

    public function get_sub_component( $id ){

        $this->db->select('*');
        $this->db->from('me_activities_sub_component');
        $this->db->where( 'component_id', $id );
        $query = $this->db->get();
        return $query->result();

    }

    public function get_output( $id ){

        $this->db->select('*');
        $this->db->from('me_outputs');
        $this->db->where('activity_id', $id);
        $query = $this->db->get();
        return $query->result();

    }

    public function get_iri( $id ){

        $this->db->select('*');
        $this->db->from('me_iris');
        $this->db->where('output_id', $id);
        $query = $this->db->get();
        return $query->result();

    }

    public function insert_data( $tbl_name, $data ){

        if( $this->db->insert( $tbl_name, $data ) ){
            return $this->db->insert_id();
        }
        return FALSE;

    }

    public function get_data( $id ){
        
        

    }

}