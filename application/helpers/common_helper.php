<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

if ( ! function_exists('get_ministry_list') )
{
    function get_ministry_list()
    {

    	$ci=& get_instance();
    	$ci->load->database();

    	$ci->db->select('*');
    	$ci->db->from('tbl_list_of_ministry');
    	$ci->db->order_by('name_of_ministry');
    	
    	$result = $ci->db->get()->result();
    	$data   = create_an_array($result, 'name_of_ministry', 'a Ministry');

    	return $data;
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

    function create_an_array( $result, $data_field, $blank_field_title ){

    	$data['']  = "Select ".$blank_field_title;
        $data['1'] = "Ministry of Planning.";
    	
    	foreach ($result as $key => $value) {
    		$data[$value->id] = $value->$data_field;
    	}

    	return $data;

    }   
}