-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2019 at 12:52 PM
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
-- Table structure for table `tbl_accounts_ddm`
--

CREATE TABLE `tbl_accounts_ddm` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fiscal_year` char(255) DEFAULT NULL,
  `gob_officer_salary` decimal(60,2) DEFAULT NULL,
  `rpa_officer_salary` decimal(60,2) DEFAULT NULL,
  `others_rpa_officer_salary` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_officer_salary` decimal(60,2) DEFAULT NULL,
  `gob_other_official_salary` decimal(60,2) DEFAULT NULL,
  `rpa_other_official_salary` decimal(60,2) DEFAULT NULL,
  `others_rpa_other_official_salary` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_other_official_salary` decimal(60,2) DEFAULT NULL,
  `gob_transport` decimal(60,2) DEFAULT NULL,
  `rpa_transport` decimal(60,2) DEFAULT NULL,
  `others_rpa_transport` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_transport` decimal(60,2) DEFAULT NULL,
  `gob_education_allow` decimal(60,2) DEFAULT NULL,
  `rpa_education_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_education_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_education_allow` decimal(60,2) DEFAULT NULL,
  `gob_home_allow` decimal(60,2) DEFAULT NULL,
  `rpa_home_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_home_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_home_allow` decimal(60,2) DEFAULT NULL,
  `gob_medical_allow` decimal(60,2) DEFAULT NULL,
  `rpa_medical_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_medical_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_medical_allow` decimal(60,2) DEFAULT NULL,
  `gob_tiffin_allow` decimal(60,2) DEFAULT NULL,
  `rpa_tiffin_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_tiffin_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_tiffin_allow` decimal(60,2) DEFAULT NULL,
  `gob_festival_allow` decimal(60,2) DEFAULT NULL,
  `rpa_festival_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_festival_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_festival_allow` decimal(60,2) DEFAULT NULL,
  `gob_sranti_allow` decimal(60,2) DEFAULT NULL,
  `rpa_sranti_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_sranti_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_sranti_allow` decimal(60,2) DEFAULT NULL,
  `gob_complimentary_allow` decimal(60,2) DEFAULT NULL,
  `rpa_complimentary_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_complimentary_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_complimentary_allow` decimal(60,2) DEFAULT NULL,
  `gob_other_allow` decimal(60,2) DEFAULT NULL,
  `rpa_other_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_other_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_other_allow` decimal(60,2) DEFAULT NULL,
  `gob_overtime_allow` decimal(60,2) DEFAULT NULL,
  `rpa_overtime_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_overtime_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_overtime_allow` decimal(60,2) DEFAULT NULL,
  `gob_compliments` decimal(60,2) DEFAULT NULL,
  `rpa_compliments` decimal(60,2) DEFAULT NULL,
  `others_rpa_compliments` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_compliments` decimal(60,2) DEFAULT NULL,
  `gob_seminar` decimal(60,2) DEFAULT NULL,
  `rpa_seminar` decimal(60,2) DEFAULT NULL,
  `others_rpa_seminar` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_seminar` decimal(60,2) DEFAULT NULL,
  `gob_others_expenditure` decimal(60,2) DEFAULT NULL,
  `rpa_others_expenditure` decimal(60,2) DEFAULT NULL,
  `others_rpa_others_expenditure` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_others_expenditure` decimal(60,2) DEFAULT NULL,
  `gob_post` decimal(60,2) DEFAULT NULL,
  `rpa_post` decimal(60,2) DEFAULT NULL,
  `others_rpa_post` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_post` decimal(60,2) DEFAULT NULL,
  `gob_fax` decimal(60,2) DEFAULT NULL,
  `rpa_fax` decimal(60,2) DEFAULT NULL,
  `others_rpa_fax` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_fax` decimal(60,2) DEFAULT NULL,
  `gob_telephone` decimal(60,2) DEFAULT NULL,
  `rpa_telephone` decimal(60,2) DEFAULT NULL,
  `others_rpa_telephone` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_telephone` decimal(60,2) DEFAULT NULL,
  `gob_advertising` decimal(60,2) DEFAULT NULL,
  `rpa_advertising` decimal(60,2) DEFAULT NULL,
  `others_rpa_advertising` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_advertising` decimal(60,2) DEFAULT NULL,
  `gob_film_making` decimal(60,2) DEFAULT NULL,
  `rpa_film_making` decimal(60,2) DEFAULT NULL,
  `others_rpa_film_making` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_film_making` decimal(60,2) DEFAULT NULL,
  `gob_book` decimal(60,2) DEFAULT NULL,
  `rpa_book` decimal(60,2) DEFAULT NULL,
  `others_rpa_book` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_book` decimal(60,2) DEFAULT NULL,
  `gob_office_rent` decimal(60,2) DEFAULT NULL,
  `rpa_office_rent` decimal(60,2) DEFAULT NULL,
  `others_rpa_office_rent` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_office_rent` decimal(60,2) DEFAULT NULL,
  `gob_reg_fee` decimal(60,2) DEFAULT NULL,
  `rpa_reg_fee` decimal(60,2) DEFAULT NULL,
  `others_rpa_reg_fee` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_reg_fee` decimal(60,2) DEFAULT NULL,
  `gob_bank_charge` decimal(60,2) DEFAULT NULL,
  `rpa_bank_charge` decimal(60,2) DEFAULT NULL,
  `others_rpa_bank_charge` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_bank_charge` decimal(60,2) DEFAULT NULL,
  `gob_interest` decimal(60,2) DEFAULT NULL,
  `rpa_interest` decimal(60,2) DEFAULT NULL,
  `others_rpa_interest` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_interest` decimal(60,2) DEFAULT NULL,
  `gob_oversease_training` decimal(60,2) DEFAULT NULL,
  `rpa_oversease_training` decimal(60,2) DEFAULT NULL,
  `others_rpa_oversease_training` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_oversease_training` decimal(60,2) DEFAULT NULL,
  `gob_internal_training` decimal(60,2) DEFAULT NULL,
  `rpa_internal_training` decimal(60,2) DEFAULT NULL,
  `others_rpa_internal_training` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_internal_training` decimal(60,2) DEFAULT NULL,
  `gob_internal_transport` decimal(60,2) DEFAULT NULL,
  `rpa_internal_transport` decimal(60,2) DEFAULT NULL,
  `others_rpa_internal_transport` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_internal_transport` decimal(60,2) DEFAULT NULL,
  `gob_petrol_lubricant` decimal(60,2) DEFAULT NULL,
  `rpa_petrol_lubricant` decimal(60,2) DEFAULT NULL,
  `others_rpa_petrol_lubricant` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_petrol_lubricant` decimal(60,2) DEFAULT NULL,
  `gob_fuel_and_gas` decimal(60,2) DEFAULT NULL,
  `rpa_fuel_and_gas` decimal(60,2) DEFAULT NULL,
  `others_rpa_fuel_and_gas` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_fuel_and_gas` decimal(60,2) DEFAULT NULL,
  `gob_publication` decimal(60,2) DEFAULT NULL,
  `rpa_publication` decimal(60,2) DEFAULT NULL,
  `others_rpa_publication` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_publication` decimal(60,2) DEFAULT NULL,
  `gob_stationary` decimal(60,2) DEFAULT NULL,
  `rpa_stationary` decimal(60,2) DEFAULT NULL,
  `others_rpa_stationary` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_stationary` decimal(60,2) DEFAULT NULL,
  `gob_purchase_used_product` decimal(60,2) DEFAULT NULL,
  `rpa_purchase_used_product` decimal(60,2) DEFAULT NULL,
  `others_rpa_purchase_used_product` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_purchase_used_product` decimal(60,2) DEFAULT NULL,
  `gob_raw_materials` decimal(60,2) DEFAULT NULL,
  `rpa_raw_materials` decimal(60,2) DEFAULT NULL,
  `others_rpa_raw_materials` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_raw_materials` decimal(60,2) DEFAULT NULL,
  `gob_consultancy` decimal(60,2) DEFAULT NULL,
  `rpa_consultancy` decimal(60,2) DEFAULT NULL,
  `others_rpa_consultancy` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_consultancy` decimal(60,2) DEFAULT NULL,
  `gob_survey` decimal(60,2) DEFAULT NULL,
  `rpa_survey` decimal(60,2) DEFAULT NULL,
  `others_rpa_survey` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_survey` decimal(60,2) DEFAULT NULL,
  `gob_honorarium` decimal(60,2) DEFAULT NULL,
  `rpa_honorarium` decimal(60,2) DEFAULT NULL,
  `others_rpa_honorarium` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_honorarium` decimal(60,2) DEFAULT NULL,
  `gob_vehicle_repair` decimal(60,2) DEFAULT NULL,
  `rpa_vehicle_repair` decimal(60,2) DEFAULT NULL,
  `others_rpa_vehicle_repair` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_vehicle_repair` decimal(60,2) DEFAULT NULL,
  `gob_furniture_repair` decimal(60,2) DEFAULT NULL,
  `rpa_furniture_repair` decimal(60,2) DEFAULT NULL,
  `others_rpa_furniture_repair` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_furniture_repair` decimal(60,2) DEFAULT NULL,
  `gob_office_utilities_repair` decimal(60,2) DEFAULT NULL,
  `rpa_office_utilities_repair` decimal(60,2) DEFAULT NULL,
  `others_rpa_office_utilities_repair` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_office_utilities_repair` decimal(60,2) DEFAULT NULL,
  `gob_other_service_exp` decimal(60,2) DEFAULT NULL,
  `rpa_other_service_exp` decimal(60,2) DEFAULT NULL,
  `others_rpa_other_service_exp` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_other_service_exp` decimal(60,2) DEFAULT NULL,
  `gob_vat` decimal(60,2) DEFAULT NULL,
  `rpa_vat` decimal(60,2) DEFAULT NULL,
  `others_rpa_vat` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_vat` decimal(60,2) DEFAULT NULL,
  `gob_stock_allocation` decimal(60,2) DEFAULT NULL,
  `rpa_stock_allocation` decimal(60,2) DEFAULT NULL,
  `others_rpa_stock_allocation` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_stock_allocation` decimal(60,2) DEFAULT NULL,
  `gob_non_financial_asset` decimal(60,2) DEFAULT NULL,
  `rpa_non_financial_asset` decimal(60,2) DEFAULT NULL,
  `others_rpa_non_financial_asset` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_non_financial_asset` decimal(60,2) DEFAULT NULL,
  `gob_vehicle` decimal(60,2) DEFAULT NULL,
  `rpa_vehicle` decimal(60,2) DEFAULT NULL,
  `others_rpa_vehicle` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_vehicle` decimal(60,2) DEFAULT NULL,
  `gob_computer_utilites` decimal(60,2) DEFAULT NULL,
  `rpa_computer_utilites` decimal(60,2) DEFAULT NULL,
  `others_rpa_computer_utilites` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_computer_utilites` decimal(60,2) DEFAULT NULL,
  `gob_tel_utilities` decimal(60,2) DEFAULT NULL,
  `rpa_tel_utilities` decimal(60,2) DEFAULT NULL,
  `others_rpa_tel_utilities` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_tel_utilities` decimal(60,2) DEFAULT NULL,
  `gob_ohter_utilities` decimal(60,2) DEFAULT NULL,
  `rpa_ohter_utilities` decimal(60,2) DEFAULT NULL,
  `others_rpa_ohter_utilities` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_ohter_utilities` decimal(60,2) DEFAULT NULL,
  `gob_furniture` decimal(60,2) DEFAULT NULL,
  `rpa_furniture` decimal(60,2) DEFAULT NULL,
  `others_rpa_furniture` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_furniture` decimal(60,2) DEFAULT NULL,
  `gob_office_utilities` decimal(60,2) DEFAULT NULL,
  `rpa_office_utilities` decimal(60,2) DEFAULT NULL,
  `others_rpa_office_utilities` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_office_utilities` decimal(60,2) DEFAULT NULL,
  `gob_software` decimal(60,2) DEFAULT NULL,
  `rpa_software` decimal(60,2) DEFAULT NULL,
  `others_rpa_software` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_software` decimal(60,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_accounts_ddm`
--

