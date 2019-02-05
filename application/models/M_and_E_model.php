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

    public function get_m_and_e_data( $tracking_id ){

        $this->db->select('*');
        $this->db->from('m_and_e_matrix a');
        $this->db->join('me_urp_component_ia b', 'a.component_id = b.id');
        $this->db->join('me_activities_sub_component c', 'a.activity_id = c.id');
        $this->db->join('me_outputs d', 'a.output_id = d.id');
        $this->db->join('me_iris e', 'a.iris_id = e.id');
        $this->db->where('tracking_id', $tracking_id);
        $this->db->order_by('a.component_id');
        $query = $this->db->get();
        return $query->result_array();

    }

    public function insert_m_and_e_data( $data ){

        if( $this->db->insert( "m_and_e_matrix", $data ) ){
            
            $insert_id   = $this->db->insert_id();
            $tracking_id = NULL;

            $this->db->reset_query();

            if( $this->session->has_userdata('tracking_id') ){

                $this->db->set( 'tracking_id', $this->session->userdata( 'tracking_id' ), FALSE );
                $tracking_id = $this->session->userdata( 'tracking_id' );

            }else{

                $this->db->set( 'tracking_id', $insert_id, FALSE );
                $tracking_id = $insert_id;

            }

            $this->db->where('id', $insert_id);
            $this->db->update("m_and_e_matrix");

            return $tracking_id;

        }
        return FALSE;

    }

}