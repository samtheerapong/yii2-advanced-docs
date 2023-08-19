-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 19, 2023 at 10:05 AM
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
-- Table structure for table `product_spec`
--

CREATE TABLE `product_spec` (
  `id` int(11) NOT NULL,
  `product_number` varchar(50) DEFAULT NULL,
  `revision` varchar(50) DEFAULT NULL,
  `revised_date` date DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `spec` text COMMENT 'Product Spec',
  `spec_expiration` date DEFAULT NULL COMMENT 'วันหมดอายุ',
  `process` text COMMENT 'Process Flow',
  `process_expiration` date DEFAULT NULL COMMENT 'วันหมดอายุ',
  `fda` text COMMENT 'อย.',
  `fda_expiration` date DEFAULT NULL COMMENT 'วันหมดอายุ',
  `nutrition` text COMMENT 'Nutrition Label',
  `nutrition_expiration` date DEFAULT NULL COMMENT 'วันหมดอายุ',
  `iso_cert` text,
  `created_at` varchar(50) DEFAULT NULL,
  `updated_at` varchar(50) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_spec`
--

INSERT INTO `product_spec` (`id`, `product_number`, `revision`, `revised_date`, `title`, `description`, `spec`, `spec_expiration`, `process`, `process_expiration`, `fda`, `fda_expiration`, `nutrition`, `nutrition_expiration`, `iso_cert`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'S-202308-001', '3', NULL, 'ทดสอบ', '', 'S-202308-001-ff145def.pdf', NULL, 'S-202308-001-02bb2fbb.pdf,S-202308-001-74ad5ca0.pdf,S-202308-001-2594adad.pdf,S-202308-001-ff145def.pdf', NULL, 'S-202308-001-ff145def.pdf', NULL, 'S-202308-001-ff145def.pdf', NULL, '', '1692321172', '1692436016', 1, 1),
(3, '002', '6', NULL, 'test', '', '', NULL, '002-BK23006230.pdf,002-HALAL ASSURANCE SYSTEM STATUS.pdf,002-FM-GR-01_Rev_06[1].pdf', NULL, '', NULL, '', NULL, '', '1692434652', '1692435860', 1, 1),
(4, 'P-202308-001', '2', '2023-08-19', 'asdas', 'asda', 'P-202308-001-FSSC22000 EXP05JAN2025.pdf', '2023-08-19', '', '2023-08-19', '', '2023-08-19', '', '2023-08-19', 'Haccp,ISO9001,ISO45001', '1692435139', '1692439421', 1, 1),
(5, 'P202308-001', '3', NULL, 'dasda', 'sdasd', '', NULL, '', NULL, '', NULL, '', NULL, 'GHPs,Haccp,ISO9001,ISO45001', '1692435176', '1692439404', 1, 1),
(6, 'P202308-002', '5', NULL, 'sdfsdf', 'sdf', 'P202308-002-WI-QC-62 Rev.03 วิธีการชักตัวอย่างเพื่อการยอมรับ_1.doc,', NULL, 'P202308-002-ข้าวหอมมะลิอินทรีย์ - กฤษณกรณ์.pdf,', NULL, 'P202308-002-ถั่วเหลือง Organic - ST-Lawrence Beans.pdf,', NULL, 'P202308-002-FM-QC-13 Rev.08 0280.23 - อรอนงค์ ชุมภู.docx,', NULL, 'GHPs,Haccp,ISO9001', '1692435230', '1692439413', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_spec`
--
ALTER TABLE `product_spec`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_spec`
--
ALTER TABLE `product_spec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
