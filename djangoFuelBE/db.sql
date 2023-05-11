/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 10.4.24-MariaDB : Database - django_test_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `auth_group` */

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add depot',7,'add_depot'),(26,'Can change depot',7,'change_depot'),(27,'Can delete depot',7,'delete_depot'),(28,'Can view depot',7,'view_depot'),(29,'Can add designation',8,'add_designation'),(30,'Can change designation',8,'change_designation'),(31,'Can delete designation',8,'delete_designation'),(32,'Can view designation',8,'view_designation'),(33,'Can add emp',9,'add_emp'),(34,'Can change emp',9,'change_emp'),(35,'Can delete emp',9,'delete_emp'),(36,'Can view emp',9,'view_emp'),(37,'Can add fuel_type',10,'add_fuel_type'),(38,'Can change fuel_type',10,'change_fuel_type'),(39,'Can delete fuel_type',10,'delete_fuel_type'),(40,'Can view fuel_type',10,'view_fuel_type'),(41,'Can add fuel user',11,'add_fueluser'),(42,'Can change fuel user',11,'change_fueluser'),(43,'Can delete fuel user',11,'delete_fueluser'),(44,'Can view fuel user',11,'view_fueluser'),(45,'Can add incoming_fuel',12,'add_incoming_fuel'),(46,'Can change incoming_fuel',12,'change_incoming_fuel'),(47,'Can delete incoming_fuel',12,'delete_incoming_fuel'),(48,'Can view incoming_fuel',12,'view_incoming_fuel'),(49,'Can add institute',13,'add_institute'),(50,'Can change institute',13,'change_institute'),(51,'Can delete institute',13,'delete_institute'),(52,'Can view institute',13,'view_institute'),(53,'Can add insurance_company',14,'add_insurance_company'),(54,'Can change insurance_company',14,'change_insurance_company'),(55,'Can delete insurance_company',14,'delete_insurance_company'),(56,'Can view insurance_company',14,'view_insurance_company'),(57,'Can add pump_method',15,'add_pump_method'),(58,'Can change pump_method',15,'change_pump_method'),(59,'Can delete pump_method',15,'delete_pump_method'),(60,'Can view pump_method',15,'view_pump_method'),(61,'Can add region',16,'add_region'),(62,'Can change region',16,'change_region'),(63,'Can delete region',16,'delete_region'),(64,'Can view region',16,'view_region'),(65,'Can add user level',17,'add_userlevel'),(66,'Can change user level',17,'change_userlevel'),(67,'Can delete user level',17,'delete_userlevel'),(68,'Can view user level',17,'view_userlevel'),(69,'Can add vehicle_category',18,'add_vehicle_category'),(70,'Can change vehicle_category',18,'change_vehicle_category'),(71,'Can delete vehicle_category',18,'delete_vehicle_category'),(72,'Can view vehicle_category',18,'view_vehicle_category'),(73,'Can add vehicle_detail',19,'add_vehicle_detail'),(74,'Can change vehicle_detail',19,'change_vehicle_detail'),(75,'Can delete vehicle_detail',19,'delete_vehicle_detail'),(76,'Can view vehicle_detail',19,'view_vehicle_detail'),(77,'Can add user details',20,'add_userdetails'),(78,'Can change user details',20,'change_userdetails'),(79,'Can delete user details',20,'delete_userdetails'),(80,'Can view user details',20,'view_userdetails'),(81,'Can add transaction',21,'add_transaction'),(82,'Can change transaction',21,'change_transaction'),(83,'Can delete transaction',21,'delete_transaction'),(84,'Can view transaction',21,'view_transaction'),(85,'Can add requisition',22,'add_requisition'),(86,'Can change requisition',22,'change_requisition'),(87,'Can delete requisition',22,'delete_requisition'),(88,'Can view requisition',22,'view_requisition'),(89,'Can add region_distribution',23,'add_region_distribution'),(90,'Can change region_distribution',23,'change_region_distribution'),(91,'Can delete region_distribution',23,'delete_region_distribution'),(92,'Can view region_distribution',23,'view_region_distribution'),(93,'Can add other_distribution',24,'add_other_distribution'),(94,'Can change other_distribution',24,'change_other_distribution'),(95,'Can delete other_distribution',24,'delete_other_distribution'),(96,'Can view other_distribution',24,'view_other_distribution'),(97,'Can add main_stock',25,'add_main_stock'),(98,'Can change main_stock',25,'change_main_stock'),(99,'Can delete main_stock',25,'delete_main_stock'),(100,'Can view main_stock',25,'view_main_stock'),(101,'Can add closing_table',26,'add_closing_table'),(102,'Can change closing_table',26,'change_closing_table'),(103,'Can delete closing_table',26,'delete_closing_table'),(104,'Can view closing_table',26,'view_closing_table'),(105,'Can add Token',27,'add_token'),(106,'Can change Token',27,'change_token'),(107,'Can delete Token',27,'delete_token'),(108,'Can view Token',27,'view_token'),(109,'Can add token',28,'add_tokenproxy'),(110,'Can change token',28,'change_tokenproxy'),(111,'Can delete token',28,'delete_tokenproxy'),(112,'Can view token',28,'view_tokenproxy'),(113,'Can add st c_vehicle_distribution',29,'add_stc_vehicle_distribution'),(114,'Can change st c_vehicle_distribution',29,'change_stc_vehicle_distribution'),(115,'Can delete st c_vehicle_distribution',29,'delete_stc_vehicle_distribution'),(116,'Can view st c_vehicle_distribution',29,'view_stc_vehicle_distribution');

/*Table structure for table `auth_user` */

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `auth_user` */

