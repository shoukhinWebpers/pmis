-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2019 at 01:16 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pmis`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_collection_for_consultancy_services_contracts`
--

CREATE TABLE `tbl_data_collection_for_consultancy_services_contracts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `activity_id` bigint(20) UNSIGNED NOT NULL,
  `contract_package_number` varchar(100) NOT NULL,
  `contract_description` text NOT NULL,
  `unit` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `estimated_price` double(60,2) NOT NULL,
  `procedure_method` text NOT NULL,
  `procurement_guideline` text NOT NULL,
  `prior_review` tinyint(1) NOT NULL,
  `date_of_proposal_submission_planned_date` date NOT NULL,
  `date_of_proposal_submission_actual_date` date NOT NULL,
  `date_of_contract_signing_planned_date` date NOT NULL,
  `date_of_contract_signing_actual_date` date NOT NULL,
  `date_of_completion_planned_date` date NOT NULL,
  `date_of_completion_actual_date` date NOT NULL,
  `name_of_consultant_firm` char(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_collection_for_goods_contracts`
--

CREATE TABLE `tbl_data_collection_for_goods_contracts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `activity_id` bigint(20) UNSIGNED NOT NULL,
  `contract_package_number` varchar(100) NOT NULL,
  `contract_description` text NOT NULL,
  `unit` int(11) NOT NULL,
  `qty/nos` int(11) NOT NULL,
  `estimated_price` decimal(60,2) NOT NULL,
  `procedure_method` text NOT NULL,
  `procurement_guideline` text NOT NULL,
  `prior_review` tinyint(1) NOT NULL,
  `date_of_bid_opening_planned_date` date NOT NULL,
  `date_of_bid_opening_actual_date` date NOT NULL,
  `date_of_contract_signing_planned_date` date NOT NULL,
  `date_of_contract_signing_actual_date` date NOT NULL,
  `date_of_delivery_planned_date` date NOT NULL,
  `date_of_delivery_actual_date` date NOT NULL,
  `name_of_supplier` tinytext NOT NULL,
  `remarks` tinytext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_collection_for_works_contracts`
--

CREATE TABLE `tbl_data_collection_for_works_contracts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `activity_id` bigint(20) UNSIGNED NOT NULL,
  `contract_package_number` varchar(100) NOT NULL,
  `contract_description` text NOT NULL,
  `unit` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `estimated_price` decimal(60,2) NOT NULL,
  `procedure_method` text NOT NULL,
  `ppa_bg` text NOT NULL,
  `prior_review_2` tinyint(1) NOT NULL,
  `study_report_submission_planned_date` date NOT NULL,
  `study_report_submission_actual_date` date NOT NULL,
  `social_resettlement_study_report_submission_planned_date` date NOT NULL,
  `social_resettlement_study_report_submission_actual_date` date NOT NULL,
  `date_of_bid_opening_planned_date` date NOT NULL,
  `date_of_bid_opening_actual_date` date NOT NULL,
  `date_of_contract_signing_planned_date` date NOT NULL,
  `date_of_contract_signing_actual_date` date NOT NULL,
  `date_of_completion_planned_date` date NOT NULL,
  `date_of_completion_actual_date` date NOT NULL,
  `name_of_contractor` int(11) NOT NULL,
  `remarks` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_imed_basic_info`
--

CREATE TABLE `tbl_imed_basic_info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_title` text NOT NULL,
  `ministry` bigint(20) UNSIGNED NOT NULL,
  `division` bigint(20) UNSIGNED NOT NULL,
  `agency` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_imed_contract_implementation`
--

CREATE TABLE `tbl_imed_contract_implementation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imed_bi_info` bigint(20) UNSIGNED NOT NULL,
  `desc_of_contracts` text NOT NULL,
  `contract_value` decimal(60,2) NOT NULL,
  `date_of_work_order` date NOT NULL,
  `completion_date_as_per_contract` date NOT NULL,
  `amount_paid` decimal(60,2) NOT NULL,
  `physical` int(3) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_imed_implementation_problems`
--

CREATE TABLE `tbl_imed_implementation_problems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imed_bi_id` bigint(20) UNSIGNED NOT NULL,
  `problem_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `if_other` char(255) DEFAULT NULL,
  `desc_of_problem` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_imed_implementation_problem_type`
--

CREATE TABLE `tbl_imed_implementation_problem_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `problem_type` char(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_imed_problems_for_delaying`
--

CREATE TABLE `tbl_imed_problems_for_delaying` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imed_bi_id` bigint(20) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_imed_quarterly_component_wise_progress`
--

CREATE TABLE `tbl_imed_quarterly_component_wise_progress` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imed_bi_id` bigint(20) UNSIGNED NOT NULL,
  `name_of_the_component` char(100) NOT NULL,
  `unit` int(10) NOT NULL,
  `cmltv_progress_upto_qtty` int(10) NOT NULL,
  `cmltv_progress_upto_prcntg` int(3) NOT NULL,
  `cmltv_progress_upto_finance` decimal(60,2) NOT NULL,
  `yearly_target_qtty` int(10) NOT NULL,
  `yearly_target_prcntg` int(3) NOT NULL,
  `yearly_target_finance` decimal(60,2) NOT NULL,
  `prgrs_in_crnt_qrtr_qtty` int(10) NOT NULL,
  `prgrs_in_crnt_qrtr_prcntg` int(3) NOT NULL,
  `prgrs_in_crnt_qrtr_financial` decimal(60,2) NOT NULL,
  `crnt_yrs_prgrs_qtty` int(10) NOT NULL,
  `crnt_yrs_prgrs_prcntg` int(3) NOT NULL,
  `crnt_yrs_prgrs_financial` decimal(60,2) NOT NULL,
  `remarks` char(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_imed_quarterly_financial_progress`
