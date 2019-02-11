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

function count_similar_component( $data, $value ){

    $counter     = 0;
    $activity_id = array();
    $output_id   = array();
    $iris_id     = array();

    for( $i = 0; $i<count($data); $i++ ){

        if( $data[$i]['component_id'] == $value 
            && ( !in_array( $data[$i]['activity_id'], $activity_id )  
                        || !in_array( $data[$i]['output_id'], $output_id )  
                        || !in_array( $data[$i]['iris_id'], $iris_id ) ) ){

            $activity_id[] = $data[$i]['activity_id'];
            $output_id[]   = $data[$i]['output_id'];
            $iris_id[]     = $data[$i]['iris_id'];

            $counter++;

        }

    }

    return $counter;
}

function get_years( $data ){

    $year = array();

    for ( $i=0; $i < count($data); $i++ ) { 

        if( !in_array( $data[$i]['year'], $year ) ){

            $year[] = $data[$i]['year'];

        }

    }

    sort($year);

    return $year;

}

function get_the_location_of_same_parameters_in_different_year( $data, $component_id, $activity_id, $output_id, $iris_id, $year ){

    $location = NULL;

    for ( $i=0; $i < count($data); $i++ ) {

        if( $data[$i]['component_id'] == $component_id 
            && $data[$i]['activity_id'] == $activity_id 
            && $data[$i]['output_id'] == $output_id 
            && $data[$i]['iris_id'] == $iris_id
            && $year == $data[$i]['year'] ){

            $location = $i;

            break;

        }

    }

    return $location;

}

function count_iris_under_this_output( $data, $component_id, $output_id ){

    $counter = 0;
    $iris_id     = '';

    for( $i = 0; $i<count($data); $i++ ){

        if( $data[$i]['component_id'] == $component_id && $data[$i]['output_id'] == $output_id && $data[$i]['iris_id'] != $iris_id ){

            $iris_id = $data[$i]['iris_id'];
            $counter++;

        }

    }

    return $counter;
}

function calculate_rowspan_for_this_activity( $data, $component_id, $activity_id ){

    $counter   = 0;
    $output_id = '';

    for( $i = 0; $i<count($data); $i++ ){

        if( $data[$i]['component_id'] == $component_id && $data[$i]['activity_id'] == $activity_id && $data[$i]['output_id'] != $output_id ){

            $output_id = $data[$i]['output_id'];
            //each IRIS contains 3 rows
            $corresponding_iris_generated_row_number = 3*count_iris_under_this_output( $data, $component_id, $output_id );
            $counter += $corresponding_iris_generated_row_number;

        }

    }

    return $counter;
}

function dd( $data ){

    echo "<pre>";
    print_r($data);
    return;

}