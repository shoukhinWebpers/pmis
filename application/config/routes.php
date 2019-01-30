<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/

$route['default_controller']                                 = 'Login';
$route['dashboard']                                          = 'Home';
$route['imed']                                               = 'forms/Imed';
$route['imed/(:num)']                                        = 'forms/Imed/index/$1';
$route['imed_02']                                            = 'forms/Imed/imed_01_submit';
$route['imed_03']                                            = 'forms/Imed/imed_02_submit';
$route['imed_04']                                            = 'forms/Imed/imed_03_submit';
$route['imed_submit']                                        = 'forms/Imed/imed_04_submit';
$route['imed_form_02']                                       = 'forms/Imed/imed_02_load';
$route['imed_form_03']                                       = 'forms/Imed/imed_03_load';
$route['imed_form_04']                                       = 'forms/Imed/imed_04_load';
$route['imed_report/(:num)']                                 = 'reports/Imed/index/$1';
$route['approved_cost']                                      = 'reports/project_information/Approved_cost';
$route['adp']                                                = 'reports/project_information/ADP';
$route['kaa_dncc']                                           = 'reports/progress_monitoring/KAA_dncc';
$route['kaa_ddm']                                            = 'reports/progress_monitoring/KAA_ddm';
$route['kaa_rajuk']                                          = 'reports/progress_monitoring/KAA_rajuk';
$route['kaa_pcmu']                                           = 'reports/progress_monitoring/KAA_pcmu';
$route['quarterly_expenditure']                              = 'reports/progress_monitoring/Quarterly_expenditure';
$route['data_collection_for_works_contracts']                = 'data_collection/Works_contract';
$route['data_collection_for_goods_contracts']                = 'data_collection/Goods_contract';
$route['data_collection_for_consultancy_services_contracts'] = 'data_collection/Consultancy_services_contract';
$route['check_list_for_equipments']                          = 'data_collection/check_lists/Check_list_for_equipments';
$route['check_list_for_structures']                          = 'data_collection/check_lists/Check_list_for_structures';
$route['pdoi']                                               = 'reports/results_framework/updated/Project_development_objective_indicators';
$route['iri']                                                = 'reports/results_framework/updated/Intermediate_results_indicators';
$route['mem']                                                = 'reports/M_and_e_matrix';
$route['mem_form']                                           = 'data_collection/M_and_e_matrix';
$route['progress']                                           = 'reports/KAA_progress_tracking';
$route['pdo']                                                = 'reports/Consolidate_project_development_object';
$route['wrf']                                                = 'reports/Wb_results_framework';
$route['progress_urp']                                       = 'reports/Progress_of_URP';
$route['sc_kaa']                                             = 'reports/Summary_of_completion_progress_of_all_sub_activity_of_KAAs';
$route['expbyagency']                                        = 'reports/Expenditure_by_agencies';
$route['get_division']                                       = 'forms/Imed/get_division_under_the_ministry';
$route['get_m_e_component_related_info']                     = 'data_collection/M_and_e_matrix/get_m_and_e_data_related_to_component';
$route['404_override']                                       = '';
$route['translate_uri_dashes']                               = FALSE;