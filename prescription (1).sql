-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Mar 07, 2025 at 03:53 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 8.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prescription`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `mobile` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pin` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(30) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `first_name`, `last_name`, `mobile`, `address`, `pin`, `date_of_birth`, `city`, `state`, `country`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Deepanjan', 'Dey', '+91 9412564334', 'Rongpur1', '788009', '1976-12-31', 'Silchar', 'Assam', 'India', 1, '2024-09-15 05:59:02', '2025-01-04 13:08:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `advice`
--

DROP TABLE IF EXISTS `advice`;
CREATE TABLE IF NOT EXISTS `advice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Advice` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advice`
--

INSERT INTO `advice` (`id`, `Advice`, `created_at`, `updated_at`, `deleted_at`) VALUES
(34, 'pop', '2024-12-31 11:54:43', '2024-12-31 11:55:07', '2025-02-10 18:10:42'),
(33, 'sd', '2024-12-31 11:53:56', '2024-12-31 11:53:56', NULL),
(22, 'Extraction', '2024-09-26 18:30:00', '2024-09-26 18:30:00', NULL),
(23, 'Surgical Extraction', '2024-09-26 18:30:00', '2024-09-26 18:30:00', NULL),
(24, 'Restoration', '2024-09-26 18:30:00', '2024-09-26 18:30:00', NULL),
(25, 'RCT with PFM Crown', '2024-09-26 18:30:00', '2024-09-26 18:30:00', '2025-02-10 18:10:43'),
(26, 'RCT with DMLS Crown', '2024-09-26 18:30:00', '2024-09-26 18:30:00', NULL),
(27, 'RCT with Zirconia Crown', '2024-09-26 18:30:00', '2024-09-26 18:30:00', NULL),
(28, 'RPD', '2024-09-26 18:30:00', '2024-09-26 18:30:00', NULL),
(29, 'FPD - PFM/DMLS/ Zirconia', '2024-09-26 18:30:00', '2024-09-26 18:30:00', NULL),
(30, 'Scaling', '2024-09-26 18:30:00', '2025-02-01 07:12:22', NULL),
(31, 'Implant', '2024-09-26 18:30:00', '2024-09-26 18:30:00', NULL),
(32, 'Complete Denture', '2024-09-26 18:30:00', '2024-09-26 18:30:00', NULL),
(35, 'nnnn', '2025-02-01 05:35:01', '2025-02-01 05:35:01', NULL),
(36, 'kkkk', '2025-02-01 06:39:25', '2025-02-01 06:39:25', NULL),
(37, 'kkk', '2025-02-01 06:43:26', '2025-02-01 06:43:26', NULL),
(38, 'vv', '2025-02-01 06:44:39', '2025-02-01 06:44:39', NULL),
(39, 'nmnm', '2025-02-01 06:47:06', '2025-02-01 06:47:06', NULL),
(40, 'nmnm', '2025-02-01 06:47:55', '2025-02-01 06:47:55', NULL),
(41, 'dddd', '2025-02-01 06:56:56', '2025-02-01 06:56:56', NULL),
(42, 'jj', '2025-02-01 07:14:48', '2025-02-01 07:14:48', NULL),
(43, 'jj', '2025-02-01 07:21:07', '2025-02-01 07:21:07', NULL),
(44, 'jj', '2025-02-01 07:26:06', '2025-02-01 07:26:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
CREATE TABLE IF NOT EXISTS `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `app_date_time` datetime NOT NULL,
  `patient_id` int(11) NOT NULL,
  `purpose` varchar(200) NOT NULL,
  `treatment_type` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1 active, 2 Appeared , 3 start , 4 complete, 5 cancel',
  `amount` float DEFAULT 0,
  `preTreatment` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `app_date_time`, `patient_id`, `purpose`, `treatment_type`, `status`, `amount`, `preTreatment`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, '2024-10-02 15:15:00', 9, 'RCT', NULL, 2, 0, NULL, '2024-09-29 22:04:30', '2024-09-30 23:25:42', NULL),
(2, '2024-09-29 03:51:39', 6, 'test', NULL, 3, 0, NULL, '2024-09-29 03:51:39', '2024-09-29 03:51:39', NULL),
(1, '2024-09-29 03:51:00', 45, 'test', 0, 4, 100, 0, '2024-09-29 03:51:39', '2025-01-21 13:59:07', NULL),
(10, '2024-10-03 14:30:00', 10, 'Cleaning', NULL, 4, 0, NULL, '2024-09-29 22:07:04', '2024-09-30 23:25:27', '2025-01-21 14:46:04'),
(11, '2024-10-02 11:02:00', 12, 'Checkup', NULL, 2, 0, NULL, '2024-09-30 00:34:06', '2024-10-01 00:26:27', NULL),
(12, '2024-10-03 14:11:00', 54, 'Pick up', 0, 3, 450, 0, '2024-09-30 00:38:47', '2025-01-31 17:48:05', NULL),
(13, '2024-10-03 14:11:00', 14, 'ask', NULL, 2, 0, NULL, '2024-09-30 00:43:55', '2024-10-01 00:26:49', '2025-01-21 14:44:34'),
(14, '2024-10-03 13:20:00', 50, 'Tooth Cleaning', 0, 2, 500, 0, '2024-09-30 08:45:45', '2025-01-31 16:07:54', NULL),
(15, '2024-10-03 13:20:00', 52, 'Teeth Cleaning', 0, 2, 500, 0, '2024-09-30 10:24:26', '2025-01-31 16:12:43', NULL),
(16, '2024-10-01 13:09:00', 17, 'Teet', NULL, 4, 0, NULL, '2024-10-01 02:20:06', '2024-10-01 02:48:17', NULL),
(17, '2024-10-01 13:20:00', 18, 'RCT', NULL, 2, 0, NULL, '2024-10-01 02:27:20', '2024-10-01 04:59:22', NULL),
(18, '2024-10-06 13:29:00', 19, 'Checkup', NULL, 4, 0, NULL, '2024-10-01 02:29:22', '2024-10-06 03:41:50', NULL),
(19, '2024-10-06 14:30:00', 20, 'Really', NULL, 3, 0, NULL, '2024-10-01 03:04:02', '2024-10-06 03:41:11', NULL),
(20, '2024-10-06 14:50:00', 55, 'Yishika', 0, 3, 450, 0, '2024-10-01 03:05:38', '2025-01-31 17:48:26', NULL),
(21, '2024-10-06 15:34:00', 15, 'ssa', NULL, 2, 0, NULL, '2024-10-01 03:06:49', '2024-10-06 03:40:44', NULL),
(22, '2024-10-06 13:40:00', 1, 'test', NULL, 3, 0, NULL, '2024-10-06 03:53:38', '2024-11-03 06:40:39', NULL),
(23, '2024-11-05 07:30:00', 24, 'rct', NULL, 4, 0, 26, '2024-11-03 08:34:22', '2024-11-04 22:43:47', NULL),
(24, '2024-11-04 02:00:00', 25, 'Test', NULL, 3, 0, NULL, '2024-11-03 08:47:54', '2024-11-03 10:23:54', NULL),
(25, '2024-11-04 08:00:00', 56, 'checkup', 0, 3, 500, 0, '2024-11-03 09:55:33', '2025-01-31 17:48:58', NULL),
(26, '2024-01-11 01:00:00', 7, 't', NULL, 3, 0, NULL, '2024-11-03 10:48:30', '2024-11-03 10:49:18', NULL),
(27, '2024-11-04 08:00:00', 57, 'pp', 0, 3, 560, 0, '2024-11-03 11:46:18', '2025-01-31 17:50:06', NULL),
(28, '2024-11-05 11:30:00', 26, 'test', NULL, 2, 0, NULL, '2024-11-04 22:56:17', '2024-11-04 22:56:40', NULL),
(29, '2024-11-06 11:00:00', 26, 'EXTRACTION', NULL, 2, 0, 27, '2024-11-05 11:38:09', '2024-11-05 11:54:38', NULL),
(30, '2024-11-12 02:00:00', 24, 'EXTRACTION', 2, 1, 0, 30, '2024-11-05 12:34:42', '2024-11-10 08:00:18', NULL),
(31, '2024-11-06 02:00:00', 24, 'OPERCULECTOMY', NULL, 2, 0, 26, '2024-11-05 12:40:51', '2024-11-05 12:40:51', NULL),
(32, '2024-11-10 01:30:00', 28, 'EXTRACTION', 2, 2, 0, NULL, '2024-11-09 08:02:00', '2024-11-09 08:40:43', NULL),
(33, '2024-11-10 10:30:00', 24, 'EXTRACTION', 2, 4, 0, 26, '2024-11-09 08:03:29', '2024-11-10 04:53:06', NULL),
(34, '2024-11-10 13:00:00', 24, 'RCT', 1, 3, 0, 26, '2024-11-09 08:05:55', '2024-11-09 08:42:26', NULL),
(35, '2024-11-13 14:00:00', 24, '', 0, 1, 0, 30, '2024-11-10 08:04:28', '2024-11-10 23:45:03', NULL),
(36, '2024-11-13 06:00:00', 24, 'RCT', 1, 3, 0, 29, '2024-11-11 10:27:31', '2024-11-13 07:25:47', NULL),
(37, '2024-11-15 11:30:00', 24, 'RCT', 1, 3, 0, 31, '2024-11-13 08:54:37', '2024-11-13 12:04:12', NULL),
(38, '2025-01-09 12:07:00', 37, 'RCT', 1, 4, 0, 0, '2025-01-09 12:21:05', '2025-01-09 12:21:05', NULL),
(39, '2025-01-09 12:22:00', 38, 'EXTRACTION', 2, 4, 0, 0, '2025-01-09 12:24:08', '2025-01-09 12:24:08', NULL),
(40, '2025-01-09 12:24:00', 39, 'EXTRACTION', 2, 4, 0, 0, '2025-01-09 12:25:10', '2025-01-09 12:25:10', NULL),
(41, '2025-01-09 12:27:00', 40, 'EXTRACTION', 2, 2, 0, 0, '2025-01-09 12:27:43', '2025-01-09 12:27:43', NULL),
(42, '2025-01-09 12:46:00', 7, 'EXTRACTION', 2, 1, 0, 0, '2025-01-09 12:47:35', '2025-01-09 12:47:35', NULL),
(43, '2025-01-09 13:00:00', 41, 'EXTRACTION', 2, 0, 0, 0, '2025-01-09 12:48:19', '2025-01-10 10:46:53', NULL),
(44, '2025-01-10 14:18:00', 42, 'EXTRACTION', 2, 3, 0, 0, '2025-01-10 14:19:19', '2025-01-10 14:19:19', NULL),
(45, '2025-01-13 01:00:00', 43, 'EXTRACTION', 2, 1, 0, 35, NULL, '2025-01-12 06:19:22', NULL),
(46, '2025-01-30 10:30:00', 38, '', 0, 1, 0, 34, NULL, NULL, NULL),
(47, '2025-01-21 19:22:00', 44, 'EXTRACTION', 2, 1, 1000, 0, '2025-01-21 13:53:31', '2025-01-21 13:53:31', NULL),
(48, '2025-01-31 20:29:00', 46, 'EXTRACTION', 2, 4, 500, 0, '2025-01-31 15:00:34', '2025-01-31 15:00:34', NULL),
(49, '2025-01-31 20:55:00', 47, 'RCT', 1, 3, 20, 0, '2025-01-31 15:26:35', '2025-01-31 15:26:35', NULL),
(50, '2025-01-31 21:06:00', 48, 'EXTRACTION', 0, 3, 500, 0, '2025-01-31 15:36:19', '2025-01-31 15:36:19', NULL),
(51, '2025-01-31 21:08:00', 25, 'CURETTAGE', 4, 3, NULL, 0, '2025-01-31 16:03:19', '2025-01-31 16:03:19', NULL),
(52, '2025-02-03 17:19:00', 60, 'EXTRACTION', 2, 3, 450, 0, '2025-02-03 11:50:27', '2025-02-03 11:50:27', NULL),
(53, '2025-02-10 10:51:00', 20, 'EXTRACTION', 2, 3, 250, 0, '2025-02-10 05:22:05', '2025-02-10 05:22:05', NULL),
(54, '2025-02-11 19:00:00', 61, 'RCT', 1, 1, 500, 0, '2025-02-10 20:02:56', '2025-02-10 20:02:56', NULL),
(55, '2025-02-11 01:42:00', 62, 'new', 0, 1, 500, 0, '2025-02-10 20:19:47', '2025-02-10 20:19:47', NULL),
(56, '2025-02-24 13:10:00', 7, 'RCT', 1, 1, 0, 0, '2025-02-24 07:41:36', '2025-02-24 07:41:36', NULL),
(57, '2025-02-24 13:11:00', 7, 'RCT', 1, 1, 0, 0, '2025-02-24 07:42:35', '2025-02-24 07:42:35', '2025-02-24 07:43:02'),
(58, '2025-02-24 13:21:00', 6, 'EXTRACTION', 2, 1, 0, 0, '2025-02-24 07:52:01', '2025-02-24 07:52:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `appointment_status`
--

DROP TABLE IF EXISTS `appointment_status`;
CREATE TABLE IF NOT EXISTS `appointment_status` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment_status`
--

INSERT INTO `appointment_status` (`id`, `name`) VALUES
(0, 'No status'),
(1, 'Active'),
(2, 'Appeared'),
(3, 'Start'),
(4, 'Complete'),
(5, 'Cancel');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

DROP TABLE IF EXISTS `counters`;
CREATE TABLE IF NOT EXISTS `counters` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `mobile` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pin` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(30) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `first_name`, `last_name`, `mobile`, `address`, `pin`, `date_of_birth`, `city`, `state`, `country`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Prakash', 'Verma', '9101697880', 'silchar,Rongpur-09', '788009', '1982-12-31', 'Silchar', 'Assam', 'India', 1, '2024-09-15 05:59:02', '2025-01-02 02:54:55', '2025-01-05 11:51:08'),
(4, 'Pradip', 'Sen', '9434143147', 'Ambhikapatty', '788005', '1960-01-06', 'Silhar', 'Assam', 'India', 1, '2024-09-25 10:02:09', '2024-09-26 20:03:40', '2024-09-26 20:03:40'),
(26, 'Dipankar', 'Bose', '9876541230', 'SLG', '786930', '2025-01-02', 'Silchar', 'Assam', 'India', 1, '2025-01-02 03:16:30', '2025-01-02 03:16:30', NULL),
(24, 'vikas', 'counter', '9401543453', 'Rongpur', '788009', '2025-01-02', 'Silchar', 'Assam', 'India', 1, '2025-01-01 19:46:22', '2025-01-02 02:57:49', '2025-01-02 03:16:48');

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

DROP TABLE IF EXISTS `genders`;
CREATE TABLE IF NOT EXISTS `genders` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `name`) VALUES
(0, 'Not Mentioned'),
(1, 'Male'),
(2, 'Female'),
(3, 'Transgender');

