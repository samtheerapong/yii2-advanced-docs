-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 18, 2023 at 10:02 AM
-- Server version: 5.7.39
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adv-docs`
--

-- --------------------------------------------------------

--
-- Table structure for table `auto_number`
--

CREATE TABLE `auto_number` (
  `group` varchar(32) NOT NULL,
  `number` int(11) DEFAULT NULL,
  `optimistic_lock` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auto_number`
--

INSERT INTO `auto_number` (`group`, `number`, `optimistic_lock`, `update_time`) VALUES
('202307-???', 15, 1, 1689673698),
('5bce8a536749f4b5ebc03a256521426b', 3, 1, 1689673698),
('aa12af1f00f3057c5a86dd99ac6b3fcd', 9, 1, 1689642329);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'หมวดหมู่',
  `details` text COMMENT 'รายละเอียด',
  `color` varchar(45) DEFAULT NULL COMMENT 'สี'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `details`, `color`) VALUES
(1, 'COA', 'ใบรายงานผลการตรวจวิเคราะห์สินค้า Certificate of Analysis', '#A1CCD1'),
(2, 'COI', 'หนังสือรับรองสูตรส่วนประกอบ (Certificate of Ingredient)', '#F31559'),
(3, 'ISO', 'International Organization for Standardization', '#6527BE'),
(4, 'General', 'เอกสารทั่วไป', '#090580'),
(5, 'Sale', 'เอกสารสำหรับฝ่ายขาย', '#E4A5FF'),
(6, 'QC', 'เอกสารสำหรับแผนกควบคุมคุณภาพ', '#F2BE22'),
(7, 'Report', 'รายงาน', '#6aa84f');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `numbers` varchar(255) DEFAULT NULL COMMENT 'รหัสเอกสาร',
  `title` varchar(255) NOT NULL COMMENT 'ชื่อเอกสาร',
  `description` text COMMENT 'รายละเอียด',
  `created_at` datetime DEFAULT NULL COMMENT 'วันที่เอกสาร',
  `updated_at` datetime DEFAULT NULL COMMENT 'วันที่ปรับปรุง',
  `created_by` int(11) DEFAULT NULL COMMENT 'ผู้สร้าง',
  `updated_by` int(11) DEFAULT NULL COMMENT 'ผู้ปรับปรุง',
  `categories_id` int(11) DEFAULT NULL COMMENT 'หมวดหมู่',
  `status_id` int(11) DEFAULT '1' COMMENT 'สถานะ',
  `ref` varchar(255) DEFAULT NULL COMMENT 'อ้างอิง',
  `files` text COMMENT 'ไฟล์เอกสาร'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `numbers`, `title`, `description`, `created_at`, `updated_at`, `created_by`, `updated_by`, `categories_id`, `status_id`, `ref`, `files`) VALUES
(12, '202307-001', 'ยินดีต้อนรับเข้าสู่ฝ่ายสนับสนุน Microsoft Community', '', NULL, '2023-07-18 16:53:13', NULL, NULL, 2, 2, '', 'เลิกใช้ทรัพย์สิน NB ณัฐพล En.pdf'),
(13, '202307-002', 'แอปที่มีประสิทธิภาพระดับพรีเมียม ', '', NULL, '2023-07-18 16:53:36', NULL, NULL, 2, 1, '', 'BK23005193.pdf'),
(14, '202307-003', 'ที่จัดเก็บข้อมูลบนระบบคลาวด์ 1 TB การรักษาความปลอดภัยขั้นสูง และอื่นๆ ', '', NULL, '2023-07-18 16:54:05', NULL, NULL, 1, 4, '', 'SHE-HS-01_Rev_12[1].pdf'),
(15, '202307-004', 'ทั้งหมดในการสมัครใช้งานเพียงครั้งเดียวที่สะดวกสบาย', '', NULL, '2023-07-18 12:33:24', NULL, NULL, 4, 2, '', NULL),
(16, '202307-005', 'สำหรับคำถามที่คุณแจ้งมาว่าต้องการ Download Software', '', NULL, '2023-07-18 12:33:37', NULL, NULL, 3, 3, '', NULL),
(17, '202307-006', 'ให้การรักษาความปลอดภัยบนโลกออนไลน์ทำได้ง่ายขึ้น', '', NULL, '2023-07-18 12:33:54', NULL, NULL, 5, 3, '', NULL),
(18, '202307-007', 'คุณจำเป็นต้องอยู่หน้าเครื่องคอมพิวเตอร์ที่มีปัญหา', '', NULL, '2023-07-18 12:34:20', NULL, NULL, 6, 4, '', NULL),
(19, '202307-008', 'กรุณเตรียม Product Key เพื่อการตรวจสอบสถานะของไลเซนส์ด้วยครับ', '', NULL, '2023-07-18 12:34:24', NULL, NULL, 1, 1, '', NULL),
(20, '202307-009', ' ก่อนใช้งาน คุณสามารถโทรไปยัง Microsoft Activation Team ', 'zxc3', '2023-07-18 08:05:29', '2023-07-18 16:54:44', NULL, NULL, 2, 1, 'xczxc', 'BK23004796.pdf'),
(21, '202307-001', 'dasasd', '', '2023-07-18 16:37:00', NULL, NULL, NULL, 2, 1, '', 'Document (1).pdf'),
(22, '202307-002', 'asdasd', '', '2023-07-18 16:48:02', '2023-07-18 16:54:21', NULL, NULL, 3, 1, '', 'QT3205_2023_v4.pdf'),
(23, '202307-003', 'asdasdas', '', '2023-07-18 16:48:18', '2023-07-18 16:52:55', NULL, NULL, 3, 1, '', 'NT_พร้อมตาราง.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1689666301),
('m130524_201442_init', 1689666303),
('m190124_110200_add_verification_token_column_to_user_table', 1689666303);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'สถานะ',
  `color` varchar(45) DEFAULT NULL COMMENT 'สี'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`, `color`) VALUES
(1, 'Active', '#557A46'),
(2, 'Dismiss', '#FE0000'),
(3, 'Draft', '#3AA6B9'),
(4, 'Pending', '#E7B10A');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`, `role`) VALUES
(1, 'admin', '2tzscTHLNpS0rJlIJx_Uz1qZnvi6yS_q', '$2y$13$HwJ0Osagp4BHhcjKJMS.Su1kte.bpcDMCIusYWpu088FzQai9YqC6', NULL, 'admin@admin.com', 10, 1689666356, 1689666356, 'SA3gozOob2BBbQR0Ue5t4mJQpoyb0gcp_1689666356', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auto_number`
--
ALTER TABLE `auto_number`
  ADD PRIMARY KEY (`group`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_documents_categories_idx` (`categories_id`),
  ADD KEY `fk_documents_status1_idx` (`status_id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `fk_documents_categories` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_documents_status1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
