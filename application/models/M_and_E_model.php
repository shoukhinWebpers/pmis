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
        $this->db->where('component_id', $id);
        $query = $this->db->get();
        return $query->result();

    }

}