-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 19, 2018 at 02:55 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eshop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add department', 7, 'add_department'),
(20, 'Can change department', 7, 'change_department'),
(21, 'Can delete department', 7, 'delete_department'),
(22, 'Can add designation', 8, 'add_designation'),
(23, 'Can change designation', 8, 'change_designation'),
(24, 'Can delete designation', 8, 'delete_designation'),
(25, 'Can add employee', 9, 'add_employee'),
(26, 'Can change employee', 9, 'change_employee'),
(27, 'Can delete employee', 9, 'delete_employee'),
(28, 'Can add ticket', 10, 'add_ticket'),
(29, 'Can change ticket', 10, 'change_ticket'),
(30, 'Can delete ticket', 10, 'delete_ticket');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$100000$e9SsJtOoXSub$RkT5K8uJcnzbAojr0Vw6RK2Ubce7Fw61ccdKhQacqvM=', '2018-05-19 14:07:46.852779', 1, 'admin', '', '', 'admin@gmal.cm', 1, 1, '2018-05-18 17:50:11.212775'),
(2, 'pbkdf2_sha256$100000$nl7enjAbnGJa$vAqMYDBs5q4oULTAUUSysz/WNaMMwdRX0tpZe9n62DY=', '2018-05-18 17:59:20.407704', 0, 'Anand', '', '', '', 0, 1, '2018-05-18 17:54:52.424718'),
(3, 'pbkdf2_sha256$100000$xdc6t8gdXTbz$GGEP1ArsfbDsiwW6gxaHF7FFABc8VS0WjiMl68eaX3w=', '2018-05-19 14:01:43.794774', 0, 'Hemant', '', '', '', 0, 1, '2018-05-18 17:56:09.118235');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-05-18 17:53:40.452488', '1', 'HR', 1, '[{\"added\": {}}]', 7, 1),
(2, '2018-05-18 17:53:47.060107', '2', 'Engineering', 1, '[{\"added\": {}}]', 7, 1),
(3, '2018-05-18 17:53:52.904074', '3', 'Account', 1, '[{\"added\": {}}]', 7, 1),
(4, '2018-05-18 17:54:03.478696', '1', 'Account', 1, '[{\"added\": {}}]', 8, 1),
(5, '2018-05-18 17:54:11.441693', '2', 'Manager', 1, '[{\"added\": {}}]', 8, 1),
(6, '2018-05-18 17:54:18.868691', '3', 'Manager', 1, '[{\"added\": {}}]', 8, 1),
(7, '2018-05-18 17:54:52.649731', '2', 'Anand', 1, '[{\"added\": {}}]', 4, 1),
(8, '2018-05-18 17:55:13.844600', '1', 'Employee object (1)', 1, '[{\"added\": {}}]', 9, 1),
(9, '2018-05-18 17:55:34.148432', '3', 'Accountant', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 8, 1),
(10, '2018-05-18 17:55:43.840839', '1', 'Developer', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 8, 1),
(11, '2018-05-18 17:56:09.346248', '3', 'Hemant', 1, '[{\"added\": {}}]', 4, 1),
(12, '2018-05-18 17:56:17.726028', '2', 'Employee object (2)', 1, '[{\"added\": {}}]', 9, 1),
(13, '2018-05-18 17:56:30.292957', '2', 'Employee object (2)', 2, '[{\"changed\": {\"fields\": [\"department\", \"designation\"]}}]', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'ticketapp', 'department'),
(8, 'ticketapp', 'designation'),
(9, 'ticketapp', 'employee'),
(10, 'ticketapp', 'ticket');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-05-18 17:48:18.758385'),
(2, 'auth', '0001_initial', '2018-05-18 17:48:29.957822'),
(3, 'admin', '0001_initial', '2018-05-18 17:48:31.981666'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-05-18 17:48:32.012866'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-05-18 17:48:33.103088'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-05-18 17:48:34.248308'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-05-18 17:48:34.895522'),
(8, 'auth', '0004_alter_user_username_opts', '2018-05-18 17:48:34.926722'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-05-18 17:48:36.389952'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-05-18 17:48:36.469353'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-05-18 17:48:36.515955'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-05-18 17:48:37.124968'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2018-05-18 17:48:37.879184'),
(14, 'sessions', '0001_initial', '2018-05-18 17:48:38.342792'),
(15, 'ticketapp', '0001_initial', '2018-05-18 17:48:45.695147');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('16r3b8r908inie0n6f8d69ol08mgrqa5', 'MGZjZWFiNWY0YjY0OGNjNTViNzNlMTkxNjdkZWZlYWZjMzAzMDdhZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YWNlOGIyODM0ZDI4N2FlYmNiNjcwN2I3NWYxZWUxODQ4OWE1YWQxIn0=', '2018-06-02 14:07:46.997787');

-- --------------------------------------------------------

--
-- Table structure for table `ticketapp_department`
--

DROP TABLE IF EXISTS `ticketapp_department`;
CREATE TABLE IF NOT EXISTS `ticketapp_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ticketapp_department`
--

INSERT INTO `ticketapp_department` (`id`, `name`) VALUES
(1, 'HR'),
(2, 'Engineering'),
(3, 'Account');

-- --------------------------------------------------------

--
-- Table structure for table `ticketapp_designation`
--

DROP TABLE IF EXISTS `ticketapp_designation`;
CREATE TABLE IF NOT EXISTS `ticketapp_designation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ticketapp_designation`
--

INSERT INTO `ticketapp_designation` (`id`, `name`) VALUES
(1, 'Developer'),
(2, 'Manager'),
(3, 'Accountant');

-- --------------------------------------------------------

--
-- Table structure for table `ticketapp_employee`
--

DROP TABLE IF EXISTS `ticketapp_employee`;
CREATE TABLE IF NOT EXISTS `ticketapp_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_id` (`employee_id`),
  KEY `ticketapp_employee_department_id_ba68755b_fk_ticketapp` (`department_id`),
  KEY `ticketapp_employee_designation_id_897e6887_fk_ticketapp` (`designation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ticketapp_employee`
--

INSERT INTO `ticketapp_employee` (`id`, `department_id`, `designation_id`, `employee_id`) VALUES
(1, 2, 2, 2),
(2, 1, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ticketapp_ticket`
--

DROP TABLE IF EXISTS `ticketapp_ticket`;
CREATE TABLE IF NOT EXISTS `ticketapp_ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `summary` varchar(2000) NOT NULL,
  `description` longtext NOT NULL,
  `type` int(11) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `assign_time` datetime(6) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `close_time` datetime(6) DEFAULT NULL,
  `assigned_to_id` int(11) DEFAULT NULL,
  `closed_by_id` int(11) DEFAULT NULL,
  `created_by_id` int(11) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ticketapp_ticket_assigned_to_id_e0ae1502_fk_auth_user_id` (`assigned_to_id`),
  KEY `ticketapp_ticket_closed_by_id_f3ef68db_fk_auth_user_id` (`closed_by_id`),
  KEY `ticketapp_ticket_created_by_id_bf3a90bd_fk_auth_user_id` (`created_by_id`),
  KEY `ticketapp_ticket_department_id_9b21e2b6_fk_ticketapp` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ticketapp_ticket`
--

INSERT INTO `ticketapp_ticket` (`id`, `name`, `summary`, `description`, `type`, `created_time`, `assign_time`, `status`, `close_time`, `assigned_to_id`, `closed_by_id`, `created_by_id`, `department_id`) VALUES
(1, 'Account', 'its a lead', 'hhjhj', 1, '2018-05-18 17:52:48.000000', NULL, 1, NULL, 2, NULL, 1, 1),
(2, 'Developer', 'nm,sas', 'sadas', 1, '2018-05-18 18:26:30.000000', NULL, 0, NULL, NULL, NULL, 1, 2),
(3, 'Ticket', 'ticket', 'ticket', 1, '2018-05-18 18:27:11.000000', NULL, 0, NULL, NULL, NULL, 2, 1),
(4, 'Owner Lead', 'Owner Lead', 'Owner Lead', 1, '2018-05-18 18:36:22.000000', NULL, 0, NULL, NULL, NULL, 3, 1),
(5, 'Tenant Request', 'Tenant Request', 'Tenant Request', 2, '2018-05-18 18:40:51.000000', NULL, 0, NULL, NULL, NULL, 2, 2);

--
-- Constraints for dumped tables
--

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
-- Constraints for table `ticketapp_employee`
--
ALTER TABLE `ticketapp_employee`
  ADD CONSTRAINT `ticketapp_employee_department_id_ba68755b_fk_ticketapp` FOREIGN KEY (`department_id`) REFERENCES `ticketapp_department` (`id`),
  ADD CONSTRAINT `ticketapp_employee_designation_id_897e6887_fk_ticketapp` FOREIGN KEY (`designation_id`) REFERENCES `ticketapp_designation` (`id`),
  ADD CONSTRAINT `ticketapp_employee_employee_id_7ef0c412_fk_auth_user_id` FOREIGN KEY (`employee_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `ticketapp_ticket`
--
ALTER TABLE `ticketapp_ticket`
  ADD CONSTRAINT `ticketapp_ticket_assigned_to_id_e0ae1502_fk_auth_user_id` FOREIGN KEY (`assigned_to_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `ticketapp_ticket_closed_by_id_f3ef68db_fk_auth_user_id` FOREIGN KEY (`closed_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `ticketapp_ticket_created_by_id_bf3a90bd_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `ticketapp_ticket_department_id_9b21e2b6_fk_ticketapp` FOREIGN KEY (`department_id`) REFERENCES `ticketapp_department` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
