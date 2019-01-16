<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

if ( ! function_exists('asset') )
{
    function asset( $location )
    {
        return base_url()."assets/".$location;
    }   
}