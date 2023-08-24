-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 24, 2023 at 09:47 AM
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `numbers` varchar(255) DEFAULT NULL COMMENT 'รหัสเอกสาร',
  `title` varchar(255) NOT NULL COMMENT 'ชื่อเอกสาร',
  `description` text COMMENT 'รายละเอียด',
  `category` int(11) DEFAULT NULL COMMENT 'หมวดหมู่',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'ชื่อสินค้า',
  `revision` int(11) DEFAULT NULL COMMENT 'ริวิชั่น',
  `reviesed_date` date DEFAULT NULL COMMENT 'วันที่แก้ไขเอกสาร',
  `product_iso` text COMMENT 'ระบบที่รองรับ',
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

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `numbers`, `title`, `description`, `category`, `product_name`, `revision`, `reviesed_date`, `product_iso`, `docs`, `expiration_date`, `status`, `status_details`, `ref`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'PS2308-000', 'Test 1', '', 1, 'Product 1', NULL, NULL, '', '{\"6007911f87854d0e3788742be9158242.pdf\":\"FSSC22000 EXP05JAN2025 (1).pdf\"}', '2023-08-24', 1, 'ทดสอบ', '5wed3exfI2iKcs_lAaC9iL', '2023-08-24 15:01:46', '2023-08-24 15:58:36', 1, 1),
(2, 'PS2308-001', 'Test 2', '', 2, 'Product 1', 1, NULL, '', '{\"0bef6b18c2fa2f082b76ed57b60b6ef5.pdf\":\"Document (1).pdf\",\"d94d62761b764819ab8540e7e134661a.pdf\":\"NT_พร้อมตาราง.pdf\"}', '2023-08-26', 2, 'asasdasdasd', 'kTRBr5nI4ggCBSbIKhRTiC', '2023-08-24 15:21:15', '2023-08-24 15:51:21', 1, 1),
(3, 'PS2308-002', 'Test 3', '', 3, 'Product 3', NULL, NULL, '', '{\"c6ee6d59cb329dc3f1b6518ab6cc88aa.pdf\":\"เลิกใช้ทรัพย์สิน NB ณัฐพล En.pdf\",\"a69f7d414c51aea46b61bff4ecf7ab51.pdf\":\"เลิกใช้ทรัพย์สิน PC ยศพนธ์ EN.pdf\"}', '2023-09-09', 2, 'ทดสอบทดสอบทดสอบทดสอบทดสอบทดสอบ', 'nujZxLia9c0Y4cDTZIR6G1', '2023-08-24 15:22:24', '2023-08-24 16:30:26', 1, 1),
(4, 'PS2308-003', 'Test 4', '', 4, 'Product 2', NULL, NULL, '', '{\"a5196b3b60e05f86e807dd91910515dc.jpg\":\"287010.jpg\",\"4c1da0ed0651723acb2d89a3690f819f.jpg\":\"287045.jpg\"}', '2027-12-29', 3, 'asdasd', '_tzT_MWHjEvRhPTQ300hmE', '2023-08-24 15:24:34', '2023-08-24 15:51:48', 1, 1),
(5, 'PS2308-004', 'Test 5', '', 1, 'Product 4', 2, '2023-08-26', '', '{\"56c0f34997bf889854254691909372c9.png\":\"chart.png\"}', '2023-10-15', 1, 'ทดสอบ', 'wzDZoxwfcrFJGp2fU12BpW', '2023-08-24 15:45:40', '2023-08-24 15:54:51', 1, 1),
(6, 'PS2308-005', 'Test 1', '', 4, 'Product 3', NULL, NULL, '', '{\"0c01815cb41e3bec5da06bdf23b3a913.pdf\":\"Document (1).pdf\",\"83b352621c303e6013f6404bcb68f2d6.pdf\":\"NT_พร้อมตาราง.pdf\"}', '2023-12-22', 1, 'fasfafasfasfasf', 'TCZ_VsjJHw2ABFmSwy3Dph', '2023-08-24 16:07:13', '2023-08-24 16:30:59', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL COMMENT 'รหัส',
  `name` varchar(255) NOT NULL COMMENT 'หมวดหมู่',
  `details` text COMMENT 'รายละเอียด',
  `color` varchar(45) DEFAULT NULL COMMENT 'สี'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `code`, `name`, `details`, `color`) VALUES