INSERT INTO `tbl_accounts_ddm` (`id`, `fiscal_year`, `gob_officer_salary`, `rpa_officer_salary`, `others_rpa_officer_salary`, `others_without_rpa_officer_salary`, `gob_other_official_salary`, `rpa_other_official_salary`, `others_rpa_other_official_salary`, `others_without_rpa_other_official_salary`, `gob_transport`, `rpa_transport`, `others_rpa_transport`, `others_without_rpa_transport`, `gob_education_allow`, `rpa_education_allow`, `others_rpa_education_allow`, `others_without_rpa_education_allow`, `gob_home_allow`, `rpa_home_allow`, `others_rpa_home_allow`, `others_without_rpa_home_allow`, `gob_medical_allow`, `rpa_medical_allow`, `others_rpa_medical_allow`, `others_without_rpa_medical_allow`, `gob_tiffin_allow`, `rpa_tiffin_allow`, `others_rpa_tiffin_allow`, `others_without_rpa_tiffin_allow`, `gob_festival_allow`, `rpa_festival_allow`, `others_rpa_festival_allow`, `others_without_rpa_festival_allow`, `gob_sranti_allow`, `rpa_sranti_allow`, `others_rpa_sranti_allow`, `others_without_rpa_sranti_allow`, `gob_complimentary_allow`, `rpa_complimentary_allow`, `others_rpa_complimentary_allow`, `others_without_rpa_complimentary_allow`, `gob_other_allow`, `rpa_other_allow`, `others_rpa_other_allow`, `others_without_rpa_other_allow`, `gob_overtime_allow`, `rpa_overtime_allow`, `others_rpa_overtime_allow`, `others_without_rpa_overtime_allow`, `gob_compliments`, `rpa_compliments`, `others_rpa_compliments`, `others_without_rpa_compliments`, `gob_seminar`, `rpa_seminar`, `others_rpa_seminar`, `others_without_rpa_seminar`, `gob_others_expenditure`, `rpa_others_expenditure`, `others_rpa_others_expenditure`, `others_without_rpa_others_expenditure`, `gob_post`, `rpa_post`, `others_rpa_post`, `others_without_rpa_post`, `gob_fax`, `rpa_fax`, `others_rpa_fax`, `others_without_rpa_fax`, `gob_telephone`, `rpa_telephone`, `others_rpa_telephone`, `others_without_rpa_telephone`, `gob_advertising`, `rpa_advertising`, `others_rpa_advertising`, `others_without_rpa_advertising`, `gob_film_making`, `rpa_film_making`, `others_rpa_film_making`, `others_without_rpa_film_making`, `gob_book`, `rpa_book`, `others_rpa_book`, `others_without_rpa_book`, `gob_office_rent`, `rpa_office_rent`, `others_rpa_office_rent`, `others_without_rpa_office_rent`, `gob_reg_fee`, `rpa_reg_fee`, `others_rpa_reg_fee`, `others_without_rpa_reg_fee`, `gob_bank_charge`, `rpa_bank_charge`, `others_rpa_bank_charge`, `others_without_rpa_bank_charge`, `gob_interest`, `rpa_interest`, `others_rpa_interest`, `others_without_rpa_interest`, `gob_oversease_training`, `rpa_oversease_training`, `others_rpa_oversease_training`, `others_without_rpa_oversease_training`, `gob_internal_training`, `rpa_internal_training`, `others_rpa_internal_training`, `others_without_rpa_internal_training`, `gob_internal_transport`, `rpa_internal_transport`, `others_rpa_internal_transport`, `others_without_rpa_internal_transport`, `gob_petrol_lubricant`, `rpa_petrol_lubricant`, `others_rpa_petrol_lubricant`, `others_without_rpa_petrol_lubricant`, `gob_fuel_and_gas`, `rpa_fuel_and_gas`, `others_rpa_fuel_and_gas`, `others_without_rpa_fuel_and_gas`, `gob_publication`, `rpa_publication`, `others_rpa_publication`, `others_without_rpa_publication`, `gob_stationary`, `rpa_stationary`, `others_rpa_stationary`, `others_without_rpa_stationary`, `gob_purchase_used_product`, `rpa_purchase_used_product`, `others_rpa_purchase_used_product`, `others_without_rpa_purchase_used_product`, `gob_raw_materials`, `rpa_raw_materials`, `others_rpa_raw_materials`, `others_without_rpa_raw_materials`, `gob_consultancy`, `rpa_consultancy`, `others_rpa_consultancy`, `others_without_rpa_consultancy`, `gob_survey`, `rpa_survey`, `others_rpa_survey`, `others_without_rpa_survey`, `gob_honorarium`, `rpa_honorarium`, `others_rpa_honorarium`, `others_without_rpa_honorarium`, `gob_vehicle_repair`, `rpa_vehicle_repair`, `others_rpa_vehicle_repair`, `others_without_rpa_vehicle_repair`, `gob_furniture_repair`, `rpa_furniture_repair`, `others_rpa_furniture_repair`, `others_without_rpa_furniture_repair`, `gob_office_utilities_repair`, `rpa_office_utilities_repair`, `others_rpa_office_utilities_repair`, `others_without_rpa_office_utilities_repair`, `gob_other_service_exp`, `rpa_other_service_exp`, `others_rpa_other_service_exp`, `others_without_rpa_other_service_exp`, `gob_vat`, `rpa_vat`, `others_rpa_vat`, `others_without_rpa_vat`, `gob_stock_allocation`, `rpa_stock_allocation`, `others_rpa_stock_allocation`, `others_without_rpa_stock_allocation`, `gob_non_financial_asset`, `rpa_non_financial_asset`, `others_rpa_non_financial_asset`, `others_without_rpa_non_financial_asset`, `gob_vehicle`, `rpa_vehicle`, `others_rpa_vehicle`, `others_without_rpa_vehicle`, `gob_computer_utilites`, `rpa_computer_utilites`, `others_rpa_computer_utilites`, `others_without_rpa_computer_utilites`, `gob_tel_utilities`, `rpa_tel_utilities`, `others_rpa_tel_utilities`, `others_without_rpa_tel_utilities`, `gob_ohter_utilities`, `rpa_ohter_utilities`, `others_rpa_ohter_utilities`, `others_without_rpa_ohter_utilities`, `gob_furniture`, `rpa_furniture`, `others_rpa_furniture`, `others_without_rpa_furniture`, `gob_office_utilities`, `rpa_office_utilities`, `others_rpa_office_utilities`, `others_without_rpa_office_utilities`, `gob_software`, `rpa_software`, `others_rpa_software`, `others_without_rpa_software`, `created_at`, `updated_at`) VALUES
(1, '', '23343.00', '345.00', '321.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2019-03-11 11:39:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accounts_dncc`
--

CREATE TABLE `tbl_accounts_dncc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fiscal_year` char(255) DEFAULT NULL,
  `gob_officer_salary` decimal(60,2) DEFAULT NULL,
  `rpa_officer_salary` decimal(60,2) DEFAULT NULL,
  `others_rpa_officer_salary` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_officer_salary` decimal(60,2) DEFAULT NULL,
  `gob_other_official_salary` decimal(60,2) DEFAULT NULL,
  `rpa_other_official_salary` decimal(60,2) DEFAULT NULL,
  `others_rpa_other_official_salary` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_other_official_salary` decimal(60,2) DEFAULT NULL,
  `gob_transport` decimal(60,2) DEFAULT NULL,
  `rpa_transport` decimal(60,2) DEFAULT NULL,
  `others_rpa_transport` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_transport` decimal(60,2) DEFAULT NULL,
  `gob_education_allow` decimal(60,2) DEFAULT NULL,
  `rpa_education_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_education_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_education_allow` decimal(60,2) DEFAULT NULL,
  `gob_home_allow` decimal(60,2) DEFAULT NULL,
  `rpa_home_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_home_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_home_allow` decimal(60,2) DEFAULT NULL,
  `gob_medical_allow` decimal(60,2) DEFAULT NULL,
  `rpa_medical_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_medical_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_medical_allow` decimal(60,2) DEFAULT NULL,
  `gob_tiffin_allow` decimal(60,2) DEFAULT NULL,
  `rpa_tiffin_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_tiffin_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_tiffin_allow` decimal(60,2) DEFAULT NULL,
  `gob_festival_allow` decimal(60,2) DEFAULT NULL,
  `rpa_festival_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_festival_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_festival_allow` decimal(60,2) DEFAULT NULL,
  `gob_sranti_allow` decimal(60,2) DEFAULT NULL,
  `rpa_sranti_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_sranti_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_sranti_allow` decimal(60,2) DEFAULT NULL,
  `gob_complimentary_allow` decimal(60,2) DEFAULT NULL,
  `rpa_complimentary_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_complimentary_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_complimentary_allow` decimal(60,2) DEFAULT NULL,
  `gob_other_allow` decimal(60,2) DEFAULT NULL,
  `rpa_other_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_other_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_other_allow` decimal(60,2) DEFAULT NULL,
  `gob_overtime_allow` decimal(60,2) DEFAULT NULL,
  `rpa_overtime_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_overtime_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_overtime_allow` decimal(60,2) DEFAULT NULL,
  `gob_compliments` decimal(60,2) DEFAULT NULL,
  `rpa_compliments` decimal(60,2) DEFAULT NULL,
  `others_rpa_compliments` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_compliments` decimal(60,2) DEFAULT NULL,
  `gob_seminar` decimal(60,2) DEFAULT NULL,
  `rpa_seminar` decimal(60,2) DEFAULT NULL,
  `others_rpa_seminar` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_seminar` decimal(60,2) DEFAULT NULL,
  `gob_others_expenditure` decimal(60,2) DEFAULT NULL,
  `rpa_others_expenditure` decimal(60,2) DEFAULT NULL,
  `others_rpa_others_expenditure` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_others_expenditure` decimal(60,2) DEFAULT NULL,
  `gob_post` decimal(60,2) DEFAULT NULL,
  `rpa_post` decimal(60,2) DEFAULT NULL,
  `others_rpa_post` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_post` decimal(60,2) DEFAULT NULL,
  `gob_fax` decimal(60,2) DEFAULT NULL,
  `rpa_fax` decimal(60,2) DEFAULT NULL,
  `others_rpa_fax` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_fax` decimal(60,2) DEFAULT NULL,
  `gob_telephone` decimal(60,2) DEFAULT NULL,
  `rpa_telephone` decimal(60,2) DEFAULT NULL,
  `others_rpa_telephone` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_telephone` decimal(60,2) DEFAULT NULL,
  `gob_advertising` decimal(60,2) DEFAULT NULL,
  `rpa_advertising` decimal(60,2) DEFAULT NULL,
  `others_rpa_advertising` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_advertising` decimal(60,2) DEFAULT NULL,
  `gob_film_making` decimal(60,2) DEFAULT NULL,
  `rpa_film_making` decimal(60,2) DEFAULT NULL,
  `others_rpa_film_making` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_film_making` decimal(60,2) DEFAULT NULL,
  `gob_book` decimal(60,2) DEFAULT NULL,
  `rpa_book` decimal(60,2) DEFAULT NULL,
  `others_rpa_book` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_book` decimal(60,2) DEFAULT NULL,
  `gob_office_rent` decimal(60,2) DEFAULT NULL,
  `rpa_office_rent` decimal(60,2) DEFAULT NULL,
  `others_rpa_office_rent` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_office_rent` decimal(60,2) DEFAULT NULL,
  `gob_reg_fee` decimal(60,2) DEFAULT NULL,
  `rpa_reg_fee` decimal(60,2) DEFAULT NULL,
  `others_rpa_reg_fee` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_reg_fee` decimal(60,2) DEFAULT NULL,
  `gob_bank_charge` decimal(60,2) DEFAULT NULL,
  `rpa_bank_charge` decimal(60,2) DEFAULT NULL,
  `others_rpa_bank_charge` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_bank_charge` decimal(60,2) DEFAULT NULL,
  `gob_interest` decimal(60,2) DEFAULT NULL,
  `rpa_interest` decimal(60,2) DEFAULT NULL,
  `others_rpa_interest` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_interest` decimal(60,2) DEFAULT NULL,
  `gob_oversease_training` decimal(60,2) DEFAULT NULL,
  `rpa_oversease_training` decimal(60,2) DEFAULT NULL,
  `others_rpa_oversease_training` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_oversease_training` decimal(60,2) DEFAULT NULL,
  `gob_internal_training` decimal(60,2) DEFAULT NULL,
  `rpa_internal_training` decimal(60,2) DEFAULT NULL,
  `others_rpa_internal_training` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_internal_training` decimal(60,2) DEFAULT NULL,
  `gob_internal_transport` decimal(60,2) DEFAULT NULL,
  `rpa_internal_transport` decimal(60,2) DEFAULT NULL,
  `others_rpa_internal_transport` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_internal_transport` decimal(60,2) DEFAULT NULL,
  `gob_petrol_lubricant` decimal(60,2) DEFAULT NULL,
  `rpa_petrol_lubricant` decimal(60,2) DEFAULT NULL,
  `others_rpa_petrol_lubricant` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_petrol_lubricant` decimal(60,2) DEFAULT NULL,
  `gob_fuel_and_gas` decimal(60,2) DEFAULT NULL,
  `rpa_fuel_and_gas` decimal(60,2) DEFAULT NULL,
  `others_rpa_fuel_and_gas` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_fuel_and_gas` decimal(60,2) DEFAULT NULL,
  `gob_publication` decimal(60,2) DEFAULT NULL,
  `rpa_publication` decimal(60,2) DEFAULT NULL,
  `others_rpa_publication` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_publication` decimal(60,2) DEFAULT NULL,
  `gob_stationary` decimal(60,2) DEFAULT NULL,
  `rpa_stationary` decimal(60,2) DEFAULT NULL,
  `others_rpa_stationary` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_stationary` decimal(60,2) DEFAULT NULL,
  `gob_purchase_used_product` decimal(60,2) DEFAULT NULL,
  `rpa_purchase_used_product` decimal(60,2) DEFAULT NULL,
  `others_rpa_purchase_used_product` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_purchase_used_product` decimal(60,2) DEFAULT NULL,
  `gob_raw_materials` decimal(60,2) DEFAULT NULL,
  `rpa_raw_materials` decimal(60,2) DEFAULT NULL,
  `others_rpa_raw_materials` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_raw_materials` decimal(60,2) DEFAULT NULL,
  `gob_consultancy` decimal(60,2) DEFAULT NULL,
  `rpa_consultancy` decimal(60,2) DEFAULT NULL,
  `others_rpa_consultancy` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_consultancy` decimal(60,2) DEFAULT NULL,
  `gob_survey` decimal(60,2) DEFAULT NULL,
  `rpa_survey` decimal(60,2) DEFAULT NULL,
  `others_rpa_survey` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_survey` decimal(60,2) DEFAULT NULL,
  `gob_honorarium` decimal(60,2) DEFAULT NULL,
  `rpa_honorarium` decimal(60,2) DEFAULT NULL,
  `others_rpa_honorarium` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_honorarium` decimal(60,2) DEFAULT NULL,
  `gob_vehicle_repair` decimal(60,2) DEFAULT NULL,
  `rpa_vehicle_repair` decimal(60,2) DEFAULT NULL,
  `others_rpa_vehicle_repair` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_vehicle_repair` decimal(60,2) DEFAULT NULL,
  `gob_furniture_repair` decimal(60,2) DEFAULT NULL,
  `rpa_furniture_repair` decimal(60,2) DEFAULT NULL,
  `others_rpa_furniture_repair` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_furniture_repair` decimal(60,2) DEFAULT NULL,
  `gob_office_utilities_repair` decimal(60,2) DEFAULT NULL,
  `rpa_office_utilities_repair` decimal(60,2) DEFAULT NULL,
  `others_rpa_office_utilities_repair` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_office_utilities_repair` decimal(60,2) DEFAULT NULL,
  `gob_other_service_exp` decimal(60,2) DEFAULT NULL,
  `rpa_other_service_exp` decimal(60,2) DEFAULT NULL,
  `others_rpa_other_service_exp` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_other_service_exp` decimal(60,2) DEFAULT NULL,
  `gob_vat` decimal(60,2) DEFAULT NULL,
  `rpa_vat` decimal(60,2) DEFAULT NULL,
  `others_rpa_vat` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_vat` decimal(60,2) DEFAULT NULL,
  `gob_stock_allocation` decimal(60,2) DEFAULT NULL,
  `rpa_stock_allocation` decimal(60,2) DEFAULT NULL,
  `others_rpa_stock_allocation` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_stock_allocation` decimal(60,2) DEFAULT NULL,
  `gob_non_financial_asset` decimal(60,2) DEFAULT NULL,
  `rpa_non_financial_asset` decimal(60,2) DEFAULT NULL,
  `others_rpa_non_financial_asset` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_non_financial_asset` decimal(60,2) DEFAULT NULL,
  `gob_vehicle` decimal(60,2) DEFAULT NULL,
  `rpa_vehicle` decimal(60,2) DEFAULT NULL,
  `others_rpa_vehicle` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_vehicle` decimal(60,2) DEFAULT NULL,
  `gob_computer_utilites` decimal(60,2) DEFAULT NULL,
  `rpa_computer_utilites` decimal(60,2) DEFAULT NULL,
  `others_rpa_computer_utilites` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_computer_utilites` decimal(60,2) DEFAULT NULL,
  `gob_tel_utilities` decimal(60,2) DEFAULT NULL,
  `rpa_tel_utilities` decimal(60,2) DEFAULT NULL,
  `others_rpa_tel_utilities` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_tel_utilities` decimal(60,2) DEFAULT NULL,
  `gob_ohter_utilities` decimal(60,2) DEFAULT NULL,
  `rpa_ohter_utilities` decimal(60,2) DEFAULT NULL,
  `others_rpa_ohter_utilities` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_ohter_utilities` decimal(60,2) DEFAULT NULL,
  `gob_furniture` decimal(60,2) DEFAULT NULL,
  `rpa_furniture` decimal(60,2) DEFAULT NULL,
  `others_rpa_furniture` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_furniture` decimal(60,2) DEFAULT NULL,
  `gob_office_utilities` decimal(60,2) DEFAULT NULL,
  `rpa_office_utilities` decimal(60,2) DEFAULT NULL,
  `others_rpa_office_utilities` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_office_utilities` decimal(60,2) DEFAULT NULL,
  `gob_software` decimal(60,2) DEFAULT NULL,
  `rpa_software` decimal(60,2) DEFAULT NULL,
  `others_rpa_software` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_software` decimal(60,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accounts_pcmu`
--

CREATE TABLE `tbl_accounts_pcmu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fiscal_year` char(255) DEFAULT NULL,
  `gob_officer_salary` decimal(60,2) DEFAULT NULL,
  `rpa_officer_salary` decimal(60,2) DEFAULT NULL,
  `others_rpa_officer_salary` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_officer_salary` decimal(60,2) DEFAULT NULL,
  `gob_other_official_salary` decimal(60,2) DEFAULT NULL,
  `rpa_other_official_salary` decimal(60,2) DEFAULT NULL,
  `others_rpa_other_official_salary` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_other_official_salary` decimal(60,2) DEFAULT NULL,
  `gob_transport` decimal(60,2) DEFAULT NULL,
  `rpa_transport` decimal(60,2) DEFAULT NULL,
  `others_rpa_transport` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_transport` decimal(60,2) DEFAULT NULL,
  `gob_education_allow` decimal(60,2) DEFAULT NULL,
  `rpa_education_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_education_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_education_allow` decimal(60,2) DEFAULT NULL,
  `gob_home_allow` decimal(60,2) DEFAULT NULL,
  `rpa_home_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_home_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_home_allow` decimal(60,2) DEFAULT NULL,
  `gob_medical_allow` decimal(60,2) DEFAULT NULL,
  `rpa_medical_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_medical_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_medical_allow` decimal(60,2) DEFAULT NULL,
  `gob_tiffin_allow` decimal(60,2) DEFAULT NULL,
  `rpa_tiffin_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_tiffin_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_tiffin_allow` decimal(60,2) DEFAULT NULL,
  `gob_festival_allow` decimal(60,2) DEFAULT NULL,
  `rpa_festival_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_festival_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_festival_allow` decimal(60,2) DEFAULT NULL,
  `gob_sranti_allow` decimal(60,2) DEFAULT NULL,
  `rpa_sranti_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_sranti_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_sranti_allow` decimal(60,2) DEFAULT NULL,
  `gob_complimentary_allow` decimal(60,2) DEFAULT NULL,
  `rpa_complimentary_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_complimentary_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_complimentary_allow` decimal(60,2) DEFAULT NULL,
  `gob_other_allow` decimal(60,2) DEFAULT NULL,
  `rpa_other_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_other_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_other_allow` decimal(60,2) DEFAULT NULL,
  `gob_overtime_allow` decimal(60,2) DEFAULT NULL,
  `rpa_overtime_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_overtime_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_overtime_allow` decimal(60,2) DEFAULT NULL,
  `gob_compliments` decimal(60,2) DEFAULT NULL,
  `rpa_compliments` decimal(60,2) DEFAULT NULL,
  `others_rpa_compliments` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_compliments` decimal(60,2) DEFAULT NULL,
  `gob_seminar` decimal(60,2) DEFAULT NULL,
  `rpa_seminar` decimal(60,2) DEFAULT NULL,
  `others_rpa_seminar` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_seminar` decimal(60,2) DEFAULT NULL,
  `gob_others_expenditure` decimal(60,2) DEFAULT NULL,
  `rpa_others_expenditure` decimal(60,2) DEFAULT NULL,
  `others_rpa_others_expenditure` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_others_expenditure` decimal(60,2) DEFAULT NULL,
  `gob_post` decimal(60,2) DEFAULT NULL,
  `rpa_post` decimal(60,2) DEFAULT NULL,
  `others_rpa_post` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_post` decimal(60,2) DEFAULT NULL,
  `gob_fax` decimal(60,2) DEFAULT NULL,
  `rpa_fax` decimal(60,2) DEFAULT NULL,
  `others_rpa_fax` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_fax` decimal(60,2) DEFAULT NULL,
  `gob_telephone` decimal(60,2) DEFAULT NULL,
  `rpa_telephone` decimal(60,2) DEFAULT NULL,
  `others_rpa_telephone` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_telephone` decimal(60,2) DEFAULT NULL,
  `gob_advertising` decimal(60,2) DEFAULT NULL,
  `rpa_advertising` decimal(60,2) DEFAULT NULL,
  `others_rpa_advertising` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_advertising` decimal(60,2) DEFAULT NULL,
  `gob_film_making` decimal(60,2) DEFAULT NULL,
  `rpa_film_making` decimal(60,2) DEFAULT NULL,
  `others_rpa_film_making` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_film_making` decimal(60,2) DEFAULT NULL,
  `gob_book` decimal(60,2) DEFAULT NULL,
  `rpa_book` decimal(60,2) DEFAULT NULL,
  `others_rpa_book` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_book` decimal(60,2) DEFAULT NULL,
  `gob_office_rent` decimal(60,2) DEFAULT NULL,
  `rpa_office_rent` decimal(60,2) DEFAULT NULL,
  `others_rpa_office_rent` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_office_rent` decimal(60,2) DEFAULT NULL,
  `gob_reg_fee` decimal(60,2) DEFAULT NULL,
  `rpa_reg_fee` decimal(60,2) DEFAULT NULL,
  `others_rpa_reg_fee` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_reg_fee` decimal(60,2) DEFAULT NULL,
  `gob_bank_charge` decimal(60,2) DEFAULT NULL,
  `rpa_bank_charge` decimal(60,2) DEFAULT NULL,
  `others_rpa_bank_charge` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_bank_charge` decimal(60,2) DEFAULT NULL,
  `gob_interest` decimal(60,2) DEFAULT NULL,
  `rpa_interest` decimal(60,2) DEFAULT NULL,
  `others_rpa_interest` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_interest` decimal(60,2) DEFAULT NULL,
  `gob_oversease_training` decimal(60,2) DEFAULT NULL,
  `rpa_oversease_training` decimal(60,2) DEFAULT NULL,
  `others_rpa_oversease_training` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_oversease_training` decimal(60,2) DEFAULT NULL,
  `gob_internal_training` decimal(60,2) DEFAULT NULL,
  `rpa_internal_training` decimal(60,2) DEFAULT NULL,
  `others_rpa_internal_training` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_internal_training` decimal(60,2) DEFAULT NULL,
  `gob_internal_transport` decimal(60,2) DEFAULT NULL,
  `rpa_internal_transport` decimal(60,2) DEFAULT NULL,
  `others_rpa_internal_transport` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_internal_transport` decimal(60,2) DEFAULT NULL,
  `gob_petrol_lubricant` decimal(60,2) DEFAULT NULL,
  `rpa_petrol_lubricant` decimal(60,2) DEFAULT NULL,
  `others_rpa_petrol_lubricant` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_petrol_lubricant` decimal(60,2) DEFAULT NULL,
  `gob_fuel_and_gas` decimal(60,2) DEFAULT NULL,
  `rpa_fuel_and_gas` decimal(60,2) DEFAULT NULL,
  `others_rpa_fuel_and_gas` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_fuel_and_gas` decimal(60,2) DEFAULT NULL,
  `gob_publication` decimal(60,2) DEFAULT NULL,
  `rpa_publication` decimal(60,2) DEFAULT NULL,
  `others_rpa_publication` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_publication` decimal(60,2) DEFAULT NULL,
  `gob_stationary` decimal(60,2) DEFAULT NULL,
  `rpa_stationary` decimal(60,2) DEFAULT NULL,
  `others_rpa_stationary` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_stationary` decimal(60,2) DEFAULT NULL,
  `gob_purchase_used_product` decimal(60,2) DEFAULT NULL,
  `rpa_purchase_used_product` decimal(60,2) DEFAULT NULL,
  `others_rpa_purchase_used_product` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_purchase_used_product` decimal(60,2) DEFAULT NULL,
  `gob_raw_materials` decimal(60,2) DEFAULT NULL,
  `rpa_raw_materials` decimal(60,2) DEFAULT NULL,
  `others_rpa_raw_materials` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_raw_materials` decimal(60,2) DEFAULT NULL,
  `gob_consultancy` decimal(60,2) DEFAULT NULL,
  `rpa_consultancy` decimal(60,2) DEFAULT NULL,
  `others_rpa_consultancy` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_consultancy` decimal(60,2) DEFAULT NULL,
  `gob_survey` decimal(60,2) DEFAULT NULL,
  `rpa_survey` decimal(60,2) DEFAULT NULL,
  `others_rpa_survey` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_survey` decimal(60,2) DEFAULT NULL,
  `gob_honorarium` decimal(60,2) DEFAULT NULL,
  `rpa_honorarium` decimal(60,2) DEFAULT NULL,
  `others_rpa_honorarium` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_honorarium` decimal(60,2) DEFAULT NULL,
  `gob_vehicle_repair` decimal(60,2) DEFAULT NULL,
  `rpa_vehicle_repair` decimal(60,2) DEFAULT NULL,
  `others_rpa_vehicle_repair` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_vehicle_repair` decimal(60,2) DEFAULT NULL,
  `gob_furniture_repair` decimal(60,2) DEFAULT NULL,
  `rpa_furniture_repair` decimal(60,2) DEFAULT NULL,
  `others_rpa_furniture_repair` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_furniture_repair` decimal(60,2) DEFAULT NULL,
  `gob_office_utilities_repair` decimal(60,2) DEFAULT NULL,
  `rpa_office_utilities_repair` decimal(60,2) DEFAULT NULL,
  `others_rpa_office_utilities_repair` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_office_utilities_repair` decimal(60,2) DEFAULT NULL,
  `gob_other_service_exp` decimal(60,2) DEFAULT NULL,
  `rpa_other_service_exp` decimal(60,2) DEFAULT NULL,
  `others_rpa_other_service_exp` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_other_service_exp` decimal(60,2) DEFAULT NULL,
  `gob_vat` decimal(60,2) DEFAULT NULL,
  `rpa_vat` decimal(60,2) DEFAULT NULL,
  `others_rpa_vat` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_vat` decimal(60,2) DEFAULT NULL,
  `gob_stock_allocation` decimal(60,2) DEFAULT NULL,
  `rpa_stock_allocation` decimal(60,2) DEFAULT NULL,
  `others_rpa_stock_allocation` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_stock_allocation` decimal(60,2) DEFAULT NULL,
  `gob_non_financial_asset` decimal(60,2) DEFAULT NULL,
  `rpa_non_financial_asset` decimal(60,2) DEFAULT NULL,
  `others_rpa_non_financial_asset` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_non_financial_asset` decimal(60,2) DEFAULT NULL,
  `gob_vehicle` decimal(60,2) DEFAULT NULL,
  `rpa_vehicle` decimal(60,2) DEFAULT NULL,
  `others_rpa_vehicle` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_vehicle` decimal(60,2) DEFAULT NULL,
  `gob_computer_utilites` decimal(60,2) DEFAULT NULL,
  `rpa_computer_utilites` decimal(60,2) DEFAULT NULL,
  `others_rpa_computer_utilites` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_computer_utilites` decimal(60,2) DEFAULT NULL,
  `gob_tel_utilities` decimal(60,2) DEFAULT NULL,
  `rpa_tel_utilities` decimal(60,2) DEFAULT NULL,
  `others_rpa_tel_utilities` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_tel_utilities` decimal(60,2) DEFAULT NULL,
  `gob_ohter_utilities` decimal(60,2) DEFAULT NULL,
  `rpa_ohter_utilities` decimal(60,2) DEFAULT NULL,
  `others_rpa_ohter_utilities` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_ohter_utilities` decimal(60,2) DEFAULT NULL,
  `gob_furniture` decimal(60,2) DEFAULT NULL,
  `rpa_furniture` decimal(60,2) DEFAULT NULL,
  `others_rpa_furniture` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_furniture` decimal(60,2) DEFAULT NULL,
  `gob_office_utilities` decimal(60,2) DEFAULT NULL,
  `rpa_office_utilities` decimal(60,2) DEFAULT NULL,
  `others_rpa_office_utilities` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_office_utilities` decimal(60,2) DEFAULT NULL,
  `gob_software` decimal(60,2) DEFAULT NULL,
  `rpa_software` decimal(60,2) DEFAULT NULL,
  `others_rpa_software` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_software` decimal(60,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_accounts_pcmu`
--

INSERT INTO `tbl_accounts_pcmu` (`id`, `fiscal_year`, `gob_officer_salary`, `rpa_officer_salary`, `others_rpa_officer_salary`, `others_without_rpa_officer_salary`, `gob_other_official_salary`, `rpa_other_official_salary`, `others_rpa_other_official_salary`, `others_without_rpa_other_official_salary`, `gob_transport`, `rpa_transport`, `others_rpa_transport`, `others_without_rpa_transport`, `gob_education_allow`, `rpa_education_allow`, `others_rpa_education_allow`, `others_without_rpa_education_allow`, `gob_home_allow`, `rpa_home_allow`, `others_rpa_home_allow`, `others_without_rpa_home_allow`, `gob_medical_allow`, `rpa_medical_allow`, `others_rpa_medical_allow`, `others_without_rpa_medical_allow`, `gob_tiffin_allow`, `rpa_tiffin_allow`, `others_rpa_tiffin_allow`, `others_without_rpa_tiffin_allow`, `gob_festival_allow`, `rpa_festival_allow`, `others_rpa_festival_allow`, `others_without_rpa_festival_allow`, `gob_sranti_allow`, `rpa_sranti_allow`, `others_rpa_sranti_allow`, `others_without_rpa_sranti_allow`, `gob_complimentary_allow`, `rpa_complimentary_allow`, `others_rpa_complimentary_allow`, `others_without_rpa_complimentary_allow`, `gob_other_allow`, `rpa_other_allow`, `others_rpa_other_allow`, `others_without_rpa_other_allow`, `gob_overtime_allow`, `rpa_overtime_allow`, `others_rpa_overtime_allow`, `others_without_rpa_overtime_allow`, `gob_compliments`, `rpa_compliments`, `others_rpa_compliments`, `others_without_rpa_compliments`, `gob_seminar`, `rpa_seminar`, `others_rpa_seminar`, `others_without_rpa_seminar`, `gob_others_expenditure`, `rpa_others_expenditure`, `others_rpa_others_expenditure`, `others_without_rpa_others_expenditure`, `gob_post`, `rpa_post`, `others_rpa_post`, `others_without_rpa_post`, `gob_fax`, `rpa_fax`, `others_rpa_fax`, `others_without_rpa_fax`, `gob_telephone`, `rpa_telephone`, `others_rpa_telephone`, `others_without_rpa_telephone`, `gob_advertising`, `rpa_advertising`, `others_rpa_advertising`, `others_without_rpa_advertising`, `gob_film_making`, `rpa_film_making`, `others_rpa_film_making`, `others_without_rpa_film_making`, `gob_book`, `rpa_book`, `others_rpa_book`, `others_without_rpa_book`, `gob_office_rent`, `rpa_office_rent`, `others_rpa_office_rent`, `others_without_rpa_office_rent`, `gob_reg_fee`, `rpa_reg_fee`, `others_rpa_reg_fee`, `others_without_rpa_reg_fee`, `gob_bank_charge`, `rpa_bank_charge`, `others_rpa_bank_charge`, `others_without_rpa_bank_charge`, `gob_interest`, `rpa_interest`, `others_rpa_interest`, `others_without_rpa_interest`, `gob_oversease_training`, `rpa_oversease_training`, `others_rpa_oversease_training`, `others_without_rpa_oversease_training`, `gob_internal_training`, `rpa_internal_training`, `others_rpa_internal_training`, `others_without_rpa_internal_training`, `gob_internal_transport`, `rpa_internal_transport`, `others_rpa_internal_transport`, `others_without_rpa_internal_transport`, `gob_petrol_lubricant`, `rpa_petrol_lubricant`, `others_rpa_petrol_lubricant`, `others_without_rpa_petrol_lubricant`, `gob_fuel_and_gas`, `rpa_fuel_and_gas`, `others_rpa_fuel_and_gas`, `others_without_rpa_fuel_and_gas`, `gob_publication`, `rpa_publication`, `others_rpa_publication`, `others_without_rpa_publication`, `gob_stationary`, `rpa_stationary`, `others_rpa_stationary`, `others_without_rpa_stationary`, `gob_purchase_used_product`, `rpa_purchase_used_product`, `others_rpa_purchase_used_product`, `others_without_rpa_purchase_used_product`, `gob_raw_materials`, `rpa_raw_materials`, `others_rpa_raw_materials`, `others_without_rpa_raw_materials`, `gob_consultancy`, `rpa_consultancy`, `others_rpa_consultancy`, `others_without_rpa_consultancy`, `gob_survey`, `rpa_survey`, `others_rpa_survey`, `others_without_rpa_survey`, `gob_honorarium`, `rpa_honorarium`, `others_rpa_honorarium`, `others_without_rpa_honorarium`, `gob_vehicle_repair`, `rpa_vehicle_repair`, `others_rpa_vehicle_repair`, `others_without_rpa_vehicle_repair`, `gob_furniture_repair`, `rpa_furniture_repair`, `others_rpa_furniture_repair`, `others_without_rpa_furniture_repair`, `gob_office_utilities_repair`, `rpa_office_utilities_repair`, `others_rpa_office_utilities_repair`, `others_without_rpa_office_utilities_repair`, `gob_other_service_exp`, `rpa_other_service_exp`, `others_rpa_other_service_exp`, `others_without_rpa_other_service_exp`, `gob_vat`, `rpa_vat`, `others_rpa_vat`, `others_without_rpa_vat`, `gob_stock_allocation`, `rpa_stock_allocation`, `others_rpa_stock_allocation`, `others_without_rpa_stock_allocation`, `gob_non_financial_asset`, `rpa_non_financial_asset`, `others_rpa_non_financial_asset`, `others_without_rpa_non_financial_asset`, `gob_vehicle`, `rpa_vehicle`, `others_rpa_vehicle`, `others_without_rpa_vehicle`, `gob_computer_utilites`, `rpa_computer_utilites`, `others_rpa_computer_utilites`, `others_without_rpa_computer_utilites`, `gob_tel_utilities`, `rpa_tel_utilities`, `others_rpa_tel_utilities`, `others_without_rpa_tel_utilities`, `gob_ohter_utilities`, `rpa_ohter_utilities`, `others_rpa_ohter_utilities`, `others_without_rpa_ohter_utilities`, `gob_furniture`, `rpa_furniture`, `others_rpa_furniture`, `others_without_rpa_furniture`, `gob_office_utilities`, `rpa_office_utilities`, `others_rpa_office_utilities`, `others_without_rpa_office_utilities`, `gob_software`, `rpa_software`, `others_rpa_software`, `others_without_rpa_software`, `created_at`, `updated_at`) VALUES
(1, '2018-19', '2345.00', '678.00', '111.00', '234.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2019-02-26 11:07:00', NULL),
(3, '2001-02', '2345.00', '678.00', '111.00', '234.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-26 12:17:01', NULL),
(4, '2016-17', '2345.00', '67.00', '789.23', '123.00', '345.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2019-02-26 12:22:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accounts_rajuk`
--

CREATE TABLE `tbl_accounts_rajuk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fiscal_year` char(255) DEFAULT NULL,
  `gob_officer_salary` decimal(60,2) DEFAULT NULL,
  `rpa_officer_salary` decimal(60,2) DEFAULT NULL,
  `others_rpa_officer_salary` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_officer_salary` decimal(60,2) DEFAULT NULL,
  `gob_other_official_salary` decimal(60,2) DEFAULT NULL,
  `rpa_other_official_salary` decimal(60,2) DEFAULT NULL,
  `others_rpa_other_official_salary` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_other_official_salary` decimal(60,2) DEFAULT NULL,
  `gob_transport` decimal(60,2) DEFAULT NULL,
  `rpa_transport` decimal(60,2) DEFAULT NULL,
  `others_rpa_transport` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_transport` decimal(60,2) DEFAULT NULL,
  `gob_education_allow` decimal(60,2) DEFAULT NULL,
  `rpa_education_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_education_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_education_allow` decimal(60,2) DEFAULT NULL,
  `gob_home_allow` decimal(60,2) DEFAULT NULL,
  `rpa_home_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_home_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_home_allow` decimal(60,2) DEFAULT NULL,
  `gob_medical_allow` decimal(60,2) DEFAULT NULL,
  `rpa_medical_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_medical_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_medical_allow` decimal(60,2) DEFAULT NULL,
  `gob_tiffin_allow` decimal(60,2) DEFAULT NULL,
  `rpa_tiffin_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_tiffin_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_tiffin_allow` decimal(60,2) DEFAULT NULL,
  `gob_festival_allow` decimal(60,2) DEFAULT NULL,
  `rpa_festival_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_festival_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_festival_allow` decimal(60,2) DEFAULT NULL,
  `gob_sranti_allow` decimal(60,2) DEFAULT NULL,
  `rpa_sranti_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_sranti_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_sranti_allow` decimal(60,2) DEFAULT NULL,
  `gob_complimentary_allow` decimal(60,2) DEFAULT NULL,
  `rpa_complimentary_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_complimentary_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_complimentary_allow` decimal(60,2) DEFAULT NULL,
  `gob_other_allow` decimal(60,2) DEFAULT NULL,
  `rpa_other_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_other_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_other_allow` decimal(60,2) DEFAULT NULL,
  `gob_overtime_allow` decimal(60,2) DEFAULT NULL,
  `rpa_overtime_allow` decimal(60,2) DEFAULT NULL,
  `others_rpa_overtime_allow` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_overtime_allow` decimal(60,2) DEFAULT NULL,
  `gob_compliments` decimal(60,2) DEFAULT NULL,
  `rpa_compliments` decimal(60,2) DEFAULT NULL,
  `others_rpa_compliments` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_compliments` decimal(60,2) DEFAULT NULL,
  `gob_seminar` decimal(60,2) DEFAULT NULL,
  `rpa_seminar` decimal(60,2) DEFAULT NULL,
  `others_rpa_seminar` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_seminar` decimal(60,2) DEFAULT NULL,
  `gob_others_expenditure` decimal(60,2) DEFAULT NULL,
  `rpa_others_expenditure` decimal(60,2) DEFAULT NULL,
  `others_rpa_others_expenditure` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_others_expenditure` decimal(60,2) DEFAULT NULL,
  `gob_post` decimal(60,2) DEFAULT NULL,
  `rpa_post` decimal(60,2) DEFAULT NULL,
  `others_rpa_post` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_post` decimal(60,2) DEFAULT NULL,
  `gob_fax` decimal(60,2) DEFAULT NULL,
  `rpa_fax` decimal(60,2) DEFAULT NULL,
  `others_rpa_fax` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_fax` decimal(60,2) DEFAULT NULL,
  `gob_telephone` decimal(60,2) DEFAULT NULL,
  `rpa_telephone` decimal(60,2) DEFAULT NULL,
  `others_rpa_telephone` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_telephone` decimal(60,2) DEFAULT NULL,
  `gob_advertising` decimal(60,2) DEFAULT NULL,
  `rpa_advertising` decimal(60,2) DEFAULT NULL,
  `others_rpa_advertising` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_advertising` decimal(60,2) DEFAULT NULL,
  `gob_film_making` decimal(60,2) DEFAULT NULL,
  `rpa_film_making` decimal(60,2) DEFAULT NULL,
  `others_rpa_film_making` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_film_making` decimal(60,2) DEFAULT NULL,
  `gob_book` decimal(60,2) DEFAULT NULL,
  `rpa_book` decimal(60,2) DEFAULT NULL,
  `others_rpa_book` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_book` decimal(60,2) DEFAULT NULL,
  `gob_office_rent` decimal(60,2) DEFAULT NULL,
  `rpa_office_rent` decimal(60,2) DEFAULT NULL,
  `others_rpa_office_rent` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_office_rent` decimal(60,2) DEFAULT NULL,
  `gob_reg_fee` decimal(60,2) DEFAULT NULL,
  `rpa_reg_fee` decimal(60,2) DEFAULT NULL,
  `others_rpa_reg_fee` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_reg_fee` decimal(60,2) DEFAULT NULL,
  `gob_bank_charge` decimal(60,2) DEFAULT NULL,
  `rpa_bank_charge` decimal(60,2) DEFAULT NULL,
  `others_rpa_bank_charge` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_bank_charge` decimal(60,2) DEFAULT NULL,
  `gob_interest` decimal(60,2) DEFAULT NULL,
  `rpa_interest` decimal(60,2) DEFAULT NULL,
  `others_rpa_interest` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_interest` decimal(60,2) DEFAULT NULL,
  `gob_oversease_training` decimal(60,2) DEFAULT NULL,
  `rpa_oversease_training` decimal(60,2) DEFAULT NULL,
  `others_rpa_oversease_training` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_oversease_training` decimal(60,2) DEFAULT NULL,
  `gob_internal_training` decimal(60,2) DEFAULT NULL,
  `rpa_internal_training` decimal(60,2) DEFAULT NULL,
  `others_rpa_internal_training` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_internal_training` decimal(60,2) DEFAULT NULL,
  `gob_internal_transport` decimal(60,2) DEFAULT NULL,
  `rpa_internal_transport` decimal(60,2) DEFAULT NULL,
  `others_rpa_internal_transport` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_internal_transport` decimal(60,2) DEFAULT NULL,
  `gob_petrol_lubricant` decimal(60,2) DEFAULT NULL,
  `rpa_petrol_lubricant` decimal(60,2) DEFAULT NULL,
  `others_rpa_petrol_lubricant` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_petrol_lubricant` decimal(60,2) DEFAULT NULL,
  `gob_fuel_and_gas` decimal(60,2) DEFAULT NULL,
  `rpa_fuel_and_gas` decimal(60,2) DEFAULT NULL,
  `others_rpa_fuel_and_gas` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_fuel_and_gas` decimal(60,2) DEFAULT NULL,
  `gob_publication` decimal(60,2) DEFAULT NULL,
  `rpa_publication` decimal(60,2) DEFAULT NULL,
  `others_rpa_publication` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_publication` decimal(60,2) DEFAULT NULL,
  `gob_stationary` decimal(60,2) DEFAULT NULL,
  `rpa_stationary` decimal(60,2) DEFAULT NULL,
  `others_rpa_stationary` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_stationary` decimal(60,2) DEFAULT NULL,
  `gob_purchase_used_product` decimal(60,2) DEFAULT NULL,
  `rpa_purchase_used_product` decimal(60,2) DEFAULT NULL,
  `others_rpa_purchase_used_product` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_purchase_used_product` decimal(60,2) DEFAULT NULL,
  `gob_raw_materials` decimal(60,2) DEFAULT NULL,
  `rpa_raw_materials` decimal(60,2) DEFAULT NULL,
  `others_rpa_raw_materials` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_raw_materials` decimal(60,2) DEFAULT NULL,
  `gob_consultancy` decimal(60,2) DEFAULT NULL,
  `rpa_consultancy` decimal(60,2) DEFAULT NULL,
  `others_rpa_consultancy` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_consultancy` decimal(60,2) DEFAULT NULL,
  `gob_survey` decimal(60,2) DEFAULT NULL,
  `rpa_survey` decimal(60,2) DEFAULT NULL,
  `others_rpa_survey` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_survey` decimal(60,2) DEFAULT NULL,
  `gob_honorarium` decimal(60,2) DEFAULT NULL,
  `rpa_honorarium` decimal(60,2) DEFAULT NULL,
  `others_rpa_honorarium` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_honorarium` decimal(60,2) DEFAULT NULL,
  `gob_vehicle_repair` decimal(60,2) DEFAULT NULL,
  `rpa_vehicle_repair` decimal(60,2) DEFAULT NULL,
  `others_rpa_vehicle_repair` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_vehicle_repair` decimal(60,2) DEFAULT NULL,
  `gob_furniture_repair` decimal(60,2) DEFAULT NULL,
  `rpa_furniture_repair` decimal(60,2) DEFAULT NULL,
  `others_rpa_furniture_repair` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_furniture_repair` decimal(60,2) DEFAULT NULL,
  `gob_office_utilities_repair` decimal(60,2) DEFAULT NULL,
  `rpa_office_utilities_repair` decimal(60,2) DEFAULT NULL,
  `others_rpa_office_utilities_repair` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_office_utilities_repair` decimal(60,2) DEFAULT NULL,
  `gob_other_service_exp` decimal(60,2) DEFAULT NULL,
  `rpa_other_service_exp` decimal(60,2) DEFAULT NULL,
  `others_rpa_other_service_exp` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_other_service_exp` decimal(60,2) DEFAULT NULL,
  `gob_vat` decimal(60,2) DEFAULT NULL,
  `rpa_vat` decimal(60,2) DEFAULT NULL,
  `others_rpa_vat` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_vat` decimal(60,2) DEFAULT NULL,
  `gob_stock_allocation` decimal(60,2) DEFAULT NULL,
  `rpa_stock_allocation` decimal(60,2) DEFAULT NULL,
  `others_rpa_stock_allocation` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_stock_allocation` decimal(60,2) DEFAULT NULL,
  `gob_non_financial_asset` decimal(60,2) DEFAULT NULL,
  `rpa_non_financial_asset` decimal(60,2) DEFAULT NULL,
  `others_rpa_non_financial_asset` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_non_financial_asset` decimal(60,2) DEFAULT NULL,
  `gob_vehicle` decimal(60,2) DEFAULT NULL,
  `rpa_vehicle` decimal(60,2) DEFAULT NULL,
  `others_rpa_vehicle` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_vehicle` decimal(60,2) DEFAULT NULL,
  `gob_computer_utilites` decimal(60,2) DEFAULT NULL,
  `rpa_computer_utilites` decimal(60,2) DEFAULT NULL,
  `others_rpa_computer_utilites` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_computer_utilites` decimal(60,2) DEFAULT NULL,
  `gob_tel_utilities` decimal(60,2) DEFAULT NULL,
  `rpa_tel_utilities` decimal(60,2) DEFAULT NULL,
  `others_rpa_tel_utilities` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_tel_utilities` decimal(60,2) DEFAULT NULL,
  `gob_ohter_utilities` decimal(60,2) DEFAULT NULL,
  `rpa_ohter_utilities` decimal(60,2) DEFAULT NULL,
  `others_rpa_ohter_utilities` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_ohter_utilities` decimal(60,2) DEFAULT NULL,
  `gob_furniture` decimal(60,2) DEFAULT NULL,
  `rpa_furniture` decimal(60,2) DEFAULT NULL,
  `others_rpa_furniture` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_furniture` decimal(60,2) DEFAULT NULL,
  `gob_office_utilities` decimal(60,2) DEFAULT NULL,
  `rpa_office_utilities` decimal(60,2) DEFAULT NULL,
  `others_rpa_office_utilities` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_office_utilities` decimal(60,2) DEFAULT NULL,
  `gob_software` decimal(60,2) DEFAULT NULL,
  `rpa_software` decimal(60,2) DEFAULT NULL,
  `others_rpa_software` decimal(60,2) DEFAULT NULL,
  `others_without_rpa_software` decimal(60,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ci_sessions`
--

CREATE TABLE `tbl_ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_ci_sessions`
--

INSERT INTO `tbl_ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('aoedmv8dn28rcmokmj3g3sk23rmfnhkd', '::1', 1552206318, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323230363331383b),
('o69rr3panfqrbmkgkphr4ohh3k2g22vh', '::1', 1552206797, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323230363739373b),
('guft5tte19pijrcd2dfe0jrdhvmbfonf', '::1', 1552207540, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323230373534303b),
('co6hmljnbjt2q4s0c2skhigalhbrdtn1', '::1', 1552209054, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323230393035343b),
('8fmfj37gg3slqt7e1gejm4k5s60djlbe', '::1', 1552211209, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323231313230393b),
('frci6foqe35sbg18tv4kq5fsteb2edr2', '::1', 1552211560, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323231313536303b),
('9j3o9e2v0r2pab4sd0m2h4mug6p563fa', '::1', 1552212059, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323231323035393b),
('eamnhi8j1fuenfnijnokdetd9m68o049', '::1', 1552212583, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323231323538333b),
('f2jkka2debo098n74tanil79lo26k7eg', '::1', 1552212885, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323231323838353b),
('2np9pg4j6o4j97od0sghiqk2bh7os91h', '::1', 1552213212, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323231333231323b),
('8qefvms2ljuk3jfeothugb52vk0rn49i', '::1', 1552213879, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323231333837393b),
('v681l93ffq6uhbqqun9b7oqqt8t89cnb', '::1', 1552214244, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323231343234343b),
('6vtq7fvkruah84c7bgme8hru44al9chv', '::1', 1552214705, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323231343730353b),
('ddbk6tc82hcemisus2ph2895j86eecnj', '::1', 1552215050, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323231353035303b),
('6pl85c7qoc26aruhsckvdcilthn9b4av', '::1', 1552216367, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323231363336373b),
('u3o5ohqhqrk6c1qd6a4lhqfobpq61ceo', '::1', 1552217969, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323231373936393b),
('lgjruevec6f5c765vvt56r94b2ppftar', '::1', 1552217969, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323231373936393b),
('ofe0nohuf2d96d6rjg6m9f6ejc33nu53', '::1', 1552278279, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323237383237393b),
('8cppjoh95ls8ee69qkf8emoesb6nbfvr', '::1', 1552279080, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323237393038303b),
('i3epvi35nbicbk5m6kmf47i096fs4lp0', '::1', 1552282240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323238323234303b),
('h72akhuvm0imor28rt4pph261qi4h93v', '::1', 1552283153, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323238333135333b),
('4ulmrnsl73jcqjof88vv6iblif38eq2d', '::1', 1552283640, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323238333634303b),
('isaf0n2kpfdtqso62gp67lp4dup11esd', '::1', 1552284073, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323238343037333b),
('dfe6cjpj2j60ji085p672mis68mv1bn2', '::1', 1552284390, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323238343339303b),
('7t1hq4be5o63btasq9gbo59prhm99thc', '::1', 1552286559, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323238363535393b),
('aoe5hpgq8ivo93tfl6m5spsblq198udh', '::1', 1552286745, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323238363535393b),
('fvpauadtbm7eqeqrffg7pekofnn7ndfs', '::1', 1552299934, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323239393933343b),
('k1rqcu1b3eggett57l74pde36v9klqet', '::1', 1552301229, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323330313232393b),
('oh42enmaltetc9lv0614ft4201qr52o0', '::1', 1552302072, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323330323037323b),
('fdhmpf5nu8s9i6qb06tdg7m747ifk25r', '::1', 1552302477, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323330323437373b),
('65hoq3pjac0hrtubpr1co9ppp5r8a4ha', '::1', 1552302818, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323330323831383b),
('idi03mnas446588c971o3vf2n2aaqquf', '::1', 1552303656, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323330333635363b),
('l88o8tuiu10k60fom90d48mhg1fijokc', '::1', 1552304019, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323330343031393b),
('328ts1ntb88qpg9cuae050oc3vtl20n6', '::1', 1552304383, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323330343338333b),
('duc977s88nglsedufvu4ppaslen36rh7', '::1', 1552304596, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323330343338333b);

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
  `qty_nos` int(11) NOT NULL,
  `estimated_price` decimal(60,2) NOT NULL,
  `actual_contract_amount` decimal(60,2) NOT NULL,
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

--
-- Dumping data for table `tbl_data_collection_for_goods_contracts`
--

INSERT INTO `tbl_data_collection_for_goods_contracts` (`id`, `activity_id`, `contract_package_number`, `contract_description`, `unit`, `qty_nos`, `estimated_price`, `actual_contract_amount`, `procedure_method`, `procurement_guideline`, `prior_review`, `date_of_bid_opening_planned_date`, `date_of_bid_opening_actual_date`, `date_of_contract_signing_planned_date`, `date_of_contract_signing_actual_date`, `date_of_delivery_planned_date`, `date_of_delivery_actual_date`, `name_of_supplier`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 1, '324234', 'Contract Description', 12, 12, '3423423.00', '234234.00', 'Procedure method', 'PPA', 0, '2019-02-12', '2019-02-12', '2019-02-12', '2019-02-12', '2019-02-11', '2019-02-10', 'Name of supplier', 'Short Note', '2019-02-12 11:54:03', NULL),
(2, 1, '324234', 'Contract Description', 0, 12, '3423423.00', '234234.00', 'Procedure method', 'PPA', 0, '2019-02-11', '2019-02-13', '2019-02-12', '2019-02-12', '2019-02-11', '2019-02-07', 'Name of supplier', 'Short Note', '2019-02-13 12:20:30', NULL),
(3, 1, '', '', 0, 0, '0.00', '0.00', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '2019-03-07 08:59:03', NULL),
(4, 1, '', '', 0, 0, '0.00', '0.00', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '2019-03-07 09:01:12', NULL);

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

--
-- Dumping data for table `tbl_imed_basic_info`
--

INSERT INTO `tbl_imed_basic_info` (`id`, `project_title`, `ministry`, `division`, `agency`, `created_at`, `updated_at`) VALUES
(1, 'The Project Title', 1, 3, 5, '2019-01-21 18:16:28', NULL),
(2, 'The Project Title 2', 1, 3, 5, '2019-01-22 11:29:47', NULL),
(3, 'The project title 3', 1, 3, 7, '2019-01-24 15:18:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_imed_contract_implementation`
--

CREATE TABLE `tbl_imed_contract_implementation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imed_bi_id` bigint(20) UNSIGNED NOT NULL,
  `desc_of_contracts` text NOT NULL,
  `contract_value` decimal(60,2) NOT NULL,
  `date_of_work_order` date NOT NULL,
  `completion_date_as_per_contract` date NOT NULL,
  `amount_paid` decimal(60,2) NOT NULL,
  `physical` int(3) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_imed_contract_implementation`
--

INSERT INTO `tbl_imed_contract_implementation` (`id`, `imed_bi_id`, `desc_of_contracts`, `contract_value`, `date_of_work_order`, `completion_date_as_per_contract`, `amount_paid`, `physical`, `created_at`, `updated_at`) VALUES
(1, 1, 'Description of problem', '0.00', '2019-01-01', '2019-02-02', '100000.00', 100000, '2019-01-21 19:16:54', NULL),
(2, 2, 'Description of problem', '0.00', '2019-01-01', '2019-02-02', '100000.00', 100000, '2019-01-22 12:41:10', NULL),
(3, 3, 'Description of problem', '0.00', '2019-01-01', '2019-02-02', '100000.00', 100000, '2019-01-24 15:22:48', NULL);

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

--
-- Dumping data for table `tbl_imed_implementation_problems`
--

INSERT INTO `tbl_imed_implementation_problems` (`id`, `imed_bi_id`, `problem_type_id`, `if_other`, `desc_of_problem`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, 'Description of Problem', '2019-01-21 19:01:46', NULL),
(2, 2, 3, NULL, 'Description of Problem', '2019-01-22 11:44:17', NULL),
(3, 3, 5, NULL, 'Description of problem.........', '2019-01-24 15:20:43', NULL);

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

--
-- Dumping data for table `tbl_imed_implementation_problem_type`
--

INSERT INTO `tbl_imed_implementation_problem_type` (`id`, `problem_type`, `created_at`, `updated_at`) VALUES
(1, 'Approval Process', '2019-01-21 18:22:02', NULL),
(2, 'Procurement', '2019-01-21 18:22:02', NULL),
(3, 'Management', '2019-01-21 18:22:26', NULL),
(4, 'Fund Allocation/Release', '2019-01-21 18:22:26', NULL),
(5, 'Manpower Recruitment', '2019-01-21 18:23:11', NULL),
(6, 'Others (specify)', '2019-01-21 18:23:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_imed_project_declaration`
--

CREATE TABLE `tbl_imed_project_declaration` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imed_bi_id` bigint(20) UNSIGNED NOT NULL,
  `project_declaration` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_imed_project_declaration`
--

INSERT INTO `tbl_imed_project_declaration` (`id`, `imed_bi_id`, `project_declaration`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-01-21 13:01:46', NULL),
(2, 2, 1, '2019-01-22 05:44:17', NULL),
(3, 3, 2, '2019-01-24 09:20:43', NULL);

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

--
-- Dumping data for table `tbl_imed_quarterly_component_wise_progress`
--

INSERT INTO `tbl_imed_quarterly_component_wise_progress` (`id`, `imed_bi_id`, `name_of_the_component`, `unit`, `cmltv_progress_upto_qtty`, `cmltv_progress_upto_prcntg`, `cmltv_progress_upto_finance`, `yearly_target_qtty`, `yearly_target_prcntg`, `yearly_target_finance`, `prgrs_in_crnt_qrtr_qtty`, `prgrs_in_crnt_qrtr_prcntg`, `prgrs_in_crnt_qrtr_financial`, `crnt_yrs_prgrs_qtty`, `crnt_yrs_prgrs_prcntg`, `crnt_yrs_prgrs_financial`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 1, 'Component Name', 12, 1, 12, '123.00', 2, 23, '234.00', 3, 34, '345.00', 4, 45, '456.00', 'Short Note', '2019-01-21 18:16:55', NULL),
(2, 2, 'Component Name', 12, 1, 12, '123.00', 2, 23, '234.00', 3, 34, '345.00', 4, 45, '456.00', 'Short Note', '2019-01-22 11:30:32', NULL),
(3, 3, 'Component Name', 12, 1, 12, '123.00', 2, 23, '234.00', 3, 34, '345.00', 4, 45, '456.00', 'Short Note', '2019-01-24 15:19:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_imed_quarterly_financial_progress`
--

CREATE TABLE `tbl_imed_quarterly_financial_progress` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imed_bi_id` bigint(20) UNSIGNED NOT NULL,
  `release_for_the_quarter_revenue_gob` decimal(60,2) NOT NULL,
  `release_for_the_quarter_capital_gob` decimal(60,2) NOT NULL,
  `release_for_the_quarter_revenue_rpa` decimal(60,2) NOT NULL,
  `release_for_the_quarter_capital_rpa` decimal(60,2) NOT NULL,
  `exp_for_the_quarter_revenue_gob` decimal(60,2) NOT NULL,
  `exp_for_the_quarter_capital_gob` decimal(60,2) NOT NULL,
  `exp_for_the_quarter_revenue_rpa` decimal(60,2) NOT NULL,
  `exp_for_the_quarter_capital_rpa` decimal(60,2) NOT NULL,
  `exp_for_the_quarter_revenue_dpa` decimal(60,2) NOT NULL,
  `exp_for_the_quarter_capital_dpa` decimal(60,2) NOT NULL,
  `crnt_yrs_exp_revenue_gob` decimal(60,2) NOT NULL,
  `crnt_yrs_exp_capital_gob` decimal(60,2) NOT NULL,
  `crnt_yrs_exp_revenue_rpa` decimal(60,2) NOT NULL,
  `crnt_yrs_exp_capital_rpa` decimal(60,2) NOT NULL,
  `crnt_yrs_exp_revenue_dpa` decimal(60,2) NOT NULL,
  `crnt_yrs_exp_capital_dpa` decimal(60,2) NOT NULL,
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

--
-- Dumping data for table `tbl_imed_quarterly_financial_progress`
--

INSERT INTO `tbl_imed_quarterly_financial_progress` (`id`, `imed_bi_id`, `release_for_the_quarter_revenue_gob`, `release_for_the_quarter_capital_gob`, `release_for_the_quarter_revenue_rpa`, `release_for_the_quarter_capital_rpa`, `exp_for_the_quarter_revenue_gob`, `exp_for_the_quarter_capital_gob`, `exp_for_the_quarter_revenue_rpa`, `exp_for_the_quarter_capital_rpa`, `exp_for_the_quarter_revenue_dpa`, `exp_for_the_quarter_capital_dpa`, `crnt_yrs_exp_revenue_gob`, `crnt_yrs_exp_capital_gob`, `crnt_yrs_exp_revenue_rpa`, `crnt_yrs_exp_capital_rpa`, `crnt_yrs_exp_revenue_dpa`, `crnt_yrs_exp_capital_dpa`, `cash_frgn_exchng_spent`, `cash`, `kind`, `cd_vat`, `rpa_spent`, `rpa_claimed_1`, `rpa_claimed_2`, `rpa_reimbursed_1`, `rpa_reimbursed_2`, `created_at`, `updated_at`) VALUES
(1, 1, '23.00', '23.00', '12.00', '12.00', '11.00', '11.00', '22.00', '22.00', '33.00', '33.00', '44.00', '44.00', '55.00', '55.00', '66.00', '66.00', '1234.00', '45.00', '23.00', '1000.00', '34.00', '43.00', '33.00', '3.00', '444.00', '2019-01-21 18:16:28', NULL),
(2, 2, '23.00', '23.00', '12.00', '12.00', '11.00', '11.00', '22.00', '22.00', '33.00', '33.00', '44.00', '44.00', '55.00', '55.00', '66.00', '66.00', '1234.00', '45.00', '23.00', '1000.00', '34.00', '43.00', '33.00', '3.00', '444.00', '2019-01-22 11:29:47', NULL),
(3, 3, '23.00', '23.00', '12.00', '12.00', '11.00', '11.00', '22.00', '22.00', '33.00', '33.00', '44.00', '44.00', '55.00', '55.00', '66.00', '66.00', '1234.00', '45.00', '23.00', '1000.00', '34.00', '43.00', '33.00', '3.00', '444.00', '2019-01-24 15:18:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_imed_reason_for_delaying`
--

CREATE TABLE `tbl_imed_reason_for_delaying` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imed_bi_id` bigint(20) UNSIGNED NOT NULL,
  `delaying_description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_imed_reason_for_delaying`
--

INSERT INTO `tbl_imed_reason_for_delaying` (`id`, `imed_bi_id`, `delaying_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Delaying reason', '2019-01-22 06:27:31', NULL),
(2, 2, 'Description', '2019-01-22 06:41:10', NULL),
(3, 3, 'Problems reasons for delay in contract implementation', '2019-01-24 09:22:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_imed_suggested_measures`
--

CREATE TABLE `tbl_imed_suggested_measures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imed_bi_id` bigint(255) UNSIGNED NOT NULL,
  `suggested_measures` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_imed_suggested_measures`
--

INSERT INTO `tbl_imed_suggested_measures` (`id`, `imed_bi_id`, `suggested_measures`, `created_at`, `updated_at`) VALUES
(1, 1, 'Suggested Measures', '2019-01-21 19:01:46', NULL),
(2, 2, 'Suggested Measure', '2019-01-22 11:44:17', NULL),
(3, 3, 'Suggested Measures.......', '2019-01-24 15:20:43', NULL);

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

--
-- Dumping data for table `tbl_intermediate_result_indicators_component`
--

INSERT INTO `tbl_intermediate_result_indicators_component` (`id`, `component_name`, `created_at`, `updated_at`) VALUES
(1, 'Component A', '2019-03-10 06:11:37', NULL),
(2, 'Component B', '2019-03-10 06:11:37', NULL),
(3, 'Component C', '2019-03-10 06:11:55', NULL),
(4, 'Component D', '2019-03-10 06:11:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_intermediate_result_indicators_name`
--

CREATE TABLE `tbl_intermediate_result_indicators_name` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `component_id` bigint(20) UNSIGNED NOT NULL,
  `indicator_name` char(255) NOT NULL,
  `baseline` char(255) NOT NULL,
  `frequency` char(255) NOT NULL,
  `data_source_methodology` char(255) NOT NULL,
  `responsibilities_for_data_collection` char(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_intermediate_result_indicators_name`
--

INSERT INTO `tbl_intermediate_result_indicators_name` (`id`, `component_id`, `indicator_name`, `baseline`, `frequency`, `data_source_methodology`, `responsibilities_for_data_collection`, `created_at`, `updated_at`) VALUES
(1, 1, 'DDM facilities renovated (ERCC, NDMRTI)', '0', 'Annual', 'DDM/Monitoring Reports', 'PCMU and M&E Consultants', '2019-03-10 06:19:46', NULL),
(4, 2, 'Identification of critical and essential facilities and lifelines for Dhaka.', '0', 'Annual', 'RAJUK/Monitoring Reports', 'PCMU and M&E Consultants', '2019-03-10 06:27:13', NULL),
(5, 3, 'E-Permits for construction Unit facility constructed.', '0', 'Annual', 'RAJUK/Monitoring Reports', 'PCMU and M&E Consultants', '2019-03-10 06:27:13', NULL),
(6, 4, 'Monitoring Reports produced', '0', 'Quarterly', 'PCMU', 'PCMU and M&E Consultants', '2019-03-10 06:29:46', NULL),
(7, 1, 'FSCD facilities constructed and/or renovated', '0', 'Annual', 'FSCD/Monitoring Reports', 'PCMU and M&E Consultants', '2019-03-10 10:22:28', NULL);

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

--
-- Dumping data for table `tbl_key_agreed_actions_tracking_activities`
--

INSERT INTO `tbl_key_agreed_actions_tracking_activities` (`id`, `form_prefix`, `form_code`, `kaa_code`, `activity_description`, `agency`, `has_sub_activity`, `planned_due_date`, `actual_completion_date`, `compliance_status_pcmu`, `evidence_provided_to_verfiy_compliance`, `reasons_for_non_complinace_me_team`, `verified_by_me_team`, `expected_completion_date`, `created_at`, `updated_at`) VALUES
(1, 'K', '123', '456', 'N/A', 5, 0, '2019-02-12', '2019-02-12', 'w', 'a', 'z', 'b', '2019-02-12', '2019-02-12 07:14:09', NULL);

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

--
-- Dumping data for table `tbl_list_of_division`
--

INSERT INTO `tbl_list_of_division` (`id`, `ministry_id`, `division_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Planning Division', '2019-01-19 12:06:23', NULL),
(2, 1, 'Statistics and Informatics Division', '2019-01-19 12:06:23', NULL),
(3, 1, 'Implementation Monitoring & Evaluation Division', '2019-01-19 12:06:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_list_of_implementing_agencies`
--

CREATE TABLE `tbl_list_of_implementing_agencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_list_of_implementing_agencies`
--

INSERT INTO `tbl_list_of_implementing_agencies` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Planning Commission Unit (PCMU) ', '2018-11-25 10:16:44', NULL),
(2, 'Dhaka North City Corporation (DNCC)', '2018-11-25 10:16:44', '2018-11-25 10:20:11'),
(3, 'Rajdhani Unnayan Kartripakkha (RAJUK)', '2018-11-25 10:18:13', NULL),
(4, 'Department of Disaster Management (DDM)', '2018-11-25 10:18:13', NULL),
(5, 'Dhaka South City Corporation (DSCC)', '2018-11-25 10:19:40', NULL),
(6, 'Sylhet City Corporation (SCC)', '2018-11-25 10:19:40', NULL),
(7, 'Fire Service and Civil Defense (FSCD)', '2018-11-25 10:20:00', NULL);

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

--
-- Dumping data for table `tbl_list_of_ministry`
--

INSERT INTO `tbl_list_of_ministry` (`id`, `name_of_ministry`, `created_at`, `updated_at`) VALUES
(1, 'Ministry of Planning', '2019-01-19 11:35:20', NULL),
(2, 'Ministry of Finance', '2019-01-19 11:35:20', NULL),
(3, 'Ministry of Public Administration', '2019-01-19 11:57:12', NULL),
(4, 'Ministry of Defence', '2019-01-19 11:57:12', NULL),
(5, 'Ministry of Power, Energy and Mineral Resources', '2019-01-19 11:57:37', NULL),
(6, 'Ministry of Women and Children Affairs', '2019-01-19 11:57:37', NULL),
(7, 'Ministry of Industries', '2019-01-19 11:57:57', NULL),
(8, 'Ministry of Commerce', '2019-01-19 11:57:57', NULL),
(9, 'Ministry of Agriculture', '2019-01-19 11:58:16', NULL),
(10, 'Ministry of Home Affairs', '2019-01-19 11:58:16', NULL),
(11, 'Ministry of Health and Family Welfare', '2019-01-19 11:58:37', NULL),
(12, 'Ministry of Local Government and Rural Development and Co-operative', '2019-01-19 11:58:37', NULL),
(13, 'Ministry of Science and Technology', '2019-01-19 11:59:02', NULL),
(14, 'Ministry of Housing and Public Works', '2019-01-19 11:59:02', NULL),
(15, 'Ministry of Liberation War Affairs', '2019-01-19 11:59:19', NULL),
(16, 'Ministry of Textiles and Jute', '2019-01-19 11:59:19', NULL),
(17, 'Ministry of Road Transport and Bridges', '2019-01-19 11:59:35', NULL),
(18, 'Ministry of Information', '2019-01-19 11:59:35', NULL),
(19, 'Ministry of Environment and Forest', '2019-01-19 11:59:55', NULL),
(20, 'Ministry of Education', '2019-01-19 11:59:55', NULL),
(21, 'Ministry of Law, Justice and Parliamentary Affairs', '2019-01-19 12:00:15', NULL),
(22, 'Ministry of Foreign Affairs', '2019-01-19 12:00:15', NULL),
(23, 'Ministry of Railways', '2019-01-19 12:00:37', NULL),
(24, 'Ministry of Posts, Telecommunications & Information Technology', '2019-01-19 12:00:37', NULL),
(25, 'Ministry of Land', '2019-01-19 12:00:54', NULL),
(26, 'Ministry of Food', '2019-01-19 12:00:54', NULL),
(27, 'Ministry of Social Welfare', '2019-01-19 12:01:16', NULL),
(28, 'Ministry of Chittagong Hill Tracts Affairs', '2019-01-19 12:01:16', NULL),
(29, 'Ministry of Water Resources', '2019-01-19 12:01:41', NULL),
(30, 'Ministry of Fisheries and Livestock', '2019-01-19 12:01:41', NULL),
(31, 'Ministry of Civil Aviation and Tourism', '2019-01-19 12:02:01', NULL),
(32, 'Ministry of Religious Affairs', '2019-01-19 12:02:01', NULL),
(33, 'Ministry of Expatriates\' Welfare and Overseas Employment', '2019-01-19 12:02:26', NULL),
(34, 'Ministry of Labour and Employment', '2019-01-19 12:02:26', NULL),
(35, 'Ministry of Youth and Sports', '2019-01-19 12:02:45', NULL),
(36, 'Ministry of Cultural Affairs', '2019-01-19 12:02:45', NULL),
(37, 'Ministry of Primary and Mass Education', '2019-01-19 12:03:05', NULL),
(38, 'Ministry of Shipping', '2019-01-19 12:03:05', NULL),
(39, 'Ministry of Disaster Management and Relief', '2019-01-19 12:03:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_me_activities_sub_component`
--

CREATE TABLE `tbl_me_activities_sub_component` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `component_id` bigint(20) UNSIGNED NOT NULL,
  `activities_name` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_me_activities_sub_component`
--

INSERT INTO `tbl_me_activities_sub_component` (`id`, `component_id`, `activities_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Design, build and outfit national- level Disaster Risk Management (DRM) facilities for the Emergency Response and Communication Centre (ERCC) and the National Disaster Management Research and Training Institute (NDMRTI).', '2019-01-28 09:30:02', NULL),
(2, 1, 'Build, Renovate, and Outfit Local-Level City Corporation and FSCD DRM facilities in Dhaka and Sylhet', '2019-01-28 09:30:02', NULL),
(3, 1, 'Supply, Install and Integrate Specialized ICT Equipment for DRM and Emergency response', '2019-01-28 09:30:51', NULL),
(4, 1, 'Supply Specialized Search and Rescue Equipment to Local-Level Agencies Involved in DRM', '2019-01-28 09:30:51', NULL),
(5, 1, 'Enhance the emergency management and preparedness capacity of the national-level ERCC and NDMRTI and the local-level city corporations and FSCD in Dhaka and Sylhet through training, exercises and drills.', '2019-01-28 09:31:38', NULL),
(6, 2, 'Conduct a vulnerability assessment of critical and essential facilities and lifelines', '2019-01-28 09:31:38', NULL),
(7, 2, 'Support the development of a Risk Sensitive Land Use Planning (RSLUP) practice in Dhaka', '2019-01-28 09:32:28', NULL),
(8, 3, 'Create and operationalize the Urban Resilience Unit (URU) in Rajuk to Support DRR Mainstreaming and Improve Dhaka Urban Resilience.', '2019-01-28 09:32:28', NULL),
(9, 3, 'Establish an Electronic Construction Permitting System', '2019-01-28 09:33:02', NULL),
(10, 3, 'Set Up a Professional Accreditation Program for Engineers, Architects and Planners', '2019-01-28 09:33:02', NULL),
(11, 3, 'Improve Building Code Enforcement with Rajuk Jurisdiction', '2019-01-28 09:33:42', NULL),
(12, 4, 'Project Coordination, Monitoring and Evaluation', '2019-01-28 09:33:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_me_iris`
--

CREATE TABLE `tbl_me_iris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `output_id` bigint(20) UNSIGNED NOT NULL,
  `iris` char(200) NOT NULL,
  `baseline` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_me_iris`
--

INSERT INTO `tbl_me_iris` (`id`, `output_id`, `iris`, `baseline`, `created_at`, `updated_at`) VALUES
(1, 1, 'DDM facilities renovated (ERCC, NDMRTI)', NULL, '2019-01-28 10:27:13', NULL),
(2, 2, 'FSCD facilities constructed and/or renovated', NULL, '2019-01-28 10:27:58', NULL),
(3, 2, 'DNCC/DSCC/SCC facilities constructed and/or renovated', NULL, '2019-01-28 10:27:58', NULL),
(4, 3, 'DDM/DNCC/DSCC/SCC/FSCD and Satellite Control Room facilities equipped with ECT suites and/or kits', NULL, '2019-01-28 10:29:33', NULL),
(5, 4, 'FSCD emergency management warehouses equipped with specialized search and rescue equipment', NULL, '2019-01-28 10:29:33', NULL),
(6, 5, 'Multi-agency training exercises and drills completed', NULL, '2019-01-28 10:31:00', NULL),
(7, 6, 'Identification of critical and essential facilities and lifelines for Dhaka', NULL, '2019-01-28 10:31:00', NULL),
(8, 7, 'Vulnerability of prioritized critical and essential facilities and lifelines assessed for Dhaka', NULL, '2019-01-28 10:56:58', NULL),
(9, 8, 'Indicator not available', NULL, '2019-01-28 10:56:58', NULL),
(10, 9, 'RAJUK Urban Resilience Unit facility constructed', NULL, '2019-01-28 10:57:54', NULL),
(11, 9, 'RAJUK Urban Resilience Unit facility equipped with laboratory and field testing equipment', NULL, '2019-01-28 10:57:54', NULL),
(12, 10, 'E-Permits for construction issued by RAJUK', NULL, '2019-01-28 10:59:46', NULL),
(13, 11, 'Professional Accreditation Program for Engineers, Architects and Planners established', NULL, '2019-01-28 10:59:46', NULL),
(14, 12, 'Indicator not available', NULL, '2019-01-28 11:00:30', NULL),
(15, 13, '# of Monitoring reports produced', NULL, '2019-01-28 11:00:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_me_outputs`
--

CREATE TABLE `tbl_me_outputs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `activity_id` bigint(20) UNSIGNED NOT NULL,
  `output_name` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_me_outputs`
--

INSERT INTO `tbl_me_outputs` (`id`, `activity_id`, `output_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'ERCC and NDMRTI Renovated with basic office equipment', '2019-01-28 09:37:34', NULL),
(2, 2, '## of warehouses and ## of EOC constructed for FSCD, SCC, DNCC & DSCC', '2019-01-28 09:37:34', NULL),
(3, 3, 'Full ECT Suites installed, tested and operationalized;', '2019-01-28 09:38:47', NULL),
(4, 4, 'Specialized search and rescue equipment supplied and operationalized within FSCD, DNCC and DSCC', '2019-01-28 09:38:47', NULL),
(5, 5, 'Improved emergency response capabilities, preparedness and readiness of govt. institutions and other key stakeholders involved in disaster and emergency management response', '2019-01-28 09:39:14', '2019-01-28 09:40:43'),
(6, 6, 'Database of Critical and Essential Facilities developed;', '2019-01-28 09:42:33', NULL),
(7, 6, 'Structural Vulnerability Assessment surveyed', '2019-01-28 09:42:33', NULL),
(8, 7, 'Internal Guidelines and Processes for RSLUP Developed', '2019-01-28 09:55:28', NULL),
(9, 8, 'URU is created within RAJUK', '2019-01-28 09:55:28', NULL),
(10, 9, 'An electronic permitting and monitoring system (e-permit) for construction application is designed, developed and implemented', '2019-01-28 09:56:49', NULL),
(11, 10, 'A Professional Accreditation Program for Engineers, Architects and Planners is developed based on international best practice', '2019-01-28 09:56:49', NULL),
(12, 11, 'RAJUK\'s capacity and administrative structure to implement and enforce the BNBC is increased.', '2019-01-28 09:57:41', NULL),
(13, 12, 'Monitoring reports produced', '2019-01-28 09:57:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_me_urp_component_ia`
--

CREATE TABLE `tbl_me_urp_component_ia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `component_seq` char(100) NOT NULL,
  `component_description` char(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_me_urp_component_ia`
--

INSERT INTO `tbl_me_urp_component_ia` (`id`, `component_seq`, `component_description`, `created_at`, `updated_at`) VALUES
(1, 'A', 'Reinforce the country’s Emergency Management Response capacity', '2019-01-28 09:03:02', NULL),
(2, 'B', 'Vulnerability Assessment of Critical and Essential Facilities and Lifeline (Implemented by Rajuk)', '2019-01-28 09:03:02', NULL),
(3, 'C', 'Improved construction, urban planning and development', '2019-01-28 09:04:16', NULL),
(4, 'D', 'Project Coordination, Monitoring and Evaluation', '2019-01-28 09:04:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_m_and_e_matrix`
--

CREATE TABLE `tbl_m_and_e_matrix` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tracking_id` bigint(20) UNSIGNED NOT NULL,
  `component_id` bigint(20) UNSIGNED NOT NULL,
  `activity_id` bigint(20) UNSIGNED NOT NULL,
  `output_id` bigint(20) UNSIGNED NOT NULL,
  `iris_id` bigint(20) UNSIGNED NOT NULL,
  `year` year(4) NOT NULL,
  `q1_physical_progress_target` decimal(60,2) NOT NULL DEFAULT '0.00',
  `q1_physical_progress_actual` decimal(60,2) NOT NULL DEFAULT '0.00',
  `q2_physical_progress_target` decimal(60,2) NOT NULL DEFAULT '0.00',
  `q2_physical_progress_actual` decimal(60,2) NOT NULL DEFAULT '0.00',
  `q3_physical_progress_target` decimal(60,2) NOT NULL DEFAULT '0.00',
  `q3_physical_progress_actual` decimal(60,2) NOT NULL DEFAULT '0.00',
  `q4_physical_progress_target` decimal(60,2) NOT NULL DEFAULT '0.00',
  `q4_physical_progress_actual` decimal(60,2) NOT NULL DEFAULT '0.00',
  `completion_date_planned` date NOT NULL,
  `completion_date_actual` date NOT NULL,
  `completion_date_time_overdue` int(11) NOT NULL,
  `fn_progress_q1_planned` decimal(60,2) NOT NULL DEFAULT '0.00',
  `fn_progress_q1_actual` decimal(60,2) NOT NULL DEFAULT '0.00',
  `fn_progress_q2_planned` decimal(60,2) NOT NULL DEFAULT '0.00',
  `fn_progress_q2_actual` decimal(60,2) NOT NULL DEFAULT '0.00',
  `fn_progress_q3_planned` decimal(60,2) NOT NULL DEFAULT '0.00',
  `fn_progress_q3_actual` decimal(60,2) NOT NULL DEFAULT '0.00',
  `fn_progress_q4_planned` decimal(60,2) NOT NULL DEFAULT '0.00',
  `fn_progress_q4_actual` decimal(60,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_m_and_e_matrix`
--

INSERT INTO `tbl_m_and_e_matrix` (`id`, `tracking_id`, `component_id`, `activity_id`, `output_id`, `iris_id`, `year`, `q1_physical_progress_target`, `q1_physical_progress_actual`, `q2_physical_progress_target`, `q2_physical_progress_actual`, `q3_physical_progress_target`, `q3_physical_progress_actual`, `q4_physical_progress_target`, `q4_physical_progress_actual`, `completion_date_planned`, `completion_date_actual`, `completion_date_time_overdue`, `fn_progress_q1_planned`, `fn_progress_q1_actual`, `fn_progress_q2_planned`, `fn_progress_q2_actual`, `fn_progress_q3_planned`, `fn_progress_q3_actual`, `fn_progress_q4_planned`, `fn_progress_q4_actual`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 2017, '12.00', '12.00', '34.00', '34.00', '56.00', '56.00', '78.00', '78.00', '2019-10-01', '2019-10-01', 2019, '90.00', '90.00', '89.00', '89.00', '78.00', '78.00', '56.00', '56.00', '2019-02-02 11:09:27', '2019-02-03 08:20:06'),
(2, 1, 1, 2, 2, 2, 2008, '12.00', '12.00', '34.00', '34.00', '56.00', '56.00', '78.00', '78.00', '2019-10-01', '2019-10-01', 2019, '90.00', '90.00', '89.00', '89.00', '78.00', '78.00', '56.00', '56.00', '2019-02-02 12:10:09', '2019-02-03 11:33:03'),
(3, 3, 2, 6, 6, 7, 2015, '3546.00', '896.00', '231.00', '768.00', '231.00', '897.00', '987.00', '123.00', '2019-10-01', '2019-10-01', 2019, '34.00', '12.00', '90.00', '45.00', '23.00', '45.00', '56.00', '12.00', '2019-02-05 11:55:57', '2019-02-05 11:55:57'),
(4, 4, 2, 6, 6, 7, 2009, '3546.00', '12.00', '322.00', '23.00', '4644.00', '344.00', '4345.00', '23.00', '2019-10-01', '2019-10-01', 23, '455.00', '12.00', '344.00', '23.00', '454.00', '23.00', '656.00', '45.00', '2019-02-05 12:34:19', '2019-02-10 09:00:54'),
(5, 1, 1, 1, 1, 1, 2018, '12.00', '12.00', '34.00', '34.00', '56.00', '56.00', '78.00', '78.00', '2019-10-01', '2019-10-01', 2019, '90.00', '90.00', '89.00', '89.00', '78.00', '78.00', '56.00', '56.00', '2019-02-02 11:09:27', '2019-02-03 08:20:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_progress_of_procurements_goods_contracts`
--

CREATE TABLE `tbl_progress_of_procurements_goods_contracts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contract_id` bigint(20) UNSIGNED NOT NULL,
  `progress_of_procurement` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `expenditure_contractor` decimal(60,2) NOT NULL,
  `expenditure_vat_tax` decimal(60,2) NOT NULL,
  `exp_date` date NOT NULL,
  `prgrss_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_progress_of_procurements_goods_contracts`
--

INSERT INTO `tbl_progress_of_procurements_goods_contracts` (`id`, `contract_id`, `progress_of_procurement`, `expenditure_contractor`, `expenditure_vat_tax`, `exp_date`, `prgrss_date`, `created_at`, `updated_at`) VALUES
(1, 1, 23, '2342424.00', '2342423423.00', '2019-02-12', '2019-02-12', '2019-02-12 11:54:03', NULL),
(2, 2, 23, '2342424.00', '2342423423.00', '2019-02-13', '2019-02-13', '2019-02-13 12:20:30', NULL),
(3, 3, 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '2019-03-07 08:59:03', NULL),
(4, 4, 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '2019-03-07 09:01:12', NULL);

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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_project_development_objective_indicators_name`
--

INSERT INTO `tbl_project_development_objective_indicators_name` (`id`, `indicator_name`, `baseline`, `frequency`, `data_source_methodology`, `responsibilities_for_data_collection`, `created_at`, `updated_at`) VALUES
(1, 'Share of wards with decentralized emergency response services in Dhaka (DNCC/DSCC jurisdiction)<sup>1</sup>', '0', 'Annual', 'DNCC, DSCC, FSCD/Monitoring Reports', 'PCMU and M&E Consultants', '2019-01-05 09:14:58', NULL),
(2, 'share of wards with decentralized emergency response services in Sylhet (SCC jurisdiction)', '0', 'Annual', 'SCC, FSCD/Monitoring Reports', 'PCMU and M&E Consultants', '2019-02-06 08:15:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_result_framework_intermediate_result_indicators`
--

CREATE TABLE `tbl_result_framework_intermediate_result_indicators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` year(4) NOT NULL,
  `ind_id` bigint(20) UNSIGNED NOT NULL,
  `measure_id` bigint(20) UNSIGNED NOT NULL,
  `pad_target` decimal(60,2) DEFAULT NULL,
  `actual_acheived` decimal(60,2) DEFAULT NULL,
  `comments` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_result_framework_intermediate_result_indicators`
--

INSERT INTO `tbl_result_framework_intermediate_result_indicators` (`id`, `year`, `ind_id`, `measure_id`, `pad_target`, `actual_acheived`, `comments`, `created_at`, `updated_at`) VALUES
(2, 2015, 1, 2, '987.00', '67.00', 'N/A', '2019-03-10 10:00:59', NULL),
(3, 2017, 6, 1, '2342.00', '23.00', 'N/A', '2019-03-10 10:19:05', NULL),
(4, 2014, 1, 3, '6456.00', '453.00', 'N/A', '2019-03-10 10:23:18', '2019-03-10 10:28:54'),
(5, 2015, 7, 3, '56.00', '3.00', 'N/A', '2019-03-10 10:31:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rslt_frmwrk_prjct_dvlpmnt_objctv_indctrs`
--

CREATE TABLE `tbl_rslt_frmwrk_prjct_dvlpmnt_objctv_indctrs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ind_id` bigint(20) UNSIGNED NOT NULL,
  `measure_id` bigint(20) UNSIGNED NOT NULL,
  `year` year(4) DEFAULT NULL,
  `pad_target` char(255) NOT NULL,
  `actual_acheived` char(255) NOT NULL,
  `comments` tinytext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_rslt_frmwrk_prjct_dvlpmnt_objctv_indctrs`
--

INSERT INTO `tbl_rslt_frmwrk_prjct_dvlpmnt_objctv_indctrs` (`id`, `ind_id`, `measure_id`, `year`, `pad_target`, `actual_acheived`, `comments`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 2018, '2342', '23', '', '2019-02-06 11:46:06', NULL),
(2, 1, 1, 2016, '13', '2', 'N/A', '2019-02-07 08:50:52', NULL),
(3, 1, 1, 2017, '345', '3', 'N/A', '2019-02-07 09:30:33', NULL),
(4, 1, 1, 2015, '78', '45', '', '2019-02-07 09:33:39', NULL),
(5, 1, 3, 2008, '2342', '23', 'N/A', '2019-02-07 12:07:47', NULL),
(6, 2, 1, 2015, '2342', '23', '', '2019-02-07 12:08:49', NULL),
(7, 2, 3, 2018, '987', '67', 'N/A', '2019-03-10 05:32:36', NULL);

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
-- Indexes for table `tbl_accounts_ddm`
--
ALTER TABLE `tbl_accounts_ddm`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fiscal_year` (`fiscal_year`);

--
-- Indexes for table `tbl_accounts_dncc`
--
ALTER TABLE `tbl_accounts_dncc`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fiscal_year` (`fiscal_year`);

--
-- Indexes for table `tbl_accounts_pcmu`
--
ALTER TABLE `tbl_accounts_pcmu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fiscal_year` (`fiscal_year`);

--
-- Indexes for table `tbl_accounts_rajuk`
--
ALTER TABLE `tbl_accounts_rajuk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fiscal_year` (`fiscal_year`);

--
-- Indexes for table `tbl_ci_sessions`
--
ALTER TABLE `tbl_ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

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
  ADD KEY `imed_bi_info` (`imed_bi_id`);

--
-- Indexes for table `tbl_imed_implementation_problems`
--
ALTER TABLE `tbl_imed_implementation_problems`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `problem_type_id` (`problem_type_id`),
  ADD KEY `tbl_imed_implementation_problems_ibfk_1` (`imed_bi_id`);

--
-- Indexes for table `tbl_imed_implementation_problem_type`
--
ALTER TABLE `tbl_imed_implementation_problem_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_imed_project_declaration`
--
ALTER TABLE `tbl_imed_project_declaration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `imed_bi_info` (`imed_bi_id`);

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
-- Indexes for table `tbl_imed_reason_for_delaying`
--
ALTER TABLE `tbl_imed_reason_for_delaying`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `imed_bi_id` (`imed_bi_id`);

--
-- Indexes for table `tbl_imed_suggested_measures`
--
ALTER TABLE `tbl_imed_suggested_measures`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `imed_bi_info` (`imed_bi_id`);

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
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `component_id` (`component_id`);

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
-- Indexes for table `tbl_list_of_implementing_agencies`
--
ALTER TABLE `tbl_list_of_implementing_agencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_list_of_ministry`
--
ALTER TABLE `tbl_list_of_ministry`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_me_activities_sub_component`
--
ALTER TABLE `tbl_me_activities_sub_component`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `component_id` (`component_id`);

--
-- Indexes for table `tbl_me_iris`
--
ALTER TABLE `tbl_me_iris`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `output_id` (`output_id`);

--
-- Indexes for table `tbl_me_outputs`
--
ALTER TABLE `tbl_me_outputs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `activity_id` (`activity_id`);

--
-- Indexes for table `tbl_me_urp_component_ia`
--
ALTER TABLE `tbl_me_urp_component_ia`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_m_and_e_matrix`
--
ALTER TABLE `tbl_m_and_e_matrix`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `component_id` (`component_id`),
  ADD KEY `activity_id` (`activity_id`),
  ADD KEY `output_id` (`output_id`),
  ADD KEY `iris_id` (`iris_id`);

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
  ADD UNIQUE KEY `unique_index` (`ind_id`,`year`),
  ADD KEY `measure_id` (`measure_id`);

--
-- Indexes for table `tbl_rslt_frmwrk_prjct_dvlpmnt_objctv_indctrs`
--
ALTER TABLE `tbl_rslt_frmwrk_prjct_dvlpmnt_objctv_indctrs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `unique_index` (`ind_id`,`year`),
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
-- AUTO_INCREMENT for table `tbl_accounts_ddm`
--
ALTER TABLE `tbl_accounts_ddm`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_accounts_dncc`
--
ALTER TABLE `tbl_accounts_dncc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_accounts_pcmu`
--
ALTER TABLE `tbl_accounts_pcmu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_accounts_rajuk`
--
ALTER TABLE `tbl_accounts_rajuk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_data_collection_for_consultancy_services_contracts`
--
ALTER TABLE `tbl_data_collection_for_consultancy_services_contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_data_collection_for_goods_contracts`
--
ALTER TABLE `tbl_data_collection_for_goods_contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_data_collection_for_works_contracts`
--
ALTER TABLE `tbl_data_collection_for_works_contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_imed_basic_info`
--
ALTER TABLE `tbl_imed_basic_info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_imed_contract_implementation`
--
ALTER TABLE `tbl_imed_contract_implementation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_imed_implementation_problems`
--
ALTER TABLE `tbl_imed_implementation_problems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_imed_implementation_problem_type`
--
ALTER TABLE `tbl_imed_implementation_problem_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_imed_project_declaration`
--
ALTER TABLE `tbl_imed_project_declaration`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_imed_quarterly_component_wise_progress`
--
ALTER TABLE `tbl_imed_quarterly_component_wise_progress`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_imed_quarterly_financial_progress`
--
ALTER TABLE `tbl_imed_quarterly_financial_progress`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_imed_reason_for_delaying`
--
ALTER TABLE `tbl_imed_reason_for_delaying`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_imed_suggested_measures`
--
ALTER TABLE `tbl_imed_suggested_measures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_intermediate_result_indicators_component`
--
ALTER TABLE `tbl_intermediate_result_indicators_component`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_intermediate_result_indicators_name`
--
ALTER TABLE `tbl_intermediate_result_indicators_name`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_key_agreed_actions_tracking_activities`
--
ALTER TABLE `tbl_key_agreed_actions_tracking_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_key_agreed_actions_tracking_sub_activities`
--
ALTER TABLE `tbl_key_agreed_actions_tracking_sub_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_list_of_division`
--
ALTER TABLE `tbl_list_of_division`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_list_of_implementing_agencies`
--
ALTER TABLE `tbl_list_of_implementing_agencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_list_of_ministry`
--
ALTER TABLE `tbl_list_of_ministry`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tbl_me_activities_sub_component`
--
ALTER TABLE `tbl_me_activities_sub_component`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_me_iris`
--
ALTER TABLE `tbl_me_iris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_me_outputs`
--
ALTER TABLE `tbl_me_outputs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_me_urp_component_ia`
--
ALTER TABLE `tbl_me_urp_component_ia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_m_and_e_matrix`
--
ALTER TABLE `tbl_m_and_e_matrix`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_progress_of_procurements_goods_contracts`
--
ALTER TABLE `tbl_progress_of_procurements_goods_contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_result_framework_intermediate_result_indicators`
--
ALTER TABLE `tbl_result_framework_intermediate_result_indicators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_rslt_frmwrk_prjct_dvlpmnt_objctv_indctrs`
--
ALTER TABLE `tbl_rslt_frmwrk_prjct_dvlpmnt_objctv_indctrs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  ADD CONSTRAINT `tbl_imed_basic_info_ibfk_3` FOREIGN KEY (`agency`) REFERENCES `tbl_list_of_implementing_agencies` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_imed_contract_implementation`
--
ALTER TABLE `tbl_imed_contract_implementation`
  ADD CONSTRAINT `tbl_imed_contract_implementation_ibfk_1` FOREIGN KEY (`imed_bi_id`) REFERENCES `tbl_imed_basic_info` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_imed_implementation_problems`
--
ALTER TABLE `tbl_imed_implementation_problems`
  ADD CONSTRAINT `tbl_imed_implementation_problems_ibfk_1` FOREIGN KEY (`imed_bi_id`) REFERENCES `tbl_imed_basic_info` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_imed_implementation_problems_ibfk_2` FOREIGN KEY (`problem_type_id`) REFERENCES `tbl_imed_implementation_problem_type` (`id`);

--
-- Constraints for table `tbl_imed_project_declaration`
--
ALTER TABLE `tbl_imed_project_declaration`
  ADD CONSTRAINT `tbl_imed_project_declaration_ibfk_1` FOREIGN KEY (`imed_bi_id`) REFERENCES `tbl_imed_basic_info` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

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
-- Constraints for table `tbl_imed_reason_for_delaying`
--
ALTER TABLE `tbl_imed_reason_for_delaying`
  ADD CONSTRAINT `tbl_imed_reason_for_delaying_ibfk_1` FOREIGN KEY (`imed_bi_id`) REFERENCES `tbl_imed_basic_info` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_imed_suggested_measures`
--
ALTER TABLE `tbl_imed_suggested_measures`
  ADD CONSTRAINT `tbl_imed_suggested_measures_ibfk_1` FOREIGN KEY (`imed_bi_id`) REFERENCES `tbl_imed_basic_info` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_intermediate_result_indicators_name`
--
ALTER TABLE `tbl_intermediate_result_indicators_name`
  ADD CONSTRAINT `tbl_intermediate_result_indicators_name_ibfk_1` FOREIGN KEY (`component_id`) REFERENCES `tbl_intermediate_result_indicators_component` (`id`);

--
-- Constraints for table `tbl_key_agreed_actions_tracking_activities`
--
ALTER TABLE `tbl_key_agreed_actions_tracking_activities`
  ADD CONSTRAINT `tbl_key_agreed_actions_tracking_activities_ibfk_1` FOREIGN KEY (`agency`) REFERENCES `tbl_list_of_implementing_agencies` (`id`);

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
-- Constraints for table `tbl_me_activities_sub_component`
--
ALTER TABLE `tbl_me_activities_sub_component`
  ADD CONSTRAINT `tbl_me_activities_sub_component_ibfk_1` FOREIGN KEY (`component_id`) REFERENCES `tbl_me_urp_component_ia` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_me_iris`
--
ALTER TABLE `tbl_me_iris`
  ADD CONSTRAINT `tbl_me_iris_ibfk_1` FOREIGN KEY (`output_id`) REFERENCES `tbl_me_outputs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_me_outputs`
--
ALTER TABLE `tbl_me_outputs`
  ADD CONSTRAINT `tbl_me_outputs_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `tbl_me_activities_sub_component` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_m_and_e_matrix`
--
ALTER TABLE `tbl_m_and_e_matrix`
  ADD CONSTRAINT `tbl_m_and_e_matrix_ibfk_1` FOREIGN KEY (`component_id`) REFERENCES `tbl_me_urp_component_ia` (`id`),
  ADD CONSTRAINT `tbl_m_and_e_matrix_ibfk_2` FOREIGN KEY (`activity_id`) REFERENCES `tbl_me_activities_sub_component` (`id`),
  ADD CONSTRAINT `tbl_m_and_e_matrix_ibfk_3` FOREIGN KEY (`output_id`) REFERENCES `tbl_me_outputs` (`id`),
  ADD CONSTRAINT `tbl_m_and_e_matrix_ibfk_4` FOREIGN KEY (`iris_id`) REFERENCES `tbl_me_iris` (`id`);

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
  ADD CONSTRAINT `tbl_result_framework_intermediate_result_indicators_ibfk_1` FOREIGN KEY (`measure_id`) REFERENCES `tbl_unit_of_measure` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_result_framework_intermediate_result_indicators_ibfk_2` FOREIGN KEY (`ind_id`) REFERENCES `tbl_intermediate_result_indicators_name` (`id`);

--
-- Constraints for table `tbl_rslt_frmwrk_prjct_dvlpmnt_objctv_indctrs`
--
ALTER TABLE `tbl_rslt_frmwrk_prjct_dvlpmnt_objctv_indctrs`
  ADD CONSTRAINT `tbl_rslt_frmwrk_prjct_dvlpmnt_objctv_indctrs_ibfk_1` FOREIGN KEY (`ind_id`) REFERENCES `tbl_project_development_objective_indicators_name` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_rslt_frmwrk_prjct_dvlpmnt_objctv_indctrs_ibfk_2` FOREIGN KEY (`measure_id`) REFERENCES `tbl_unit_of_measure` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

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
  ADD CONSTRAINT `tbl_svce_initial_information_ibfk_1` FOREIGN KEY (`implementing_agency`) REFERENCES `tbl_list_of_implementing_agencies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
  ADD CONSTRAINT `tbl_svcs_initial_information_ibfk_1` FOREIGN KEY (`implementing_agency`) REFERENCES `tbl_list_of_implementing_agencies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