--

CREATE TABLE `tbl_imed_quarterly_financial_progress` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imed_bi_id` bigint(20) UNSIGNED NOT NULL,
  `release_for_the_quarter_gob` decimal(60,2) NOT NULL,
  `release_for_the_quarter_rpa` decimal(60,2) NOT NULL,
  `exp_for_the_quarter_gob` decimal(60,2) NOT NULL,
  `exp_for_the_quarter_rpa` decimal(60,2) NOT NULL,
  `exp_for_the_quarter_dpa` decimal(60,2) NOT NULL,
  `crnt_yrs_exp_gob` decimal(60,2) NOT NULL,
  `crnt_yrs_exp_rpa` decimal(60,2) NOT NULL,
  `crnt_yrs_exp_dpa` decimal(60,2) NOT NULL,
  `cash_frgn_exchng_spent` decimal(60,2) NOT NULL,
  `cash` decimal(60,2) NOT NULL,
  `kind` decimal(60,2) NOT NULL,
  `cd_vat` decimal(60,2) NOT NULL,
  `rpa_spent` decimal(60,2) NOT NULL,
  `rpa_claimed_1` decimal(60,2) NOT NULL,
  `rpa_claimed_2` decimal(60,2) NOT NULL,
  `rpa_reimbursed_1` decimal(60,2) NOT NULL,
  `rpa_reimbursed_2` decimal(60,2) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_imed_suggested_measures`
--

CREATE TABLE `tbl_imed_suggested_measures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imed_bi_info` bigint(255) UNSIGNED NOT NULL,
  `suggested_measures` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_implementing_agency`
--

CREATE TABLE `tbl_implementing_agency` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_implementing_agency`
--