(1, 'Product Spec', 'ข้อมูลจำเพาะของผลิตภัณฑ์', 'A product specification is as common a document as there is in the world of product management. But, to truly create alignment, it has to be used alongside processes and approaches that integrate what goes into that document with the rest of the product development process.', '#0079FF'),
(2, 'Process Flow', 'แผนภาพผังกระบวนการเ', 'A process flow diagram is a way to visualize each subsequent task you and your team need to complete to hit a goal. While they were originally designed for industrial engineering, process flowcharts have become an integral tool for business project management. In this article, learn how to depict process flows with diagrams or flowcharts that help you streamline, analyze, and improve your processes.', '#FF0060'),
(3, 'Nutrition Label', 'ฉลากโภชนาการ', 'The nutrition facts label (also known as the nutrition information panel, and other slight variations) is a label required on most packaged food in many countries, showing what nutrients and other ingredients (to limit and get enough of) are in the food. Labels are usually based on official nutritional rating systems. Most countries also release overall nutrition guides for general educational purposes. In some cases, the guides are based on different dietary targets for various nutrients than the labels on specific foods.', '#884A39'),
(4, 'อย.', 'อย.', 'สำนักงานคณะกรรมการอาหารและยา (อังกฤษ: Food and Drug Administration - FDA) เป็นส่วนราชการระดับกรม ของประเทศไทย สังกัดกระทรวงสาธารณสุข มีหน้าที่ปกป้องและคุ้มครองสุขภาพประชาชนจากการบริโภคผลิตภัณฑ์สุขภาพ โดยผลิตภัณฑ์สุขภาพเหล่านั้นต้องมีคุณภาพมาตรฐานและปลอดภัย มีการส่งเสริมพฤติกรรมการบริโภคที่ถูกต้องด้วยข้อมูลวิชาการที่มีหลักฐานเชื่อถือได้และมีความเหมาะสม เพื่อให้ผู้บริโภคปลอดภัย ผู้ประกอบการก้าวไกล ระบบคุ้มครองสุขภาพไทยยั่งยืน', '#116D6E');

-- --------------------------------------------------------

--
-- Table structure for table `product_iso`
--

CREATE TABLE `product_iso` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL COMMENT 'รหัส',
  `name` varchar(255) NOT NULL COMMENT 'หมวดหมู่',
  `details` text COMMENT 'รายละเอียด',
  `color` varchar(45) DEFAULT NULL COMMENT 'สี'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_iso`
--

INSERT INTO `product_iso` (`id`, `code`, `name`, `details`, `color`) VALUES
(1, 'GHPs', 'Good Hygiene Practices ', 'GHPs ย่อมาจาก Good Hygiene Practices คือ การปฏิบัติสุขลักษณะที่ดี ซึ่งเป็นมาตรการและเงื่อนไขพื้นฐานที่ประยุกต์ใช้ในขั้นตอนใดๆตลอดห่วงโซ่อาหาร เพื่อส่งมอบอาหารที่ปลอดภัยและเหมาะสม เป็นมาตรฐานด้านความปลอดภัยทางอาหารที่ประยุกต์ใช้หลักเกณฑ์วิธีการที่ดีในการผลิตอาหาร หรือ จี เอ็ม พี (GMP, Good Manufacturing Practice) ให้เหมาะสมและสอดคล้องกับกิจกรรมการผลิตอาหาร', '#884A39'),
(2, 'Haccp', 'Hazard Analysis Critical Control Point', 'HACCP คือ มาตรฐานการผลิตที่มีมาตรการป้องกันอันตราย ที่ผู้บริโภคอาจได้รับจากการบริโภคอาหาร โดยประเทศต่าง ๆ สามารถนำแนวทางไปประยุกต์ใช้เพื่อสร้างความมั่นใจในอุตสาหกรรมอาหารทั้งโดยผู้ผลิตและผู้บริโภค ซึ่งหลักการของระบบ HACCP', '#9BABB8');

-- --------------------------------------------------------

--
-- Table structure for table `product_status`
--

CREATE TABLE `product_status` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL COMMENT 'รหัส',
  `name` varchar(255) NOT NULL COMMENT 'สถานะ',
  `details` text COMMENT 'รายละเอียด',
  `color` varchar(45) DEFAULT NULL COMMENT 'สี'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_status`
--

INSERT INTO `product_status` (`id`, `code`, `name`, `details`, `color`) VALUES
(1, 'normal', 'ปกติ', NULL, '#328906'),
(2, 'in progress', 'ดำเนินการ', NULL, '#E55807'),
(3, 'cancel', 'ยกเลิก', NULL, '#666666');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_iso`
--
ALTER TABLE `product_iso`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_status`
--
ALTER TABLE `product_status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_iso`
--
ALTER TABLE `product_iso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_status`
--
ALTER TABLE `product_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
