-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  ven. 21 août 2020 à 14:24
-- Version du serveur :  5.7.28
-- Version de PHP :  5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ucotech1`
--

-- --------------------------------------------------------

--
-- Structure de la table `attendence_type`
--

DROP TABLE IF EXISTS `attendence_type`;
CREATE TABLE IF NOT EXISTS `attendence_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `key_value` varchar(50) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `attendence_type`
--

INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Present', '<b class=\"text text-success\">P</b>', 'yes', '2016-06-23 18:11:37', '0000-00-00 00:00:00'),
(2, 'Late With Excuse', '<b class=\"text text-warning\">E</b>', 'no', '2018-05-29 08:19:48', '0000-00-00 00:00:00'),
(3, 'Late', '<b class=\"text text-warning\">L</b>', 'yes', '2016-06-23 18:12:28', '0000-00-00 00:00:00'),
(4, 'Absent', '<b class=\"text text-danger\">A</b>', 'yes', '2016-10-11 11:35:40', '0000-00-00 00:00:00'),
(5, 'Holiday', 'H', 'yes', '2016-10-11 11:35:01', '0000-00-00 00:00:00'),
(6, 'Half Day', '<b class=\"text text-warning\">F</b>', 'yes', '2016-06-23 18:12:28', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_title` varchar(100) NOT NULL,
  `book_no` varchar(50) NOT NULL,
  `isbn_no` varchar(100) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `rack_no` varchar(100) NOT NULL,
  `publish` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `perunitcost` float(10,2) DEFAULT NULL,
  `postdate` date DEFAULT NULL,
  `description` text,
  `available` varchar(10) DEFAULT 'yes',
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `book_issues`
--

DROP TABLE IF EXISTS `book_issues`;
CREATE TABLE IF NOT EXISTS `book_issues` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `is_returned` int(11) DEFAULT '0',
  `member_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `certificates`
--

DROP TABLE IF EXISTS `certificates`;
CREATE TABLE IF NOT EXISTS `certificates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `certificate_name` varchar(100) NOT NULL,
  `certificate_text` text NOT NULL,
  `left_header` varchar(100) NOT NULL,
  `center_header` varchar(100) NOT NULL,
  `right_header` varchar(100) NOT NULL,
  `left_footer` varchar(100) NOT NULL,
  `right_footer` varchar(100) NOT NULL,
  `center_footer` varchar(100) NOT NULL,
  `background_image` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_for` tinyint(1) NOT NULL COMMENT '1 = staff, 2 = students',
  `status` tinyint(1) NOT NULL,
  `header_height` int(11) NOT NULL,
  `content_height` int(11) NOT NULL,
  `footer_height` int(11) NOT NULL,
  `content_width` int(11) NOT NULL,
  `enable_student_image` tinyint(1) NOT NULL COMMENT '0=no,1=yes',
  `enable_image_height` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `classes`
--

DROP TABLE IF EXISTS `classes`;
CREATE TABLE IF NOT EXISTS `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(60) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `classes`
--

INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'Tronc Commun Scientifique', 'no', '2020-08-17 19:16:22', '0000-00-00 00:00:00'),
(3, '1ère Baccalauréat Scientifique', 'no', '2020-08-17 19:18:14', '0000-00-00 00:00:00'),
(4, 'Tronc Commun Technologique', 'no', '2020-08-17 19:24:17', '0000-00-00 00:00:00'),
(5, '1ère Baccalauréat Technologique', 'no', '2020-08-17 19:28:18', '0000-00-00 00:00:00'),
(6, ' Baccalauréat Scientifique', 'no', '2020-08-17 19:29:11', '0000-00-00 00:00:00'),
(7, ' Baccalauréat Technologique', 'no', '2020-08-17 19:31:15', '0000-00-00 00:00:00'),
(8, 'Primaire', 'no', '2020-08-17 19:33:34', '0000-00-00 00:00:00'),
(9, 'Secondaire', 'no', '2020-08-17 19:37:21', '0000-00-00 00:00:00'),
(10, 'Maternelle', 'no', '2020-08-17 19:38:20', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `class_sections`
--

DROP TABLE IF EXISTS `class_sections`;
CREATE TABLE IF NOT EXISTS `class_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `class_id` (`class_id`),
  KEY `section_id` (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `class_sections`
--

INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 2, 12, 'no', '2020-08-17 19:16:22', '0000-00-00 00:00:00'),
(3, 2, 13, 'no', '2020-08-17 19:16:22', '0000-00-00 00:00:00'),
(4, 2, 29, 'no', '2020-08-17 19:16:22', '0000-00-00 00:00:00'),
(5, 3, 17, 'no', '2020-08-17 19:18:14', '0000-00-00 00:00:00'),
(6, 3, 18, 'no', '2020-08-17 19:18:14', '0000-00-00 00:00:00'),
(7, 3, 21, 'no', '2020-08-17 19:18:14', '0000-00-00 00:00:00'),
(8, 3, 22, 'no', '2020-08-17 19:18:14', '0000-00-00 00:00:00'),
(9, 3, 23, 'no', '2020-08-17 19:18:14', '0000-00-00 00:00:00'),
(10, 3, 24, 'no', '2020-08-17 19:18:14', '0000-00-00 00:00:00'),
(11, 3, 32, 'no', '2020-08-17 19:21:33', '0000-00-00 00:00:00'),
(12, 3, 33, 'no', '2020-08-17 19:21:33', '0000-00-00 00:00:00'),
(13, 3, 34, 'no', '2020-08-17 19:21:33', '0000-00-00 00:00:00'),
(14, 4, 11, 'no', '2020-08-17 19:24:17', '0000-00-00 00:00:00'),
(15, 4, 30, 'no', '2020-08-17 19:24:17', '0000-00-00 00:00:00'),
(16, 5, 38, 'no', '2020-08-17 19:28:18', '0000-00-00 00:00:00'),
(17, 5, 41, 'no', '2020-08-17 19:28:18', '0000-00-00 00:00:00'),
(18, 5, 42, 'no', '2020-08-17 19:28:18', '0000-00-00 00:00:00'),
(19, 5, 44, 'no', '2020-08-17 19:28:18', '0000-00-00 00:00:00'),
(20, 5, 45, 'no', '2020-08-17 19:28:18', '0000-00-00 00:00:00'),
(21, 5, 46, 'no', '2020-08-17 19:28:18', '0000-00-00 00:00:00'),
(22, 5, 47, 'no', '2020-08-17 19:28:18', '0000-00-00 00:00:00'),
(23, 6, 19, 'no', '2020-08-17 19:29:11', '0000-00-00 00:00:00'),
(24, 6, 20, 'no', '2020-08-17 19:29:11', '0000-00-00 00:00:00'),
(25, 6, 25, 'no', '2020-08-17 19:29:11', '0000-00-00 00:00:00'),
(26, 6, 26, 'no', '2020-08-17 19:29:11', '0000-00-00 00:00:00'),
(27, 6, 27, 'no', '2020-08-17 19:29:11', '0000-00-00 00:00:00'),
(28, 6, 28, 'no', '2020-08-17 19:29:11', '0000-00-00 00:00:00'),
(29, 6, 35, 'no', '2020-08-17 19:29:11', '0000-00-00 00:00:00'),
(30, 6, 36, 'no', '2020-08-17 19:29:11', '0000-00-00 00:00:00'),
(31, 6, 37, 'no', '2020-08-17 19:29:11', '0000-00-00 00:00:00'),
(32, 7, 39, 'no', '2020-08-17 19:31:15', '0000-00-00 00:00:00'),
(33, 7, 40, 'no', '2020-08-17 19:31:15', '0000-00-00 00:00:00'),
(34, 7, 43, 'no', '2020-08-17 19:31:15', '0000-00-00 00:00:00'),
(35, 7, 48, 'no', '2020-08-17 19:31:15', '0000-00-00 00:00:00'),
(36, 7, 51, 'no', '2020-08-17 19:31:15', '0000-00-00 00:00:00'),
(37, 7, 52, 'no', '2020-08-17 19:32:10', '0000-00-00 00:00:00'),
(38, 7, 53, 'no', '2020-08-17 19:32:10', '0000-00-00 00:00:00'),
(39, 8, 2, 'no', '2020-08-17 19:33:34', '0000-00-00 00:00:00'),
(40, 8, 3, 'no', '2020-08-17 19:33:34', '0000-00-00 00:00:00'),
(41, 8, 4, 'no', '2020-08-17 19:33:34', '0000-00-00 00:00:00'),
(42, 8, 5, 'no', '2020-08-17 19:33:34', '0000-00-00 00:00:00'),
(43, 8, 6, 'no', '2020-08-17 19:33:34', '0000-00-00 00:00:00'),
(44, 8, 7, 'no', '2020-08-17 19:33:34', '0000-00-00 00:00:00'),
(45, 9, 54, 'no', '2020-08-17 19:37:21', '0000-00-00 00:00:00'),
(46, 9, 55, 'no', '2020-08-17 19:37:21', '0000-00-00 00:00:00'),
(47, 9, 56, 'no', '2020-08-17 19:37:21', '0000-00-00 00:00:00'),
(48, 9, 57, 'no', '2020-08-17 19:37:21', '0000-00-00 00:00:00'),
(49, 9, 58, 'no', '2020-08-17 19:37:21', '0000-00-00 00:00:00'),
(50, 9, 59, 'no', '2020-08-17 19:37:21', '0000-00-00 00:00:00'),
(51, 9, 60, 'no', '2020-08-17 19:37:21', '0000-00-00 00:00:00'),
(52, 9, 61, 'no', '2020-08-17 19:37:21', '0000-00-00 00:00:00'),
(53, 9, 62, 'no', '2020-08-17 19:37:21', '0000-00-00 00:00:00'),
(54, 10, 8, 'no', '2020-08-17 19:38:20', '0000-00-00 00:00:00'),
(55, 10, 9, 'no', '2020-08-17 19:38:20', '0000-00-00 00:00:00'),
(56, 10, 10, 'no', '2020-08-17 19:38:20', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `class_teacher`
--

DROP TABLE IF EXISTS `class_teacher`;
CREATE TABLE IF NOT EXISTS `class_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `class_teacher`
--

INSERT INTO `class_teacher` (`id`, `class_id`, `staff_id`, `section_id`) VALUES
(1, 8, 4, 2),
(2, 8, 5, 2),
(3, 8, 6, 2),
(4, 8, 7, 2),
(5, 8, 8, 2),
(10, 8, 9, 4),
(11, 8, 8, 3),
(12, 8, 10, 3);

-- --------------------------------------------------------

--
-- Structure de la table `complaint`
--

DROP TABLE IF EXISTS `complaint`;
CREATE TABLE IF NOT EXISTS `complaint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complaint_type` varchar(15) NOT NULL,
  `source` varchar(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `action_taken` varchar(200) NOT NULL,
  `assigned` varchar(50) NOT NULL,
  `note` text NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `complaint_type`
--

DROP TABLE IF EXISTS `complaint_type`;
CREATE TABLE IF NOT EXISTS `complaint_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complaint_type` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `contents`
--

DROP TABLE IF EXISTS `contents`;
CREATE TABLE IF NOT EXISTS `contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `is_public` varchar(10) DEFAULT 'No',
  `class_id` int(11) DEFAULT NULL,
  `cls_sec_id` int(10) NOT NULL,
  `file` varchar(250) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `note` text,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `content_for`
--

DROP TABLE IF EXISTS `content_for`;
CREATE TABLE IF NOT EXISTS `content_for` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(50) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `content_id` (`content_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(200) NOT NULL,
  `is_active` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `department`
--

INSERT INTO `department` (`id`, `department_name`, `is_active`) VALUES
(1, 'Département_01', 'yes'),
(2, 'Département_02', 'yes'),
(3, 'Département_03', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `dispatch_receive`
--

DROP TABLE IF EXISTS `dispatch_receive`;
CREATE TABLE IF NOT EXISTS `dispatch_receive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(50) NOT NULL,
  `to_title` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `note` varchar(500) NOT NULL,
  `from_title` varchar(200) NOT NULL,
  `date` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `email_config`
--

DROP TABLE IF EXISTS `email_config`;
CREATE TABLE IF NOT EXISTS `email_config` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email_type` varchar(100) DEFAULT NULL,
  `smtp_server` varchar(100) DEFAULT NULL,
  `smtp_port` varchar(100) DEFAULT NULL,
  `smtp_username` varchar(100) DEFAULT NULL,
  `smtp_password` varchar(100) DEFAULT NULL,
  `ssl_tls` varchar(100) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `enquiry`
--

DROP TABLE IF EXISTS `enquiry`;
CREATE TABLE IF NOT EXISTS `enquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` mediumtext NOT NULL,
  `reference` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(500) NOT NULL,
  `follow_up_date` date NOT NULL,
  `note` mediumtext NOT NULL,
  `source` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `assigned` varchar(100) NOT NULL,
  `class` int(11) NOT NULL,
  `no_of_child` varchar(11) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `enquiry_type`
--

DROP TABLE IF EXISTS `enquiry_type`;
CREATE TABLE IF NOT EXISTS `enquiry_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enquiry_type` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_title` varchar(200) NOT NULL,
  `event_description` varchar(300) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `event_type` varchar(100) NOT NULL,
  `event_color` varchar(200) NOT NULL,
  `event_for` varchar(100) NOT NULL,
  `is_active` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `exams`
--

DROP TABLE IF EXISTS `exams`;
CREATE TABLE IF NOT EXISTS `exams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `sesion_id` int(11) NOT NULL,
  `note` text,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `exams`
--

INSERT INTO `exams` (`id`, `name`, `sesion_id`, `note`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Control_01', 0, 'Obligatoire', 'no', '2020-08-18 01:15:43', '0000-00-00 00:00:00'),
(2, 'Control_02', 0, 'Optionnel', 'no', '2020-08-18 01:16:30', '0000-00-00 00:00:00'),
(3, 'Exam Final', 0, 'Obligatoire', 'no', '2020-08-18 01:16:43', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `exam_results`
--

DROP TABLE IF EXISTS `exam_results`;
CREATE TABLE IF NOT EXISTS `exam_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attendence` varchar(10) NOT NULL,
  `exam_schedule_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `get_marks` float(10,2) DEFAULT NULL,
  `note` text,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `exam_schedule_id` (`exam_schedule_id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `exam_results`
--

INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'pre', 10, 12, 16.75, NULL, 'no', '2020-08-19 15:43:40', '0000-00-00 00:00:00'),
(2, 'pre', 11, 12, 8.00, NULL, 'no', '2020-08-19 23:05:03', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `exam_schedules`
--

DROP TABLE IF EXISTS `exam_schedules`;
CREATE TABLE IF NOT EXISTS `exam_schedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) NOT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `teacher_subject_id` int(11) DEFAULT NULL,
  `date_of_exam` date DEFAULT NULL,
  `start_to` varchar(50) DEFAULT NULL,
  `end_from` varchar(50) DEFAULT NULL,
  `room_no` varchar(50) DEFAULT NULL,
  `full_marks` int(11) DEFAULT NULL,
  `passing_marks` int(11) DEFAULT NULL,
  `note` text,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `teacher_subject_id` (`teacher_subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `exam_schedules`
--

INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 15, 1, 1, '2020-08-01', '08:00 PM', '10:00 PM', '22', 20, 10, NULL, 'no', '2020-08-18 01:26:51', '0000-00-00 00:00:00'),
(2, 15, 1, 2, '2020-08-05', '12:00 AM', '02:15 AM', '2', 15, 8, NULL, 'no', '2020-08-18 01:26:51', '0000-00-00 00:00:00'),
(3, 15, 1, 3, '2020-08-11', '12:00 AM', '02:15 AM', '4', 20, 10, NULL, 'no', '2020-08-18 01:26:51', '0000-00-00 00:00:00'),
(4, 15, 1, 4, '2020-08-16', '12:00 AM', '02:15 AM', '5', 20, 9, NULL, 'no', '2020-08-18 01:26:51', '0000-00-00 00:00:00'),
(5, 15, 1, 5, '2020-08-19', '12:00 AM', '02:15 AM', '6', 10, 5, NULL, 'no', '2020-08-18 01:26:51', '0000-00-00 00:00:00'),
(6, 15, 1, 6, '2020-08-12', '12:00 AM', '02:15 AM', '12', 10, 6, NULL, 'no', '2020-08-18 01:26:51', '0000-00-00 00:00:00'),
(7, 15, 1, 7, '2020-08-24', '03:00 AM', '02:15 AM', '7', 20, 10, NULL, 'no', '2020-08-18 01:26:51', '0000-00-00 00:00:00'),
(8, 15, 1, 8, '2020-08-13', '03:00 AM', '03:45 AM', '9', 20, 10, NULL, 'no', '2020-08-18 01:26:51', '0000-00-00 00:00:00'),
(9, 15, 1, 9, '2020-08-08', '02:00 AM', '02:15 AM', '20', 20, 12, NULL, 'no', '2020-08-18 01:26:51', '0000-00-00 00:00:00'),
(10, 15, 2, 10, '2020-09-30', '08:00 AM', '09:30 PM', '20', 20, 10, NULL, 'no', '2020-08-19 15:41:48', '0000-00-00 00:00:00'),
(11, 15, 2, 11, '2020-08-30', '10:00 AM', '11:30 PM', '21', 10, 6, NULL, 'no', '2020-08-19 15:41:48', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
CREATE TABLE IF NOT EXISTS `expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exp_head_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `invoice_no` varchar(200) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `documents` varchar(255) DEFAULT NULL,
  `note` text,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `expense_head`
--

DROP TABLE IF EXISTS `expense_head`;
CREATE TABLE IF NOT EXISTS `expense_head` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exp_category` varchar(50) DEFAULT NULL,
  `description` text,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `feecategory`
--

DROP TABLE IF EXISTS `feecategory`;
CREATE TABLE IF NOT EXISTS `feecategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `feemasters`
--

DROP TABLE IF EXISTS `feemasters`;
CREATE TABLE IF NOT EXISTS `feemasters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `feetype_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `description` text,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `fees_discounts`
--

DROP TABLE IF EXISTS `fees_discounts`;
CREATE TABLE IF NOT EXISTS `fees_discounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `description` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `feetype`
--

DROP TABLE IF EXISTS `feetype`;
CREATE TABLE IF NOT EXISTS `feetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_system` int(1) NOT NULL DEFAULT '0',
  `feecategory_id` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `feetype`
--

INSERT INTO `feetype` (`id`, `is_system`, `feecategory_id`, `type`, `code`, `is_active`, `created_at`, `updated_at`, `description`) VALUES
(1, 0, NULL, 'Primaire', '001', 'no', '2020-08-19 17:43:40', '0000-00-00 00:00:00', ''),
(2, 0, NULL, 'Secondaire', '002', 'no', '2020-08-19 17:43:50', '0000-00-00 00:00:00', ''),
(3, 1, NULL, 'Previous Session Balance', 'Previous Session Balance', 'no', '2020-08-19 16:45:21', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Structure de la table `fee_groups`
--

DROP TABLE IF EXISTS `fee_groups`;
CREATE TABLE IF NOT EXISTS `fee_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `is_system` int(1) NOT NULL DEFAULT '0',
  `description` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `fee_groups`
--

INSERT INTO `fee_groups` (`id`, `name`, `is_system`, `description`, `is_active`, `created_at`) VALUES
(1, 'Scolaire', 0, 'mensuel', 'no', '2020-08-19 15:55:29'),
(2, 'Transport', 0, '', 'no', '2020-08-19 15:55:41'),
(3, 'Piscine', 0, '', 'no', '2020-08-19 15:55:53'),
(4, 'Excurtion', 0, '', 'no', '2020-08-19 15:56:03'),
(5, 'Balance Master', 1, NULL, 'no', '2020-08-19 16:45:21');

-- --------------------------------------------------------

--
-- Structure de la table `fee_groups_feetype`
--

DROP TABLE IF EXISTS `fee_groups_feetype`;
CREATE TABLE IF NOT EXISTS `fee_groups_feetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fee_session_group_id` int(11) DEFAULT NULL,
  `fee_groups_id` int(11) DEFAULT NULL,
  `feetype_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fee_session_group_id` (`fee_session_group_id`),
  KEY `fee_groups_id` (`fee_groups_id`),
  KEY `feetype_id` (`feetype_id`),
  KEY `session_id` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `fee_groups_feetype`
--

INSERT INTO `fee_groups_feetype` (`id`, `fee_session_group_id`, `fee_groups_id`, `feetype_id`, `session_id`, `due_date`, `amount`, `is_active`, `created_at`) VALUES
(1, 1, 1, 1, 15, '2020-08-31', '3000.00', 'no', '2020-08-19 16:40:04'),
(2, 1, 1, 2, 15, '2020-08-31', '3500.00', 'no', '2020-08-19 16:41:18'),
(3, 2, 5, 3, 15, '2020-10-18', NULL, 'no', '2020-08-19 17:02:21'),
(4, 3, 2, 1, 15, '1970-01-01', '300.00', 'no', '2020-08-19 17:05:17');

-- --------------------------------------------------------

--
-- Structure de la table `fee_receipt_no`
--

DROP TABLE IF EXISTS `fee_receipt_no`;
CREATE TABLE IF NOT EXISTS `fee_receipt_no` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `fee_session_groups`
--

DROP TABLE IF EXISTS `fee_session_groups`;
CREATE TABLE IF NOT EXISTS `fee_session_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fee_groups_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fee_groups_id` (`fee_groups_id`),
  KEY `session_id` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `fee_session_groups`
--

INSERT INTO `fee_session_groups` (`id`, `fee_groups_id`, `session_id`, `is_active`, `created_at`) VALUES
(1, 1, 15, 'no', '2020-08-19 16:40:04'),
(2, 5, 15, 'no', '2020-08-19 16:45:21'),
(3, 2, 15, 'no', '2020-08-19 17:05:17');

-- --------------------------------------------------------

--
-- Structure de la table `follow_up`
--

DROP TABLE IF EXISTS `follow_up`;
CREATE TABLE IF NOT EXISTS `follow_up` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enquiry_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `next_date` date NOT NULL,
  `response` text NOT NULL,
  `note` text NOT NULL,
  `followup_by` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `front_cms_media_gallery`
--

DROP TABLE IF EXISTS `front_cms_media_gallery`;
CREATE TABLE IF NOT EXISTS `front_cms_media_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(300) DEFAULT NULL,
  `thumb_path` varchar(300) DEFAULT NULL,
  `dir_path` varchar(300) DEFAULT NULL,
  `img_name` varchar(300) DEFAULT NULL,
  `thumb_name` varchar(300) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `file_type` varchar(100) NOT NULL,
  `file_size` varchar(100) NOT NULL,
  `vid_url` mediumtext NOT NULL,
  `vid_title` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `front_cms_menus`
--

DROP TABLE IF EXISTS `front_cms_menus`;
CREATE TABLE IF NOT EXISTS `front_cms_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(100) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `description` mediumtext,
  `open_new_tab` int(10) NOT NULL DEFAULT '0',
  `ext_url` mediumtext NOT NULL,
  `ext_url_link` mediumtext NOT NULL,
  `publish` int(11) NOT NULL DEFAULT '0',
  `content_type` varchar(10) NOT NULL DEFAULT 'manual',
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `front_cms_menus`
--

INSERT INTO `front_cms_menus` (`id`, `menu`, `slug`, `description`, `open_new_tab`, `ext_url`, `ext_url_link`, `publish`, `content_type`, `is_active`, `created_at`) VALUES
(1, 'Main Menu', 'main-menu', 'Main menu', 0, '', '', 0, 'default', 'no', '2018-04-20 14:54:49'),
(2, 'Bottom Menu', 'bottom-menu', 'Bottom Menu', 0, '', '', 0, 'default', 'no', '2018-04-20 14:54:55');

-- --------------------------------------------------------

--
-- Structure de la table `front_cms_menu_items`
--

DROP TABLE IF EXISTS `front_cms_menu_items`;
CREATE TABLE IF NOT EXISTS `front_cms_menu_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `menu` varchar(100) DEFAULT NULL,
  `page_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `ext_url` mediumtext,
  `open_new_tab` int(11) DEFAULT '0',
  `ext_url_link` mediumtext,
  `slug` varchar(200) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `publish` int(11) NOT NULL DEFAULT '0',
  `description` mediumtext,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `front_cms_pages`
--

DROP TABLE IF EXISTS `front_cms_pages`;
CREATE TABLE IF NOT EXISTS `front_cms_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_type` varchar(10) NOT NULL DEFAULT 'manual',
  `is_homepage` int(1) DEFAULT '0',
  `title` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `meta_title` mediumtext,
  `meta_description` mediumtext,
  `meta_keyword` mediumtext,
  `feature_image` varchar(200) NOT NULL,
  `description` longtext,
  `publish_date` date NOT NULL,
  `publish` int(10) DEFAULT '0',
  `sidebar` int(10) DEFAULT '0',
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `front_cms_pages`
--

INSERT INTO `front_cms_pages` (`id`, `page_type`, `is_homepage`, `title`, `url`, `type`, `slug`, `meta_title`, `meta_description`, `meta_keyword`, `feature_image`, `description`, `publish_date`, `publish`, `sidebar`, `is_active`, `created_at`) VALUES
(1, 'default', 1, 'Home', 'page/home', 'page', 'home', '', '', '', '', '<p>home page</p>', '0000-00-00', 1, NULL, 'no', '2018-07-11 18:04:33'),
(2, 'default', 0, 'Complain', 'page/complain', 'page', 'complain', 'Complain form', '                                                                                                                                                                                    complain form                                                                                                                                                                                                                                ', 'complain form', '', '<p>\r\n[form-builder:complain]</p>', '0000-00-00', 1, 1, 'no', '2018-05-09 15:14:34'),
(54, 'default', 0, '404 page', 'page/404-page', 'page', '404-page', '', '                                ', '', '', '<html>\r\n<head>\r\n <title></title>\r\n</head>\r\n<body>\r\n<p>404 page found</p>\r\n</body>\r\n</html>', '0000-00-00', 0, NULL, 'no', '2018-05-18 14:46:04'),
(76, 'default', 0, 'Contact us', 'page/contact-us', 'page', 'contact-us', '', '', '', '', '<title></title>\r\n<section class=\"contact\">\r\n<div class=\"container spacet50 spaceb50\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12 col-sm-12\">[form-builder:contact_us]<!--./row--></div>\r\n<!--./col-md-12--></div>\r\n<!--./row--></div>\r\n<!--./container--></section>', '0000-00-00', 0, NULL, 'no', '2018-07-11 18:03:41');

-- --------------------------------------------------------

--
-- Structure de la table `front_cms_page_contents`
--

DROP TABLE IF EXISTS `front_cms_page_contents`;
CREATE TABLE IF NOT EXISTS `front_cms_page_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `content_type` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `front_cms_programs`
--

DROP TABLE IF EXISTS `front_cms_programs`;
CREATE TABLE IF NOT EXISTS `front_cms_programs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `url` mediumtext,
  `title` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `event_start` date DEFAULT NULL,
  `event_end` date DEFAULT NULL,
  `event_venue` mediumtext,
  `description` mediumtext,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `meta_title` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `meta_keyword` mediumtext NOT NULL,
  `feature_image` mediumtext NOT NULL,
  `publish_date` date NOT NULL,
  `publish` varchar(10) DEFAULT '0',
  `sidebar` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `front_cms_programs`
--

INSERT INTO `front_cms_programs` (`id`, `type`, `slug`, `url`, `title`, `date`, `event_start`, `event_end`, `event_venue`, `description`, `is_active`, `created_at`, `meta_title`, `meta_description`, `meta_keyword`, `feature_image`, `publish_date`, `publish`, `sidebar`) VALUES
(1, 'events', 'test', 'read/test', 'test', NULL, '2020-08-19', '2020-08-19', 'test', '<p>teeeeeeeeeeeeeest</p>', 'no', '2020-08-19 23:29:42', '', '', '', '', '0000-00-00', '0', 1),
(2, 'notice', 'cdcsdcds', 'read/cdcsdcds', 'cdcsdcds', '2020-08-19', NULL, NULL, NULL, '<p>cdscsac</p>', 'no', '2020-08-19 23:38:46', '', '', '', '', '0000-00-00', '0', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `front_cms_program_photos`
--

DROP TABLE IF EXISTS `front_cms_program_photos`;
CREATE TABLE IF NOT EXISTS `front_cms_program_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `program_id` int(11) DEFAULT NULL,
  `media_gallery_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `program_id` (`program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `front_cms_settings`
--

DROP TABLE IF EXISTS `front_cms_settings`;
CREATE TABLE IF NOT EXISTS `front_cms_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(50) DEFAULT NULL,
  `is_active_rtl` int(10) DEFAULT '0',
  `is_active_front_cms` int(11) DEFAULT '0',
  `is_active_sidebar` int(1) DEFAULT '0',
  `logo` varchar(200) DEFAULT NULL,
  `contact_us_email` varchar(100) DEFAULT NULL,
  `complain_form_email` varchar(100) DEFAULT NULL,
  `sidebar_options` mediumtext NOT NULL,
  `fb_url` varchar(200) NOT NULL,
  `twitter_url` varchar(200) NOT NULL,
  `youtube_url` varchar(200) NOT NULL,
  `google_plus` varchar(200) NOT NULL,
  `instagram_url` varchar(200) NOT NULL,
  `pinterest_url` varchar(200) NOT NULL,
  `linkedin_url` varchar(200) NOT NULL,
  `google_analytics` mediumtext,
  `footer_text` varchar(500) DEFAULT NULL,
  `fav_icon` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `general_calls`
--

DROP TABLE IF EXISTS `general_calls`;
CREATE TABLE IF NOT EXISTS `general_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(500) NOT NULL,
  `follow_up_date` date NOT NULL,
  `call_dureation` varchar(50) NOT NULL,
  `note` mediumtext NOT NULL,
  `call_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `grades`
--

DROP TABLE IF EXISTS `grades`;
CREATE TABLE IF NOT EXISTS `grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `point` float(10,1) DEFAULT NULL,
  `mark_from` float(10,2) DEFAULT NULL,
  `mark_upto` float(10,2) DEFAULT NULL,
  `description` text,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `grades`
--

INSERT INTO `grades` (`id`, `name`, `point`, `mark_from`, `mark_upto`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Très bien', NULL, 80.00, 100.00, '', 'no', '2020-08-18 01:49:00', '0000-00-00 00:00:00'),
(2, 'Bien', NULL, 70.00, 80.00, '', 'no', '2020-08-18 01:49:35', '0000-00-00 00:00:00'),
(3, 'Assez bien', NULL, 60.00, 70.00, '', 'no', '2020-08-18 01:50:32', '0000-00-00 00:00:00'),
(4, 'Passable', NULL, 50.00, 60.00, '', 'no', '2020-08-18 01:50:43', '0000-00-00 00:00:00'),
(5, 'Pas de mention', NULL, 0.00, 50.00, '', 'no', '2020-08-18 01:51:34', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `homework`
--

DROP TABLE IF EXISTS `homework`;
CREATE TABLE IF NOT EXISTS `homework` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `homework_date` date NOT NULL,
  `submit_date` date NOT NULL,
  `staff_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `create_date` date NOT NULL,
  `document` varchar(200) NOT NULL,
  `created_by` int(11) NOT NULL,
  `evaluated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `homework_evaluation`
--

DROP TABLE IF EXISTS `homework_evaluation`;
CREATE TABLE IF NOT EXISTS `homework_evaluation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `homework_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `hostel`
--

DROP TABLE IF EXISTS `hostel`;
CREATE TABLE IF NOT EXISTS `hostel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostel_name` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `address` text,
  `intake` int(11) DEFAULT NULL,
  `description` text,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `hostel_rooms`
--

DROP TABLE IF EXISTS `hostel_rooms`;
CREATE TABLE IF NOT EXISTS `hostel_rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostel_id` int(11) DEFAULT NULL,
  `room_type_id` int(11) DEFAULT NULL,
  `room_no` varchar(200) DEFAULT NULL,
  `no_of_bed` int(11) DEFAULT NULL,
  `cost_per_bed` float(10,2) DEFAULT '0.00',
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `id_card`
--

DROP TABLE IF EXISTS `id_card`;
CREATE TABLE IF NOT EXISTS `id_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `school_address` varchar(500) NOT NULL,
  `background` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `sign_image` varchar(100) NOT NULL,
  `header_color` varchar(100) NOT NULL,
  `enable_admission_no` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_student_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_class` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_fathers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_mothers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_address` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_phone` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_dob` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_blood_group` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `status` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `income`
--

DROP TABLE IF EXISTS `income`;
CREATE TABLE IF NOT EXISTS `income` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inc_head_id` varchar(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `invoice_no` varchar(200) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `note` text,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `documents` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `income`
--

INSERT INTO `income` (`id`, `inc_head_id`, `name`, `invoice_no`, `date`, `amount`, `note`, `is_active`, `is_deleted`, `created_at`, `updated_at`, `documents`) VALUES
(1, '3', 'Formation externe', '2009', '2020-08-19', 20000, '', 'yes', 'no', '2020-08-19 16:20:45', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `income_head`
--

DROP TABLE IF EXISTS `income_head`;
CREATE TABLE IF NOT EXISTS `income_head` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `income_category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `is_deleted` varchar(255) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `income_head`
--

INSERT INTO `income_head` (`id`, `income_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Extra', '', 'yes', 'no', '2020-08-19 16:15:03', '0000-00-00 00:00:00'),
(2, 'Interne', '', 'yes', 'no', '2020-08-19 16:15:11', '0000-00-00 00:00:00'),
(3, 'Externe', '', 'yes', 'no', '2020-08-19 16:15:17', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_category_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `item_photo` varchar(225) DEFAULT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `item_store_id` int(11) DEFAULT NULL,
  `item_supplier_id` int(11) DEFAULT NULL,
  `quantity` int(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `item_category`
--

DROP TABLE IF EXISTS `item_category`;
CREATE TABLE IF NOT EXISTS `item_category` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `item_category` varchar(255) NOT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `item_issue`
--

DROP TABLE IF EXISTS `item_issue`;
CREATE TABLE IF NOT EXISTS `item_issue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issue_type` varchar(15) DEFAULT NULL,
  `issue_to` varchar(100) DEFAULT NULL,
  `issue_by` varchar(100) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `item_category_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `quantity` int(10) NOT NULL,
  `note` text NOT NULL,
  `is_returned` int(2) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` varchar(10) DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `item_category_id` (`item_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `item_stock`
--

DROP TABLE IF EXISTS `item_stock`;
CREATE TABLE IF NOT EXISTS `item_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `symbol` varchar(10) NOT NULL DEFAULT '+',
  `store_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `attachment` varchar(250) DEFAULT NULL,
  `description` text NOT NULL,
  `is_active` varchar(10) DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `item_store`
--

DROP TABLE IF EXISTS `item_store`;
CREATE TABLE IF NOT EXISTS `item_store` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `item_store` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `item_supplier`
--

DROP TABLE IF EXISTS `item_supplier`;
CREATE TABLE IF NOT EXISTS `item_supplier` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `item_supplier` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_person_name` varchar(255) NOT NULL,
  `contact_person_phone` varchar(255) NOT NULL,
  `contact_person_email` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(50) DEFAULT NULL,
  `is_deleted` varchar(10) NOT NULL DEFAULT 'yes',
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `languages`
--

INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Azerbaijan', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(2, 'Albanian', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(3, 'Amharic', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(4, 'English', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(5, 'Arabic', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(7, 'Afrikaans', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(8, 'Basque', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(11, 'Bengali', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(13, 'Bosnian', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(14, 'Welsh', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(15, 'Hungarian', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(16, 'Vietnamese', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(17, 'Haitian (Creole)', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(18, 'Galician', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(19, 'Dutch', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(21, 'Greek', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(22, 'Georgian', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(23, 'Gujarati', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(24, 'Danish', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(25, 'Hebrew', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(26, 'Yiddish', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(27, 'Indonesian', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(28, 'Irish', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(29, 'Italian', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(30, 'Icelandic', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(31, 'Spanish', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(33, 'Kannada', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(34, 'Catalan', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(36, 'Chinese', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(37, 'Korean', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(38, 'Xhosa', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(39, 'Latin', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(40, 'Latvian', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(41, 'Lithuanian', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(43, 'Malagasy', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(44, 'Malay', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(45, 'Malayalam', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(46, 'Maltese', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(47, 'Macedonian', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(48, 'Maori', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(49, 'Marathi', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(51, 'Mongolian', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(52, 'German', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(53, 'Nepali', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(54, 'Norwegian', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(55, 'Punjabi', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(57, 'Persian', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(59, 'Portuguese', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(60, 'Romanian', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(61, 'Russian', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(62, 'Cebuano', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(64, 'Sinhala', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(65, 'Slovakian', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(66, 'Slovenian', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(67, 'Swahili', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(68, 'Sundanese', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(70, 'Thai', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(71, 'Tagalog', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(72, 'Tamil', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(74, 'Telugu', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(75, 'Turkish', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(77, 'Uzbek', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(79, 'Urdu', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(80, 'Finnish', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(81, 'French', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(82, 'Hindi', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(84, 'Czech', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(85, 'Swedish', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(86, 'Scottish', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(87, 'Estonian', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(88, 'Esperanto', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(89, 'Javanese', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00'),
(90, 'Japanese', 'no', 'no', '2017-04-06 05:08:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `leave_types`
--

DROP TABLE IF EXISTS `leave_types`;
CREATE TABLE IF NOT EXISTS `leave_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(200) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `leave_types`
--

INSERT INTO `leave_types` (`id`, `type`, `is_active`) VALUES
(1, 'Abondant de poste', 'yes'),
(2, 'DEM type1', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `libarary_members`
--

DROP TABLE IF EXISTS `libarary_members`;
CREATE TABLE IF NOT EXISTS `libarary_members` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `library_card_no` varchar(50) DEFAULT NULL,
  `member_type` varchar(50) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `message` text,
  `send_mail` varchar(10) DEFAULT '0',
  `send_sms` varchar(10) DEFAULT '0',
  `is_group` varchar(10) DEFAULT '0',
  `is_individual` varchar(10) DEFAULT '0',
  `is_class` int(10) NOT NULL DEFAULT '0',
  `group_list` text,
  `user_list` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES
(1, 'test', '<p>test</p>', '1', '0', '1', '0', 0, '[]', NULL, '2020-08-19 23:32:52', '0000-00-00 00:00:00'),
(2, 'bmnbmnbmbm', '<p>nbvbnbvbn</p>', '1', '0', '1', '0', 0, '[]', NULL, '2020-08-19 23:36:38', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `notification_roles`
--

DROP TABLE IF EXISTS `notification_roles`;
CREATE TABLE IF NOT EXISTS `notification_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `send_notification_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `send_notification_id` (`send_notification_id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `notification_roles`
--

INSERT INTO `notification_roles` (`id`, `send_notification_id`, `role_id`, `is_active`, `created_at`) VALUES
(1, 1, 7, 0, '2020-08-19 23:25:01'),
(2, 2, 2, 0, '2020-08-19 23:26:09'),
(3, 2, 7, 0, '2020-08-19 23:26:09'),
(4, 3, 2, 0, '2020-08-19 23:27:45'),
(5, 4, 2, 0, '2020-08-19 23:34:53'),
(6, 4, 7, 0, '2020-08-19 23:34:53'),
(7, 5, 2, 0, '2020-08-19 23:37:10');

-- --------------------------------------------------------

--
-- Structure de la table `notification_setting`
--

DROP TABLE IF EXISTS `notification_setting`;
CREATE TABLE IF NOT EXISTS `notification_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) DEFAULT NULL,
  `is_mail` varchar(10) DEFAULT '0',
  `is_sms` varchar(10) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `notification_setting`
--

INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `created_at`) VALUES
(1, 'student_admission', '1', '0', '2018-05-22 13:00:07'),
(2, 'exam_result', '1', '0', '2018-05-22 13:00:07'),
(3, 'fee_submission', '1', '0', '2018-05-22 13:00:07'),
(4, 'absent_attendence', '1', '0', '2018-07-11 17:43:02'),
(5, 'login_credential', '1', '0', '2018-05-22 13:04:19');

-- --------------------------------------------------------

--
-- Structure de la table `payment_settings`
--

DROP TABLE IF EXISTS `payment_settings`;
CREATE TABLE IF NOT EXISTS `payment_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(200) NOT NULL,
  `api_username` varchar(200) DEFAULT NULL,
  `api_secret_key` varchar(200) NOT NULL,
  `salt` varchar(200) NOT NULL,
  `api_publishable_key` varchar(200) NOT NULL,
  `api_password` varchar(200) DEFAULT NULL,
  `api_signature` varchar(200) DEFAULT NULL,
  `api_email` varchar(200) DEFAULT NULL,
  `paypal_demo` varchar(100) NOT NULL,
  `account_no` varchar(200) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `payment_type`, `api_username`, `api_secret_key`, `salt`, `api_publishable_key`, `api_password`, `api_signature`, `api_email`, `paypal_demo`, `account_no`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'paypal', '', '', '', '', '', '', NULL, '', '', 'yes', '2018-07-12 05:26:13', '0000-00-00 00:00:00'),
(2, 'stripe', NULL, '', '', '', NULL, NULL, NULL, '', '', 'no', '2018-07-12 05:26:26', '0000-00-00 00:00:00'),
(3, 'payu', NULL, '', '', '', NULL, NULL, NULL, '', '', 'no', '2018-07-12 05:26:35', '0000-00-00 00:00:00'),
(4, 'ccavenue', NULL, '', '', '', NULL, NULL, NULL, '', '', 'no', '2018-07-12 05:26:45', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `payslip_allowance`
--

DROP TABLE IF EXISTS `payslip_allowance`;
CREATE TABLE IF NOT EXISTS `payslip_allowance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payslip_id` int(11) NOT NULL,
  `allowance_type` varchar(200) NOT NULL,
  `amount` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `cal_type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `payslip_allowance`
--

INSERT INTO `payslip_allowance` (`id`, `payslip_id`, `allowance_type`, `amount`, `staff_id`, `cal_type`) VALUES
(1, 1, '', 0, 4, 'positive'),
(2, 1, '', 0, 4, 'negative');

-- --------------------------------------------------------

--
-- Structure de la table `permission_category`
--

DROP TABLE IF EXISTS `permission_category`;
CREATE TABLE IF NOT EXISTS `permission_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `perm_group_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) DEFAULT NULL,
  `enable_view` int(11) DEFAULT '0',
  `enable_add` int(11) DEFAULT '0',
  `enable_edit` int(11) DEFAULT '0',
  `enable_delete` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `permission_category`
--

INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES
(1, 1, 'Student', 'student', 1, 1, 1, 1, '2018-06-22 15:47:11'),
(2, 1, 'Import Student', 'import_student', 1, 0, 0, 0, '2018-06-22 15:47:19'),
(3, 1, 'Student Categories', 'student_categories', 1, 1, 1, 1, '2018-06-22 15:47:36'),
(4, 1, 'Student Houses', 'student_houses', 1, 1, 1, 1, '2018-06-22 15:47:53'),
(5, 2, 'Collect Fees', 'collect_fees', 1, 1, 0, 1, '2018-06-22 15:51:03'),
(6, 2, 'Fees Carry Forward', 'fees_carry_forward', 1, 0, 0, 0, '2018-06-27 05:48:15'),
(7, 2, 'Fees Master', 'fees_master', 1, 1, 1, 1, '2018-06-27 05:48:57'),
(8, 2, 'Fees Group', 'fees_group', 1, 1, 1, 1, '2018-06-22 15:51:46'),
(9, 3, 'Income', 'income', 1, 1, 1, 1, '2018-06-22 15:53:21'),
(10, 3, 'Income Head', 'income_head', 1, 1, 1, 1, '2018-06-22 15:52:44'),
(11, 3, 'Search Income', 'search_income', 1, 0, 0, 0, '2018-06-22 15:53:00'),
(12, 4, 'Expense', 'expense', 1, 1, 1, 1, '2018-06-22 15:54:06'),
(13, 4, 'Expense Head', 'expense_head', 1, 1, 1, 1, '2018-06-22 15:53:47'),
(14, 4, 'Search Expense', 'search_expense', 1, 0, 0, 0, '2018-06-22 15:54:13'),
(15, 5, 'Student Attendance', 'student_attendance', 1, 1, 1, 0, '2018-06-22 15:54:49'),
(16, 5, 'Student Attendance Report', 'student_attendance_report', 1, 0, 0, 0, '2018-06-22 15:54:26'),
(17, 6, 'Exam', 'exam', 1, 1, 1, 1, '2018-06-22 15:56:02'),
(19, 6, 'Marks Register', 'marks_register', 1, 1, 1, 0, '2018-06-22 15:56:19'),
(20, 6, 'Marks Grade', 'marks_grade', 1, 1, 1, 1, '2018-06-22 15:55:25'),
(21, 7, 'Class Timetable', 'class_timetable', 1, 1, 1, 0, '2018-06-22 16:01:36'),
(22, 7, 'Assign Subject', 'assign_subject', 1, 1, 1, 1, '2018-06-22 16:01:57'),
(23, 7, 'Subject', 'subject', 1, 1, 1, 1, '2018-06-22 16:02:17'),
(24, 7, 'Class', 'class', 1, 1, 1, 1, '2018-06-22 16:02:35'),
(25, 7, 'Section', 'section', 1, 1, 1, 1, '2018-06-22 16:01:10'),
(26, 7, 'Promote Student', 'promote_student', 1, 0, 0, 0, '2018-06-22 16:02:47'),
(27, 8, 'Upload Content', 'upload_content', 1, 1, 0, 1, '2018-06-22 16:03:19'),
(28, 9, 'Books', 'books', 1, 1, 1, 1, '2018-06-22 16:04:04'),
(29, 9, 'Issue Return Student', 'issue_return', 1, 0, 0, 0, '2018-06-22 16:03:41'),
(30, 9, 'Add Staff Member', 'add_staff_member', 1, 0, 0, 0, '2018-07-02 17:07:00'),
(31, 10, 'Issue Item', 'issue_item', 1, 0, 0, 0, '2018-06-22 16:04:51'),
(32, 10, 'Item Stock', 'item_stock', 1, 1, 1, 1, '2018-06-22 16:05:17'),
(33, 10, 'Item', 'item', 1, 1, 1, 1, '2018-06-22 16:05:40'),
(34, 10, 'Store', 'store', 1, 1, 1, 1, '2018-06-22 16:06:02'),
(35, 10, 'Supplier', 'supplier', 1, 1, 1, 1, '2018-06-22 16:06:25'),
(37, 11, 'Routes', 'routes', 1, 1, 1, 1, '2018-06-22 16:09:17'),
(38, 11, 'Vehicle', 'vehicle', 1, 1, 1, 1, '2018-06-22 16:09:36'),
(39, 11, 'Assign Vehicle', 'assign_vehicle', 1, 1, 1, 1, '2018-06-27 10:09:20'),
(40, 12, 'Hostel', 'hostel', 1, 1, 1, 1, '2018-06-22 16:10:49'),
(41, 12, 'Room Type', 'room_type', 1, 1, 1, 1, '2018-06-22 16:10:27'),
(42, 12, 'Hostel Rooms', 'hostel_rooms', 1, 1, 1, 1, '2018-06-25 11:53:03'),
(43, 13, 'Notice Board', 'notice_board', 1, 1, 1, 1, '2018-06-22 16:11:17'),
(44, 13, 'Email / SMS', 'email_sms', 1, 0, 0, 0, '2018-06-22 16:10:54'),
(46, 13, 'Email / SMS Log', 'email_sms_log', 1, 0, 0, 0, '2018-06-22 16:11:23'),
(47, 1, 'Student Report', 'student_report', 1, 0, 0, 0, '2018-07-03 16:19:36'),
(48, 14, 'Transaction Report', 'transaction_report', 1, 0, 0, 0, '2018-07-06 17:13:32'),
(49, 14, 'User Log', 'user_log', 1, 0, 0, 0, '2018-07-06 17:13:53'),
(53, 15, 'Languages', 'languages', 0, 1, 0, 0, '2018-06-22 16:13:18'),
(54, 15, 'General Setting', 'general_setting', 1, 0, 1, 0, '2018-07-05 14:38:35'),
(55, 15, 'Session Setting', 'session_setting', 1, 1, 1, 1, '2018-06-22 16:14:15'),
(56, 15, 'Notification Setting', 'notification_setting', 1, 0, 1, 0, '2018-07-05 14:38:41'),
(57, 15, 'SMS Setting', 'sms_setting', 1, 0, 1, 0, '2018-07-05 14:38:47'),
(58, 15, 'Email Setting', 'email_setting', 1, 0, 1, 0, '2018-07-05 14:38:51'),
(59, 15, 'Front CMS Setting', 'front_cms_setting', 1, 0, 1, 0, '2018-07-05 14:38:55'),
(60, 15, 'Payment Methods', 'payment_methods', 1, 0, 1, 0, '2018-07-05 14:38:59'),
(61, 16, 'Menus', 'menus', 1, 1, 0, 1, '2018-07-09 09:20:06'),
(62, 16, 'Media Manager', 'media_manager', 1, 1, 0, 1, '2018-07-09 09:20:26'),
(63, 16, 'Banner Images', 'banner_images', 1, 1, 0, 1, '2018-06-22 16:16:02'),
(64, 16, 'Pages', 'pages', 1, 1, 1, 1, '2018-06-22 16:16:21'),
(65, 16, 'Gallery', 'gallery', 1, 1, 1, 1, '2018-06-22 16:17:02'),
(66, 16, 'Event', 'event', 1, 1, 1, 1, '2018-06-22 16:17:20'),
(67, 16, 'News', 'notice', 1, 1, 1, 1, '2018-07-03 14:09:34'),
(68, 2, 'Fees Group Assign', 'fees_group_assign', 1, 0, 0, 0, '2018-06-22 15:50:42'),
(69, 2, 'Fees Type', 'fees_type', 1, 1, 1, 1, '2018-06-22 15:49:34'),
(70, 2, 'Fees Discount', 'fees_discount', 1, 1, 1, 1, '2018-06-22 15:50:10'),
(71, 2, 'Fees Discount Assign', 'fees_discount_assign', 1, 0, 0, 0, '2018-06-22 15:50:17'),
(72, 2, 'Fees Statement', 'fees_statement', 1, 0, 0, 0, '2018-06-22 15:48:56'),
(73, 2, 'Search Fees Payment', 'search_fees_payment', 1, 0, 0, 0, '2018-06-22 15:50:27'),
(74, 2, 'Search Due Fees', 'search_due_fees', 1, 0, 0, 0, '2018-06-22 15:50:35'),
(75, 2, 'Balance Fees Report', 'balance_fees_report', 1, 0, 0, 0, '2018-06-22 15:48:50'),
(76, 6, 'Exam Schedule', 'exam_schedule', 1, 1, 1, 0, '2018-06-22 15:55:40'),
(77, 7, 'Assign Class Teacher', 'assign_class_teacher', 1, 1, 1, 1, '2018-06-22 16:00:52'),
(78, 17, 'Admission Enquiry', 'admission_enquiry', 1, 1, 1, 1, '2018-06-22 16:21:24'),
(79, 17, 'Follow Up Admission Enquiry', 'follow_up_admission_enquiry', 1, 1, 0, 1, '2018-06-22 16:21:39'),
(80, 17, 'Visitor Book', 'visitor_book', 1, 1, 1, 1, '2018-06-22 16:18:58'),
(81, 17, 'Phone Call Log', 'phone_call_log', 1, 1, 1, 1, '2018-06-22 16:20:57'),
(82, 17, 'Postal Dispatch', 'postal_dispatch', 1, 1, 1, 1, '2018-06-22 16:20:21'),
(83, 17, 'Postal Receive', 'postal_receive', 1, 1, 1, 1, '2018-06-22 16:20:04'),
(84, 17, 'Complain', 'complaint', 1, 1, 1, 1, '2018-07-03 14:10:55'),
(85, 17, 'Setup Font Office', 'setup_font_office', 1, 1, 1, 1, '2018-06-22 16:19:24'),
(86, 18, 'Staff', 'staff', 1, 1, 1, 1, '2018-06-22 16:23:31'),
(87, 18, 'Disable Staff', 'disable_staff', 1, 0, 0, 0, '2018-06-22 16:23:12'),
(88, 18, 'Staff Attendance', 'staff_attendance', 1, 1, 1, 0, '2018-06-22 16:23:10'),
(89, 18, 'Staff Attendance Report', 'staff_attendance_report', 1, 0, 0, 0, '2018-06-22 16:22:54'),
(90, 18, 'Staff Payroll', 'staff_payroll', 1, 1, 0, 1, '2018-06-22 16:22:51'),
(91, 18, 'Payroll Report', 'payroll_report', 1, 0, 0, 0, '2018-06-22 16:22:34'),
(93, 19, 'Homework', 'homework', 1, 1, 1, 1, '2018-06-22 16:23:50'),
(94, 19, 'Homework Evaluation', 'homework_evaluation', 1, 1, 0, 0, '2018-06-27 08:37:21'),
(95, 19, 'Homework Report', 'homework_report', 1, 0, 0, 0, '2018-06-22 16:23:54'),
(96, 20, 'Student Certificate', 'student_certificate', 1, 1, 1, 1, '2018-07-06 16:11:07'),
(97, 20, 'Generate Certificate', 'generate_certificate', 1, 0, 0, 0, '2018-07-06 16:07:16'),
(98, 20, 'Student ID Card', 'student_id_card', 1, 1, 1, 1, '2018-07-06 16:11:28'),
(99, 20, 'Generate ID Card', 'generate_id_card', 1, 0, 0, 0, '2018-07-06 16:11:49'),
(102, 21, 'Calendar To Do List', 'calendar_to_do_list', 1, 1, 1, 1, '2018-06-22 16:24:41'),
(104, 10, 'Item Category', 'item_category', 1, 1, 1, 1, '2018-06-22 16:04:33'),
(105, 1, 'Student Parent Login Details', 'student_parent_login_details', 1, 0, 0, 0, '2018-06-22 15:48:01'),
(106, 22, 'Quick Session Change', 'quick_session_change', 1, 0, 0, 0, '2018-06-22 16:24:45'),
(107, 1, 'Disable Student', 'disable_student', 1, 0, 0, 0, '2018-06-25 11:51:34'),
(108, 18, ' Approve Leave Request', 'approve_leave_request', 1, 1, 1, 1, '2018-07-02 15:47:41'),
(109, 18, 'Apply Leave', 'apply_leave', 1, 1, 1, 1, '2018-06-26 09:23:32'),
(110, 18, 'Leave Types ', 'leave_types', 1, 1, 1, 1, '2018-07-02 15:47:56'),
(111, 18, 'Department', 'department', 1, 1, 1, 1, '2018-06-26 09:27:07'),
(112, 18, 'Designation', 'designation', 1, 1, 1, 1, '2018-06-26 09:27:07'),
(113, 22, 'Fees Collection And Expense Monthly Chart', 'fees_collection_and_expense_monthly_chart', 1, 0, 0, 0, '2018-07-03 12:38:15'),
(114, 22, 'Fees Collection And Expense Yearly Chart', 'fees_collection_and_expense_yearly_chart', 1, 0, 0, 0, '2018-07-03 12:38:15'),
(115, 22, 'Monthly Fees Collection Widget', 'Monthly fees_collection_widget', 1, 0, 0, 0, '2018-07-03 12:43:35'),
(116, 22, 'Monthly Expense Widget', 'monthly_expense_widget', 1, 0, 0, 0, '2018-07-03 12:43:35'),
(117, 22, 'Student Count Widget', 'student_count_widget', 1, 0, 0, 0, '2018-07-03 12:43:35'),
(118, 22, 'Staff Role Count Widget', 'staff_role_count_widget', 1, 0, 0, 0, '2018-07-03 12:43:35'),
(119, 1, 'Guardian Report', 'guardian_report', 1, 0, 0, 0, '2018-07-03 14:12:29'),
(120, 1, 'Student History', 'student_history', 1, 0, 0, 0, '2018-07-03 14:12:29'),
(121, 1, 'Student Login Credential', 'student_login_credential', 1, 0, 0, 0, '2018-07-03 14:12:29'),
(122, 5, 'Attendance By Date', 'attendance_by_date', 1, 0, 0, 0, '2018-07-03 14:12:29'),
(123, 9, 'Add Student', 'add_student', 1, 0, 0, 0, '2018-07-03 14:12:29'),
(124, 11, 'Student Transport Report', 'student_transport_report', 1, 0, 0, 0, '2018-07-03 14:12:29'),
(125, 12, 'Student Hostel Report', 'student_hostel_report', 1, 0, 0, 0, '2018-07-03 14:12:29'),
(126, 15, 'User Status', 'user_status', 1, 0, 0, 0, '2018-07-03 14:12:29'),
(127, 18, 'Can See Other Users Profile', 'can_see_other_users_profile', 1, 0, 0, 0, '2018-07-03 14:12:29'),
(128, 1, 'Student Timeline', 'student_timeline', 0, 1, 0, 1, '2018-07-05 13:38:52'),
(129, 18, 'Staff Timeline', 'staff_timeline', 0, 1, 0, 1, '2018-07-05 13:38:52'),
(130, 15, 'Backup', 'backup', 1, 1, 0, 1, '2018-07-09 09:47:17'),
(131, 15, 'Restore', 'restore', 1, 0, 0, 0, '2018-07-09 09:47:17');

-- --------------------------------------------------------

--
-- Structure de la table `permission_group`
--

DROP TABLE IF EXISTS `permission_group`;
CREATE TABLE IF NOT EXISTS `permission_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) NOT NULL,
  `is_active` int(11) DEFAULT '0',
  `system` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `permission_group`
--

INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES
(1, 'Student Information', 'student_information', 1, 1, '2018-06-27 09:09:31'),
(2, 'Fees Collection', 'fees_collection', 1, 0, '2018-07-11 08:19:10'),
(3, 'Income', 'income', 1, 0, '2018-06-27 06:19:05'),
(4, 'Expense', 'expense', 1, 0, '2018-07-04 07:07:33'),
(5, 'Student Attendance', 'student_attendance', 1, 0, '2018-07-02 13:18:08'),
(6, 'Examination', 'examination', 1, 0, '2018-07-11 08:19:08'),
(7, 'Academics', 'academics', 1, 1, '2018-07-02 12:55:43'),
(8, 'Download Center', 'download_center', 1, 0, '2018-07-02 13:19:29'),
(9, 'Library', 'library', 1, 0, '2018-06-28 16:43:14'),
(10, 'Inventory', 'inventory', 1, 0, '2018-06-27 06:18:58'),
(11, 'Transport', 'transport', 1, 0, '2018-06-27 13:21:26'),
(12, 'Hostel', 'hostel', 1, 0, '2018-07-02 13:19:32'),
(13, 'Communicate', 'communicate', 1, 0, '2018-07-02 13:20:00'),
(14, 'Reports', 'reports', 1, 1, '2018-06-27 09:10:22'),
(15, 'System Settings', 'system_settings', 1, 1, '2018-06-27 09:10:28'),
(16, 'Front CMS', 'front_cms', 1, 0, '2018-07-10 10:46:54'),
(17, 'Front Office', 'front_office', 1, 0, '2018-06-27 09:15:30'),
(18, 'Human Resource', 'human_resource', 1, 1, '2018-06-27 09:11:02'),
(19, 'Homework', 'homework', 1, 0, '2018-06-27 06:19:38'),
(20, 'Certificate', 'certificate', 1, 0, '2018-06-27 13:21:29'),
(21, 'Calendar To Do List', 'calendar_to_do_list', 1, 0, '2018-06-27 09:12:25'),
(22, 'Dashboard and Widgets', 'dashboard_and_widgets', 1, 1, '2018-06-27 09:11:17');

-- --------------------------------------------------------

--
-- Structure de la table `read_notification`
--

DROP TABLE IF EXISTS `read_notification`;
CREATE TABLE IF NOT EXISTS `read_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `notification_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `read_notification`
--

INSERT INTO `read_notification` (`id`, `student_id`, `parent_id`, `staff_id`, `notification_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 4, 3, 'no', '2020-08-19 23:28:31', '0000-00-00 00:00:00'),
(2, NULL, NULL, 4, 2, 'no', '2020-08-19 23:28:31', '0000-00-00 00:00:00'),
(3, NULL, NULL, 1, 1, 'no', '2020-08-19 23:28:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `reference`
--

DROP TABLE IF EXISTS `reference`;
CREATE TABLE IF NOT EXISTS `reference` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(150) DEFAULT NULL,
  `is_active` int(11) DEFAULT '0',
  `is_system` int(1) NOT NULL DEFAULT '0',
  `is_superadmin` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `is_active`, `is_system`, `is_superadmin`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, 0, 1, 0, '2018-06-30 15:39:11', '0000-00-00 00:00:00'),
(2, 'Teacher', NULL, 0, 1, 0, '2018-06-30 15:39:14', '0000-00-00 00:00:00'),
(3, 'Accountant', NULL, 0, 1, 0, '2018-06-30 15:39:17', '0000-00-00 00:00:00'),
(4, 'Librarian', NULL, 0, 1, 0, '2018-06-30 15:39:21', '0000-00-00 00:00:00'),
(6, 'Receptionist', NULL, 0, 1, 0, '2018-07-02 05:39:03', '0000-00-00 00:00:00'),
(7, 'Super Admin', NULL, 0, 1, 1, '2018-07-11 14:11:29', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `roles_permissions`
--

DROP TABLE IF EXISTS `roles_permissions`;
CREATE TABLE IF NOT EXISTS `roles_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `perm_cat_id` int(11) DEFAULT NULL,
  `can_view` int(11) DEFAULT NULL,
  `can_add` int(11) DEFAULT NULL,
  `can_edit` int(11) DEFAULT NULL,
  `can_delete` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=656 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `roles_permissions`
--

INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES
(3, 1, 3, 1, 1, 1, 1, '2018-07-06 15:12:08'),
(4, 1, 4, 1, 1, 1, 1, '2018-07-06 15:13:01'),
(6, 1, 5, 1, 1, 0, 1, '2018-07-02 16:49:46'),
(8, 1, 7, 1, 1, 1, 1, '2018-07-06 15:13:29'),
(9, 1, 8, 1, 1, 1, 1, '2018-07-06 15:13:53'),
(10, 1, 17, 1, 1, 1, 1, '2018-07-06 15:18:56'),
(13, 1, 69, 1, 1, 1, 1, '2018-07-06 15:14:15'),
(14, 1, 70, 1, 1, 1, 1, '2018-07-06 15:14:39'),
(23, 1, 12, 1, 1, 1, 1, '2018-07-06 15:15:38'),
(24, 1, 13, 1, 1, 1, 1, '2018-07-06 15:18:28'),
(26, 1, 15, 1, 1, 1, 0, '2018-07-02 16:54:21'),
(28, 1, 19, 1, 1, 1, 0, '2018-07-02 17:01:10'),
(29, 1, 20, 1, 1, 1, 1, '2018-07-06 15:19:50'),
(30, 1, 76, 1, 1, 1, 0, '2018-07-02 17:01:10'),
(31, 1, 21, 1, 1, 1, 0, '2018-07-02 17:01:38'),
(32, 1, 22, 1, 1, 1, 1, '2018-07-02 17:02:05'),
(33, 1, 23, 1, 1, 1, 1, '2018-07-06 15:20:17'),
(34, 1, 24, 1, 1, 1, 1, '2018-07-06 15:20:39'),
(35, 1, 25, 1, 1, 1, 1, '2018-07-06 15:22:35'),
(37, 1, 77, 1, 1, 1, 1, '2018-07-06 15:19:50'),
(43, 1, 32, 1, 1, 1, 1, '2018-07-06 15:52:05'),
(44, 1, 33, 1, 1, 1, 1, '2018-07-06 15:52:29'),
(45, 1, 34, 1, 1, 1, 1, '2018-07-06 15:53:59'),
(46, 1, 35, 1, 1, 1, 1, '2018-07-06 15:54:34'),
(47, 1, 104, 1, 1, 1, 1, '2018-07-06 15:53:08'),
(48, 1, 37, 1, 1, 1, 1, '2018-07-06 15:55:30'),
(49, 1, 38, 1, 1, 1, 1, '2018-07-09 10:45:27'),
(53, 1, 43, 1, 1, 1, 1, '2018-07-10 15:00:31'),
(58, 1, 52, 1, 1, 0, 1, '2018-07-09 08:49:43'),
(83, 1, 88, 1, 1, 1, 0, '2018-07-03 17:34:20'),
(87, 1, 92, 1, 1, 1, 1, '2018-06-26 09:03:43'),
(88, 1, 93, 1, 1, 1, 1, '2018-07-09 06:54:20'),
(120, 1, 39, 1, 1, 1, 1, '2018-07-06 15:56:28'),
(141, 1, 111, 1, 1, 1, 1, '2018-07-06 15:26:28'),
(142, 1, 112, 1, 1, 1, 1, '2018-07-06 15:26:28'),
(145, 1, 94, 1, 1, 0, 0, '2018-07-09 06:50:40'),
(147, 2, 43, 1, 1, 1, 1, '2018-06-30 13:16:24'),
(148, 2, 44, 1, 0, 0, 0, '2018-06-27 16:47:09'),
(149, 2, 46, 1, 0, 0, 0, '2018-06-28 05:56:41'),
(156, 1, 9, 1, 1, 1, 1, '2018-07-06 15:14:53'),
(157, 1, 10, 1, 1, 1, 1, '2018-07-06 15:15:12'),
(169, 1, 27, 1, 1, 0, 1, '2018-07-02 17:06:58'),
(190, 1, 105, 1, 0, 0, 0, '2018-07-02 16:43:25'),
(193, 1, 6, 1, 0, 0, 0, '2018-07-02 16:49:46'),
(194, 1, 68, 1, 0, 0, 0, '2018-07-02 16:49:46'),
(196, 1, 72, 1, 0, 0, 0, '2018-07-02 16:49:46'),
(197, 1, 73, 1, 0, 0, 0, '2018-07-02 16:49:46'),
(198, 1, 74, 1, 0, 0, 0, '2018-07-02 16:49:46'),
(199, 1, 75, 1, 0, 0, 0, '2018-07-02 16:49:46'),
(201, 1, 14, 1, 0, 0, 0, '2018-07-02 16:52:03'),
(203, 1, 16, 1, 0, 0, 0, '2018-07-02 16:54:21'),
(204, 1, 26, 1, 0, 0, 0, '2018-07-02 17:02:05'),
(206, 1, 29, 1, 0, 0, 0, '2018-07-02 17:13:54'),
(207, 1, 30, 1, 0, 0, 0, '2018-07-02 17:13:54'),
(208, 1, 31, 1, 0, 0, 0, '2018-07-02 17:15:36'),
(215, 1, 50, 1, 0, 0, 0, '2018-07-02 17:34:53'),
(216, 1, 51, 1, 0, 0, 0, '2018-07-02 17:34:53'),
(222, 1, 1, 1, 1, 1, 1, '2018-07-10 15:00:31'),
(227, 1, 91, 1, 0, 0, 0, '2018-07-03 07:19:27'),
(229, 1, 89, 1, 0, 0, 0, '2018-07-03 07:30:53'),
(230, 10, 53, 0, 1, 0, 0, '2018-07-03 09:22:55'),
(231, 10, 54, 0, 0, 1, 0, '2018-07-03 09:22:55'),
(232, 10, 55, 1, 1, 1, 1, '2018-07-03 09:28:42'),
(233, 10, 56, 0, 0, 1, 0, '2018-07-03 09:22:55'),
(235, 10, 58, 0, 0, 1, 0, '2018-07-03 09:22:55'),
(236, 10, 59, 0, 0, 1, 0, '2018-07-03 09:22:55'),
(239, 10, 1, 1, 1, 1, 1, '2018-07-03 09:46:43'),
(241, 10, 3, 1, 0, 0, 0, '2018-07-03 09:53:56'),
(242, 10, 2, 1, 0, 0, 0, '2018-07-03 09:54:39'),
(243, 10, 4, 1, 0, 1, 1, '2018-07-03 10:01:24'),
(245, 10, 107, 1, 0, 0, 0, '2018-07-03 10:06:41'),
(246, 10, 5, 1, 1, 0, 1, '2018-07-03 10:08:18'),
(247, 10, 7, 1, 1, 1, 1, '2018-07-03 10:12:07'),
(248, 10, 68, 1, 0, 0, 0, '2018-07-03 10:12:53'),
(249, 10, 69, 1, 1, 1, 1, '2018-07-03 10:19:46'),
(250, 10, 70, 1, 0, 0, 1, '2018-07-03 10:22:40'),
(251, 10, 72, 1, 0, 0, 0, '2018-07-03 10:26:46'),
(252, 10, 73, 1, 0, 0, 0, '2018-07-03 10:26:46'),
(253, 10, 74, 1, 0, 0, 0, '2018-07-03 10:28:34'),
(254, 10, 75, 1, 0, 0, 0, '2018-07-03 10:28:34'),
(255, 10, 9, 1, 1, 1, 1, '2018-07-03 10:32:22'),
(256, 10, 10, 1, 1, 1, 1, '2018-07-03 10:33:09'),
(257, 10, 11, 1, 0, 0, 0, '2018-07-03 10:33:09'),
(258, 10, 12, 1, 1, 1, 1, '2018-07-03 10:38:40'),
(259, 10, 13, 1, 1, 1, 1, '2018-07-03 10:38:40'),
(260, 10, 14, 1, 0, 0, 0, '2018-07-03 10:38:53'),
(261, 10, 15, 1, 1, 1, 0, '2018-07-03 10:41:28'),
(262, 10, 16, 1, 0, 0, 0, '2018-07-03 10:42:12'),
(263, 10, 17, 1, 1, 1, 1, '2018-07-03 10:44:30'),
(264, 10, 19, 1, 1, 1, 0, '2018-07-03 10:45:45'),
(265, 10, 20, 1, 1, 1, 1, '2018-07-03 10:48:51'),
(266, 10, 76, 1, 0, 0, 0, '2018-07-03 10:51:21'),
(267, 10, 21, 1, 1, 1, 0, '2018-07-03 10:52:45'),
(268, 10, 22, 1, 1, 1, 1, '2018-07-03 10:55:00'),
(269, 10, 23, 1, 1, 1, 1, '2018-07-03 10:57:16'),
(270, 10, 24, 1, 1, 1, 1, '2018-07-03 10:57:49'),
(271, 10, 25, 1, 1, 1, 1, '2018-07-03 10:57:49'),
(272, 10, 26, 1, 0, 0, 0, '2018-07-03 10:58:25'),
(273, 10, 77, 1, 1, 1, 1, '2018-07-03 10:59:57'),
(274, 10, 27, 1, 1, 0, 1, '2018-07-03 11:00:36'),
(275, 10, 28, 1, 1, 1, 1, '2018-07-03 11:03:09'),
(276, 10, 29, 1, 0, 0, 0, '2018-07-03 11:04:03'),
(277, 10, 30, 1, 0, 0, 0, '2018-07-03 11:04:03'),
(278, 10, 31, 1, 0, 0, 0, '2018-07-03 11:04:03'),
(279, 10, 32, 1, 1, 1, 1, '2018-07-03 11:05:42'),
(280, 10, 33, 1, 1, 1, 1, '2018-07-03 11:06:32'),
(281, 10, 34, 1, 1, 1, 1, '2018-07-03 11:08:03'),
(282, 10, 35, 1, 1, 1, 1, '2018-07-03 11:08:41'),
(283, 10, 104, 1, 1, 1, 1, '2018-07-03 11:10:43'),
(284, 10, 37, 1, 1, 1, 1, '2018-07-03 11:12:42'),
(285, 10, 38, 1, 1, 1, 1, '2018-07-03 11:13:56'),
(286, 10, 39, 1, 1, 1, 1, '2018-07-03 11:15:39'),
(287, 10, 40, 1, 1, 1, 1, '2018-07-03 11:17:22'),
(288, 10, 41, 1, 1, 1, 1, '2018-07-03 11:18:54'),
(289, 10, 42, 1, 1, 1, 1, '2018-07-03 11:19:31'),
(290, 10, 43, 1, 1, 1, 1, '2018-07-03 11:21:15'),
(291, 10, 44, 1, 0, 0, 0, '2018-07-03 11:22:06'),
(292, 10, 46, 1, 0, 0, 0, '2018-07-03 11:22:06'),
(293, 10, 50, 1, 0, 0, 0, '2018-07-03 11:22:59'),
(294, 10, 51, 1, 0, 0, 0, '2018-07-03 11:22:59'),
(295, 10, 60, 0, 0, 1, 0, '2018-07-03 11:25:05'),
(296, 10, 61, 1, 1, 1, 1, '2018-07-03 11:26:52'),
(297, 10, 62, 1, 1, 1, 1, '2018-07-03 11:28:53'),
(298, 10, 63, 1, 1, 0, 0, '2018-07-03 11:29:37'),
(299, 10, 64, 1, 1, 1, 1, '2018-07-03 11:30:27'),
(300, 10, 65, 1, 1, 1, 1, '2018-07-03 11:32:51'),
(301, 10, 66, 1, 1, 1, 1, '2018-07-03 11:32:51'),
(302, 10, 67, 1, 0, 0, 0, '2018-07-03 11:32:51'),
(303, 10, 78, 1, 1, 1, 1, '2018-07-04 09:40:04'),
(310, 1, 119, 1, 0, 0, 0, '2018-07-03 15:45:00'),
(311, 1, 120, 1, 0, 0, 0, '2018-07-03 15:45:00'),
(312, 1, 107, 1, 0, 0, 0, '2018-07-03 15:45:12'),
(313, 1, 122, 1, 0, 0, 0, '2018-07-03 15:49:37'),
(315, 1, 123, 1, 0, 0, 0, '2018-07-03 15:57:03'),
(317, 1, 124, 1, 0, 0, 0, '2018-07-03 15:59:14'),
(320, 1, 47, 1, 0, 0, 0, '2018-07-03 16:31:12'),
(321, 1, 121, 1, 0, 0, 0, '2018-07-03 16:31:12'),
(369, 1, 102, 1, 1, 1, 1, '2018-07-11 17:31:47'),
(372, 10, 79, 1, 1, 0, 0, '2018-07-04 09:40:04'),
(373, 10, 80, 1, 1, 1, 1, '2018-07-04 09:53:09'),
(374, 10, 81, 1, 1, 1, 1, '2018-07-04 09:53:50'),
(375, 10, 82, 1, 1, 1, 1, '2018-07-04 09:56:54'),
(376, 10, 83, 1, 1, 1, 1, '2018-07-04 09:57:55'),
(377, 10, 84, 1, 1, 1, 1, '2018-07-04 10:00:26'),
(378, 10, 85, 1, 1, 1, 1, '2018-07-04 10:02:54'),
(379, 10, 86, 1, 1, 1, 1, '2018-07-04 10:16:18'),
(380, 10, 87, 1, 0, 0, 0, '2018-07-04 10:19:49'),
(381, 10, 88, 1, 1, 1, 0, '2018-07-04 10:21:20'),
(382, 10, 89, 1, 0, 0, 0, '2018-07-04 10:21:51'),
(383, 10, 90, 1, 1, 0, 1, '2018-07-04 10:25:01'),
(384, 10, 91, 1, 0, 0, 0, '2018-07-04 10:25:01'),
(385, 10, 108, 1, 1, 1, 1, '2018-07-04 10:27:46'),
(386, 10, 109, 1, 1, 1, 1, '2018-07-04 10:28:26'),
(387, 10, 110, 1, 1, 1, 1, '2018-07-04 10:32:43'),
(388, 10, 111, 1, 1, 1, 1, '2018-07-04 10:33:21'),
(389, 10, 112, 1, 1, 1, 1, '2018-07-04 10:35:06'),
(390, 10, 127, 1, 0, 0, 0, '2018-07-04 10:35:06'),
(391, 10, 93, 1, 1, 1, 1, '2018-07-04 10:37:14'),
(392, 10, 94, 1, 1, 0, 0, '2018-07-04 10:38:02'),
(394, 10, 95, 1, 0, 0, 0, '2018-07-04 10:38:44'),
(395, 10, 102, 1, 1, 1, 1, '2018-07-04 10:41:02'),
(396, 10, 106, 1, 0, 0, 0, '2018-07-04 10:41:39'),
(397, 10, 113, 1, 0, 0, 0, '2018-07-04 10:42:37'),
(398, 10, 114, 1, 0, 0, 0, '2018-07-04 10:42:37'),
(399, 10, 115, 1, 0, 0, 0, '2018-07-04 10:48:45'),
(400, 10, 116, 1, 0, 0, 0, '2018-07-04 10:48:45'),
(401, 10, 117, 1, 0, 0, 0, '2018-07-04 10:49:43'),
(402, 10, 118, 1, 0, 0, 0, '2018-07-04 10:49:43'),
(411, 1, 2, 1, 0, 0, 0, '2018-07-04 13:46:10'),
(412, 1, 11, 1, 0, 0, 0, '2018-07-04 14:24:05'),
(416, 2, 3, 1, 0, 0, 0, '2020-08-17 17:38:16'),
(428, 2, 4, 1, 0, 0, 0, '2020-08-17 17:38:16'),
(432, 1, 128, 0, 1, 0, 1, '2018-07-05 13:39:50'),
(435, 1, 96, 1, 1, 1, 1, '2018-07-09 06:33:54'),
(437, 1, 98, 1, 1, 1, 1, '2018-07-09 06:44:17'),
(444, 1, 99, 1, 0, 0, 0, '2018-07-06 17:11:22'),
(445, 1, 48, 1, 0, 0, 0, '2018-07-06 17:19:35'),
(446, 1, 49, 1, 0, 0, 0, '2018-07-06 17:19:35'),
(448, 1, 71, 1, 0, 0, 0, '2018-07-08 09:17:06'),
(461, 1, 97, 1, 0, 0, 0, '2018-07-09 06:30:16'),
(462, 1, 95, 1, 0, 0, 0, '2018-07-09 06:48:41'),
(464, 1, 86, 1, 1, 1, 1, '2018-07-09 11:39:48'),
(466, 1, 129, 0, 1, 0, 1, '2018-07-09 07:09:30'),
(467, 1, 87, 1, 0, 0, 0, '2018-07-09 07:11:59'),
(468, 1, 90, 1, 1, 0, 1, '2018-07-09 07:22:50'),
(477, 2, 1, 1, 0, 0, 0, '2020-08-17 17:38:16'),
(478, 2, 2, 1, 0, 0, 0, '2018-07-10 12:17:12'),
(479, 2, 47, 1, 0, 0, 0, '2018-07-10 12:17:12'),
(483, 2, 120, 1, 0, 0, 0, '2018-07-10 12:17:12'),
(485, 2, 15, 1, 1, 0, 0, '2020-08-18 00:55:32'),
(486, 2, 16, 1, 0, 0, 0, '2018-07-10 12:17:12'),
(487, 2, 122, 1, 0, 0, 0, '2018-07-10 12:17:12'),
(492, 2, 21, 1, 0, 0, 0, '2018-07-12 05:50:27'),
(499, 2, 27, 1, 1, 0, 1, '2018-07-10 12:17:12'),
(502, 2, 93, 1, 1, 1, 1, '2018-07-10 12:17:12'),
(503, 2, 94, 1, 1, 0, 0, '2018-07-10 12:17:12'),
(504, 2, 95, 1, 0, 0, 0, '2018-07-10 12:17:12'),
(505, 3, 5, 1, 1, 0, 1, '2018-07-10 12:37:30'),
(506, 3, 6, 1, 0, 0, 0, '2018-07-10 12:37:30'),
(507, 3, 7, 1, 1, 1, 1, '2018-07-10 12:37:30'),
(508, 3, 8, 1, 1, 1, 1, '2018-07-10 12:37:30'),
(509, 3, 68, 1, 0, 0, 0, '2018-07-10 12:37:30'),
(510, 3, 69, 1, 1, 1, 1, '2018-07-10 12:37:30'),
(511, 3, 70, 1, 1, 1, 1, '2018-07-10 12:37:30'),
(512, 3, 71, 1, 0, 0, 0, '2018-07-10 12:37:30'),
(513, 3, 72, 1, 0, 0, 0, '2018-07-10 12:37:30'),
(514, 3, 73, 1, 0, 0, 0, '2018-07-10 12:37:30'),
(515, 3, 74, 1, 0, 0, 0, '2018-07-10 12:37:30'),
(517, 3, 75, 1, 0, 0, 0, '2018-07-10 12:40:38'),
(518, 3, 9, 1, 1, 1, 1, '2018-07-10 12:40:38'),
(519, 3, 10, 1, 1, 1, 1, '2018-07-10 12:40:38'),
(520, 3, 11, 1, 0, 0, 0, '2018-07-10 12:40:38'),
(521, 3, 12, 1, 1, 1, 1, '2018-07-10 12:47:00'),
(522, 3, 13, 1, 1, 1, 1, '2018-07-10 12:47:00'),
(523, 3, 14, 1, 0, 0, 0, '2018-07-10 12:47:00'),
(524, 3, 86, 1, 1, 1, 1, '2018-07-10 12:48:44'),
(525, 3, 87, 1, 0, 0, 0, '2018-07-10 12:48:44'),
(526, 3, 88, 1, 1, 1, 0, '2018-07-10 12:48:44'),
(527, 3, 89, 1, 0, 0, 0, '2018-07-10 12:48:44'),
(528, 3, 90, 1, 1, 0, 1, '2018-07-10 12:48:44'),
(529, 3, 91, 1, 0, 0, 0, '2018-07-10 12:48:44'),
(530, 3, 108, 1, 1, 1, 1, '2018-07-10 12:48:44'),
(531, 3, 109, 1, 1, 1, 1, '2018-07-10 12:48:44'),
(532, 3, 110, 1, 1, 1, 1, '2018-07-10 12:48:44'),
(533, 3, 111, 1, 1, 1, 1, '2018-07-10 12:48:44'),
(534, 3, 112, 1, 1, 1, 1, '2018-07-10 12:48:44'),
(535, 3, 127, 1, 0, 0, 0, '2018-07-10 12:48:44'),
(536, 3, 129, 0, 1, 0, 1, '2018-07-10 12:48:44'),
(537, 3, 43, 1, 1, 1, 1, '2018-07-10 12:49:49'),
(538, 3, 44, 1, 0, 0, 0, '2018-07-10 12:49:49'),
(539, 3, 46, 1, 0, 0, 0, '2018-07-10 12:49:49'),
(540, 3, 31, 1, 0, 0, 0, '2018-07-10 12:50:38'),
(541, 3, 32, 1, 1, 1, 1, '2018-07-10 12:50:38'),
(542, 3, 33, 1, 1, 1, 1, '2018-07-10 12:50:38'),
(543, 3, 34, 1, 1, 1, 1, '2018-07-10 12:50:38'),
(544, 3, 35, 1, 1, 1, 1, '2018-07-10 12:50:38'),
(545, 3, 104, 1, 1, 1, 1, '2018-07-10 12:50:38'),
(546, 3, 37, 1, 1, 1, 1, '2018-07-10 12:52:17'),
(547, 3, 38, 1, 1, 1, 1, '2018-07-10 12:52:17'),
(548, 3, 39, 1, 1, 1, 1, '2018-07-10 12:52:17'),
(549, 3, 124, 1, 0, 0, 0, '2018-07-10 12:52:17'),
(553, 6, 78, 1, 1, 1, 1, '2018-07-10 13:02:18'),
(554, 6, 79, 1, 1, 0, 1, '2018-07-10 13:02:18'),
(555, 6, 80, 1, 1, 1, 1, '2018-07-10 13:02:18'),
(556, 6, 81, 1, 1, 1, 1, '2018-07-10 13:02:18'),
(557, 6, 82, 1, 1, 1, 1, '2018-07-10 13:02:18'),
(558, 6, 83, 1, 1, 1, 1, '2018-07-10 13:02:18'),
(559, 6, 84, 1, 1, 1, 1, '2018-07-10 13:02:18'),
(560, 6, 85, 1, 1, 1, 1, '2018-07-10 13:02:18'),
(561, 6, 86, 1, 0, 0, 0, '2018-07-10 13:11:10'),
(574, 6, 43, 1, 1, 1, 1, '2018-07-10 13:05:33'),
(575, 6, 44, 1, 0, 0, 0, '2018-07-10 13:05:33'),
(576, 6, 46, 1, 0, 0, 0, '2018-07-10 13:05:33'),
(578, 6, 102, 1, 1, 1, 1, '2018-07-10 13:20:33'),
(579, 4, 28, 1, 1, 1, 1, '2018-07-10 13:23:54'),
(580, 4, 29, 1, 0, 0, 0, '2018-07-10 13:23:54'),
(581, 4, 30, 1, 0, 0, 0, '2018-07-10 13:23:54'),
(582, 4, 123, 1, 0, 0, 0, '2018-07-10 13:23:54'),
(583, 4, 86, 1, 0, 0, 0, '2018-07-10 13:24:13'),
(584, 4, 43, 1, 1, 1, 1, '2018-07-10 13:25:14'),
(585, 4, 44, 1, 0, 0, 0, '2018-07-10 13:25:14'),
(586, 4, 46, 1, 0, 0, 0, '2018-07-10 13:25:14'),
(588, 2, 102, 1, 1, 1, 1, '2018-07-12 05:47:45'),
(591, 3, 40, 1, 1, 1, 1, '2018-07-10 13:28:12'),
(592, 3, 41, 1, 1, 1, 1, '2018-07-10 13:28:12'),
(593, 3, 42, 1, 1, 1, 1, '2018-07-10 13:28:12'),
(594, 3, 125, 1, 0, 0, 0, '2018-07-10 13:28:12'),
(595, 3, 48, 1, 0, 0, 0, '2018-07-10 13:28:12'),
(596, 3, 49, 1, 0, 0, 0, '2018-07-10 13:28:12'),
(597, 3, 102, 1, 1, 1, 1, '2018-07-10 13:28:12'),
(598, 3, 106, 1, 0, 0, 0, '2018-07-10 13:28:12'),
(599, 3, 113, 1, 0, 0, 0, '2018-07-10 13:28:12'),
(600, 3, 114, 1, 0, 0, 0, '2018-07-10 13:28:12'),
(601, 3, 115, 1, 0, 0, 0, '2018-07-10 13:28:12'),
(602, 3, 116, 1, 0, 0, 0, '2018-07-10 13:28:12'),
(603, 3, 117, 1, 0, 0, 0, '2018-07-10 13:28:12'),
(604, 3, 118, 1, 0, 0, 0, '2018-07-10 13:28:12'),
(609, 6, 117, 1, 0, 0, 0, '2018-07-10 13:30:48'),
(611, 2, 86, 1, 0, 0, 0, '2018-07-10 13:38:49'),
(612, 1, 44, 1, 0, 0, 0, '2018-07-10 15:00:31'),
(613, 1, 46, 1, 0, 0, 0, '2018-07-10 15:00:31'),
(616, 1, 127, 1, 0, 0, 0, '2018-07-11 08:22:46'),
(618, 2, 19, 1, 1, 1, 0, '2018-07-11 12:25:14'),
(620, 2, 76, 0, 1, 1, 0, '2020-08-18 01:37:37'),
(623, 2, 128, 0, 1, 0, 1, '2018-07-11 12:26:27'),
(625, 1, 28, 1, 1, 1, 1, '2018-07-11 14:57:18'),
(626, 6, 1, 1, 0, 0, 0, '2018-07-12 05:53:47'),
(627, 6, 21, 1, 0, 0, 0, '2018-07-12 05:53:47'),
(628, 6, 22, 1, 0, 0, 0, '2018-07-12 05:53:47'),
(629, 6, 23, 1, 0, 0, 0, '2018-07-12 05:53:47'),
(630, 6, 24, 1, 0, 0, 0, '2018-07-12 05:53:47'),
(631, 6, 25, 1, 0, 0, 0, '2018-07-12 05:53:47'),
(632, 6, 77, 1, 0, 0, 0, '2018-07-12 05:53:47'),
(633, 6, 106, 1, 0, 0, 0, '2018-07-12 05:53:47'),
(634, 4, 102, 1, 1, 1, 1, '2018-07-12 05:54:23'),
(635, 4, 106, 1, 0, 0, 0, '2018-07-12 05:54:23'),
(636, 4, 117, 1, 0, 0, 0, '2018-07-12 05:54:23'),
(639, 2, 17, 1, 0, 0, 0, '2020-08-18 01:33:06'),
(641, 1, 53, 0, 1, 0, 0, '2020-08-19 22:51:08'),
(642, 1, 54, 1, 0, 1, 0, '2020-08-19 22:51:08'),
(643, 1, 55, 1, 1, 1, 1, '2020-08-19 22:51:08'),
(644, 1, 56, 1, 0, 1, 0, '2020-08-19 22:51:08'),
(645, 1, 57, 1, 0, 1, 0, '2020-08-19 22:51:08'),
(646, 1, 58, 1, 0, 1, 0, '2020-08-19 22:51:08'),
(647, 1, 60, 1, 0, 1, 0, '2020-08-19 22:51:08'),
(648, 1, 126, 1, 0, 0, 0, '2020-08-19 22:51:08'),
(649, 1, 130, 1, 1, 0, 0, '2020-08-19 22:51:08'),
(650, 1, 131, 1, 0, 0, 0, '2020-08-19 22:51:08'),
(655, 2, 22, 1, 0, 0, 0, '2020-08-19 23:23:00');

-- --------------------------------------------------------

--
-- Structure de la table `room_types`
--

DROP TABLE IF EXISTS `room_types`;
CREATE TABLE IF NOT EXISTS `room_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_type` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `school_houses`
--

DROP TABLE IF EXISTS `school_houses`;
CREATE TABLE IF NOT EXISTS `school_houses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_name` varchar(200) NOT NULL,
  `description` varchar(400) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `sch_settings`
--

DROP TABLE IF EXISTS `sch_settings`;
CREATE TABLE IF NOT EXISTS `sch_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` text,
  `lang_id` int(11) DEFAULT NULL,
  `dise_code` varchar(50) DEFAULT NULL,
  `date_format` varchar(50) NOT NULL,
  `currency` varchar(50) NOT NULL,
  `currency_symbol` varchar(50) NOT NULL,
  `is_rtl` varchar(10) DEFAULT 'disabled',
  `timezone` varchar(30) DEFAULT 'UTC',
  `session_id` int(11) DEFAULT NULL,
  `start_month` varchar(40) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `theme` varchar(200) NOT NULL DEFAULT 'default.jpg',
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cron_secret_key` varchar(100) NOT NULL,
  `fee_due_days` int(3) DEFAULT '0',
  `class_teacher` varchar(100) NOT NULL,
  KEY `lang_id` (`lang_id`),
  KEY `session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sch_settings`
--

INSERT INTO `sch_settings` (`id`, `name`, `email`, `phone`, `address`, `lang_id`, `dise_code`, `date_format`, `currency`, `currency_symbol`, `is_rtl`, `timezone`, `session_id`, `start_month`, `image`, `theme`, `is_active`, `created_at`, `updated_at`, `cron_secret_key`, `fee_due_days`, `class_teacher`) VALUES
(1, 'UCOTECH', 'UCOTECH@GMAIL.COM', '0300300300', 'ras', 81, '', 'm/d/Y', 'MAD', 'DH', 'disabled', 'UTC', 15, '4', '1.png', 'blue.jpg', 'no', '2020-08-19 22:52:50', '0000-00-00 00:00:00', '', 66, 'no');

-- --------------------------------------------------------

--
-- Structure de la table `sections`
--

DROP TABLE IF EXISTS `sections`;
CREATE TABLE IF NOT EXISTS `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section` varchar(60) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sections`
--

INSERT INTO `sections` (`id`, `section`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'CE1', 'no', '2020-08-17 19:00:51', '0000-00-00 00:00:00'),
(3, 'CE2', 'no', '2020-08-17 19:00:57', '0000-00-00 00:00:00'),
(4, 'CE3', 'no', '2020-08-17 19:01:03', '0000-00-00 00:00:00'),
(5, 'CE4', 'no', '2020-08-17 19:01:08', '0000-00-00 00:00:00'),
(6, 'CE5', 'no', '2020-08-17 19:01:14', '0000-00-00 00:00:00'),
(7, 'CE6', 'no', '2020-08-17 19:01:20', '0000-00-00 00:00:00'),
(8, 'PS', 'no', '2020-08-17 19:01:27', '0000-00-00 00:00:00'),
(9, 'MS', 'no', '2020-08-17 19:01:31', '0000-00-00 00:00:00'),
(10, 'GS', 'no', '2020-08-17 19:01:35', '0000-00-00 00:00:00'),
(11, 'TCT_01', 'no', '2020-08-17 19:08:38', '0000-00-00 00:00:00'),
(12, 'TCSC_01', 'no', '2020-08-17 19:08:30', '0000-00-00 00:00:00'),
(13, 'TCSC_02', 'no', '2020-08-17 19:08:49', '0000-00-00 00:00:00'),
(17, '1SVT_01', 'no', '2020-08-17 19:10:38', '0000-00-00 00:00:00'),
(18, '1PC_01', 'no', '2020-08-17 19:10:50', '0000-00-00 00:00:00'),
(19, '2SVT_01', 'no', '2020-08-17 19:11:09', '0000-00-00 00:00:00'),
(20, '2PC_01', 'no', '2020-08-17 19:11:28', '0000-00-00 00:00:00'),
(21, '1SVT_02', 'no', '2020-08-17 19:11:53', '0000-00-00 00:00:00'),
(22, '1SVT_03', 'no', '2020-08-17 19:12:32', '0000-00-00 00:00:00'),
(23, '1PC_02', 'no', '2020-08-17 19:12:47', '0000-00-00 00:00:00'),
(24, '1PC_03', 'no', '2020-08-17 19:12:54', '0000-00-00 00:00:00'),
(25, '2PC_02', 'no', '2020-08-17 19:13:11', '0000-00-00 00:00:00'),
(26, '2PC_03', 'no', '2020-08-17 19:13:15', '0000-00-00 00:00:00'),
(27, '2SVT_02', 'no', '2020-08-17 19:13:24', '0000-00-00 00:00:00'),
(28, '2SVT_03', 'no', '2020-08-17 19:13:28', '0000-00-00 00:00:00'),
(29, 'TCSC_03', 'no', '2020-08-17 19:14:23', '0000-00-00 00:00:00'),
(30, 'TCT_02', 'no', '2020-08-17 19:14:55', '0000-00-00 00:00:00'),
(31, 'TCSC_03', 'no', '2020-08-17 19:15:00', '0000-00-00 00:00:00'),
(32, '1SM_01', 'no', '2020-08-17 19:19:34', '0000-00-00 00:00:00'),
(33, '1SM_02', 'no', '2020-08-17 19:19:38', '0000-00-00 00:00:00'),
(34, '1SM_03', 'no', '2020-08-17 19:21:07', '0000-00-00 00:00:00'),
(35, '2SMA_01', 'no', '2020-08-17 19:20:08', '0000-00-00 00:00:00'),
(36, '2SMA_02', 'no', '2020-08-17 19:20:18', '0000-00-00 00:00:00'),
(37, '2SMB_01', 'no', '2020-08-17 19:20:29', '0000-00-00 00:00:00'),
(38, '1STE_01', 'no', '2020-08-17 19:22:10', '0000-00-00 00:00:00'),
(39, '2STE_02', 'no', '2020-08-17 19:22:19', '0000-00-00 00:00:00'),
(40, '2STE_01', 'no', '2020-08-17 19:22:28', '0000-00-00 00:00:00'),
(41, '1STE_02', 'no', '2020-08-17 19:22:37', '0000-00-00 00:00:00'),
(42, '1STM_01', 'no', '2020-08-17 19:22:47', '0000-00-00 00:00:00'),
(43, '2STM_01', 'no', '2020-08-17 19:22:54', '0000-00-00 00:00:00'),
(44, '1ECO_01', 'no', '2020-08-17 19:25:04', '0000-00-00 00:00:00'),
(45, '1ECO_02', 'no', '2020-08-17 19:25:10', '0000-00-00 00:00:00'),
(46, '1TGC_01', 'no', '2020-08-17 19:25:20', '0000-00-00 00:00:00'),
(47, '1TGC_02', 'no', '2020-08-17 19:25:30', '0000-00-00 00:00:00'),
(48, '2TGC_02', 'no', '2020-08-17 19:25:35', '0000-00-00 00:00:00'),
(51, '2TGC_01', 'no', '2020-08-17 19:27:18', '0000-00-00 00:00:00'),
(52, '2ECO_01', 'no', '2020-08-17 19:31:45', '0000-00-00 00:00:00'),
(53, '2ECO_02', 'no', '2020-08-17 19:31:53', '0000-00-00 00:00:00'),
(54, '1Secondaire_01', 'no', '2020-08-17 19:36:03', '0000-00-00 00:00:00'),
(55, '1Secondaire_02', 'no', '2020-08-17 19:35:54', '0000-00-00 00:00:00'),
(56, '1Secondaire_03', 'no', '2020-08-17 19:35:42', '0000-00-00 00:00:00'),
(57, '2Secondaire_02', 'no', '2020-08-17 19:35:17', '0000-00-00 00:00:00'),
(58, '2Secondaire_01', 'no', '2020-08-17 19:35:07', '0000-00-00 00:00:00'),
(59, '2Secondaire_03', 'no', '2020-08-17 19:36:25', '0000-00-00 00:00:00'),
(60, '3Secondaire_02', 'no', '2020-08-17 19:36:37', '0000-00-00 00:00:00'),
(61, '3Secondaire_01', 'no', '2020-08-17 19:36:45', '0000-00-00 00:00:00'),
(62, '3Secondaire_03', 'no', '2020-08-17 19:37:03', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `send_notification`
--

DROP TABLE IF EXISTS `send_notification`;
CREATE TABLE IF NOT EXISTS `send_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `date` date DEFAULT NULL,
  `message` text,
  `visible_student` varchar(10) NOT NULL DEFAULT 'no',
  `visible_staff` varchar(10) NOT NULL DEFAULT 'no',
  `visible_parent` varchar(10) NOT NULL DEFAULT 'no',
  `created_by` varchar(60) DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `send_notification`
--

INSERT INTO `send_notification` (`id`, `title`, `publish_date`, `date`, `message`, `visible_student`, `visible_staff`, `visible_parent`, `created_by`, `created_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'test', '2020-08-20', '2020-08-20', '<p>test</p>', 'No', 'Yes', 'No', 'admin', 4, 'no', '2020-08-19 23:25:01', '0000-00-00 00:00:00'),
(2, 'REUNION', '2020-08-20', '2020-08-19', '<p>test \r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest  \r\n\r\ntest \r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest\r\n\r\n\r\n\r\ntest \r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest\r\n\r\n\r\n\r\ntest \r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest\r\n\r\n\r\n\r\ntest \r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest\r\n\r\n</p>', 'No', 'Yes', 'No', 'admin', 1, 'no', '2020-08-19 23:26:09', '0000-00-00 00:00:00'),
(3, 'testo', '2020-08-20', '2020-08-20', '<p>\r\n\r\ntest \r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest\r\n\r\n\r\n\r\ntest \r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest\r\n\r\n\r\n\r\ntest \r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest \r\n\r\n\r\n\r\ntest\r\n\r\n<br></p>', 'No', 'Yes', 'No', 'admin', 1, 'no', '2020-08-19 23:27:45', '0000-00-00 00:00:00'),
(4, 'zczxczcxz', '2020-09-02', '2020-07-29', '<p>czxczxczxcz</p>', 'No', 'Yes', 'No', 'admin', 1, 'no', '2020-08-19 23:34:53', '0000-00-00 00:00:00'),
(5, 'bvnbvnbvnb', '2020-08-28', '2020-08-11', '<p> vbccbcbv</p>', 'No', 'Yes', 'No', 'admin', 4, 'no', '2020-08-19 23:37:10', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session` varchar(60) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES
(7, '2016-17', 'no', '2017-04-20 06:42:19', '0000-00-00 00:00:00'),
(11, '2017-18', 'no', '2017-04-20 06:41:37', '0000-00-00 00:00:00'),
(13, '2018-19', 'no', '2016-08-24 19:26:44', '0000-00-00 00:00:00'),
(14, '2019-20', 'no', '2016-08-24 19:26:55', '0000-00-00 00:00:00'),
(15, '2020-21', 'no', '2016-10-01 05:28:08', '0000-00-00 00:00:00'),
(16, '2021-22', 'no', '2016-10-01 05:28:20', '0000-00-00 00:00:00'),
(18, '2022-23', 'no', '2016-10-01 05:29:02', '0000-00-00 00:00:00'),
(19, '2023-24', 'no', '2016-10-01 05:29:10', '0000-00-00 00:00:00'),
(20, '2024-25', 'no', '2016-10-01 05:29:18', '0000-00-00 00:00:00'),
(21, '2025-26', 'no', '2016-10-01 05:30:10', '0000-00-00 00:00:00'),
(22, '2026-27', 'no', '2016-10-01 05:30:18', '0000-00-00 00:00:00'),
(23, '2027-28', 'no', '2016-10-01 05:30:24', '0000-00-00 00:00:00'),
(24, '2028-29', 'no', '2016-10-01 05:30:30', '0000-00-00 00:00:00'),
(25, '2029-30', 'no', '2016-10-01 05:30:37', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `sms_config`
--

DROP TABLE IF EXISTS `sms_config`;
CREATE TABLE IF NOT EXISTS `sms_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `api_id` varchar(100) NOT NULL,
  `authkey` varchar(100) NOT NULL,
  `senderid` varchar(100) NOT NULL,
  `contact` text,
  `username` varchar(150) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'disabled',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `source`
--

DROP TABLE IF EXISTS `source`;
CREATE TABLE IF NOT EXISTS `source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(200) NOT NULL,
  `department` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `qualification` varchar(200) NOT NULL,
  `work_exp` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `father_name` varchar(200) NOT NULL,
  `mother_name` varchar(200) NOT NULL,
  `contact_no` varchar(200) NOT NULL,
  `emergency_contact_no` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `marital_status` varchar(100) NOT NULL,
  `date_of_joining` date NOT NULL,
  `date_of_leaving` date NOT NULL,
  `local_address` varchar(300) NOT NULL,
  `permanent_address` varchar(200) NOT NULL,
  `note` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `password` varchar(250) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `account_title` varchar(200) NOT NULL,
  `bank_account_no` varchar(200) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `ifsc_code` varchar(200) NOT NULL,
  `bank_branch` varchar(100) NOT NULL,
  `payscale` varchar(200) NOT NULL,
  `basic_salary` varchar(200) NOT NULL,
  `epf_no` varchar(200) NOT NULL,
  `contract_type` varchar(100) NOT NULL,
  `shift` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `resume` varchar(200) NOT NULL,
  `joining_letter` varchar(200) NOT NULL,
  `resignation_letter` varchar(200) NOT NULL,
  `other_document_name` varchar(200) NOT NULL,
  `other_document_file` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `verification_code` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `staff`
--

INSERT INTO `staff` (`id`, `employee_id`, `department`, `designation`, `qualification`, `work_exp`, `name`, `surname`, `father_name`, `mother_name`, `contact_no`, `emergency_contact_no`, `email`, `dob`, `marital_status`, `date_of_joining`, `date_of_leaving`, `local_address`, `permanent_address`, `note`, `image`, `password`, `gender`, `account_title`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_branch`, `payscale`, `basic_salary`, `epf_no`, `contract_type`, `shift`, `location`, `facebook`, `twitter`, `linkedin`, `instagram`, `resume`, `joining_letter`, `resignation_letter`, `other_document_name`, `other_document_file`, `user_id`, `is_active`, `verification_code`) VALUES
(1, '', '', '', '', '', 'Super Admin', '', '', '', '', '', 'root@gmail.com', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '', '', '', '$2y$10$YJ0UI1nsnUO7T3ydgjuK/eU1IfAU8oLvjMe1KSTAaZAj3z4pMpOl6', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, ''),
(2, '1', 'select', 'select', '', '', 'admin', 'admin', '', '', '', '', 'admin@gmail.com', '2020-03-03', '', '1970-01-01', '0000-00-00', '', '', '', '', '$2y$10$YJ0UI1nsnUO7T3ydgjuK/eU1IfAU8oLvjMe1KSTAaZAj3z4pMpOl6', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, ''),
(3, '2', 'select', 'select', '', '', 'teacher', 'teacher', '', '', '', '', 'teacher@gmail.com', '2020-08-13', '', '1970-01-01', '0000-00-00', '', '', '', '', '$2y$10$YJ0UI1nsnUO7T3ydgjuK/eU1IfAU8oLvjMe1KSTAaZAj3z4pMpOl6', 'Female', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, ''),
(4, '70001', '1', '1', '', '', 'Prof_01', 'hassan', '', '', '0707000001', '', 'prof1@gmail.com', '2019-11-26', 'Married', '2020-04-06', '0000-00-00', '', '', '', '', '$2y$10$YJ0UI1nsnUO7T3ydgjuK/eU1IfAU8oLvjMe1KSTAaZAj3z4pMpOl6', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, ''),
(5, '70002', '2', '3', '', '', 'Prof_02', 'khadija', '', '', '0707000002', '', 'prof2@gmail.com', '2012-12-30', 'Single', '2018-01-01', '0000-00-00', '', '', '', '', '$2y$10$c0IEw.ouENj3nkIiotsRU.8O2XW0ZvI8ZdkY4gacTiUQZn9g2BfJa', 'Female', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, ''),
(6, '70003', '2', '3', '', '', 'Prof_03', 'omar', '', '', '0707000003', '', 'prof3@gmail.com', '2011-02-01', 'Not Specified', '1970-01-01', '0000-00-00', '', '', '', '', '$2y$10$1rHLWzQNH/UuRQIaDzCDfuykbXoi.7d1mou4nnFRb/RnlRkSightC', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, ''),
(7, '70004', '1', '1', '', '', 'Prof_04', 'lilia', '', '', '0707000004', '', 'prof4@gmail.com', '2009-08-07', 'Seperated', '1970-01-01', '0000-00-00', '', '', '', '', '$2y$10$aOzXo7r1huQ/muTS3OA6n.3F.zagqI4lgyq/HlMRCADEhDt.WIRcO', 'Female', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, ''),
(8, '70005', '3', '4', '', '', 'Prof_05', 'brahim', '', '', '0707000005', '', 'prof5@gmail.com', '2019-12-30', 'Married', '1970-01-01', '0000-00-00', '', '', '', '', '$2y$10$NFho.u/hW1xEMLOD.KYAu.Lc7scmxf8p1AMdza44rvJ/Q2TRbK0rW', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, ''),
(9, '70006', '2', '2', '', '', 'Prof_06', 'kamelia', '', '', '', '', 'prof6@gmail.com', '2020-07-27', 'Single', '1970-01-01', '0000-00-00', '', '', '', '', '$2y$10$YJ0UI1nsnUO7T3ydgjuK/eU1IfAU8oLvjMe1KSTAaZAj3z4pMpOl6', 'Female', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, ''),
(10, '70007', '3', '1', '', '', 'Prof_07', 'amine', '', '', '', '', 'prof7@gmail.com', '2020-05-04', 'Widowed', '1970-01-01', '0000-00-00', '', '', '', '', '$2y$10$YJ0UI1nsnUO7T3ydgjuK/eU1IfAU8oLvjMe1KSTAaZAj3z4pMpOl6', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '');

-- --------------------------------------------------------

--
-- Structure de la table `staff_attendance`
--

DROP TABLE IF EXISTS `staff_attendance`;
CREATE TABLE IF NOT EXISTS `staff_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `staff_id` int(11) NOT NULL,
  `staff_attendance_type_id` int(11) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `staff_attendance`
--

INSERT INTO `staff_attendance` (`id`, `date`, `staff_id`, `staff_attendance_type_id`, `remark`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '2020-08-19', 3, 1, '', 0, '0000-00-00 00:00:00', 0),
(2, '2020-08-19', 4, 1, '', 0, '0000-00-00 00:00:00', 0),
(3, '2020-08-19', 5, 1, '', 0, '0000-00-00 00:00:00', 0),
(4, '2020-08-19', 6, 1, '', 0, '0000-00-00 00:00:00', 0),
(5, '2020-08-19', 7, 1, '', 0, '0000-00-00 00:00:00', 0),
(6, '2020-08-19', 8, 1, '', 0, '0000-00-00 00:00:00', 0),
(7, '2020-08-19', 9, 1, '', 0, '0000-00-00 00:00:00', 0),
(8, '2020-08-19', 10, 1, '', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Structure de la table `staff_attendance_type`
--

DROP TABLE IF EXISTS `staff_attendance_type`;
CREATE TABLE IF NOT EXISTS `staff_attendance_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(200) NOT NULL,
  `key_value` varchar(200) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `staff_attendance_type`
--

INSERT INTO `staff_attendance_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Present', '<b class=\"text text-success\">P</b>', 'yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Late', '<b class=\"text text-warning\">L</b>', 'yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Absent', '<b class=\"text text-danger\">A</b>', 'yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Half Day', '<b class=\"text text-warning\">F</b>', 'yes', '2018-05-07 01:56:16', '0000-00-00 00:00:00'),
(5, 'Holiday', 'H', 'yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `staff_designation`
--

DROP TABLE IF EXISTS `staff_designation`;
CREATE TABLE IF NOT EXISTS `staff_designation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(200) NOT NULL,
  `is_active` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `staff_designation`
--

INSERT INTO `staff_designation` (`id`, `designation`, `is_active`) VALUES
(1, 'CDD', 'yes'),
(2, 'CDI', 'yes'),
(3, 'Externe', 'yes'),
(4, 'Stagaire', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `staff_leave_details`
--

DROP TABLE IF EXISTS `staff_leave_details`;
CREATE TABLE IF NOT EXISTS `staff_leave_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `alloted_leave` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `staff_leave_request`
--

DROP TABLE IF EXISTS `staff_leave_request`;
CREATE TABLE IF NOT EXISTS `staff_leave_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `leave_from` date NOT NULL,
  `leave_to` date NOT NULL,
  `leave_days` int(11) NOT NULL,
  `employee_remark` varchar(200) NOT NULL,
  `admin_remark` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `applied_by` varchar(200) NOT NULL,
  `document_file` varchar(200) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `staff_leave_request`
--

INSERT INTO `staff_leave_request` (`id`, `staff_id`, `leave_type_id`, `leave_from`, `leave_to`, `leave_days`, `employee_remark`, `admin_remark`, `status`, `applied_by`, `document_file`, `date`) VALUES
(1, 4, 0, '2020-08-25', '2020-09-25', 32, '', '', 'pending', 'Super Admin', '', '2020-08-19'),
(2, 5, 0, '2020-08-19', '2020-08-19', 1, '', '', 'pending', 'Super Admin', '', '2020-08-19'),
(3, 1, 0, '2020-08-19', '2020-08-19', 1, 'ddd', '', 'pending', 'Super Admin', '', '2020-08-19'),
(4, 1, 0, '2020-08-19', '2020-08-19', 1, '', '', 'pending', 'Super Admin', '', '2020-08-19'),
(5, 1, 0, '2020-08-19', '2020-08-19', 1, '', '', 'pending', 'Super Admin', '', '2020-08-19'),
(6, 1, 0, '2020-08-21', '2020-08-31', 11, '', '', 'pending', 'Super Admin', '', '2020-08-19');

-- --------------------------------------------------------

--
-- Structure de la table `staff_payroll`
--

DROP TABLE IF EXISTS `staff_payroll`;
CREATE TABLE IF NOT EXISTS `staff_payroll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `basic_salary` int(11) NOT NULL,
  `pay_scale` varchar(200) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `staff_payslip`
--

DROP TABLE IF EXISTS `staff_payslip`;
CREATE TABLE IF NOT EXISTS `staff_payslip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `basic` int(11) NOT NULL,
  `total_allowance` int(11) NOT NULL,
  `total_deduction` int(11) NOT NULL,
  `leave_deduction` int(11) NOT NULL,
  `tax` varchar(200) NOT NULL,
  `net_salary` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `month` varchar(200) NOT NULL,
  `year` varchar(200) NOT NULL,
  `payment_mode` varchar(200) NOT NULL,
  `payment_date` date NOT NULL,
  `remark` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `staff_payslip`
--

INSERT INTO `staff_payslip` (`id`, `staff_id`, `basic`, `total_allowance`, `total_deduction`, `leave_deduction`, `tax`, `net_salary`, `status`, `month`, `year`, `payment_mode`, `payment_date`, `remark`) VALUES
(1, 4, 3500, 0, 0, 0, '0', 4000, 'generated', 'August', '2020', '', '2020-08-19', '');

-- --------------------------------------------------------

--
-- Structure de la table `staff_roles`
--

DROP TABLE IF EXISTS `staff_roles`;
CREATE TABLE IF NOT EXISTS `staff_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `staff_roles`
--

INSERT INTO `staff_roles` (`id`, `role_id`, `staff_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 7, 1, 0, '2020-08-17 14:17:42', '0000-00-00 00:00:00'),
(2, 1, 2, 0, '2020-08-17 17:15:21', '0000-00-00 00:00:00'),
(3, 2, 3, 0, '2020-08-17 17:34:16', '0000-00-00 00:00:00'),
(4, 2, 4, 0, '2020-08-18 00:00:48', '0000-00-00 00:00:00'),
(5, 2, 5, 0, '2020-08-18 00:02:17', '0000-00-00 00:00:00'),
(6, 2, 6, 0, '2020-08-18 00:06:38', '0000-00-00 00:00:00'),
(7, 2, 7, 0, '2020-08-18 00:08:12', '0000-00-00 00:00:00'),
(8, 2, 8, 0, '2020-08-18 00:09:35', '0000-00-00 00:00:00'),
(9, 2, 9, 0, '2020-08-18 00:10:23', '0000-00-00 00:00:00'),
(10, 2, 10, 0, '2020-08-18 17:08:01', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `staff_timeline`
--

DROP TABLE IF EXISTS `staff_timeline`;
CREATE TABLE IF NOT EXISTS `staff_timeline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `timeline_date` date NOT NULL,
  `description` varchar(300) NOT NULL,
  `document` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `admission_no` varchar(100) DEFAULT NULL,
  `roll_no` varchar(100) DEFAULT NULL,
  `admission_date` varchar(100) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `rte` varchar(20) NOT NULL DEFAULT 'No',
  `image` varchar(100) DEFAULT NULL,
  `mobileno` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `cast` varchar(50) NOT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `current_address` text,
  `permanent_address` text,
  `category_id` varchar(100) DEFAULT NULL,
  `route_id` int(11) NOT NULL,
  `school_house_id` int(11) NOT NULL,
  `blood_group` varchar(200) NOT NULL,
  `vehroute_id` int(11) NOT NULL,
  `hostel_room_id` int(11) NOT NULL,
  `adhar_no` varchar(100) DEFAULT NULL,
  `samagra_id` varchar(100) DEFAULT NULL,
  `bank_account_no` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `ifsc_code` varchar(100) DEFAULT NULL,
  `guardian_is` varchar(100) NOT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `father_phone` varchar(100) DEFAULT NULL,
  `father_occupation` varchar(100) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `mother_phone` varchar(100) DEFAULT NULL,
  `mother_occupation` varchar(100) DEFAULT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `guardian_relation` varchar(100) DEFAULT NULL,
  `guardian_phone` varchar(100) DEFAULT NULL,
  `guardian_occupation` varchar(150) NOT NULL,
  `guardian_address` text,
  `guardian_email` varchar(100) NOT NULL,
  `father_pic` varchar(200) NOT NULL,
  `mother_pic` varchar(200) NOT NULL,
  `guardian_pic` varchar(200) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `previous_school` text,
  `height` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `measurement_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `disable_at` date NOT NULL,
  `note` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `students`
--

INSERT INTO `students` (`id`, `parent_id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `route_id`, `school_house_id`, `blood_group`, `vehroute_id`, `hostel_room_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `father_pic`, `mother_pic`, `guardian_pic`, `is_active`, `previous_school`, `height`, `weight`, `measurement_date`, `created_at`, `updated_at`, `disable_at`, `note`) VALUES
(2, 26, '210001', '10001', '', 'etd1', 'ahmed', '', NULL, '606000001', 'etd1@gmail.com', NULL, NULL, NULL, '', '', '9/9/2000', NULL, 'adresse1', '', NULL, 0, 0, '', 0, 0, '', '', '', '', '', '', 'dad1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', '2020-08-19 11:35:47', '0000-00-00 00:00:00', '0000-00-00', ''),
(3, 28, '210002', '10002', '', 'etd2', 'ilhame', '', NULL, '606000002', 'etd2@gmail.com', NULL, NULL, NULL, '', '', '9/10/2000', NULL, 'adresse2', '', NULL, 0, 0, '', 0, 0, '', '', '', '', '', '', 'dad2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', '2020-08-19 11:36:07', '0000-00-00 00:00:00', '0000-00-00', ''),
(4, 30, '210003', '10003', '', 'etd3', 'khalid', '', NULL, '606000003', 'etd3@gmail.com', NULL, NULL, NULL, '', '', '9/11/2000', NULL, 'adresse3', '', NULL, 0, 0, '', 0, 0, '', '', '', '', '', '', 'dad3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', '2020-08-19 11:36:10', '0000-00-00 00:00:00', '0000-00-00', ''),
(5, 32, '210004', '10004', '', 'etd4', 'chaimae', '', NULL, '606000004', 'etd4@gmail.com', NULL, NULL, NULL, '', '', '9/12/2000', NULL, 'adresse4', '', NULL, 0, 0, '', 0, 0, '', '', '', '', '', '', 'dad4', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', '2020-08-19 11:36:14', '0000-00-00 00:00:00', '0000-00-00', ''),
(6, 34, '210005', '10005', '', 'etd5', 'hamza', '', NULL, '606000005', 'etd5@gmail.com', NULL, NULL, NULL, '', '', '9/13/2000', NULL, 'adresse5', '', NULL, 0, 0, '', 0, 0, '', '', '', '', '', '', 'dad5', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', '2020-08-19 11:36:19', '0000-00-00 00:00:00', '0000-00-00', ''),
(7, 36, '210006', '10006', '', 'etd6', 'khadija', '', NULL, '606000006', 'etd6@gmail.com', NULL, NULL, NULL, '', '', '9/14/2000', NULL, 'adresse6', '', NULL, 0, 0, '', 0, 0, '', '', '', '', '', '', 'dad6', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', '2020-08-19 11:44:13', '0000-00-00 00:00:00', '0000-00-00', ''),
(8, 38, '210007', '10007', '', 'etd7', 'islam', '', NULL, '606000007', 'etd7@gmail.com', NULL, NULL, NULL, '', '', '9/15/2000', NULL, 'adresse7', '', NULL, 0, 0, '', 0, 0, '', '', '', '', '', '', 'dad7', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', '2020-08-19 11:44:38', '0000-00-00 00:00:00', '0000-00-00', ''),
(9, 40, '210008', '10008', '', 'etd8', 'ayoub', '', NULL, '606000008', 'etd8@gmail.com', NULL, NULL, NULL, '', '', '9/16/2000', NULL, 'adresse8', '', NULL, 0, 0, '', 0, 0, '', '', '', '', '', '', 'dad8', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', '2020-08-19 11:44:44', '0000-00-00 00:00:00', '0000-00-00', ''),
(10, 42, '210009', '10009', '', 'etd9', 'meryem', '', NULL, '606000009', 'etd9@gmail.com', NULL, NULL, NULL, '', '', '9/17/2000', NULL, 'adresse9', '', NULL, 0, 0, '', 0, 0, '', '', '', '', '', '', 'dad9', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', '2020-08-19 11:44:49', '0000-00-00 00:00:00', '0000-00-00', ''),
(11, 44, '210010', '10010', '', 'etd10', 'karim', '', NULL, '606000010', 'etd10@gmail.com', NULL, NULL, NULL, '', '', '9/18/2000', NULL, 'adresse10', '', NULL, 0, 0, '', 0, 0, '', '', '', '', '', '', 'dad10', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', '2020-08-19 11:44:53', '0000-00-00 00:00:00', '0000-00-00', ''),
(12, 46, '700011', '3798217', '2020-08-19', 'ZNIBER', 'ILHAME', 'No', 'uploads/student_images/12.png', '+212 6 40 48 10 19', 'etd11@gmail.com', NULL, NULL, NULL, '', '', '2016-06-08', 'Female', 'adresse tuteur appart rue ville ', ' appart rue ville  adresse tuteur', '', 0, 0, 'AB+', 0, 0, '', '', '', '', '', 'father', 'ZNIBER', '0707000011', 'ras', 'MRINI', '0909000011', 'ras', 'ZNIBER', 'Father', '0707000011', 'ras', 'adresse tuteur appart rue ville ', 'dad11@gmail.com', 'uploads/student_images/12father.png', 'uploads/student_images/12mother.jfif', 'uploads/student_images/12guardian.png', 'yes', '', '1,23', '23,5', '2001-03-01', '2020-08-19 15:35:09', '0000-00-00 00:00:00', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Structure de la table `student_attendences`
--

DROP TABLE IF EXISTS `student_attendences`;
CREATE TABLE IF NOT EXISTS `student_attendences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `attendence_type_id` int(11) DEFAULT NULL,
  `remark` varchar(200) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `student_session_id` (`student_session_id`),
  KEY `attendence_type_id` (`attendence_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `student_attendences`
--

INSERT INTO `student_attendences` (`id`, `student_session_id`, `date`, `attendence_type_id`, `remark`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-08-17', 1, '', 'no', '2020-08-17 22:52:31', '0000-00-00 00:00:00'),
(2, 2, '2020-08-17', 1, '', 'no', '2020-08-17 22:52:31', '0000-00-00 00:00:00'),
(3, 3, '2020-08-17', 3, '', 'no', '2020-08-18 00:41:48', '0000-00-00 00:00:00'),
(4, 4, '2020-08-17', 6, '', 'no', '2020-08-18 00:41:48', '0000-00-00 00:00:00'),
(5, 5, '2020-08-17', 1, '', 'no', '2020-08-17 22:52:31', '0000-00-00 00:00:00'),
(6, 6, '2020-08-17', 1, '', 'no', '2020-08-17 22:52:31', '0000-00-00 00:00:00'),
(7, 7, '2020-08-17', 1, '', 'no', '2020-08-17 22:52:31', '0000-00-00 00:00:00'),
(8, 8, '2020-08-17', 1, '', 'no', '2020-08-17 22:52:31', '0000-00-00 00:00:00'),
(9, 9, '2020-08-17', 1, '', 'no', '2020-08-17 22:52:31', '0000-00-00 00:00:00'),
(10, 10, '2020-08-17', 1, '', 'no', '2020-08-17 22:52:31', '0000-00-00 00:00:00'),
(11, 11, '2020-08-17', 1, '', 'no', '2020-08-17 22:52:31', '0000-00-00 00:00:00'),
(12, 2, '2020-08-18', 1, '', 'no', '2020-08-18 00:52:07', '0000-00-00 00:00:00'),
(13, 3, '2020-08-18', 3, '', 'no', '2020-08-18 00:52:07', '0000-00-00 00:00:00'),
(14, 4, '2020-08-18', 4, '', 'no', '2020-08-18 00:52:07', '0000-00-00 00:00:00'),
(15, 5, '2020-08-18', 6, '', 'no', '2020-08-18 00:52:07', '0000-00-00 00:00:00'),
(16, 6, '2020-08-18', 1, '', 'no', '2020-08-18 00:52:07', '0000-00-00 00:00:00'),
(17, 7, '2020-08-18', 6, '', 'no', '2020-08-18 00:56:01', '0000-00-00 00:00:00'),
(18, 8, '2020-08-18', 6, '', 'no', '2020-08-18 00:56:01', '0000-00-00 00:00:00'),
(19, 9, '2020-08-18', 1, '', 'no', '2020-08-18 00:52:07', '0000-00-00 00:00:00'),
(20, 10, '2020-08-18', 1, '', 'no', '2020-08-18 00:52:07', '0000-00-00 00:00:00'),
(21, 11, '2020-08-18', 1, '', 'no', '2020-08-18 00:52:07', '0000-00-00 00:00:00'),
(22, 2, '2020-08-19', 1, '', 'no', '2020-08-18 00:55:45', '0000-00-00 00:00:00'),
(23, 3, '2020-08-19', 4, '', 'no', '2020-08-18 00:55:45', '0000-00-00 00:00:00'),
(24, 4, '2020-08-19', 4, '', 'no', '2020-08-18 00:55:45', '0000-00-00 00:00:00'),
(25, 5, '2020-08-19', 1, '', 'no', '2020-08-18 00:55:45', '0000-00-00 00:00:00'),
(26, 6, '2020-08-19', 6, '', 'no', '2020-08-18 00:55:45', '0000-00-00 00:00:00'),
(27, 7, '2020-08-19', 1, '', 'no', '2020-08-18 00:55:45', '0000-00-00 00:00:00'),
(28, 8, '2020-08-19', 6, '', 'no', '2020-08-18 00:55:45', '0000-00-00 00:00:00'),
(29, 9, '2020-08-19', 1, '', 'no', '2020-08-18 00:55:45', '0000-00-00 00:00:00'),
(30, 10, '2020-08-19', 1, '', 'no', '2020-08-18 00:55:45', '0000-00-00 00:00:00'),
(31, 11, '2020-08-19', 1, '', 'no', '2020-08-18 00:55:45', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `student_doc`
--

DROP TABLE IF EXISTS `student_doc`;
CREATE TABLE IF NOT EXISTS `student_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `doc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `student_doc`
--

INSERT INTO `student_doc` (`id`, `student_id`, `title`, `doc`) VALUES
(2, 12, '', 'téléchargement.png');

-- --------------------------------------------------------

--
-- Structure de la table `student_fees`
--

DROP TABLE IF EXISTS `student_fees`;
CREATE TABLE IF NOT EXISTS `student_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `feemaster_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `amount_discount` float(10,2) NOT NULL,
  `amount_fine` float(10,2) NOT NULL DEFAULT '0.00',
  `description` text,
  `date` date DEFAULT '0000-00-00',
  `payment_mode` varchar(50) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `student_fees_deposite`
--

DROP TABLE IF EXISTS `student_fees_deposite`;
CREATE TABLE IF NOT EXISTS `student_fees_deposite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_fees_master_id` int(11) DEFAULT NULL,
  `fee_groups_feetype_id` int(11) DEFAULT NULL,
  `amount_detail` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `student_fees_master_id` (`student_fees_master_id`),
  KEY `fee_groups_feetype_id` (`fee_groups_feetype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `student_fees_deposite`
--

INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES
(4, 2, 2, '{\"1\":{\"amount\":\"3500\",\"date\":\"2020-12-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\" Collected By: Super Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-12-01 17:01:46'),
(5, 2, 1, '{\"1\":{\"amount\":\"3000\",\"date\":\"2020-12-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\" Collected By: Super Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1}}', 'no', '2020-12-01 17:01:50'),
(6, 1, 3, '{\"1\":{\"amount\":\"500\",\"date\":\"2020-12-01\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\" Collected By: Super Admin\",\"payment_mode\":\"Cash\",\"inv_no\":1},\"2\":{\"amount\":\"500\",\"date\":\"2020-08-19\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\" Collected By: Super Admin\",\"payment_mode\":\"Cash\",\"inv_no\":2}}', 'no', '2020-08-19 17:02:41');

-- --------------------------------------------------------

--
-- Structure de la table `student_fees_discounts`
--

DROP TABLE IF EXISTS `student_fees_discounts`;
CREATE TABLE IF NOT EXISTS `student_fees_discounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `fees_discount_id` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'assigned',
  `payment_id` varchar(50) DEFAULT NULL,
  `description` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `student_session_id` (`student_session_id`),
  KEY `fees_discount_id` (`fees_discount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `student_fees_master`
--

DROP TABLE IF EXISTS `student_fees_master`;
CREATE TABLE IF NOT EXISTS `student_fees_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_system` int(1) NOT NULL DEFAULT '0',
  `student_session_id` int(11) DEFAULT NULL,
  `fee_session_group_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT '0.00',
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `student_session_id` (`student_session_id`),
  KEY `fee_session_group_id` (`fee_session_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `student_fees_master`
--

INSERT INTO `student_fees_master` (`id`, `is_system`, `student_session_id`, `fee_session_group_id`, `amount`, `is_active`, `created_at`) VALUES
(1, 1, 12, 2, 1000.00, 'no', '2020-08-19 17:02:21'),
(2, 0, 12, 1, 0.00, 'no', '2020-12-01 17:01:01'),
(3, 0, 2, 3, 0.00, 'no', '2020-08-19 17:05:46'),
(4, 0, 3, 3, 0.00, 'no', '2020-08-19 17:05:46'),
(5, 0, 4, 3, 0.00, 'no', '2020-08-19 17:05:46'),
(6, 0, 5, 3, 0.00, 'no', '2020-08-19 17:05:46'),
(7, 0, 6, 3, 0.00, 'no', '2020-08-19 17:05:46'),
(8, 0, 7, 3, 0.00, 'no', '2020-08-19 17:05:46'),
(9, 0, 8, 3, 0.00, 'no', '2020-08-19 17:05:46'),
(10, 0, 9, 3, 0.00, 'no', '2020-08-19 17:05:46'),
(11, 0, 10, 3, 0.00, 'no', '2020-08-19 17:05:46'),
(12, 0, 11, 3, 0.00, 'no', '2020-08-19 17:05:46');

-- --------------------------------------------------------

--
-- Structure de la table `student_session`
--

DROP TABLE IF EXISTS `student_session`;
CREATE TABLE IF NOT EXISTS `student_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `route_id` int(11) NOT NULL,
  `hostel_room_id` int(11) NOT NULL,
  `vehroute_id` int(10) DEFAULT NULL,
  `transport_fees` float(10,2) NOT NULL DEFAULT '0.00',
  `fees_discount` float(10,2) NOT NULL DEFAULT '0.00',
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `student_session`
--

INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `hostel_room_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 15, 2, 8, 3, 0, 0, NULL, 0.00, 0.00, 'no', '2020-08-19 23:40:58', '0000-00-00 00:00:00'),
(3, 15, 3, 8, 3, 0, 0, NULL, 0.00, 0.00, 'no', '2020-08-19 23:40:58', '0000-00-00 00:00:00'),
(4, 15, 4, 8, 3, 0, 0, NULL, 0.00, 0.00, 'no', '2020-08-19 23:40:58', '0000-00-00 00:00:00'),
(5, 15, 5, 8, 3, 0, 0, NULL, 0.00, 0.00, 'no', '2020-08-19 23:40:58', '0000-00-00 00:00:00'),
(6, 15, 6, 8, 3, 0, 0, NULL, 0.00, 0.00, 'no', '2020-08-19 23:40:58', '0000-00-00 00:00:00'),
(7, 15, 7, 8, 3, 0, 0, NULL, 0.00, 0.00, 'no', '2020-08-19 23:40:58', '0000-00-00 00:00:00'),
(8, 15, 8, 8, 3, 0, 0, NULL, 0.00, 0.00, 'no', '2020-08-19 23:40:58', '0000-00-00 00:00:00'),
(9, 15, 9, 8, 3, 0, 0, NULL, 0.00, 0.00, 'no', '2020-08-19 23:40:58', '0000-00-00 00:00:00'),
(10, 15, 10, 8, 3, 0, 0, NULL, 0.00, 0.00, 'no', '2020-08-19 23:40:58', '0000-00-00 00:00:00'),
(11, 15, 11, 8, 3, 0, 0, NULL, 0.00, 0.00, 'no', '2020-08-19 23:40:58', '0000-00-00 00:00:00'),
(12, 15, 12, 8, 3, 0, 0, NULL, 0.00, 0.00, 'no', '2020-08-19 11:57:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `student_sibling`
--

DROP TABLE IF EXISTS `student_sibling`;
CREATE TABLE IF NOT EXISTS `student_sibling` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `sibling_student_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `student_timeline`
--

DROP TABLE IF EXISTS `student_timeline`;
CREATE TABLE IF NOT EXISTS `student_timeline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `timeline_date` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `document` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `student_timeline`
--

INSERT INTO `student_timeline` (`id`, `student_id`, `title`, `timeline_date`, `description`, `document`, `status`, `date`) VALUES
(1, 12, 'rapport1', '2020-08-19', 'recherche sur le transport', '1.png', 'yes', '2020-08-19');

-- --------------------------------------------------------

--
-- Structure de la table `student_transport_fees`
--

DROP TABLE IF EXISTS `student_transport_fees`;
CREATE TABLE IF NOT EXISTS `student_transport_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `amount_discount` float(10,2) NOT NULL,
  `amount_fine` float(10,2) NOT NULL DEFAULT '0.00',
  `description` text,
  `date` date DEFAULT '0000-00-00',
  `is_active` varchar(255) DEFAULT 'no',
  `payment_mode` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE IF NOT EXISTS `subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Éducation Islamique', '1001', 'Theory', 'no', '2020-08-17 23:03:23', '0000-00-00 00:00:00'),
(2, 'Langue Arabe', '1002', 'Theory', 'no', '2020-08-17 23:03:34', '0000-00-00 00:00:00'),
(3, 'Langue Française', '1003', 'Theory', 'no', '2020-08-17 23:03:46', '0000-00-00 00:00:00'),
(4, 'Education Artistique et technique', '1004', 'Practical', 'no', '2020-08-17 23:13:48', '0000-00-00 00:00:00'),
(5, 'Hist-Géo. Education Civique', '1005', 'Theory', 'no', '2020-08-17 23:14:10', '0000-00-00 00:00:00'),
(6, 'Mathématiques', '1006', 'Theory', 'no', '2020-08-17 23:14:29', '0000-00-00 00:00:00'),
(7, 'Education Physique', '1007', 'Practical', 'no', '2020-08-17 23:14:40', '0000-00-00 00:00:00'),
(8, 'Activités Scientifiques', '1008', 'Practical', 'no', '2020-08-17 23:15:05', '0000-00-00 00:00:00'),
(9, 'Recréation', '1009', 'Theory', 'no', '2020-08-17 23:15:13', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `teacher_subjects`
--

DROP TABLE IF EXISTS `teacher_subjects`;
CREATE TABLE IF NOT EXISTS `teacher_subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `class_section_id` (`class_section_id`),
  KEY `session_id` (`session_id`),
  KEY `subject_id` (`subject_id`),
  KEY `teacher_id` (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `teacher_subjects`
--

INSERT INTO `teacher_subjects` (`id`, `session_id`, `class_section_id`, `subject_id`, `teacher_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 15, 39, 1, 4, NULL, 'no', '2020-08-18 00:12:38', '0000-00-00 00:00:00'),
(2, 15, 39, 2, 5, NULL, 'no', '2020-08-18 00:12:38', '0000-00-00 00:00:00'),
(3, 15, 39, 3, 6, NULL, 'no', '2020-08-18 00:12:38', '0000-00-00 00:00:00'),
(4, 15, 39, 4, 7, NULL, 'no', '2020-08-18 00:12:38', '0000-00-00 00:00:00'),
(5, 15, 39, 5, 8, NULL, 'no', '2020-08-18 00:12:38', '0000-00-00 00:00:00'),
(6, 15, 39, 6, 9, NULL, 'no', '2020-08-18 00:12:38', '0000-00-00 00:00:00'),
(7, 15, 39, 7, 4, NULL, 'no', '2020-08-18 00:12:38', '0000-00-00 00:00:00'),
(8, 15, 39, 8, 5, NULL, 'no', '2020-08-18 00:12:38', '0000-00-00 00:00:00'),
(9, 15, 39, 9, 6, NULL, 'no', '2020-08-18 00:12:38', '0000-00-00 00:00:00'),
(10, 15, 40, 3, 9, NULL, 'no', '2020-08-19 15:40:14', '0000-00-00 00:00:00'),
(11, 15, 40, 6, 10, NULL, 'no', '2020-08-19 15:40:14', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `timetables`
--

DROP TABLE IF EXISTS `timetables`;
CREATE TABLE IF NOT EXISTS `timetables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_subject_id` int(20) DEFAULT NULL,
  `day_name` varchar(50) DEFAULT NULL,
  `start_time` varchar(50) DEFAULT NULL,
  `end_time` varchar(50) DEFAULT NULL,
  `room_no` varchar(50) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `transport_route`
--

DROP TABLE IF EXISTS `transport_route`;
CREATE TABLE IF NOT EXISTS `transport_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route_title` varchar(100) DEFAULT NULL,
  `no_of_vehicle` int(11) DEFAULT NULL,
  `fare` float(10,2) DEFAULT NULL,
  `note` text,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `ipaddress` varchar(100) DEFAULT NULL,
  `user_agent` varchar(500) DEFAULT NULL,
  `login_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `userlog`
--

INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES
(1, 'root@gmail.com', 'Super Admin', '::1', 'Chrome 84.0.4147.125, Windows 10', '2020-08-17 14:18:15'),
(2, 'root@gmail.com', 'Super Admin', '::1', 'Chrome 84.0.4147.125, Windows 10', '2020-08-17 17:08:33'),
(3, 'admin@gmail.com', 'Admin', '::1', 'Chrome 84.0.4147.125, Windows 10', '2020-08-17 17:21:52'),
(4, 'admin@gmail.com', 'Admin', '::1', 'Chrome 84.0.4147.125, Windows 10', '2020-08-17 17:26:09'),
(5, 'teacher@gmail.com', 'Teacher', '::1', 'Chrome 84.0.4147.125, Windows 10', '2020-08-17 17:35:04'),
(6, 'root@gmail.com', 'Super Admin', '::1', 'Chrome 84.0.4147.125, Windows 10', '2020-08-17 22:42:39'),
(7, 'teacher@gmail.com', 'Teacher', '::1', 'Chrome 84.0.4147.125, Windows 10', '2020-08-17 22:51:23'),
(8, 'root@gmail.com', 'Super Admin', '::1', 'Chrome 84.0.4147.125, Windows 10', '2020-08-18 14:45:25'),
(9, 'teacher@gmail.com', 'Teacher', '::1', 'Chrome 84.0.4147.125, Windows 10', '2020-08-18 15:08:41'),
(10, 'prof1@gmail.com', 'Teacher', '::1', 'Chrome 84.0.4147.125, Windows 10', '2020-08-18 16:02:21'),
(11, 'prof7@gmail.com', 'Teacher', '::1', 'Chrome 84.0.4147.125, Windows 10', '2020-08-18 17:12:00'),
(12, 'prof1@gmail.com', 'Teacher', '::1', 'Chrome 84.0.4147.125, Windows 10', '2020-08-18 17:13:07'),
(13, 'prof1@gmail.com', 'Teacher', '::1', 'Chrome 84.0.4147.125, Windows 10', '2020-08-18 22:08:07'),
(14, 'prof1@gmail.com', 'Teacher', '::1', 'Chrome 84.0.4147.125, Windows 10', '2020-08-18 22:11:38'),
(15, 'root@gmail.com', 'Super Admin', '::1', 'Chrome 84.0.4147.125, Windows 10', '2020-08-18 22:21:06'),
(16, 'prof6@gmail.com', 'Teacher', '::1', 'Chrome 84.0.4147.125, Windows 10', '2020-08-18 22:32:32'),
(17, 'prof1@gmail.com', 'Teacher', '::1', 'Internet Explorer 11.0, Windows 10', '2020-08-18 22:33:50'),
(18, 'root@gmail.com', 'Super Admin', '::1', 'Chrome 84.0.4147.125, Windows 10', '2020-08-18 22:34:46'),
(19, 'prof6@gmail.com', 'Teacher', '::1', 'Internet Explorer 11.0, Windows 10', '2020-08-18 22:35:24'),
(20, 'root@gmail.com', 'Super Admin', '::1', 'Chrome 84.0.4147.125, Windows 10', '2020-08-19 11:26:17'),
(21, 'root@gmail.com', 'Super Admin', '::1', 'Chrome 84.0.4147.125, Windows 10', '2020-12-01 16:58:56'),
(22, 'prof1@gmail.com', 'Teacher', '::1', 'Chrome 84.0.4147.125, Windows 10', '2020-08-19 18:18:10'),
(23, 'root@gmail.com', 'Super Admin', '::1', 'Chrome 84.0.4147.125, Windows 10', '2020-08-19 20:49:43'),
(24, 'admin@gmail.com', 'Admin', '::1', 'Chrome 84.0.4147.125, Windows 10', '2020-08-19 22:47:04'),
(25, 'prof1@gmail.com', 'Teacher', '::1', 'Internet Explorer 11.0, Windows 10', '2020-08-19 23:00:41'),
(26, 'prof1@gmail.com', 'Teacher', '::1', 'Chrome 84.0.4147.125, Windows 10', '2020-08-19 23:15:40'),
(27, 'root@gmail.com', 'Super Admin', '::1', 'Chrome 84.0.4147.125, Windows 10', '2020-08-20 14:52:33');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `childs` text NOT NULL,
  `role` varchar(30) NOT NULL,
  `verification_code` varchar(200) NOT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 2, 'std2', '7igwjz', '', 'student', '', 'yes', '2020-08-17 18:27:32', '0000-00-00 00:00:00'),
(4, 2, 'parent2', 'wjkuhx', '2', 'parent', '', 'yes', '2020-08-17 18:27:32', '0000-00-00 00:00:00'),
(5, 3, 'std3', 'af1ryk', '', 'student', '', 'yes', '2020-08-17 18:35:10', '0000-00-00 00:00:00'),
(6, 3, 'parent3', 'wje12y', '3', 'parent', '', 'yes', '2020-08-17 18:35:10', '0000-00-00 00:00:00'),
(7, 4, 'std4', 'loxzv2', '', 'student', '', 'yes', '2020-08-17 18:35:10', '0000-00-00 00:00:00'),
(8, 4, 'parent4', '8lrnzg', '4', 'parent', '', 'yes', '2020-08-17 18:35:10', '0000-00-00 00:00:00'),
(9, 5, 'std5', 'y4g0yz', '', 'student', '', 'yes', '2020-08-17 18:35:10', '0000-00-00 00:00:00'),
(10, 5, 'parent5', '0d8qhj', '5', 'parent', '', 'yes', '2020-08-17 18:35:10', '0000-00-00 00:00:00'),
(11, 6, 'std6', 'ghazq0', '', 'student', '', 'yes', '2020-08-17 18:35:10', '0000-00-00 00:00:00'),
(12, 6, 'parent6', 'fqcyk1', '6', 'parent', '', 'yes', '2020-08-17 18:35:10', '0000-00-00 00:00:00'),
(13, 7, 'std7', 'a8qo3e', '', 'student', '', 'yes', '2020-08-17 18:35:10', '0000-00-00 00:00:00'),
(14, 7, 'parent7', '6jkqwx', '7', 'parent', '', 'yes', '2020-08-17 18:35:10', '0000-00-00 00:00:00'),
(15, 8, 'std8', 'qmnfbo', '', 'student', '', 'yes', '2020-08-17 18:35:10', '0000-00-00 00:00:00'),
(16, 8, 'parent8', '41oje1', '8', 'parent', '', 'yes', '2020-08-17 18:35:10', '0000-00-00 00:00:00'),
(17, 9, 'std9', 'yflhxk', '', 'student', '', 'yes', '2020-08-17 18:35:10', '0000-00-00 00:00:00'),
(18, 9, 'parent9', 'osp907', '9', 'parent', '', 'yes', '2020-08-17 18:35:10', '0000-00-00 00:00:00'),
(19, 10, 'std10', 'lrnzvr', '', 'student', '', 'yes', '2020-08-17 18:35:10', '0000-00-00 00:00:00'),
(20, 10, 'parent10', '4bo3kg', '10', 'parent', '', 'yes', '2020-08-17 18:35:10', '0000-00-00 00:00:00'),
(21, 11, 'std11', 'nfgcnk', '', 'student', '', 'yes', '2020-08-17 18:35:10', '0000-00-00 00:00:00'),
(22, 11, 'parent11', 'wxe1ox', '11', 'parent', '', 'yes', '2020-08-17 18:35:10', '0000-00-00 00:00:00'),
(24, 1, 'parent1', '50di1o', '1', 'parent', '', 'yes', '2020-08-17 22:45:19', '0000-00-00 00:00:00'),
(25, 2, 'std2', '45wdp9', '', 'student', '', 'yes', '2020-08-17 22:45:19', '0000-00-00 00:00:00'),
(26, 2, 'parent2', '7zgo7i', '2', 'parent', '', 'yes', '2020-08-17 22:45:19', '0000-00-00 00:00:00'),
(27, 3, 'std3', '63ilrn', '', 'student', '', 'yes', '2020-08-17 22:45:19', '0000-00-00 00:00:00'),
(28, 3, 'parent3', '9mx45o', '3', 'parent', '', 'yes', '2020-08-17 22:45:19', '0000-00-00 00:00:00'),
(29, 4, 'std4', 'pv6dig', '', 'student', '', 'yes', '2020-08-17 22:45:19', '0000-00-00 00:00:00'),
(30, 4, 'parent4', 'dfbwyt', '4', 'parent', '', 'yes', '2020-08-17 22:45:19', '0000-00-00 00:00:00'),
(31, 5, 'std5', '0skqws', '', 'student', '', 'yes', '2020-08-17 22:45:19', '0000-00-00 00:00:00'),
(32, 5, 'parent5', 'g63p5h', '5', 'parent', '', 'yes', '2020-08-17 22:45:19', '0000-00-00 00:00:00'),
(33, 6, 'std6', '4bcsev', '', 'student', '', 'yes', '2020-08-17 22:45:19', '0000-00-00 00:00:00'),
(34, 6, 'parent6', '3z56jf', '6', 'parent', '', 'yes', '2020-08-17 22:45:19', '0000-00-00 00:00:00'),
(35, 7, 'std7', '2nz1hs', '', 'student', '', 'yes', '2020-08-17 22:45:19', '0000-00-00 00:00:00'),
(36, 7, 'parent7', 'b6xfqc', '7', 'parent', '', 'yes', '2020-08-17 22:45:19', '0000-00-00 00:00:00'),
(37, 8, 'std8', '45mjev', '', 'student', '', 'yes', '2020-08-17 22:45:19', '0000-00-00 00:00:00'),
(38, 8, 'parent8', 'j49onp', '8', 'parent', '', 'yes', '2020-08-17 22:45:19', '0000-00-00 00:00:00'),
(39, 9, 'std9', 'm3zlo7', '', 'student', '', 'yes', '2020-08-17 22:45:19', '0000-00-00 00:00:00'),
(40, 9, 'parent9', '5ox8bh', '9', 'parent', '', 'yes', '2020-08-17 22:45:19', '0000-00-00 00:00:00'),
(41, 10, 'std10', 'i52xib', '', 'student', '', 'yes', '2020-08-17 22:45:19', '0000-00-00 00:00:00'),
(42, 10, 'parent10', 'splha4', '10', 'parent', '', 'yes', '2020-08-17 22:45:19', '0000-00-00 00:00:00'),
(43, 11, 'std11', 'rnpqcs', '', 'student', '', 'yes', '2020-08-17 22:45:19', '0000-00-00 00:00:00'),
(44, 11, 'parent11', 'bwxtu6', '11', 'parent', '', 'yes', '2020-08-17 22:45:19', '0000-00-00 00:00:00'),
(45, 12, 'std12', 'rjz16j', '', 'student', '', 'yes', '2020-08-19 11:57:00', '0000-00-00 00:00:00'),
(46, 0, 'parent12', '50j45o', '12', 'parent', '', 'yes', '2020-08-19 11:57:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `vehicle_no` varchar(20) DEFAULT NULL,
  `vehicle_model` varchar(100) NOT NULL DEFAULT 'None',
  `manufacture_year` varchar(4) DEFAULT NULL,
  `driver_name` varchar(50) DEFAULT NULL,
  `driver_licence` varchar(50) NOT NULL DEFAULT 'None',
  `driver_contact` varchar(20) DEFAULT NULL,
  `note` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_routes`
--

DROP TABLE IF EXISTS `vehicle_routes`;
CREATE TABLE IF NOT EXISTS `vehicle_routes` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `route_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `visitors_book`
--

DROP TABLE IF EXISTS `visitors_book`;
CREATE TABLE IF NOT EXISTS `visitors_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` varchar(100) DEFAULT NULL,
  `purpose` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact` varchar(12) NOT NULL,
  `id_proof` varchar(50) NOT NULL,
  `no_of_pepple` int(11) NOT NULL,
  `date` date NOT NULL,
  `in_time` varchar(20) NOT NULL,
  `out_time` varchar(20) NOT NULL,
  `note` mediumtext NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `visitors_purpose`
--

DROP TABLE IF EXISTS `visitors_purpose`;
CREATE TABLE IF NOT EXISTS `visitors_purpose` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `visitors_purpose` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `content_for`
--
ALTER TABLE `content_for`
  ADD CONSTRAINT `content_for_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `content_for_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `fees_discounts`
--
ALTER TABLE `fees_discounts`
  ADD CONSTRAINT `fees_discounts_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `fee_groups_feetype`
--
ALTER TABLE `fee_groups_feetype`
  ADD CONSTRAINT `fee_groups_feetype_ibfk_1` FOREIGN KEY (`fee_session_group_id`) REFERENCES `fee_session_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_groups_feetype_ibfk_2` FOREIGN KEY (`fee_groups_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_groups_feetype_ibfk_3` FOREIGN KEY (`feetype_id`) REFERENCES `feetype` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_groups_feetype_ibfk_4` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `fee_session_groups`
--
ALTER TABLE `fee_session_groups`
  ADD CONSTRAINT `fee_session_groups_ibfk_1` FOREIGN KEY (`fee_groups_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_session_groups_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `front_cms_page_contents`
--
ALTER TABLE `front_cms_page_contents`
  ADD CONSTRAINT `front_cms_page_contents_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `front_cms_pages` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `front_cms_program_photos`
--
ALTER TABLE `front_cms_program_photos`
  ADD CONSTRAINT `front_cms_program_photos_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `front_cms_programs` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_issue`
--
ALTER TABLE `item_issue`
  ADD CONSTRAINT `item_issue_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_issue_ibfk_2` FOREIGN KEY (`item_category_id`) REFERENCES `item_category` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_stock`
--
ALTER TABLE `item_stock`
  ADD CONSTRAINT `item_stock_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `item_supplier` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_ibfk_3` FOREIGN KEY (`store_id`) REFERENCES `item_store` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `notification_roles`
--
ALTER TABLE `notification_roles`
  ADD CONSTRAINT `notification_roles_ibfk_1` FOREIGN KEY (`send_notification_id`) REFERENCES `send_notification` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notification_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
