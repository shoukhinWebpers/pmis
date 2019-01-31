<?php if ( ! defined('BASEPATH') ) exit('No direct script access allowed');

if ( ! function_exists('get_ministry_list') )
{
    function get_ministry_list()
    {

    	$ci=& get_instance();
    	$ci->load->database();

    	$ci->db->select('*');
    	$ci->db->from('tbl_list_of_ministry');
    	
    	$result = $ci->db->get()->result();
    	$data   = create_an_array($result, 'name_of_ministry', 'a Ministry');

    	return $data;
    }   
}

function get_agency_list()
{
    $ci=& get_instance();
    $ci->load->database();

    $ci->db->select('*');
    $ci->db->from('tbl_list_of_implementing_agencies');
    $ci->db->order_by('name');
    
    $result = $ci->db->get()->result();
    $data   = create_an_array( $result, 'name', 'an Implementing Agency' );

    return $data;
}

function get_urp_component(){
    
    $ci=& get_instance();
    $ci->load->model("M_and_E_model");
    $result = $ci->M_and_E_model->get_urp_component();

    $data['']  = "Select a Component";
    
    foreach ($result as $key => $value) {
        $data[$value->id] = "Component ".$value->component_seq.': '.$value->component_description;
    }

    return $data; 

}

function create_an_array( $result, $data_field, $blank_field_title ){

    $data['']  = "Select ".$blank_field_title;
    
    foreach ($result as $key => $value) {
        $data[$value->id] = $value->$data_field;
    }

    return $data;

}