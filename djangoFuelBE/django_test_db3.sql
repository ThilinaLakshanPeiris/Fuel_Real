-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2022 at 05:16 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django_test_db3`
--

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add depot', 7, 'add_depot'),
(26, 'Can change depot', 7, 'change_depot'),
(27, 'Can delete depot', 7, 'delete_depot'),
(28, 'Can view depot', 7, 'view_depot'),
(29, 'Can add designation', 8, 'add_designation'),
(30, 'Can change designation', 8, 'change_designation'),
(31, 'Can delete designation', 8, 'delete_designation'),
(32, 'Can view designation', 8, 'view_designation'),
(33, 'Can add emp', 9, 'add_emp'),
(34, 'Can change emp', 9, 'change_emp'),
(35, 'Can delete emp', 9, 'delete_emp'),
(36, 'Can view emp', 9, 'view_emp'),
(37, 'Can add fuel type', 10, 'add_fueltype'),
(38, 'Can change fuel type', 10, 'change_fueltype'),
(39, 'Can delete fuel type', 10, 'delete_fueltype'),
(40, 'Can view fuel type', 10, 'view_fueltype'),
(41, 'Can add institute', 11, 'add_institute'),
(42, 'Can change institute', 11, 'change_institute'),
(43, 'Can delete institute', 11, 'delete_institute'),
(44, 'Can view institute', 11, 'view_institute'),
(45, 'Can add insurance company', 12, 'add_insurancecompany'),
(46, 'Can change insurance company', 12, 'change_insurancecompany'),
(47, 'Can delete insurance company', 12, 'delete_insurancecompany'),
(48, 'Can view insurance company', 12, 'view_insurancecompany'),
(49, 'Can add pump method', 13, 'add_pumpmethod'),
(50, 'Can change pump method', 13, 'change_pumpmethod'),
(51, 'Can delete pump method', 13, 'delete_pumpmethod'),
(52, 'Can view pump method', 13, 'view_pumpmethod'),
(53, 'Can add region', 14, 'add_region'),
(54, 'Can change region', 14, 'change_region'),
(55, 'Can delete region', 14, 'delete_region'),
(56, 'Can view region', 14, 'view_region'),
(57, 'Can add user level', 15, 'add_userlevel'),
(58, 'Can change user level', 15, 'change_userlevel'),
(59, 'Can delete user level', 15, 'delete_userlevel'),
(60, 'Can view user level', 15, 'view_userlevel'),
(61, 'Can add vehicle category', 16, 'add_vehiclecategory'),
(62, 'Can change vehicle category', 16, 'change_vehiclecategory'),
(63, 'Can delete vehicle category', 16, 'delete_vehiclecategory'),
(64, 'Can view vehicle category', 16, 'view_vehiclecategory'),
(65, 'Can add vehicle detail', 17, 'add_vehicledetail'),
(66, 'Can change vehicle detail', 17, 'change_vehicledetail'),
(67, 'Can delete vehicle detail', 17, 'delete_vehicledetail'),
(68, 'Can view vehicle detail', 17, 'view_vehicledetail'),
(69, 'Can add transaction', 18, 'add_transaction'),
(70, 'Can change transaction', 18, 'change_transaction'),
(71, 'Can delete transaction', 18, 'delete_transaction'),
(72, 'Can view transaction', 18, 'view_transaction'),
(73, 'Can add stc vehicle distribution', 19, 'add_stcvehicledistribution'),
(74, 'Can change stc vehicle distribution', 19, 'change_stcvehicledistribution'),
(75, 'Can delete stc vehicle distribution', 19, 'delete_stcvehicledistribution'),
(76, 'Can view stc vehicle distribution', 19, 'view_stcvehicledistribution'),
(77, 'Can add requisition', 20, 'add_requisition'),
(78, 'Can change requisition', 20, 'change_requisition'),
(79, 'Can delete requisition', 20, 'delete_requisition'),
(80, 'Can view requisition', 20, 'view_requisition'),
(81, 'Can add region distribution', 21, 'add_regiondistribution'),
(82, 'Can change region distribution', 21, 'change_regiondistribution'),
(83, 'Can delete region distribution', 21, 'delete_regiondistribution'),
(84, 'Can view region distribution', 21, 'view_regiondistribution'),
(85, 'Can add other distribution', 22, 'add_otherdistribution'),
(86, 'Can change other distribution', 22, 'change_otherdistribution'),
(87, 'Can delete other distribution', 22, 'delete_otherdistribution'),
(88, 'Can view other distribution', 22, 'view_otherdistribution'),
(89, 'Can add main stock', 23, 'add_mainstock'),
(90, 'Can change main stock', 23, 'change_mainstock'),
(91, 'Can delete main stock', 23, 'delete_mainstock'),
(92, 'Can view main stock', 23, 'view_mainstock'),
(93, 'Can add incoming fuel', 24, 'add_incomingfuel'),
(94, 'Can change incoming fuel', 24, 'change_incomingfuel'),
(95, 'Can delete incoming fuel', 24, 'delete_incomingfuel'),
(96, 'Can view incoming fuel', 24, 'view_incomingfuel'),
(97, 'Can add fuel user', 25, 'add_fueluser'),
(98, 'Can change fuel user', 25, 'change_fueluser'),
(99, 'Can delete fuel user', 25, 'delete_fueluser'),
(100, 'Can view fuel user', 25, 'view_fueluser'),
(101, 'Can add closing table', 26, 'add_closingtable'),
(102, 'Can change closing table', 26, 'change_closingtable'),
(103, 'Can delete closing table', 26, 'delete_closingtable'),
(104, 'Can view closing table', 26, 'view_closingtable'),
(105, 'Can add Token', 27, 'add_token'),
(106, 'Can change Token', 27, 'change_token'),
(107, 'Can delete Token', 27, 'delete_token'),
(108, 'Can view Token', 27, 'view_token'),
(109, 'Can add token', 28, 'add_tokenproxy'),
(110, 'Can change token', 28, 'change_tokenproxy'),
(111, 'Can delete token', 28, 'delete_tokenproxy'),
(112, 'Can view token', 28, 'view_tokenproxy'),
(113, 'Can add contractor', 29, 'add_contractor'),
(114, 'Can change contractor', 29, 'change_contractor'),
(115, 'Can delete contractor', 29, 'delete_contractor'),
(116, 'Can view contractor', 29, 'view_contractor'),
(117, 'Can add contractor distribution', 30, 'add_contractordistribution'),
(118, 'Can change contractor distribution', 30, 'change_contractordistribution'),
(119, 'Can delete contractor distribution', 30, 'delete_contractordistribution'),
(120, 'Can view contractor distribution', 30, 'view_contractordistribution');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$mS9pKmNkIM0RvkhwdpH1w2$MGrfq+Wuei98NsU5BcsORUP26RI4loN++ZkYH28yBEo=', '2022-09-23 15:07:23.906339', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2022-09-23 15:01:33.756280'),
(2, 'pbkdf2_sha256$390000$3eRbFvSWBleeJtHU8htF34$vOkAwEp3G9Ke3efr7dmge2DVQMmmiQX4Yg9MheQ39QQ=', NULL, 0, 'Mahinda', '', '', '', 0, 1, '2022-09-23 15:08:23.351792'),
(3, 'pbkdf2_sha256$390000$3eRbFvSWBleeJtHU8htF34$vOkAwEp3G9Ke3efr7dmge2DVQMmmiQX4Yg9MheQ39QQ=', NULL, 0, 'sunil', 'sunil', 'perera', 'sunil@gmail.com', 0, 1, '2022-09-23 15:15:24.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(27, 'authtoken', 'token'),
(28, 'authtoken', 'tokenproxy'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(26, 'test_api', 'closingtable'),
(29, 'test_api', 'contractor'),
(30, 'test_api', 'contractordistribution'),
(7, 'test_api', 'depot'),
(8, 'test_api', 'designation'),
(9, 'test_api', 'emp'),
(10, 'test_api', 'fueltype'),
(25, 'test_api', 'fueluser'),
(24, 'test_api', 'incomingfuel'),
(11, 'test_api', 'institute'),
(12, 'test_api', 'insurancecompany'),
(23, 'test_api', 'mainstock'),
(22, 'test_api', 'otherdistribution'),
(13, 'test_api', 'pumpmethod'),
(14, 'test_api', 'region'),
(21, 'test_api', 'regiondistribution'),
(20, 'test_api', 'requisition'),
(19, 'test_api', 'stcvehicledistribution'),
(18, 'test_api', 'transaction'),
(15, 'test_api', 'userlevel'),
(16, 'test_api', 'vehiclecategory'),
(17, 'test_api', 'vehicledetail');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-09-24 23:09:41.379453'),
(2, 'auth', '0001_initial', '2022-09-24 23:09:55.679043'),
(3, 'admin', '0001_initial', '2022-09-24 23:09:59.325205'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-09-24 23:09:59.393325'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-09-24 23:09:59.454228'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-09-24 23:10:00.284066'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-09-24 23:10:00.546028'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-09-24 23:10:00.711335'),
(9, 'auth', '0004_alter_user_username_opts', '2022-09-24 23:10:00.784150'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-09-24 23:10:01.516188'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-09-24 23:10:01.584795'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-09-24 23:10:01.639969'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-09-24 23:10:01.851635'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-09-24 23:10:01.998844'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-09-24 23:10:02.133244'),
(16, 'auth', '0011_update_proxy_permissions', '2022-09-24 23:10:02.395532'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-09-24 23:10:02.712202'),
(18, 'authtoken', '0001_initial', '2022-09-24 23:10:04.573265'),
(19, 'authtoken', '0002_auto_20160226_1747', '2022-09-24 23:10:04.696769'),
(20, 'authtoken', '0003_tokenproxy', '2022-09-24 23:10:04.807080'),
(21, 'sessions', '0001_initial', '2022-09-24 23:10:05.404752'),
(22, 'test_api', '0001_initial', '2022-09-24 23:11:05.912658'),
(23, 'test_api', '0002_alter_incomingfuel_emp_id', '2022-09-25 00:10:40.439008'),
(24, 'test_api', '0003_alter_requisition_emp_id', '2022-09-25 15:04:29.078900'),
(25, 'test_api', '0004_otherdistribution_emp_id_and_more', '2022-09-26 10:00:34.929100'),
(26, 'test_api', '0005_transaction_qty_transaction_total_and_more', '2022-09-26 10:30:33.715831'),
(27, 'test_api', '0006_alter_transaction_qty_alter_transaction_total_and_more', '2022-09-26 11:05:39.740651'),
(28, 'test_api', '0007_transaction_invoice_no', '2022-09-26 11:10:54.451556'),
(29, 'test_api', '0008_requisition_state', '2022-09-26 12:41:13.660539'),
(30, 'test_api', '0009_rename_state_requisition_status', '2022-09-27 10:28:18.905134'),
(31, 'test_api', '0010_contractor_contractordistribution', '2022-09-27 12:37:42.811739'),
(32, 'test_api', '0011_remove_contractordistribution_institute_no_and_more', '2022-09-27 12:51:47.933921'),
(33, 'test_api', '0012_contractordistribution_en_dep_id_and_more', '2022-10-04 15:01:44.932387');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_api_closingtable`
--

