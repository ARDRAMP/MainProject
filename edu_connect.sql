-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2024 at 04:30 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `edu_connect`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

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
(25, 'Can add assigned_studentreg', 7, 'add_assigned_studentreg'),
(26, 'Can change assigned_studentreg', 7, 'change_assigned_studentreg'),
(27, 'Can delete assigned_studentreg', 7, 'delete_assigned_studentreg'),
(28, 'Can view assigned_studentreg', 7, 'view_assigned_studentreg'),
(29, 'Can add class_schedules', 8, 'add_class_schedules'),
(30, 'Can change class_schedules', 8, 'change_class_schedules'),
(31, 'Can delete class_schedules', 8, 'delete_class_schedules'),
(32, 'Can view class_schedules', 8, 'view_class_schedules'),
(33, 'Can add course_assign', 9, 'add_course_assign'),
(34, 'Can change course_assign', 9, 'change_course_assign'),
(35, 'Can delete course_assign', 9, 'delete_course_assign'),
(36, 'Can view course_assign', 9, 'view_course_assign'),
(37, 'Can add course_details', 10, 'add_course_details'),
(38, 'Can change course_details', 10, 'change_course_details'),
(39, 'Can delete course_details', 10, 'delete_course_details'),
(40, 'Can view course_details', 10, 'view_course_details'),
(41, 'Can add course_payment', 11, 'add_course_payment'),
(42, 'Can change course_payment', 11, 'change_course_payment'),
(43, 'Can delete course_payment', 11, 'delete_course_payment'),
(44, 'Can view course_payment', 11, 'view_course_payment'),
(45, 'Can add facultyreg', 12, 'add_facultyreg'),
(46, 'Can change facultyreg', 12, 'change_facultyreg'),
(47, 'Can delete facultyreg', 12, 'delete_facultyreg'),
(48, 'Can view facultyreg', 12, 'view_facultyreg'),
(49, 'Can add leave_applications', 13, 'add_leave_applications'),
(50, 'Can change leave_applications', 13, 'change_leave_applications'),
(51, 'Can delete leave_applications', 13, 'delete_leave_applications'),
(52, 'Can view leave_applications', 13, 'view_leave_applications'),
(53, 'Can add studentreg', 14, 'add_studentreg'),
(54, 'Can change studentreg', 14, 'change_studentreg'),
(55, 'Can delete studentreg', 14, 'delete_studentreg'),
(56, 'Can view studentreg', 14, 'view_studentreg'),
(57, 'Can add study_materials', 15, 'add_study_materials'),
(58, 'Can change study_materials', 15, 'change_study_materials'),
(59, 'Can delete study_materials', 15, 'delete_study_materials'),
(60, 'Can view study_materials', 15, 'view_study_materials');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'educonnect', 'assigned_studentreg'),
(8, 'educonnect', 'class_schedules'),
(9, 'educonnect', 'course_assign'),
(10, 'educonnect', 'course_details'),
(11, 'educonnect', 'course_payment'),
(12, 'educonnect', 'facultyreg'),
(13, 'educonnect', 'leave_applications'),
(14, 'educonnect', 'studentreg'),
(15, 'educonnect', 'study_materials'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-02-10 13:53:41.196789'),
(2, 'auth', '0001_initial', '2024-02-10 13:53:42.441292'),
(3, 'admin', '0001_initial', '2024-02-10 13:53:42.645546'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-02-10 13:53:42.661959'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-02-10 13:53:42.672898'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-02-10 13:53:42.753113'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-02-10 13:53:42.787901'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-02-10 13:53:42.821541'),
(9, 'auth', '0004_alter_user_username_opts', '2024-02-10 13:53:42.838058'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-02-10 13:53:42.881328'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-02-10 13:53:42.887977'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-02-10 13:53:42.900586'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-02-10 13:53:42.937688'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-02-10 13:53:42.968892'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-02-10 13:53:43.004365'),
(16, 'auth', '0011_update_proxy_permissions', '2024-02-10 13:53:43.021083'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-02-10 13:53:43.071022'),
(18, 'educonnect', '0001_initial', '2024-02-10 13:53:43.661635'),
(19, 'sessions', '0001_initial', '2024-02-10 13:53:43.807179'),
(20, 'educonnect', '0002_study_materials', '2024-02-10 14:22:49.796774'),
(21, 'educonnect', '0003_rename_fid_study_materials_sid', '2024-02-10 14:46:08.810511');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3whyxd6klp4peabsie65fnyy4y8x8vjv', 'e30:1rYpJ2:yYd__tMrCGSm4rdTgB9J4v1YPplpdbLG2pTwNP3UOXc', '2024-02-24 15:30:16.357347');

-- --------------------------------------------------------

--
-- Table structure for table `educonnect_assigned_studentreg`
--

CREATE TABLE IF NOT EXISTS `educonnect_assigned_studentreg` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `city` varchar(150) NOT NULL,
  `place` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `sid` varchar(150) NOT NULL,
  `fid` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `educonnect_assigned_studentreg`
--

INSERT INTO `educonnect_assigned_studentreg` (`id`, `name`, `city`, `place`, `email`, `phone`, `sid`, `fid`) VALUES
(1, 'jerin', 'Kollam', 'kolam', 'j@gmail.com', '9645345632', '1', '1'),
(2, 'Testing', 'Koll', 'munnar', 'd@gmail.com', '9809898987', '2', '1');

-- --------------------------------------------------------

--
-- Table structure for table `educonnect_class_schedules`
--

CREATE TABLE IF NOT EXISTS `educonnect_class_schedules` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `typee` varchar(150) NOT NULL,
  `fid` varchar(150) NOT NULL,
  `date` varchar(150) NOT NULL,
  `link` varchar(150) NOT NULL,
  `message` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `host_key` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `educonnect_class_schedules`
--

INSERT INTO `educonnect_class_schedules` (`id`, `typee`, `fid`, `date`, `link`, `message`, `password`, `host_key`, `status`) VALUES
(1, 'test', '1', '2024-02-11T10:28', 'htttp/dfhkjfd2323kjh', 'classs', 'JKHjkd43423', 'Jkjjdkehr43323', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `educonnect_course_assign`
--

CREATE TABLE IF NOT EXISTS `educonnect_course_assign` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `course_id` varchar(150) NOT NULL,
  `std_name` varchar(150) NOT NULL,
  `sid` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `educonnect_course_details`
--

CREATE TABLE IF NOT EXISTS `educonnect_course_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `details` varchar(150) NOT NULL,
  `startdate` varchar(150) NOT NULL,
  `enddate` varchar(150) NOT NULL,
  `amount` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `educonnect_course_details`
--

INSERT INTO `educonnect_course_details` (`id`, `name`, `details`, `startdate`, `enddate`, `amount`) VALUES
(1, 'Python', 'Python Fullstack', '2024-02-10', '2024-03-01', '20000');

-- --------------------------------------------------------

--
-- Table structure for table `educonnect_course_payment`
--

CREATE TABLE IF NOT EXISTS `educonnect_course_payment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sid` varchar(150) NOT NULL,
  `course` varchar(150) NOT NULL,
  `c_id` varchar(150) NOT NULL,
  `amount` varchar(150) NOT NULL,
  `card_name` varchar(150) NOT NULL,
  `card_no` varchar(150) NOT NULL,
  `cvv` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `educonnect_course_payment`
--

INSERT INTO `educonnect_course_payment` (`id`, `sid`, `course`, `c_id`, `amount`, `card_name`, `card_no`, `cvv`) VALUES
(1, '1', 'Python', '1', '20000', 'jerin', '3454645464563455', '345');

-- --------------------------------------------------------

--
-- Table structure for table `educonnect_facultyreg`
--

CREATE TABLE IF NOT EXISTS `educonnect_facultyreg` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `course` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `educonnect_facultyreg`
--

INSERT INTO `educonnect_facultyreg` (`id`, `name`, `course`, `email`, `phone`, `address`, `password`) VALUES
(1, 'Appu', 'Basic Programming Concepts', 'a@gamil.com', '9876543210', 'Ernakulam', '123');

-- --------------------------------------------------------

--
-- Table structure for table `educonnect_leave_applications`
--

CREATE TABLE IF NOT EXISTS `educonnect_leave_applications` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sid` varchar(150) NOT NULL,
  `fid` varchar(150) NOT NULL,
  `date` varchar(150) NOT NULL,
  `reason` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `educonnect_leave_applications`
--

INSERT INTO `educonnect_leave_applications` (`id`, `sid`, `fid`, `date`, `reason`, `status`) VALUES
(1, '1', '1', '2024-02-17', 'Testt', 'rejected');

-- --------------------------------------------------------

--
-- Table structure for table `educonnect_studentreg`
--

CREATE TABLE IF NOT EXISTS `educonnect_studentreg` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `place` varchar(150) NOT NULL,
  `city` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `st_type` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `educonnect_studentreg`
--

INSERT INTO `educonnect_studentreg` (`id`, `name`, `place`, `city`, `email`, `phone`, `address`, `password`, `status`, `st_type`) VALUES
(1, 'jerin', 'kolam', 'Kollam', 'j@gmail.com', '9645345632', 'Ernakulam', '123', 'approved', 'Deaf'),
(2, 'Testing', 'munnar', 'Koll', 'd@gmail.com', '9809898987', 'Ernakuia,]]', '123', 'approved', 'Blind ');

-- --------------------------------------------------------

--
-- Table structure for table `educonnect_study_materials`
--

CREATE TABLE IF NOT EXISTS `educonnect_study_materials` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `details` varchar(150) NOT NULL,
  `file` varchar(150) NOT NULL,
  `sid` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `educonnect_study_materials`
--

INSERT INTO `educonnect_study_materials` (`id`, `name`, `details`, `file`, `sid`) VALUES
(1, 'Testing', 'Test Doc', 'Business Analytics.pdf', '1'),
(2, 'Testing', 'Test Doc', 'Business Analytics_LHwsNzS.pdf', '1');

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
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
