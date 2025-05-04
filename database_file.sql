-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2025 at 04:17 PM
-- Server version: 11.7.2-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_database`
--
CREATE DATABASE IF NOT EXISTS `final_database` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `final_database`;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_system_attendance`
--

CREATE TABLE `attendance_system_attendance` (
  `id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance_system_attendance`
--

INSERT INTO `attendance_system_attendance` (`id`, `date`, `status`, `user_id`) VALUES
(1, '2025-04-04', 'Absent', 1),
(2, '2025-04-04', 'Present', 1),
(3, '2025-04-17', 'Absent', 3);

-- --------------------------------------------------------

--
-- Table structure for table `attendance_system_classschedule`
--

CREATE TABLE `attendance_system_classschedule` (
  `id` bigint(20) NOT NULL,
  `course_name` varchar(200) NOT NULL,
  `instructor` varchar(200) NOT NULL,
  `start_time` time(6) NOT NULL,
  `end_time` time(6) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(2, 'Admin'),
(3, 'Lecturer'),
(4, 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(6, 2, 1),
(7, 2, 2),
(8, 2, 3),
(9, 2, 4),
(10, 2, 5),
(11, 2, 6),
(12, 2, 7),
(13, 2, 8),
(14, 2, 9),
(15, 2, 10),
(16, 2, 11),
(17, 2, 12),
(18, 2, 13),
(19, 2, 14),
(20, 2, 15),
(21, 2, 16),
(22, 2, 17),
(23, 2, 18),
(24, 2, 19),
(25, 2, 20),
(26, 2, 21),
(27, 2, 22),
(28, 2, 23),
(29, 2, 24),
(30, 2, 25),
(31, 2, 26),
(32, 2, 27),
(33, 2, 28),
(34, 2, 29),
(35, 2, 30),
(36, 2, 31),
(37, 2, 32),
(38, 2, 33),
(39, 2, 34),
(40, 2, 35),
(41, 2, 36),
(42, 2, 37),
(43, 2, 38),
(44, 2, 39),
(45, 2, 40),
(51, 3, 25),
(52, 3, 26),
(53, 3, 27),
(54, 3, 28),
(55, 3, 29),
(56, 3, 30),
(57, 3, 31),
(46, 3, 32),
(47, 3, 33),
(48, 3, 34),
(49, 3, 35),
(50, 3, 36),
(59, 4, 25),
(60, 4, 28),
(58, 4, 32);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add attendance', 7, 'add_attendance'),
(26, 'Can change attendance', 7, 'change_attendance'),
(27, 'Can delete attendance', 7, 'delete_attendance'),
(28, 'Can view attendance', 7, 'view_attendance'),
(29, 'Can add class schedule', 8, 'add_classschedule'),
(30, 'Can change class schedule', 8, 'change_classschedule'),
(31, 'Can delete class schedule', 8, 'delete_classschedule'),
(32, 'Can view class schedule', 8, 'view_classschedule'),
(33, 'Can add student details', 9, 'add_studentdetails'),
(34, 'Can change student details', 9, 'change_studentdetails'),
(35, 'Can delete student details', 9, 'delete_studentdetails'),
(36, 'Can view student details', 9, 'view_studentdetails'),
(37, 'Can add staff details', 10, 'add_staffdetails'),
(38, 'Can change staff details', 10, 'change_staffdetails'),
(39, 'Can delete staff details', 10, 'delete_staffdetails'),
(40, 'Can view staff details', 10, 'view_staffdetails'),
(41, 'Can add auth user', 11, 'add_authuser'),
(42, 'Can change auth user', 11, 'change_authuser'),
(43, 'Can delete auth user', 11, 'delete_authuser'),
(44, 'Can view auth user', 11, 'view_authuser');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$870000$H82wpgplar7rIBA0QxexY9$vm3jvG9Y6w3hlAIOkkqFCgjbVLUzOye+7bd1rmDKpFs=', '2025-04-24 17:20:31.142795', 0, 'Test_Lecturer', 'Test', 'Lecturer', 'T.L1@fakemail.com', 0, 1, '2025-04-03 23:18:28.000000'),
(2, 'pbkdf2_sha256$870000$85OVaAQmatsCAsJ78HvMZO$ZmxKPaudFP0juzeezc8CXvFxXuB3yAGk7WIbs8FVlWQ=', '2025-04-24 17:21:12.607117', 1, 'Admin_Account', 'Admin', 'Account', 'A.Acc12@fakemail.com', 1, 1, '2025-04-17 18:46:16.000000'),
(3, 'pbkdf2_sha256$870000$8wcnRDnRoteP5jpiiIoVgf$ffOcl8NcQBYH4P2JYOdhHoBxVTAGc86+/rBzvbw1rK4=', '2025-04-24 17:19:03.543206', 0, 'Test_Student', 'Test', 'Student', 'T.S1@fakemail.com', 0, 1, '2025-04-17 18:58:10.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 3),
(3, 2, 2),
(2, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-04-17 19:03:31.230557', '1', 'Student', 1, '[{\"added\": {}}]', 3, 2),
(2, '2025-04-17 19:03:44.227390', '1', 'Student', 3, '', 3, 2),
(3, '2025-04-24 16:55:28.755795', '1', 'StaffDetails object (1)', 1, '[{\"added\": {}}]', 10, 2),
(4, '2025-04-24 16:57:56.883759', '1', 'StudentDetails object (1)', 1, '[{\"added\": {}}]', 9, 2),
(5, '2025-04-24 17:06:20.383509', '2', 'Admin', 1, '[{\"added\": {}}]', 3, 2),
(6, '2025-04-24 17:06:30.231251', '3', 'Lecturer', 1, '[{\"added\": {}}]', 3, 2),
(7, '2025-04-24 17:06:36.555086', '4', 'Student', 1, '[{\"added\": {}}]', 3, 2),
(8, '2025-04-24 17:07:57.015533', '2', 'Admin', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 2),
(9, '2025-04-24 17:08:43.989562', '3', 'Lecturer', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 2),
(10, '2025-04-24 17:09:26.292361', '4', 'Student', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 2),
(11, '2025-04-24 17:11:17.938530', '1', 'test1', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 2),
(12, '2025-04-24 17:13:46.403542', '1', 'Test_Lecturer', 2, '[{\"changed\": {\"fields\": [\"Username\", \"First name\", \"Last name\", \"Email address\", \"Groups\"]}}]', 4, 2),
(13, '2025-04-24 17:14:17.695212', '3', 'test2', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 2),
(14, '2025-04-24 17:14:40.089710', '3', 'test2', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Groups\"]}}]', 4, 2),
(15, '2025-04-24 17:15:10.759923', '2', 'jessi', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 2),
(16, '2025-04-24 17:16:20.207102', '2', 'Admin_Account', 2, '[{\"changed\": {\"fields\": [\"Username\", \"First name\", \"Last name\", \"Email address\", \"Groups\"]}}]', 4, 2),
(17, '2025-04-24 17:16:30.948799', '3', 'Test_Student', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'attendance_system', 'attendance'),
(11, 'attendance_system', 'authuser'),
(8, 'attendance_system', 'classschedule'),
(10, 'attendance_system', 'staffdetails'),
(9, 'attendance_system', 'studentdetails'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-04-03 23:16:19.921623'),
(2, 'auth', '0001_initial', '2025-04-03 23:16:20.122149'),
(3, 'admin', '0001_initial', '2025-04-03 23:16:20.197939'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-04-03 23:16:20.216889'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-04-03 23:16:20.228856'),
(6, 'attendance_system', '0001_initial', '2025-04-03 23:16:20.271743'),
(7, 'attendance_system', '0002_classschedule', '2025-04-03 23:16:20.277725'),
(8, 'contenttypes', '0002_remove_content_type_name', '2025-04-03 23:16:20.323604'),
(9, 'auth', '0002_alter_permission_name_max_length', '2025-04-03 23:16:20.351528'),
(10, 'auth', '0003_alter_user_email_max_length', '2025-04-03 23:16:20.365492'),
(11, 'auth', '0004_alter_user_username_opts', '2025-04-03 23:16:20.375465'),
(12, 'auth', '0005_alter_user_last_login_null', '2025-04-03 23:16:20.404403'),
(13, 'auth', '0006_require_contenttypes_0002', '2025-04-03 23:16:20.406382'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2025-04-03 23:16:20.415358'),
(15, 'auth', '0008_alter_user_username_max_length', '2025-04-03 23:16:20.432313'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2025-04-03 23:16:20.447272'),
(17, 'auth', '0010_alter_group_name_max_length', '2025-04-03 23:16:20.464229'),
(18, 'auth', '0011_update_proxy_permissions', '2025-04-03 23:16:20.475199'),
(19, 'auth', '0012_alter_user_first_name_max_length', '2025-04-03 23:16:20.488165'),
(20, 'sessions', '0001_initial', '2025-04-03 23:16:20.508110'),
(21, 'attendance_system', '0003_studentdetails', '2025-04-24 16:18:38.753120'),
(22, 'attendance_system', '0004_staffdetails', '2025-04-24 16:42:57.827349'),
(23, 'attendance_system', '0005_authuser', '2025-04-24 17:47:19.166884');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('bqpq67313mczo3eeyg7gb57hwh977e9d', '.eJxVjDEOwjAMRe-SGUXGpCFhZO8ZKjuxSQGlUtNOiLtDpQ6w_vfef5mB1qUMa5N5GLO5GDSH340pPaRuIN-p3iabprrMI9tNsTtttp-yPK-7-3dQqJVvHRU8hiOJd5DoFJQlAifl5JSZk_joED2oo067GBRQAYJmQQxnIfP-AAPmOMI:1u80G8:jtHcHLroj0mumyOeJLy5YfVG8RncXHlTghT7svBMze4', '2025-05-08 17:21:12.611107');

-- --------------------------------------------------------

--
-- Table structure for table `staff_details`
--

CREATE TABLE `staff_details` (
  `staff_ID` int(4) NOT NULL,
  `Firstname` varchar(265) NOT NULL,
  `Lastname` varchar(265) NOT NULL,
  `Lecture_Course` varchar(265) NOT NULL,
  `Lecture_Modules` varchar(265) NOT NULL,
  `Personal_Email` varchar(265) NOT NULL,
  `Phone_Number` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff_details`
--

INSERT INTO `staff_details` (`staff_ID`, `Firstname`, `Lastname`, `Lecture_Course`, `Lecture_Modules`, `Personal_Email`, `Phone_Number`) VALUES
(1, 'Bart', 'Samson', 'Data Science', 'Programming for Data Science, Database Systems', 'Bart.Sam@fakemail.com', '07561224553');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `student_ID` int(4) NOT NULL,
  `Firstname` varchar(265) NOT NULL,
  `Lastname` varchar(265) NOT NULL,
  `Course` varchar(265) NOT NULL,
  `Year` int(2) NOT NULL,
  `Phone_Number` varchar(13) NOT NULL,
  `Email` varchar(265) NOT NULL,
  `ID_Photo` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`student_ID`, `Firstname`, `Lastname`, `Course`, `Year`, `Phone_Number`, `Email`, `ID_Photo`) VALUES
(1, 'Lisa', 'Scramptin', 'Data Science', 2, '07332156437', 'LS@fakemail.com', 0x73747564656e747349445f70686f746f732f57494e5f32303235303332385f31335f34375f31305f50726f2e6a7067);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_system_attendance`
--
ALTER TABLE `attendance_system_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendance_system_attendance_user_id_07feded6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `attendance_system_classschedule`
--
ALTER TABLE `attendance_system_classschedule`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `staff_details`
--
ALTER TABLE `staff_details`
  ADD PRIMARY KEY (`staff_ID`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`student_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance_system_attendance`
--
ALTER TABLE `attendance_system_attendance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attendance_system_classschedule`
--
ALTER TABLE `attendance_system_classschedule`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `staff_details`
--
ALTER TABLE `staff_details`
  MODIFY `staff_ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_details`
--
ALTER TABLE `student_details`
  MODIFY `student_ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance_system_attendance`
--
ALTER TABLE `attendance_system_attendance`
  ADD CONSTRAINT `attendance_system_attendance_user_id_07feded6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