CREATE TABLE `test_api_closingtable` (
  `closing_id` int(11) NOT NULL,
  `closing_balance` double DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `region_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_api_contractor`
--

CREATE TABLE `test_api_contractor` (
  `contractor_no` int(11) NOT NULL,
  `contractor_text` varchar(200) DEFAULT NULL,
  `contact_person_name` varchar(200) DEFAULT NULL,
  `contact_person_phone_no` int(11) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_api_contractor`
--

INSERT INTO `test_api_contractor` (`contractor_no`, `contractor_text`, `contact_person_name`, `contact_person_phone_no`, `address`) VALUES
(1, 'B.N.Company', 'Perera', 77, 'kadawatha');

-- --------------------------------------------------------

--
-- Table structure for table `test_api_contractordistribution`
--

CREATE TABLE `test_api_contractordistribution` (
  `contractor_id` int(11) NOT NULL,
  `issue_order_no` double DEFAULT NULL,
  `contractor_qty` double DEFAULT NULL,
  `contractor_rate` decimal(10,2) DEFAULT NULL,
  `enter_date` date NOT NULL,
  `req_by` varchar(200) DEFAULT NULL,
  `req_date` date NOT NULL,
  `issued_by` varchar(200) DEFAULT NULL,
  `handling_charge` decimal(10,2) DEFAULT NULL,
  `handling_rate` decimal(10,2) DEFAULT NULL,
  `contractor_amount` decimal(10,2) DEFAULT NULL,
  `vehicle_no` varchar(200) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `pump_type_id_id` int(11) NOT NULL,
  `contractor_no_id` int(11) DEFAULT NULL,
  `en_dep_id` int(11) DEFAULT NULL,
  `en_reg_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_api_contractordistribution`
--

INSERT INTO `test_api_contractordistribution` (`contractor_id`, `issue_order_no`, `contractor_qty`, `contractor_rate`, `enter_date`, `req_by`, `req_date`, `issued_by`, `handling_charge`, `handling_rate`, `contractor_amount`, `vehicle_no`, `emp_id`, `pump_type_id_id`, `contractor_no_id`, `en_dep_id`, `en_reg_id`) VALUES
(1, 3, 80, '400.00', '2022-10-04', 'u', '2022-10-04', 'o', '1600.00', '20.00', '33600.00', 'DF-8765', 3, 1, 1, 3, 4);

--
-- Triggers `test_api_contractordistribution`
--
DELIMITER $$
CREATE TRIGGER `delete_contractor_distribution` AFTER DELETE ON `test_api_contractordistribution` FOR EACH ROW BEGIN
		
			UPDATE `test_api_mainstock` 
			SET `available_stock` = `available_stock` + old.`contractor_qty`
			WHERE `test_api_mainstock`.`region_id_id`=old.`en_reg_id` AND 
			`test_api_mainstock`.`depot_id_id`=old.`en_dep_id` AND
			`test_api_mainstock`.`pump_type_id_id`=old.`pump_type_id_id`;
			
			DELETE FROM `test_api_transaction`
			WHERE `test_api_transaction`.`ref_id`=old.`contractor_id`
			AND `test_api_transaction`.`transaction_type`='contractor_vehicle';
		END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_contractor_vehicle_dist` AFTER UPDATE ON `test_api_contractordistribution` FOR EACH ROW BEGIN
	
			UPDATE `test_api_mainstock` 
			SET `available_stock` = `available_stock` + old.`contractor_qty` - new.`contractor_qty`
			WHERE `test_api_mainstock`.`region_id_id`=old.`en_reg_id` AND 
			`test_api_mainstock`.`depot_id_id`=old.`en_dep_id` AND
			`test_api_mainstock`.`pump_type_id_id`=old.`pump_type_id_id`;
		
			UPDATE `test_api_transaction`
			SET `fuel_amount`=new.`contractor_amount`,`transaction_date`=new.`enter_date`,`transaction_rate`=new.`contractor_rate`,
				`pump_type_id_id`=new.`pump_type_id_id`,`qty`=new.`contractor_qty`,`total`=new.`contractor_amount`+new.`handling_charge`,
				`transport_cost`=new.`handling_charge`,`invoice_no`=new.`issue_order_no`
			WHERE `test_api_transaction`.`ref_id`=old.`contractor_id`
			AND `test_api_transaction`.`transaction_type`='contractor_vehicle';
		END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `test_api_depot`
--

CREATE TABLE `test_api_depot` (
  `depot_id` int(11) NOT NULL,
  `depot_txt` varchar(100) DEFAULT NULL,
  `deport_tel` varchar(100) DEFAULT NULL,
  `deport_code` varchar(100) DEFAULT NULL,
  `deport_image_location` varchar(500) DEFAULT NULL,
  `priority` tinyint(1) NOT NULL,
  `sortid` tinyint(1) NOT NULL,
  `depo_location` varchar(100) DEFAULT NULL,
  `region_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_api_depot`
--

INSERT INTO `test_api_depot` (`depot_id`, `depot_txt`, `deport_tel`, `deport_code`, `deport_image_location`, `priority`, `sortid`, `depo_location`, `region_id_id`) VALUES
(1, 'Ampara', '077', 'A001', 'VV', 1, 1, 'Ampara', 1),
(2, 'Anuradhapura', '044', 'A002', 'CC', 1, 1, 'Anuradhapura', 2),
(3, 'Colombo', '011', 'A003', 'VV', 1, 1, 'Colombo', 4);

-- --------------------------------------------------------

--
-- Table structure for table `test_api_designation`
--

CREATE TABLE `test_api_designation` (
  `des_id` int(11) NOT NULL,
  `des_text` varchar(200) DEFAULT NULL,
  `des_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_api_emp`
--

CREATE TABLE `test_api_emp` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `epf_no` varchar(100) DEFAULT NULL,
  `des_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_api_fueltype`
--

CREATE TABLE `test_api_fueltype` (
  `pump_type_id` int(11) NOT NULL,
  `pump_text` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_api_fueltype`
--

INSERT INTO `test_api_fueltype` (`pump_type_id`, `pump_text`) VALUES
(1, 'DIESEL'),
(2, 'PETROL');

-- --------------------------------------------------------

--
-- Table structure for table `test_api_fueluser`
--

CREATE TABLE `test_api_fueluser` (
  `fuel_user_id` int(11) NOT NULL,
  `account_status` tinyint(1) NOT NULL,
  `last_login_time` datetime(6) NOT NULL,
  `User_id` int(11) NOT NULL,
  `depot_id_id` int(11) NOT NULL,
  `level_id_id` int(11) NOT NULL,
  `region_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_api_fueluser`
--

INSERT INTO `test_api_fueluser` (`fuel_user_id`, `account_status`, `last_login_time`, `User_id`, `depot_id_id`, `level_id_id`, `region_id_id`) VALUES
(1, 1, '2022-09-23 15:12:54.989558', 1, 1, 1, 1),
(2, 1, '2022-09-23 15:13:05.214751', 2, 2, 5, 2),
(3, 1, '2022-09-23 15:17:32.281279', 3, 3, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `test_api_incomingfuel`
--

CREATE TABLE `test_api_incomingfuel` (
  `incoming_fuel_id` int(11) NOT NULL,
  `incoming_fuel_date` date NOT NULL,
  `incoming_fuel_enter_date` date NOT NULL,
  `incoming_fuel_qty` double DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `transport_cost` decimal(10,2) DEFAULT NULL,
  `receive_location` varchar(100) DEFAULT NULL,
  `supplier_name` varchar(200) DEFAULT NULL,
  `invoice_no` varchar(200) DEFAULT NULL,
  `grn_no` varchar(200) DEFAULT NULL,
  `grn_enter_date` date DEFAULT NULL,
  `received_officer` varchar(200) DEFAULT NULL,
  `depot_id_id` int(11) NOT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `pump_type_id_id` int(11) NOT NULL,
  `region_id_id` int(11) NOT NULL,
  `en_dep_id` int(11) DEFAULT NULL,
  `en_reg_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_api_incomingfuel`
--

INSERT INTO `test_api_incomingfuel` (`incoming_fuel_id`, `incoming_fuel_date`, `incoming_fuel_enter_date`, `incoming_fuel_qty`, `unit_price`, `amount`, `total`, `transport_cost`, `receive_location`, `supplier_name`, `invoice_no`, `grn_no`, `grn_enter_date`, `received_officer`, `depot_id_id`, `emp_id`, `pump_type_id_id`, `region_id_id`, `en_dep_id`, `en_reg_id`) VALUES
(1, '2022-10-03', '2022-10-04', 6600, '420.00', '2772000.00', '2774000.00', '2000.00', NULL, 'CEYPETCO', '111', '111', NULL, 'Ruwan', 3, 3, 1, 4, NULL, NULL),
(2, '2022-10-05', '2022-10-05', 3300, '400.00', '1320000.00', '1321000.00', '1000.00', NULL, 'CEYPETCO', '222', '222', NULL, 'Kamal', 3, 3, 1, 4, NULL, NULL);

--
-- Triggers `test_api_incomingfuel`
--
DELIMITER $$
CREATE TRIGGER `delete_incomming_fuel` AFTER DELETE ON `test_api_incomingfuel` FOR EACH ROW begin
	
		UPDATE `test_api_mainstock` 
		SET `available_stock` = `available_stock` - old.`incoming_fuel_qty`
		WHERE `test_api_mainstock`.`region_id_id`=old.`region_id_id` and 
		`test_api_mainstock`.`depot_id_id`=old.`depot_id_id` and
		`test_api_mainstock`.`pump_type_id_id`=old.`pump_type_id_id`;
		
		delete from `test_api_transaction`
		where `test_api_transaction`.`ref_id`=old.`incoming_fuel_id`
		and `test_api_transaction`.`transaction_type`='Incomming';
	end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_incomming_fuel` AFTER UPDATE ON `test_api_incomingfuel` FOR EACH ROW BEGIN
		
			UPDATE `test_api_mainstock` 
			SET `available_stock` = `available_stock` - old.`incoming_fuel_qty` + new.`incoming_fuel_qty`
			WHERE `test_api_mainstock`.`region_id_id`=old.`region_id_id` AND 
			`test_api_mainstock`.`depot_id_id`=old.`depot_id_id` AND
			`test_api_mainstock`.`pump_type_id_id`=old.`pump_type_id_id`;
			
			UPDATE `test_api_transaction`
			set `fuel_amount`=new.`amount`,`transaction_date`=new.`incoming_fuel_date`,`transaction_rate`=new.`unit_price`,
				`pump_type_id_id`=new.`pump_type_id_id`,`qty`=new.`incoming_fuel_qty`,`total`=new.`total`,`transport_cost`=new.`transport_cost`,
				`invoice_no`=new.`invoice_no`
			WHERE `test_api_transaction`.`ref_id`=old.`incoming_fuel_id`
			AND `test_api_transaction`.`transaction_type`='Incomming';
		END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `test_api_institute`
--

CREATE TABLE `test_api_institute` (
  `institute_no` int(11) NOT NULL,
  `institute_text` varchar(200) DEFAULT NULL,
  `contact_person_name` varchar(200) DEFAULT NULL,
  `contact_person_phone_no` int(11) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_api_institute`
--

INSERT INTO `test_api_institute` (`institute_no`, `institute_text`, `contact_person_name`, `contact_person_phone_no`, `address`) VALUES
(1, 'STC', 'Manager Transport', 77, 'No. 82, Rajamalwatta rd, battaramulla'),
(2, 'Forest Department', 'Manager Transport', 77, 'No. 82, Rajamalwatta rd, battaramulla');

-- --------------------------------------------------------

--
-- Table structure for table `test_api_insurancecompany`
--

CREATE TABLE `test_api_insurancecompany` (
  `insurance_company_id` int(11) NOT NULL,
  `insurance_company_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_api_mainstock`
--

CREATE TABLE `test_api_mainstock` (
  `stock_id` int(11) NOT NULL,
  `available_stock` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `enter_date` date NOT NULL,
  `depot_id_id` int(11) NOT NULL,
  `pump_type_id_id` int(11) NOT NULL,
  `region_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_api_mainstock`
--

INSERT INTO `test_api_mainstock` (`stock_id`, `available_stock`, `user_id`, `enter_date`, `depot_id_id`, `pump_type_id_id`, `region_id_id`) VALUES
(1, 8700, 3, '2022-10-05', 3, 1, 4),
(2, 0, 3, '2022-10-01', 3, 2, 4),
(3, 800, 2, '2022-10-04', 2, 1, 2),
(4, 0, 2, '2022-10-01', 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `test_api_otherdistribution`
--

CREATE TABLE `test_api_otherdistribution` (
  `other_id` int(11) NOT NULL,
  `issue_order_no` double DEFAULT NULL,
  `other_qty` double DEFAULT NULL,
  `other_rate` decimal(10,2) DEFAULT NULL,
  `enter_date` date NOT NULL,
  `req_by` varchar(200) DEFAULT NULL,
  `req_date` date NOT NULL,
  `issued_by` varchar(200) DEFAULT NULL,
  `handling_charge` decimal(10,2) DEFAULT NULL,
  `handling_rate` decimal(10,2) DEFAULT NULL,
  `other_amount` decimal(10,2) DEFAULT NULL,
  `vehicle_no` varchar(200) DEFAULT NULL,
  `institute_no_id` int(11) DEFAULT NULL,
  `pump_type_id_id` int(11) NOT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `en_dep_id` int(11) DEFAULT NULL,
  `en_reg_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_api_otherdistribution`
--

INSERT INTO `test_api_otherdistribution` (`other_id`, `issue_order_no`, `other_qty`, `other_rate`, `enter_date`, `req_by`, `req_date`, `issued_by`, `handling_charge`, `handling_rate`, `other_amount`, `vehicle_no`, `institute_no_id`, `pump_type_id_id`, `emp_id`, `en_dep_id`, `en_reg_id`) VALUES
(2, 1, 220, '400.00', '2022-10-04', 'j', '2022-10-04', 'l', '4400.00', '20.00', '92400.00', 'CD-9876', 2, 1, 3, 3, 4);

--
-- Triggers `test_api_otherdistribution`
--
DELIMITER $$
CREATE TRIGGER `delete_other_institute_distribution` AFTER DELETE ON `test_api_otherdistribution` FOR EACH ROW BEGIN
		
			UPDATE `test_api_mainstock` 
			SET `available_stock` = `available_stock` + old.`other_qty`
			WHERE `test_api_mainstock`.`region_id_id`=old.`en_reg_id` AND 
			`test_api_mainstock`.`depot_id_id`=old.`en_dep_id` AND
			`test_api_mainstock`.`pump_type_id_id`=old.`pump_type_id_id`;
			
			DELETE FROM `test_api_transaction`
			WHERE `test_api_transaction`.`ref_id`=old.`other_id`
			AND `test_api_transaction`.`transaction_type`='other_vehicle';
		END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_other_institute_vehicle_dist` AFTER UPDATE ON `test_api_otherdistribution` FOR EACH ROW BEGIN
	
			UPDATE `test_api_mainstock` 
			SET `available_stock` = `available_stock` + old.`other_qty` - new.`other_qty`
			WHERE `test_api_mainstock`.`region_id_id`=old.`en_reg_id` AND 
			`test_api_mainstock`.`depot_id_id`=old.`en_dep_id` AND
			`test_api_mainstock`.`pump_type_id_id`=old.`pump_type_id_id`;
		
			UPDATE `test_api_transaction`
			SET `fuel_amount`=new.`other_amount`,`transaction_date`=new.`enter_date`,`transaction_rate`=new.`other_rate`,
				`pump_type_id_id`=new.`pump_type_id_id`,`qty`=new.`other_qty`,`total`=new.`other_amount`+new.`handling_charge`,`transport_cost`=new.`handling_charge`,
				`invoice_no`=new.`issue_order_no`
			WHERE `test_api_transaction`.`ref_id`=old.`other_id`
			AND `test_api_transaction`.`transaction_type`='other_vehicle';
		END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `test_api_pumpmethod`
--

CREATE TABLE `test_api_pumpmethod` (
  `pump_method_id` int(11) NOT NULL,
  `pump_method_type` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_api_region`
--

CREATE TABLE `test_api_region` (
  `region_id` int(11) NOT NULL,
  `region_txt` varchar(200) DEFAULT NULL,
  `region_code` varchar(10) DEFAULT NULL,
  `region_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_api_region`
--

INSERT INTO `test_api_region` (`region_id`, `region_txt`, `region_code`, `region_status`) VALUES
(1, 'AMPARA REGION', 'AMP', 1),
(2, 'ANURADHAPURA REGION', 'ANU', 1),
(3, 'BADULLA REGION', 'BAD', 1),
(4, 'COLOMBO REGION', 'COL', 1),
(5, 'JAFFNA REGION', 'JAF', 1),
(6, 'KURUNEGALA REGION', 'KUR', 1),
(7, 'KANDY REGION', 'KAN', 1),
(8, 'KALDEMULLA', 'KAL', 1),
(9, 'MATARA REGION', 'MAT', 1),
(10, 'MONARAGALA REGION', 'MON', 1),
(11, 'NUWARAELIYA REGION', 'NUW', 1),
(12, 'POLONNARUWA REGION', 'POL', 1),
(13, 'RATHNAPURA REGION', 'RAT', 1),
(14, 'SHOW ROOM', 'SHO', 1),
(15, 'OLEO RESIN PROJECT', 'OLE', 0),
(16, 'ORUGODAWATTA', 'ORU', 0),
(17, 'HEAD OFFICE', 'HEO', 1),
(19, 'KEPPETIPOLA', 'KEP', 0),
(20, 'BOOSSA', 'BOO', 0),
(21, 'MECHANICAL WORK SHOP', 'MEC', 0),
(22, 'BANDARAWELA  REGION', 'BAN', 0);

-- --------------------------------------------------------

--
-- Table structure for table `test_api_regiondistribution`
--

CREATE TABLE `test_api_regiondistribution` (
  `distribution_id` int(11) NOT NULL,
  `distribution_date` date NOT NULL,
  `distribution_qty` double DEFAULT NULL,
  `distribution_unit_price` decimal(10,2) DEFAULT NULL,
  `issue_order_no` varchar(200) DEFAULT NULL,
  `barrel_count` int(11) DEFAULT NULL,
  `issue_officer_name` varchar(200) DEFAULT NULL,
  `issue_officer_designation` varchar(200) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `depot_id_id` int(11) NOT NULL,
  `issue_officer_location_id` int(11) NOT NULL,
  `pump_type_id_id` int(11) NOT NULL,
  `region_id_id` int(11) NOT NULL,
  `req_id_id` int(11) NOT NULL,
  `en_dep_id` int(11) DEFAULT NULL,
  `en_reg_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_api_regiondistribution`
--

INSERT INTO `test_api_regiondistribution` (`distribution_id`, `distribution_date`, `distribution_qty`, `distribution_unit_price`, `issue_order_no`, `barrel_count`, `issue_officer_name`, `issue_officer_designation`, `amount`, `depot_id_id`, `issue_officer_location_id`, `pump_type_id_id`, `region_id_id`, `req_id_id`, `en_dep_id`, `en_reg_id`) VALUES
(1, '2022-10-04', 200, '400.00', '33', NULL, NULL, NULL, '80000.00', 2, 1, 1, 2, 20, NULL, NULL),
(2, '2022-10-04', 500, '400.00', '2', NULL, NULL, NULL, '200000.00', 2, 1, 1, 2, 20, NULL, NULL),
(3, '2022-10-04', 100, '400.00', '2', NULL, NULL, NULL, '40000.00', 2, 1, 1, 2, 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_api_requisition`
--

CREATE TABLE `test_api_requisition` (
  `req_id` int(11) NOT NULL,
  `req_no` int(11) DEFAULT NULL,
  `req_person_name` varchar(200) DEFAULT NULL,
  `req_person_designation` varchar(200) DEFAULT NULL,
  `req_date` date NOT NULL,
  `req_qty` double DEFAULT NULL,
  `pump_qty` int(11) DEFAULT NULL,
  `depot_id_id` int(11) NOT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `pump_type_id_id` int(11) NOT NULL,
  `region_id_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_api_requisition`
--

INSERT INTO `test_api_requisition` (`req_id`, `req_no`, `req_person_name`, `req_person_designation`, `req_date`, `req_qty`, `pump_qty`, `depot_id_id`, `emp_id`, `pump_type_id_id`, `region_id_id`, `status`) VALUES
(20, 1, 'Mahinda', 'ARM', '2022-10-03', 800, 800, 2, 2, 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `test_api_stcvehicledistribution`
--

CREATE TABLE `test_api_stcvehicledistribution` (
  `stc_id` int(11) NOT NULL,
  `issue_order_no` varchar(200) DEFAULT NULL,
  `stc_dis_qty` double DEFAULT NULL,
  `stc_rate` decimal(10,2) DEFAULT NULL,
  `stc_enter_date` date NOT NULL,
  `stc_req_by` varchar(200) DEFAULT NULL,
  `stc_req_date` date NOT NULL,
  `stc_approve_by` varchar(200) DEFAULT NULL,
  `stc_issued_by` varchar(200) DEFAULT NULL,
  `stc_other_amount` decimal(10,2) DEFAULT NULL,
  `depot_id_id` int(11) DEFAULT NULL,
  `institute_no_id` int(11) DEFAULT NULL,
  `pump_type_id_id` int(11) NOT NULL,
  `region_id_id` int(11) NOT NULL,
  `vehicle_id_id` int(11) NOT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `en_dep_id` int(11) DEFAULT NULL,
  `en_reg_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_api_stcvehicledistribution`
--

INSERT INTO `test_api_stcvehicledistribution` (`stc_id`, `issue_order_no`, `stc_dis_qty`, `stc_rate`, `stc_enter_date`, `stc_req_by`, `stc_req_date`, `stc_approve_by`, `stc_issued_by`, `stc_other_amount`, `depot_id_id`, `institute_no_id`, `pump_type_id_id`, `region_id_id`, `vehicle_id_id`, `emp_id`, `en_dep_id`, `en_reg_id`) VALUES
(1, '1', 100, '400.00', '2022-10-04', 'a', '2022-10-04', 'b', 'c', '40000.00', 3, 1, 1, 4, 1, 3, 3, 4);

--
-- Triggers `test_api_stcvehicledistribution`
--
DELIMITER $$
CREATE TRIGGER `delete_stc_vehicle_distribution` AFTER DELETE ON `test_api_stcvehicledistribution` FOR EACH ROW BEGIN
		
			UPDATE `test_api_mainstock` 
			SET `available_stock` = `available_stock` + old.`stc_dis_qty`
			WHERE `test_api_mainstock`.`region_id_id`=old.`en_reg_id` AND 
			`test_api_mainstock`.`depot_id_id`=old.`en_dep_id` AND
			`test_api_mainstock`.`pump_type_id_id`=old.`pump_type_id_id`;
			
			DELETE FROM `test_api_transaction`
			WHERE `test_api_transaction`.`ref_id`=old.`stc_id`
			AND `test_api_transaction`.`transaction_type`='stc_vehicle';
		END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_stc_vehicle_dist` AFTER UPDATE ON `test_api_stcvehicledistribution` FOR EACH ROW BEGIN
	
		UPDATE `test_api_mainstock` 
		SET `available_stock` = `available_stock` + old.`stc_dis_qty` - new.`stc_dis_qty`
		WHERE `test_api_mainstock`.`region_id_id`=old.`en_reg_id` AND 
		`test_api_mainstock`.`depot_id_id`=old.`en_dep_id` AND
		`test_api_mainstock`.`pump_type_id_id`=old.`pump_type_id_id`;
		
		UPDATE `test_api_transaction`
		SET `fuel_amount`=new.`stc_other_amount`,`transaction_date`=new.`stc_enter_date`,`transaction_rate`=new.`stc_rate`,
			`pump_type_id_id`=new.`pump_type_id_id`,`qty`=new.`stc_dis_qty`,`total`=new.`stc_other_amount`,`transport_cost`=0.00,
			`invoice_no`=new.`issue_order_no`
		WHERE `test_api_transaction`.`ref_id`=old.`stc_id`
		AND `test_api_transaction`.`transaction_type`='stc_vehicle';
	END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `test_api_transaction`
--

CREATE TABLE `test_api_transaction` (
  `transaction_id` int(11) NOT NULL,
  `ref_id` varchar(200) DEFAULT NULL,
  `fuel_amount` decimal(10,2) DEFAULT NULL,
  `transaction_type` varchar(200) DEFAULT NULL,
  `remain_type` varchar(200) DEFAULT NULL,
  `enter_date` date NOT NULL,
  `transaction_date` date NOT NULL,
  `transaction_rate` decimal(10,2) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `depot_id_id` int(11) NOT NULL,
  `pump_type_id_id` int(11) NOT NULL,
  `region_id_id` int(11) NOT NULL,
  `qty` decimal(8,2) DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `transport_cost` decimal(10,2) DEFAULT NULL,
  `invoice_no` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_api_transaction`
--

INSERT INTO `test_api_transaction` (`transaction_id`, `ref_id`, `fuel_amount`, `transaction_type`, `remain_type`, `enter_date`, `transaction_date`, `transaction_rate`, `user_id`, `depot_id_id`, `pump_type_id_id`, `region_id_id`, `qty`, `total`, `transport_cost`, `invoice_no`) VALUES
(1, '1', '2772000.00', 'Incomming', 'add', '2022-10-04', '2022-10-03', '420.00', 3, 3, 1, 4, '6600.00', '2774000.00', '2000.00', '111'),
(2, '20', '80000.00', 'distribute_region', 'remove', '2022-10-04', '2022-10-04', '400.00', 3, 3, 1, 4, '200.00', '80000.00', NULL, NULL),
(3, '20', '200000.00', 'distribute_region', 'remove', '2022-10-04', '2022-10-04', '400.00', 3, 3, 1, 4, '500.00', '200000.00', NULL, '2'),
(4, '20', '200000.00', 'incoming_region', 'add', '2022-10-04', '2022-10-04', '400.00', 3, 2, 1, 2, '500.00', '200000.00', NULL, '2'),
(5, '1', '40000.00', 'stc_vehicle', 'remove', '2022-10-04', '2022-10-04', '400.00', 3, 3, 1, 4, '100.00', '40000.00', '0.00', '1'),
(6, '2', '92400.00', 'other_vehicle', 'remove', '2022-10-04', '2022-10-04', '400.00', 3, 3, 1, 4, '220.00', '96800.00', '4400.00', '1'),
(7, '1', '32000.00', 'contractor_vehicle', 'remove', '2022-10-04', '2022-10-04', '400.00', 3, 3, 1, 4, '80.00', '33600.00', '1600.00', '3'),
(8, '20', '40000.00', 'distribute_region', 'remove', '2022-10-04', '2022-10-04', '400.00', 3, 3, 1, 4, '100.00', '40000.00', NULL, '2'),
(9, '20', '40000.00', 'incoming_region', 'add', '2022-10-04', '2022-10-04', '400.00', 3, 2, 1, 2, '100.00', '40000.00', NULL, '2'),
(10, '2', '1320000.00', 'Incomming', 'add', '2022-10-05', '2022-10-05', '400.00', 3, 3, 1, 4, '3300.00', '1321000.00', '1000.00', '222');

-- --------------------------------------------------------

--
-- Table structure for table `test_api_userlevel`
--

CREATE TABLE `test_api_userlevel` (
  `level_id` int(11) NOT NULL,
  `level_name` varchar(100) DEFAULT NULL,
  `avalableUserLevel` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_api_userlevel`
--

INSERT INTO `test_api_userlevel` (`level_id`, `level_name`, `avalableUserLevel`) VALUES
(1, 'Super Administrator', 1),
(2, 'Administrator', 1),
(3, 'Regional Manager', 0),
(4, 'Deport Officer', 0),
(5, 'Data Entry Operator', 1),
(6, 'DGM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `test_api_vehiclecategory`
--

CREATE TABLE `test_api_vehiclecategory` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_api_vehiclecategory`
--

INSERT INTO `test_api_vehiclecategory` (`cat_id`, `cat_name`) VALUES
(1, 'JEEP');

-- --------------------------------------------------------

--
-- Table structure for table `test_api_vehicledetail`
--

CREATE TABLE `test_api_vehicledetail` (
  `vehicle_id` int(11) NOT NULL,
  `vehicle_reg_no` varchar(100) DEFAULT NULL,
  `vehicle_make` varchar(100) DEFAULT NULL,
  `vehicle_model` varchar(100) DEFAULT NULL,
  `year_of_manufacture` int(11) DEFAULT NULL,
  `vehicle_engine_no` varchar(100) DEFAULT NULL,
  `vehicle_chassi_no` varchar(100) DEFAULT NULL,
  `year_of_reg` date NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `engine_capacity` varchar(100) DEFAULT NULL,
  `transmission` varchar(100) DEFAULT NULL,
  `renewal_date` date DEFAULT NULL,
  `renewal_month` int(11) DEFAULT NULL,
  `renewal_day` int(11) DEFAULT NULL,
  `qr_code` varchar(200) DEFAULT NULL,
  `cat_id_id` int(11) NOT NULL,
  `depot_id_id` int(11) DEFAULT NULL,
  `insurance_company_id_id` int(11) DEFAULT NULL,
  `pump_type_id_id` int(11) NOT NULL,
  `region_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_api_vehicledetail`
--

INSERT INTO `test_api_vehicledetail` (`vehicle_id`, `vehicle_reg_no`, `vehicle_make`, `vehicle_model`, `year_of_manufacture`, `vehicle_engine_no`, `vehicle_chassi_no`, `year_of_reg`, `price`, `engine_capacity`, `transmission`, `renewal_date`, `renewal_month`, `renewal_day`, `qr_code`, `cat_id_id`, `depot_id_id`, `insurance_company_id_id`, `pump_type_id_id`, `region_id_id`) VALUES
(1, 'CAK8106', 'Belgium', 'aa', 2020, 'asas', 'asdff', '2020-08-07', '10000000.00', '10000', '1', '2022-09-12', 9, 12, 'a', 1, 3, NULL, 1, 4),
(2, 'MK-8907', 'Belgium', 'aa', 2000, 'asas', 'asdff', '2022-09-29', '10000000.00', '10000', '1', '2022-09-30', 9, 30, 'b', 1, 2, NULL, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `test_api_closingtable`
--
ALTER TABLE `test_api_closingtable`
  ADD PRIMARY KEY (`closing_id`),
  ADD KEY `test_api_closingtabl_region_id_id_72aeeda8_fk_test_api_` (`region_id_id`);

--
-- Indexes for table `test_api_contractor`
--
ALTER TABLE `test_api_contractor`
  ADD PRIMARY KEY (`contractor_no`);

--
-- Indexes for table `test_api_contractordistribution`
--
ALTER TABLE `test_api_contractordistribution`
  ADD PRIMARY KEY (`contractor_id`),
  ADD KEY `test_api_contractord_pump_type_id_id_09266a5b_fk_test_api_` (`pump_type_id_id`),
  ADD KEY `test_api_contractord_contractor_no_id_b9a4357d_fk_test_api_` (`contractor_no_id`);

--
-- Indexes for table `test_api_depot`
--
ALTER TABLE `test_api_depot`
  ADD PRIMARY KEY (`depot_id`),
  ADD KEY `test_api_depot_region_id_id_7387def5_fk_test_api_` (`region_id_id`);

--
-- Indexes for table `test_api_designation`
--
ALTER TABLE `test_api_designation`
  ADD PRIMARY KEY (`des_id`);

--
-- Indexes for table `test_api_emp`
--
ALTER TABLE `test_api_emp`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `test_api_emp_des_id_id_c2b09813_fk_test_api_designation_des_id` (`des_id_id`);

--
-- Indexes for table `test_api_fueltype`
--
ALTER TABLE `test_api_fueltype`
  ADD PRIMARY KEY (`pump_type_id`);

--
-- Indexes for table `test_api_fueluser`
--
ALTER TABLE `test_api_fueluser`
  ADD PRIMARY KEY (`fuel_user_id`),
  ADD UNIQUE KEY `User_id` (`User_id`),
  ADD KEY `test_api_fueluser_depot_id_id_794c28f8_fk_test_api_` (`depot_id_id`),
  ADD KEY `test_api_fueluser_level_id_id_40b829e0_fk_test_api_` (`level_id_id`),
  ADD KEY `test_api_fueluser_region_id_id_11efb91d_fk_test_api_` (`region_id_id`);

--
-- Indexes for table `test_api_incomingfuel`
--
ALTER TABLE `test_api_incomingfuel`
  ADD PRIMARY KEY (`incoming_fuel_id`),
  ADD KEY `test_api_incomingfue_depot_id_id_156a35bc_fk_test_api_` (`depot_id_id`),
  ADD KEY `test_api_incomingfue_pump_type_id_id_f83cf1c6_fk_test_api_` (`pump_type_id_id`),
  ADD KEY `test_api_incomingfue_region_id_id_511abdd4_fk_test_api_` (`region_id_id`);

--
-- Indexes for table `test_api_institute`
--
ALTER TABLE `test_api_institute`
  ADD PRIMARY KEY (`institute_no`);

--
-- Indexes for table `test_api_insurancecompany`
--
ALTER TABLE `test_api_insurancecompany`
  ADD PRIMARY KEY (`insurance_company_id`);

--
-- Indexes for table `test_api_mainstock`
--
ALTER TABLE `test_api_mainstock`
  ADD PRIMARY KEY (`stock_id`),
  ADD KEY `test_api_mainstock_depot_id_id_b80fcd45_fk_test_api_` (`depot_id_id`),
  ADD KEY `test_api_mainstock_pump_type_id_id_7222bcc9_fk_test_api_` (`pump_type_id_id`),
  ADD KEY `test_api_mainstock_region_id_id_4625a25f_fk_test_api_` (`region_id_id`);

--
-- Indexes for table `test_api_otherdistribution`
--
ALTER TABLE `test_api_otherdistribution`
  ADD PRIMARY KEY (`other_id`),
  ADD KEY `test_api_otherdistri_institute_no_id_c1180e86_fk_test_api_` (`institute_no_id`),
  ADD KEY `test_api_otherdistri_pump_type_id_id_2f317706_fk_test_api_` (`pump_type_id_id`);

--
-- Indexes for table `test_api_pumpmethod`
--
ALTER TABLE `test_api_pumpmethod`
  ADD PRIMARY KEY (`pump_method_id`);

--
-- Indexes for table `test_api_region`
--
ALTER TABLE `test_api_region`
  ADD PRIMARY KEY (`region_id`);

--
-- Indexes for table `test_api_regiondistribution`
--
ALTER TABLE `test_api_regiondistribution`
  ADD PRIMARY KEY (`distribution_id`),
  ADD KEY `test_api_regiondistr_depot_id_id_be1b50cd_fk_test_api_` (`depot_id_id`),
  ADD KEY `test_api_regiondistr_issue_officer_locati_312db57b_fk_test_api_` (`issue_officer_location_id`),
  ADD KEY `test_api_regiondistr_pump_type_id_id_7a60bfa8_fk_test_api_` (`pump_type_id_id`),
  ADD KEY `test_api_regiondistr_region_id_id_ac404828_fk_test_api_` (`region_id_id`),
  ADD KEY `test_api_regiondistr_req_id_id_a3f95bb0_fk_test_api_` (`req_id_id`);

--
-- Indexes for table `test_api_requisition`
--
ALTER TABLE `test_api_requisition`
  ADD PRIMARY KEY (`req_id`),
  ADD KEY `test_api_requisition_depot_id_id_467e0587_fk_test_api_` (`depot_id_id`),
  ADD KEY `test_api_requisition_pump_type_id_id_8b1bb130_fk_test_api_` (`pump_type_id_id`),
  ADD KEY `test_api_requisition_region_id_id_3b213cd6_fk_test_api_` (`region_id_id`);

--
-- Indexes for table `test_api_stcvehicledistribution`
--
ALTER TABLE `test_api_stcvehicledistribution`
  ADD PRIMARY KEY (`stc_id`),
  ADD KEY `test_api_stcvehicled_depot_id_id_40357302_fk_test_api_` (`depot_id_id`),
  ADD KEY `test_api_stcvehicled_institute_no_id_d010ee34_fk_test_api_` (`institute_no_id`),
  ADD KEY `test_api_stcvehicled_pump_type_id_id_fd16d1d8_fk_test_api_` (`pump_type_id_id`),
  ADD KEY `test_api_stcvehicled_region_id_id_46ad40e9_fk_test_api_` (`region_id_id`),
  ADD KEY `test_api_stcvehicled_vehicle_id_id_9cf5e37b_fk_test_api_` (`vehicle_id_id`);

--
-- Indexes for table `test_api_transaction`
--
ALTER TABLE `test_api_transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `test_api_transaction_depot_id_id_0a609d86_fk_test_api_` (`depot_id_id`),
  ADD KEY `test_api_transaction_pump_type_id_id_39ad4b6b_fk_test_api_` (`pump_type_id_id`),
  ADD KEY `test_api_transaction_region_id_id_2c26259c_fk_test_api_` (`region_id_id`);

--
-- Indexes for table `test_api_userlevel`
--
ALTER TABLE `test_api_userlevel`
  ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `test_api_vehiclecategory`
--
ALTER TABLE `test_api_vehiclecategory`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `test_api_vehicledetail`
--
ALTER TABLE `test_api_vehicledetail`
  ADD PRIMARY KEY (`vehicle_id`),
  ADD KEY `test_api_vehicledeta_cat_id_id_be1b49ef_fk_test_api_` (`cat_id_id`),
  ADD KEY `test_api_vehicledeta_depot_id_id_fa4f5612_fk_test_api_` (`depot_id_id`),
  ADD KEY `test_api_vehicledeta_insurance_company_id_7888240d_fk_test_api_` (`insurance_company_id_id`),
  ADD KEY `test_api_vehicledeta_pump_type_id_id_d5f18592_fk_test_api_` (`pump_type_id_id`),
  ADD KEY `test_api_vehicledeta_region_id_id_c20d5ff1_fk_test_api_` (`region_id_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `test_api_closingtable`
--
ALTER TABLE `test_api_closingtable`
  MODIFY `closing_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_api_contractor`
--
ALTER TABLE `test_api_contractor`
  MODIFY `contractor_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `test_api_contractordistribution`
--
ALTER TABLE `test_api_contractordistribution`
  MODIFY `contractor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `test_api_depot`
--
ALTER TABLE `test_api_depot`
  MODIFY `depot_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `test_api_designation`
--
ALTER TABLE `test_api_designation`
  MODIFY `des_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_api_emp`
--
ALTER TABLE `test_api_emp`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_api_fueltype`
--
ALTER TABLE `test_api_fueltype`
  MODIFY `pump_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `test_api_fueluser`
--
ALTER TABLE `test_api_fueluser`
  MODIFY `fuel_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `test_api_incomingfuel`
--
ALTER TABLE `test_api_incomingfuel`
  MODIFY `incoming_fuel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `test_api_institute`
--
ALTER TABLE `test_api_institute`
  MODIFY `institute_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `test_api_insurancecompany`
--
ALTER TABLE `test_api_insurancecompany`
  MODIFY `insurance_company_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_api_mainstock`
--
ALTER TABLE `test_api_mainstock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `test_api_otherdistribution`
--
ALTER TABLE `test_api_otherdistribution`
  MODIFY `other_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `test_api_pumpmethod`
--
ALTER TABLE `test_api_pumpmethod`
  MODIFY `pump_method_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_api_region`
--
ALTER TABLE `test_api_region`
  MODIFY `region_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `test_api_regiondistribution`
--
ALTER TABLE `test_api_regiondistribution`
  MODIFY `distribution_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `test_api_requisition`
--
ALTER TABLE `test_api_requisition`
  MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `test_api_stcvehicledistribution`
--
ALTER TABLE `test_api_stcvehicledistribution`
  MODIFY `stc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `test_api_transaction`
--
ALTER TABLE `test_api_transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `test_api_userlevel`
--
ALTER TABLE `test_api_userlevel`
  MODIFY `level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `test_api_vehiclecategory`
--
ALTER TABLE `test_api_vehiclecategory`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `test_api_vehicledetail`
--
ALTER TABLE `test_api_vehicledetail`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `test_api_closingtable`
--
ALTER TABLE `test_api_closingtable`
  ADD CONSTRAINT `test_api_closingtabl_region_id_id_72aeeda8_fk_test_api_` FOREIGN KEY (`region_id_id`) REFERENCES `test_api_region` (`region_id`);

--
-- Constraints for table `test_api_contractordistribution`
--
ALTER TABLE `test_api_contractordistribution`
  ADD CONSTRAINT `test_api_contractord_contractor_no_id_b9a4357d_fk_test_api_` FOREIGN KEY (`contractor_no_id`) REFERENCES `test_api_contractor` (`contractor_no`),
  ADD CONSTRAINT `test_api_contractord_pump_type_id_id_09266a5b_fk_test_api_` FOREIGN KEY (`pump_type_id_id`) REFERENCES `test_api_fueltype` (`pump_type_id`);

--
-- Constraints for table `test_api_depot`
--
ALTER TABLE `test_api_depot`
  ADD CONSTRAINT `test_api_depot_region_id_id_7387def5_fk_test_api_` FOREIGN KEY (`region_id_id`) REFERENCES `test_api_region` (`region_id`);

--
-- Constraints for table `test_api_emp`
--
ALTER TABLE `test_api_emp`
  ADD CONSTRAINT `test_api_emp_des_id_id_c2b09813_fk_test_api_designation_des_id` FOREIGN KEY (`des_id_id`) REFERENCES `test_api_designation` (`des_id`);

--
-- Constraints for table `test_api_fueluser`
--
ALTER TABLE `test_api_fueluser`
  ADD CONSTRAINT `test_api_fueluser_User_id_694842e4_fk_auth_user_id` FOREIGN KEY (`User_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `test_api_fueluser_depot_id_id_794c28f8_fk_test_api_` FOREIGN KEY (`depot_id_id`) REFERENCES `test_api_depot` (`depot_id`),
  ADD CONSTRAINT `test_api_fueluser_level_id_id_40b829e0_fk_test_api_` FOREIGN KEY (`level_id_id`) REFERENCES `test_api_userlevel` (`level_id`),
  ADD CONSTRAINT `test_api_fueluser_region_id_id_11efb91d_fk_test_api_` FOREIGN KEY (`region_id_id`) REFERENCES `test_api_region` (`region_id`);

--
-- Constraints for table `test_api_incomingfuel`
--
ALTER TABLE `test_api_incomingfuel`
  ADD CONSTRAINT `test_api_incomingfue_depot_id_id_156a35bc_fk_test_api_` FOREIGN KEY (`depot_id_id`) REFERENCES `test_api_depot` (`depot_id`),
  ADD CONSTRAINT `test_api_incomingfue_pump_type_id_id_f83cf1c6_fk_test_api_` FOREIGN KEY (`pump_type_id_id`) REFERENCES `test_api_fueltype` (`pump_type_id`),
  ADD CONSTRAINT `test_api_incomingfue_region_id_id_511abdd4_fk_test_api_` FOREIGN KEY (`region_id_id`) REFERENCES `test_api_region` (`region_id`);

--
-- Constraints for table `test_api_mainstock`
--
ALTER TABLE `test_api_mainstock`
  ADD CONSTRAINT `test_api_mainstock_depot_id_id_b80fcd45_fk_test_api_` FOREIGN KEY (`depot_id_id`) REFERENCES `test_api_depot` (`depot_id`),
  ADD CONSTRAINT `test_api_mainstock_pump_type_id_id_7222bcc9_fk_test_api_` FOREIGN KEY (`pump_type_id_id`) REFERENCES `test_api_fueltype` (`pump_type_id`),
  ADD CONSTRAINT `test_api_mainstock_region_id_id_4625a25f_fk_test_api_` FOREIGN KEY (`region_id_id`) REFERENCES `test_api_region` (`region_id`);

--
-- Constraints for table `test_api_otherdistribution`
--
ALTER TABLE `test_api_otherdistribution`
  ADD CONSTRAINT `test_api_otherdistri_institute_no_id_c1180e86_fk_test_api_` FOREIGN KEY (`institute_no_id`) REFERENCES `test_api_institute` (`institute_no`),
  ADD CONSTRAINT `test_api_otherdistri_pump_type_id_id_2f317706_fk_test_api_` FOREIGN KEY (`pump_type_id_id`) REFERENCES `test_api_fueltype` (`pump_type_id`);

--
-- Constraints for table `test_api_regiondistribution`
--
ALTER TABLE `test_api_regiondistribution`
  ADD CONSTRAINT `test_api_regiondistr_depot_id_id_be1b50cd_fk_test_api_` FOREIGN KEY (`depot_id_id`) REFERENCES `test_api_depot` (`depot_id`),
  ADD CONSTRAINT `test_api_regiondistr_issue_officer_locati_312db57b_fk_test_api_` FOREIGN KEY (`issue_officer_location_id`) REFERENCES `test_api_depot` (`depot_id`),
  ADD CONSTRAINT `test_api_regiondistr_pump_type_id_id_7a60bfa8_fk_test_api_` FOREIGN KEY (`pump_type_id_id`) REFERENCES `test_api_fueltype` (`pump_type_id`),
  ADD CONSTRAINT `test_api_regiondistr_region_id_id_ac404828_fk_test_api_` FOREIGN KEY (`region_id_id`) REFERENCES `test_api_region` (`region_id`),
  ADD CONSTRAINT `test_api_regiondistr_req_id_id_a3f95bb0_fk_test_api_` FOREIGN KEY (`req_id_id`) REFERENCES `test_api_requisition` (`req_id`);

--
-- Constraints for table `test_api_requisition`
--
ALTER TABLE `test_api_requisition`
  ADD CONSTRAINT `test_api_requisition_depot_id_id_467e0587_fk_test_api_` FOREIGN KEY (`depot_id_id`) REFERENCES `test_api_depot` (`depot_id`),
  ADD CONSTRAINT `test_api_requisition_pump_type_id_id_8b1bb130_fk_test_api_` FOREIGN KEY (`pump_type_id_id`) REFERENCES `test_api_fueltype` (`pump_type_id`),
  ADD CONSTRAINT `test_api_requisition_region_id_id_3b213cd6_fk_test_api_` FOREIGN KEY (`region_id_id`) REFERENCES `test_api_region` (`region_id`);

--
-- Constraints for table `test_api_stcvehicledistribution`
--
ALTER TABLE `test_api_stcvehicledistribution`
  ADD CONSTRAINT `test_api_stcvehicled_depot_id_id_40357302_fk_test_api_` FOREIGN KEY (`depot_id_id`) REFERENCES `test_api_depot` (`depot_id`),
  ADD CONSTRAINT `test_api_stcvehicled_institute_no_id_d010ee34_fk_test_api_` FOREIGN KEY (`institute_no_id`) REFERENCES `test_api_institute` (`institute_no`),
  ADD CONSTRAINT `test_api_stcvehicled_pump_type_id_id_fd16d1d8_fk_test_api_` FOREIGN KEY (`pump_type_id_id`) REFERENCES `test_api_fueltype` (`pump_type_id`),
  ADD CONSTRAINT `test_api_stcvehicled_region_id_id_46ad40e9_fk_test_api_` FOREIGN KEY (`region_id_id`) REFERENCES `test_api_region` (`region_id`),
  ADD CONSTRAINT `test_api_stcvehicled_vehicle_id_id_9cf5e37b_fk_test_api_` FOREIGN KEY (`vehicle_id_id`) REFERENCES `test_api_vehicledetail` (`vehicle_id`);

--
-- Constraints for table `test_api_transaction`
--
ALTER TABLE `test_api_transaction`
  ADD CONSTRAINT `test_api_transaction_depot_id_id_0a609d86_fk_test_api_` FOREIGN KEY (`depot_id_id`) REFERENCES `test_api_depot` (`depot_id`),
  ADD CONSTRAINT `test_api_transaction_pump_type_id_id_39ad4b6b_fk_test_api_` FOREIGN KEY (`pump_type_id_id`) REFERENCES `test_api_fueltype` (`pump_type_id`),
  ADD CONSTRAINT `test_api_transaction_region_id_id_2c26259c_fk_test_api_` FOREIGN KEY (`region_id_id`) REFERENCES `test_api_region` (`region_id`);

--
-- Constraints for table `test_api_vehicledetail`
--
ALTER TABLE `test_api_vehicledetail`
  ADD CONSTRAINT `test_api_vehicledeta_cat_id_id_be1b49ef_fk_test_api_` FOREIGN KEY (`cat_id_id`) REFERENCES `test_api_vehiclecategory` (`cat_id`),
  ADD CONSTRAINT `test_api_vehicledeta_depot_id_id_fa4f5612_fk_test_api_` FOREIGN KEY (`depot_id_id`) REFERENCES `test_api_depot` (`depot_id`),
  ADD CONSTRAINT `test_api_vehicledeta_insurance_company_id_7888240d_fk_test_api_` FOREIGN KEY (`insurance_company_id_id`) REFERENCES `test_api_insurancecompany` (`insurance_company_id`),
  ADD CONSTRAINT `test_api_vehicledeta_pump_type_id_id_d5f18592_fk_test_api_` FOREIGN KEY (`pump_type_id_id`) REFERENCES `test_api_fueltype` (`pump_type_id`),
  ADD CONSTRAINT `test_api_vehicledeta_region_id_id_c20d5ff1_fk_test_api_` FOREIGN KEY (`region_id_id`) REFERENCES `test_api_region` (`region_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