insert  into `auth_user`(`id`,`password`,`last_login`,`is_superuser`,`username`,`first_name`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`) values (1,'pbkdf2_sha256$390000$zNRBNgdK9AilmDLTy8U9dG$8O/hXpDNRVGtbr76FyviDSKxX14z4Ymq/pQbtTCm6qY=','2022-09-08 08:39:50.835278',1,'admin','','','admin@gmail.com',1,1,'2022-09-08 08:39:34.743784'),(2,'pbkdf2_sha256$390000$dBpKNAjzfgI4GjE5fIU2bM$0Tdz1qMvKUrvnN6GIXdZ4aVy1ClKBhx6ogYerft5qPE=',NULL,0,'shamara','shamara','perera','abcd@gmail.com',0,1,'2022-09-12 08:22:49.000000');

/*Table structure for table `auth_user_groups` */

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `authtoken_token` */

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `authtoken_token` */

/*Table structure for table `django_admin_log` */

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

/*Data for the table `django_admin_log` */

insert  into `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) values (1,'2022-09-08 08:40:04.098809','1','2 WHEELERS',1,'[{\"added\": {}}]',18,1),(2,'2022-09-08 08:40:18.521548','2','CableTractor',1,'[{\"added\": {}}]',18,1),(3,'2022-09-08 08:40:23.215335','3','CAR',1,'[{\"added\": {}}]',18,1),(4,'2022-09-08 08:40:29.384561','4','CATERPILAR',1,'[{\"added\": {}}]',18,1),(5,'2022-09-08 08:40:37.498662','5','Crane Lorry',1,'[{\"added\": {}}]',18,1),(6,'2022-09-08 08:40:42.239189','6','CREW CAB',1,'[{\"added\": {}}]',18,1),(7,'2022-09-08 08:40:49.575813','7','DOUBLE CAB',1,'[{\"added\": {}}]',18,1),(8,'2022-09-08 08:40:57.775140','8','JAC Forklift',1,'[{\"added\": {}}]',18,1),(9,'2022-09-08 08:41:06.011251','9','JEEP',1,'[{\"added\": {}}]',18,1),(10,'2022-09-08 08:41:19.367219','10','Normal Lorry',1,'[{\"added\": {}}]',18,1),(11,'2022-09-08 08:41:27.554959','11','SINGLE CAB',1,'[{\"added\": {}}]',18,1),(12,'2022-09-08 08:41:33.921139','12','TRACTOR',1,'[{\"added\": {}}]',18,1),(13,'2022-09-08 08:41:41.882317','13','TRAILERS',1,'[{\"added\": {}}]',18,1),(14,'2022-09-08 08:41:48.734232','14','Heavy Vehicle',1,'[{\"added\": {}}]',18,1),(15,'2022-09-08 08:41:54.770330','15','Light Vehicle',1,'[{\"added\": {}}]',18,1),(16,'2022-09-12 08:22:49.715936','2','shamara',1,'[{\"added\": {}}]',4,1),(17,'2022-09-12 08:25:23.045705','2','shamara',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]',4,1),(18,'2022-09-12 08:28:17.463268','1','Ampara ARM A001  ',1,'[{\"added\": {}}]',7,1),(19,'2022-09-12 08:28:43.739073','1','shamara True  ',1,'[{\"added\": {}}]',11,1);

/*Table structure for table `django_content_type` */

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(27,'authtoken','token'),(28,'authtoken','tokenproxy'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(26,'test_api','closing_table'),(7,'test_api','depot'),(8,'test_api','designation'),(9,'test_api','emp'),(11,'test_api','fueluser'),(10,'test_api','fuel_type'),(12,'test_api','incoming_fuel'),(13,'test_api','institute'),(14,'test_api','insurance_company'),(25,'test_api','main_stock'),(24,'test_api','other_distribution'),(15,'test_api','pump_method'),(16,'test_api','region'),(23,'test_api','region_distribution'),(22,'test_api','requisition'),(29,'test_api','stc_vehicle_distribution'),(21,'test_api','transaction'),(20,'test_api','userdetails'),(17,'test_api','userlevel'),(18,'test_api','vehicle_category'),(19,'test_api','vehicle_detail');

/*Table structure for table `django_migrations` */

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (1,'contenttypes','0001_initial','2022-09-08 08:33:52.777805'),(2,'auth','0001_initial','2022-09-08 08:33:59.259681'),(3,'admin','0001_initial','2022-09-08 08:34:01.009571'),(4,'admin','0002_logentry_remove_auto_add','2022-09-08 08:34:01.037570'),(5,'admin','0003_logentry_add_action_flag_choices','2022-09-08 08:34:01.075590'),(6,'contenttypes','0002_remove_content_type_name','2022-09-08 08:34:01.587231'),(7,'auth','0002_alter_permission_name_max_length','2022-09-08 08:34:02.451132'),(8,'auth','0003_alter_user_email_max_length','2022-09-08 08:34:02.586018'),(9,'auth','0004_alter_user_username_opts','2022-09-08 08:34:02.675826'),(10,'auth','0005_alter_user_last_login_null','2022-09-08 08:34:03.134639'),(11,'auth','0006_require_contenttypes_0002','2022-09-08 08:34:03.181210'),(12,'auth','0007_alter_validators_add_error_messages','2022-09-08 08:34:03.308253'),(13,'auth','0008_alter_user_username_max_length','2022-09-08 08:34:03.428210'),(14,'auth','0009_alter_user_last_name_max_length','2022-09-08 08:34:03.511120'),(15,'auth','0010_alter_group_name_max_length','2022-09-08 08:34:03.668025'),(16,'auth','0011_update_proxy_permissions','2022-09-08 08:34:03.734392'),(17,'auth','0012_alter_user_first_name_max_length','2022-09-08 08:34:03.811383'),(18,'authtoken','0001_initial','2022-09-08 08:34:04.592741'),(19,'authtoken','0002_auto_20160226_1747','2022-09-08 08:34:04.638741'),(20,'authtoken','0003_tokenproxy','2022-09-08 08:34:04.672272'),(21,'sessions','0001_initial','2022-09-08 08:34:05.252447'),(22,'test_api','0001_initial','2022-09-08 08:34:32.401432'),(23,'test_api','0002_incoming_fuel_invoice_no','2022-09-08 10:24:13.227194'),(24,'test_api','0003_requisition_fuel_type_alter_fueluser_last_login_time_and_more','2022-09-12 04:52:46.661842'),(25,'test_api','0004_remove_other_distribution_vehicle_id_and_more','2022-09-12 05:41:31.280378'),(26,'test_api','0005_rename_approve_by_stc_vehicle_distribution_stc_approve_by_and_more','2022-09-12 07:19:02.062455'),(27,'test_api','0006_remove_fueluser_password_remove_fueluser_user_name','2022-09-12 08:26:33.251627');

/*Table structure for table `django_session` */

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values ('uoowpbr388r62kd3uf9j7pse17295pvg','.eJxVjDsOwjAQRO_iGlmOjT9Q0ucM1q53jQPIkeKkQtwdR0oBxTRv3sxbRNjWErfGS5xIXMUgTr8MIT257gU9oN5nmea6LhPKXZFH2-Q4E79uh_t3UKCVvrYhKQxnCNmR9gYc9XBnF42BAntwyIYcownaEqCxKmlFOZG2fsji8wX8cDi6:1oWD4g:QyXQTI3-cGDI3ff_7LgawKSaEAZFvnbme82hx7MfIAM','2022-09-22 08:39:50.858289');

/*Table structure for table `test_api_closing_table` */

CREATE TABLE `test_api_closing_table` (
  `closing_id` int(11) NOT NULL AUTO_INCREMENT,
  `closing_balance` double DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `region_id_id` int(11) NOT NULL,
  PRIMARY KEY (`closing_id`),
  KEY `test_api_closing_tab_region_id_id_3a003f70_fk_test_api_` (`region_id_id`),
  CONSTRAINT `test_api_closing_tab_region_id_id_3a003f70_fk_test_api_` FOREIGN KEY (`region_id_id`) REFERENCES `test_api_region` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `test_api_closing_table` */

/*Table structure for table `test_api_depot` */

CREATE TABLE `test_api_depot` (
  `depot_id` int(11) NOT NULL AUTO_INCREMENT,
  `depot_txt` varchar(100) DEFAULT NULL,
  `deport_tel` varchar(100) DEFAULT NULL,
  `deport_code` varchar(100) DEFAULT NULL,
  `deport_image_location` varchar(500) DEFAULT NULL,
  `priority` tinyint(1) NOT NULL,
  `sortid` tinyint(1) NOT NULL,
  `depo_location` varchar(100) DEFAULT NULL,
  `region_id_id` int(11) NOT NULL,
  PRIMARY KEY (`depot_id`),
  KEY `test_api_depot_region_id_id_7387def5_fk_test_api_` (`region_id_id`),
  CONSTRAINT `test_api_depot_region_id_id_7387def5_fk_test_api_` FOREIGN KEY (`region_id_id`) REFERENCES `test_api_region` (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `test_api_depot` */

insert  into `test_api_depot`(`depot_id`,`depot_txt`,`deport_tel`,`deport_code`,`deport_image_location`,`priority`,`sortid`,`depo_location`,`region_id_id`) values (1,'Ampara ARM','077','A001','aa',1,1,'ddd',1);

/*Table structure for table `test_api_designation` */

CREATE TABLE `test_api_designation` (
  `des_id` int(11) NOT NULL AUTO_INCREMENT,
  `des_text` varchar(200) DEFAULT NULL,
  `des_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`des_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `test_api_designation` */

/*Table structure for table `test_api_emp` */

CREATE TABLE `test_api_emp` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(100) NOT NULL,
  `epf_no` varchar(100) DEFAULT NULL,
  `des_id_id` int(11) NOT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `test_api_emp_des_id_id_c2b09813_fk_test_api_designation_des_id` (`des_id_id`),
  CONSTRAINT `test_api_emp_des_id_id_c2b09813_fk_test_api_designation_des_id` FOREIGN KEY (`des_id_id`) REFERENCES `test_api_designation` (`des_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `test_api_emp` */

/*Table structure for table `test_api_fuel_type` */

CREATE TABLE `test_api_fuel_type` (
  `pump_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `pump_text` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pump_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `test_api_fuel_type` */

/*Table structure for table `test_api_fueluser` */

CREATE TABLE `test_api_fueluser` (
  `fuel_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_status` tinyint(1) NOT NULL,
  `last_login_time` datetime(6) NOT NULL,
  `User_id` int(11) NOT NULL,
  `depot_code_id` int(11) NOT NULL,
  `region_code_id` int(11) NOT NULL,
  `userLevel_id` int(11) NOT NULL,
  PRIMARY KEY (`fuel_user_id`),
  UNIQUE KEY `User_id` (`User_id`),
  KEY `test_api_fueluser_region_code_id_67e6f389_fk_test_api_` (`region_code_id`),
  KEY `test_api_fueluser_userLevel_id_45e59c6a_fk_test_api_` (`userLevel_id`),
  KEY `test_api_fueluser_depot_code_id_0d1c3384_fk_test_api_` (`depot_code_id`),
  CONSTRAINT `test_api_fueluser_User_id_694842e4_fk_auth_user_id` FOREIGN KEY (`User_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `test_api_fueluser_depot_code_id_0d1c3384_fk_test_api_` FOREIGN KEY (`depot_code_id`) REFERENCES `test_api_depot` (`depot_id`),
  CONSTRAINT `test_api_fueluser_region_code_id_67e6f389_fk_test_api_` FOREIGN KEY (`region_code_id`) REFERENCES `test_api_region` (`region_id`),
  CONSTRAINT `test_api_fueluser_userLevel_id_45e59c6a_fk_test_api_` FOREIGN KEY (`userLevel_id`) REFERENCES `test_api_userlevel` (`level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `test_api_fueluser` */

insert  into `test_api_fueluser`(`fuel_user_id`,`account_status`,`last_login_time`,`User_id`,`depot_code_id`,`region_code_id`,`userLevel_id`) values (1,1,'2022-09-12 08:28:43.672302',2,1,1,3);

/*Table structure for table `test_api_incoming_fuel` */

CREATE TABLE `test_api_incoming_fuel` (
  `incoming_fuel_id` int(11) NOT NULL AUTO_INCREMENT,
  `incoming_fuel_date` date NOT NULL,
  `incoming_fuel_enter_date` date DEFAULT NULL,
  `incoming_fuel_qty` double DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `transport_cost` decimal(10,2) DEFAULT NULL,
  `receive_location` varchar(100) DEFAULT NULL,
  `supplier_name` varchar(200) DEFAULT NULL,
  `grn_no` varchar(200) DEFAULT NULL,
  `grn_enter_date` date DEFAULT NULL,
  `received_officer` varchar(200) DEFAULT NULL,
  `incoming_fuel_type` varchar(100) DEFAULT NULL,
  `invoice_no` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`incoming_fuel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `test_api_incoming_fuel` */

/*Table structure for table `test_api_institute` */

CREATE TABLE `test_api_institute` (
  `institute_no` int(11) NOT NULL AUTO_INCREMENT,
  `institute_text` varchar(200) DEFAULT NULL,
  `contact_person_name` varchar(200) DEFAULT NULL,
  `contact_person_phone_no` int(11) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`institute_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `test_api_institute` */

insert  into `test_api_institute`(`institute_no`,`institute_text`,`contact_person_name`,`contact_person_phone_no`,`address`) values (1,'Zoo','Saman Rathnayake',777,'National Zoological Garden, Dehiwala');

/*Table structure for table `test_api_insurance_company` */

CREATE TABLE `test_api_insurance_company` (
  `insurance_company_id` int(11) NOT NULL AUTO_INCREMENT,
  `insurance_company_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`insurance_company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `test_api_insurance_company` */

/*Table structure for table `test_api_main_stock` */

CREATE TABLE `test_api_main_stock` (
  `stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `available_stock` double DEFAULT NULL,
  `region_id_id` int(11) NOT NULL,
  PRIMARY KEY (`stock_id`),
  KEY `test_api_main_stock_region_id_id_241b4112_fk_test_api_` (`region_id_id`),
  CONSTRAINT `test_api_main_stock_region_id_id_241b4112_fk_test_api_` FOREIGN KEY (`region_id_id`) REFERENCES `test_api_region` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `test_api_main_stock` */

/*Table structure for table `test_api_other_distribution` */

CREATE TABLE `test_api_other_distribution` (
  `other_id` int(11) NOT NULL AUTO_INCREMENT,
  `other_qty` double DEFAULT NULL,
  `other_rate` decimal(10,2) DEFAULT NULL,
  `enter_date` date NOT NULL,
  `req_by` varchar(200) DEFAULT NULL,
  `req_date` date NOT NULL,
  `issued_by` varchar(200) DEFAULT NULL,
  `handling_charge` decimal(10,2) DEFAULT NULL,
  `handling_rate` decimal(10,2) DEFAULT NULL,
  `other_amount` decimal(10,2) DEFAULT NULL,
  `institute_no_id` int(11) DEFAULT NULL,
  `pump_type_id_id` int(11) NOT NULL,
  `vehicle_no` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`other_id`),
  KEY `test_api_other_distr_institute_no_id_7cbaec5c_fk_test_api_` (`institute_no_id`),
  KEY `test_api_other_distr_pump_type_id_id_92ed30c4_fk_test_api_` (`pump_type_id_id`),
  CONSTRAINT `test_api_other_distr_institute_no_id_7cbaec5c_fk_test_api_` FOREIGN KEY (`institute_no_id`) REFERENCES `test_api_institute` (`institute_no`),
  CONSTRAINT `test_api_other_distr_pump_type_id_id_92ed30c4_fk_test_api_` FOREIGN KEY (`pump_type_id_id`) REFERENCES `test_api_fuel_type` (`pump_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `test_api_other_distribution` */

/*Table structure for table `test_api_pump_method` */

CREATE TABLE `test_api_pump_method` (
  `pump_method_id` int(11) NOT NULL AUTO_INCREMENT,
  `pump_method_type` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pump_method_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `test_api_pump_method` */

/*Table structure for table `test_api_region` */

CREATE TABLE `test_api_region` (
  `region_id` int(11) NOT NULL AUTO_INCREMENT,
  `region_txt` varchar(200) DEFAULT NULL,
  `region_code` varchar(10) DEFAULT NULL,
  `region_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

/*Data for the table `test_api_region` */

insert  into `test_api_region`(`region_id`,`region_txt`,`region_code`,`region_status`) values (1,'AMPARA REGION','AMP',1),(2,'ANURADHAPURA REGION','ANU',1),(3,'BADULLA REGION','BAD',1),(4,'COLOMBO REGION','COL',1),(5,'JAFFNA REGION','JAF',1),(6,'KURUNEGALA REGION','KUR',1),(7,'1,13','KAN',1),(8,'KALDEMULLA','KAL',1),(9,'MATARA REGION','MAT',1),(10,'MONARAGALA REGION','MON',1),(11,'NUWARAELIYA REGION','NUW',1),(12,'POLONNARUWA REGION','POL',1),(13,'RATHNAPURA REGION','RAT',1),(14,'SHOW ROOM','SHO',1),(15,'OLEO RESIN PROJECT','OLE',0),(16,'ORUGODAWATTA','ORU',0),(17,'HEAD OFFICE','HEO',1),(19,'KEPPETIPOLA','KEP',0),(20,'BOOSSA','BOO',0),(21,'MECHANICAL WORK SHOP','MEC',0),(22,'BANDARAWELA  REGION','BAN',0);

/*Table structure for table `test_api_region_distribution` */

CREATE TABLE `test_api_region_distribution` (
  `distribution_id` int(11) NOT NULL AUTO_INCREMENT,
  `distribution_date` date NOT NULL,
  `distribution_unit_price` decimal(10,2) DEFAULT NULL,
  `distribution_qty` double DEFAULT NULL,
  `issue_order_no` varchar(200) DEFAULT NULL,
  `barrel_count` int(11) DEFAULT NULL,
  `issue_officer_name` varchar(200) DEFAULT NULL,
  `issue_officer_designation` varchar(200) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `depot_id_id` int(11) NOT NULL,
  `issue_officer_location_id` int(11) NOT NULL,
  `pump_type_id_id` int(11) NOT NULL,
  `region_id_id` int(11) NOT NULL,
  `req_id_id` int(11) NOT NULL,
  PRIMARY KEY (`distribution_id`),
  KEY `test_api_region_dist_depot_id_id_333e8e7e_fk_test_api_` (`depot_id_id`),
  KEY `test_api_region_dist_issue_officer_locati_2f6746da_fk_test_api_` (`issue_officer_location_id`),
  KEY `test_api_region_dist_pump_type_id_id_6ad6764e_fk_test_api_` (`pump_type_id_id`),
  KEY `test_api_region_dist_region_id_id_7fc48bad_fk_test_api_` (`region_id_id`),
  KEY `test_api_region_dist_req_id_id_019c9176_fk_test_api_` (`req_id_id`),
  CONSTRAINT `test_api_region_dist_depot_id_id_333e8e7e_fk_test_api_` FOREIGN KEY (`depot_id_id`) REFERENCES `test_api_depot` (`depot_id`),
  CONSTRAINT `test_api_region_dist_issue_officer_locati_2f6746da_fk_test_api_` FOREIGN KEY (`issue_officer_location_id`) REFERENCES `test_api_depot` (`depot_id`),
  CONSTRAINT `test_api_region_dist_pump_type_id_id_6ad6764e_fk_test_api_` FOREIGN KEY (`pump_type_id_id`) REFERENCES `test_api_fuel_type` (`pump_type_id`),
  CONSTRAINT `test_api_region_dist_region_id_id_7fc48bad_fk_test_api_` FOREIGN KEY (`region_id_id`) REFERENCES `test_api_region` (`region_id`),
  CONSTRAINT `test_api_region_dist_req_id_id_019c9176_fk_test_api_` FOREIGN KEY (`req_id_id`) REFERENCES `test_api_requisition` (`req_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `test_api_region_distribution` */

/*Table structure for table `test_api_requisition` */

CREATE TABLE `test_api_requisition` (
  `req_id` int(11) NOT NULL AUTO_INCREMENT,
  `req_no` int(11) DEFAULT NULL,
  `req_person_name` varchar(200) DEFAULT NULL,
  `req_person_designation` varchar(200) DEFAULT NULL,
  `req_date` date NOT NULL,
  `req_qty` double DEFAULT NULL,
  `pump_qty` int(11) DEFAULT NULL,
  `depot_id_id` int(11) NOT NULL,
  `emp_id_id` int(11) NOT NULL,
  `region_id_id` int(11) NOT NULL,
  `fuel_type_id` int(11) NOT NULL,
  PRIMARY KEY (`req_id`),
  KEY `test_api_requisition_depot_id_id_467e0587_fk_test_api_` (`depot_id_id`),
  KEY `test_api_requisition_emp_id_id_8dfc87ac_fk_test_api_emp_emp_id` (`emp_id_id`),
  KEY `test_api_requisition_region_id_id_3b213cd6_fk_test_api_` (`region_id_id`),
  KEY `test_api_requisition_fuel_type_id_65655400_fk_test_api_` (`fuel_type_id`),
  CONSTRAINT `test_api_requisition_depot_id_id_467e0587_fk_test_api_` FOREIGN KEY (`depot_id_id`) REFERENCES `test_api_depot` (`depot_id`),
  CONSTRAINT `test_api_requisition_emp_id_id_8dfc87ac_fk_test_api_emp_emp_id` FOREIGN KEY (`emp_id_id`) REFERENCES `test_api_emp` (`emp_id`),
  CONSTRAINT `test_api_requisition_fuel_type_id_65655400_fk_test_api_` FOREIGN KEY (`fuel_type_id`) REFERENCES `test_api_fuel_type` (`pump_type_id`),
  CONSTRAINT `test_api_requisition_region_id_id_3b213cd6_fk_test_api_` FOREIGN KEY (`region_id_id`) REFERENCES `test_api_region` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `test_api_requisition` */

/*Table structure for table `test_api_stc_vehicle_distribution` */

CREATE TABLE `test_api_stc_vehicle_distribution` (
  `stc_id` int(11) NOT NULL AUTO_INCREMENT,
  `stc_dis_qty` double DEFAULT NULL,
  `stc_enter_date` date NOT NULL,
  `stc_req_by` varchar(200) DEFAULT NULL,
  `stc_req_date` date NOT NULL,
  `stc_approve_by` varchar(200) DEFAULT NULL,
  `stc_issued_by` varchar(200) DEFAULT NULL,
  `stc_other_amount` decimal(10,2) DEFAULT NULL,
  `stc_rate` decimal(10,2) DEFAULT NULL,
  `vehicle_id_id` int(11) NOT NULL,
  `depot_id_id` int(11) DEFAULT NULL,
  `institute_no_id` int(11) DEFAULT NULL,
  `pump_type_id_id` int(11) NOT NULL,
  `region_id_id` int(11) NOT NULL,
  PRIMARY KEY (`stc_id`),
  KEY `test_api_stc_vehicle_vehicle_id_id_5a360ba4_fk_test_api_` (`vehicle_id_id`),
  KEY `test_api_stc_vehicle_depot_id_id_ede35c0a_fk_test_api_` (`depot_id_id`),
  KEY `test_api_stc_vehicle_institute_no_id_5e7a03fb_fk_test_api_` (`institute_no_id`),
  KEY `test_api_stc_vehicle_pump_type_id_id_e0c1d8ae_fk_test_api_` (`pump_type_id_id`),
  KEY `test_api_stc_vehicle_region_id_id_f675f7b5_fk_test_api_` (`region_id_id`),
  CONSTRAINT `test_api_stc_vehicle_depot_id_id_ede35c0a_fk_test_api_` FOREIGN KEY (`depot_id_id`) REFERENCES `test_api_depot` (`depot_id`),
  CONSTRAINT `test_api_stc_vehicle_institute_no_id_5e7a03fb_fk_test_api_` FOREIGN KEY (`institute_no_id`) REFERENCES `test_api_institute` (`institute_no`),
  CONSTRAINT `test_api_stc_vehicle_pump_type_id_id_e0c1d8ae_fk_test_api_` FOREIGN KEY (`pump_type_id_id`) REFERENCES `test_api_fuel_type` (`pump_type_id`),
  CONSTRAINT `test_api_stc_vehicle_region_id_id_f675f7b5_fk_test_api_` FOREIGN KEY (`region_id_id`) REFERENCES `test_api_region` (`region_id`),
  CONSTRAINT `test_api_stc_vehicle_vehicle_id_id_5a360ba4_fk_test_api_` FOREIGN KEY (`vehicle_id_id`) REFERENCES `test_api_vehicle_detail` (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `test_api_stc_vehicle_distribution` */

/*Table structure for table `test_api_transaction` */

CREATE TABLE `test_api_transaction` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` varchar(200) DEFAULT NULL,
  `fuel_amount` decimal(10,2) DEFAULT NULL,
  `transaction_type` varchar(200) DEFAULT NULL,
  `remain_type` varchar(200) DEFAULT NULL,
  `enter_date` date NOT NULL,
  `transaction_date` date NOT NULL,
  `transaction_rate` decimal(10,2) DEFAULT NULL,
  `depot_id_id` int(11) NOT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `test_api_transaction_depot_id_id_0a609d86_fk_test_api_` (`depot_id_id`),
  CONSTRAINT `test_api_transaction_depot_id_id_0a609d86_fk_test_api_` FOREIGN KEY (`depot_id_id`) REFERENCES `test_api_depot` (`depot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `test_api_transaction` */

/*Table structure for table `test_api_userdetails` */

CREATE TABLE `test_api_userdetails` (
  `user_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `created_time` datetime(6) NOT NULL,
  `image_url` varchar(200) DEFAULT NULL,
  `tel_no` varchar(100) DEFAULT NULL,
  `fuel_user_id_id` int(11) NOT NULL,
  PRIMARY KEY (`user_detail_id`),
  KEY `test_api_userdetails_fuel_user_id_id_d0dd0eac_fk_test_api_` (`fuel_user_id_id`),
  CONSTRAINT `test_api_userdetails_fuel_user_id_id_d0dd0eac_fk_test_api_` FOREIGN KEY (`fuel_user_id_id`) REFERENCES `test_api_fueluser` (`fuel_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `test_api_userdetails` */

/*Table structure for table `test_api_userlevel` */

CREATE TABLE `test_api_userlevel` (
  `level_id` int(11) NOT NULL AUTO_INCREMENT,
  `level_name` varchar(100) DEFAULT NULL,
  `avalableUserLevel` tinyint(1) NOT NULL,
  PRIMARY KEY (`level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `test_api_userlevel` */

insert  into `test_api_userlevel`(`level_id`,`level_name`,`avalableUserLevel`) values (1,'Super Administrator',1),(2,'Administrator',1),(3,'Regional Manager',0),(4,'Deport Officer',0),(5,'Data Entry Operator',1),(6,'DGM',1);

/*Table structure for table `test_api_vehicle_category` */

CREATE TABLE `test_api_vehicle_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

/*Data for the table `test_api_vehicle_category` */

insert  into `test_api_vehicle_category`(`cat_id`,`cat_name`) values (1,'2 WHEELERS'),(2,'CableTractor'),(3,'CAR'),(4,'CATERPILAR'),(5,'Crane Lorry'),(6,'CREW CAB'),(7,'DOUBLE CAB'),(8,'JAC Forklift'),(9,'JEEP'),(10,'Normal Lorry'),(11,'SINGLE CAB'),(12,'TRACTOR'),(13,'TRAILERS');

/*Table structure for table `test_api_vehicle_detail` */

CREATE TABLE `test_api_vehicle_detail` (
  `vehicle_id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_reg_no` varchar(100) DEFAULT NULL,
  `vehicle_make` varchar(100) DEFAULT NULL,
  `vehicle_model` varchar(100) DEFAULT NULL,
  `year_of_manufacture` int(11) DEFAULT NULL,
  `vehicle_engine_no` varchar(100) DEFAULT NULL,
  `vehicle_chassi_no` varchar(100) DEFAULT NULL,
  `year_of_reg` date NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `engine_capacity` varchar(100) DEFAULT NULL,
  `fuel_type` varchar(100) DEFAULT NULL,
  `transmission` varchar(100) DEFAULT NULL,
  `renewal_date` date DEFAULT NULL,
  `renewal_month` int(11) DEFAULT NULL,
  `renewal_day` date DEFAULT NULL,
  `qr_code` varchar(200) DEFAULT NULL,
  `cat_id_id` int(11) NOT NULL,
  `depot_id_id` int(11) DEFAULT NULL,
  `insurance_company_id_id` int(11) DEFAULT NULL,
  `region_id_id` int(11) NOT NULL,
  PRIMARY KEY (`vehicle_id`),
  KEY `test_api_vehicle_det_cat_id_id_08839c59_fk_test_api_` (`cat_id_id`),
  KEY `test_api_vehicle_det_depot_id_id_44534a50_fk_test_api_` (`depot_id_id`),
  KEY `test_api_vehicle_det_insurance_company_id_e14bb9fa_fk_test_api_` (`insurance_company_id_id`),
  KEY `test_api_vehicle_det_region_id_id_278a85ee_fk_test_api_` (`region_id_id`),
  CONSTRAINT `test_api_vehicle_det_cat_id_id_08839c59_fk_test_api_` FOREIGN KEY (`cat_id_id`) REFERENCES `test_api_vehicle_category` (`cat_id`),
  CONSTRAINT `test_api_vehicle_det_depot_id_id_44534a50_fk_test_api_` FOREIGN KEY (`depot_id_id`) REFERENCES `test_api_depot` (`depot_id`),
  CONSTRAINT `test_api_vehicle_det_insurance_company_id_e14bb9fa_fk_test_api_` FOREIGN KEY (`insurance_company_id_id`) REFERENCES `test_api_insurance_company` (`insurance_company_id`),
  CONSTRAINT `test_api_vehicle_det_region_id_id_278a85ee_fk_test_api_` FOREIGN KEY (`region_id_id`) REFERENCES `test_api_region` (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4;

/*Data for the table `test_api_vehicle_detail` */

insert  into `test_api_vehicle_detail`(`vehicle_id`,`vehicle_reg_no`,`vehicle_make`,`vehicle_model`,`year_of_manufacture`,`vehicle_engine_no`,`vehicle_chassi_no`,`year_of_reg`,`price`,`engine_capacity`,`fuel_type`,`transmission`,`renewal_date`,`renewal_month`,`renewal_day`,`qr_code`,`cat_id_id`,`depot_id_id`,`insurance_company_id_id`,`region_id_id`) values (1,'WPBII-7934','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH99924','MD2B44BY8KWH46474','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,1),(2,'WPBII-7960','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80485','MD2B44BY1KWH46669','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,1),(3,'WPBII-7974','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH36169','MD2B44BY6KWH46697','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,1),(4,'WPBII-7976','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80555','MD2B44BY0KWH46646','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,1),(5,'WPBII-7979','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80348','MD2B44BY5KWH46691','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,1),(6,'WPBII-7980','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH36170','MD2B44BY8KWH46703','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,1),(7,'WPBII-7987','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH99893','MD2B44BY2KWH46521','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,1),(8,'WPBII-8076','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80518','MD2B44BY0KWH46663','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,1),(9,'WPBII-8132','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH99827','MD2B44BY3KWH46446','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,1),(10,'WPBII-8137','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80521','MD2B44BY6KWH46649','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,1),(11,'WPBIK-3198','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH81279','MD2B44BYXKWH46878','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,1),(12,'WPBIK-3239','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH99293','MD2B44BY7KWH46806','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,1),(13,'WPBII-7859','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80491','MD2B44BY8KWH46636','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,2),(14,'WPBII-7866','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80932','MD2B44BY4KWH46746','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,2),(15,'WPBII-7878','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH99805','MD2B44BY2KWH46499','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,2),(16,'WPBII-7882','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH36199','MD2B44BY4KWH46696','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,2),(17,'WPBII-7886','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80857','MD2B44BY2KWH46728','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,2),(18,'WPBII-7893','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH99663','MD2B44BY5KWH46707','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,2),(19,'WPBII-7937','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80516','MD2B44BY9KWH46645','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,2),(20,'WPBII-7947','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH99837','MD2B44BY2KWH46440','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,2),(21,'WPBII-7961','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH99845','MD2B44BY2KWH46454','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,2),(22,'WPBII-7970','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH36193','MD2B44BY8KWH46717','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,2),(23,'WPBII-7973','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH99840','MD2B44BY9KWH46449','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,2),(24,'WPBII-7981','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80837','MD2B44BY0KWH46730','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,2),(25,'WPBII-7984','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH99898','MD2B44BY4KWH46519','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,2),(26,'WPBII-7990','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH99884','MD2B44BY0KWH46517','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,2),(27,'WPBII-7997','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH99921','MD2B44BY3KWH46480','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,2),(28,'WPBII-8034','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80850','MD2B44BY1KWH46719','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,2),(29,'WPBII-8047','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80848','MD2B44BY6KWH46733','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,2),(30,'WPBII-8075','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80525','MD2B44BY9KWH46659','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,2),(31,'WPBII-8109','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH99902','MD2B44BY6KWH46473','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,2),(32,'WPBIK-3310','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80865','MD2B44BYXKWH46766','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,2),(33,'WPBII-7857','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80528','MD2B44BY6KWH46666','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(34,'WPBII-7858','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH99818','MD2B44BY6KWH46487','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(35,'WPBII-7870','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80530','MD2B44BY4KWH46665','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(36,'WPBII-7874','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80346','MD2B44BY7KWH46692','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(37,'WPBII-7892','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80863','MD2B44BYXKWH46721','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(38,'WPBII-7901','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80931','MD2B44BY2KWH46745','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(39,'WPBII-7904','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80512','MD2B44BY1KWH46686','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(40,'WPBII-7908','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH99829','MD2B44BY5KWH46447','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(41,'WPBII-7909','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80524','MD2B44BY5KWH46660','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(42,'WPBII-7911','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80493','MD2B44BY7KWH46644','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(43,'WPBII-7914','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80499','MD2B44BY0KWH46632','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(44,'WPBII-7918','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80490','MD2B44BY6KWH46635','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(45,'WPBII-7927','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH36147','MD2B44BY7KWH46711','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(46,'WPBII-7933','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH99912','MD2B44BY8KWH46460','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(47,'WPBII-7950','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH99843','MD2B44BY7KWH46448','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(48,'WPBII-7988','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH99839','MD2B44BY4KWH46441','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(49,'WPBII-8019','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80849','MD2B44BY3KWH46737','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(50,'WPBII-8026','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH99932','MD2B44BY3KWH46494','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(51,'WPBII-8027','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80505','MD2B44BY9KWH46631','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(52,'WPBII-8029','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80930','MD2B44BY0KWH46744','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(53,'WPBII-8033','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80836','MD2B44BY7KWH46739','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(54,'WPBII-8037','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80933','MD2B44BY6KWH46747','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(55,'WPBII-8040','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH99879','MD2B44BY7KWH46515','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(56,'WPBII-8048','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80496','MD2B44BY3KWH46642','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(57,'WPBII-8054','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80365','MD2B44BY7KWH46658','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(58,'WPBII-8081','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80494','MD2B44BY5KWH46643','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(59,'WPBII-8098','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80754','MD2B44BY3KWH46723','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(60,'WPBII-8141','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH36200','MD2B44BY2KWH46714','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(61,'WPBII-8183','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH36234','MD2B44BY5KWH46710','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(62,'WPBIK-3225','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80938','MD2B44BY8KWH46815','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(63,'WPBIK-3295','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80970','MD2B44BY5KWH46822','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,22),(64,'WPBII-8006','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH99905','MD2B44BY5KWH46464','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,20),(65,'WPBII-7864','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80523','MD2B44BY4KWH46651','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,4),(66,'WPBII-7932','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80558','MD2B44BYXKWH46654','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,4),(67,'WPBII-7957','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80506','MD2B44BY5KWH46626','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,4),(68,'WPBII-7991','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80350','MD2B44BY7KWH46689','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,4),(69,'WPBII-8002','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80561','MD2B44BYXKWH46623','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,4),(70,'WPBII-8025','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80495','MD2B44BYXKWH46640','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,4),(71,'WPBII-8156','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80853','MD2B44BY9KWH46726','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,4),(72,'WPBII-8157','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80502','MD2B44BY7KWH46630','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,4),(73,'WPBII-8228','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80526','MD2B44BY8KWH46653','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,4),(74,'WPBII-8275','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80349','MD2B44BY0KWH46680','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,4),(75,'WPBIK-3248','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80965','MD2B44BY1KWH46817','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,4),(76,'WPBII-7894','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80511','MD2B44BY3KWH46687','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,4),(77,'WPBII-7923','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80480','MD2B44BY1KWH46672','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,4),(78,'WPBII-7983','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH99877','MD2B44BY4KWH46522','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,17),(79,'WPBII-7906','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80557','MD2B44BY1KWH46655','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,17),(80,'WPBIL-8015','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH38811','MD2B44BY4LWK48481','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,17),(81,'WPBIL-8051','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH38865','MD2B44BY5LWK48487','0000-00-00','-517.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,17),(82,'WPBIL-8035','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH38899','MD2B44BY8LWK48483','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,17),(83,'WPBII-7889','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80800','MD2B44BY7KWH46742','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,5),(84,'WPBII-7940','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80787','MD2B44BY1KWH46736','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,5),(85,'WPBII-7942','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH99903','MD2B44BY4KWH46455','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,5),(86,'WPBII-7971','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH99814','MD2B44BY2KWH46504','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,5),(87,'WPBII-8022','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKD86112','MD2B44BY6KWD45733','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,5),(88,'WPBII-8055','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKD86351','MD2B44BY8KWD45796','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,5),(89,'WPBIK-3331','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80906','MD2B44BY7KWH46773','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,5),(90,'WPBII-7907','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80509','MD2B44BY3KWH46639','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,8),(91,'WPBIL-8039','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80486','MD2B44BYXKWH46671','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,8),(92,'WPBII-7943','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80852','MD2B44BY7KWH46725','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,8),(93,'WP BAJ-0710','BAJAJ','DISCOVER 125',2013,'JZZWDK16077','MD2A15BZ2DWK44031','0000-00-00','184875.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,7),(94,'WPBII-7873','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80861','MD2B44BY8KWH46734','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,7),(95,'WPBII-7879','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80560','MD2B44BY9KWH46662','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,7),(96,'WPBII-7898','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80519','MD2B44BY9KWH46676','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,7),(97,'WPBII-7903','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80487','MD2B44BY5KWH46674','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,7),(98,'WPBII-7958','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80554','MD2B44BYXKWH46668','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,7),(99,'WPBII-7995','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH99907','MD2B44BY0KWH46470','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,7),(100,'WPBII-8038','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80501','MD2B44BY2KWH46633','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,7),(101,'WPBII-8053','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80482','MD2B44BY2KWH46678','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,7),(102,'WPBII-8058','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80492','MD2B44BY0KWH46677','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,7),(103,'WPBII-8061','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80533','MD2B44BY7KWH46661','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,7),(104,'WPBII-8068','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKG94197','MD2B44BY1KWG46426','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,7),(105,'WPBII-8070','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80531','MD2B44BY2KWH46664','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,7),(106,'WPBII-8084','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKF92216','MD2B44BY1KWG46295','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,7),(107,'WPBII-8102','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH99817','MD2B44BYXKWH46492','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,7),(108,'WPBII-8105','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH36238','MD2B44BY1KWH46705','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,7),(110,'WPBII-8256','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80556','MD2B44BY3KWH46656','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,7),(111,'WPBIK-3177','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH36431','MD2B44BY3KWH46849','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,7),(112,'WPBII-7863','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80344','MD2B44BY6KWH46683','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,7),(113,'WPBII-7890','BAJAJ','DISCOVER 125 UG DISC',2019,'JZYWKH80372','MD2B44BY6KWH46652','0000-00-00','283800.00','124.5 CC','Petrol','Manual',NULL,NULL,NULL,NULL,1,NULL,NULL,7);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
