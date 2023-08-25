-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 25, 2023 at 04:07 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.32

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
-- Table structure for table `raw_material`
--

CREATE TABLE `raw_material` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'หมวดหมู่',
  `details` text COMMENT 'รายละเอียด',
  `color` varchar(45) DEFAULT NULL COMMENT 'สี'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `raw_material`
--

INSERT INTO `raw_material` (`id`, `name`, `details`, `color`) VALUES
(1, 'ไม่ระบุ', '', '#232323'),
(2, 'ถั่วเหลือง', 'ถั่วเหลือง Organic Fair Trade', '#FD8D14'),
(3, 'เกลือ', NULL, '#504099'),
(4, 'น้ำตาล', 'น้ำตาล Organic', '#964B00'),
(5, 'ข้าวกล้อง', 'ข้าวหอมมะลิ', '#c27ba0'),
(6, 'ข้าวโพด', '', '#f1c232'),
(7, 'ข้าว', 'ข้าว Organic Fairtrade ', '#5b0f00'),
(8, 'ผักสด', 'ผักสด Organic ', '#6aa84f'),
(9, 'Soy Sauce', 'Soy Sauce', '#d5a6bd'),
(10, 'Sauce ', 'Sauce ', '#6fa8dc'),
(11, 'Vinegar', 'Vinegar', '#a61c00'),
(12, 'Miso', 'Miso ', '#ea9999');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `raw_material`
--
ALTER TABLE `raw_material`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `raw_material`
--
ALTER TABLE `raw_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
