-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 29, 2023 at 09:23 AM
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
-- Table structure for table `rawmats`
--

CREATE TABLE `rawmats` (
  `id` int(11) NOT NULL,
  `numbers` varchar(255) DEFAULT NULL COMMENT 'รหัสเอกสาร',
  `title` varchar(255) NOT NULL COMMENT 'ชื่อเอกสาร',
  `description` text COMMENT 'รายละเอียด',
  `category` int(11) DEFAULT NULL COMMENT 'หมวดหมู่',
  `supplier_name` varchar(255) DEFAULT NULL COMMENT 'ชื่อผู้ขาย',
  `rawmat_name` varchar(255) DEFAULT NULL COMMENT 'ชื่อวัตถุดิบ',
  `docs` text COMMENT 'ไฟล์เอกสาร',
  `expiration_date` date DEFAULT NULL COMMENT 'วันที่หมดอายุ',
  `status` int(11) DEFAULT NULL COMMENT 'สถานะ',
  `status_details` text COMMENT 'รายละเอียดของสถานะ',
  `ref` varchar(255) DEFAULT NULL COMMENT 'อ้างอิง',
  `created_at` datetime DEFAULT NULL COMMENT 'วันที่เอกสาร',
  `updated_at` datetime DEFAULT NULL COMMENT 'วันที่ปรับปรุง',
  `created_by` int(11) DEFAULT NULL COMMENT 'ผู้สร้าง',
  `updated_by` int(11) DEFAULT NULL COMMENT 'ผู้ปรับปรุง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rawmat_category`
--

CREATE TABLE `rawmat_category` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL COMMENT 'รหัส',
  `name` varchar(255) NOT NULL COMMENT 'หมวดหมู่',
  `details` text COMMENT 'รายละเอียด',
  `color` varchar(45) DEFAULT NULL COMMENT 'สี'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rawmat_category`
--

INSERT INTO `rawmat_category` (`id`, `code`, `name`, `details`, `color`) VALUES
(1, 'Product Spec, NFC', '', NULL, '#00DFA2'),
(2, 'Product Spec, Supplier', '', NULL, '#0079FF'),
(3, 'Test Report', '', NULL, '#FF0060'),
(4, 'Certificate', '', NULL, '#793FDF');

-- --------------------------------------------------------

--
-- Table structure for table `rawmat_status`
--

CREATE TABLE `rawmat_status` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL COMMENT 'รหัส',
  `name` varchar(255) NOT NULL COMMENT 'สถานะ',
  `details` text COMMENT 'รายละเอียด',
  `color` varchar(45) DEFAULT NULL COMMENT 'สี'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rawmat_status`
--

INSERT INTO `rawmat_status` (`id`, `code`, `name`, `details`, `color`) VALUES
(1, 'normal', 'ปกติ', NULL, '#328906'),
(2, 'in progress', 'ดำเนินการ', NULL, '#E55807'),
(3, 'cancel', 'ยกเลิก', NULL, '#666666');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rawmats`
--
ALTER TABLE `rawmats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rawmat_category`
--
ALTER TABLE `rawmat_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rawmat_status`
--
ALTER TABLE `rawmat_status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rawmats`
--
ALTER TABLE `rawmats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rawmat_category`
--
ALTER TABLE `rawmat_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rawmat_status`
--
ALTER TABLE `rawmat_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