INSERT INTO `tbl_implementing_agency` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Planning Commission Unit (PCMU) ', '2018-11-25 10:16:44', NULL),
(2, 'Dhaka North City Corporation (DNCC)', '2018-11-25 10:16:44', '2018-11-25 10:20:11'),
(3, 'Rajdhani Unnayan Kartripakkha (RAJUK)', '2018-11-25 10:18:13', NULL),
(4, 'Department of Disaster Management (DDM)', '2018-11-25 10:18:13', NULL),
(5, 'Dhaka South City Corporation (DSCC)', '2018-11-25 10:19:40', NULL),
(6, 'Sylhet City Corporation (SCC)', '2018-11-25 10:19:40', NULL),
(7, 'Fire Service and Civil Defense (FSCD)', '2018-11-25 10:20:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_intermediate_result_indicators_component`
--

CREATE TABLE `tbl_intermediate_result_indicators_component` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `component_name` char(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_intermediate_result_indicators_name`
--

CREATE TABLE `tbl_intermediate_result_indicators_name` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `indicator_name` char(255) NOT NULL,
  `baseline` char(255) NOT NULL,
  `frequency` char(255) NOT NULL,
  `data_source_methodology` char(255) NOT NULL,
  `responsibilities_for_data_collection` char(255) NOT NULL,
  `comments` char(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_key_agreed_actions_tracking_activities`
--

CREATE TABLE `tbl_key_agreed_actions_tracking_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_prefix` char(1) NOT NULL,
  `form_code` tinytext NOT NULL,
  `kaa_code` tinytext NOT NULL,
  `activity_description` text NOT NULL,
  `agency` bigint(20) UNSIGNED NOT NULL,
  `has_sub_activity` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `planned_due_date` date DEFAULT NULL,
  `actual_completion_date` date DEFAULT NULL,
  `compliance_status_pcmu` text NOT NULL,
  `evidence_provided_to_verfiy_compliance` text NOT NULL,
  `reasons_for_non_complinace_me_team` text,
  `verified_by_me_team` text,
  `expected_completion_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_key_agreed_actions_tracking_sub_activities`
--

CREATE TABLE `tbl_key_agreed_actions_tracking_sub_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `activity_id` bigint(20) UNSIGNED NOT NULL,
  `sub_activities` text NOT NULL,
  `planned_due_date` date NOT NULL,
  `actual_completion_date` date NOT NULL,
  `compliance_status_pcmu` text NOT NULL,
  `evidence_provided_to_verfiy_compliance` text NOT NULL,
  `reasons_for_non_complinace_me_team` text NOT NULL,
  `verified_by_me_team` text NOT NULL,
  `expected_completion_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_list_of_division`
--

CREATE TABLE `tbl_list_of_division` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ministry_id` bigint(20) UNSIGNED NOT NULL,
  `division_name` char(100) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_list_of_ministry`
--

CREATE TABLE `tbl_list_of_ministry` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_of_ministry` char(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_progress_of_procurements_goods_contracts`
--

CREATE TABLE `tbl_progress_of_procurements_goods_contracts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contract_id` bigint(20) UNSIGNED NOT NULL,
  `progress_of_procurement` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_progress_of_procurements_services_contracts`
--

CREATE TABLE `tbl_progress_of_procurements_services_contracts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contract_id` bigint(20) UNSIGNED NOT NULL,
  `progress_of_procurement` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_progress_of_procurements_works_contracts`
--

CREATE TABLE `tbl_progress_of_procurements_works_contracts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contract_id` bigint(20) UNSIGNED NOT NULL,
  `progress_of_procurement` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project_development_objective_indicators_name`
--

CREATE TABLE `tbl_project_development_objective_indicators_name` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `indicator_name` char(255) NOT NULL,
  `baseline` char(255) NOT NULL,
  `frequency` char(255) NOT NULL,
  `data_source_methodology` char(255) NOT NULL,
  `responsibilities_for_data_collection` char(255) NOT NULL,
  `comments` char(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_project_development_objective_indicators_name`
--

INSERT INTO `tbl_project_development_objective_indicators_name` (`id`, `indicator_name`, `baseline`, `frequency`, `data_source_methodology`, `responsibilities_for_data_collection`, `comments`, `created_at`, `updated_at`) VALUES
(1, 'Share of wards with decentralized emergency response services in Dhaka (DNCC/DSCC jurisdiction)<sup>1</sup>', '0', 'Annual', 'DNCC, DSCC, FSCD/Monitoring Reports', 'PCMU and M&E Consultants', 'In progress', '2019-01-05 09:14:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_result_framework_intermediate_result_indicators`
--

CREATE TABLE `tbl_result_framework_intermediate_result_indicators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` year(4) NOT NULL,
  `ind_id` bigint(20) UNSIGNED NOT NULL,
  `measure_id` bigint(20) UNSIGNED NOT NULL,
  `q1_pad_target` char(255) NOT NULL,
  `q2_pad_target` char(255) NOT NULL,
  `q3_pad_target` char(255) NOT NULL,
  `q4_pad_target` char(255) NOT NULL,
  `q1_actual_achieved` char(255) NOT NULL,
  `q2_actual_achieved` char(255) NOT NULL,
  `q3_actual_achieved` char(255) NOT NULL,
  `q4_actual_achieved` char(255) NOT NULL,
  `component_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_result_framework_project_development_objective_indicators`
--

CREATE TABLE `tbl_result_framework_project_development_objective_indicators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ind_id` bigint(20) UNSIGNED NOT NULL,
  `measure_id` bigint(20) UNSIGNED NOT NULL,
  `year` year(4) DEFAULT NULL,
  `q1_pad_target` char(255) NOT NULL,
  `q2_pad_target` char(255) NOT NULL,
  `q3_pad_target` char(255) NOT NULL,
  `q4_pad_target` char(255) NOT NULL,
  `q1_actual_acheived` char(255) NOT NULL,
  `q2_actual_acheived` char(255) NOT NULL,
  `q3_actual_acheived` char(255) NOT NULL,
  `q4_actual_acheived` char(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_svce_description_of_package`
--

CREATE TABLE `tbl_svce_description_of_package` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `survey_id` bigint(20) UNSIGNED NOT NULL,
  `description_of_project` char(255) NOT NULL,
  `nos` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_svce_information_and_training_items`
--

CREATE TABLE `tbl_svce_information_and_training_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `checklist_items` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_svce_information_and_training_survey`
--

CREATE TABLE `tbl_svce_information_and_training_survey` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `survey_id` bigint(20) UNSIGNED NOT NULL,
  `q_id` bigint(20) UNSIGNED NOT NULL,
  `ans` tinyint(1) NOT NULL,
  `findings` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_svce_initial_information`
--

CREATE TABLE `tbl_svce_initial_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `implementing_agency` bigint(20) UNSIGNED NOT NULL,
  `name_of_package` char(255) NOT NULL,
  `date_of_visit` date DEFAULT NULL,
  `package_number` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `financial_progress` tinyint(3) UNSIGNED DEFAULT NULL,
  `visual_physical_progress` tinyint(3) UNSIGNED DEFAULT NULL,
  `IA_person_met` char(255) NOT NULL,
  `M_E_staff_member` char(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_svce_maintenance_and_inspection_items`
--

CREATE TABLE `tbl_svce_maintenance_and_inspection_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `checklist_items` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_svce_maintenance_and_inspection_survey`
--

CREATE TABLE `tbl_svce_maintenance_and_inspection_survey` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `survey_id` bigint(20) UNSIGNED NOT NULL,
  `q_id` bigint(20) UNSIGNED NOT NULL,
  `ans` tinyint(1) NOT NULL,
  `findings` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_svce_safety_features_items`
--

CREATE TABLE `tbl_svce_safety_features_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `checklist_items` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_svce_safety_features_survey`
--

CREATE TABLE `tbl_svce_safety_features_survey` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `survey_id` bigint(20) UNSIGNED NOT NULL,
  `q_id` bigint(20) UNSIGNED NOT NULL,
  `ans` tinyint(1) NOT NULL,
  `findings` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_svce_safety_signs_and_warnings_survey`
--

CREATE TABLE `tbl_svce_safety_signs_and_warnings_survey` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `survey_id` bigint(20) UNSIGNED NOT NULL,
  `q_id` bigint(20) UNSIGNED NOT NULL,
  `ans` tinyint(1) NOT NULL,
  `findings` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_svce_safety_signs_and_warning_items`
--

CREATE TABLE `tbl_svce_safety_signs_and_warning_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `checklist_items` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_svce_specific_hazards_items`
--

CREATE TABLE `tbl_svce_specific_hazards_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `checklist_items` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_svce_specific_hazards_survey`
--

CREATE TABLE `tbl_svce_specific_hazards_survey` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `survey_id` bigint(20) UNSIGNED NOT NULL,
  `q_id` bigint(20) UNSIGNED NOT NULL,
  `ans` tinyint(1) NOT NULL,
  `findings` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_svce_vivid_info`
--

CREATE TABLE `tbl_svce_vivid_info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `survey_id` bigint(20) UNSIGNED NOT NULL,
  `additional_description` text NOT NULL,
  `comments` text NOT NULL,
  `recommendation` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_svce_work_adequate_to_protect_items`
--

CREATE TABLE `tbl_svce_work_adequate_to_protect_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `checklist_items` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_svce_work_adequate_to_protect_survey`
--

CREATE TABLE `tbl_svce_work_adequate_to_protect_survey` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `survey_id` bigint(20) UNSIGNED NOT NULL,
  `q_id` bigint(20) UNSIGNED NOT NULL,
  `ans` tinyint(1) NOT NULL,
  `findings` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_svcs_description_of_package`
--

CREATE TABLE `tbl_svcs_description_of_package` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `survey_id` bigint(20) UNSIGNED NOT NULL,
  `description_of_project` char(255) NOT NULL,
  `nos` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_svcs_initial_information`
--

CREATE TABLE `tbl_svcs_initial_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `implementing_agency` bigint(20) UNSIGNED NOT NULL,
  `name_of_package` char(255) NOT NULL,
  `date_of_visit` date DEFAULT NULL,
  `package_number` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `financial_progress` tinyint(3) UNSIGNED DEFAULT NULL,
  `visual_physical_progress` tinyint(3) UNSIGNED DEFAULT NULL,
  `IA_person_met` char(255) NOT NULL,
  `M_E_staff_member` char(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_svcs_structure_checklist_items`
--

CREATE TABLE `tbl_svcs_structure_checklist_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `checklist_items` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_svcs_structure_checklist_items`
--

INSERT INTO `tbl_svcs_structure_checklist_items` (`id`, `checklist_items`, `created_at`, `updated_at`) VALUES
(1, 'Is facility equipped with ECT kits and located within 5 km of a warehouse or FSCD control room?', '2018-11-25 09:56:41', NULL),
(2, 'Billboard/signboard installed properly?', '2018-11-25 09:56:41', NULL),
(3, 'EIA/IEEE performed?', '2018-11-25 09:57:27', NULL),
(4, 'Structure compliant with BNBC?', '2018-11-25 09:57:27', NULL),
(5, 'Structure compliant with ISO 28841:2013(E) (Guidelines for simplified seismic assessment)?', '2018-11-25 09:59:39', NULL),
(6, 'Contact information for filing Grievance Redress Mechanism (GRM) complaints?', '2018-11-25 09:59:39', NULL),
(7, 'Is the site secured from unauthorized entry or use?', '2018-11-25 10:00:34', NULL),
(8, 'Standby electricity available on site?', '2018-11-25 10:00:34', NULL),
(9, 'Back up Water supply available on site?', '2018-11-25 10:01:50', NULL),
(10, 'Sanitation support available on site? (Toilet/Pure drinking water)', '2018-11-25 10:01:50', NULL),
(11, 'Personal Protective Equipment (PPE) available on site?', '2018-11-25 10:02:47', NULL),
(12, 'Adequate First Aid kits available on site?', '2018-11-25 10:02:47', NULL),
(13, 'Temporary Labour Shed available on site?', '2018-11-25 10:03:54', NULL),
(14, 'Social & Resettlement action plan performed? (S/RAP)', '2018-11-25 10:03:54', NULL),
(15, 'Architectural design on site?', '2018-11-25 10:04:32', NULL),
(16, 'Structural design on site?', '2018-11-25 10:04:32', NULL),
(17, 'Plumbing design on site?', '2018-11-25 10:05:14', NULL),
(18, 'Electric design on site?', '2018-11-25 10:05:14', NULL),
(19, 'Site Inspection book on site?', '2018-11-25 10:05:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_svcs_survey`
--

CREATE TABLE `tbl_svcs_survey` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `survey_id` bigint(20) UNSIGNED NOT NULL,
  `q_id` bigint(20) UNSIGNED NOT NULL,
  `ans` tinyint(1) UNSIGNED NOT NULL,
  `findings` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_svcs_vivid_info`
--

CREATE TABLE `tbl_svcs_vivid_info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `survey_id` bigint(20) UNSIGNED NOT NULL,
  `additional_description` text NOT NULL,
  `comments` text NOT NULL,
  `recommendation` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_unit_of_measure`
--

CREATE TABLE `tbl_unit_of_measure` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unit_of_measure` char(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_unit_of_measure`
--

INSERT INTO `tbl_unit_of_measure` (`id`, `unit_of_measure`, `created_at`, `updated_at`) VALUES
(1, 'Percentage', '2019-01-05 09:19:53', NULL),
(2, 'Composite Scale', '2019-01-05 09:19:53', NULL),
(3, 'Number', '2019-01-05 09:20:07', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_data_collection_for_consultancy_services_contracts`
--
ALTER TABLE `tbl_data_collection_for_consultancy_services_contracts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `activity_id` (`activity_id`);

--
-- Indexes for table `tbl_data_collection_for_goods_contracts`
--
ALTER TABLE `tbl_data_collection_for_goods_contracts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `activity_id` (`activity_id`);

--
-- Indexes for table `tbl_data_collection_for_works_contracts`
--
ALTER TABLE `tbl_data_collection_for_works_contracts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `activity_id` (`activity_id`);

--
-- Indexes for table `tbl_imed_basic_info`
--
ALTER TABLE `tbl_imed_basic_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `tbl_imed_basic_info_ibfk_1` (`ministry`),
  ADD KEY `division` (`division`),
  ADD KEY `agency` (`agency`);

--
-- Indexes for table `tbl_imed_contract_implementation`
--
ALTER TABLE `tbl_imed_contract_implementation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `imed_bi_info` (`imed_bi_info`);

--
-- Indexes for table `tbl_imed_implementation_problems`
--
ALTER TABLE `tbl_imed_implementation_problems`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `imed_bi_id` (`imed_bi_id`);

--
-- Indexes for table `tbl_imed_implementation_problem_type`
--
ALTER TABLE `tbl_imed_implementation_problem_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_imed_problems_for_delaying`
--
ALTER TABLE `tbl_imed_problems_for_delaying`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `imed_bi_id` (`imed_bi_id`);

--
-- Indexes for table `tbl_imed_quarterly_component_wise_progress`
--
ALTER TABLE `tbl_imed_quarterly_component_wise_progress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `imed_bi_id` (`imed_bi_id`);

--
-- Indexes for table `tbl_imed_quarterly_financial_progress`
--
ALTER TABLE `tbl_imed_quarterly_financial_progress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `imed_bi_id` (`imed_bi_id`);

--
-- Indexes for table `tbl_imed_suggested_measures`
--
ALTER TABLE `tbl_imed_suggested_measures`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `imed_bi_info` (`imed_bi_info`);

--
-- Indexes for table `tbl_implementing_agency`
--
ALTER TABLE `tbl_implementing_agency`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_intermediate_result_indicators_component`
--
ALTER TABLE `tbl_intermediate_result_indicators_component`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_intermediate_result_indicators_name`
--
ALTER TABLE `tbl_intermediate_result_indicators_name`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_key_agreed_actions_tracking_activities`
--
ALTER TABLE `tbl_key_agreed_actions_tracking_activities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `agency` (`agency`);

--
-- Indexes for table `tbl_key_agreed_actions_tracking_sub_activities`
--
ALTER TABLE `tbl_key_agreed_actions_tracking_sub_activities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `activity_id` (`activity_id`);

--
-- Indexes for table `tbl_list_of_division`
--
ALTER TABLE `tbl_list_of_division`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `ministry_id` (`ministry_id`);

--
-- Indexes for table `tbl_list_of_ministry`
--
ALTER TABLE `tbl_list_of_ministry`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_progress_of_procurements_goods_contracts`
--
ALTER TABLE `tbl_progress_of_procurements_goods_contracts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `contract_id` (`contract_id`);

--
-- Indexes for table `tbl_progress_of_procurements_services_contracts`
--
ALTER TABLE `tbl_progress_of_procurements_services_contracts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `contract_id` (`contract_id`);

--
-- Indexes for table `tbl_progress_of_procurements_works_contracts`
--
ALTER TABLE `tbl_progress_of_procurements_works_contracts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `contract_id` (`contract_id`);

--
-- Indexes for table `tbl_project_development_objective_indicators_name`
--
ALTER TABLE `tbl_project_development_objective_indicators_name`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_result_framework_intermediate_result_indicators`
--
ALTER TABLE `tbl_result_framework_intermediate_result_indicators`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `measure_id` (`measure_id`);

--
-- Indexes for table `tbl_result_framework_project_development_objective_indicators`
--
ALTER TABLE `tbl_result_framework_project_development_objective_indicators`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `ind_id` (`ind_id`),
  ADD KEY `measure_id` (`measure_id`);

--
-- Indexes for table `tbl_svce_description_of_package`
--
ALTER TABLE `tbl_svce_description_of_package`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `survey_id` (`survey_id`);

--
-- Indexes for table `tbl_svce_information_and_training_items`
--
ALTER TABLE `tbl_svce_information_and_training_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_svce_information_and_training_survey`
--
ALTER TABLE `tbl_svce_information_and_training_survey`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `survey_id` (`survey_id`),
  ADD KEY `q_id` (`q_id`);

--
-- Indexes for table `tbl_svce_initial_information`
--
ALTER TABLE `tbl_svce_initial_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `implementing_agency` (`implementing_agency`);

--
-- Indexes for table `tbl_svce_maintenance_and_inspection_items`
--
ALTER TABLE `tbl_svce_maintenance_and_inspection_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_svce_maintenance_and_inspection_survey`
--
ALTER TABLE `tbl_svce_maintenance_and_inspection_survey`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `survey_id` (`survey_id`),
  ADD KEY `q_id` (`q_id`);

--
-- Indexes for table `tbl_svce_safety_features_items`
--
ALTER TABLE `tbl_svce_safety_features_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_svce_safety_features_survey`
--
ALTER TABLE `tbl_svce_safety_features_survey`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `survey_id` (`survey_id`),
  ADD KEY `q_id` (`q_id`);

--
-- Indexes for table `tbl_svce_safety_signs_and_warnings_survey`
--
ALTER TABLE `tbl_svce_safety_signs_and_warnings_survey`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `survey_id` (`survey_id`),
  ADD KEY `q_id` (`q_id`);

--
-- Indexes for table `tbl_svce_safety_signs_and_warning_items`
--
ALTER TABLE `tbl_svce_safety_signs_and_warning_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_svce_specific_hazards_items`
--
ALTER TABLE `tbl_svce_specific_hazards_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_svce_specific_hazards_survey`
--
ALTER TABLE `tbl_svce_specific_hazards_survey`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `survey_id` (`survey_id`),
  ADD KEY `q_id` (`q_id`);

--
-- Indexes for table `tbl_svce_vivid_info`
--
ALTER TABLE `tbl_svce_vivid_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `survey_id` (`survey_id`);

--
-- Indexes for table `tbl_svce_work_adequate_to_protect_items`
--
ALTER TABLE `tbl_svce_work_adequate_to_protect_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_svce_work_adequate_to_protect_survey`
--
ALTER TABLE `tbl_svce_work_adequate_to_protect_survey`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `survey_id` (`survey_id`),
  ADD KEY `q_id` (`q_id`);

--
-- Indexes for table `tbl_svcs_description_of_package`
--
ALTER TABLE `tbl_svcs_description_of_package`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `survey_id` (`survey_id`);

--
-- Indexes for table `tbl_svcs_initial_information`
--
ALTER TABLE `tbl_svcs_initial_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `implementing_agency` (`implementing_agency`);

--
-- Indexes for table `tbl_svcs_structure_checklist_items`
--
ALTER TABLE `tbl_svcs_structure_checklist_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_svcs_survey`
--
ALTER TABLE `tbl_svcs_survey`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `survey_id` (`survey_id`),
  ADD KEY `q_id` (`q_id`);

--
-- Indexes for table `tbl_svcs_vivid_info`
--
ALTER TABLE `tbl_svcs_vivid_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `survey_id` (`survey_id`);

--
-- Indexes for table `tbl_unit_of_measure`
--
ALTER TABLE `tbl_unit_of_measure`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_data_collection_for_consultancy_services_contracts`
--
ALTER TABLE `tbl_data_collection_for_consultancy_services_contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_data_collection_for_goods_contracts`
--
ALTER TABLE `tbl_data_collection_for_goods_contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_data_collection_for_works_contracts`
--
ALTER TABLE `tbl_data_collection_for_works_contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_imed_basic_info`
--
ALTER TABLE `tbl_imed_basic_info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_imed_contract_implementation`
--
ALTER TABLE `tbl_imed_contract_implementation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_imed_implementation_problems`
--
ALTER TABLE `tbl_imed_implementation_problems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_imed_implementation_problem_type`
--
ALTER TABLE `tbl_imed_implementation_problem_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_imed_problems_for_delaying`
--
ALTER TABLE `tbl_imed_problems_for_delaying`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_imed_quarterly_component_wise_progress`
--
ALTER TABLE `tbl_imed_quarterly_component_wise_progress`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_imed_quarterly_financial_progress`
--
ALTER TABLE `tbl_imed_quarterly_financial_progress`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_imed_suggested_measures`
--
ALTER TABLE `tbl_imed_suggested_measures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_implementing_agency`
--
ALTER TABLE `tbl_implementing_agency`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_intermediate_result_indicators_component`
--
ALTER TABLE `tbl_intermediate_result_indicators_component`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_intermediate_result_indicators_name`
--
ALTER TABLE `tbl_intermediate_result_indicators_name`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_key_agreed_actions_tracking_activities`
--
ALTER TABLE `tbl_key_agreed_actions_tracking_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_key_agreed_actions_tracking_sub_activities`
--
ALTER TABLE `tbl_key_agreed_actions_tracking_sub_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_list_of_division`
--
ALTER TABLE `tbl_list_of_division`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_list_of_ministry`
--
ALTER TABLE `tbl_list_of_ministry`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_progress_of_procurements_goods_contracts`
--
ALTER TABLE `tbl_progress_of_procurements_goods_contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_progress_of_procurements_services_contracts`
--
ALTER TABLE `tbl_progress_of_procurements_services_contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_progress_of_procurements_works_contracts`
--
ALTER TABLE `tbl_progress_of_procurements_works_contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_project_development_objective_indicators_name`
--
ALTER TABLE `tbl_project_development_objective_indicators_name`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_result_framework_intermediate_result_indicators`
--
ALTER TABLE `tbl_result_framework_intermediate_result_indicators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_result_framework_project_development_objective_indicators`
--
ALTER TABLE `tbl_result_framework_project_development_objective_indicators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_svce_description_of_package`
--
ALTER TABLE `tbl_svce_description_of_package`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_svce_information_and_training_items`
--
ALTER TABLE `tbl_svce_information_and_training_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_svce_information_and_training_survey`
--
ALTER TABLE `tbl_svce_information_and_training_survey`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_svce_maintenance_and_inspection_items`
--
ALTER TABLE `tbl_svce_maintenance_and_inspection_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_svce_maintenance_and_inspection_survey`
--
ALTER TABLE `tbl_svce_maintenance_and_inspection_survey`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_svce_safety_features_items`
--
ALTER TABLE `tbl_svce_safety_features_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_svce_safety_features_survey`
--
ALTER TABLE `tbl_svce_safety_features_survey`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_svce_safety_signs_and_warnings_survey`
--
ALTER TABLE `tbl_svce_safety_signs_and_warnings_survey`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_svce_safety_signs_and_warning_items`
--
ALTER TABLE `tbl_svce_safety_signs_and_warning_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_svce_specific_hazards_items`
--
ALTER TABLE `tbl_svce_specific_hazards_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_svce_specific_hazards_survey`
--
ALTER TABLE `tbl_svce_specific_hazards_survey`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_svce_vivid_info`
--
ALTER TABLE `tbl_svce_vivid_info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_svce_work_adequate_to_protect_items`
--
ALTER TABLE `tbl_svce_work_adequate_to_protect_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_svce_work_adequate_to_protect_survey`
--
ALTER TABLE `tbl_svce_work_adequate_to_protect_survey`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_svcs_description_of_package`
--
ALTER TABLE `tbl_svcs_description_of_package`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_svcs_structure_checklist_items`
--
ALTER TABLE `tbl_svcs_structure_checklist_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_svcs_survey`
--
ALTER TABLE `tbl_svcs_survey`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_svcs_vivid_info`
--
ALTER TABLE `tbl_svcs_vivid_info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_unit_of_measure`
--
ALTER TABLE `tbl_unit_of_measure`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_data_collection_for_consultancy_services_contracts`
--
ALTER TABLE `tbl_data_collection_for_consultancy_services_contracts`
  ADD CONSTRAINT `tbl_data_collection_for_consultancy_services_contracts_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `tbl_key_agreed_actions_tracking_activities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_data_collection_for_goods_contracts`
--
ALTER TABLE `tbl_data_collection_for_goods_contracts`
  ADD CONSTRAINT `tbl_data_collection_for_goods_contracts_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `tbl_key_agreed_actions_tracking_activities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_data_collection_for_works_contracts`
--
ALTER TABLE `tbl_data_collection_for_works_contracts`
  ADD CONSTRAINT `tbl_data_collection_for_works_contracts_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `tbl_key_agreed_actions_tracking_activities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_imed_basic_info`
--
ALTER TABLE `tbl_imed_basic_info`
  ADD CONSTRAINT `tbl_imed_basic_info_ibfk_1` FOREIGN KEY (`ministry`) REFERENCES `tbl_list_of_ministry` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_imed_basic_info_ibfk_2` FOREIGN KEY (`division`) REFERENCES `tbl_list_of_division` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_imed_basic_info_ibfk_3` FOREIGN KEY (`agency`) REFERENCES `tbl_implementing_agency` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_imed_contract_implementation`
--
ALTER TABLE `tbl_imed_contract_implementation`
  ADD CONSTRAINT `tbl_imed_contract_implementation_ibfk_1` FOREIGN KEY (`imed_bi_info`) REFERENCES `tbl_imed_basic_info` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_imed_implementation_problems`
--
ALTER TABLE `tbl_imed_implementation_problems`
  ADD CONSTRAINT `tbl_imed_implementation_problems_ibfk_1` FOREIGN KEY (`imed_bi_id`) REFERENCES `tbl_imed_implementation_problems` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_imed_problems_for_delaying`
--
ALTER TABLE `tbl_imed_problems_for_delaying`
  ADD CONSTRAINT `tbl_imed_problems_for_delaying_ibfk_1` FOREIGN KEY (`imed_bi_id`) REFERENCES `tbl_imed_basic_info` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_imed_quarterly_component_wise_progress`
--
ALTER TABLE `tbl_imed_quarterly_component_wise_progress`
  ADD CONSTRAINT `tbl_imed_quarterly_component_wise_progress_ibfk_1` FOREIGN KEY (`imed_bi_id`) REFERENCES `tbl_imed_basic_info` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_imed_quarterly_financial_progress`
--
ALTER TABLE `tbl_imed_quarterly_financial_progress`
  ADD CONSTRAINT `tbl_imed_quarterly_financial_progress_ibfk_1` FOREIGN KEY (`imed_bi_id`) REFERENCES `tbl_imed_basic_info` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_imed_suggested_measures`
--
ALTER TABLE `tbl_imed_suggested_measures`
  ADD CONSTRAINT `tbl_imed_suggested_measures_ibfk_1` FOREIGN KEY (`imed_bi_info`) REFERENCES `tbl_imed_basic_info` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_key_agreed_actions_tracking_activities`
--
ALTER TABLE `tbl_key_agreed_actions_tracking_activities`
  ADD CONSTRAINT `tbl_key_agreed_actions_tracking_activities_ibfk_1` FOREIGN KEY (`agency`) REFERENCES `tbl_implementing_agency` (`id`);

--
-- Constraints for table `tbl_key_agreed_actions_tracking_sub_activities`
--
ALTER TABLE `tbl_key_agreed_actions_tracking_sub_activities`
  ADD CONSTRAINT `tbl_key_agreed_actions_tracking_sub_activities_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `tbl_key_agreed_actions_tracking_activities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_list_of_division`
--
ALTER TABLE `tbl_list_of_division`
  ADD CONSTRAINT `tbl_list_of_division_ibfk_1` FOREIGN KEY (`ministry_id`) REFERENCES `tbl_list_of_ministry` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_progress_of_procurements_goods_contracts`
--
ALTER TABLE `tbl_progress_of_procurements_goods_contracts`
  ADD CONSTRAINT `tbl_progress_of_procurements_goods_contracts_ibfk_1` FOREIGN KEY (`contract_id`) REFERENCES `tbl_data_collection_for_goods_contracts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_progress_of_procurements_services_contracts`
--
ALTER TABLE `tbl_progress_of_procurements_services_contracts`
  ADD CONSTRAINT `tbl_progress_of_procurements_services_contracts_ibfk_1` FOREIGN KEY (`contract_id`) REFERENCES `tbl_data_collection_for_consultancy_services_contracts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_progress_of_procurements_works_contracts`
--
ALTER TABLE `tbl_progress_of_procurements_works_contracts`
  ADD CONSTRAINT `tbl_progress_of_procurements_works_contracts_ibfk_1` FOREIGN KEY (`contract_id`) REFERENCES `tbl_data_collection_for_works_contracts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_result_framework_intermediate_result_indicators`
--
ALTER TABLE `tbl_result_framework_intermediate_result_indicators`
  ADD CONSTRAINT `tbl_result_framework_intermediate_result_indicators_ibfk_1` FOREIGN KEY (`measure_id`) REFERENCES `tbl_unit_of_measure` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_result_framework_project_development_objective_indicators`
--
ALTER TABLE `tbl_result_framework_project_development_objective_indicators`
  ADD CONSTRAINT `tbl_result_framework_project_development_objective_indicators_ibfk_1` FOREIGN KEY (`ind_id`) REFERENCES `tbl_project_development_objective_indicators_name` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_result_framework_project_development_objective_indicators_ibfk_2` FOREIGN KEY (`measure_id`) REFERENCES `tbl_unit_of_measure` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_svce_description_of_package`
--
ALTER TABLE `tbl_svce_description_of_package`
  ADD CONSTRAINT `tbl_svce_description_of_package_ibfk_1` FOREIGN KEY (`survey_id`) REFERENCES `tbl_svce_initial_information` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_svce_information_and_training_survey`
--
ALTER TABLE `tbl_svce_information_and_training_survey`
  ADD CONSTRAINT `tbl_svce_information_and_training_survey_ibfk_1` FOREIGN KEY (`survey_id`) REFERENCES `tbl_svce_initial_information` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_svce_information_and_training_survey_ibfk_2` FOREIGN KEY (`q_id`) REFERENCES `tbl_svce_information_and_training_items` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_svce_initial_information`
--
ALTER TABLE `tbl_svce_initial_information`
  ADD CONSTRAINT `tbl_svce_initial_information_ibfk_1` FOREIGN KEY (`implementing_agency`) REFERENCES `tbl_implementing_agency` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_svce_maintenance_and_inspection_survey`
--
ALTER TABLE `tbl_svce_maintenance_and_inspection_survey`
  ADD CONSTRAINT `tbl_svce_maintenance_and_inspection_survey_ibfk_1` FOREIGN KEY (`survey_id`) REFERENCES `tbl_svce_initial_information` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_svce_maintenance_and_inspection_survey_ibfk_2` FOREIGN KEY (`q_id`) REFERENCES `tbl_svce_maintenance_and_inspection_items` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_svce_safety_features_survey`
--
ALTER TABLE `tbl_svce_safety_features_survey`
  ADD CONSTRAINT `tbl_svce_safety_features_survey_ibfk_1` FOREIGN KEY (`survey_id`) REFERENCES `tbl_svce_initial_information` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_svce_safety_features_survey_ibfk_2` FOREIGN KEY (`q_id`) REFERENCES `tbl_svce_safety_features_items` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_svce_safety_signs_and_warnings_survey`
--
ALTER TABLE `tbl_svce_safety_signs_and_warnings_survey`
  ADD CONSTRAINT `tbl_svce_safety_signs_and_warnings_survey_ibfk_1` FOREIGN KEY (`survey_id`) REFERENCES `tbl_svce_initial_information` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_svce_safety_signs_and_warnings_survey_ibfk_2` FOREIGN KEY (`q_id`) REFERENCES `tbl_svce_safety_signs_and_warning_items` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_svce_specific_hazards_survey`
--
ALTER TABLE `tbl_svce_specific_hazards_survey`
  ADD CONSTRAINT `tbl_svce_specific_hazards_survey_ibfk_1` FOREIGN KEY (`survey_id`) REFERENCES `tbl_svce_initial_information` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_svce_specific_hazards_survey_ibfk_2` FOREIGN KEY (`q_id`) REFERENCES `tbl_svce_specific_hazards_items` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_svce_vivid_info`
--
ALTER TABLE `tbl_svce_vivid_info`
  ADD CONSTRAINT `tbl_svce_vivid_info_ibfk_1` FOREIGN KEY (`survey_id`) REFERENCES `tbl_svce_initial_information` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_svce_work_adequate_to_protect_survey`
--
ALTER TABLE `tbl_svce_work_adequate_to_protect_survey`
  ADD CONSTRAINT `tbl_svce_work_adequate_to_protect_survey_ibfk_1` FOREIGN KEY (`survey_id`) REFERENCES `tbl_svce_initial_information` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_svce_work_adequate_to_protect_survey_ibfk_2` FOREIGN KEY (`q_id`) REFERENCES `tbl_svce_work_adequate_to_protect_items` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_svcs_description_of_package`
--
ALTER TABLE `tbl_svcs_description_of_package`
  ADD CONSTRAINT `tbl_svcs_description_of_package_ibfk_1` FOREIGN KEY (`survey_id`) REFERENCES `tbl_svcs_initial_information` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_svcs_initial_information`
--
ALTER TABLE `tbl_svcs_initial_information`
  ADD CONSTRAINT `tbl_svcs_initial_information_ibfk_1` FOREIGN KEY (`implementing_agency`) REFERENCES `tbl_implementing_agency` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_svcs_survey`
--
ALTER TABLE `tbl_svcs_survey`
  ADD CONSTRAINT `tbl_svcs_survey_ibfk_1` FOREIGN KEY (`survey_id`) REFERENCES `tbl_svcs_initial_information` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_svcs_survey_ibfk_2` FOREIGN KEY (`q_id`) REFERENCES `tbl_svcs_structure_checklist_items` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_svcs_vivid_info`
--
ALTER TABLE `tbl_svcs_vivid_info`
  ADD CONSTRAINT `tbl_svcs_vivid_info_ibfk_1` FOREIGN KEY (`survey_id`) REFERENCES `tbl_svcs_initial_information` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
