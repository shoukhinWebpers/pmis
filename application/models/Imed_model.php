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

}