-- --------------------------------------------------------

--
-- Table structure for table `medical_histories`
--

DROP TABLE IF EXISTS `medical_histories`;
CREATE TABLE IF NOT EXISTS `medical_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `MedicalHistory` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_histories`
--

INSERT INTO `medical_histories` (`id`, `MedicalHistory`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'T2DM', '2024-09-26 20:41:51', '2024-09-26 20:41:51', NULL),
(4, 'HTN', '2024-09-26 20:40:22', '2024-09-26 20:40:22', NULL),
(6, 'DM Insulin', '2024-09-26 20:42:07', '2024-09-26 20:42:07', NULL),
(7, 'Thyroid', '2024-09-26 20:42:22', '2024-09-26 20:42:22', NULL),
(8, 'Gastric', '2024-09-26 20:42:41', '2024-09-26 20:42:41', NULL),
(9, 'Cardiac', '2024-09-26 20:42:54', '2024-09-26 20:42:54', NULL),
(10, 'Cholesterol', '2024-09-26 20:43:17', '2024-09-26 20:43:17', NULL),
(11, 'Antiplatelet', '2024-09-26 20:43:41', '2024-09-26 20:43:41', NULL),
(12, 'Uric Acid', '2024-09-26 20:44:01', '2024-09-26 20:44:01', NULL),
(13, 'Creatinine', '2024-09-26 20:44:16', '2024-09-26 20:44:16', NULL),
(14, 'Hepatic', '2024-09-26 20:44:33', '2024-09-26 20:44:33', NULL),
(15, 'Renal', '2024-09-26 20:44:48', '2024-09-26 20:44:48', NULL),
(18, 'ppp', NULL, NULL, NULL),
(19, 'abc', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
CREATE TABLE IF NOT EXISTS `medicine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Medicine` varchar(200) NOT NULL,
  `compositions` varchar(500) NOT NULL,
  `Dosage` varchar(100) NOT NULL,
  `frequency` tinyint(4) NOT NULL,
  `duration_quantity` tinyint(4) NOT NULL,
  `duration_unit` varchar(10) NOT NULL,
  `timing` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1: before food,  2: after food',
  `tab_cap` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 for Tab. , 2 for Cap. , 3 for syrup',
  `syrup_dose` varchar(5) DEFAULT NULL,
  `is_extranote` tinyint(1) NOT NULL DEFAULT 0,
  `extranote` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `Medicine`, `compositions`, `Dosage`, `frequency`, `duration_quantity`, `duration_unit`, `timing`, `tab_cap`, `syrup_dose`, `is_extranote`, `extranote`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Anesthetics', 'aiop', '{\"morning\":1,\"noon\":1,\"night\":1}', 2, 7, '2', 1, 1, NULL, 0, NULL, '2024-10-02 07:39:25', '2025-02-10 19:54:28', NULL),
(2, 'Pain relievers', 'pp', '{\"morning\":1,\"noon\":0,\"night\":1}', 1, 10, '1', 2, 2, NULL, 0, NULL, '2024-10-02 07:39:25', '2025-01-22 02:42:13', NULL),
(3, 'Antibiotics', 'an', '{\"morning\":1,\"noon\":1,\"night\":1}', 1, 10, '1', 2, 3, '5 ml', 0, NULL, '2024-10-02 07:39:25', '2025-02-10 15:00:59', NULL),
(4, 'Antifungals', 'aq', '{\"morning\":1,\"noon\":1,\"night\":1}', 1, 2, '2', 2, 3, '5 ml', 0, NULL, '2024-10-02 07:39:23', '2025-02-03 14:12:19', NULL),
(5, 'Fluorides', 'fr', '{\"morning\":1,\"noon\":0,\"night\":1}', 1, 20, '1', 2, 3, '5 ml', 0, NULL, '2024-10-02 07:39:25', '2025-01-29 07:05:47', NULL),
(6, 'Anti biotic 1', 'as for example', '{\"morning\":1,\"noon\":0,\"night\":1}', 1, 5, '1', 1, 2, NULL, 0, NULL, '2025-01-13 20:08:59', '2025-01-22 02:44:21', NULL),
(8, 'test', 'adf', '{\"morning\":1,\"noon\":0,\"night\":1}', 1, 1, '1', 1, 3, '2', 1, 'test', '2025-01-28 04:43:50', '2025-01-28 04:49:18', '2025-02-10 17:50:59'),
(9, 'qwer', 'asd', '{\"morning\":0,\"noon\":1,\"night\":0}', 1, 1, '1', 1, 3, '4', 1, 'xxxx', '2025-01-28 04:50:25', '2025-01-28 04:50:39', '2025-02-10 17:51:00'),
(10, 'tyy', 'gggg', '{\"morning\":1,\"noon\":1,\"night\":0}', 1, 1, '1', 1, 1, NULL, 0, NULL, '2025-01-28 04:52:37', '2025-02-10 14:59:36', '2025-02-10 17:51:02'),
(11, 'operation', 'jjj', '{\"morning\":0,\"noon\":1,\"night\":0}', 1, 2, '1', 1, 1, NULL, 1, 'kk', '2025-01-28 05:03:15', '2025-02-03 11:51:44', '2025-02-10 17:51:02'),
(12, 'uyu', 'yuyu', '{\"morning\":1,\"noon\":1,\"night\":1}', 1, 2, '1', 2, 3, '9', 1, 'lkll', '2025-01-28 05:15:37', '2025-01-28 05:15:49', '2025-02-10 17:51:03'),
(13, 'rrr', '', '{\"morning\":0,\"noon\":0,\"night\":0}', 0, 0, '0', 0, 0, NULL, 1, 'fffff', '2025-02-10 13:10:51', '2025-02-10 13:10:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meta_info`
--

DROP TABLE IF EXISTS `meta_info`;
CREATE TABLE IF NOT EXISTS `meta_info` (
  `id` tinyint(4) NOT NULL,
  `page_OE` tinyint(4) NOT NULL,
  `page_AD` tinyint(4) NOT NULL,
  `page_MH` tinyint(4) NOT NULL,
  `page_TT` tinyint(4) NOT NULL,
  `page_TD` tinyint(4) NOT NULL,
  `page_MD` tinyint(4) NOT NULL,
  `page_CT` tinyint(4) NOT NULL,
  `page_OP` tinyint(4) NOT NULL,
  `page_PT` tinyint(4) NOT NULL,
  `page_AP` tinyint(4) NOT NULL,
  `page_TR` tinyint(4) NOT NULL,
  `page_RP1` tinyint(4) NOT NULL,
  `page_RP2` tinyint(4) NOT NULL,
  `pre_print_with_head` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meta_info`
--

INSERT INTO `meta_info` (`id`, `page_OE`, `page_AD`, `page_MH`, `page_TT`, `page_TD`, `page_MD`, `page_CT`, `page_OP`, `page_PT`, `page_AP`, `page_TR`, `page_RP1`, `page_RP2`, `pre_print_with_head`) VALUES
(1, 14, 10, 10, 10, 0, 10, 10, 10, 10, 10, 10, 10, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `operators`
--

DROP TABLE IF EXISTS `operators`;
CREATE TABLE IF NOT EXISTS `operators` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `mobile` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pin` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(30) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operators`
--

INSERT INTO `operators` (`id`, `first_name`, `last_name`, `mobile`, `address`, `pin`, `date_of_birth`, `city`, `state`, `country`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 'Gitimala', 'Nandi', '9678720518', 'Silchar', '788009', '1986-12-12', 'Silchar', 'Assam', 'India', 1, '2024-09-25 09:21:15', '2024-09-26 20:04:28', NULL),
(11, 'Moon', 'nandi', '8486639332', 'Silchar', '788009', '1984-12-12', 'Silchar', 'Assam', 'India', 1, '2024-09-25 09:38:58', '2024-09-25 09:38:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oral_examinations`
--

DROP TABLE IF EXISTS `oral_examinations`;
CREATE TABLE IF NOT EXISTS `oral_examinations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `OralExamination` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oral_examinations`
--

INSERT INTO `oral_examinations` (`id`, `OralExamination`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'Occlusal Caries', '2024-09-26 18:30:00', '2024-12-30 16:51:44', NULL),
(5, 'Grossly Carious', '2024-09-26 18:30:00', '2024-09-26 18:30:00', NULL),
(6, 'Proximal Caries', '2024-09-26 18:30:00', '2024-09-26 18:30:00', NULL),
(7, 'Deep Occlusal Caries', '2024-09-26 18:30:00', '2024-09-26 18:30:00', NULL),
(8, 'Deep Proximal Caries', '2024-09-26 18:30:00', '2024-09-26 18:30:00', NULL),
(9, 'Cervical Caries', '2024-09-26 18:30:00', '2024-09-26 18:30:00', NULL),
(10, 'Deep Cervical Caries', '2024-09-26 18:30:00', '2024-09-26 18:30:00', NULL),
(11, 'Root Stump', '2024-09-26 18:30:00', '2024-09-26 18:30:00', NULL),
(12, 'Generalised Inflamed Gums', '2024-09-26 18:30:00', '2024-09-26 18:30:00', NULL),
(13, 'Generalised Attrision', '2024-09-26 18:30:00', '2024-09-26 18:30:00', NULL),
(14, 'Generalised Gum recession', '2024-09-26 18:30:00', '2024-09-26 18:30:00', NULL),
(15, 'Stains', '2024-09-26 18:30:00', '2024-09-26 18:30:00', NULL),
(16, 'Calculas', '2024-09-26 18:30:00', '2024-09-26 18:30:00', NULL),
(17, 'Ellies Class Fracture', '2024-09-26 18:30:00', '2024-12-30 18:16:02', NULL),
(21, 'hhh', NULL, NULL, NULL),
(20, 'ppp', '2025-01-03 13:20:26', '2025-01-03 13:21:20', NULL),
(22, 'pip', NULL, NULL, NULL),
(23, 'uy', '2025-02-20 04:17:38', '2025-02-20 04:17:38', NULL),
(24, 'o', '2025-02-20 04:17:40', '2025-02-20 04:17:40', NULL),
(25, 'iop', '2025-02-20 05:18:47', '2025-02-20 05:18:47', NULL),
(26, 'ojh', '2025-02-20 05:18:52', '2025-02-20 05:18:52', NULL),
(27, 'jk', '2025-02-20 05:18:59', '2025-02-20 05:18:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
CREATE TABLE IF NOT EXISTS `patients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `registration_number` varchar(10) DEFAULT NULL,
  `first_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `mobile` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pin` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender_id` tinyint(4) NOT NULL DEFAULT 0,
  `age` tinyint(4) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `Height` varchar(10) DEFAULT NULL,
  `Weight` varchar(10) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `registration_number`, `first_name`, `last_name`, `mobile`, `address`, `pin`, `gender_id`, `age`, `image`, `Height`, `Weight`, `city`, `state`, `country`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '25-0001', 'Dipika', 'Roy', '+91 9412564334', 'silchar,Rongpur', '', 1, 23, '', '', '', 'Silchar', 'Assam', 'India', 1, '2024-09-15 05:59:02', '2025-01-06 23:41:11', '2025-02-10 18:14:49'),
(6, '25-0006', 'Bishal', 'Deb', '9876543210', 'Ambhika patty', '788001', 1, NULL, 'patient_Bishal_1727542344.jpg', NULL, NULL, 'Silchar', 'Assam', 'India', 1, '2024-09-20 10:32:57', '2024-09-28 11:22:24', NULL),
(5, '25-0005', 'Kishor kumar', 'Bhottacherjee', '9101697880', 'Silchar', '788009', 1, NULL, 'patient_Kishor kumar_1727542372.jpg', NULL, NULL, 'silchar', 'assam', 'india', 0, '2024-09-20 09:46:56', '2024-09-28 11:23:41', NULL),
(7, '25-0007', 'Praful', 'Roy', '9101697881', 'Ambikapatty', '788001', 1, 20, 'patient_Praful_1727542135.jpg', '20', '20', 'Silchar', 'Assam', 'India', 1, '2024-09-20 22:40:30', '2025-01-09 12:48:19', NULL),
(8, '25-0008', 'aa', 'dd', '9879798799', 'gg', '7889900', 1, 47, 'patient_aa_1727530715.jpg', '5 feet', '70 kg', 'se', 'e', 's', 1, '2024-09-25 21:51:55', '2024-09-29 07:56:07', NULL),
(9, '25-0009', 'Ram kinkar', 'das', '9786325410', 'Karatigram', '788009', 1, 26, NULL, '5.5 feet', '55', 'Silchar', 'Asam', 'India', 1, '2024-09-29 21:54:57', '2024-09-29 21:54:57', NULL),
(10, '25-0010', 'Ram kumar', 'das', '9786325410', 'Shantipara', '788009', 1, 26, NULL, '5.5 feet', '55', 'Silchar', 'Asam', 'India', 1, '2024-09-29 22:07:04', '2024-09-29 22:07:04', '2025-02-10 18:15:03'),
(11, '25-0011', 'Riya', 'Dutta', '9876543211', 'Lakhipur', '788110', 1, 24, NULL, '5 Feet', '45', 'Silchar', 'Assam', 'India', 1, '2024-09-30 00:34:06', '2024-09-30 00:34:06', '2025-02-10 18:15:03'),
(12, '25-0012', 'Riya', 'Dutta', '9876543211', 'Lakhipur', '788110', 1, 24, NULL, '5 Feet', '45', 'Silchar', 'Assam', 'India', 1, '2024-09-30 00:35:43', '2024-09-30 00:35:43', '2025-02-10 18:15:02'),
(13, '25-0013', 'Riya', 'Dutta', '9876543212', 'Lakhipur', '788110', 1, 24, NULL, '5 Feet', '45', 'Silchar', 'Assam', 'India', 1, '2024-09-30 00:38:47', '2024-09-30 00:38:47', '2025-02-10 18:15:04'),
(14, '25-0014', 'Riya', 'Dutta', '9876543213', 'Lakhipur', '788110', 1, 27, NULL, '5 Feet', '45', 'Silchar', 'Assam', 'India', 1, '2024-09-30 00:43:55', '2024-09-30 00:43:55', NULL),
(15, '25-0015', 'Shubhankar', 'Biswas', '987698765', 'Sillchar', '788001', 1, 45, NULL, '12', '22', 'Silchar', 'Assam', 'India', 1, '2024-10-01 02:00:59', '2024-10-01 02:00:59', NULL),
(16, '25-0016', 'Full', 'Babu', '90876541', 'SCL', '788001', 1, 45, NULL, NULL, NULL, 'Silchar', NULL, NULL, 1, '2024-10-01 02:11:03', '2024-10-01 02:11:03', NULL),
(17, '25-0017', 'Full', 'Babu', '90876541478', 'SCL', '788001', 1, 45, NULL, NULL, NULL, 'Silchar', NULL, NULL, 1, '2024-10-01 02:20:06', '2024-10-01 02:20:06', NULL),
(18, '25-0018', 'Dipak', 'Das', '9685742103', 'Scl', '788002', 1, 44, 'appointment_Dipak_1727769440.jpg', NULL, NULL, 'Silchar', NULL, NULL, 2, '2024-10-01 02:27:20', '2024-10-01 02:27:20', NULL),
(19, '25-0019', 'Gopa', 'Roy', '96853210', 'Ambikapatty', '788001', 2, 45, 'appointment_Gopa_1727769562.jpg', NULL, NULL, 'Silchar', NULL, NULL, 1, '2024-10-01 02:29:22', '2024-10-03 05:13:18', NULL),
(20, '25-0020', 'Pritam', 'Bhatt', '9786541230', 'Silkuri', '788025', 1, 34, 'patients_Pritam_1727771642.jpg', '', '5.5', 'Silchar', 'Assam', 'India', 1, '2024-10-01 03:04:02', '2025-02-19 15:59:51', NULL),
(21, '25-0021', 'Sita', 'das', '9786325410', 'silchar', '788008', 0, 22, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-11-02 11:45:03', '2024-11-02 11:45:03', NULL),
(22, '25-0022', 'Mani', 'Dey', '9401543453', 'Ran', '788009', 2, 23, NULL, '5.5', '50', 'Silchar', 'Assam', 'India', 1, '2024-11-02 12:02:43', '2024-11-02 12:02:43', NULL),
(23, '25-0023', 'Tutu', 'Dey', '9954637901', 'Shanti para', '788009', 1, 49, NULL, '55', '55', 'Silchar', 'Assam', 'India', 1, '2024-11-03 06:44:02', '2024-11-03 06:44:23', NULL),
(24, '25-0024', 'Sonali', 'sen', '9874563210', 'aa', '', 2, 10, 'Sonalisen20250107005307.JPG', '', '', 'Silchar', 'Assam', 'India', 1, '2024-11-03 08:34:22', '2025-01-07 00:53:07', NULL),
(25, '25-0025', 'Deepak', 'Deb', '9632145781', 'Santi para', '', 1, 25, '', '', '', 'Silchar', 'Assam', 'India', 1, '2024-11-03 08:47:54', '2025-01-06 14:18:01', NULL),
(26, '25-0026', 'Dipika', 'Roy', '9412564334', 'silchar,Rongpur', '788009', 1, 23, NULL, NULL, NULL, 'Silchar', 'Assam', 'India', 1, '2024-11-04 22:56:17', '2024-11-04 22:56:17', NULL),
(29, '25-0029', 'Goutam', 'Tanti', '9401543453', 'sstiara', '788009', 1, 49, '', '5', '5', 'Silchar', 'Assam', 'India', 1, '2025-01-05 12:11:22', '2025-01-05 12:11:22', NULL),
(28, '25-0028', 'Nikita', 'Paul', '9101697880', 'Rongpur', '788009', 1, 32, 'NikitaPaul20250107045435.JPG', '5.5', '55', 'Silchar', 'Assam', 'India', 0, '2024-11-09 08:02:00', '2025-01-07 04:54:35', NULL),
(30, '25-0030', 'Gautam', 'tanti', '968745231', 'shanti ara', '788009', 1, 49, '', '22', '22', 'Silchar', 'Assam', 'India', 1, '2025-01-05 12:13:44', '2025-01-05 12:13:44', NULL),
(31, '25-0031', 's', 's', '65656556', 's', '', 2, 55, '', '45', '55', 'Silchar', 'Assam', 'India', 1, '2025-01-06 13:28:54', '2025-01-06 14:10:04', NULL),
(32, '25-0032', 'Deepanjan', 'Dey', '9401543453', 'Shanti para', '', 1, 47, 'DeepanjanDey20250107025145.JPG', '52', '25', 'Silchar', 'Assam', 'India', 1, '2025-01-07 02:51:45', '2025-01-07 02:51:45', NULL),
(33, '25-0033', 'Riya', 'das', '9874563210', '899', '', 2, 25, 'Riyadas20250107034603.JPG', '43', '77', 'Silchar', 'Assam', 'India', 1, '2025-01-07 03:46:03', '2025-01-07 03:46:03', NULL),
(34, '25-0034', 'Komol', 'Upadya', '87878787', 'uuuu', '', 1, 77, 'KomolUpadya20250107045406.PNG', '5', '2', 'Silchar', 'Assam', 'India', 1, '2025-01-07 03:48:19', '2025-01-07 04:54:06', NULL),
(35, '25-0035', 'Praful', 'Roy', '9101697881', 'Ambikapatty', NULL, 1, 22, NULL, '22', '22', 'Silchar', 'Assam', 'India', 1, '2025-01-09 12:10:36', '2025-01-09 12:10:36', NULL),
(36, '25-0036', 'Praful', 'Roy', '9101697881', 'Ambikapatty', NULL, 1, 22, NULL, '22', '22', 'Silchar', 'Assam', 'India', 1, '2025-01-09 12:17:39', '2025-01-09 12:17:39', NULL),
(37, '25-0037', 'Praful', 'Roy', '9101697881', 'Ambikapatty', NULL, 1, 22, NULL, '22', '22', 'Silchar', 'Assam', 'India', 1, '2025-01-09 12:21:05', '2025-01-09 12:21:05', NULL),
(38, '25-0038', 'Praful', 'Roy', '9101697881', 'Ambikapatty', NULL, 1, 24, NULL, '34', '44', 'Silchar', 'Assam', 'India', 1, '2025-01-09 12:24:08', '2025-01-09 12:24:08', '2025-01-09 17:10:22'),
(39, '25-0039', 'Praful', 'Roy', '9101697881', 'Ambikapatty', NULL, 1, 34, NULL, '45', '55', 'Silchar', 'Assam', 'India', 1, '2025-01-09 12:25:10', '2025-01-09 12:25:10', NULL),
(40, '25-0040', 'Praful', 'Roy', '9101697881', 'Ambikapatty', NULL, 1, 34, NULL, '34', '33', 'Silchar', 'Assam', 'India', 1, '2025-01-09 12:27:43', '2025-01-09 12:27:43', NULL),
(41, '25-0041', 'Praful', 'Roy', '9101697881', 'Ambikapatty', NULL, 1, 20, NULL, '20', '20', 'Silchar', 'Assam', 'India', 0, '2025-01-10 10:46:53', '2025-01-10 10:46:53', NULL),
(42, '25-0042', 'Mukul', 'Dey', '9988665532', 'Santi para', NULL, 1, 55, NULL, '52', '23', 'Silchar', 'Assam', 'India', 1, '2025-01-10 14:19:19', '2025-01-10 14:19:19', NULL),
(43, '25-0043', 'Mukul', 'Dey', '9988665532', 'Santi para', NULL, 1, 55, NULL, '52', '23', 'Silchar', 'Assam', 'India', 1, '2025-01-12 06:19:22', '2025-01-12 06:19:22', NULL),
(44, '25-0044', 'Tumpa', 'Dey', '90876543', 'Santipara', NULL, 2, 24, NULL, '', '', 'Silchar', 'Assam', 'India', 1, '2025-01-21 13:53:31', '2025-01-21 13:53:31', NULL),
(45, '25-0045', 'Dipika', 'Roy', '9412564334', 'silchar,Rongpur', NULL, 1, 23, NULL, '', '', 'Silchar', 'Assam', 'India', 1, '2025-01-21 13:59:07', '2025-01-21 13:59:07', NULL),
(46, '25-0046', 'tina', 'dey', '9874563210', 'scl', NULL, 2, 23, NULL, '', '', 'Silchar', 'Assam', 'India', 1, '2025-01-31 15:00:34', '2025-01-31 15:00:34', NULL),
(47, '25-0047', 'Asana', 'as', '7896325410', 'scl', NULL, 2, 24, NULL, '', '', 'Silchar', 'Assam', 'India', 1, '2025-01-31 15:26:35', '2025-01-31 15:26:35', NULL),
(48, '25-0048', 'Praful', 'Roy', '9101697881', 'Ambikapatty', NULL, 1, 20, NULL, '20', '20', 'Silchar', 'Assam', 'India', 1, '2025-01-31 15:36:19', '2025-01-31 15:36:19', NULL),
(49, '25-0049', 'Riya', 'Dutta', '9876543211', 'Lakhipur', NULL, 1, 24, NULL, '5 Feet', '45', 'Silchar', 'Assam', 'India', 0, '2025-01-31 16:04:02', '2025-01-31 16:04:02', NULL),
(50, '25-0050', 'Riya', 'Dutta', '9876543211', 'Lakhipur', NULL, 1, 24, NULL, '5 Feet', '45', 'Silchar', 'Assam', 'India', 1, '2025-01-31 16:07:54', '2025-01-31 16:07:54', NULL),
(51, '25-0051', 'Riya', 'Dutta', '9876543212', 'Lakhipur', NULL, 1, 24, NULL, '5 Feet', '45', 'Silchar', 'Assam', 'India', 3, '2025-01-31 16:11:18', '2025-01-31 16:11:18', NULL),
(52, '25-0052', 'Dipika', 'Roy', '+91 9412564334', 'silchar,Rongpur', NULL, 1, 23, NULL, '', '', 'Silchar', 'Assam', 'India', 2, '2025-01-31 16:12:43', '2025-01-31 16:12:43', NULL),
(53, '25-0053', 'Riya', 'Dutta', '9876543212', 'Lakhipur', NULL, 1, 24, NULL, '5 Feet', '45', 'Silchar', 'Assam', 'India', 3, '2025-01-31 17:47:18', '2025-01-31 17:47:18', NULL),
(54, '25-0054', 'Riya', 'Dutta', '9876543212', 'Lakhipur', NULL, 1, 24, NULL, '5 Feet', '45', 'Silchar', 'Assam', 'India', 3, '2025-01-31 17:48:05', '2025-01-31 17:48:05', NULL),
(55, '25-0055', 'Riya', 'Dutta', '9876543211', 'Lakhipur', NULL, 1, 24, 'RiyaDutta20250203155241.JPG', '5 Feet', '45', 'Silchar', 'Assam', 'India', 1, '2025-01-31 17:48:26', '2025-02-03 15:52:41', NULL),
(56, '25-0056', 'Kishor kumar', 'Bhottacherjee', '9101697880', 'Silchar', NULL, 1, 25, NULL, '', '', 'silchar', 'assam', 'india', 3, '2025-01-31 17:48:58', '2025-01-31 17:48:58', NULL),
(57, '25-0057', 'Sonali', 'sen', '9874563210', 'aa', NULL, 2, 10, NULL, '', '', 'Silchar', 'Assam', 'India', 3, '2025-01-31 17:50:06', '2025-01-31 17:50:06', NULL),
(58, '25-0058', 'dr fff', 'ddd', '9876543201', 'dsd', NULL, 1, 25, '', '', '', 'Silchar', 'Assam', 'India', 1, '2025-02-02 12:00:28', '2025-02-02 12:00:28', '2025-02-02 12:12:13'),
(59, '25-0059', 'ffff', 'fff', '55656', 'fff', NULL, 1, 55, '', '', '', 'Silchar', 'Assam', 'India', 1, '2025-02-02 12:13:52', '2025-02-02 12:13:52', NULL),
(60, '25-0060', 'Sunil', 'sharma', '9865327410', 'silchar', NULL, 1, 25, NULL, '', '56', 'Silchar', 'Assam', 'India', 1, '2025-02-03 11:50:27', '2025-02-03 11:50:27', NULL),
(61, '25-0061', 'Family', 'g', '6tty', 'dr', NULL, 2, 19, NULL, '', '', 'Silchar', 'Assam', 'India', 1, '2025-02-10 20:02:56', '2025-02-10 20:02:56', NULL),
(62, '25-0062', 'Tumpa', 'Dey', '89898989', 'scl', NULL, 2, 23, NULL, '', '', 'Silchar', 'Assam', 'India', 1, '2025-02-10 20:19:47', '2025-02-10 20:19:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
CREATE TABLE IF NOT EXISTS `status` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(0, 'Inactive'),
(1, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `teeth_side`
--

DROP TABLE IF EXISTS `teeth_side`;
CREATE TABLE IF NOT EXISTS `teeth_side` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teeth_side`
--

INSERT INTO `teeth_side` (`id`, `name`) VALUES
(1, 'LEFT TOP'),
(2, 'RIGHT TOP'),
(3, 'LEFT BOTTO'),
(4, 'RIGHT BOTT');

-- --------------------------------------------------------

--
-- Table structure for table `treatments`
--

DROP TABLE IF EXISTS `treatments`;
CREATE TABLE IF NOT EXISTS `treatments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `start_date_time` datetime DEFAULT NULL,
  `end_date_time` datetime DEFAULT NULL,
  `app_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1 active, 2 Appeared , 3 start , 4 complete, 5 cancel',
  `NextAppId` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatments`
--

INSERT INTO `treatments` (`id`, `start_date_time`, `end_date_time`, `app_id`, `patient_id`, `type`, `remarks`, `note`, `status`, `NextAppId`, `created_at`, `updated_at`, `deleted_at`) VALUES
(30, '2024-11-11 18:00:00', '2024-11-11 20:00:00', 33, 24, 2, 'start', '', 1, 35, '2024-11-09 08:58:46', '2025-02-05 14:55:51', NULL),
(29, '2024-11-11 14:12:00', '2024-11-11 08:00:00', 34, 24, 1, 'start', NULL, 1, 36, '2024-11-09 08:42:26', '2024-11-11 10:27:43', NULL),
(31, '2024-11-13 13:00:00', '2024-11-13 14:00:00', 36, 24, 1, 'start', NULL, 3, 37, '2024-11-13 07:25:47', '2024-11-13 12:04:12', NULL),
(32, '2025-01-09 17:04:00', NULL, 38, 37, 1, 'start', NULL, 1, 0, '2025-01-09 17:04:43', '2025-01-22 04:36:24', NULL),
(33, '2025-01-09 17:09:01', NULL, 40, 39, 2, 'start', NULL, 1, 0, '2025-01-09 17:09:01', '2025-01-09 17:09:01', NULL),
(34, '2025-01-10 10:28:00', NULL, 39, 38, 2, 'start testing', NULL, 1, 46, '2025-01-10 10:28:56', '2025-01-29 19:58:21', NULL),
(35, '2025-01-10 14:21:00', '2025-01-12 00:30:00', 44, 42, 2, 'start11', NULL, 1, 45, '2025-01-10 14:21:21', '2025-01-11 22:18:36', '2025-01-12 03:01:38'),
(36, '2025-01-31 15:20:00', NULL, 48, 46, 2, 'start', NULL, 1, 0, '2025-01-31 15:20:20', '2025-01-31 17:56:18', NULL),
(38, '2025-01-31 15:25:10', NULL, 48, 46, 2, 'start', NULL, 1, 0, '2025-01-31 15:25:10', '2025-01-31 15:25:10', NULL),
(39, '2025-01-31 15:26:49', NULL, 49, 47, 1, 'start', NULL, 1, 0, '2025-01-31 15:26:49', '2025-01-31 15:26:49', NULL),
(40, '2025-01-31 16:13:04', NULL, 15, 52, 0, 'start', NULL, 1, 0, '2025-01-31 16:13:04', '2025-01-31 16:13:04', NULL),
(41, '2025-01-31 16:27:51', NULL, 14, 50, 0, 'start', NULL, 1, 0, '2025-01-31 16:27:51', '2025-01-31 16:27:51', NULL),
(42, '2025-01-31 16:46:00', NULL, 1, 45, 0, 'start', 'yyyyy', 1, 0, '2025-01-31 16:46:39', '2025-02-02 18:02:53', NULL),
(43, '2025-01-31 16:47:41', NULL, 11, 12, NULL, 'start', NULL, 1, 0, '2025-01-31 16:47:41', '2025-01-31 16:47:41', NULL),
(44, '2025-01-31 16:47:44', NULL, 9, 9, NULL, 'start', NULL, 1, 0, '2025-01-31 16:47:44', '2025-01-31 16:47:44', NULL),
(45, '2025-01-31 16:47:47', NULL, 14, 50, 0, 'start', NULL, 1, 0, '2025-01-31 16:47:47', '2025-01-31 16:47:47', NULL),
(46, '2025-01-31 16:47:50', NULL, 15, 52, 0, 'start', NULL, 1, 0, '2025-01-31 16:47:50', '2025-01-31 16:47:50', NULL),
(47, '2025-01-31 17:12:30', NULL, 22, 1, NULL, 'start', NULL, 1, 0, '2025-01-31 17:12:30', '2025-01-31 17:12:30', NULL),
(48, '2025-01-31 17:13:26', NULL, 19, 20, NULL, 'start', NULL, 1, 0, '2025-01-31 17:13:26', '2025-01-31 17:13:26', NULL),
(49, '2025-01-31 17:14:57', NULL, 24, 25, NULL, 'start', NULL, 1, 0, '2025-01-31 17:14:57', '2025-01-31 17:14:57', NULL),
(50, '2025-01-31 17:27:00', NULL, 12, 51, 0, 'start', NULL, 1, 0, '2025-01-31 17:27:24', '2025-01-31 17:28:27', NULL),
(51, '2025-01-31 17:48:05', NULL, 12, 54, 0, 'start', NULL, 1, 0, '2025-01-31 17:48:05', '2025-01-31 17:48:05', NULL),
(52, '2025-01-31 17:48:26', NULL, 20, 55, 0, 'start', NULL, 1, 0, '2025-01-31 17:48:26', '2025-01-31 17:48:26', NULL),
(53, '2025-01-31 17:48:58', NULL, 25, 56, 0, 'start', NULL, 1, 0, '2025-01-31 17:48:58', '2025-01-31 17:48:58', NULL),
(54, '2025-01-31 17:50:06', NULL, 27, 57, 0, 'start', NULL, 1, 0, '2025-01-31 17:50:06', '2025-01-31 17:50:06', NULL),
(55, '2025-01-31 17:50:37', NULL, 48, 46, 2, 'start', NULL, 1, 0, '2025-01-31 17:50:37', '2025-01-31 17:50:37', NULL),
(56, '2025-01-31 17:50:41', NULL, 48, 46, 2, 'start', NULL, 1, 0, '2025-01-31 17:50:41', '2025-01-31 17:50:41', NULL),
(57, '2025-01-31 17:50:44', NULL, 48, 46, 2, 'start', NULL, 1, 0, '2025-01-31 17:50:44', '2025-01-31 17:50:44', NULL),
(58, '2025-01-31 17:51:00', NULL, 49, 47, 1, 'start', '', 1, 0, '2025-01-31 17:51:02', '2025-02-03 10:27:08', NULL),
(59, '2025-01-31 17:51:34', NULL, 50, 48, 0, 'start', NULL, 1, 0, '2025-01-31 17:51:34', '2025-01-31 17:51:34', NULL),
(60, '2025-01-31 17:51:00', NULL, 51, 25, 4, 'start', 'test', 1, 0, '2025-01-31 17:51:38', '2025-02-03 04:21:21', NULL),
(61, '2025-02-03 11:50:00', NULL, 52, 60, 2, 'start', '', 1, 0, '2025-02-03 11:50:37', '2025-02-03 15:04:28', NULL),
(62, '2025-02-03 15:31:00', NULL, 26, 7, NULL, 'start', 'ss\ndsd', 1, 0, '2025-02-03 15:31:40', '2025-02-25 08:11:45', NULL),
(63, '2025-02-10 05:22:00', NULL, 53, 20, 2, 'start', '', 1, 0, '2025-02-10 05:22:31', '2025-02-10 05:31:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `treatment_advices`
--

DROP TABLE IF EXISTS `treatment_advices`;
CREATE TABLE IF NOT EXISTS `treatment_advices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `treatment_id` int(200) NOT NULL,
  `adviced_id` int(11) NOT NULL,
  `value` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `treat_medical_unique` (`treatment_id`,`adviced_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment_advices`
--

INSERT INTO `treatment_advices` (`id`, `treatment_id`, `adviced_id`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 23, 22, NULL, '2024-10-01 22:44:22', '2024-10-01 22:44:22', NULL),
(3, 23, 23, NULL, '2024-10-01 22:44:27', '2024-10-01 22:44:27', NULL),
(4, 24, 31, NULL, '2024-10-06 03:30:23', '2024-10-06 03:30:23', NULL),
(5, 25, 31, NULL, '2024-10-06 03:55:19', '2024-10-06 03:55:19', NULL),
(6, 27, 22, NULL, '2024-11-04 22:59:06', '2024-11-04 22:59:06', NULL),
(7, 30, 31, NULL, '2024-11-09 10:57:29', '2024-11-09 10:57:29', NULL),
(8, 31, 31, NULL, '2024-11-13 07:26:44', '2024-11-13 07:26:44', NULL),
(9, 35, 24, NULL, '2025-01-11 14:51:38', '2025-01-11 14:51:38', NULL),
(15, 34, 33, NULL, NULL, NULL, NULL),
(13, 34, 22, NULL, NULL, NULL, NULL),
(14, 34, 25, NULL, NULL, NULL, NULL),
(16, 34, 34, NULL, NULL, NULL, NULL),
(17, 36, 23, NULL, NULL, NULL, NULL),
(18, 50, 34, NULL, NULL, NULL, NULL),
(19, 50, 33, NULL, NULL, NULL, NULL),
(20, 36, 33, NULL, NULL, NULL, NULL),
(21, 36, 34, NULL, NULL, NULL, NULL),
(22, 60, 34, NULL, NULL, NULL, NULL),
(23, 30, 34, NULL, NULL, NULL, NULL),
(24, 63, 33, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `treatment_done`
--

DROP TABLE IF EXISTS `treatment_done`;
CREATE TABLE IF NOT EXISTS `treatment_done` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TreatmentDone` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment_done`
--

INSERT INTO `treatment_done` (`id`, `TreatmentDone`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'RCT', '2024-11-05 06:13:59', '2024-11-05 06:15:57', NULL),
(2, 'EXTRACTION', '2024-11-05 06:16:41', '2024-11-05 06:16:41', NULL),
(3, 'SCALING', '2024-11-05 06:17:03', '2024-11-05 06:17:03', NULL),
(4, 'CURETTAGE', '2024-11-05 06:17:53', '2024-11-05 06:17:53', NULL),
(5, 'OPERCULECTOMY', '2024-11-05 06:18:51', '2024-11-05 06:18:51', NULL),
(6, 'RESTORATION', '2024-11-05 06:19:14', '2024-11-05 06:19:14', NULL),
(7, 'SURGICAL EXTRACTION', '2024-11-05 06:19:41', '2024-11-05 06:19:41', NULL),
(8, 'TEAMP RESTORATION', '2024-11-05 06:20:05', '2024-11-05 06:20:05', NULL),
(9, 'hiii hello', '2024-12-31 14:42:27', '2024-12-31 14:42:45', '2024-12-31 14:43:00'),
(10, 'pp', '2025-01-03 13:56:09', '2025-01-03 13:56:15', '2025-01-03 13:56:18');

-- --------------------------------------------------------

--
-- Table structure for table `treatment_medical_histories`
--

DROP TABLE IF EXISTS `treatment_medical_histories`;
CREATE TABLE IF NOT EXISTS `treatment_medical_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `treatment_id` int(200) NOT NULL,
  `medical_history_id` int(11) NOT NULL,
  `value` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `treat_medical_unique` (`treatment_id`,`medical_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment_medical_histories`
--

INSERT INTO `treatment_medical_histories` (`id`, `treatment_id`, `medical_history_id`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 23, 5, NULL, '2024-10-01 18:50:17', '2024-10-01 18:50:17', NULL),
(11, 23, 6, NULL, '2024-10-01 18:50:22', '2024-10-01 18:50:22', NULL),
(8, 23, 4, NULL, '2024-10-01 18:49:54', '2024-10-01 18:49:54', NULL),
(13, 24, 11, NULL, '2024-10-06 03:30:04', '2024-10-06 03:30:04', NULL),
(14, 25, 11, NULL, '2024-10-06 03:54:54', '2024-10-06 03:54:54', NULL),
(15, 26, 11, NULL, '2024-11-04 10:55:47', '2024-11-04 10:55:47', NULL),
(16, 27, 15, NULL, '2024-11-04 22:58:39', '2024-11-04 22:58:39', NULL),
(17, 27, 14, NULL, '2024-11-04 22:58:52', '2024-11-04 22:58:52', NULL),
(18, 30, 11, NULL, '2024-11-09 10:57:14', '2024-11-09 10:57:14', NULL),
(19, 31, 15, NULL, '2024-11-13 07:26:21', '2024-11-13 07:26:21', NULL),
(20, 35, 10, NULL, '2025-01-11 14:05:50', '2025-01-11 14:05:50', NULL),
(43, 34, 4, NULL, NULL, NULL, NULL),
(42, 34, 5, NULL, NULL, NULL, NULL),
(34, 34, 14, NULL, '2025-01-19 17:18:08', '2025-01-19 17:18:08', NULL),
(41, 34, 12, NULL, NULL, NULL, NULL),
(44, 34, 6, NULL, NULL, NULL, NULL),
(40, 34, 7, NULL, NULL, NULL, NULL),
(45, 36, 5, NULL, NULL, NULL, NULL),
(46, 50, 4, NULL, NULL, NULL, NULL),
(47, 50, 6, NULL, NULL, NULL, NULL),
(48, 36, 4, NULL, NULL, NULL, NULL),
(49, 60, 5, NULL, NULL, NULL, NULL),
(50, 60, 4, NULL, NULL, NULL, NULL),
(51, 63, 5, NULL, NULL, NULL, NULL),
(52, 63, 4, NULL, NULL, NULL, NULL),
(53, 63, 6, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `treatment_medicines`
--

DROP TABLE IF EXISTS `treatment_medicines`;
CREATE TABLE IF NOT EXISTS `treatment_medicines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `treatment_id` int(200) NOT NULL,
  `medicine_id` int(11) NOT NULL,
  `Dosage` varchar(100) DEFAULT '000',
  `frequency` tinyint(4) NOT NULL,
  `duration_quantity` tinyint(4) DEFAULT NULL,
  `duration_unit` varchar(10) DEFAULT NULL,
  `timing` tinyint(1) DEFAULT NULL COMMENT '0: before food, 1: after food',
  `tab_cap` tinyint(1) NOT NULL COMMENT '0 for Tab. , 1 for Cap.',
  `syrup_dose` varchar(5) DEFAULT NULL,
  `is_extranote` tinyint(1) DEFAULT NULL,
  `extranote` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `treat_medical_unique` (`treatment_id`,`medicine_id`)
) ENGINE=MyISAM AUTO_INCREMENT=306 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment_medicines`
--

INSERT INTO `treatment_medicines` (`id`, `treatment_id`, `medicine_id`, `Dosage`, `frequency`, `duration_quantity`, `duration_unit`, `timing`, `tab_cap`, `syrup_dose`, `is_extranote`, `extranote`, `created_at`, `updated_at`, `deleted_at`) VALUES
(69, 29, 1, '{\"morning\":\"0\",\"noon\":\"1\",\"night\":\"0\"}', 1, 10, '1', 1, 1, NULL, NULL, NULL, '2024-11-11 10:53:51', '2024-11-11 10:53:51', NULL),
(299, 30, 1, '{\"morning\":1,\"noon\":1,\"night\":0}', 1, 2, '2', 1, 1, '', 0, '', NULL, NULL, NULL),
(300, 30, 2, '{\"morning\":1,\"noon\":1,\"night\":1}', 1, 20, '1', 1, 1, '', 0, '', NULL, NULL, NULL),
(71, 29, 3, '{\"morning\":\"0\",\"noon\":\"1\",\"night\":\"0\"}', 1, 10, '1', 2, 1, NULL, NULL, NULL, '2024-11-11 10:53:51', '2024-11-11 10:53:51', NULL),
(70, 29, 4, '{\"morning\":\"1\",\"noon\":\"1\",\"night\":\"0\"}', 1, 1, '2', 1, 1, NULL, NULL, NULL, '2024-11-11 10:53:51', '2024-11-11 10:53:51', NULL),
(68, 29, 5, '{\"morning\":\"1\",\"noon\":\"0\",\"night\":\"1\"}', 1, 30, '1', 1, 1, NULL, NULL, NULL, '2024-11-11 10:53:51', '2024-11-11 10:53:51', NULL),
(67, 29, 2, '{\"morning\":\"1\",\"noon\":\"0\",\"night\":\"1\"}', 1, 14, '1', 1, 1, NULL, NULL, NULL, '2024-11-11 10:53:51', '2024-11-11 10:53:51', NULL),
(136, 31, 5, '{\"morning\":\"0\",\"noon\":\"1\",\"night\":\"0\"}', 1, 7, '1', 2, 1, NULL, NULL, NULL, '2024-11-13 12:04:12', '2024-11-13 12:04:12', NULL),
(135, 31, 3, '{\"morning\":\"1\",\"noon\":\"1\",\"night\":\"1\"}', 1, 20, '1', 2, 1, NULL, NULL, NULL, '2024-11-13 12:04:12', '2024-11-13 12:04:12', NULL),
(134, 31, 1, '{\"morning\":\"1\",\"noon\":\"1\",\"night\":\"1\"}', 1, 50, '1', 1, 1, NULL, NULL, NULL, '2024-11-13 12:04:12', '2024-11-13 12:04:12', NULL),
(139, 35, 5, '{\"morning\":\"1\",\"noon\":\"1\",\"night\":\"0\"}', 1, 10, '1', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(281, 36, 3, '{\"morning\":0,\"noon\":0,\"night\":1}', 1, 10, '1', 1, 2, '', 0, '', NULL, NULL, NULL),
(269, 34, 1, '{\"morning\":0,\"noon\":1,\"night\":1}', 1, 16, '1', 1, 1, '', 0, '', NULL, NULL, NULL),
(270, 34, 5, '{\"morning\":1,\"noon\":0,\"night\":1}', 1, 20, '1', 1, 3, '5 ml', 0, '', NULL, NULL, NULL),
(166, 32, 1, '{\"morning\":\"0\",\"noon\":\"1\",\"night\":\"0\"}', 2, 2, '1', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(271, 34, 12, '{\"morning\":0,\"noon\":0,\"night\":0}', 1, 2, '1', 1, 2, '', 1, 'testing', NULL, NULL, NULL),
(280, 36, 5, '{\"morning\":1,\"noon\":0,\"night\":1}', 1, 20, '1', 1, 3, '5 ml', 0, '', NULL, NULL, NULL),
(274, 50, 1, '{\"morning\":1,\"noon\":1,\"night\":1}', 2, 7, '2', 1, 1, '', 0, '', NULL, NULL, NULL),
(275, 50, 5, '{\"morning\":1,\"noon\":0,\"night\":1}', 1, 20, '1', 1, 3, '5 ml', 0, '', NULL, NULL, NULL),
(279, 36, 1, '{\"morning\":1,\"noon\":1,\"night\":1}', 2, 7, '2', 1, 1, '', 0, '', NULL, NULL, NULL),
(287, 42, 5, '{\"morning\":1,\"noon\":0,\"night\":1}', 1, 20, '1', 1, 3, '5 ml', 0, '', NULL, NULL, NULL),
(288, 60, 5, '{\"morning\":1,\"noon\":0,\"night\":1}', 1, 20, '1', 1, 3, '5 ml', 0, '', NULL, NULL, NULL),
(289, 60, 1, '{\"morning\":1,\"noon\":1,\"night\":1}', 2, 7, '2', 1, 1, '', 0, '', NULL, NULL, NULL),
(293, 58, 5, '{\"morning\":1,\"noon\":0,\"night\":1}', 1, 20, '1', 1, 1, '', 0, '', NULL, NULL, NULL),
(292, 58, 1, '{\"morning\":1,\"noon\":1,\"night\":1}', 2, 7, '2', 1, 1, '', 0, '', NULL, NULL, NULL),
(294, 58, 2, '{\"morning\":1,\"noon\":0,\"night\":1}', 1, 10, '1', 1, 1, '', 0, '', NULL, NULL, NULL),
(298, 61, 4, '{\"morning\":1,\"noon\":1,\"night\":1}', 1, 2, '2', 1, 3, '5 ml', 0, '', NULL, NULL, NULL),
(301, 63, 1, '{\"morning\":1,\"noon\":1,\"night\":1}', 2, 7, '2', 1, 1, '', 0, '', NULL, NULL, NULL),
(302, 63, 5, '{\"morning\":1,\"noon\":0,\"night\":1}', 1, 20, '1', 2, 3, '5 ml', 0, '', NULL, NULL, NULL),
(303, 63, 8, '{\"morning\":1,\"noon\":0,\"night\":1}', 1, 1, '1', 1, 3, '2', 1, 'test', NULL, NULL, NULL),
(305, 62, 5, '{\"morning\":1,\"noon\":0,\"night\":1}', 1, 20, '1', 2, 3, '5 ml', 0, '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `treatment_oral_examinations`
--

DROP TABLE IF EXISTS `treatment_oral_examinations`;
CREATE TABLE IF NOT EXISTS `treatment_oral_examinations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `treatment_id` int(200) NOT NULL,
  `oral_examination_id` int(11) NOT NULL,
  `teeth_UL` varchar(20) NOT NULL,
  `teeth_UR` varchar(20) NOT NULL,
  `teeth_LL` varchar(20) NOT NULL,
  `teeth_LR` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `treat_oral_exa_unique` (`treatment_id`,`oral_examination_id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment_oral_examinations`
--

INSERT INTO `treatment_oral_examinations` (`id`, `treatment_id`, `oral_examination_id`, `teeth_UL`, `teeth_UR`, `teeth_LL`, `teeth_LR`, `created_at`, `updated_at`, `deleted_at`) VALUES
(54, 34, 5, '4', '5', '6', '7', '2025-01-29 20:11:47', '2025-01-29 20:11:47', NULL),
(55, 34, 6, '7', '', '', '1', '2025-01-29 20:11:47', '2025-01-29 20:11:47', NULL),
(57, 36, 5, '4', '6', '', '', '2025-01-31 17:52:05', '2025-01-31 17:52:05', NULL),
(61, 60, 5, '7', '', '', '', '2025-02-03 09:44:51', '2025-02-03 09:44:51', NULL),
(62, 30, 4, '4', '', '', '', '2025-02-05 14:55:30', '2025-02-05 14:55:30', NULL),
(67, 63, 22, '', '', '', '', '2025-02-20 10:49:01', '2025-02-20 10:49:01', NULL),
(66, 63, 4, '7', '', '', '', '2025-02-20 10:49:01', '2025-02-20 10:49:01', NULL),
(68, 63, 25, '', '', '', '', '2025-02-20 10:49:01', '2025-02-20 10:49:01', NULL),
(69, 63, 26, '', '', '', '', '2025-02-20 10:49:01', '2025-02-20 10:49:01', NULL),
(70, 63, 5, '', '', '', '', '2025-02-20 10:49:01', '2025-02-20 10:49:01', NULL),
(71, 63, 27, '', '', '', '', '2025-02-20 10:49:01', '2025-02-20 10:49:01', NULL),
(72, 62, 4, '4', '', '', '', '2025-02-25 08:11:22', '2025-02-25 08:11:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `treatment_other_pages`
--

DROP TABLE IF EXISTS `treatment_other_pages`;
CREATE TABLE IF NOT EXISTS `treatment_other_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `treatment_id` int(11) NOT NULL,
  `page` tinyint(4) NOT NULL,
  `date_time` datetime NOT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment_other_pages`
--

INSERT INTO `treatment_other_pages` (`id`, `treatment_id`, `page`, `date_time`, `remarks`, `note`) VALUES
(1, 34, 1, '2025-01-30 09:11:49', 'test', ''),
(2, 34, 2, '2025-01-30 09:11:49', 'test', ''),
(3, 34, 3, '2025-01-30 15:13:29', NULL, ''),
(4, 34, 4, '2025-01-30 15:13:31', NULL, ''),
(5, 42, 1, '2025-02-03 00:46:42', NULL, ''),
(6, 60, 1, '2025-02-03 10:04:08', 'nbnbn', 'à¦¹à¦¹à¦¹à¦¹'),
(7, 60, 2, '2025-02-03 15:00:29', 'testrr', 'ttttt'),
(8, 61, 1, '2025-02-03 20:33:49', '', ''),
(9, 63, 1, '2025-02-19 21:19:32', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `treatment_other_page_medicines`
--

DROP TABLE IF EXISTS `treatment_other_page_medicines`;
CREATE TABLE IF NOT EXISTS `treatment_other_page_medicines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `treatment_page_id` int(200) NOT NULL,
  `medicine_id` int(11) NOT NULL,
  `Dosage` varchar(100) DEFAULT '000',
  `frequency` tinyint(4) NOT NULL,
  `duration_quantity` tinyint(4) DEFAULT NULL,
  `duration_unit` varchar(10) DEFAULT NULL,
  `timing` tinyint(1) DEFAULT NULL COMMENT '0: before food, 1: after food',
  `tab_cap` tinyint(1) NOT NULL COMMENT '0 for Tab. , 1 for Cap.',
  `syrup_dose` varchar(5) DEFAULT NULL,
  `is_extranote` tinyint(1) DEFAULT NULL,
  `extranote` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `treat_medical_unique` (`treatment_page_id`,`medicine_id`)
) ENGINE=MyISAM AUTO_INCREMENT=288 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment_other_page_medicines`
--

INSERT INTO `treatment_other_page_medicines` (`id`, `treatment_page_id`, `medicine_id`, `Dosage`, `frequency`, `duration_quantity`, `duration_unit`, `timing`, `tab_cap`, `syrup_dose`, `is_extranote`, `extranote`, `created_at`, `updated_at`, `deleted_at`) VALUES
(69, 5, 1, '{\"morning\":\"0\",\"noon\":\"1\",\"night\":\"0\"}', 1, 10, '1', 1, 1, NULL, NULL, NULL, '2024-11-11 10:53:51', '2024-11-11 10:53:51', NULL),
(76, 30, 2, '{\"morning\":\"1\",\"noon\":\"1\",\"night\":\"1\"}', 1, 20, '1', 1, 1, NULL, NULL, NULL, '2024-11-13 07:25:18', '2024-11-13 07:25:18', NULL),
(77, 30, 1, '{\"morning\":\"1\",\"noon\":\"1\",\"night\":\"0\"}', 1, 2, '2', 1, 1, NULL, NULL, NULL, '2024-11-13 07:25:18', '2024-11-13 07:25:18', NULL),
(71, 5, 3, '{\"morning\":\"0\",\"noon\":\"1\",\"night\":\"0\"}', 1, 10, '1', 2, 1, NULL, NULL, NULL, '2024-11-11 10:53:51', '2024-11-11 10:53:51', NULL),
(70, 5, 4, '{\"morning\":\"1\",\"noon\":\"1\",\"night\":\"0\"}', 1, 1, '2', 1, 1, NULL, NULL, NULL, '2024-11-11 10:53:51', '2024-11-11 10:53:51', NULL),
(68, 5, 5, '{\"morning\":\"1\",\"noon\":\"0\",\"night\":\"1\"}', 1, 30, '1', 1, 1, NULL, NULL, NULL, '2024-11-11 10:53:51', '2024-11-11 10:53:51', NULL),
(67, 5, 2, '{\"morning\":\"1\",\"noon\":\"0\",\"night\":\"1\"}', 1, 14, '1', 1, 1, NULL, NULL, NULL, '2024-11-11 10:53:51', '2024-11-11 10:53:51', NULL),
(272, 6, 1, '{\"morning\":1,\"noon\":1,\"night\":1}', 1, 50, '1', 1, 1, '', 0, '', NULL, NULL, NULL),
(273, 6, 3, '{\"morning\":1,\"noon\":1,\"night\":1}', 1, 20, '1', 2, 1, '', 0, '', NULL, NULL, NULL),
(274, 6, 5, '{\"morning\":0,\"noon\":1,\"night\":0}', 1, 7, '1', 2, 1, '', 0, '', NULL, NULL, NULL),
(139, 35, 5, '{\"morning\":\"1\",\"noon\":\"1\",\"night\":\"0\"}', 1, 10, '1', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(269, 34, 1, '{\"morning\":0,\"noon\":1,\"night\":1}', 1, 16, '1', 1, 1, '', 0, '', NULL, NULL, NULL),
(270, 34, 5, '{\"morning\":1,\"noon\":0,\"night\":1}', 1, 20, '1', 1, 3, '5 ml', 0, '', NULL, NULL, NULL),
(166, 32, 1, '{\"morning\":\"0\",\"noon\":\"1\",\"night\":\"0\"}', 2, 2, '1', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(271, 34, 12, '{\"morning\":0,\"noon\":0,\"night\":0}', 1, 2, '1', 1, 2, '', 1, 'testing', NULL, NULL, NULL),
(275, 6, 4, '{\"morning\":1,\"noon\":1,\"night\":1}', 1, 2, '2', 1, 2, '', 0, '', NULL, NULL, NULL),
(280, 7, 4, '{\"morning\":1,\"noon\":1,\"night\":1}', 1, 2, '1', 1, 2, '', 0, '', NULL, NULL, NULL),
(281, 8, 12, '{\"morning\":1,\"noon\":1,\"night\":1}', 1, 2, '1', 1, 3, '9', 1, 'lkll', NULL, NULL, NULL),
(282, 8, 4, '{\"morning\":1,\"noon\":1,\"night\":1}', 1, 2, '2', 1, 3, '5 ml', 0, '', NULL, NULL, NULL),
(283, 8, 1, '{\"morning\":1,\"noon\":1,\"night\":1}', 2, 7, '2', 1, 1, '', 0, '', NULL, NULL, NULL),
(286, 9, 5, '{\"morning\":1,\"noon\":0,\"night\":1}', 1, 20, '1', 2, 3, '5 ml', 0, '', NULL, NULL, NULL),
(287, 9, 3, '{\"morning\":1,\"noon\":1,\"night\":1}', 1, 10, '1', 2, 3, '5 ml', 0, '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `treatment_other_page_treatment_done`
--

DROP TABLE IF EXISTS `treatment_other_page_treatment_done`;
CREATE TABLE IF NOT EXISTS `treatment_other_page_treatment_done` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `treatment_page_id` int(11) NOT NULL,
  `treatment_done_id` int(11) NOT NULL,
  `teeth_UL` varchar(20) NOT NULL,
  `teeth_UR` varchar(20) NOT NULL,
  `teeth_LL` varchar(20) NOT NULL,
  `teeth_LR` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `treat_oral_exa_unique` (`treatment_page_id`,`treatment_done_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment_other_page_treatment_done`
--

INSERT INTO `treatment_other_page_treatment_done` (`id`, `treatment_page_id`, `treatment_done_id`, `teeth_UL`, `teeth_UR`, `teeth_LL`, `teeth_LR`, `created_at`, `updated_at`, `deleted_at`) VALUES
(18, 5, 2, '5', '', '', '', '2025-01-29 17:40:18', '2025-01-29 17:40:18', NULL),
(19, 5, 1, '8', '4', '4', '5', '2025-01-29 17:40:18', '2025-01-29 17:40:18', NULL),
(20, 6, 2, '4', '', '', '', '2025-02-03 05:58:54', '2025-02-03 05:58:54', NULL),
(21, 7, 2, '4', '', '', '', '2025-02-03 09:33:00', '2025-02-03 09:33:00', NULL),
(22, 9, 1, '4', '', '', '', '2025-02-19 16:01:15', '2025-02-19 16:01:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `treatment_status`
--

DROP TABLE IF EXISTS `treatment_status`;
CREATE TABLE IF NOT EXISTS `treatment_status` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment_status`
--

INSERT INTO `treatment_status` (`id`, `name`) VALUES
(1, 'Start'),
(2, 'Running '),
(3, 'Complete'),
(4, 'Cancel');

-- --------------------------------------------------------

--
-- Table structure for table `treatment_teeth_treatment_type`
--

DROP TABLE IF EXISTS `treatment_teeth_treatment_type`;
CREATE TABLE IF NOT EXISTS `treatment_teeth_treatment_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `treatment_id` int(11) NOT NULL,
  `teeth_treatment_id` int(11) NOT NULL,
  `teeth_UL` varchar(20) NOT NULL,
  `teeth_UR` varchar(20) NOT NULL,
  `teeth_LL` varchar(20) NOT NULL,
  `teeth_LR` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `treat_oral_exa_unique` (`treatment_id`,`teeth_treatment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment_teeth_treatment_type`
--

INSERT INTO `treatment_teeth_treatment_type` (`id`, `treatment_id`, `teeth_treatment_id`, `teeth_UL`, `teeth_UR`, `teeth_LL`, `teeth_LR`, `created_at`, `updated_at`, `deleted_at`) VALUES
(18, 34, 2, '5', '', '', '', '2025-01-29 17:40:18', '2025-01-29 17:40:18', NULL),
(19, 34, 1, '8', '4', '4', '5', '2025-01-29 17:40:18', '2025-01-29 17:40:18', NULL),
(27, 60, 2, '4', '', '', '4', '2025-02-03 04:20:53', '2025-02-03 04:20:53', NULL),
(21, 50, 2, '4', '', '', '', '2025-01-31 17:28:45', '2025-01-31 17:28:45', NULL),
(22, 50, 1, '', '5', '', '', '2025-01-31 17:28:45', '2025-01-31 17:28:45', NULL),
(26, 36, 3, '9', '', '8', '', '2025-01-31 18:01:34', '2025-01-31 18:01:34', NULL),
(28, 30, 2, '4', '', '', '', '2025-02-05 14:55:41', '2025-02-05 14:55:41', NULL),
(29, 63, 1, '7', '', '', '', '2025-02-10 05:31:37', '2025-02-10 05:31:37', NULL),
(30, 62, 1, '3', '', '', '', '2025-02-25 08:11:41', '2025-02-25 08:11:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `treatment_types`
--

DROP TABLE IF EXISTS `treatment_types`;
CREATE TABLE IF NOT EXISTS `treatment_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TreatmentType` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment_types`
--

INSERT INTO `treatment_types` (`id`, `TreatmentType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'RCT', '2024-11-05 06:13:59', '2024-11-05 06:15:57', NULL),
(2, 'EXTRACTION', '2024-11-05 06:16:41', '2024-11-05 06:16:41', NULL),
(3, 'SCALING', '2024-11-05 06:17:03', '2024-11-05 06:17:03', NULL),
(4, 'CURETTAGE', '2024-11-05 06:17:53', '2024-11-05 06:17:53', NULL),
(5, 'OPERCULECTOMY', '2024-11-05 06:18:51', '2024-11-05 06:18:51', NULL),
(6, 'RESTORATION', '2024-11-05 06:19:14', '2024-11-05 06:19:14', NULL),
(7, 'SURGICAL EXTRACTION', '2024-11-05 06:19:41', '2024-11-05 06:19:41', NULL),
(8, 'TEAMP RESTORATION', '2024-11-05 06:20:05', '2024-11-05 06:20:05', NULL),
(9, 'hiii hello', '2024-12-31 14:42:27', '2024-12-31 14:42:45', '2024-12-31 14:43:00'),
(10, 'pp', '2025-01-03 13:56:09', '2025-01-03 13:56:15', '2025-01-03 13:56:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` tinyint(4) NOT NULL,
  `refer_id` int(11) NOT NULL,
  `isApproved` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `permission` bigint(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unik_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `description`, `email`, `password`, `image`, `type`, `refer_id`, `isApproved`, `status`, `permission`, `created_at`, `updated_at`) VALUES
(1, 'pverma78801', 'silchar,Rongpur-09', 'user description2', 'deepanjandeys@gmail.com', '$2b$12$XCYLaw0FuTEQxEE8S5Wk4.mkLkNFEGLJdhqG3qtDsNmeMx9hOzLRO', 'avatar-01.jpg', 1, 1, 1, 1, -1, '2022-09-01 20:12:33', '2025-01-02 02:54:55'),
(3, 'counter', 'silchar,Rongpur-09', 'testing', 'deepanjandeys@gmail.com', '$2y$10$jyX6a5Fd8irlJ4J98/yi0.0VYwllOXJ0iPu6R0.st4K/y7rwCJ4bm', 'admin_counter_1726505071.jpg', 3, 1, 1, 0, 68719476735, '2022-09-01 20:12:33', '2025-01-05 11:51:08'),
(22, 'mnandi9332', 'Badarpur, Jhumbasti', 'Near kkkk', 'monn@gmail.com', '$2y$10$Kan7aq337uxIz3UA5JZaXeg6MSekxN2FnCqcbudhqhgLjSWWegSMC', 'a_mnandi9332_1735965458.png', 2, 11, 1, 1, 1241513567, '2024-09-25 09:38:58', '2024-09-25 09:38:58'),
(21, 'gnandi0518', 'Silchar', '', 'deepanjan@gmail.com', '$2y$10$StuVu9IrNGun5uyos6bfK.OHDhSBK3JEXGb7Zi/htZgv42HM7nXl2', '', 2, 9, 1, 1, 0, '2024-09-25 09:21:15', '2024-09-25 09:21:15'),
(23, 'pksen3147', 'Ambhikapatty', '-', 'pks@gmail.com', '$2y$10$aL0OkulzXyxJeNHCKnhvuuxN.Vng6gdPEB8tIZ8lxWbmBC3f1dSd6', 'NoImage', 3, 4, 1, 1, 0, '2024-09-25 10:02:09', '2024-09-26 05:06:16'),
(39, 'dbose1230', 'SLG', '', '', '$2y$10$EdHaXNP.xiMnROQmyBhCJO8u2KZGJfgkWSEwjsadH4XbmTC6cHvSq', '', 3, 26, 1, 1, 0, '2025-01-02 03:16:30', '2025-01-02 03:16:30'),
(37, 'vcounter3453', 'Rongpur', '', 'deepanjandeys@gmail.com', '$2y$10$iuoCrpmGGMZpLglN5FQ9supzvjNjNkMOWjPc9ITkTS/kw3UXH/WBS', '', 3, 24, 1, 0, 0, '2025-01-01 19:46:22', '2025-01-02 03:16:48'),
(42, 'admin', 'Rongpur1', 'seva sarani', 'deepanjandeys@gmail.com', '$2y$10$zO0e9uTEXHkFDu0xmdLT1uMDy3OuQBTkUF9CV9PAIYb3wVKJWE9F2', 'a_admin_1735936203.jpg', 1, 1, 1, 0, 68719476735, '2025-01-01 19:46:22', '2025-01-02 03:16:48');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
