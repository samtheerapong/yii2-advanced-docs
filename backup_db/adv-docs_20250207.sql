-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 07, 2025 at 09:59 AM
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
('0b60e3289203c28e73c88c7430b70279', 3, 1, 1738823517),
('0f12e6fda7611df70010e20a7438aeb0', 9, 1, 1702285337),
('16552843a03c819d67fee0a61f5d6531', 8, 1, 1724383850),
('202307-???', 24, 1, 1690343279),
('202308-???', 99, 1, 1693022443),
('202309-???', 6, 1, 1695716354),
('202310-???', 2, 1, 1698293856),
('202311-???', 22, 1, 1700903594),
('202312-???', 9, 1, 1702285337),
('202402-???', 1, 1, 1708567702),
('202403-???', 34, 1, 1711769747),
('202404-???', 4, 1, 1714363358),
('202405-???', 9, 1, 1715673609),
('202406-???', 11, 1, 1719203427),
('202407-???', 26, 1, 1722078799),
('202408-???', 8, 1, 1724383850),
('202409-???', 10, 1, 1727339893),
('202410-???', 20, 1, 1730356486),
('202411-???', 11, 1, 1732584759),
('202412-???', 1, 1, 1734144448),
('202501-???', 17, 1, 1738131301),
('202502-???', 3, 1, 1738823517),
('27eb129629382182047adc521b2e8c09', 17, 1, 1738131301),
('5bce8a536749f4b5ebc03a256521426b', 24, 1, 1690343279),
('68018d8ae201768b4b2392eef3eb145f', 20, 1, 1730356486),
('701d3e3ea1e4690ae077f0e2f1d5ceef', 10, 1, 1727339893),
('7f30e85886cb960fc8bbaed940dcbfae', 11, 1, 1732584759),
('846d51a98b91a1e30de833ab178a2c37', 1, 1, 1734144448),
('880f178259d217e4a7fa2caf965054e8', 22, 1, 1700903594),
('9acb9403bc8638d7a6d5147517fa0f3b', 1, 1, 1708567702),
('a9b1ef13afea4f0490004311ae569373', 6, 1, 1695716354),
('aa6d9271465832185610f50fef992ba9', 4, 1, 1714363358),
('b1f789ac90ac967baa4c831b4450fe91', 34, 1, 1711769747),
('b4261f302bc43e0617652bd30fa3643d', 2, 1, 1698293857),
('ca46d681795922dc169442e3d5584bc7', 11, 1, 1719203427),
('cb6105f484ffd5639fbc25fa3de20634', 97, 1, 1693022443),
('d0a6d1e9de2bae0c9c57494d0ab09da5', 9, 1, 1715673609),
('d4ffdf81bbecb68c117ad29a887be0e9', 26, 1, 1722078799),
('PS2308-???', 8, 1, 1693275863),
('PS2309-???', 20, 1, 1695357957),
('PS2310-???', 22, 1, 1698304201),
('PS2311-???', 54, 1, 1700818993),
('PS2312-???', 7, 1, 1703125057),
('PS2401-???', 17, 1, 1706683310),
('PS2402-???', 1, 1, 1707706051),
('PS2403-???', 2, 1, 1711619081),
('PS2404-???', 5, 1, 1714011494),
('PS2405-???', 7, 1, 1715745152),
('PS2406-???', 22, 1, 1719283660),
('PS2407-???', 29, 1, 1721878943),
('PS2408-???', 48, 1, 1725087512),
('PS2409-???', 62, 1, 1726824415),
('PS2410-???', 12, 1, 1730271428),
('PS2411-???', 5, 1, 1732157129),
('PS2412-???', 3, 1, 1734944213),
('PS2501-???', 2, 1, 1736317196),
('PS2502-???', 12, 1, 1738815406),
('RM2308-???', 1, 1, 1693302741),
('RM2311-???', 2, 1, 1700123089);

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
(1, 'ทั่วไป', 'เอกสารทั่วไป', '#434343'),
(2, 'COI', 'หนังสือรับรองสูตรส่วนประกอบ (Certificate of Ingredient)', '#F31559'),
(3, 'ISO', 'International Organization for Standardization', '#8e7cc3'),
(4, 'COA', 'ใบรายงานผลการตรวจวิเคราะห์สินค้า Certificate of Analysis', '#090580'),
(5, 'QA', 'Quality Assurance', '#ef4dd8'),
(6, 'Transport', 'ใบรับรองการขนส่ง (Transport Certificate)', '#9900ff'),
(7, 'Test Report', 'รายงานผลการทดสอบ (Test Report)', '#0000ff'),
(8, 'Certificate', 'ใบรับรอง (Master Certificate)', '#ff9900');

-- --------------------------------------------------------

--
-- Table structure for table `cert`
--

CREATE TABLE `cert` (
  `id` int(11) NOT NULL,
  `supplier_name` varchar(200) DEFAULT NULL,
  `files` text,
  `expiration_date` date DEFAULT NULL,
  `notification_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `numbers` varchar(255) DEFAULT NULL COMMENT 'รหัสเอกสาร',
  `title` varchar(255) NOT NULL COMMENT 'ชื่อเอกสาร',
  `description` text COMMENT 'รายละเอียด',
  `supplier_name` varchar(255) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL COMMENT 'วันที่หมดอายุ',
  `document_date` smallint(6) DEFAULT '60',
  `created_at` datetime DEFAULT NULL COMMENT 'วันที่เอกสาร',
  `updated_at` datetime DEFAULT NULL COMMENT 'วันที่ปรับปรุง',
  `created_by` int(11) DEFAULT NULL COMMENT 'ผู้สร้าง',
  `updated_by` int(11) DEFAULT NULL COMMENT 'ผู้ปรับปรุง',
  `raw_material` int(11) DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL COMMENT 'หมวดหมู่',
  `occupier_id` int(11) NOT NULL COMMENT 'ครอบครอง',
  `types_id` int(11) DEFAULT NULL COMMENT 'ประเภท',
  `status_id` int(11) DEFAULT '1' COMMENT 'สถานะ',
  `status_details` text,
  `ref` varchar(255) DEFAULT NULL COMMENT 'อ้างอิง',
  `docs` text COMMENT 'ไฟล์เอกสาร'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `numbers`, `title`, `description`, `supplier_name`, `expiration_date`, `document_date`, `created_at`, `updated_at`, `created_by`, `updated_by`, `raw_material`, `categories_id`, `occupier_id`, `types_id`, `status_id`, `status_details`, `ref`, `docs`) VALUES
(1, '202308-042', 'FSSC 22000 V.5.1', 'Food Safety System', '', '2025-01-05', 60, '2023-08-19 10:58:36', '2025-01-04 08:31:11', 3, 3, 1, 8, 1, 4, 2, 'ยกเลิกใช้', 'a-LkozdM5lGxVTzRvIN8-9', '{\"1e28e3b16e84080bee9bd58e192c9a15.pdf\":\"FSSC22000 EXP05JAN2025.pdf\"}'),
(2, '202308-043', 'Organic Standard', 'CERES Organic Standard (CE-OS) , Product List', '', '2023-10-31', 60, '2023-08-19 13:43:06', '2023-10-26 11:18:56', 3, 3, 1, 8, 1, 1, 2, 'ยกเลิกใช้', 'JmsCgzncLa4nW_d9yBzrvG', '{\"2a52d15a178d1da5f3758eb121c3c27c.pdf\":\"CERES_Produkteliste.pdf\",\"5eb2a930f15aaed6fc3165029a3dd27d.pdf\":\"CERES_Zertifikat_v4.pdf\",\"fffc112f5f1f3f14e33d14a0a3b234ac.pdf\":\"2022 Northern Food CERES EU cert ext 306305_2023.08.10#1.pdf\"}'),
(4, '202308-045', 'Fair Trade', 'Certificate and License', '', '2025-09-02', 60, '2023-08-22 09:45:27', '2025-02-06 13:27:14', 3, 3, 1, 8, 1, 3, 2, 'ยกเลิกใช้', '9iNq60c0iI9p5RclcydbFJ', '{\"4cd3c75aee10a65e697c36cda50dd85f.pdf\":\"CERT_Certificate  Fairtrade 2021-2025.pdf\",\"40c7eab90162b646de4fee6f941236aa.pdf\":\"LicensedProducts.pdf\"}'),
(5, '202308-046', 'GHPs HACCP', '', '', '2024-03-07', 60, '2023-08-22 09:48:20', '2024-03-06 14:20:21', 3, 3, 1, 8, 1, 4, 2, 'ยกเลิกใช้', '36jXG8TSMtw2utwHMTQ4UN', '{\"25708ba051424b5d4cfb501ba55cae43.pdf\":\"GMP  HACCP  Exp2024.pdf\"}'),
(6, '202308-047', 'ISO 9001:2015', 'ใบ cer หมดอายุ  ใน ปี 2025 \r\nแต่จะต้องทำการ Audit  ทุกปี โดย CB', '', '2025-10-17', 60, '2023-08-22 09:52:24', '2023-08-26 09:24:59', 3, 5, 1, 8, 1, 4, 1, 'ใช้งาน', '69v0ieEPXktkydzXPzpqjU', '{\"8384631f3b0ff4f5e13806ae781fac21.pdf\":\"ISO9001 2015  Exp 10 2025  EN (1).pdf\",\"bc098c9a178798211de44f838bbca6e8.pdf\":\"ISO9001 2015  exp 2025 TH.pdf\"}'),
(7, '202308-048', 'ISO 14001:2015', 'ใบ  cer  หมดอายุ  17/10/2025 \r\nมีการ Audit ทุกปี โดย CB ', '', '2025-10-17', 60, '2023-08-22 09:54:27', '2023-08-26 09:23:38', 3, 5, 1, 8, 1, 4, 1, 'ใช้งาน', 'D43dRpLFN3Mfmzi18ePLb-', '{\"3241ca3d0afa9dc4b3b8dc16d2985fc5.pdf\":\"ISO14001  Exp 10 2025 EN (1).pdf\",\"8e936e07d0c994b385447ea55b11b3a2.pdf\":\"ISO14001 Exp 10 2025 TH.pdf\"}'),
(8, '202308-049', 'ISO 22000:2018', '', '', '2024-03-07', 60, '2023-08-22 09:56:01', '2024-03-06 14:20:50', 3, 3, 1, 8, 1, 4, 2, 'ยกเลิกใช้', 'pDCBZ-yWgVjvArgZr5dX1o', '{\"ef359d6191a146973de8b75835646ea6.pdf\":\"ISO22000 (2).pdf\"}'),
(9, '202308-050', 'ISO 45001:2018', 'ใบ  cer หมดอายุปี 2025 \r\nทุกปี มีการ Audit โดย CB', '', '2025-10-17', 60, '2023-08-22 09:58:13', '2023-08-26 09:22:30', 3, 5, 1, 8, 1, 4, 1, 'ใช้งาน', 'p06YbmjLKp0wc_Ap9dYIb-', '{\"75b094b0a70809018aa665eed32ae74d.pdf\":\"ISO45001 Exp10 2025 EN (1).pdf\",\"63a3354aee38f181926c32c81113f9ba.pdf\":\"ISO45001 EXP10 2565  TH.pdf\"}'),
(10, '202308-051', 'VALID-IT Non-GM PROTOCOL', '', '', '2024-04-30', 60, '2023-08-22 10:03:16', '2024-03-29 15:02:54', 3, 3, 1, 8, 1, 5, 2, 'ยกเลิกใช้', 'IqnXq4LC47reFAcI6qEbsr', '{\"03a174aad43c729d28aeaa0c0d835aee.pdf\":\"Northern Food Complex Co Ltd - 146 (2) (2).pdf\"}'),
(11, '202308-052', 'TLS 8001:2020', 'Cert. มรท. 8001:2563', '', '2025-01-16', 60, '2023-08-22 10:08:41', '2025-01-17 08:28:12', 3, 3, 1, 8, 1, 4, 3, 'รอใบ Cert. ใหม่', 'k8o3WzJp-rL7Zt_PNrGhOi', '{\"48ddb08df9be1888f8c723962c9fda54.pdf\":\"scan-มรท.8001-2563 (2565-2568)-(Eng).pdf\",\"2dabd774fdc5b96ac3c6900ac259bf20.pdf\":\"Cert. มรท. 8001-2563 Exp.16012568 (Thai).pdf\"}'),
(12, '202308-053', 'HALAL', '', '', '2023-07-31', 60, '2023-08-22 10:25:47', '2023-10-06 16:27:15', 3, 3, 1, 8, 1, 4, 2, 'หมดอายุแล้ว', 'epO0aPt4LtaJb_YVnuUTB3', '{\"d0c5f855b201034aaa869fead18e9d32.pdf\":\"scan-Halal 2565-2566.pdf\"}'),
(13, '202308-054', 'Organic EU', '', 'Kritsanakorn Organic Farm Co., Ltd.', '2023-12-22', 60, '2023-08-22 13:19:56', '2024-06-22 09:56:36', 3, 3, 7, 8, 2, 1, 2, 'ยกเลิกใช้', 'L-HmJpu2i6tV1cPMXN1dyk', '{\"4cabc1963341ecec8fb3e63177abec36.pdf\":\"Cert_K-organic EU2023.pdf\"}'),
(15, '202308-056', 'Organic USDA-NOP', '', 'Kritsanakorn Organic Farm Co., Ltd.', '2023-12-23', 60, '2023-08-22 13:28:13', '2024-06-22 09:58:16', 3, 3, 7, 8, 2, 1, 2, 'ยกเลิกใช้', '9uVeXcvsDXgGHtobpmrsXQ', '{\"d642754fdc7ec3bed60b390900c30ad6.pdf\":\"Cert_K-organic USDA2023.pdf\"}'),
(16, '202308-057', 'Organic Standard', '', 'Raitong Organics Farm Co., Ltd.', '2022-06-30', 60, '2023-08-22 13:36:39', NULL, 3, 3, 2, 8, 2, 1, 2, 'ไม่ใช้งาน', 'O7cd03IXbaTPiPFsACYqBC', '{\"54ee980f2f55a9179e85fb1dcb16190a.pdf\":\"ใบ cer  Organic ไร่ทองEXP 30 SEP 2022.pdf\"}'),
(17, '202308-058', 'Organic Standard', '', 'Raitong Organics Farm Co., Ltd.', '2023-06-30', 60, '2023-08-22 13:38:22', NULL, 3, 3, 2, 8, 2, 1, 2, 'ไม่ใช้งาน', 'E4Akvk4w6NUptjARIdeF56', '{\"e2e135786d5fc571ddd31dc03c669ab4.pdf\":\"Organic Certificate 2022 -Raitong Organics Farm EXP 300623.pdf\"}'),
(18, '202308-059', 'Organic Standard', '', 'Raitong Organics Farm Co., Ltd.', '2024-06-30', 60, '2023-08-22 13:40:22', '2024-08-28 16:17:18', 3, 3, 2, 8, 2, 1, 4, 'หากมีการซื้อขาย ถึงจะได้รับใบ Cert. ใหม่', 'dY_RTmdoVzIlr_20xQ87pG', '{\"8a7d6dc8191f3cb23d2583263e4b6260.pdf\":\"Certificate-Raitong 2023.pdf\"}'),
(19, '202308-060', 'Fair Trade', 'Fair trade USA', 'Raitong Organics Farm Co., Ltd.', '2024-12-14', 60, '2023-08-22 13:44:37', '2024-10-19 16:42:33', 3, 3, 2, 8, 2, 3, 4, 'ใช้งาน', '9RAmvnwZwo71BAlfqqLm7u', '{\"d8369c66ab39b90be4f41b6444e65052.pdf\":\"2022-2024 FT. USA Trader Certificate (1).pdf\"}'),
(20, '202308-061', 'Organic Standard', '', 'Siam Organic Food Products Co., Ltd.', '2024-05-25', 60, '2023-08-22 13:56:34', '2024-08-23 10:29:50', 3, 3, 4, 8, 2, 1, 2, 'ยกเลิกใช้', 'kzxuqOHNgxYW_ufIiJiFzk', '{\"4a9fbd2428c02b822bbcdce8c68538e5.pdf\":\"2023_Siam Organic Food Products_Organic Cert._EUJ34VCC.pdf\"}'),
(21, '202308-062', 'Organic USDA-NOP', '', 'Siam Organic Food Products Co., Ltd.', '2024-01-28', 60, '2023-08-22 14:00:23', '2024-09-09 11:40:29', 3, 3, 4, 8, 2, 1, 2, 'ยกเลิกใช้', 'CmkUcd9v-VMRs6Jnl22288', '{\"aa60ec9adb64c88865688e43fe9dcff7.pdf\":\"2023_Siam Organic Food Products_Organic Cert_NPJ34VCC.pdf\"}'),
(22, '202308-063', 'Organic EU', '', 'Organic Fairtrade Sisaket Community Enterprise', '2024-07-11', 60, '2023-08-22 14:34:15', '2024-08-28 16:18:14', 3, 3, 2, 8, 2, 1, 4, 'หากมีการซื้อขาย ถึงจะได้รับใบ Cert. ใหม่', '7ckaOi9ZiWn_5pJFYcY9dJ', '{\"3b7f0f76cdb042ec706697e75e5d6da0.pdf\":\"CER CU 891838EU-01.2023 Srisaket.pdf\",\"65bad542bf1c6fc758a474f48b9b4302.pdf\":\"Statement Letter EU Extension Organic Fairtrade Sisaket Community Enterprise Exp.11072024.pdf\"}'),
(24, '202308-065', 'Organic Production and Labelling of Organic Products', '', 'La Compagnie Du Riz', '2024-03-31', 60, '2023-08-22 16:29:48', '2024-03-30 10:36:27', 3, 3, 1, 8, 2, 1, 2, 'ยกเลิกใช้', 'D5prtj_PgpoaWbuIdPWtmU', '{\"9dd447b5a5d038ff50d8a3009c468d8d.pdf\":\"CER-OPT59245-C255893 31.04.2024.pdf\"}'),
(25, '202308-066', 'Kosher ', 'Kosher', '', '2024-05-01', 60, '2023-08-23 10:07:18', '2024-05-06 16:26:09', 5, 3, 1, 8, 1, 5, 2, 'ยกเลิกใช้', 'gx9JUrK8PJYTRrosrtOYKK', '{\"fb6c724d2e60f1cfa83ae1f9300aa605.pdf\":\"PROJ-00004736 - Northern Foods -  Kosher til May 24.pdf\"}'),
(26, '202308-067', 'Organic EU', 'Organic EU', 'BAN UM-SANG Rice', '2024-06-03', 60, '2023-08-23 10:55:09', '2024-06-07 11:41:10', 5, 3, 7, 8, 2, 1, 2, 'ยกเลิกใช้', 'qNAWp02W0M4oeUM0BENpNh', '{\"92685a5999d0d310bc92841e5008d481.pdf\":\"EU Organic Certificate exp 03062024.pdf\"}'),
(27, '202308-068', 'Organic NOP', 'Organic NOP', 'BAN UM-SANG Rice', '2024-01-24', 60, '2023-08-23 10:58:24', '2024-06-07 11:22:50', 5, 3, 7, 8, 2, 1, 2, 'ยกเลิกใช้', 'zFwmDlNA-TJ6tKiAEdZifH', '{\"ef11d8c25f6977b157e94d062e66afd4.pdf\":\"NOP-Cor Certificate exp24012024.pdf\"}'),
(28, '202308-069', 'Fairtrade ', 'Fairtrade ', 'BAN UM-SANG Rice', '2026-08-16', 60, '2023-08-23 11:06:35', NULL, 5, 5, 7, 8, 2, 3, 1, 'ใช้งาน ', 'UBVwoA3vKE2P2KZ1Fy2f7b', '{\"924796af21fac40ebd591dcc2cbf2ba8.pdf\":\"CERT_Certificate Fairtrade FLOCERT 2022-2026_Ban Um Sang ID 27806 (1)  exp 16082026.pdf\"}'),
(29, '202308-070', 'Organic EU', 'Organic EU', 'BAN UM-SANG Rice', '2022-06-01', 60, '2023-08-23 11:12:19', '2023-08-24 16:05:00', 5, 5, 7, 8, 2, 1, 2, 'ไม่ใช้งานเอกสารนี้แล้ว', 'iQEm0IRXKGaDWeAaCb2Jtb', '{\"88ba432ca85aae7c64e9f4a75f8f3bbf.pdf\":\"EU Certificate 2021 Exp 01062022.pdf\"}'),
(30, '202308-071', 'Organic NOP', 'Organic NOP', 'BAN UM-SANG Rice', '2022-01-20', 60, '2023-08-23 11:13:44', '2023-08-24 16:05:05', 5, 5, 7, 8, 2, 1, 2, 'ไม่ใช้งานเอกสารนี้แล้ว', 'OtzQC26Cgwavx6r6-JNQyG', '{\"c0eaca4a38a84cd83556d9e688a5c0ae.pdf\":\"NOP Certificate 2021 exp20012022.pdf\"}'),
(31, '202308-072', 'Fairtrade ', 'Fairtrade ', 'BAN UM-SANG Rice', '2022-05-31', 60, '2023-08-23 11:15:55', '2023-08-24 16:05:08', 5, 5, 7, 8, 2, 3, 2, 'ไม่ใช้งานเอกสารนี้แล้ว', 'zbO27cNK9Z00-CMt1mNgx6', '{\"9a48e85d8b49a0716cc993bd338affa1.pdf\":\"CERT_Certificate (1).pdf\"}'),
(32, '202308-073', 'Organic EU', 'Organic EU', 'Natural & Premium ', '2024-02-02', 60, '2023-08-23 12:01:46', '2024-03-06 16:03:21', 5, 3, 8, 8, 2, 1, 2, 'ยกเลิกใช้', 'v1aL0440IG_Sp1XwJgQw9U', '{\"6a4614ee583545992ced4b2b34b7f3f0.pdf\":\"list ใบ cer  Organic.pdf\",\"27e0d35d6c36d6ad127b13f256b9ad8c.pdf\":\"Organic EU regulation Certificate _Natural and premium food Co,Ltd  exp 17072023.pdf\"}'),
(33, '202308-074', 'Organic NOP', 'Organic NOP', 'Natural & Premium ', '2024-02-02', 60, '2023-08-23 12:03:05', '2024-03-06 16:03:01', 5, 3, 8, 8, 2, 1, 2, 'ยกเลิกใช้', 'GsVH-EdjAqpNg0BG2MVnvz', '{\"4835504b53f9f816214920fade6c7ed1.pdf\":\"list ใบ cer  Organic.pdf\",\"06ee6c31dae6210fcb0c2040be9f2684.pdf\":\"Organic NOP USDA regulation Certificate_Natural and premium food Co,Ltd exp 19052023.pdf\"}'),
(34, '202308-075', 'Test report Soy Sauce (heavy metal/ Aflatoxin) ครั้งที่ 1  2023 ', 'Test report Soy Sauce (heavy metal/ Aflatoxin)', '', '2024-05-13', 60, '2023-08-23 12:07:32', '2024-04-29 11:11:46', 5, 3, 9, 7, 1, 2, 2, 'ยกเลิกใช้งาน', 'k2IOgSUAXe83goeThnardM', '{\"0425e8e1322dbdffa036500d34ddd1d8.pdf\":\"Soy sauce Part 1 2023.pdf\"}'),
(35, '202308-076', 'Test report Sauce (heavy metal/ Aflatoxin) ครั้งที่ 1  2023', 'Test report Sauce (heavy metal/ Aflatoxin)', '', '2024-05-13', 60, '2023-08-23 12:09:07', '2024-04-29 11:12:39', 5, 3, 10, 7, 1, 2, 2, 'ยกเลิกใช้งาน', 'Iw56manw7hZhqwR7735eYr', '{\"016763c0362c4ed5a4a303b3f1fda318.pdf\":\"Sauce  part 1  2023.pdf\"}'),
(36, '202308-077', 'Test report Sauce ( Micro) ครั้งที่ 1 2023 ', 'Test report Sauce ( Micro)', '', '2024-05-20', 60, '2023-08-23 12:10:47', '2024-04-29 11:14:18', 5, 3, 10, 7, 1, 2, 2, 'ยกเลิกใช้งาน', 'E7UgTp3XDfswCYnEn21yjH', '{\"86514bfdfb3e9874ea932801483a0920.pdf\":\"Micro sauce   2023.pdf\"}'),
(37, '202308-078', 'Test report Soy Sauce (micro) ครั้งที่ 1  2023', 'Test report Soy Sauce (micro)', '', '2024-05-20', 60, '2023-08-23 12:14:22', '2024-04-29 11:14:59', 5, 3, 9, 7, 1, 2, 2, 'ยกเลิกใช้งาน', 'He0JeGvPf6xSm3cMqA6xsr', '{\"7dfa9b874b8786ede247ddfdff135e56.pdf\":\"Micro soy sauce 2023.pdf\"}'),
(38, '202308-079', 'Test report Melamine ครั้งที่ 1 2023  ', 'Test report Melamine  ', '', '2024-03-10', 60, '2023-08-23 12:18:37', '2024-03-15 16:07:50', 5, 3, 1, 7, 1, 2, 2, 'ยกเลิกใช้', 'Th084SgkIAsBOYfIHCvXIn', '{\"dc15ec0e138fbbad2edaed70d8ae3950.pdf\":\"Melamine part1  2023.pdf\"}'),
(39, '202308-080', 'Test report MCPD ครั้งที่ 1 2023  ', 'Test report MCPD ', '', '2024-03-13', 60, '2023-08-23 12:27:04', '2024-03-15 16:10:08', 5, 3, 1, 7, 1, 2, 2, 'ยกเลิกใช้', 'Ff82E8Tk05ag2SUERm5obb', '{\"b59a65040f9e6c38165ee4c3aae5b0fa.pdf\":\"MCPD  Soy Sauce  2023.pdf\"}'),
(40, '202308-081', 'Test report Allergen (koikuchi) 2023', 'Test report Allergen (koikuchi)  สินค้ากลุ่มที่ wheat เป็นส่วนประกอบ ', '', '2024-03-10', 60, '2023-08-23 13:18:17', '2024-03-15 16:10:34', 5, 3, 1, 7, 1, 2, 2, 'ยกเลิกใช้', 'xFbVSMZV-qHwScCpQsI44I', '{\"99b67f19e93e7d629443e2ffb5269233.pdf\":\"Allergen in Ko 2023.pdf\"}'),
(41, '202308-082', 'Test report Allergen (KOR) 2023', 'Test report Allergen (KOR)   กลุ่มสินค้าที่มี  Rice / Organic Rice เป็นส่วนประกอบ ', '', '2024-03-10', 60, '2023-08-23 13:21:28', '2024-03-15 16:11:08', 5, 3, 1, 7, 1, 2, 2, 'ยกเลิกใช้', 'PDw67rm_ePwnu7b-IMlOey', '{\"8dce8edb5d38e8d36a31b05ebd66d3e1.pdf\":\"Allergen in KOR 2023.pdf\"}'),
(42, '202308-083', 'Test report  Sorbic in soy sauce 2023 ', 'Test report  Sorbic in soy sauce 2023 ', '', '2024-03-10', 60, '2023-08-23 13:23:39', '2024-03-15 16:11:35', 5, 3, 9, 7, 1, 2, 2, 'ยกเลิกใช้', 'DGzBR5m_6_FB7y7IXyWO_U', '{\"afe60e9800f1a1d8542e24a376f50ef7.pdf\":\"Sorbic in Soy sauce 2023.pdf\"}'),
(43, '202308-084', 'Test report  Sorbic in sauce 2023 ', 'Test report  Sorbic in sauce 2023 ', '', '2024-03-10', 60, '2023-08-23 13:25:03', '2024-03-15 16:12:06', 5, 3, 10, 7, 1, 2, 2, 'ยกเลิกใช้', '1bOfscU-4Zu4nkKsMomphl', '{\"86e8453c40bcf4640c2f1c33e1bdb945.pdf\":\"Sorbic in sauce  2023.pdf\"}'),
(44, '202308-085', 'Test report  GMOs  in  soy sauce ', 'Test report  GMOs  in  soy sauce ', '', '2023-10-18', 60, '2023-08-23 13:26:41', '2023-09-09 13:39:12', 5, 3, 1, 7, 1, 2, 2, 'ยกเลิกใช้ เนื่องจาก ได้ใบ Test Report ฉบับใหม่มาแล้ว', 'G8ss3pGJjUUuJ7UuNQA356', '{\"381001526ae7eb9218a13c094f264e30.pdf\":\"GMOs   Soy Sauce &MISO 2022.pdf\"}'),
(45, '202308-086', 'Test report Positive list 2023 ', 'Test report Positive list 2023 ', '', '2024-05-17', 60, '2023-08-23 13:28:14', '2024-03-20 16:27:05', 5, 3, 9, 7, 1, 2, 2, 'ยกเลิกใช้ เนื่องจากได้ Test Report ใบใหม่มาแล้ว', 'myBVnrTiFv5YJ3qFNCxgC9', '{\"f1e7acbb1b42d0836868d65eb5f5d94b.pdf\":\"positve list รวม.pdf\"}'),
(46, '202308-087', 'Test report Sulfur dioxide   2023 ', 'Test report Sulfur dioxide   2023 ', '', '2024-03-10', 60, '2023-08-23 13:30:16', '2024-03-15 16:12:48', 5, 3, 1, 7, 1, 2, 2, 'ยกเลิกใช้', 'n_qc81KGEQhByIRCgS9uWj', '{\"75e44feae9ebaeb7af67bc2118afa3bb.pdf\":\"SO2   in  Soy Sauce 2023.pdf\"}'),
(47, '202308-088', 'Test report Vinegar  (Heavy Metal) 2023 ', 'Test report Vinegar  (Heavy Metal)  ', '', '2024-03-15', 60, '2023-08-23 13:32:18', '2024-03-15 16:06:09', 5, 3, 11, 7, 1, 2, 2, 'ยกเลิกใช้', '4omqGs6JZaL_HaIfufYfH_', '{\"3393efb951dbfbf24656331097ea2be7.pdf\":\"organic Rice Vineagr  2023.pdf\"}'),
(48, '202308-089', 'Test report  (ethanol/ So2) in Vinegar  2023', 'Test report  (ethanol/ So2) in Vinegar  2023', '', '2024-03-16', 60, '2023-08-23 13:33:55', '2024-03-15 16:05:32', 5, 3, 11, 7, 1, 2, 2, 'ยกเลิกใช้', 'b2WHp1Ypl99uj-veIscx2n', '{\"7bc6cb124585e8b62dcbbfb24fa1abbc.pdf\":\"Ethanol    So2  Organic vinegar 2023.pdf\"}'),
(49, '202308-090', 'Test report (Free Mineral) in Vinegar  2023 ', 'Test report (Free Mineral) in Vinegar  2023 ', '', '2024-03-16', 60, '2023-08-23 13:35:55', '2024-03-16 09:22:03', 5, 3, 11, 7, 1, 2, 2, 'ยกเลิกใช้', 'Jr0zjF6K18mU9FUc-VnEYi', '{\"63faf1b92a0ed4608958c58abfa3c1f3.pdf\":\"Free Mineral  Vinegar 2023.pdf\"}'),
(50, '202308-091', 'Test report (Aflatoxin /  Heavy metal)  miso 2023', 'Test report miso 2023', '', '2024-06-19', 60, '2023-08-23 13:49:24', '2024-06-07 13:22:13', 5, 3, 12, 7, 1, 2, 2, 'ยกเลิกใช้งาน', '5fR_gaWGX626r7Esqowk-_', '{\"da40de2e3313c622c4937ec16852fe37.pdf\":\"ผลตรวจรวม MISO ประจำปี  2023.pdf\"}'),
(51, '202308-092', 'Test report (Micro Pas Miso) 2023 ', 'Test report (Micro Pas Miso) 2023 ', '', '2024-06-29', 60, '2023-08-23 13:51:01', '2024-06-07 13:21:28', 5, 3, 12, 7, 1, 2, 2, 'ยกเลิกใช้งาน', 'JG0NQZgVzmWTNSerYPjp_9', '{\"abf4fd8d7f84bda1e25de654a9c8cf4b.pdf\":\"Micro  Pas miso 2023.pdf\"}'),
(52, '202308-093', 'Test report (micro) Un pasteurize Miso  2023 ', 'Test report (micro) Un pasteurize Miso  2023 ', '', '2024-06-29', 60, '2023-08-23 13:53:11', '2024-06-07 13:20:47', 5, 3, 12, 7, 1, 2, 2, 'ยกเลิกใช้งาน', 'VJiiPfsmOs07hl1XCDyvhj', '{\"8d3e74028236728c1fc18def041eacc4.pdf\":\"Micro  Unpas miso 2023.pdf\"}'),
(53, '202308-094', 'Audit report  Intertek ( FSSC22000)    2022', 'Audit report  Intertek ( FSSC22000)', '', '2024-03-28', 60, '2023-08-23 14:30:47', '2023-08-26 08:50:37', 5, 5, 1, 3, 1, 2, 2, 'เป็นรายงานจากการ   Audit ระบบ   FSSC22000  ของปี 2022 \r\nสามารถนำผลไปใช้งาน กรณี ลูกค้าขอได้', 'YYsKPOAdxqezq3JE8x-zVF', '{\"182742480169980c22b95ad2fcfa1e41.pdf\":\"FSSC22000 ปี 2565  ACTY-2022-535993  report.pdf\"}'),
(54, '202308-095', 'Audit report  Intertek ( ISO22000)    2022', 'Audit report  Intertek ( ISO22000)    2022', '', '2024-03-03', 60, '2023-08-23 14:34:03', '2023-08-26 08:52:42', 5, 5, 1, 3, 1, 2, 2, 'เป็นรายงานผลการ Audit ระบบ ISO22000   ของปี 2022 \r\nสามารถส่งไฟล์ให้ลูกค้าได้ กรณีร้องขอผลการตรวจ ', 'taKPQ7qO7XmoB1OH3DuTRO', '{\"85bc10ec6487894b41096a3e0e80de22.pdf\":\"AuditSummaryDraft-ENG_CMPY-082012_ACTY-2021-463845.pdf\"}'),
(55, '202308-096', 'Audit report  Intertek ISO9001 / ISO 45001/ISO14001    2022', 'Audit report  Intertek ISO9001 / ISO 45001/ISO14001    2022', '', '2023-09-20', 60, '2023-08-23 14:53:21', '2023-08-26 09:19:30', 5, 5, 1, 3, 1, 2, 2, 'เป็นรายงานผลการ Audit report ระบบ ISO9001 / ISO 45001/ISO14001  ของปี  2022\r\nสามารถนำผลไปใช้งาน กรณี ลูกค้าขอได้', 'GhE8Os_5ZAcOzgIZ08n-_s', '{\"87d381a39f149e9a79230f95f42b9165.pdf\":\"Audit report ISO9001  ISO14001 ISO45001 date 20 092022.pdf\"}'),
(56, '202308-097', 'HALAL', '', 'Siam Organic Food Products Co., Ltd.', '2024-06-24', 60, '2023-08-26 11:00:43', '2024-09-19 14:35:12', 3, 3, 4, 8, 2, 4, 2, 'ยกเลิกใช้\r\n', 'PW2YHsYM5EFu5E-Cn2fW2l', '{\"f1d12997bbc9ece9af1d2437d5e19c90.pdf\":\"HALAL 2023 (1).pdf\"}'),
(57, '202309-001', 'Test report  GMOs  in  soy sauce ', 'GMOs ใน  soy  sauce  /  Sauce', '', '2024-09-07', 60, '2023-09-08 17:19:48', '2024-07-27 18:08:04', 5, 3, 9, 7, 1, 2, 2, 'ยกเลิกใช้', 'k0EyVP_m2P8hzPatFo50Xo', '{\"77821bc3b8493a1c1877a7a61b6eb93e.pdf\":\"GMO  Soy  Sauce   ปี 2023.pdf\"}'),
(59, '202309-003', 'Test report MCPD ครั้งที่ 2 2023  ', 'Test report MCPD ครั้งที่ 2 2023  ', '', '2024-08-28', 60, '2023-09-18 13:47:29', '2024-07-27 18:08:31', 5, 3, 1, 7, 1, 2, 2, 'ยกเลิกใช้', 'DzptNDAR_s7JeQ8XnVZQ23', '{\"06787cc0320d4dcb3da46344ed73ad8f.pdf\":\"3 MCPD  ครังที่ 2 2023.pdf\"}'),
(60, '202309-004', 'Test report Melamine ครั้งที่ 2 2023  ', 'Test report Melamine ', '', '2024-08-28', 60, '2023-09-18 13:50:09', '2024-07-27 18:08:55', 5, 3, 1, 7, 1, 2, 2, 'ยกเลิกใ้ช้', 'V2QJYwJfNnzJyVs2As-3ek', '{\"21a765efcb1c6c374e3c1e0472c9c4f9.pdf\":\"Melamine  ครั้งที่ 2 2023.pdf\"}'),
(61, '202309-005', 'Organic EU', '', 'Ubon Sunflower', '2024-03-31', 60, '2023-09-26 15:17:24', '2024-07-16 13:12:09', 3, 3, 13, 8, 2, 1, 2, 'ยกเลิกใช้', 'S5Au2hd3kMVrFSszEwpmrB', '{\"19e2bcfa52cb489d4445bd6f120076b4.pdf\":\"UBS_CU 842683EU-01.2023_Exp. 31 Mar 2024_P1.pdf\"}'),
(62, '202309-006', 'Organic NOP', '', 'Ubon Sunflower', '2024-01-16', 60, '2023-09-26 15:19:14', '2024-07-03 14:33:55', 3, 3, 13, 8, 2, 1, 2, 'ยกเลิกใช้', 'cu2ok3fr1jLxmMlhVUmOQU', '{\"00522ea25687dc7c64c8e9d05da5bb56.pdf\":\"UBS_CU 842683NOP-01.2023_Exp._Anniversary 16 Jan 2024_P1.pdf\"}'),
(63, '202310-001', 'HALAL', '', '', '2024-07-31', 60, '2023-10-06 16:30:14', '2024-08-05 13:34:54', 3, 3, 1, 8, 1, 4, 2, 'ยกเลิกใช้', 'Xe1I-mS8gz4TQ7-TN99DRC', '{\"f080e3a81301e17218343d287ee0c87e.pdf\":\"cer Halal  ฉบับ  Eng Exp 31072024.pdf\",\"81344429ee2fb72cbe4bf5ddda1f5e65.pdf\":\"Cer Halal  ฉบับThai Exp31072024.pdf\"}'),
(64, '202310-002', 'Organic Standard', 'Ceres Organic Standard (CE-OS) , Product List', '', '2024-07-31', 60, '2023-10-26 11:17:37', '2024-08-07 11:21:36', 3, 3, 1, 8, 1, 1, 2, 'ยกเลิกใช้', '3qGRMecQcvQHMqRiYxTZWA', '{\"98ccd817954a8bc637f0ef3579f445a1.pdf\":\"NFC-Certificate NOP exp 31.07.2024.pdf\",\"e16bf13f8051db7e7952d86c55221903.pdf\":\"NFC-Certificate EU exp 31.07.2024.pdf\",\"012174335183ef38cc5c17f5f06e4cd8.pdf\":\"NFC- Product list Exp. 31072024.pdf\"}'),
(65, '202311-001', 'Organic EU', 'Cert. Organic EU ของ Credence และ Cert. Organic EU ของอ่างเวียน', 'Credence', '2024-08-22', 60, '2023-11-06 10:23:43', '2024-10-05 10:00:51', 3, 3, 4, 8, 2, 1, 2, 'ยกเลิกใช้', 'QVeFPPbcOti2L1WrSPb2_g', '{\"a4f47942c0e67e88609034ca362e69ca.pdf\":\"Cert. Or. EU Exp.15022024 - AV.pdf\",\"3be0930c895feadfbf2b79786a0b1138.pdf\":\"Cert. Or. EU Exp.22082024 - Credence.pdf\",\"7a0617f5f7fd5bc6ce9a53321acdb568.pdf\":\"หนังสือรับรองการต่ออายุ Cert. - Angvian (Credence).pdf\"}'),
(66, '202311-002', 'HALAL', 'Cert. Halal - บ. อุตสาหกรรมอ่างเวียน จำกัด', 'Credence', '2024-03-19', 60, '2023-11-06 14:02:20', '2024-03-20 15:10:04', 3, 3, 4, 8, 2, 4, 2, 'ยกเลิกใช้', 'LffTPGWHLiM1yKcseGtd9v', '{\"cd473fe3848a561c6234fa4f834a192d.pdf\":\"Cert. Halal Exp.19032024 - AV.pdf\"}'),
(67, '202311-003', 'Test Report Organic Sugar', 'Test Report น้ำตาลออร์แกนิค ของ บ. อุตสาหกรรมอ่างเวียน จำกัด', 'Credence', '2024-01-31', 60, '2023-11-06 14:07:35', '2024-03-20 15:06:20', 3, 3, 4, 7, 2, 1, 2, 'ยกเลิกใช้', 'nY-7KmCQlRsZnfIU-FuLwc', '{\"058da9abab2937e0d06987de4456b53d.pdf\":\"Test Report Exp.31012024 - AV.pdf\"}'),
(68, '202311-004', 'Test report Sauce (heavy metal/ Aflatoxin) ครั้งที่ 2 2023', 'Test report Sauce (heavy metal/ Aflatoxin) ครั้งที่ 2 2023', '', '2024-11-10', 60, '2023-11-11 10:55:12', '2024-10-21 14:01:36', 3, 3, 10, 7, 1, 2, 2, 'ยกเลิกใช้', 'dfIVSQqPmOiIz3TLPzaC1S', '{\"b5342259eee4ad520ebfbdbd8ba3aecb.pdf\":\"Sauce ครั้งที่ 2 2023.pdf\"}'),
(69, '202311-005', 'Test report Soy Sauce (heavy metal/ Aflatoxin) ครั้งที่ 2 2023', 'Test report Soy Sauce (heavy metal/ Aflatoxin) ครั้งที่ 2 2023', '', '2024-11-14', 60, '2023-11-11 10:58:28', '2024-10-21 14:02:04', 3, 3, 9, 7, 1, 2, 2, 'ยกเลิกใช้', 'UQQBU6WFZEQxBPqw0nHL0p', '{\"44d9d726dacda50cfe3b7d14007e9bb3.pdf\":\"Soy Sauce ครั้งที่ 2 2023 Exp.14112024.pdf\"}'),
(70, '202311-006', 'Test Report Activated Carbon YL-303', 'Test Report Activated Carbon YL-303 and Process Flow', ' Right Solution Public Company Limited', '2024-01-04', 60, '2023-11-14 09:24:04', '2024-03-20 10:46:11', 3, 3, 14, 7, 2, 2, 2, 'ยกเลิกใช้', 'PwTIzksvAfeOnhIW57M2sB', '{\"e8589bacd377e81771f11c303369ae34.pdf\":\"ผลวิเคราะห์ YL-303.pdf\",\"36b755e411968bc751948dbfd81e26ab.pdf\":\"Process Flow Diagram YL-303 Update 15.08.23.pdf\"}'),
(71, '202311-007', 'ISO 22000:2018', 'ISO 22000:2018', ' Right Solution Public Company Limited', '2024-03-06', 60, '2023-11-14 10:27:51', '2024-03-19 14:34:54', 3, 3, 14, 8, 2, 5, 2, 'ยกเลิกใช้ เนื่องจากเป็นรายการ Cert. ที่ไม่จำเป็น', 'VOjrWzNHQsHiVoMpHHrrC0', '{\"ff9b416146a52745454698be04a2e60e.pdf\":\"ISO22000 Nanping Yuanli Exp.06032024.pdf\"}'),
(72, '202311-008', 'Kosher Cert.', 'Kosher Cert.', ' Right Solution Public Company Limited', '2023-12-31', 60, '2023-11-14 10:49:12', '2024-03-19 16:18:43', 3, 3, 14, 8, 2, 5, 2, 'ยกเลิกใช้', 'Glhk5DYgqO0zCNmSmS8DMn', '{\"db9d952c16f260785551e2f18dbb4bc8.pdf\":\"Kosher Cert. Nanping Yuanli Exp.31122023.pdf\"}'),
(73, '202311-009', 'HALAL', 'Halal Cert. Ulama', ' Right Solution Public Company Limited', '2025-11-11', 60, '2023-11-14 10:53:00', NULL, 3, 3, 14, 8, 2, 5, 1, 'ใช้งาน', 'wVZrHXTsj9T9jFd-_LQNFM', '{\"3d1215b86b24ab7100cf9388cba5d189.pdf\":\"HALAL CERT. Ulama Exp.11112025.pdf\"}'),
(74, '202311-010', 'HALAL', 'Halal Cert. the Central Islamic Council', ' Right Solution Public Company Limited', '2025-01-10', 60, '2023-11-14 11:20:14', '2025-01-13 08:32:21', 3, 3, 14, 8, 2, 4, 3, 'รอใบ Cert. ใหม่', 'vBz63LBzJrqksJQjs5E1nr', '{\"31c62e2c535202542a99aa34ff0d90c0.pdf\":\"Halal Cert. the Central Islamic council Exp.10012025.pdf\"}'),
(75, '202311-011', 'HALAL', 'Halal cert. Nanping Yuanli', ' Right Solution Public Company Limited', '2025-11-11', 60, '2023-11-14 11:26:15', NULL, 3, 3, 14, 8, 2, 5, 1, 'ใช้งาน', 'Ec54JMvN4ZqtNPDUXCJdjf', '{\"e252920afff86c181aedcb47b1eadedc.pdf\":\"HALAL Cert. Nanping Yuanli Exp.11112025.pdf\"}'),
(76, '202311-012', 'HALAL', 'MUI Halal List', ' Right Solution Public Company Limited', '2025-11-11', 60, '2023-11-14 11:30:38', NULL, 3, 3, 14, 8, 2, 5, 1, 'ใช้งาน', '-A7yBcbbGQ93USEjcGavmh', '{\"598cfe68d37fa26fec3ed2c92bfbbaed.pdf\":\"MUI HALAL LIST Exp.11112025.pdf\"}'),
(78, '202311-014', 'ISO 9001:2015', 'ISO 9001:2015', ' Right Solution Public Company Limited', '2023-07-09', 60, '2023-11-14 11:39:23', '2024-03-20 11:11:01', 3, 3, 14, 8, 2, 5, 2, 'ยกเลิกใช้', '1-MgpVUX7e8ICHt6YvUAy1', '{\"d307aeead1514cfa9ff7ee2bc1d83831.pdf\":\"ISO9001 Nanping Yuanli Exp.09072023.pdf\"}'),
(80, '202311-016', 'BRC Global Standard', 'Cert. BRC Global Standard', 'Siam Submanee Co., Ltd.', '2024-01-30', 60, '2023-11-25 15:55:46', '2024-03-19 14:33:37', 3, 3, 3, 8, 2, 5, 2, 'ยกเลิกใช้ เนื่องจากเป็นรายการ Cert. ที่ไม่จำเป็น', 'nuIIpa03PPVLEorvVLaEyt', '{\"69d2e4cf520f544091a77dda0bfd8250.pdf\":\"Cert. BRC - Siam Submanee EXP. 30012024.pdf\"}'),
(81, '202311-017', 'GHPs HACCP', 'Cert. GHPs HACCP', 'Siam Submanee Co., Ltd.', '2023-12-19', 60, '2023-11-25 15:58:05', '2024-03-19 16:03:08', 3, 3, 3, 8, 2, 2, 2, 'ยกเลิกใช้', 'cKamcYQq7ZkA0XK5di1YPs', '{\"dc367dd0fbcc80e3aa11d1acae5e2de3.pdf\":\"Cert. HACCP, GHPs - Siam Submanee Exp. 19122023.pdf\"}'),
(82, '202311-018', 'Kosher', 'Cert. Kosher', 'Pacific Sugar', '2024-06-30', 60, '2023-11-25 16:02:24', '2024-11-12 13:31:06', 3, 3, 4, 8, 2, 5, 2, 'ยกเลิกใช้', 'tNzBIBOWEBdN_LbUYDQB56', '{\"1c558aef68652723aa8208216d01d4ff.pdf\":\"Cert. KOSHER - (Sugar) Pacific Sugar Exp. 30062024.pdf\"}'),
(83, '202311-019', 'Kosher', 'Letter of Cert. Kosher', 'Suvarnabhumi ', '2024-01-25', 60, '2023-11-25 16:06:11', '2024-01-31 14:35:54', 3, 3, 3, 8, 2, 5, 2, 'ยกเลิกใช้ เนื่องจาก ทาง บ. สุวรรณภูมิ จะไม่มีการใช้ระบบ Kosher แล้ว', 'Dl3pwxKCARhrlbBF75tw4E', '{\"82ea712215f0c44f4372c2f28894a7a4.pdf\":\"Letter of Garuntee Kosher Cert. - สุวรรณภูมิ.pdf\"}'),
(84, '202311-020', 'Kosher', 'Letter of Cert. Kosher', 'Siam Submanee Co., Ltd.', '2024-01-25', 60, '2023-11-25 16:08:16', '2024-01-31 14:18:07', 3, 3, 3, 8, 2, 5, 2, 'ยกเลิกใช้ เนื่องจากทางสยามทรัพย์มณีไม่ต่อใบ Cert. Kosher แล้ว เพราะมีค่าใช้จ่ายในการต่ออายุสูง', 'sgLuor7y0v9scn85R29ju8', '{\"783590c90b887a2ee0192313cc6f28d9.pdf\":\"Letter of Garuntee Kosher Cert. - Siam Submanee.pdf\"}'),
(85, '202311-021', 'Kosher', 'Cert. Kosher Ubon Sunflower ', 'Ubon Sunflower', '2024-01-31', 60, '2023-11-25 16:10:56', '2024-07-03 14:46:25', 3, 3, 13, 8, 2, 5, 2, 'ยกเลิกใช้', 'crFJLryVjajfLIPIUJOpsn', '{\"2ac998e3c8a8e496f1b14359463bda1f.pdf\":\"Cert. KOSHER - (Cassava Flour) Ubon Sunflower Exp.31012024.pdf\"}'),
(86, '202311-022', 'Kosher', 'Cert. Kosher องค์การสุรา', 'องค์การสุรา', '2024-09-30', 60, '2023-11-25 16:13:14', '2024-10-31 13:33:25', 3, 3, 15, 8, 2, 5, 2, 'ยกเลิกใช้', 'Cwih8tkRZXWDUD99pP0oEn', '{\"1f0735ea3862f2f92bb690f2e4df6af8.pdf\":\"Cert. Kosher - (Alcohol) องค์การสุรา Exp.30092024.pdf\"}'),
(87, '202312-001', 'Test Report Micro Sauce ครั้งที่ 2 2023', 'Test Report Micro Sauce ครั้งที่ 2 2023', '', '2024-11-25', 60, '2023-12-08 08:56:54', '2024-10-21 14:02:32', 3, 3, 10, 7, 1, 2, 2, 'ยกเลิกใช้', 'LYTyQq08IhiURxKBSGG_ty', '{\"db0bb807cb7e8e3d9311b6cfec55c033.pdf\":\"micro   Sauce  ครั้งที่ 2  2023.pdf\"}'),
(88, '202312-002', 'Test Report Micro Soy Sauce ครั้งที่ 2 2023', 'Test Report Micro Soy Sauce ครั้งที่ 2 2023', '', '2024-11-25', 60, '2023-12-08 08:58:50', '2024-10-21 14:03:19', 3, 3, 9, 7, 1, 2, 2, 'ยกเลิกใช้', 'NQJUh6e54owYHtSmulavec', '{\"d1dad1ebb596426dfd1f7f755f339d59.pdf\":\"micro  Soy Sauce  ครั้งที่ 2  2023.pdf\"}'),
(89, '202312-003', 'GHPs HACCP', '', 'Chamnan Food Co., Ltd.', '2025-12-17', 60, '2023-12-11 15:28:41', '2023-12-11 15:30:10', 3, 3, 11, 8, 2, 2, 1, 'ใช้งาน', 'CXTssNKe-HnLPlqPRaEEx5', '{\"01e25b77bf4c6644e15b6f6915840c86.pdf\":\"HACCP&GHPs Cert. - Chamnan Food Co., Ltd. Exp.17122025.pdf\"}'),
(90, '202312-004', 'Organic Standard', '', 'Chamnan Food Co., Ltd.', '2024-06-30', 60, '2023-12-11 15:31:06', '2024-07-16 13:16:21', 3, 3, 11, 8, 2, 1, 2, 'ยกเลิกใช้', '39uF6rsBV18vcHitRQOH2c', '{\"729c83607d9571189d53821901188269.pdf\":\"Cert. Organic Standard - Chamnan Food Exp.30062024.pdf\"}'),
(91, '202312-005', 'HALAL', '', 'Chamnan Food Co., Ltd.', '2024-10-08', 60, '2023-12-11 15:32:20', '2024-10-22 10:04:02', 3, 3, 11, 8, 2, 2, 2, 'ยกเลิกใช้', 'vjWR_UN3_xg1m8wl0pxuky', '{\"4bb2ff38a055a4b67d0abd02c7792ad5.pdf\":\"Cert. HALAL - Chamnan Food Exp.08102024.pdf\"}'),
(92, '202312-006', 'Organic EU', 'ECOCERT Organic EU', 'Gebana BV', '2024-03-31', 60, '2023-12-11 15:56:19', '2024-03-23 13:33:02', 3, 3, 2, 8, 2, 1, 2, 'ยกเลิกใช้', 'TSN3l9h9SZ7c0Yaqs7myuQ', '{\"f6633db6aecc1bb1a3c10952e451fb69.pdf\":\"ECOCERT certificate - gebana Brazil Exp. 31032024.pdf\"}'),
(93, '202312-007', 'Fair Trade', '', 'Gebana BV', '2026-03-22', 60, '2023-12-11 15:59:04', NULL, 3, 3, 2, 8, 2, 3, 1, 'ใช้งาน', 'mGu7dEh4wCGk9i1koJOvxN', '{\"f9f377e63fd9474ceee3d92c73e9b315.pdf\":\"Cert. Fairtrade - gebana bv  Exp. 22032026.pdf\"}'),
(94, '202312-008', 'BRC Global Standard', '', 'Gebana BV', '2024-01-19', 60, '2023-12-11 16:00:22', '2024-03-19 14:33:11', 3, 3, 2, 8, 2, 5, 2, 'ยกเลิกใช้ เนื่องจากเป็นรายการ Cert. ที่ไม่จำเป็น', 'Etlgr6cakBjmK1MpkDtBfx', '{\"47df4cd235f2ef6b06ec4789cf382b61.pdf\":\"BRC Cert. - Gebana BV Exp.19012024.pdf\"}'),
(95, '202312-009', 'Organic EU', 'Organic Cert. - Gebana BV', 'Gebana BV', '2024-12-31', 60, '2023-12-11 16:02:17', '2024-11-23 08:23:58', 3, 3, 2, 8, 2, 1, 2, 'ยกเลิกใช้', '3CLV9SiMW4pWNTnYY0rWgf', '{\"6a078c940f8af11c6d5ae3399e1a19ff.pdf\":\"cert. EU - Gebana BV Exp.31122024.pdf\"}'),
(96, '202402-001', 'ISO 22000:2018', 'Cert. ISO 22000:2018 Intertek', '', '2027-03-07', 60, '2024-02-22 09:08:22', NULL, 3, 3, 1, 8, 1, 4, 1, 'ใช้งาน', 'ugTzytZAEQo9gW1nOz_jzW', '{\"36fa2cafbe1c540fa4ee69c4552b018a.pdf\":\"Cert. ISO22000 NFC Exp.07032027.pdf\"}'),
(97, '202403-001', 'GHPs HACCP', 'Cert. GHPs HACCP - NFC', '', '2027-03-07', 60, '2024-03-06 11:34:56', '2025-02-06 11:42:19', 3, 3, 1, 8, 1, 4, 1, 'ใช้งาน', 'As7WiusrvGyqdFqcSQJDnC', '{\"8d3fb87587bbe93c69b91f6c6931324a.pdf\":\"Cert. GHPs & HACCP - NFC Exp.07032027.pdf\"}'),
(98, '202403-002', 'Test report Melamine 2024', 'Test report Melamine', '', '2025-02-24', 60, '2024-03-06 13:50:51', '2024-03-06 13:52:45', 3, 3, 1, 7, 1, 2, 1, 'ใช้งาน', 'hkQIEC4q5n3cPUvxgQTKxA', '{\"5df0749e1a0ac5e83ef9e2910ac86bdf.pdf\":\"Test Report Melamine 2024 Exp.24022025.pdf\"}'),
(99, '202403-003', 'Test report Allergen (koikuchi) 2024', 'Test report Allergen (koikuchi) 2024', '', '2025-02-23', 60, '2024-03-06 14:00:14', NULL, 3, 3, 1, 7, 1, 2, 1, 'ใช้งาน', 'cqDuj8ifq65zKkTVU33L2o', '{\"ee16761f51b02452412cecfbfbd6015b.pdf\":\"Test Report Allergen KO 2024 Exp.23022025.pdf\"}'),
(100, '202403-004', 'Test report Allergen (KOR) 2024', 'Test report Allergen (KOR) 2024', '', '2025-02-23', 60, '2024-03-06 14:02:36', NULL, 3, 3, 1, 7, 1, 2, 1, 'ใช้งาน', 'hNNEt_Gl39N8zMCz2vdaYK', '{\"859b912e484f697651e5e260a8cab4cf.pdf\":\"Test Report Allergen KOR 2024 Exp.23022025.pdf\"}'),
(101, '202403-005', 'Test report MCPD 2024', 'Test report MCPD', '', '2025-03-01', 60, '2024-03-06 14:05:13', NULL, 3, 3, 1, 7, 1, 2, 1, 'ใช้งาน', 'EHWe9uNdn0vP6rsMBL9j8h', '{\"a4b5f6b4bd2f80a7f7a0814877496ef8.pdf\":\"Test Report MCPD 2024 Exp.01032025.pdf\"}'),
(102, '202403-006', 'Test report Vinegar (Heavy Metal) 2024', 'Test report Vinegar (Heavy Metal) 2024', '', '2025-02-23', 60, '2024-03-06 14:09:32', NULL, 3, 3, 11, 7, 1, 2, 1, 'ใช้งาน', 'Gs4ybnd6TCEzPBIzNPoE6s', '{\"1b14c653aa3d8482c95316497e787367.pdf\":\"Test Report Organic Rice Vinegar 2024 Exp.23022025.pdf\"}'),
(103, '202403-007', 'Test report Sorbic in sauce 2024', 'Test report Sorbic in sauce 2024', '', '2025-02-23', 60, '2024-03-06 14:11:39', NULL, 3, 3, 10, 7, 1, 2, 1, 'ใช้งาน', '6b6wSlc7jQSEq6201Ly-qk', '{\"18789e31940e397e421b09b71468aecc.pdf\":\"Test Report Sorbic Sauce 2024 Exp.23022025.pdf\"}'),
(104, '202403-008', 'Test report Sorbic in soy sauce 2024', 'Test report Sorbic in soy sauce 2024', '', '2025-02-23', 60, '2024-03-06 14:13:09', NULL, 3, 3, 9, 7, 1, 2, 1, 'ใช้งาน', 'AILouZxslZnHXC6FxxFwuO', '{\"3d67a4ce50cc05b003d7122ef3ac1a7c.pdf\":\"Test Report Sorbic Soy  Sauce 2024 Exp.23022025.pdf\"}'),
(105, '202403-009', 'Test report (ethanol/ So2) in Vinegar 2024', 'Test report (ethanol/ So2) in Vinegar 2024', '', '2025-02-23', 60, '2024-03-06 14:16:30', NULL, 3, 3, 11, 7, 1, 2, 1, 'ใช้งาน', '_wL9tn7AVLsOjb38WbrPw_', '{\"3b7824e68ca6407d9c8a3561b7d29239.pdf\":\"Test Report Vinegar (SO2 Ethanol) 2024 Exp.23022025.pdf\"}'),
(106, '202403-010', 'Organic NOP', 'Organic NOP', 'Natural & Premium', '2024-04-25', 60, '2024-03-06 15:57:40', '2024-09-27 15:07:35', 3, 3, 8, 8, 2, 1, 5, 'อยู่ในระหว่างการต่ออายุใบ Cert. คาดว่าจะได้รับเอกสาร ในเดือน พ.ย. 2567', '-Mcyi6QXajEElWFx1vmzdE', '{\"bc3e219bcf729cef74238b4d40a3d286.pdf\":\"Cert. Organic NOP - Natural&Premium Food Exp.25042024.pdf\",\"91b5a0eae945f69c61d96aca56f05cd1.pdf\":\"หนังสือรับรองการต่ออายุ Cert. - Natural & Premium Food.pdf\"}'),
(107, '202403-011', 'Organic EU', 'Organic EU Cert. และ Product in Conformity Cert.', 'Natural & Premium', '2024-07-17', 60, '2024-03-06 16:02:29', '2024-09-27 15:08:02', 3, 3, 8, 8, 2, 1, 5, 'อยู่ในระหว่างการต่ออายุใบ Cert. คาดว่าจะได้รับเอกสาร ในเดือน พ.ย. 2567', 'RFuZBXsXA9ARl3yfyL1yE_', '{\"8c4857bb0697aa510d1bedbdc613e1e2.pdf\":\"Cert. Organic EU - Natural&premium Food Exp.17072024.pdf\",\"b0c1e2419f0346214b381fb4383f3de4.pdf\":\"Cert. Products Conformity Cert. EU - Natural&premium Food Exp.17072024.pdf\",\"9a3c4b0786f3ac0343fedd5e6ff7d969.pdf\":\"หนังสือรับรองการต่ออายุ Cert. - Natural & Premium Food.pdf\"}'),
(108, '202403-012', 'Audit report Intertek (ISO22000) 2023', 'เป็นรายงานผลการ Audit ระบบ ISO22000 ของปี 2023\r\nสามารถส่งไฟล์ให้ลูกค้าได้ กรณีร้องขอผลการตรวจ', '', '2025-03-15', 60, '2024-03-15 15:59:56', '2024-03-15 16:01:13', 3, 3, 1, 3, 1, 2, 1, 'ใช้งาน', '4MqTdqJOawUWV53K1Xgz1Y', '{\"8016942832cfadf1165c731b0cdfa636.pdf\":\"AuditSummary-ENG (ISO22000) Exp.15032024.pdf\"}'),
(109, '202403-013', 'GHPs HACCP', 'Cert. GHPs & HACCP', 'Siam Submanee Co., Ltd.', '2026-12-19', 60, '2024-03-19 16:05:47', NULL, 3, 3, 3, 8, 2, 2, 1, 'ใช้งาน', 'dIg1Wz4XjZNj2VVHHZbEWJ', '{\"39b000f8df8c9f6833e23b580e64ab22.pdf\":\"HACCP&GHPs Cert. - Siam Submanee Exp.19122026.pdf\"}'),
(110, '202403-014', 'Kosher', 'Kosher Cert.', 'Right Solution Public Company Limited', '2024-12-31', 60, '2024-03-19 16:21:17', '2025-01-02 08:19:34', 3, 3, 14, 8, 2, 5, 3, 'รอใบ Cert. ใหม่', 'AynY8K0h9poU2VG_LOAEEr', '{\"70ff9f8bdb126852c476d8e9d5fe2ebb.pdf\":\"Kosher Cert. - Right Solution Exp.31122024.pdf\"}'),
(111, '202403-015', 'HALAL', 'HALAL Cert.', 'Siam Submanee Co., Ltd.', '2025-02-14', 60, '2024-03-19 16:37:40', NULL, 3, 3, 3, 8, 2, 4, 1, 'ใช้งาน', 'XkqooGUXpO2-ZFrRUDBalo', '{\"183ccbf8a02b26cc3f82f68239867530.pdf\":\"HALAL Cert. - Siam Submanee Exp.14022025.pdf\"}'),
(112, '202403-016', 'Test Report เกลือ', '', 'Siam Submanee Co., Ltd.', '2025-01-24', 60, '2024-03-19 17:00:46', '2025-01-25 11:10:14', 3, 3, 3, 7, 2, 2, 3, 'รอ Test Report ใหม่', 'QbVmFay67X1H7Dm1J2GejG', '{\"0089166f6d75fe12b292dc17ed6540c8.pdf\":\"Test Report เกลือ - Siam Submanee Exp.24012025.pdf\"}'),
(113, '202403-017', 'Test Report Activated Carbon YL-303', 'Test Report Activated Carbon YL-303', 'Right Solution Public Company Limited', '2024-12-28', 60, '2024-03-20 10:47:22', '2025-01-02 08:22:44', 3, 3, 14, 7, 2, 2, 3, 'รอใบ Test Report ใหม่', 'k2zJWiQmQpStXF0Xg61cLF', '{\"1437c752396816b3d62be4035b5434fa.pdf\":\"Test Report Activated Carbon - Right Solution Exp.28122024.pdf\"}'),
(114, '202403-018', 'ISO 9001:2015', 'ISO 9001:2015', 'Right Solution Public Company Limited', '2026-07-09', 60, '2024-03-20 11:12:18', NULL, 3, 3, 14, 8, 2, 5, 1, 'ใช้งาน', 'v2HcFeHAwtVc3M8ELjTHw4', '{\"596a9e9111a6fcefd8fe83f70d16eeaa.pdf\":\"ISO9001 2015 -  Nanping Yuanli (Right Solution) Exp.09072026.pdf\"}'),
(115, '202403-019', 'Organic EU', 'ECOCert.', 'Gebana BV', '2025-03-31', 60, '2024-03-20 11:28:00', '2024-11-23 08:23:22', 3, 3, 2, 8, 2, 1, 2, 'ยกเลิกใช้', 'dm1oSFm_wWG3NsYkCbqPXq', '{\"e4500eb52eb731904062b84b29b0c7c0.pdf\":\"Ecocert. OrG EU - Gebana BV Exp.31032025.pdf\"}'),
(116, '202403-020', 'Test Report Organic Sugar', 'Test Report น้ำตาลออร์แกนิค ของ บ. อุตสาหกรรมอ่างเวียน จำกัด', 'Credence', '2025-02-02', 60, '2024-03-20 15:08:28', NULL, 3, 3, 4, 7, 2, 1, 1, 'ใช้งาน', 'xPw7j9cKw8yeT4HrrGTTNK', '{\"da4b158109fd380ad3d9dfc60a5eb13e.pdf\":\"Test Report ORGANIC SUGAR - Credence Exp.02022025.pdf\"}'),
(117, '202403-021', 'HALAL', 'Cert. Halal - บ. อุตสาหกรรมอ่างเวียน จำกัด', 'Credence', '2025-03-19', 60, '2024-03-20 15:11:20', NULL, 3, 3, 4, 8, 2, 4, 1, 'ใช้งาน', 'wHWgIhSe6CaJFdcTKmXapU', '{\"381fdf83c6751e4a12e3911c4cf1775f.pdf\":\"Halal Cert. - Credence Exp.19032025.pdf\"}'),
(118, '202403-022', 'Test report Positive list 2024', 'Test report Positive list 2024', '', '2025-03-18', 60, '2024-03-20 16:25:17', NULL, 3, 3, 9, 7, 1, 2, 1, 'ใช้งาน', 'TjF9kfzM0t64cX1vvI3rxG', '{\"c16b09abbac27c50277fb7c81aaab60f.pdf\":\"Test Report Positive List - NFC Exp.18032025.pdf\"}'),
(119, '202403-023', 'Test Report Alcohol', 'แอลกอฮอล์ 95%', 'องค์การสุรา', '2025-02-09', 60, '2024-03-23 08:25:00', NULL, 3, 3, 15, 7, 2, 2, 1, 'ใช้งาน', 'iPDvXRhJS6H1HuNx-XR-SU', '{\"60506d528e3c0e1110b9df1198f95573.pdf\":\"Test Report Alcohol - องค์การสุรา Exp.09022025.pdf\"}'),
(120, '202403-024', 'Kosher', 'Cert. Kosher - Dongxiao', 'DPO (Thailand)', '2024-05-31', 60, '2024-03-27 16:16:06', '2024-09-25 13:54:34', 3, 3, 23, 8, 2, 5, 2, 'ยกเลิกใช้', '0Cx3sWj8R22RtA8jyiZiQw', '{\"83acd58202dc4419c1c8103cf4ded484.pdf\":\"kosher - Dongxiao Exp.31052024.pdf\"}'),
(121, '202403-025', 'BRC Global Standard', 'Cert. BRC Global standard - Dongxiao', 'DPO (Thailand)', '2025-01-07', 60, '2024-03-27 16:21:31', '2025-01-22 09:25:40', 3, 3, 23, 8, 2, 5, 2, 'ยกเลิกใช้', 'MRrMxB3bqN5EibAgf2AxOk', '{\"020d50013da124e4bb25a10843884824.pdf\":\"BRCGS - Dongxiao Exp.07012025.pdf\"}'),
(122, '202403-026', 'HACCP', 'Cert. HACCP - Dongxiao', 'DPO (Thailand)', '2024-05-17', 60, '2024-03-27 16:29:10', '2025-01-22 09:27:54', 3, 3, 23, 8, 2, 2, 2, 'ยกเลิกใช้', '4PoCW75-ZOlaHPQtkvCx0I', '{\"8a3d331df2ec218fb939fd2d0bad3df2.pdf\":\"HACCP - Dongxiao Exp.17052024.pdf\"}'),
(123, '202403-027', 'HALAL', 'Cert. Halal - Dongxiao', 'DPO (Thailand)', '2024-11-25', 60, '2024-03-27 16:30:27', '2025-01-22 09:29:38', 3, 3, 23, 8, 2, 2, 2, 'ยกเลิกใช้', 'AYNpoc7I3RX9GigB2HuyDI', '{\"7246ff6fcb237d79df2a1f36cd764deb.pdf\":\"Halal - Dongxiao Exp.25112024.pdf\"}'),
(124, '202403-028', 'ISO 9001:2015', 'Cert. ISO9001:2015 - Dongxiao', 'DPO (Thailand)', '2024-05-16', 60, '2024-03-27 16:35:52', '2025-01-22 09:34:56', 3, 3, 23, 8, 2, 2, 2, 'ยกเลิกใช้', 'VS73Y3kns2r295vMyGvQYh', '{\"81c4bb9d46c0e9f88ff08260eb03fd3e.pdf\":\"ISO9001- Dongxiao Exp.16052024.pdf\"}'),
(125, '202403-029', 'Non-GMO', 'Cert. Non-GMO - Dongxiao', 'DPO (Thailand)', '2024-10-18', 60, '2024-03-27 16:39:57', '2025-01-22 09:37:23', 3, 3, 23, 8, 2, 5, 2, 'ยกเลิกใช้', 'AME-6kuLHKCVu6KXb9MjuU', '{\"344116aa5a0ade502479ed2ce92f98c8.pdf\":\"Non-GMO - Dongxiao Exp.18102024.pdf\"}'),
(126, '202403-030', 'Fair Trade', 'Cert. Fair Trade', 'Pratithi', '2027-08-23', 60, '2024-03-29 10:23:47', NULL, 3, 3, 2, 8, 2, 3, 1, 'ใช้งาน', 'YHatC0TAaHnSePDc2fLGFL', '{\"5d0a52452f45481eaf3bcbc13a8a6c09.pdf\":\"Cert. FT. - Pratithi Exp. 23082027.pdf\"}'),
(127, '202403-031', 'Fair Trade', 'Cert. Fair Trade', 'Pratithi', '2027-02-06', 60, '2024-03-29 10:25:37', NULL, 3, 3, 2, 8, 2, 3, 1, 'ใช้งาน', 'BeNhbeZ2PVV2QeXC_p_Off', '{\"99c80eabd4004990033793c7fbcaca4d.pdf\":\"Cert. FT. - Pratithi Exp.06022027.pdf\"}'),
(128, '202403-032', 'Organic EU', 'Cert. Organic', 'Pratithi', '2025-01-03', 60, '2024-03-29 10:32:43', '2025-01-29 13:10:41', 3, 3, 2, 8, 2, 1, 2, 'ยกเลิกใช้', 'fK1jgwKoCl_9tryzrgcbKR', '{\"0a78fbb3117deba7ce85355c5105478f.pdf\":\"Cert. Organic - Pratithi Exp.03012025.pdf\"}'),
(129, '202403-033', 'VALID-IT Non-GM PROTOCOL', 'VALID-IT Non-GM PROTOCOL', '', '2025-04-30', 60, '2024-03-29 15:01:16', NULL, 3, 3, 1, 8, 1, 5, 1, 'ใช้งาน', 'u0r7o83LIC5Tew4saTLsUU', '{\"92268de43ef1984c94a5eea7480bfd90.pdf\":\"Cert. Valid-IT Non GMO - NFC EXP.30042025.pdf\"}'),
(130, '202403-034', 'Organic Production and Labelling of Organic Products', 'Organic Production and Labelling of Organic Products', 'La Compagnie Du Riz', '2025-03-31', 60, '2024-03-30 10:35:47', NULL, 3, 3, 1, 8, 2, 1, 1, 'ใช้งาน', '91aaY11NZ8X2i6o7OrjAt7', '{\"5e5c7b976d0fb3f243ffaa31c60fee98.pdf\":\"Cert. Organic products and Label - La Compagnie Du Riz Exp.31032025.pdf\"}'),
(131, '202404-001', 'Test report Soy Sauce (heavy metal/ Aflatoxin) ครั้งที่ 1 2024', 'Test report Soy Sauce (heavy metal/ Aflatoxin) ครั้งที่ 1 2024', '-', '2025-04-05', 60, '2024-04-29 10:52:21', '2024-04-29 10:54:54', 3, 3, 9, 7, 1, 2, 1, 'ใช้งาน', 'bjsIOu2_js1p__nemgXTlG', '{\"a2a1307e218ee4184670ea4eacd32dc5.pdf\":\"Test Report Alflatoxin&Heavy Metal  Soy Sauce 2024 - NFC Exp.05042025.pdf\"}'),
(132, '202404-002', 'Test report Soy Sauce (micro) ครั้งที่ 1 2024', 'Test report Soy Sauce (micro) ครั้งที่ 1 2024', '-', '2025-04-05', 60, '2024-04-29 10:54:03', NULL, 3, 3, 9, 7, 1, 2, 1, 'ใช้งาน', '4PEkVg8Nss7eB1fcgmEzhF', '{\"146d58110f3908572a008f81ff1f3cf8.pdf\":\"Test Report Micro Soy Sauce 2024 - NFC Exp.05042025.pdf\"}'),
(133, '202404-003', 'Test report Sauce (heavy metal/ Aflatoxin) ครั้งที่ 1 2024', 'Test report Sauce (heavy metal/ Aflatoxin) ครั้งที่ 1 2024', '-', '2025-04-05', 60, '2024-04-29 10:59:25', NULL, 3, 3, 10, 7, 1, 2, 1, 'ใช้งาน', 'R1AB1Afud-Up1Mdj71b-u3', '{\"91baf45d6d188d1ccab9f0a6fa320466.pdf\":\"Test Report Alflatoxin&Heavy Metal Sauce 2024 - NFC Exp.05042025.pdf\"}'),
(134, '202404-004', 'Test report Sauce ( Micro) ครั้งที่ 1 2024', 'Test report Sauce ( Micro) ครั้งที่ 1 2024', '-', '2025-04-05', 60, '2024-04-29 11:02:38', NULL, 3, 3, 10, 7, 1, 2, 1, 'ใช้งาน', 'moP8pv7sc4aJthjjaSp9g4', '{\"bf9ba4ecc29f2675a41c262eb3f40808.pdf\":\"Test Report Micro Sauce 2024 - NFC Exp.05042025.pdf\"}'),
(135, '202405-001', 'Kosher', 'Kosher Cert. และ Product List', '-', '2025-04-30', 60, '2024-05-06 16:29:35', NULL, 3, 3, 1, 8, 1, 5, 1, 'ใช้งาน', 't6woC_DGFjv_C0ODEkkitl', '{\"d83e5f1037d56eec1fa1b616469d77b4.pdf\":\"Kosher Cert. - NFC Exp.30042025.pdf\",\"e3bf623946ca3a31f088c88c6e4fd052.pdf\":\"Product List for Kosher - NFC Exp.30042025.pdf\"}'),
(136, '202405-002', 'Kosher', 'Cert. Kosher Citric Acid', 'FA 1991', '2025-03-31', 60, '2024-05-14 13:53:46', NULL, 3, 3, 19, 8, 2, 5, 1, 'ใช้งาน', 'vMTG7bYxQrxp6kgfVP98Pz', '{\"21ab2f84fdbaf791d69a589d35a9087c.pdf\":\"Kosher (Citric Acid) - FA 1991 Exp.31032025.pdf\"}'),
(137, '202405-003', 'Kosher', 'Cert. Kosher Lactic Acid', 'FA Food', '2024-03-31', 60, '2024-05-14 13:55:37', '2024-09-26 15:36:18', 3, 3, 16, 8, 2, 5, 2, 'ยกเลิกใช้', 'UrwnI5bZBibnMuGmBQLiZk', '{\"8acc6cefdb79607469c5b128a0227f8e.pdf\":\"Kosher Lactic Acid - FA Food Exp.31032024.pdf\"}'),
(138, '202405-004', 'Kosher', 'Cert. Kosher I+G', 'FA Food', '2024-12-31', 60, '2024-05-14 13:58:27', '2025-01-02 08:20:27', 3, 3, 17, 8, 2, 5, 3, 'รอใบ Cert. ใหม่', 'AWB0CEqEpLNq6Hf5vOfJQf', '{\"b760fd85fd007401aa37a33a772b0a50.pdf\":\"Kosher (I + G) - FA Food Exp.31122024.pdf\"}'),
(139, '202405-005', 'Kosher', 'Cert. Kosher น้ำตาลทรายขาว ครบุรี', 'ครบุรี', '2024-12-31', 60, '2024-05-14 14:00:39', '2025-01-02 08:20:47', 3, 3, 4, 8, 2, 5, 3, 'รอใบ Cert. ใหม่', 'Xu-Ce8XVNUUtYB83bgPnxL', '{\"c13239407af0259175ef6e1e4b8c1f05.pdf\":\"Kosher น้ำตาลทรายขาว - ครบุรี Exp. 31.12.2024.pdf\"}'),
(140, '202405-006', 'GHPs HACCP', '', 'เจ้าคุณเกษตรพืชผล', '2026-03-13', 60, '2024-05-14 14:49:51', '2024-05-14 14:51:13', 3, 3, 22, 8, 2, 2, 1, 'ใช้งาน', 'nfHgxoJ28Zc16cZq0hrrJ4', '{\"1a8fcbcddcfa6a93d27b74bbc076d79c.pdf\":\"Cert. GHPs&HACCP น้ำเชื่อม - เจ้าคุณเกษตรพืชผล Exp.13032026.pdf\"}'),
(141, '202405-007', 'Kosher', '', 'เจ้าคุณเกษตรพืชผล', '2024-08-31', 60, '2024-05-14 14:55:46', '2024-09-18 11:24:02', 3, 3, 22, 8, 2, 5, 2, 'ยกเลิกใช้', 'UvmBEWKrM7X1mLJPSDS9gm', '{\"aad330ee946a6b330aad5e853d4ac76c.pdf\":\"Cert. Kosher น้ำเชื่อม - เจ้าคุณเกษตรพืชผล Exp.31082024.pdf\"}'),
(142, '202405-008', 'HALAL', '', 'เจ้าคุณเกษตรพืชผล', '2025-07-02', 60, '2024-05-14 14:56:59', NULL, 3, 3, 22, 8, 2, 2, 1, 'ใช้งาน', 'vInBwf4dwGlvj38YfRtKHH', '{\"e738f870b4a92a1f180a149ba60a8563.pdf\":\"Cert. Halal น้ำเชื่อม - เจ้าคุณเกษตรพืชผล Exp.02072025.pdf\"}'),
(143, '202405-009', 'ISO 9001:2015', '', 'เจ้าคุณเกษตรพืชผล', '2026-05-10', 60, '2024-05-14 15:00:09', NULL, 3, 3, 22, 3, 2, 2, 1, 'ใช้งาน', 'dnel4un3AsuZ8yeKvfQqNe', '{\"e7db166ac7d56672e8cc8255f65acc75.pdf\":\"Cert. ISO9001.2015 น้ำเชื่อม - เจ้าคุณเกษตรพืชผล Exp.10052026.pdf\"}'),
(144, '202406-001', 'Test Report Organic Sugar', 'น้ำตาลทรายขาวออร์แกนิค', 'Siam Organic Food Co., Ltd.', '2025-05-14', 60, '2024-06-07 11:17:44', NULL, 3, 3, 4, 7, 2, 2, 1, 'ใช้งาน', 'zRpxWBvdbGQJ6WrVl-mnyX', '{\"745485b0fb2c4c01d1556ffe2ec4e07c.pdf\":\"Test Report น้ำตาลทรายขาวออร์แกนิค - สยามออร์แกนิค Exp.14052025.pdf\",\"71b2340f100ecf103ff55f787b5d5550.pdf\":\"Test Report สารตกค้างในน้ำตาลทรายขาวออร์แกนิค - สยามออร์แกนิค Exp.14052025.pdf\"}'),
(145, '202406-002', 'Organic NOP', '', 'Ban UM-SANG Rice', '2025-01-24', 60, '2024-06-07 11:28:54', '2025-01-25 11:10:56', 3, 3, 7, 8, 2, 1, 3, 'รอใบ Cert. ใหม่', 'b4H8TrRZECse6GuHYcknQV', '{\"38e09a3c4e4b41847f46b5b7de9654f1.pdf\":\"Cert. NOP - บ้านอุ่มแสง Exp.24012025.pdf\"}'),
(146, '202406-003', 'Organic EU', 'Organic EU', 'Ban UM-SANG Rice', '2025-05-19', 60, '2024-06-07 11:42:41', NULL, 3, 3, 7, 8, 2, 1, 1, 'ใช้งาน', 'yaHefVPCN_66Ye9dl24i7G', '{\"a4ee6ddbf44e703a8848f3608a59cda5.pdf\":\"Cert. EU - บ้านอุ่มแสง Exp.19052025.pdf\"}'),
(147, '202406-004', 'GHPs HACCP', 'GHPs HACCP', 'Ban UM-SANG Rice', '2026-06-19', 60, '2024-06-07 11:46:10', NULL, 3, 3, 7, 8, 2, 2, 1, 'ใช้งาน', 'oB5ufIHNUaWWg4sszTSAO4', '{\"c61ebb4956f04051cf5aafc67d4e9098.pdf\":\"Cert. GHPs & HACCP - บ้านอุ่มแสง Exp.19062026.pdf\"}'),
(148, '202406-005', 'Test report (micro) Un pasteurize Miso 2024', 'Test report (micro) Un pasteurize Miso 2024', '-', '2025-05-14', 60, '2024-06-07 13:14:33', NULL, 3, 3, 12, 7, 1, 2, 1, 'ใช้งาน', '5EngvADwIQL6CQFknCrzyZ', '{\"e962f4efeb1cfb622357c8772873c3db.pdf\":\"Test Report Micro Unpas Miso 2024 Exp.14052025.pdf\"}'),
(149, '202406-006', 'Test report (Micro Pas Miso) 2024', 'Test report (Micro Pas Miso) 2024', '-', '2025-05-14', 60, '2024-06-07 13:16:19', NULL, 3, 3, 12, 7, 1, 2, 1, 'ใช้งาน', 'XJoHYOS_LEaTDrZbQn3o39', '{\"124ddd342f4c1361378d4a6320baf15f.pdf\":\"Test Report Micro Pas Miso 2024 Exp.14052025.pdf\"}'),
(150, '202406-007', 'Test report (Aflatoxin / Heavy metal) miso 2024', 'Test report (Aflatoxin / Heavy metal) miso 2024', '-', '2025-05-14', 60, '2024-06-07 13:19:39', NULL, 3, 3, 12, 7, 1, 2, 1, 'ใช้งาน', '9jr1HCQM3E_r6w24nhzLWo', '{\"dbd2bb333221d94a8daea8f3b536c48e.pdf\":\"Test Report Aflatoxin & Hevy metal miso 2024 Exp.14052025.pdf\"}'),
(151, '202406-008', 'Thailand Trusted Mark (T Mark)', 'หนังสือรับรอง Thailand Trusted Mark (T Mark) ของ NFC', '-', '2025-09-01', 60, '2024-06-19 14:24:15', NULL, 3, 3, 1, 1, 1, 2, 1, 'ใช้งาน', 'CO_uVbcFAl2OThwjleoXkr', '{\"395854c6ec03dfebf8037d5a6dfab271.pdf\":\"หนังสือรับรอง Thailand Trusted Mark (T Mark) - NFC Exp.01092025.pdf\"}'),
(152, '202406-009', 'Organic EU', 'Organic EU', 'Kritsanakorn Organic Farm Co., Ltd.', '2024-12-22', 60, '2024-06-22 09:55:42', '2025-01-02 08:21:07', 3, 3, 7, 8, 2, 1, 3, 'รอใบ Cert. ใหม่', 'E_HHTawfwMfMIEYR9k9iym', '{\"1a50cc8f9e4b6bd759e6b26c63c8d37b.pdf\":\"Cert. Organic EU - กฤษณกรณ์ออร์แกนิคฟาร์ม Exp.22122024.pdf\"}'),
(153, '202406-010', 'Organic NOP', 'Organic NOP', 'Kritsanakorn Organic Farm Co., Ltd.', '2024-12-23', 60, '2024-06-22 09:57:41', '2025-01-02 08:21:27', 3, 3, 7, 8, 2, 1, 3, 'รอใบ Cert. ใหม่', 'uLWv47ga7rB__CZph3xsik', '{\"b4f24abd79af603b6bb9d7c40cd49d58.pdf\":\"Cert. Organic NOP - กฤษณกรณ์ออร์แกนิคฟาร์ม Exp.23122024.pdf\"}'),
(154, '202406-011', 'Organic NOP', '', 'Gebana BV', '2025-02-21', 60, '2024-06-24 11:30:27', NULL, 3, 3, 2, 8, 2, 1, 1, 'ใช้งาน', '0rwsdHT-lFzjTDKf06-p7r', '{\"c29e95463e1c52505c5ac05d5fbf1194.pdf\":\"Adenda NOP - COR Cataratas ใบยืนยันการส่งไปUSA-Canada.pdf\",\"6d86238174d931f60f56c11a24e42847.pdf\":\"Cert. Organic NOP - Gebana B.V. Exp. 21022025.pdf\"}'),
(155, '202407-001', 'HALAL', 'I+G', 'FA Food', '2024-09-18', 60, '2024-07-03 14:17:07', '2024-10-26 14:40:42', 3, 3, 17, 8, 2, 4, 5, 'อยู่ในขั้นตอนการต่ออายุใบ Cert. เนื่องจากมีการตรวจจาก Halal ในวันที่ 15/10/2567', 'UVcyFlmoouQFuenCoeVnqm', '{\"b0bd2608d164b2981df37ef88980fb82.pdf\":\"Cert. Halal - FA Food Exp.18092024.pdf\",\"d38c7be86721933cd4c482bd2dcc02a3.pdf\":\"Cert. Halal (I+G) - FA Food Exp.18092024.pdf\"}'),
(156, '202407-002', 'HALAL', 'Guar Gum', 'FA Food', '2024-09-18', 60, '2024-07-03 14:19:01', '2024-10-26 14:40:58', 3, 3, 18, 8, 2, 4, 5, 'อยู่ในขั้นตอนการต่ออายุใบ Cert. เนื่องจากมีการตรวจจาก Halal ในวันที่ 15/10/2567', '2EQ8BO7p5OlEtM6GkWgdwb', '{\"4466743199432a73d081107335cf55bf.pdf\":\"Cert. Halal - FA Food Exp.18092024.pdf\",\"ed4755c63571e76f752ece24414d7937.pdf\":\"Cert. Halal (Guar Gum) - FA Food Exp.18092024.pdf\"}'),
(157, '202407-003', 'HALAL', 'Citric Acid', 'FA Food', '2024-09-18', 60, '2024-07-03 14:20:17', '2024-10-26 14:41:09', 3, 3, 19, 8, 2, 4, 5, 'อยู่ในขั้นตอนการต่ออายุใบ Cert. เนื่องจากมีการตรวจจาก Halal ในวันที่ 15/10/2567', 'QB1N2_FtXciNyaqjCD08W9', '{\"471663adef41b9efcd8dc155fb47937d.pdf\":\"Cert. Halal - FA Food Exp.18092024.pdf\",\"5ea8185883c4c5f6542ecfcc804ec537.pdf\":\"Cert. Halal (Citric Acid) - FA Food Exp.18092024.pdf\"}'),
(158, '202407-004', 'HALAL', 'MSG', 'FA Food', '2024-09-18', 60, '2024-07-03 14:26:02', '2024-10-26 14:41:20', 3, 3, 24, 8, 2, 4, 5, 'อยู่ในขั้นตอนการต่ออายุใบ Cert. เนื่องจากมีการตรวจจาก Halal ในวันที่ 15/10/2567', 'PLchJXJ0_8CCf5F0PyrRBj', '{\"1c7dd90adb88113146736852c717cb25.pdf\":\"Cert. Halal - F.A. Food Exp.18092024.pdf\",\"2e269380e956dcdee2f816d5e61304e7.pdf\":\"Cert. Halal (MSG) - FA Food Exp.18092024.pdf\"}'),
(159, '202407-005', 'Organic NOP', '', 'Ubon Sunflower', '2025-01-16', 60, '2024-07-03 14:33:13', '2025-01-17 08:27:36', 3, 3, 13, 8, 2, 1, 3, 'รอใบ Cert. ใหม่', 'fKbDcghhv9wYjxsZ5R4na5', '{\"84daa8ee092945f638eedc446d462774.pdf\":\"Cert. Organic NOP - Ubon Sunflower Exp.16012025.pdf\"}'),
(160, '202407-006', 'Kosher', '', 'Ubon Sunflower', '2025-01-31', 60, '2024-07-03 14:37:39', '2025-02-01 10:19:43', 3, 3, 13, 8, 2, 5, 3, 'รอใบ Cert. ใหม่', 'qm4vfv8k_A6-3ArYsdFwse', '{\"7e43f262b19ef387e80b418cfef417bb.pdf\":\"Cert. Kosher - Ubon Sunflower Exp.31012025.pdf\"}');
INSERT INTO `documents` (`id`, `numbers`, `title`, `description`, `supplier_name`, `expiration_date`, `document_date`, `created_at`, `updated_at`, `created_by`, `updated_by`, `raw_material`, `categories_id`, `occupier_id`, `types_id`, `status_id`, `status_details`, `ref`, `docs`) VALUES
(161, '202407-007', 'ISO 9001:2015', '', 'Ubon Sunflower', '2026-02-17', 60, '2024-07-03 14:44:02', NULL, 3, 3, 13, 8, 2, 2, 1, 'ใช้งาน', 'qF0UY-XLtz61LGwkIW0i2q', '{\"f0491ea564d2ef4f9f1383e35cdb7fcc.pdf\":\"Cert. ISO9001 2015 - Ubon Sunflower Exp.17022026.pdf\"}'),
(162, '202407-008', 'GHPs HACCP', '', 'Ubon Sunflower', '2025-10-17', 60, '2024-07-03 14:45:35', NULL, 3, 3, 13, 8, 2, 2, 1, 'ใช้งาน', 'DP4a0NkoKfj4DZbQ5Lankx', '{\"7f8d444e677640d7a21eaebbb15b23e1.pdf\":\"Cert. GHPs - Ubon Sunflower Exp.17102025.pdf\",\"b47435af30cfb4fc672e32aa0ff86867.pdf\":\"Cert. HACCP - Ubon Sunflower Exp.17102025.pdf\"}'),
(163, '202407-009', 'HALAL', '', 'Ubon Sunflower', '2024-11-28', 60, '2024-07-03 14:47:40', '2024-11-30 09:00:12', 3, 3, 13, 8, 2, 2, 3, 'รอใบ Cert. ใหม่', '2wgvt8QEX27PoCCx88EuMQ', '{\"641c43b0d59bae38ed43e5f09f08d166.pdf\":\"Cert. Halal - Ubon Sunflower Exp.28112024.pdf\"}'),
(164, '202407-010', 'Organic EU', 'IMOCert.', 'Gebana BV', '2025-05-15', 60, '2024-07-09 14:21:51', NULL, 3, 3, 2, 8, 2, 1, 1, 'ใช้งาน', '79N-xnq67xcP_vJtpSwbWZ', '{\"3a9e3c9ca2a608022eca9eeebf858d7f.pdf\":\"Cert. Organic EU - Gebana B.V. Exp.15052025 (IMO).pdf\"}'),
(165, '202407-011', 'Test Report Molasses', 'Test Report', 'รวมเกษตรอุตสาหกรรม', '2025-02-28', 60, '2024-07-13 09:38:08', NULL, 3, 3, 25, 7, 2, 2, 1, 'ใช้งาน', '4lF4Wq7EOID80HmTuEndmS', '{\"364076e866ad6754e73900b2078f9e8a.pdf\":\"Test Report Molass - รวมเกษตรอุตสาหกรรม Exp.28022025.pdf\"}'),
(166, '202407-012', 'Test Report High Fructose', '', 'เจ้าคุณเกษตรพืชผล', '2025-02-19', 60, '2024-07-13 14:55:53', NULL, 3, 3, 22, 7, 2, 2, 1, 'ใช้งาน', 'X8adxDbQpzyyFQ2-Kw42W6', '{\"f4cd67f74a7415224644135ebf07dbcb.pdf\":\"Test Report High Fructose - เจ้าคุณเกษตรพืชผล Exp.19022025.pdf\"}'),
(167, '202407-013', 'Organic EU', '', 'Grace Bio', '2024-03-31', 60, '2024-07-13 14:59:54', '2024-08-17 14:04:21', 3, 3, 7, 8, 2, 1, 2, 'ยกเลิกใช้', 'lnIibdJtfVTbFzTFt7RnPC', '{\"b5920d29490a5834f95170783d4aa735.pdf\":\"Cert. EU - Grace Bio Exp.31032024.pdf\"}'),
(168, '202407-014', 'Fair Trade', '', 'Grace Bio', '2026-02-10', 60, '2024-07-13 15:01:06', '2024-07-16 13:25:33', 3, 3, 7, 8, 2, 3, 1, 'ใช้งาน', 'RmOyDyni2KYqQ17X9CiNMs', '{\"2b81b7e60699c71db03887df1d531f85.pdf\":\"Cert. Fairtrade - Grace Bio Exp.10022026.pdf\"}'),
(169, '202407-015', 'Organic NOP', '', 'Grace Bio', '2024-08-01', 60, '2024-07-13 15:02:04', '2024-08-17 14:05:52', 3, 3, 7, 8, 2, 1, 2, 'ยกเลิกใช้', 'jMAp66GoShjrw6lMAXdhjW', '{\"9b82f5cb84937ff730d3d1f3a9c644d7.pdf\":\"Cert. NOP,COR - Grace Bio Exp.01082024.pdf\"}'),
(170, '202407-016', 'Organic EU', '', 'Ubon Sunflower', '2025-03-31', 60, '2024-07-16 13:13:51', NULL, 3, 3, 13, 8, 2, 1, 1, 'ใช้งาน', 'wtN77hwyH9LAjC6kF2fXcB', '{\"1e05cc477b7d87234bc92aa7dce2ef61.pdf\":\"Cert. Organic EU - Ubon Sunflower Exp.31032025.pdf\"}'),
(171, '202407-017', 'Organic EU', '', 'Chamnan Food Co., Ltd.', '2025-06-30', 60, '2024-07-16 13:15:46', NULL, 3, 3, 11, 8, 2, 1, 1, 'ใช้งาน', 'BJj-JA5CN3KXd9WwwMcy40', '{\"863633206da7c8346ab7c2dd8fc232f2.pdf\":\"Cert. Organic EU - Chamnan Food Exp.30062025.pdf\"}'),
(172, '202407-018', 'Test Report Organic Rice (GMOs)', '', 'Grace Bio', '2025-02-26', 60, '2024-07-16 13:20:34', NULL, 3, 3, 7, 7, 2, 1, 1, 'ใช้งาน', 'IlTdxeqlJrfSCdHMcXyNto', '{\"c89b880e3e336be8f461965de7cea20d.pdf\":\"Test Report GMOs Organic FT. Rice - Grace Bio Exp.26022025.pdf\"}'),
(173, '202407-019', 'Test Report Organic Cassava Flour', '', 'Ubon Sunflower', '2025-05-28', 60, '2024-07-27 09:50:34', NULL, 3, 3, 13, 7, 2, 1, 1, 'ใช้งาน', 'xPUUrPEghaJDCAPxKUsf4k', '{\"280300fa0eb4533922a203d87efbf517.pdf\":\"Test Report Or. Cassava Flour - Ubon Sunflower Exp.28052025.pdf\"}'),
(174, '202407-020', 'Organic', 'Cert. Organic ของ Cassava Flour - Grit Cert.', 'Ubon Sunflower', '2024-12-26', 60, '2024-07-27 09:55:50', '2025-01-02 08:21:49', 3, 3, 13, 8, 2, 1, 3, 'รอใบ Cert. ใหม่', 'onBsIijRKjW00klJHvlARi', '{\"8ee29336af09dd46735408c42bb744c0.pdf\":\"Cert. Organic (Grit Cert.) - Ubon Sunflower Exp.26122024.pdf\"}'),
(175, '202407-021', 'Organic', 'Cert. Organic (Ministry of Agriculture and Cooperatives Thailand)', 'Ubon Sunflower', '2026-03-05', 60, '2024-07-27 09:58:22', NULL, 3, 3, 13, 8, 2, 1, 1, 'ใช้งาน', 'JWBn6ZeajM54GpTPtJjCKe', '{\"1bcdd969e44e54c677f783096d1a1634.pdf\":\"Cert. Organic (Ministry of Agriculture and Cooperatives Thailand) - Ubon Sunflower Exp.05032026.pdf\"}'),
(176, '202407-022', 'Test report GMOs in Soy sauce 2024', 'Test report GMOs in Soy sauce 2024', '-', '2025-07-19', 60, '2024-07-27 18:03:38', NULL, 3, 3, 9, 7, 1, 2, 1, 'ใช้งาน', 'QOE2tsTihermTKWJ7662QY', '{\"80902b0f2f966f9b7fb4be8797e126b5.pdf\":\"Test Report GMOs (Soy Sauce) 2024 Exp.19072025.pdf\"}'),
(177, '202407-023', 'Test report MCPD ครั้งที่ 2 2024', 'Test report MCPD ครั้งที่ 2 2024', '-', '2025-07-18', 60, '2024-07-27 18:05:27', NULL, 3, 3, 1, 7, 1, 2, 1, 'ใช้งาน', '_Fp9S9SAiW6HX3KwpElEBq', '{\"a34c946dbd9f3c90d7055a9e9d21ff1d.pdf\":\"Test Report MCPD ครั้งที่ 2 2024 Exp.18072025.pdf\"}'),
(178, '202407-024', 'Test report Melamine ครั้งที่ 2 2024', 'Test report Melamine ครั้งที่ 2 2024', '-', '2025-07-18', 60, '2024-07-27 18:07:15', NULL, 3, 3, 1, 7, 1, 2, 1, 'ใช้งาน', '3UMA6TkTZJ2f-bkIEyQ5b6', '{\"e8bb9f457dd6e8c4b6bc6795a494e472.pdf\":\"Test Report Melamine ครั้งที่ 2 2024 Exp.18072025.pdf\"}'),
(179, '202407-025', 'Test Report GMOs (Organic FT. Rice - Grace Bio)', 'Test Report GMOs (Organic FT. Rice - Grace Bio) ทาง NFC ส่งตรวจสอบ', 'Grace Bio', '2025-06-26', 60, '2024-07-27 18:11:35', '2024-07-27 18:13:55', 3, 3, 7, 7, 1, 1, 1, 'ใช้งาน', 'CDRbQK2LHTIVNChSQeRlZP', '{\"3bde3a991daf977b92f0bae48d49029a.pdf\":\"Test Report GMOs (Organic FT. Rice - Grace Bio) Exp.26062025.pdf\"}'),
(180, '202407-026', 'Test Report GMOs (Organic FT. Soybean - Pratithi)', 'Test Report GMOs (Organic FT. Soybean - Pratithi) ทาง NFC ส่งตรวจสอบ', 'Pratithi', '2025-04-09', 60, '2024-07-27 18:13:19', NULL, 3, 3, 2, 7, 1, 1, 1, 'ใช้งาน', 'J9Y0S1f784oWJOTNMd3ARv', '{\"ee69f14b6223698ddcb71107190ea76a.pdf\":\"Test Report GMOs (Organic FT. Soybean - Pratithi) Exp.09042025.pdf\"}'),
(181, '202408-001', 'HALAL', 'Halal - NFC', '', '2025-07-31', 60, '2024-08-05 13:37:06', '2024-08-05 13:39:08', 3, 3, 1, 8, 1, 4, 1, 'ใช้งาน', 'fHTBW_pt_Cur8UtE00EYO8', '{\"6d57d58f008b094cfcd86d8a1065260e.pdf\":\"Cert. Halal - NFC Exp.31072025.pdf\",\"a6f9b143571118990442c9dd645803c8.pdf\":\"Cert. Halal (Organic Miso) - NFC Exp.31072025.pdf\"}'),
(182, '202408-002', 'Organic EU', 'Ceres Organic Standard (CE-OS) , Product List', '', '2024-10-31', 60, '2024-08-07 11:22:57', '2024-10-31 09:24:28', 3, 3, 1, 8, 1, 1, 2, 'ยกเลิกใช้', 'JORsjMLjehQaeTYD_gJHOs', '{\"75f5adc3dfab269f785be191fbf912c7.pdf\":\"Cert. Organic EU - NFC Exp.31102024.pdf\",\"0cae6444023a0f02ce185c0917fa83d0.pdf\":\"Product list Organic EU - NFC Exp.31102024.pdf\"}'),
(183, '202408-003', 'Organic NOP', '', '', '2024-10-31', 60, '2024-08-07 11:25:46', '2024-11-01 13:26:48', 3, 3, 1, 8, 1, 1, 2, 'ยกเลิกใช้', 'sPEIq8WTB3jXZ69kmTWY5z', '{\"7307c8237539d16904c8eeae35de142b.pdf\":\"NFC-Certificate NOP Exp. 31072024 ขยายเวลาถึง 31102024.pdf\"}'),
(184, '202408-004', 'Label Approve Organic EU - La Du Riz', 'Label Approve Organic EU - La Du Riz', 'La Compagnie Du Riz', '2029-10-31', 60, '2024-08-13 11:59:28', '2024-08-27 14:04:45', 3, 3, 1, 8, 1, 1, 1, 'ใช้งาน', 'baTgkIHm2yd9O0qizDL9iW', '{\"81288f924a1e734ac373de09c1e463d0.pdf\":\"2.ADR-MaJ Vinaigre riz 600ml V 170724.pdf\",\"a60dd22bab589de5d207c71837e2abde.pdf\":\"NFC_EU label approval letter_2024.03.19 (3).pdf\",\"3a9f347973d81be0957d1e6e8bb06504.pdf\":\"Northern Food_Label Approval-EU 24.02.27 (2).pdf\",\"a5ca9156d3ea405eb626b8f2fba21e52.pdf\":\"Northern Food_Label Approval-EU 24.06.20.pdf\",\"a7a13615013f6db6f1c4b82230b1bafe.pdf\":\"Label Approval EU Rice vinegar 8.8.24.Northern Food Complex.pdf\",\"da4e3990e356f014539d6f34e316c68f.pdf\":\"Label Approval EU - Miso Genmai, Miso shiro.pdf\",\"672bfea5301b816b80ebb4d291ceaf24.pdf\":\"03 #Miso Shiro 200g 210x42-HD.pdf\",\"a391546c9a1fb15656c4c7f903562e9b.pdf\":\"01 #Miso Genmai 200g 210x42-HD.pdf\",\"571968b49b0acfedb241a40e9be51518.pdf\":\"Label Approval EU Rice vinegar 8.8.24.Northern Food Complex.pdf\",\"76e27466b24ca78ea7e7ddcce153eb61.pdf\":\"ADR-MaJ Vinaigre riz 600ml V 170724.pdf\",\"e7191d83cf6637ffe2e17b50191caa6a.jpg\":\"0151627 Riz Vinaigre de Riz 600ml  ลูกค้าลงนาม.jpg\"}'),
(185, '202408-005', 'Label Approve Organic EU - Fairtrade Original', 'Label Approve Organic EU - Fairtrade Original', '-', '2029-08-14', 60, '2024-08-14 16:13:48', '2024-08-14 16:14:11', 3, 3, 1, 1, 1, 1, 1, 'ใช้งาน', 'FGDLo6QnABBj8aPTiJUAUN', '{\"446faec2685dbda31f260749304ea53d.jpg\":\"PLN-1270146825 Fairtrade Original SojaSaus 200ml   แบบโรงพิมพ์ netherland.jpg\",\"a1c1aad5d4ed87de30a2e96ad627fe44.jpg\":\"PLN-126 0146819 Fairtrade Original SojaSaus 200ml   แบบโรงพิมพ์ german.jpg\",\"89e9d073aa49d6d51651cbfa8eec66d7.pdf\":\"Label Approval EU_2024.04.04 (1)  ลูกค้า Approved - Fairtrade Original.pdf\",\"625e7f39159aca4f0cad695b8729eec0.pdf\":\"Label Approval EU_2024.04.04 (1) - Fairtrade Original.pdf\"}'),
(186, '202408-006', 'Organic EU', '', 'Grace Bio', '2026-03-31', 60, '2024-08-17 14:03:41', NULL, 3, 3, 7, 8, 2, 1, 1, 'ใช้งาน', '9bPK6izTnP2vAg70hZwXZu', '{\"b5c8715cffe802da5dae5f37606b6f34.pdf\":\"Cert. Organic EU - Grace Bio Exp.31032026.pdf\"}'),
(187, '202408-007', 'Organic NOP', '', 'Grace Bio', '2025-05-01', 60, '2024-08-17 14:05:15', NULL, 3, 3, 7, 8, 2, 1, 1, 'ใช้งาน', 'I14L19RtIlv50RhiuqFz7i', '{\"2419e3716d6434430e86d2c144699c44.pdf\":\"Cert. Organic NOP - Grace Bio Exp.01052025.pdf\"}'),
(188, '202408-008', 'Organic EU', '', 'Siam Organic Food Products Co., Ltd.', '2025-05-26', 60, '2024-08-23 10:30:50', NULL, 3, 3, 4, 8, 2, 1, 1, 'ใช้งาน', 'ZDlbO17GfzSL_tiiQRK4j7', '{\"585a34777c2884e77c61240bcc2d2f8e.pdf\":\"Cert. Organic EU - Siam Organic Food Exp.26052025.pdf\"}'),
(189, '202409-001', 'Label Approve Organic NOP - PB Farm', 'Label Approve Organic NOP - PB Farm', 'PB Farm', '2029-09-04', 60, '2024-09-05 10:04:19', '2024-09-17 15:29:54', 3, 3, 1, 8, 1, 1, 2, 'ยกเลิกใช้', 'gSkcybPYMiLdMoo0xF4odZ', '{\"40542eb3b69416a2bc27b04b8d602a23.pdf\":\"Label-Approval-NOP - Organic Pasteurized Miso 200g (PB) 04.09.24.pdf\",\"0406aae0b4ebf4d5b719d32ea6ed866e.pdf\":\"Label - Organic Pasteurized Miso (PB) 200g.pdf\"}'),
(190, '202409-002', 'ผลตรวจ GMO ถั่วเหลืองระหว่างปี', '', 'Gebana BV', '2025-08-08', 60, '2024-09-09 09:57:11', '2024-09-09 09:57:45', 3, 3, 2, 7, 1, 1, 1, 'ใช้งาน', 'gn5-qFpZ_3z5_jBKg0YMz2', '{\"d7eeb1165a6a9f5114c83701506870b2.pdf\":\"Sample#1 Organic soybean from GEBANA B._00569497_AR-24-GS-030419-01.pdf\"}'),
(191, '202409-003', 'ผลตรวจ GMO ถั่วเหลืองระหว่างปี', '', 'Organic Fairtrade Sisaket Community Enterprise', '2025-08-08', 60, '2024-09-09 11:32:09', NULL, 3, 3, 2, 7, 1, 1, 1, 'ใช้งาน', 'LCVadQxMogtOzD2P_WSnqK', '{\"31ce731c833ec5bd28c2c0675dcdc56f.pdf\":\"Sample#2 Organic soybean from Organic F_00569498_AR-24-GS-030420-01.pdf\"}'),
(192, '202409-004', 'Organic NOP', '', 'Siam Organic Food Products Co., Ltd.', '2025-01-28', 60, '2024-09-09 11:41:22', '2025-02-01 10:20:25', 3, 3, 4, 8, 2, 1, 3, 'รอใบ Cert. ใหม่', 'fG7MA0jye8K498D9ac3P0l', '{\"e757848c2c14dc2814ca20030c0f8a67.pdf\":\"Cert. Organic NOP - Siam Organic Food Ans.28012024.pdf\"}'),
(193, '202409-005', 'Sedex Audit Reference', 'Sedex Audit (SMETA)', '-', '2025-09-02', 60, '2024-09-12 09:44:10', NULL, 3, 3, 1, 1, 1, 4, 1, 'ใช้งาน', 'Ii74wat0ibjnPNf5pabuuL', '{\"316870ca35ca8db9ffb652652f420f01.pdf\":\"Sedex Audit start date 02092024.pdf\"}'),
(194, '202409-006', 'Label Approve Organic EU + NOP - PB Farm', 'Label Approve Organic EU + NOP - PB Farm', 'PB Farm', '2029-09-04', 60, '2024-09-17 15:31:37', NULL, 3, 3, 1, 8, 1, 1, 1, 'ใช้งาน', 'pZNFnhgBouZ_UpypDrfnM4', '{\"fc1259dcd6ffb6ea7bb8b391622f8d50.pdf\":\"Label Approval EU + NOP - Label Organic Pasteurized Miso 200g (PB Farm) 04.09.24.pdf\",\"c5775ff77534f60f336edc6ee96ac4f2.pdf\":\"Label - Organic Pasteurized Miso 200g (PB Farm) 21x4.2cm.pdf\"}'),
(195, '202409-007', 'Kosher', 'Kosher Cert.', 'เจ้าคุณเกษตรพืชผล', '2025-08-31', 60, '2024-09-18 11:23:33', NULL, 3, 3, 22, 8, 2, 5, 1, 'ใช้งาน', 'qFcxbNFO4Xc2xWqXNdqpAv', '{\"ec4fc90f5035fffc75f94b749d55fc85.pdf\":\"Cert. Kosher (High Fructose) - เจ้าคุณเกษตรพืชผล Exp.31082025.pdf\"}'),
(196, '202409-008', 'HALAL', 'Cert. Halal Ver. Thai - Eng. ', 'Siam Organic Food Products Co., Ltd.', '2025-11-23', 60, '2024-09-19 14:37:15', NULL, 3, 3, 4, 8, 2, 4, 1, 'ใช้งาน', 'kjqkYL12ifLSngOCYOEmu_', '{\"18f3c5e301e892f9ec6c4358c50f1bcd.pdf\":\"Cert. Halal - Siam Organic Food (Ver.Eng.) Exp.23112025.pdf\",\"b514362db7f2a56d132f0608f6612f71.pdf\":\"Cert. Halal - Siam Organic Food (Ver.Thai) Exp.23112025.pdf\"}'),
(197, '202409-009', 'Kosher', 'Cert. Kosher - Dongxiao', 'DPO (Thailand)', '2025-05-31', 60, '2024-09-25 13:55:57', NULL, 3, 3, 23, 8, 2, 5, 1, 'ใช้งาน', 'QUfN4ufF0JQAcWWa41upEB', '{\"be84064393421d175392a848e512bd56.pdf\":\"Cert. Kosher (Moltodextrin) - DPO (Thailand) Exp.31052025.pdf\"}'),
(198, '202409-010', 'Kosher', '', 'FA Food', '2025-03-31', 60, '2024-09-26 15:38:13', NULL, 3, 3, 16, 8, 2, 5, 1, 'ใช้งาน', '3H67HquVIXKzBCiXmmjz5F', '{\"e76e5fc4c03b76930e598b55f5ff6fe4.pdf\":\"Cert. Kosher (Lactic Acid) - FA Food exp.31032025.pdf\"}'),
(199, '202410-001', 'Organic EU', 'Cert. Organic EU and Product List', 'Enaxus (Thailand)', '2024-10-31', 60, '2024-10-02 16:02:08', '2024-11-01 09:53:34', 3, 3, 26, 8, 2, 1, 4, 'ใช้งาน', 'Y4sfDx_aEi0qb4i-XdylHS', '{\"1a1855b12d9bb8031ec7e60c6317a4c0.pdf\":\"Cert. Organic EU - Enaxus (Thailand) Exp.31102024.pdf\",\"9f1e2a7697d98220da5661e53918d3a6.pdf\":\"Product list - Enaxus (Thailand) Exp.31102024.pdf\"}'),
(200, '202410-002', 'Organic NOP', '', 'Enaxus (Thailand)', '2024-10-31', 60, '2024-10-02 16:08:19', '2024-11-01 09:54:04', 3, 3, 26, 1, 2, 1, 4, 'ใช้งาน', 'QcZkSX2H8rc2bLK4YOzQAl', '{\"f09020b21a478cb3653639bcc65407de.pdf\":\"เอกสารรับรองว่าได้รับการรับรอง Organic NOP - Enaxus (Thailand) Anv.-.pdf\"}'),
(201, '202410-003', 'Organic EU', '', 'Credence', '2025-02-15', 60, '2024-10-03 18:02:44', NULL, 3, 3, 4, 8, 2, 1, 1, 'ใช้งาน', 'PbpdCwm_1jPjaEN7fwDK54', '{\"4f551bd1f986a27605fb79ff41036593.pdf\":\"Cert. Organic EU - Angvian Exp.15022025.pdf\"}'),
(202, '202410-004', 'Organic NOP', 'Cert. Organic NOP - AV', 'Credence', '2025-10-03', 60, '2024-10-03 18:05:45', NULL, 3, 3, 4, 8, 2, 1, 1, 'ใช้งาน', '5NH-vEOtPoaBjkoUNo2wxo', '{\"9a3f0ed790779211159bf136abcb7fb9.pdf\":\"Cert. Organic NOP - Angvian Anv.03102024.pdf\"}'),
(203, '202410-005', 'Halal', 'Cert. Halal - AV', 'Credence', '2024-11-17', 60, '2024-10-03 18:08:03', '2024-11-23 08:28:55', 3, 3, 4, 8, 2, 4, 3, 'รอใบ Cert. ใหม่', '-O8ixbjJZIkDiwAYsn7Ll8', '{\"542badccd7042cd2d1801793fffd08a4.pdf\":\"Cert. Halal - Angvian Exp.17112024.pdf\"}'),
(204, '202410-006', 'Japanese Gluten Free', 'Test Report - Less Salt Soy Sauce (Gluten Free)', '-', '2025-09-02', 60, '2024-10-12 11:54:21', NULL, 3, 3, 1, 7, 1, 2, 1, 'ใช้งาน', 'S4yd8ipr42NCq7mKmxewvg', '{\"e261f4e5310d24c8f44bd46b79c4394f.pdf\":\"Test Report - Less Salt Soy Sauce (Gluten Free) Exp.02092025.pdf\"}'),
(205, '202410-007', 'Japanese Gluten Free', 'Test Report - Less Salt Soy Sauce (Gluten Free)', '-', '2025-09-02', 60, '2024-10-12 13:18:07', NULL, 3, 3, 1, 7, 1, 2, 1, 'ใช้งาน', 'njMQzVflQ1r5TxENlsyKot', '{\"cb588f58df3306b71e539e963bfb7ab4.pdf\":\"Test Report - Less Salt Soy Sauce (Gluten Free) Exp.02092025.pdf\"}'),
(206, '202410-008', 'Test report Sauce (heavy metal/ Aflatoxin) ครั้งที่ 2 2024', 'Test report Sauce (heavy metal/ Aflatoxin) ครั้งที่ 2 2024', '-', '2025-10-04', 60, '2024-10-21 13:53:10', NULL, 3, 3, 10, 7, 1, 2, 1, 'ใช้งาน', '1ekvP8nMddi1pydtv0dk1j', '{\"9550f4112aa9aa955e531c0defe30881.pdf\":\"Test Report Sauce (heavy metal & Aflatoxin) ครั้งที่ 2 2024 Exp.04102025.pdf\"}'),
(207, '202410-009', 'Test report Soy Sauce (heavy metal/ Aflatoxin) ครั้งที่ 2 2024', 'Test report Soy Sauce (heavy metal/ Aflatoxin) ครั้งที่ 2 2024', '-', '2025-10-04', 60, '2024-10-21 13:57:34', NULL, 3, 3, 9, 7, 1, 2, 1, 'ใช้งาน', '62J5y8t01uNk2Fpwxq5tZ4', '{\"05a2b3ca90e08996044315840a36937a.pdf\":\"Test Report Soy Sauce (heavy metal & Aflatoxin) ครั้งที่ 2 2024 Exp.04102025.pdf\"}'),
(208, '202410-010', 'Test Report Micro Soy Sauce ครั้งที่ 2 2024', 'Test Report Micro Soy Sauce ครั้งที่ 2 2024', '-', '2025-10-08', 60, '2024-10-21 13:59:23', NULL, 3, 3, 9, 7, 1, 2, 1, 'ใช้งาน', 'nbPV0KwJv894fM4ga88DaP', '{\"0c1bfa8def25e45129adfcdd94ec8e7b.pdf\":\"Test Report Soy Sauce (Micro) ครั้งที่ 2 2024 Exp.08102025.pdf\"}'),
(209, '202410-011', 'Test Report Micro Sauce ครั้งที่ 2 2024', 'Test Report Micro Sauce ครั้งที่ 2 2024', '-', '2025-10-08', 60, '2024-10-21 14:00:26', NULL, 3, 3, 10, 7, 1, 2, 1, 'ใช้งาน', 'JnDa0AtUeabHHowaUtR8Is', '{\"e551bef4c5974193e2376e1b8a26db7d.pdf\":\"Test Report Sauce (Micro) ครั้งที่ 2 2024 Exp.08102025.pdf\"}'),
(210, '202410-012', 'HALAL', '', 'Chamnan Food Co., Ltd.', '2025-10-08', 60, '2024-10-22 10:05:25', '2024-10-22 10:06:04', 3, 3, 11, 8, 2, 2, 1, 'ใช้งาน', 'i1P00UslO2MCPDaNFH9UFw', '{\"42cbc2ca59c035badf0d1519ee912936.pdf\":\"Cert. Halal - Chamnan Food Exp.08102025.pdf\"}'),
(211, '202410-013', 'GHPs HACCP', 'Cert.', 'องค์การสุรา', '2025-09-02', 60, '2024-10-22 10:11:27', NULL, 3, 3, 15, 8, 2, 2, 1, 'ใช้งาน', 'F7s_r1U2qvlW1Pvk7EITcM', '{\"47cad1448de1625af4528879771aea6e.pdf\":\"Cert. GHPs - องค์การสุรา Exp.02092025.pdf\",\"f15d7f43d05970bed4511f74efd0b8c9.pdf\":\"Cert. HACCP - องค์การสุรา Exp.02092025.pdf\"}'),
(212, '202410-014', 'FSSC22000 V.5.1', '', 'องค์การสุรา', '2025-09-02', 60, '2024-10-22 10:13:35', '2024-10-22 10:18:20', 3, 3, 15, 8, 2, 2, 1, 'ใช้งาน', 'KEuUCBcm8QXVw7uVIBiwwJ', '{\"cd74d07e8e71120a892d1355c57c25ff.pdf\":\"Cert. FSSC22000 - องค์การสุรา Exp.02092025.pdf\"}'),
(213, '202410-015', 'ISO9001:2015', 'Cert.', 'องค์การสุรา', '2026-09-15', 60, '2024-10-22 10:15:22', NULL, 3, 3, 15, 8, 2, 2, 1, 'ใช้งาน', 'Jr7kDjwlFiGMNmbWoTqkZt', '{\"189f32ae37c160bb1be432d6fa118433.pdf\":\"Cert. ISO9001 2015 - องค์การสุรา Exp.15092026.pdf\"}'),
(214, '202410-016', 'HALAL', '', 'S A O การเกษตร', '2025-10-14', 60, '2024-10-22 10:36:54', NULL, 3, 3, 27, 8, 2, 2, 1, 'ใช้งาน', 'tKof08vR6w8Q5lnDXlW7Pr', '{\"05c6f9aa001359cd1b3474b4c5b31fa0.pdf\":\"Cert. Halal - S A O การเกษตร Exp.14102025.pdf\"}'),
(215, '202410-017', 'GHPs HACCP', '', 'S A O การเกษตร', '2025-11-02', 60, '2024-10-22 10:38:43', NULL, 3, 3, 27, 8, 2, 2, 1, 'ใช้งาน', 'i7m1NnH3Z50VOdusNtZCT8', '{\"7f3f2dd3c6f20aa8ed6d56da0222de4b.pdf\":\"Cert. GHPs & HACCP - S A O การเกษตร Exp.02112025.pdf\"}'),
(216, '202410-018', 'ISO22000:2018', '', 'S A O การเกษตร', '2025-12-04', 60, '2024-10-22 10:40:40', NULL, 3, 3, 27, 8, 2, 2, 1, 'ใช้งาน', 'lCt4T6ZTyKGJw-38w-53TO', '{\"667948982ce65128a250b0a6831da8d8.pdf\":\"Cert. ISO22000 2018 - S A O การเกษตร Exp.04122025.pdf\"}'),
(217, '202410-019', 'Organic EU', 'Ceres Organic Standard (CE-OS) , Product List', '-', '2025-07-31', 60, '2024-10-31 09:25:52', NULL, 3, 3, 1, 8, 1, 1, 1, 'ใช้งาน', '8syUyeeIjmTckVUOSP-avq', '{\"94dd072651a553f97af19b02335dce1f.pdf\":\"Cert. Organic EU - NFC Exp.31072025.pdf\",\"fcad72de0cd09b96a99ed6143f20f0d4.pdf\":\"Product list Organic EU - NFC Exp.31072025.pdf\"}'),
(218, '202410-020', 'Kosher', 'Cert. Kosher องค์การสุรา', 'องค์การสุรา', '2025-09-30', 60, '2024-10-31 13:34:46', NULL, 3, 3, 15, 8, 2, 5, 1, 'ใช้งาน', 'ikU9IaRtOTCRBeG4TP24Xl', '{\"61422f4dbb68ca6408ce93b4ef293dc5.pdf\":\"Cert. Kosher (Alcohol) - องค์การสุรา Exp.30092025.pdf\"}'),
(219, '202411-001', 'Kosher', 'Cert. Kosher - Koji starter for Miso', 'Higuchi', '2025-05-31', 60, '2024-11-01 10:04:28', NULL, 3, 3, 28, 8, 2, 5, 1, 'ใช้งาน', '-_QMJQrO45I8ESETzbwom0', '{\"5b10995861db1ab0b5a91c275097e6ab.pdf\":\"Cert. Kosher (Koji Starter for Miso) - Higuchi Exp.31052025.pdf\"}'),
(220, '202411-002', 'Kosher', 'Cert. Kosher - Koji starter for Sake', 'Higuchi', '2025-05-31', 60, '2024-11-01 10:06:04', NULL, 3, 3, 28, 8, 2, 5, 1, 'ใช้งาน', 'DBiDM9yA8hTh6VnAVAvanP', '{\"320d6eb7fc7038322142e1937032b995.pdf\":\"Cert. Kosher (Koji Starter for Sake) - Higuchi Exp.31052025.pdf\"}'),
(221, '202411-003', 'Kosher', 'Cert. Kosher - Koji starter for Soy Sauce', 'Higuchi', '2025-05-31', 60, '2024-11-01 10:07:20', NULL, 3, 3, 28, 8, 2, 5, 1, 'ใช้งาน', 'sGhVesZG5JNmaQmK5TYbey', '{\"945274a6b85001a8f3e14bb0e3ea5ca2.pdf\":\"Cert. Kosher (Koji Starter for Soy Sauce) - Higuchi Exp.31052025.pdf\"}'),
(222, '202411-004', 'Organic NOP', 'Anniversary date : 30/07/2025', '-', '2025-07-30', 60, '2024-11-01 13:41:18', '2025-01-21 09:16:33', 3, 3, 1, 8, 1, 1, 1, 'ใช้งาน', 'S4hlSqRHfitg3VDQPKlm9J', '{\"280636289efb9c285598170692919f55.pdf\":\"Cert. Organic NOP - NFC Anv.30072025.pdf\",\"ccbb52027168364ddc700e6a44f31762.pdf\":\"Product list ที่มี USCOEA.pdf\"}'),
(223, '202411-005', 'Audit Report SMETA 2023', 'เอกสาร การ Audit NFC ปี 2023', '-', '2026-11-02', 60, '2024-11-02 09:22:12', NULL, 3, 3, 1, 1, 1, 2, 1, 'ใช้งาน', 'hV3OU38YCuSLxnjmSNHaI1', '{\"ca8fd1e02ea177ca132484aecfb205ae.pdf\":\"Audit Report SMETA ปี 2023 - NFC.pdf\"}'),
(224, '202411-006', 'Audit Report SMETA 2024', 'Audit Report SMETA 2024', '-', '2026-09-02', 60, '2024-11-07 08:57:43', '2025-01-04 10:15:52', 3, 3, 1, 1, 1, 2, 1, 'ใช้งาน', 'd8LMChceqcFu9-teTYB8b1', '{\"5805202bb6f98c94ad09c947841ce980.pdf\":\"5L Audit follow-up Information.pdf\",\"c7c15a6acc0f2ce933cf0117548a2626.pdf\":\"Audit Report SMETA ปี 2024 -NFC.pdf\",\"592ffb28d294d7206886b2bfd7a5433c.pdf\":\"THA-5926-03_CAPR_ZAA600085526.pdf\",\"ce8d127343b9cca25520a13b3cb49eb9.pdf\":\"THA-5926-03_SMETA_ZAA600085526.pdf\"}'),
(225, '202411-007', 'Kosher', 'Cert. Glucose (Dextrose)', 'FA Food', '2025-06-30', 60, '2024-11-08 13:51:54', NULL, 3, 3, 29, 8, 2, 5, 1, 'ใช้งาน', 'zOXmBTX0z10AeoiWUXXZuw', '{\"38c7b1c22d5c5d03c19d3e56040ed514.pdf\":\"Cert. Kosher (Glucose) - FA Food Exp.30062025.pdf\"}'),
(226, '202411-008', 'Kosher', 'Cert. ของ Singburi Sugar', 'Pacific Sugar', '2025-06-30', 60, '2024-11-12 13:32:46', NULL, 3, 3, 4, 8, 2, 5, 1, 'ใช้งาน', '4yvu8lSsus_H6Cf_2nvyQw', '{\"bbff343007c8a2a1dfea83e8edee0c6a.pdf\":\"Cert. Kosher (Sugar) - Pacific Sugar Exp.30062025.pdf\"}'),
(227, '202411-009', 'Audit Report FSSC22000 V.6 2025', 'Audit Report FSSC22000 V.6 2025', '-', '2028-01-11', 60, '2024-11-25 10:28:23', '2025-01-13 08:34:36', 3, 3, 1, 1, 1, 2, 1, 'ใช้งาน', 'W3jL-Meom4XTdlIIm4Ie0s', '{\"f2011ac89a190344ff9b5837550efdd0.pdf\":\"Audit Report Re-Certification (Upgrade to FSSC22000 V6 by UKAS)(2025).pdf\",\"a87e4fb58669f2d84a202bb3caace339.pdf\":\"Audit report FSSC22000 V.6 Recertification Exp.11012028.pdf\"}'),
(228, '202411-010', 'Audit Report ISO22000:2018  2024', 'Audit Report ISO22000:2018  2024', '-', '2026-11-25', 60, '2024-11-25 10:31:46', '2025-01-07 08:41:56', 3, 3, 1, 1, 1, 2, 1, 'ใช้งาน', 'Wt60etVa8PmTc2swbXvemf', '{\"5dbdbd9c05c34aa7b7d0bf5e9038c853.pdf\":\"Audit Report Surveillance 1 (ISO22000-2018 by UKAS)(2024).pdf\",\"c8119e7f9b6eda22582b2dfdd9208115.pdf\":\"Audit Report ISO22000-2018 Serveillance 1 2024.pdf\"}'),
(229, '202411-011', 'BRC Global Standard', '', 'Siam Submanee Co., Ltd.', '2025-01-30', 60, '2024-11-26 08:32:39', '2025-02-01 10:21:05', 3, 3, 3, 8, 2, 5, 3, 'รอใบ Cert. ใหม่', 'PyEx7TYVWLpe3e_lem_NBe', '{\"f50e2f05ef864cc3f1b00bd70c31b3bf.pdf\":\"Cert. BRC (Salt) - Siam Submanee Exp.30012025.pdf\"}'),
(230, '202412-001', 'Kosher', '', 'Enaxus (Thailand)', '2024-12-31', 60, '2024-12-14 09:47:28', '2024-12-14 09:52:29', 3, 3, 26, 8, 2, 5, 4, 'ใช้งาน', '7Nqrl27Q-KZPNRNhHFk0Pb', '{\"a6668b53c00005ad1ff147f6c808dceb.pdf\":\"Cert. Kosher (Coconut Nectar Syrup) - Enaxus (Thailand) Exp.31122024.pdf\"}'),
(231, '202501-001', 'FSSC 22000 V.6', 'Food Safety System', '-', '2028-01-05', 60, '2025-01-04 08:38:39', NULL, 3, 3, 1, 8, 1, 2, 1, 'ใช้งาน', 'rBcSMxh-xlVhSDNkR9e0fE', '{\"d959599fd0d5cedba246e0c7cfa44eb1.pdf\":\"Cert. FSSC22000 V.6 - NFC Exp.05012028.pdf\",\"61c2cbc3919b04244679cf66afd8d92b.pdf\":\"F205-1-FSSC Rules for the use of FSSC Mark-V6-20241209.pdf\",\"a603c72212762e740ff97cdb2816c4d2.pdf\":\"F205-ENCN Use of Certificates and Certification and Accreditation Mark证书和认证认可标识的使用.pdf\"}'),
(232, '202501-002', 'หนังสือสัญญา USCOEA (US Canada)', '', '-', '2028-01-16', 60, '2025-01-17 10:31:14', NULL, 3, 3, 1, 1, 1, 2, 1, 'ใช้งาน', 'UjS4JgUDGq6jzAoB-YA2Gg', '{\"29bfe9437c44585af9b6ca396ad26174.pdf\":\"หนังสือสัญญา USCOEA - NFC (Date 16.01.2025).pdf\"}'),
(233, '202501-003', 'การใช้ Logo FSSC22000 V.6', 'คู่มือการใช้ Logo FSSC22000 V.6', '-', '2029-01-18', 60, '2025-01-18 08:57:32', NULL, 3, 3, 1, 1, 1, 5, 1, 'ใช้งาน', 'sSBQ10g8oKT-L3DDQEd83J', '{\"f459efec1ff824cc0ae2fb876c0e8ca2.pdf\":\"การใช้ Logo - FSSC Rules for the use of FSSC Mark-V6.pdf\"}'),
(234, '202501-004', 'การใช้ Logo EU', 'คู่มือการใช้ Logo EU', '-', '2029-01-18', 60, '2025-01-18 08:58:38', NULL, 3, 3, 1, 1, 1, 1, 1, 'ใช้งาน', 'hZkIGhw2BvMdizzVdGOeJe', '{\"b5937a348333f0bafa151aa23afc7a79.pdf\":\"คู่มือการใช้ Logo EU-organic-logo-user-manual_en(1).pdf\"}'),
(235, '202501-005', 'การใช้ Logo USDA Organic', 'คู่มือการใช้ Logo USDA Organic', '-', '2029-01-18', 60, '2025-01-18 09:05:37', '2025-01-18 09:17:41', 3, 3, 1, 1, 1, 1, 1, 'ใช้งาน', 'q2VroxevvmsRw9j3B29Csq', '{\"c4fc355e5620454506ffc49b90215d42.jpg\":\"Organic4colorsealJPG.jpg\",\"4ece627670575465b8d5e0f19af2b045.jpg\":\"RT_OrganicFourColorOrganicSeal.jpg\",\"27ea53300b17cd4dbe6f37fd3f326173.pdf\":\"การใช้ Logo - USDA Organic (V.Eng).pdf\",\"43eecf239b2fba7f993d3d452d89e89b.pdf\":\"การใช้ Logo - USDA Organic (แปลไทย).pdf\",\"8ae3593f429f20da5c40a380999c6d5d.jpg\":\"Black and White Organic Seal (1).jpg\",\"b9829357e8c92ccf957343d265ce144d.jpg\":\"Organic4colorseal (1).jpg\",\"ee6ba2b3818c36cbb49599132610e2cc.jpg\":\"RT_BlackandWhiteOrganicSeal (1).jpg\",\"4ccec07d6b58a863843edd404839213f.jpg\":\"RT_OrganicFourColorOrganicSeal (1).jpg\"}'),
(236, '202501-006', 'การใช้ Logo Kosher', 'คู่มือการใช้ Logo Kosher', '-', '2029-01-18', 60, '2025-01-18 09:28:36', NULL, 3, 3, 1, 1, 1, 5, 1, 'ใช้งาน', '4tHy_8OtL1mDbaNsvQUYQM', '{\"03b19c3178f69e1717c78519ebf2eb44.jpg\":\"KVH HD Pareve.jpg\",\"02507ddfada62aab4e01e9d75161c639.pdf\":\"การใช้ Logo - Kosher KVH.pdf\"}'),
(237, '202501-007', 'การใช้ Logo CERES', 'คู่มือการใช้ Logo CERES', '-', '2029-01-18', 60, '2025-01-18 09:30:53', '2025-01-18 09:33:28', 3, 3, 1, 1, 1, 1, 1, 'ใช้งาน', 'wHri8uqjOR_NN2uiWNQkB0', '{\"ee870ce26e0a7b3cc8537b527404299b.jpg\":\"CERES-CERTIFIED_Fastellipse.jpg\",\"f095321be92fe459fa12c59da8a52635.pdf\":\"การใช้ Logo - CERES Certification.pdf\",\"b3d50cf793b696c787be3f311c156149.jpg\":\"CERES-CERTIFIED_Fastellipse (1).jpg\"}'),
(238, '202501-008', 'BRC Global Standard', 'Cert. BRC Global standard - Dongxiao', 'DPO (Thailand)', '2026-01-07', 60, '2025-01-22 09:27:09', NULL, 3, 3, 23, 8, 2, 5, 1, 'ใช้งาน', 'igXn8lMKEe53hpdaIiEP29', '{\"08437456604f057f52ca7024240162ce.pdf\":\"Cert. BRCGS - DPO (Dongxiao) Exp.07012026.pdf\"}'),
(239, '202501-009', 'HACCP', 'Cert. HACCP - Dongxiao', 'DPO (Thailand)', '2027-05-17', 60, '2025-01-22 09:29:05', NULL, 3, 3, 23, 8, 2, 2, 1, 'ใช้งาน', 'XQyJn5F_BWqJuEhE11nv0I', '{\"5c42df0871bdbb5207e159f746460bdf.pdf\":\"Cert. HACCP - DPO (Dongxiao) Exp.17052027.pdf\"}'),
(240, '202501-010', 'HALAL', 'Cert. Halal - Dongxiao', 'DPO (Thailand)', '2027-11-25', 60, '2025-01-22 09:30:46', NULL, 3, 3, 23, 8, 2, 2, 1, 'ใช้งาน', '8M8MICcrRXJ-M4JsS-zkHe', '{\"08653e7ea63de1247daa0ea449ee5c24.pdf\":\"Cert. Halal (Maltodextrin) - DPO (Dongxiao) Exp.25112027.pdf\"}'),
(241, '202501-011', 'ISO9001:2015', 'Cert. ISO9001:2015 - Dongxiao', 'DPO (Thailand)', '2027-05-16', 60, '2025-01-22 09:36:00', '2025-01-22 09:53:24', 3, 3, 23, 3, 2, 2, 1, 'ใช้งาน', 'nrSseqlVuCK147CF4S2549', '{\"649ad4ce8b1806a5179574513ee0e91d.pdf\":\"Cert. ISO 9001-2015 - DPO (Dongxiao) Exp.16052027.pdf\"}'),
(242, '202501-012', 'Non-GMO', 'Declaration Non-GMO - Dongxiao', 'DPO (Thailand)', '2026-01-22', 60, '2025-01-22 09:45:00', NULL, 3, 3, 23, 1, 2, 2, 1, 'ใช้งาน', 'IGKqep4-TIpCslp5ENTPlb', '{\"0e6a10e57953b333cf0a9baee86e89d4.pdf\":\"Declaration NON-GMO - DPO (Dongxiao) 2025.pdf\"}'),
(243, '202501-013', 'FSSC22000 V.5.1', 'Cert. FSSC22000 V.5.1 - Dongxiao', 'DPO (Thailand)', '2025-03-05', 60, '2025-01-22 09:50:51', NULL, 3, 3, 23, 8, 2, 2, 1, 'ใช้งาน', 'k2e2xHatozjmCvG_28X78K', '{\"18de946a7201628933ad1d83cce53d31.pdf\":\"Cert. FSSC22000 - DPO (Dongxiao) Exp.05032025.pdf\"}'),
(244, '202501-014', 'ISO45001:2018', 'Cert. ISO45001:2018 - Dongxiao', 'DPO (Thailand)', '2027-05-15', 60, '2025-01-22 09:52:36', NULL, 3, 3, 23, 3, 2, 2, 1, 'ใช้งาน', 'Jb5w6Iv_cTDfQqqHvoGsuD', '{\"c012f8e50cf2b3045f785b73a4f8e157.pdf\":\"Cert. ISO 45001-2018 - DPO (Dongxiao) Exp.15052027.pdf\"}'),
(245, '202501-015', 'ISO14001:2015', 'Cert. ISO14001:2015 - Dongxiao', 'DPO (Thailand)', '2027-05-16', 60, '2025-01-22 09:55:10', NULL, 3, 3, 23, 3, 2, 2, 1, 'ใช้งาน', 'K_wF8-pcrzr0wGadOj7mCn', '{\"5c7b822cc84d5abe8613922e8b5b5923.pdf\":\"Cert. ISO 14001-2015 - DPO (Dongxiao) Exp.16052027.pdf\"}'),
(246, '202501-016', 'ISO22000:2018', 'Cert. ISO22000:2018 - Dongxiao', 'DPO (Thailand)', '2027-05-17', 60, '2025-01-22 09:56:39', NULL, 3, 3, 23, 3, 2, 2, 1, 'ใช้งาน', 'ilFlfmQFu6DUR4cIIBAdS4', '{\"7687922923d1e359e96082403e33f4bc.pdf\":\"Cert. ISO 22000-2018 - DPO (Dongxiao) Exp.17052027.pdf\"}'),
(247, '202501-017', 'Organic EU', 'Cert. Organic', 'Pratithi', '2026-01-03', 60, '2025-01-29 13:15:01', NULL, 3, 3, 2, 8, 2, 1, 1, 'ใช้งาน', 'U58Stm9T1Q_u9hcY--KJ4X', '{\"578d6da6c24d986c927302b090ad635b.pdf\":\"Cert. Organic EU - Pratithi Exp.03012026.pdf\"}'),
(248, '202502-001', 'Organic EU & COR', 'Organic EU & COR', 'Green Smile Organic Farm', '2025-06-30', 60, '2025-02-03 15:14:43', NULL, 3, 3, 8, 8, 2, 1, 1, 'ใช้งาน', 'SBJQNGoUydq8hmQdqs08CY', '{\"106adf65543950003dac8101a6d8574d.pdf\":\"Cert. Organic EU & COR - Green Smile Organic Farm Exp.30062025.pdf\"}'),
(249, '202502-002', 'การใช้ Logo Intertek', 'การใช้ Logo Intertek ในการรับรอง GHPs & HACCP', '-', '2030-02-06', 60, '2025-02-06 11:49:39', NULL, 3, 3, 1, 1, 1, 2, 1, 'ใช้งาน', '-5M6DWJrEU7gBkY7TYrf6e', '{\"432da29a54eb003f887e6b56b9b99a72.jpg\":\"AW_GHPs.jpg\",\"60025128feb9f83837b85fa1cfee11bd.pdf\":\"F205-1 Use of Certificates Certification and Accreditation Marks for GHPs HACCP GMP law and GMP Catering Rev3 1July2023.pdf\",\"e92da21504c38ef503862ad77ab9c4d5.jpg\":\"HACCP.jpg\"}'),
(250, '202502-003', 'Fairtrade', '', '-', '2031-02-06', 60, '2025-02-06 13:31:57', NULL, 3, 3, 1, 8, 1, 3, 1, 'ใช้งาน', 'd5hCXq0w5J5HDaNjBNenss', '{\"76fd5eb718f2b26f4650a54979cf7eb8.pdf\":\"Cert. Fairtrade - NFC Exp.06022031.pdf\"}');

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
-- Table structure for table `occupier`
--

CREATE TABLE `occupier` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'ประเภท',
  `details` text COMMENT 'รายละเอียด',
  `color` varchar(45) DEFAULT NULL COMMENT 'สี'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `occupier`
--

INSERT INTO `occupier` (`id`, `name`, `details`, `color`) VALUES
(1, 'NFC', 'NorthernfoodComplex', '#148019'),
(2, 'Supplier', 'Supplier', '#DF2E38');

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
(1, 'PS2308-000', 'Japanese Soy Sauce', 'WIC-303 Extra soy sauce', 1, 'WIC-303 Extra soy sauce', 0, '2023-10-26', '1,2', '{\"7a51c74a1c97f5a850d1ed63a136d8a9.pdf\":\"Spec. Sheet - Extra soy Sauce.pdf\"}', '2025-10-26', 3, 'ยกเลิกใช้', '5wed3exfI2iKcs_lAaC9iL', '2023-08-24 15:01:46', '2024-10-30 13:57:51', 1, 3),
(2, 'PS2308-001', 'Japanese Soy Sauce', 'WIC-303 Extra soy sauce', 2, 'WIC-303 Extra soy sauce', 1, '2023-06-16', '1,2', '{\"fe58b3880545ab75ca67f7a37778a1b0.pdf\":\"process Flow  Extra  soy sauce.pdf\"}', '2024-06-16', 3, 'ยกเลิกใช้', 'kTRBr5nI4ggCBSbIKhRTiC', '2023-08-24 15:21:15', '2024-04-23 08:17:10', 1, 3),
(3, 'PS2308-002', 'Japanese Soy Sauce', 'Extra soy sauce', 4, 'Extra soy sauce', NULL, '2004-09-28', '1,2', '{\"384fac0826ed0f2a76febf3d633b24db.pdf\":\"อย.extra  Soy Sauce.pdf\"}', '2034-08-28', 1, 'ใช้งาน ', 'nujZxLia9c0Y4cDTZIR6G1', '2023-08-24 15:22:24', '2023-10-31 09:58:38', 1, 3),
(4, 'PS2308-003', 'Japanese Soy Sauce', 'WIC-303 Nutri Extra soy sauce', 3, 'WIC-303 Nutri Extra soy sauce', 0, '2024-06-18', '1,2', '{\"d0bcf30845892cb828db1ccba22842be.pdf\":\"WIC-303 Nutri extra.pdf\"}', '2034-06-18', 1, 'ใช้งาน ', '_tzT_MWHjEvRhPTQ300hmE', '2023-08-24 15:24:34', '2024-06-18 09:02:00', 1, 3),
(5, 'PS2308-004', 'Japanese Soy Sauce', 'WIC-304 Nutri Standard Soy Sauce', 3, 'WIC-304 Nutri Standard Soy Sauce', 0, '2024-06-18', '1,2', '{\"db70c1ad182699d4bdf89a0e4c06e640.pdf\":\"WIC-304Nutri Standard Soy Sauce.pdf\"}', '2034-06-18', 1, 'ใช้งาน', 'wzDZoxwfcrFJGp2fU12BpW', '2023-08-24 15:45:40', '2024-06-18 09:05:18', 1, 3),
(6, 'PS2308-005', 'Japanese Soy Sauce', 'Standard Soy Sauce', 4, 'Standard Soy Sauce', NULL, '2004-09-28', '1,2', '{\"7496ab86cbfd5d8884557b8adac2d770.pdf\":\"อย.standard  Soy Sauce.pdf\"}', '2034-08-28', 1, 'ใช้งาน', 'TCZ_VsjJHw2ABFmSwy3Dph', '2023-08-24 16:07:13', '2023-10-31 10:02:53', 1, 3),
(7, 'PS2308-001', 'Japanese Soy Sauce', 'WIC-304 Standard Soy Sauce', 1, 'WIC-304 Standard Soy Sauce', 0, '2023-10-21', '1,2', '{\"cf31d31991894d2dd976bc0444ebecf5.pdf\":\"Spec. Sheet - Standard Soy Sauce.pdf\"}', '2025-10-21', 3, 'ยกเลิกใช้', 'T8tMQGGSoigFH4hrG2-k-O', '2023-08-28 15:13:39', '2024-09-06 16:15:51', 5, 3),
(8, 'PS2308-002', 'Japanese Soy Sauce', 'WIC-304 Standard  Soy Sauce', 2, 'WIC-304 Standard  Soy Sauce', 0, '2023-10-25', '1,2', '{\"c148977c851d03bcd2207991fb115460.pdf\":\"WIC-304 Standard Soy Sauce.pdf\"}', '2025-10-25', 1, 'ใช้งาน', '1GrCKVAcx7QTtOX1Eza5ix', '2023-08-28 15:16:03', '2023-10-31 10:10:02', 5, 3),
(9, 'PS2308-003', 'Japanese Soy Sauce', 'WIC-302 Special Soy sauce', 1, 'WIC-302 Special Soy sauce', 0, '2023-10-07', '1,2', '{\"633a220f46c5700cfd882d6942a9e75c.pdf\":\"Spec. Sheet - Special Soy Sauce.pdf\"}', '2025-10-07', 1, 'ใช้งาน', '-juhlB4tUtj1Vi8pWZznsS', '2023-08-28 15:49:17', '2024-02-08 11:34:33', 5, 3),
(10, 'PS2308-004', 'Japanese Soy Sauce', 'WIC-302 Special  soy sauce', 4, 'WIC-302 Special soy sauce', 0, '2004-09-28', '1,2', '{\"51617968f589d7164bd412cfc42f4b19.pdf\":\"อย.Special  Soy Sauce.pdf\",\"44ad9f3f8e1eb36365e497dd272e991f.pdf\":\"WIC-302 ซอสถั่วเหลืองสเปเชี่ยล ตราโจฮิน 048-1.pdf\"}', '2034-08-28', 1, 'ใช้งาน ', 'NhwgsDyLyC80W9A4z4e8Nt', '2023-08-28 15:54:20', '2024-07-08 14:00:09', 5, 3),
(11, 'PS2308-005', 'Japanese Soy Sauce', 'WIC-302 Nutri Special Soy Sauce', 3, 'WIC-302 Nutri Special Soy Sauce', 0, '2024-06-18', '1,2', '{\"69c2dabe4cc353535b2fc5d373c47152.pdf\":\"WIC-302 nutri special soy sauce.pdf\"}', '2034-08-28', 1, 'ใช้งาน ', 'eBxbam4dhJpEciSg2EUHBI', '2023-08-28 16:01:07', '2024-06-18 08:59:09', 5, 3),
(12, 'PS2308-006', 'Japanese Soy Sauce', 'Special Soy Sauce', 2, 'Special soy sauce', 1, '2023-08-28', '1,2', '{\"4f69a93b73ed3430b9b94cf5bd20c24a.pdf\":\"Special soy sauce  Process Flow.pdf\"}', '2034-08-28', 1, 'ใช้งาน ', 'Y34OLGJDhHx1IuXpb9ult9', '2023-08-28 16:16:30', '2023-11-06 14:15:16', 5, 3),
(13, 'PS2308-007', 'Seasoning Soy Sauce', 'Sushi Soy Sauce', 1, 'WID-120 Sushi Soy Sauce', 0, '2023-10-07', '1,2,3,4,5,6', '{\"fbc5d407aea46c046d01c9e8926f80e6.pdf\":\"Spec. Sheet - Sushi Soy Sauce.pdf\"}', '2025-10-07', 1, 'ใช้งาน ', 'c6rw62Ejctb1PNKaV8nO97', '2023-08-29 09:23:11', '2023-10-31 10:25:55', 5, 3),
(14, 'PS2308-008', 'Seasoning Soy Sauce', 'WID-120 Sushi Soy Sauce', 2, 'WID-120 Sushi soy sauce', 1, '2023-08-28', '1,2,3,4,5,6', '{\"11d38945af5d7ae7c02a5aca46449640.pdf\":\"Sushi Soy Sauce Process flow.pdf\"}', '2025-08-28', 1, 'ใช้งาน ', 'prCRtn__XqgqQyr1UkNY7J', '2023-08-29 09:24:23', '2024-07-02 16:31:34', 5, 3),
(15, 'PS2309-001', 'Rice Vinegar ', 'Sushi Vinegar ', 1, 'Sushi Vinegar ', 0, '2023-08-29', '1,2,3,4,5,6', '{\"01a2d84bf51808c8e559cc078721e4c3.pdf\":\"Sushi Vinegar  29082023...pdf\"}', '2025-08-29', 1, 'ใช้งาน ', 'Bq5fafFqjPj__vVYlzBa84', '2023-09-01 09:04:25', '2024-07-02 16:32:11', 5, 3),
(16, 'PS2309-002', 'ปก.กท.สาธารณสุข', 'ประกาศกระทรวงสาธารณสุข ฉ.317 เรื่อง ผลิตภัณฑปรุงรสที่ได้จากการย่อยโปรตีนของถั่วเหลือง', 9, 'ฉ.317 เรื่อง ผลิตภัณฑปรุงรสที่ได้จากการย่อยโปรตีนของถั่วเหลือง', 0, '2023-09-01', '', '{\"3907d7cd36dfc83877e987dee90b7f54.pdf\":\"317.pdf\"}', '2033-08-31', 1, 'ใช้งาน ', 'uxIbXeEUDs2PcVUgniXOJ4', '2023-09-01 16:26:30', '2023-11-03 15:39:35', 5, 4),
(17, 'PS2309-003', 'ปก.กท.สาธารณสุข', 'ประกาศกระทรวงสาธารณสุข ฉ.414   พ.ศ. 2563ออกตามความในพระราชบัญญัติอาหาร พ.ศ. 2522เรื่อง มาตรฐานอาหารที่มีสารปนเปื้อน', 9, 'ฉ.414 มาตรฐานอาหารที่มีสารปนเปื้อน', 1, '2023-09-01', '', '{\"14e264161047ab769d24bb77f3be0b32.pdf\":\"P414.pdf\"}', '2033-08-31', 1, 'ใช้งาน ', 'VIKV22oP4mBpl83qCA1Qbf', '2023-09-01 16:27:43', '2023-11-03 15:40:06', 5, 4),
(18, 'PS2309-004', 'มอก', 'มอก 8.2549  น้ำซอสปรุงรส ', 9, 'มอก 8.2549  น้ำซอสปรุงรส ', NULL, '2023-09-01', '', '{\"483c54d221ac535accc1d91ce6853a74.pdf\":\"มอก.น้ำซอสปรุงรส TIS 8-2549.pdf\"}', '2033-08-31', 1, 'ใช้งาน ', 'f8QtznRHFOQ54JVDrSCwPB', '2023-09-01 16:31:30', '2023-11-03 15:38:09', 5, 4),
(19, 'PS2309-005', 'ปก.กท.สาธารณสุข ', 'ประกาศสาธารณสุข ฉ.416  พ.ศ. ๒๕๖๓ ออกตามความในพระราชบัญญัติอาหาร พ.ศ. ๒๕๒๒ เรื่อง กําหนดคุณภาพหรือมาตรฐาน หลักเกณฑ์เงื่อนไข และวิธีการในการตรวจวิเคราะห์ ของอาหารด้านจุลินทรีย์ที่ทําให้เกิดโรค', 9, 'ฉ.416 คุณภาพฯ ของอาหารด้านจุลินทรีย์ที่ทําให้เกิดโรค', NULL, '2023-09-01', '', '{\"9d571ea06dc8e51dabffab6b814e9626.pdf\":\"P416.pdf\"}', '2033-08-31', 1, 'ใช้งาน', '9-50BRrv-TaIUsBYnnl3Y-', '2023-09-01 16:46:21', '2023-11-03 15:41:01', 5, 4),
(20, 'PS2309-006', 'Commission Regulation EC1881/2006 ', 'Commission Regulation EC1881/2006 ', 9, 'Soy Sauce และ   Seasoning  Sauce ', 1, '2023-09-01', '', '{\"80c247e317d7ae8ff3cdfa69d1d2f244.pdf\":\"EU_33   1881.pdf\"}', '2033-08-31', 3, 'ยกเลิกใช้', 'iPNfDqoseduMuPnJOAwchW', '2023-09-01 16:47:55', '2024-08-14 16:04:58', 5, 3),
(21, 'PS2309-007', 'ปก.กท.สาธารณสุข  ', 'ประกาศกระทรวงสาธารณสุข  ฉ.200  พศ.2543  เรื่อง ซอสในภาชนะที่ปิดสนิท ', 9, 'ฉ.200 ซอสในภาชนะที่ปิดสนิท ', NULL, '2023-09-01', '', '{\"88d4f26e3de667899368052ea332a0c5.pdf\":\"P200 ซอสในภาชนะที่ปิดสนิท.pdf\"}', '2033-08-31', 1, 'ใช้งาน ', 'yVbvcX-m73gO25G54uBnYe', '2023-09-01 17:00:00', '2023-11-03 15:41:29', 5, 4),
(22, 'PS2309-008', 'ปก.กท.สาธารณสุข', 'ประกาศกระทรวงสาธารณสุข  ฉ.201  พศ.2543  เรื่อง ซอสบางชนิด', 9, 'ฉ.201  ซอสบางชนิด', 1, '2023-09-01', '', '{\"e2c01827359706cbedf62a55c15ce221.pdf\":\"P201.pdf\"}', '2033-08-31', 1, 'ใช้งาน ', 'yRXRanWeTpsNtDN61K9kLT', '2023-09-01 17:01:51', '2023-11-03 15:41:52', 5, 4),
(23, 'PS2309-009', 'ปก.กท.สาธารณสุข', 'ฉ.204  น้ำส้มสายชูหมัก', 9, 'ฉ.204 น้ำส้มสายชูหมัก', NULL, '2023-09-01', '', '{\"282f625096685e2afaec049777601ff9.pdf\":\"P204  Vinegar.pdf\"}', '2033-08-31', 1, 'ใช้งาน ', 'yRXRanWeTpsNtDN61K9kLT', '2023-09-01 17:01:52', '2023-11-03 15:43:22', 5, 4),
(24, 'PS2309-010', 'ปก.กท.สาธารณสุข', 'ฉ.367 พศ.2557  การแสดงฉลากของอาหารในภาชนะบรรจุ ', 9, 'ปก.กท.สาธารณสุข ฉ.367  การแสดงฉลากของอาหารในภาชนะบรรจุ ', 1, '2023-09-01', '', '{\"ec61c7ce5abb17a07edcde8145683ab7.pdf\":\"ฉ.367 2557.pdf\"}', '2033-08-31', 1, 'ใช้งาน ', 'yRXRanWeTpsNtDN61K9kLT', '2023-09-01 17:01:54', '2023-11-03 15:43:56', 5, 4),
(25, 'PS2309-011', 'Chinese Soy Sauce', 'WID-111 Nutri Chinese Soy Sauce No.1', 3, 'WID-111 Nutri Chinese Soy Sauce No.1 ', 1, '2024-06-18', '', '{\"846cb4b018b04e5dfba08fb6bcb7092a.pdf\":\"WID-111nutri Chinese 1.pdf\"}', '2034-06-18', 1, 'ใช้งาน ', '94aioS6_3lTHgPaDNqfoEC', '2023-09-02 13:29:00', '2024-06-18 09:17:38', 5, 3),
(26, 'PS2309-012', 'Seasoning Soy Sauce', 'WID-247 Nutri Soy Sauce For egg', 3, 'WID-247 Nutri Soy Sauce For egg', 0, '2024-06-18', '', '{\"c37503a7b62db265cac373fd34bebdb6.pdf\":\"WID-247nutri soy sauce for egg.pdf\"}', '2034-06-18', 1, 'ใช้งาน ', '7tbZ_RrSL0YiKqQ55Jt6Ki', '2023-09-02 13:53:53', '2024-06-18 09:27:09', 5, 3),
(27, 'PS2309-013', 'Seasoning Vegan', 'Vegan  oyster Sauce  with mushroom Flavored', 3, 'Vegan  oyster Sauce  with mushroom Flavored', 1, '2022-05-06', '', '[]', '2033-09-01', 1, 'ใช้งาน', 'y8jeMrbSXprnlhqp3M1RNu', '2023-09-02 13:56:17', '2024-06-18 09:41:32', 5, 3),
(28, 'PS2309-014', 'Seasoning Vegan', 'WID-230 Nutri Organic Vegan Mushroom PB Farm', 3, 'WID-230 Nutri Organic Vegan Mushroom PB Farm', 0, '2024-06-18', '', '{\"b5066cba7ab3c0c9a0c7d0bcf4b513c4.pdf\":\"5250276 Northern Food Complex.pdf\",\"2631c3121fc050298af220a55ca3f7b4.pdf\":\"GL_202205_REPORT_NO_5250276.pdf\",\"e6c2af7299203fe3dbda107c702a98d8.pdf\":\"WID-230 orgaic Vegan Mushroom.pdf\"}', '2034-06-18', 1, 'ใช้งาน ', 'w82-mEyIuKTFp8eTmXwFnX', '2023-09-02 13:57:26', '2024-06-18 09:47:25', 5, 3),
(29, 'PS2309-015', 'Seasoning Soy Sauce', 'WID-228 Nutri Fish Sauce Flavored Organic  Soy Sauce PB Farm ', 3, 'WID-228 Nutri Fish Sauce Flavored Organic  Soy Sauce PB Farm ', 0, '2024-06-18', '', '{\"d83a9398a61b9a3fb8449deb771696ab.pdf\":\"5219962 Northern Food Complex.pdf\",\"f81f04e8060c9b052e07aa300484a71a.pdf\":\"GL_202203_REPORT_NO_5219962.pdf\",\"51756cac7f213f76eadba151a0668b2f.pdf\":\"WID-228 fish Sauce Flavor PB Farm.pdf\"}', '2034-06-18', 1, 'ใช้งาน ', 'ZOWo_abkwPI5nRChQPDXox', '2023-09-02 13:59:53', '2024-06-18 09:58:18', 5, 3),
(30, 'PS2309-016', 'Japanese Tamari', 'WID-104 Nutri Tamari soy sauce SMTC ', 3, 'WID-104 Nutri Tamari soy sauce SMTC ', 0, '2024-06-18', '', '{\"d4add77eb5bbc8456498ca4a3f4d9260.pdf\":\"GL_202112_REPORT_NO_5126483.pdf\",\"9dda47f552fa2f17b4c413d1e073eb88.pdf\":\"tamari smtc.pdf\",\"76010c9b8796752e9bac385a0a8dbbee.pdf\":\"WID-104 tamari smtc_merged.pdf\"}', '2034-06-18', 1, 'ใช้งาน ', '6z3icIGZx6nCrvIbdH-CRB', '2023-09-02 14:00:56', '2024-06-19 15:10:27', 5, 3),
(32, 'PS2309-018', 'Japanese Soy Sauce', 'WIC-306 Rich Soy Sauce', 1, 'WIC-306 Rich Soy Sauce', 0, '2023-10-07', '1,2,3,4,5,6,9', '{\"6a27c72e9fbb0717af5c2b086c9bd9fa.pdf\":\"Spec. Sheet - Rich Soy Sauce.pdf\"}', '2025-10-07', 1, 'ใช้งาน', 'nqgTMb0JXsXN00BEZBymWl', '2023-09-22 10:03:57', '2024-02-08 11:35:40', 5, 3),
(33, 'PS2309-019', 'Japanese Soy Sauce', 'WIC-301 Premium Soy Sauce', 1, 'WIC-301 Premium Soy Sauce', 0, '2023-10-07', '1,2,3,4,5,6', '{\"b14aea091e3e0aa16548abffcfbc68a3.pdf\":\"Spec. Sheet - Premium Soy Sauce.pdf\"}', '2025-10-07', 1, 'ใช้งาน ', 'YTyzJPdJYkTAuBe2HfiZrp', '2023-09-22 10:06:09', '2023-11-04 10:39:54', 5, 3),
(34, 'PS2309-020', 'Japanese Soy Sauce', 'WIC-313 Regular Soy Sauce', 1, 'WIC-313 Regular Soy Sauce', 0, '2023-10-07', '1,2,3,4,5,6', '{\"b543a7e09f2109e2a6e0b50e4ed7d1d4.pdf\":\"Spec. Sheet - Regular Soy Sauce.pdf\"}', '2025-10-07', 1, 'ใช้งาน ', 'o-QNrrZEN3HM9EfLultDXi', '2023-09-22 11:45:57', '2023-10-31 11:12:27', 5, 3),
(35, 'PS2310-001', 'Rice Vinegar ', 'WID-150 Organic Mirin Sauce', 2, 'WID-150 Organic Mirin Sauce', 0, '2023-10-25', '', '{\"cd9b1352181d6002a0449389b19ecbb8.pdf\":\"WID-150 Organic Mirin.pdf\"}', '2025-10-25', 3, 'ยกเลิกใช้', 'UgSUbeccfa6CPhL0AY4rFE', '2023-10-05 10:01:38', '2024-08-16 11:35:50', 3, 3),
(36, 'PS2310-002', 'Seasoning Vegan', 'WID-230 Organic Vegan Mushroom Sauce', 1, 'WID-230 Organic Vegan Mushroom Sauce', 0, '2023-10-07', '', '{\"c980d49ac7289720dad104591007216b.pdf\":\"Spec. Sheet - Or. Vegan Mushroom Sauce.pdf\"}', '2025-10-07', 1, 'ใช้งาน', 'rF9UWnnEqvrRBgIAWipbju', '2023-10-07 15:55:11', '2023-10-31 11:35:57', 3, 3),
(37, 'PS2310-003', 'Rice Vinegar', 'WID-238 Organic  Mirin 5.5 %', 1, 'WID-238 Organic  Mirin 5.5 %', 0, '2023-10-07', '', '{\"f448c931f5e88822f92997889da60cf9.pdf\":\"Product Spec Organic Mirin 5.5%.pdf\",\"88a0b7eeb13f275c04989761f941c00d.pdf\":\"Specification Sheet Organic Mirin 5.5%.pdf\"}', '2025-10-07', 3, 'ยกเลิกใช้', 'EABxTCHGD3zlsqwe5gOEya', '2023-10-09 08:47:49', '2023-10-31 11:36:52', 3, 3),
(38, 'PS2310-004', 'Miso', 'WID-226 Or. Pasteurized Genmai Miso with Kombu', 2, 'WID-226 Or. Pasteurized Genmai Miso with Kombu', 0, '2023-10-12', '', '{\"4e5ff71bd541afbdf38fb05e2cc77b8d.pdf\":\"WID-226 Or. Pas. Genmai Miso with Kombu.pdf\"}', '2025-10-12', 3, 'ยกเลิกใช้', 'ID4r-JqiyC36CxdiveY5Jn', '2023-10-16 10:50:56', '2024-01-25 09:22:44', 3, 3),
(39, 'PS2310-005', 'Miso', 'WID-168 Or. Unpasteurized Miso', 2, 'WID-168 Or. Unpasteurized Miso', 0, '2023-10-12', '', '{\"5df44ac01e1416628fabc07ac0daffa6.pdf\":\"WID-168 Or. Unpasteurized Miso.pdf\"}', '2025-10-12', 3, 'ยกเลิกใช้', '7kN72T_4GK-gPTjVdiFmMS', '2023-10-16 10:55:44', '2024-01-25 09:50:32', 3, 3),
(40, 'PS2310-006', 'Miso', 'WID-224 Or. FT. Pasteurized Genmai Miso', 2, 'WID-224 Or. FT. Pasteurized Genmai Miso', 0, '2023-10-12', '', '{\"0781685cc27312bf0aab2b700b924d79.pdf\":\"WID-224 Or. FT. Pasteurized Genmai Miso.pdf\"}', '2025-10-12', 3, 'ยกเลิกใช้', 'Btw9ucciB9mOaTB98bNy0d', '2023-10-16 10:57:33', '2024-01-25 09:53:56', 3, 3),
(41, 'PS2310-007', 'Miso', 'WID-236 Or. Pasteurized Shiro Miso', 2, 'WID-236 Or. Pasteurized Shiro Miso', 0, '2023-10-12', '', '{\"4ae45fc164b3b20dfd8aa05d998d4460.pdf\":\"WID-236 Or. Pas. Shiro Miso.pdf\"}', '2025-10-12', 3, 'ยกเลิกใช้', 'X72ci-k0qm5cpW9bGbhL9H', '2023-10-16 10:59:18', '2024-01-25 09:39:47', 3, 3),
(42, 'PS2310-008', 'Chinese Soy Sauce', 'WID-188 Organic Chinese Soy Sauce', 1, 'WID-188 Organic Chinese Soy Sauce', 0, '2023-10-07', '', '{\"a4fcef44d660be04b1a4e3ded19b66e1.pdf\":\"Spec. Sheet - Organic Chinese Soy Sauce.pdf\"}', '2025-10-07', 1, 'ใช้งาน', '1Vkv1GkNk3OljklrhSzxlo', '2023-10-16 11:14:22', '2023-10-31 11:48:46', 3, 3),
(43, 'PS2310-009', 'Japanese Gluten Free', 'WIC-314 Gluten Free (Rice) Soy Sauce', 1, 'WIC-314 Gluten Free (Rice) Soy Sauce', 0, '2023-10-07', '', '{\"626c50afa74db69ff20b9169c843090c.pdf\":\"Spec. Sheet - Gluten Free (Rice) Soy Sauce.pdf\"}', '2025-10-07', 3, 'ยกเลิกใช้', 'T0vVoa9syzW3peDQmx9o1I', '2023-10-16 11:16:59', '2024-06-13 15:09:58', 3, 3),
(44, 'PS2310-010', 'Japanese Light Color', 'WIC-305 Light Color Soy Sauce', 1, 'WIC-305 Light Color Soy Sauce', 0, '2023-10-07', '', '{\"1484257a67b062bf468595260a23bb6b.pdf\":\"Spec. Sheet - Light Color Soy Sauce.pdf\"}', '2025-10-07', 1, 'ใช้งาน', 'sa934r4RV24yC7a5rXfBwL', '2023-10-16 11:26:35', '2024-02-08 11:37:56', 3, 3),
(45, 'PS2310-011', 'Japanese Soy Sauce', 'WIC-317 Standard Soy Sauce No.2', 1, 'WIC-317 Standard Soy Sauce No.2', 0, '2023-10-07', '', '{\"4309d66ae9713504934a1a0fa7827ca0.pdf\":\"Spec. Sheet - Standard Soy Sauce No.2.pdf\"}', '2025-10-07', 3, 'ไม่ใช้แล้ว', 'w-ehEKhuE106zCpOi7W5jR', '2023-10-16 11:28:17', '2023-11-06 14:37:37', 3, 3),
(46, 'PS2310-012', 'Chinese Soy Sauce', 'WID-184 Chinese Soy Sauce (Sugar)', 1, 'WID-184 Chinese Soy Sauce (Sugar)', 0, '2023-10-07', '', '{\"05a686e2133cc95c5a7fa9d7d55ab22b.pdf\":\"Spec. Sheet - Chinese Soy Sauce (Sugar).pdf\"}', '2025-10-07', 1, 'ใช้งาน', 'fo_sX6MEQH9P9Qu9yxCjrG', '2023-10-16 11:31:29', '2023-10-31 13:49:45', 3, 3),
(47, 'PS2310-013', 'Miso', 'WID-224 Or. FT. Pasteurized Genmai Miso', 1, 'WID-224 Or. FT. Pasteurized Genmai Miso', 0, '2023-10-21', '', '{\"34a0f7bacb235d9cd3b933f51b8e5f03.pdf\":\"Product Spec (Autour du Riz) - Or. FT. Pasteurized Genmai Miso.pdf\",\"a0ac7b7145018648b62847a9a218efd3.pdf\":\"Spec. Sheet - Or. FT. Pasteurized Genmai Miso.pdf\"}', '2025-10-21', 1, 'ใช้งาน', 'Jle9wAfQdFgiWKVYx9Kf_b', '2023-10-21 15:03:46', '2023-10-31 13:50:31', 3, 3),
(48, 'PS2310-014', 'Miso', 'WID-225 Or. FT. Pasteurized Shiro Miso', 1, 'WID-225 Or. FT. Pasteurized Shiro Miso', 0, '2023-10-21', '', '{\"0caa1cdbb3cddd26181779ae7fc4940f.pdf\":\"Product Spec (Autour du Riz) - Or. FT. Pasteurized Shiro Miso.pdf\",\"a959371ba8b0fbe5014952aff6cfd0c2.pdf\":\"Spec. Sheet -Or. FT. Pasteurized Shiro Miso.pdf\"}', '2025-10-21', 1, 'ใช้งาน', 'PtDpoSOksgPTEz8yB59J9L', '2023-10-21 15:06:16', '2023-10-31 13:51:36', 3, 3),
(49, 'PS2310-015', 'Miso', 'WID-226 Or. FT. Pasteurized Genmai Miso with Kombu', 1, 'WID-226 Or. FT. Pasteurized Genmai Miso with Kombu', 0, '2023-10-21', '', '{\"425c2614bc7a9168d4410dffbb5afbfa.pdf\":\"Product Spec (Autour du Riz) - Or. FT. Pas. Genmai Miso with Kombu.pdf\",\"f3f74388cd9428f2c81923152f8d7f45.pdf\":\"Spec. Sheet - Or. FT. Pasteurized Genmai Miso with Kombu.pdf\"}', '2025-10-21', 1, 'ใช้งาน', 'Lc-QS5qAQUxmwuz1OIJIds', '2023-10-21 15:10:09', '2023-10-31 13:52:06', 3, 3),
(50, 'PS2310-016', 'Miso', 'WID-151 Dark Miso', 1, 'WID-151 Dark Miso', 0, '2023-10-21', '', '{\"6c8df30d419dbc6736bb8e98bcb470b5.pdf\":\"Spec. Sheet - Dark Miso.pdf\"}', '2025-10-21', 1, 'ใช้งาน', '43Au-IUMbN9ww2HtS4IKXY', '2023-10-21 15:13:20', '2023-10-31 13:52:41', 3, 3),
(51, 'PS2310-017', 'Miso', 'WID-234 Pasteurized Miso', 1, 'WID-234 Pasteurized Miso', 1, '2023-12-11', '', '{\"3ad34eabd01a47364361a794cba784c2.pdf\":\"Spec. Sheet - Pasteurized Miso Rev.01.pdf\"}', '2025-12-11', 3, 'ยกเลิกใช้', '6rgx-P_BszA_0ABOsDJ1f9', '2023-10-21 15:50:30', '2024-06-13 15:11:03', 3, 3),
(52, 'PS2310-018', 'Rice Vinegar', 'WID-238 Organic  Mirin 5.5 %', 1, 'WID-238 Organic  Mirin 5.5 %', 1, '2023-10-21', '', '{\"71c02d5c67745292ded593d689af5241.pdf\":\"Product Spec (Autour du Riz) - Or. Mirin 5.5%.pdf\",\"8b812aec2d858117d39b85fa80903687.pdf\":\"Spec. Sheet - Organic Mirin 5.5% Rev.01.pdf\"}', '2025-10-21', 3, 'ยกเลิกใช้', 'r5CVWeJACXQNNs505eS_xC', '2023-10-24 10:34:42', '2024-08-21 14:10:05', 3, 3),
(53, 'PS2310-019', 'Japanese Soy Sauce', 'WIC-309 Organic Soy Sauce', 2, 'WIC-309 Organic Soy Sauce', 0, '2023-10-25', '', '{\"635a88c29371fbe0ecb566c5b0c78f06.pdf\":\"WIC-309 Organic Soy Sauce.pdf\"}', '2025-10-25', 3, 'ยกเลิกใช้', 'jmrQQyy_RwauUd9aVny8-U', '2023-10-26 14:05:53', '2024-08-16 11:37:52', 3, 3),
(54, 'PS2310-020', 'Japanese Low Sauce', 'WIC-311 Less Salt Soy Sauce', 2, 'WIC-311 Less Salt Soy Sauce', 0, '2023-10-25', '', '{\"7c17bd7d0f2b675fe68f933a87e1e6a2.pdf\":\"WIC-311 Less Salt Soy Sauce.pdf\"}', '2025-10-25', 1, 'ใช้งาน', 'uhhbKtXCjO5hP6GXkrxekr', '2023-10-26 14:07:10', '2023-10-31 13:57:46', 3, 3),
(55, 'PS2310-021', 'Japanese Gluten Free', 'WIC-314 Gluten Free Soy Sauce', 2, 'WIC-314 Gluten Free Soy Sauce', 0, '2023-10-25', '', '{\"c143da3476599c3117d8aec09f95661d.pdf\":\"WIC-314 Gluten free Soy Sauce.pdf\"}', '2025-10-25', 1, 'ใช้งาน', 'B63HCqvadvE8WOep6Au55S', '2023-10-26 14:08:33', '2023-10-31 14:00:55', 3, 3),
(56, 'PS2310-022', 'Chinese Soy Sauce', 'WID-111 Chinese Sauce', 2, 'WID-111 Chinese Sauce', 0, '2023-10-25', '', '{\"b093e3147b42d25cac0180b9451e1b10.pdf\":\"WID-111 Chinese Sauce.pdf\"}', '2025-10-25', 1, 'ใช้งาน', 'L9mOuD8gx1lPnx284Fpda6', '2023-10-26 14:10:01', '2023-10-31 14:24:00', 3, 3),
(57, 'PS2311-001', 'Seasoning Teriyaki', 'WID-242 Or. FT. Marinade Teriyaki Sauce', 1, 'WID-242 Or. FT. Marinade Teriyaki Sauce', 0, '2023-10-24', '', '{\"ea9c042af1dcb9eed45b796984b931b5.pdf\":\"Product Spec (Autour du Riz) - Or. FT. Marinade Teriyaki Sauce.pdf\",\"0bc8608fec06559f9edae9c5c15b2819.pdf\":\"Spec. Sheet - Or. FT. Marinade Teriyaki Sauce.pdf\"}', '2025-10-24', 1, 'ใช้งาน', 'qjuN_ptjSb88dzQ4XP08vf', '2023-11-01 10:56:46', NULL, 3, 3),
(58, 'PS2311-002', 'Chinese Soy Sauce', 'WID-184 Chinese Soy Sauce (Sugar)', 1, 'WID-184 Chinese Soy Sauce (Sugar) For GN Food', 0, '2023-10-21', '', '{\"8a23603f21da2527c51fcc0e8d57e36a.pdf\":\"Spec. Sheet - Chinese Soy Sauce (Sugar) For GN Food.pdf\"}', '2025-10-21', 3, 'ยกเลิกใช้', 'r9qFLIAjH-FqjsXrso52UE', '2023-11-01 11:15:46', '2024-06-17 14:39:45', 3, 3),
(59, 'PS2311-003', 'Other Sauce', 'WID-240 Or. Sweet Chili Sauce', 1, 'WID-240 Or. Sweet Chili Sauce', 0, '2023-10-24', '', '{\"8ba6f2e7b2ebd6690d3eddd2e5a5c46d.pdf\":\"Product Spec (Autour du Riz) - Or. Sweet Chili Sauce.pdf\",\"cdccd6c34608a11bd8e727afe065c18b.pdf\":\"Spec. Sheet - Or. Sweet Chili Sauce.pdf\"}', '2025-10-24', 1, 'ใช้งาน', 'ERXtI2ZADaR-wsvIhpKM0G', '2023-11-01 11:25:02', NULL, 3, 3),
(60, 'PS2311-004', 'Other Sauce', 'WID-239 Or. Spring Roll Sauce', 1, 'WID-239 Or. Spring Roll Sauce', 0, '2023-10-24', '', '{\"6cc3cfbdd872c44cfaf202512aa3af88.pdf\":\"Product Spec (Autour du Riz) - Or. Spring Roll Sauce.pdf\",\"9b7e034117ebdcd9e6654a2a19bd3396.pdf\":\"Spec. Sheet - Or. Spring Roll Sauce.pdf\"}', '2025-10-24', 1, 'ใช้งาน', 'YZdIEKQMUBQ6eyMEznemqn', '2023-11-01 11:28:03', NULL, 3, 3),
(61, 'PS2311-005', 'Seasoning Ketjap', 'WID-227 Or. Ketjap Manis Sauce', 1, 'WID-227 Or. Ketjap Manis Sauce', 0, '2023-10-24', '', '{\"80927f3e0ce9426d7801772144c9dcf6.pdf\":\"Product Spec (Autour du Riz) - Or. FT. Ketjap Sauce.pdf\",\"11588011126064ff74638b6fa1fa0240.pdf\":\"Spec. Sheet - Or. FT. Ketjap Sauce.pdf\"}', '2025-10-24', 3, 'ยกเลิกใช้', 'BsfsItsCh4KNO1oanPzOSR', '2023-11-01 11:31:16', '2024-05-15 10:40:46', 3, 3),
(62, 'PS2311-006', 'Seasoning Soy Sauce', 'WID-245 Or. Pad Thai Sauce', 1, 'WID-245 Or. Pad Thai Sauce', 0, '2023-10-24', '', '{\"6b8419724a0d5661ed7e536f7478ffe0.pdf\":\"Product Spec (Autour du Riz) - Or. Pad Thai Sauce.pdf\",\"53af8cd290a11a0d6afb2d643cfd0e9b.pdf\":\"Spec. Sheet - Or. Pad Thai Sauce.pdf\"}', '2025-10-24', 3, 'ยกเลิกใช้', '0jy0g0krD_g3NBiY8ZSPmR', '2023-11-01 11:37:10', '2024-05-15 10:49:06', 3, 3),
(63, 'PS2311-007', 'Seasoning Vinaigrette', 'WID-241 Or. Thai Vinaigrette Sauce', 1, 'WID-241 Or. Thai Vinaigrette Sauce', 0, '2023-10-24', '', '{\"1b215ba51b4fa6f331b9c9563d67fd9e.pdf\":\"Product Spec (Autour du Riz) - Or. Thai Vinaigrette Sauce.pdf\",\"d977f8debf88f3004259eb47dc34c8f3.pdf\":\"Spec. Sheet - Or. Thai Vinaigrette Sauce.pdf\"}', '2025-10-24', 1, 'ใช้งาน', 'JZ2xVceMidn2qCaBGlfrYd', '2023-11-01 11:41:43', NULL, 3, 3),
(64, 'PS2311-008', 'Seasoning Vinaigrette', 'WID-243 Or. Japanese Vinaigrette Sauce', 1, 'WID-243 Or. Japanese Vinaigrette Sauce', 0, '2023-10-24', '', '{\"9606616590089a56a7909e1d90fff576.pdf\":\"Product Spec (Autour du Riz) - Or. Japanese Vinaigrette Sauce.pdf\",\"fe4837d3e6aea4f568828d5a38d83b10.pdf\":\"Spec. Sheet - Or. Japanese Vinaigrette Sauce.pdf\"}', '2025-10-24', 1, 'ใช้งาน', '3ynFOO9reAi_Jzl0EPnzMg', '2023-11-01 11:44:30', NULL, 3, 3),
(65, 'PS2311-009', 'Seasoning Soy Sauce', 'WID-244 Or. sweet and Sour Sauce', 1, 'WID-244 Or. sweet and Sour Sauce', 0, '2023-10-24', '', '{\"7a946310a82c919c303795df82a14f4c.pdf\":\"Product Spec (Autour du Riz) - Or. Sweet and Sour Sauce.pdf\",\"7502778688bfe67bd2ceed7e38336219.pdf\":\"Spec. Sheet - Or. Sweet and Sour Sauce.pdf\"}', '2025-10-24', 1, 'ใช้งาน', 'GkCX-5FxLSdx_Y-6WYOdYZ', '2023-11-01 13:37:32', NULL, 3, 3),
(66, 'PS2311-010', 'Rice Vinegar', 'WID-213 Or. Sushi Vinegar', 1, 'WID-213 Or. Sushi Vinegar', 0, '2023-10-24', '', '{\"c6664a501dc51f9c9a6af2aaf0fc9613.pdf\":\"Product Spec (Autour du Riz) - Or. Sushi Vinegar.pdf\",\"4dadce079ee5424570a0a93c4739a1ea.pdf\":\"Spec. Sheet - Or. Sushi Vinegar.pdf\"}', '2025-10-24', 1, 'ใช้งาน', 'hgK0F7206DTXqMzY7kG56D', '2023-11-01 13:41:06', NULL, 3, 3),
(67, 'PS2311-011', 'Rice Vinegar', 'WID-189 Or. FT. Rice Vinegar', 1, 'WID-189 Or. FT. Rice Vinegar', 0, '2023-10-24', '', '{\"067d881e08f23f4fb723f5590fb93dce.pdf\":\"Product Spec (Autour du Riz) - Or. FT. Rice Vinegar 5%.pdf\",\"4dd0629f4c3c046348e4c6237fe0f343.pdf\":\"Spec. Sheet - Or. FT. Rice Vinegar 5%.pdf\"}', '2025-10-24', 3, 'ยกเลิกใช้', 'GoqBkayVr7arzQsOKX6C4u', '2023-11-01 13:44:48', '2024-05-15 10:46:09', 3, 3),
(68, 'PS2311-012', 'Japanese Soy Sauce', 'WIC-309 Organic Soy Sauce', 1, 'WIC-309 Organic Soy Sauce', 0, '2023-10-21', '', '{\"296d9e643ab7ac6a5575e4c794a36d8c.pdf\":\"Spec. Sheet - Organic Soy Sauce.pdf\"}', '2025-10-21', 1, 'ใช้งาน', '-VJ3LxZnf_eczF1h6j12z1', '2023-11-01 13:55:18', NULL, 3, 3),
(69, 'PS2311-013', 'Japanese Soy Sauce', 'WIC-339 Or. FT. Shoyu Soy Sauce', 2, 'WIC-339 Or. FT. Shoyu Soy Sauce', 0, '2023-11-01', '', '{\"f2906f3338967253e4486ef97af79b43.pdf\":\"WIC-339 Or. FT. Shoyu Soy Sauce.pdf\"}', '2025-11-01', 1, 'ใช้งาน', '6hifeOyanQJwcug5V64cmH', '2023-11-01 15:24:51', NULL, 3, 3),
(70, 'PS2311-014', 'Japanese Soy Sauce', 'WIC-340 Or. FT. Tamari Soy Sauce', 2, 'WIC-340 Or. FT. Tamari Soy Sauce', 0, '2023-11-01', '', '{\"398e146b00b2058a763c1ee659a4b5dc.pdf\":\"WIC-340 Or. FT. Tamari Soy Sauce.pdf\"}', '2025-11-01', 1, 'ใช้งาน', 'BFYRBKNMe-a6YHIdLUo_8Q', '2023-11-01 15:25:59', NULL, 3, 3),
(71, 'PS2311-015', 'Japanese Low Sauce', 'WIC-311 Less Salt Soy Sauce', 1, 'WIC-311 Less Salt Soy Sauce', 0, '2023-10-21', '', '{\"1f370f75d5039da9da151d3d88d83559.pdf\":\"Spec. Sheet - Less Salt Soy Sauce.pdf\"}', '2025-10-21', 1, 'ใช้งาน', '-ooUY784SBjaG7vhf0UqwB', '2023-11-02 08:44:38', NULL, 3, 3),
(72, 'PS2311-016', 'Japanese Low Sauce', 'WIC-333 Less Salt Soy Sauce No.1', 1, 'WIC-333 Less Salt Soy Sauce No.1', 0, '2023-10-24', '', '{\"5c8f4b6d82dfdf2157516be2f53a5cd4.pdf\":\"Spec. Sheet - Less Salt Soy Sauce No.1.pdf\"}', '2025-10-24', 1, 'ใช้งาน', '-4k7fpb0WZ9euEKPiLpD4_', '2023-11-02 08:53:35', NULL, 3, 3),
(73, 'PS2311-017', 'Japanese Low Sauce', 'WIC-337 Organic Less Salt Soy Sauce (ทั่วไป) โชว์ Organic Alcohol ไม่ตรงกับฉลาก PLN-105 ฉลาก PM Farm 200ml.', 1, 'WIC-337 Organic Less Salt Soy Sauce (ทั่วไป) โชว์ Organic Alcohol ไม่ตรงกับฉลาก PLN-105 ฉลาก PM Farm 200ml.', 0, '2023-10-21', '', '{\"396d3c344a6ffd1410567507fc0830a3.pdf\":\"Spec. Sheet - Organic Less Salt Soy Sauce.pdf\"}', '2025-10-21', 1, 'ใช้งาน', 'a-v_ZXj1gCfEcppZ-xrs6n', '2023-11-02 09:11:09', '2025-01-07 16:27:19', 3, 3),
(74, 'PS2311-018', 'Chinese Soy Sauce', 'WID-112 Chinese Soy Sauce', 1, 'WID-112 Chinese Soy Sauce', 0, '2023-10-21', '', '{\"3114befc0d5bc92f0f405807d9250994.pdf\":\"Spec. Sheet - Chinese Soy Sauce.pdf\"}', '2025-10-21', 3, 'ยกเลิกใช้', 'SAPotDoiLUht8_fFBZI8eQ', '2023-11-02 09:13:13', '2024-01-31 13:39:36', 3, 3),
(75, 'PS2311-019', 'Japanese Gluten Free', 'WIC-331 Less Salt Soy Sauce (Gluten Free)', 1, 'WIC-331 Less Salt Soy Sauce (Gluten Free)', 0, '2023-10-21', '', '{\"7453b114aae60ac6a1e167c69c8ed24d.pdf\":\"Spec. Sheet - Less Salt Soy Sauce (Gluten free).pdf\"}', '2025-10-21', 1, 'ใช้งาน', 'uk8F9RaDX4BwPepyD7mNtw', '2023-11-02 09:17:47', '2023-11-02 09:21:09', 3, 3),
(76, 'PS2311-020', 'Chinese Soy Sauce', 'WID-111 Chinese Soy Sauce Formular 1', 1, 'WID-111 Chinese Soy Sauce Formular 1', 0, '2023-10-21', '', '{\"735c43abdb1b64c87b8be60b67ced372.pdf\":\"Spec. Sheet - Chinese Soy Sauce Formular 1.pdf\"}', '2025-10-21', 1, 'ใช้งาน', '22ewu3L98Dmhy0OjB_ff6M', '2023-11-02 09:23:30', NULL, 3, 3),
(77, 'PS2311-021', 'Seasoning Soy Sauce', 'WID-215 Or. Tandoori Marinade Sauce (with Or. Cassava Flour)', 1, 'WID-215 Or. Tandoori Marinade Sauce (with Or. Cassava Flour)', 0, '2023-10-30', '', '{\"8b8b41c2f5d09668d8a954e07930e7b9.pdf\":\"Spec. Sheet - Organic Tandoori Sauce.pdf\"}', '2025-10-30', 1, 'ใช้งาน', 'PDLJ63tTJDZwt8ZOesnha_', '2023-11-02 09:28:52', NULL, 3, 3),
(78, 'PS2311-022', 'Rice Vinegar', 'WIC-327 Or. FT. Rice Vinegar', 1, 'WIC-327 Or. FT. Rice Vinegar', 0, '2023-10-21', '', '{\"67298178fd7e684d29fda4baee4c8c83.pdf\":\"Spec. Sheet - Or. Rice Vinegar.pdf\"}', '2025-10-21', 1, 'ใช้งาน', 'IMa2g-fRVM5WWyFmTVTGWz', '2023-11-03 08:41:11', '2024-01-03 14:10:49', 3, 3),
(79, 'PS2311-023', 'Miso', 'WID-236 Pas. Shiro Miso', 1, 'WID-236 Pas. Shiro Miso', 0, '2023-11-02', '', '{\"832b025e88e41a945b7d495bd178397f.pdf\":\"Spec. Sheet - Pas. Shiro Miso.pdf\"}', '2025-11-02', 1, 'ใช้งาน', 'oIw23iR302sWzu0jRsexMn', '2023-11-04 09:52:49', NULL, 3, 3),
(80, 'PS2311-024', 'Miso', 'WID-235 Un Pas. Shiro Miso', 1, 'WID-235 Un Pas. Shiro Miso', 0, '2023-11-02', '', '{\"e439aaf8a52c2d3e86476b933d3112cb.pdf\":\"Spec. Sheet - Un Pas. Shiro miso.pdf\"}', '2025-11-02', 1, 'ใช้งาน', 'vjhUGxRVZ1EC2bY5W9_-F3', '2023-11-04 09:55:17', NULL, 3, 3),
(81, 'PS2311-025', 'Chinese Soy Sauce', 'WID-173 Chinese Soy Sauce No. 1.2', 1, 'WID-173 Chinese Soy Sauce No. 1.2', 0, '2023-11-04', '', '{\"bed80ee77056e12f99a70ac7f0807988.pdf\":\"Spec. Sheet - Chinese Soy Sauce No. 1.2.pdf\"}', '2025-11-04', 1, 'ใช้งาน', '0NT-xnIacd_3QF5uaDOsR2', '2023-11-06 14:12:16', '2024-02-08 11:39:36', 3, 3),
(82, 'PS2311-026', 'Japanese Soy Sauce', 'WIC-310 Extra Soy Sauce FT.', 1, 'WIC-310 Extra Soy Sauce FT.', 0, '2023-11-03', '', '{\"4046aca37f13db5f08b2ca0a75dd4527.pdf\":\"Spec. Sheet - Extra Soy Sauce FT..pdf\"}', '2025-11-03', 1, 'ใช้งาน', 'ofsTCQU0DyTpbxBDff8C43', '2023-11-06 14:18:28', NULL, 3, 3),
(83, 'PS2311-027', 'Japanese Soy Sauce', 'WIC-346 Standard Soy Sauce (Gluten Free)', 1, 'WIC-346 Standard Soy Sauce (Gluten Free)', 0, '2023-11-03', '', '{\"006e1b6c116447388b1d19b9aa3f2120.pdf\":\"Spec. Sheet - Standard Soy Sauce (Gluten Free).pdf\"}', '2025-11-03', 1, 'ใช้งาน', 'FEorWAeYfwtBvl3HQlgz2g', '2023-11-06 14:20:23', NULL, 3, 3),
(84, 'PS2311-028', 'Japanese Soy Sauce', 'WIC-303 Extra Soy Sauce For Thai Nikken Foods (FJEX-K0002)', 1, 'WIC-303 Extra Soy Sauce For Thai Nikken Foods (FJEX-K0002)', 0, '2023-11-03', '', '{\"dcd88ba898a93f59c07eba18db7379e7.pdf\":\"Spec. Sheet - Extra For Thainikken.pdf\"}', '2025-11-03', 1, 'ใช้งาน', 'Y-05i6gC3NCssL69Gc5CUK', '2023-11-06 14:34:31', NULL, 3, 3),
(85, 'PS2311-029', 'Japanese Soy Sauce', 'WIC-317 Standard Soy Sauce No.2', 1, 'WIC-317 Standard Soy Sauce No.2', 1, '2023-11-03', '', '{\"17090787bd77ea0cd0f52de175d5f23e.pdf\":\"Spec. Sheet - Standard Soy Sauce No.2 Rev.01.pdf\"}', '2025-11-03', 3, 'ยกเลิกใช้', '0IvU4nVu1m02Ci5XL_ngOD', '2023-11-06 14:36:46', '2024-06-13 15:34:43', 3, 3),
(86, 'PS2311-030', 'Chinese Soy Sauce', 'WID-108 Extra Chinese Soy Sauce', 1, 'WID-108 Extra Chinese Soy Sauce', 0, '2023-11-03', '', '{\"2bdaaecdd8101fd19c382f5bfa3ae2c7.pdf\":\"Spec. Sheet - Extra Chinese Soy Sauce.pdf\"}', '2025-11-03', 1, 'ใช้งาน', 'NnvcHz7rbXl1khZ8iuY4D7', '2023-11-06 14:39:35', NULL, 3, 3),
(87, 'PS2311-031', 'Dark Soy Sauce', 'WID-114 Dark Soy Sauce For CP', 1, 'WID-114 Dark Soy Sauce For CP', 0, '2024-01-26', '', '{\"42a536e0e893c93b74182cccabaa105a.pdf\":\"Spec. Sheet - Dark Soy Sauce Formular 2 For CP.pdf\"}', '2026-01-26', 1, 'ใช้งาน', 'Af7h13SBWmjz9xCoae3rD2', '2023-11-06 14:42:08', '2024-01-31 13:35:21', 3, 3),
(88, 'PS2311-032', 'Seasoning Vegan', 'WID-222 Vegan Fish Sauce', 1, 'WID-222 Vegan Fish Sauce', 0, '2023-11-07', '', '{\"df5b1ab13feed8c446b8fdebe6134adc.pdf\":\"Spec. Sheet - Vegan Fish Sauce.pdf\"}', '2025-11-07', 1, 'ใช้งาน', 'MjZZJ1zxn_hk6sH8tSBqa4', '2023-11-07 13:21:17', NULL, 3, 3),
(89, 'PS2311-033', 'Miso', 'WID-206 Organic FT. Miso', 1, 'WID-206 Organic FT. Miso', 0, '2023-11-07', '', '{\"5a6c62532804f569b0783e32bd4beea0.pdf\":\"Spec. sheet - Organic FT. Miso.pdf\",\"b7fba6e8177fee48c0839b3479adbd59.pdf\":\"Product Spec (Autour du Riz) - Or. FT. Miso.pdf\"}', '2025-11-07', 1, 'ใช้งาน', 'rCBEFtVu4uAiA5-fA7dOUs', '2023-11-07 16:24:41', '2023-11-07 16:31:41', 3, 3),
(90, 'PS2311-034', 'Chinese Soy Sauce', 'WID-111 Chinese Soy Sauce Formular 1', 1, 'WID-111 Chinese Soy Sauce Formular 1', 0, '2023-11-08', '', '{\"b79985b8d8870f9d5d080294f6e1a5ab.pdf\":\"Spec. Sheet - Chinese Soy Sauce Formular 1.pdf\"}', '2025-11-08', 1, 'ใช้งาน', 'aheASzb5nxSddLXpvj02q0', '2023-11-10 16:22:57', NULL, 3, 3),
(91, 'PS2311-035', 'Dark Soy Sauce', 'WID-187 Dark Soy Sauce (Gluten Free)', 1, 'WID-187 Dark Soy Sauce (Gluten Free)', 0, '2023-11-08', '', '{\"c670a20ff616d97618c404b784e69fb0.pdf\":\"Spec. Sheet - Dark Soy Sauce (Gluten Free).pdf\"}', '2025-11-08', 3, 'ยกเลิกใช้', 'L4EF58oKPfJl1Wmx7aRt-4', '2023-11-10 16:25:52', '2024-11-07 15:23:38', 3, 3),
(92, 'PS2311-036', 'Dark Soy Sauce', 'WID-103 Premium Dark Soy Sauce For M&S 51', 1, 'WID-103 Premium Dark Soy Sauce For M&S 51', 0, '2023-11-07', '', '{\"cd357ca0355fa3c8f5b2af8d396a6e38.pdf\":\"Spec. Sheet - Premium Dark Soy Sauce for M&S 51.pdf\"}', '2025-11-07', 3, 'ยกเลิกใช้', 'B4HtlbbvUliufycg84TjlD', '2023-11-10 16:28:26', '2024-05-14 15:40:54', 3, 3),
(93, 'PS2311-037', 'Chinese Soy Sauce', 'WID-165 Or. Chinese Soy Sauce', 1, 'WID-165 Or. Chinese Soy Sauce', 0, '2023-11-07', '', '{\"d2b9df4da7418c9bcb2b6ccb0a781dac.pdf\":\"Spec. Sheet - Or. Chinese Soy Sauce.pdf\"}', '2025-11-07', 1, 'ใช้งาน', 'bn5pXpq65eBdAzQoLfLt5i', '2023-11-10 16:31:24', NULL, 3, 3),
(94, 'PS2311-038', 'Japanese Tamari', 'WID-229 Tamari Soy Sauce No.1 For Thainichi', 1, 'WID-229 Tamari Soy Sauce No.1 For Thainichi', 0, '2023-11-07', '', '{\"161f6839ed3ef77ec62a63f184cf4562.pdf\":\"Spec. Sheet - Tamari Soy Sauce No.1 for Thainichi.pdf\"}', '2025-11-07', 1, 'ใช้งาน', '5HmV1xEe9Sf6X384Vd0VZG', '2023-11-10 16:34:36', NULL, 3, 3),
(95, 'PS2311-039', 'Dark Soy Sauce', 'WID-183 Or. Dark Soy Sauce', 1, 'WID-183 Or. Dark Soy Sauce', 0, '2023-11-08', '', '{\"af3f6bd0367881f2409ae2e40f810175.pdf\":\"Spec. Sheet - Or. Dark Soy Sauce.pdf\"}', '2025-11-08', 1, 'ใช้งาน', '5Pt9KSZP25m0-tJGe7sV1u', '2023-11-10 16:40:16', NULL, 3, 3),
(96, 'PS2311-040', 'Dark Soy Sauce', 'WID-113 Dark Soy Sauce Formular 2', 1, 'WID-113 Dark Soy Sauce Formular 2', 0, '2023-11-08', '', '{\"c54abfd2e2319214be94f09a0a024ccd.pdf\":\"Spec. Sheet - Dark Soy Sauce Formular 2.pdf\"}', '2025-11-08', 1, 'ใช้งาน', '-bnDPvRZXR_gI5Aojo6q3M', '2023-11-10 16:41:48', NULL, 3, 3),
(97, 'PS2311-041', 'Japanese Tamari', 'WIC-336 Or. Tamari Soy Sauce', 1, 'WIC-336 Or. Tamari Soy Sauce', 0, '2023-11-18', '', '{\"54efd099e441af2ce9e91cab6e8eabf2.pdf\":\"Spec. Sheet - Or. Tamari Soy Sauce.pdf\"}', '2025-11-18', 1, 'ใช้งาน', 'aYVSrmYPRWCGTH_kfLZI9U', '2023-11-11 10:43:44', '2024-02-08 11:40:22', 3, 3),
(98, 'PS2311-042', 'Seasoning Soy Sauce', 'WID-228 Fish Sauce Flavored Organic Soy Sauce', 1, 'WID-228 Fish Sauce Flavored Organic Soy Sauce', 0, '2023-11-10', '', '{\"15187fd89a3524d5b7caf6093dc67280.pdf\":\"Spec. Sheet - Fish Sauce Flavored Or. Soy Sauce.pdf\"}', '2025-11-10', 1, 'ใช้งาน', 'Srr9JKTNgvwAvY5c69yODv', '2023-11-14 14:15:54', '2024-08-24 09:31:12', 3, 3),
(99, 'PS2311-043', 'Seasoning Soy Sauce', 'WID-121 Yakiniku Apple Sauce', 1, 'WID-121 Yakiniku Apple Sauce', 0, '2023-11-10', '', '{\"0464b955bad0ef955890b2d4e83d66bf.pdf\":\"Spec. Sheet - Yakiniku Apple Sauce.pdf\"}', '2025-11-10', 1, 'ใช้งาน', 'v4-hxHspK-UiybkbGldYj2', '2023-11-14 14:19:01', NULL, 3, 3),
(100, 'PS2311-044', 'Hoi Sin Sauce', 'WID-128 Hoi Sin Sauce', 1, 'WID-128 Hoi Sin Sauce', 0, '2023-11-10', '', '{\"184883c04f498b5778747337f37947d4.pdf\":\"Spec. Sheet - Hoi Sin Sauce.pdf\"}', '2025-11-10', 1, 'ใช้งาน', 'nKYsiR-QC3tx9z0ViH8_ks', '2023-11-14 14:21:43', NULL, 3, 3),
(101, 'PS2311-045', 'Dark Soy Sauce', 'WID-174 Seasoning Dark Soy Sauce', 1, 'WID-174 Seasoning Dark Soy Sauce', 0, '2023-11-11', '', '{\"9b2d59c803a9f7357eff7c62af248a74.pdf\":\"Spec. sheet - Seasoning Dark Soy Sauce.pdf\"}', '2025-11-11', 1, 'ใช้งาน', 'SWfp7hcav35Ry4IY5XVPgR', '2023-11-14 14:25:54', NULL, 3, 3),
(102, 'PS2311-046', 'Seasoning Vinaigrette', 'WID-246 Or. Ponzu Sauce No.1', 1, 'WID-246 Or. Ponzu Sauce No.1', 0, '2023-11-10', '', '{\"a2d157644504ffd8beb4f078d2d1e9a4.pdf\":\"Spec. Sheet - Or. Ponzu Sauce No.1.pdf\"}', '2025-11-10', 1, 'ใช้งาน', 'zuxaN8dM7F2oORUYRSld6m', '2023-11-14 14:28:11', NULL, 3, 3),
(103, 'PS2311-047', 'Japanese Other Sauce', 'WID-107 Roasted Japanese Soy Sauce', 1, 'WID-107 Roasted Japanese Soy Sauce', 0, '2023-11-11', '', '{\"28070a4bf35faf769bd580c0aa106306.pdf\":\"Spec. Sheet - Roasted Japanese Soy Sauce.pdf\"}', '2025-11-11', 1, 'ใช้งาน', 'yrwE-BO1Z4u5vNkmTsZelo', '2023-11-14 14:30:33', NULL, 3, 3),
(104, 'PS2311-048', 'Hoi Sin Sauce', 'WID-133 Premium Hoi Sin Sauce', 1, 'WID-133 Premium Hoi Sin Sauce', 0, '2023-11-11', '', '{\"1235b89b8f44706df705613d4c976c7d.pdf\":\"Spec. Sheet - Premium Hoi Sin Sauce.pdf\"}', '2025-11-11', 1, 'ใช้งาน', '6FIKDillz8CNzI60nhZVNx', '2023-11-14 14:32:54', NULL, 3, 3),
(105, 'PS2311-049', 'Other Sauce', 'WID-232 ซีอิ๊วน้ำปลามหิดล', 1, 'WID-232 ซีอิ๊วน้ำปลามหิดล', 0, '2023-11-11', '', '{\"7fbd1ffafd19ab55a278168d652dba28.pdf\":\"Spec. Sheet - ซีอิ๊วน้ำปลามหิดล.pdf\"}', '2025-11-11', 1, 'ใช้งาน', 'THHepBC6_06ClMup3RIOnB', '2023-11-14 14:37:48', NULL, 3, 3),
(106, 'PS2311-050', 'Hoi Sin Sauce', 'WID-172 Premium Hoi Sin Sauce No.1', 1, 'WID-172 Premium Hoi Sin Sauce No.1', 0, '2023-11-11', '', '{\"31e3ef03008b48d582ccc5bb8d29b816.pdf\":\"Spec. Sheet - Premium Hoi Sin Sauce No.1.pdf\"}', '2025-11-11', 1, 'ใช้งาน', 'd-9Knq-1_C2Osjm7_e-wad', '2023-11-14 14:40:08', NULL, 3, 3),
(107, 'PS2311-051', 'Japanese Tamari', 'WIC-324 Or. FT. Tamari Soy Sauce', 1, 'WIC-324 Or. FT. Tamari Soy Sauce', 1, '2023-11-18', '', '{\"3cca216fb973fa8c320d1b5fa5e360ad.pdf\":\"Spec. Sheet - Or. FT. Tamari Soy Sauce.pdf\"}', '2025-11-18', 1, 'ใช้งาน', 'r1aw_ZuAXFXN_JhknXUOjm', '2023-11-21 14:01:21', NULL, 3, 3),
(108, 'PS2311-052', 'Seasoning Teriyaki', 'WID-181 Or. Teriyaki Sauce', 1, 'WID-181 Or. Teriyaki Sauce', 0, '2023-11-21', '', '{\"49c5002787eacac99c4fe7545475ad12.pdf\":\"Spec. Sheet - Or. Teriyaki Sauce.pdf\"}', '2025-11-21', 1, 'ใช้งาน', 'UKU_SJjfi0cnGYQK-46Cay', '2023-11-21 14:05:57', NULL, 3, 3),
(109, 'PS2311-053', 'Rice Vinegar', 'WID-182 Or. Black Rice Vinegar Sauce', 1, 'WID-182 Or. Black Rice Vinegar Sauce', 0, '2023-11-24', '', '{\"e29592d640503b10435519d9687d8781.pdf\":\"Spec. Sheet -Or. Black Rice Vinegar Sauce.pdf\"}', '2025-11-24', 1, 'ใช้งาน', '7Y39S8yzhmEuExJpkSdDuG', '2023-11-24 16:41:27', NULL, 3, 3),
(110, 'PS2311-054', 'Sweet Soy Sauce', 'WID-190 Sweet Soy Sauce (Rice)', 1, 'WID-190 Sweet Soy Sauce (Rice)', 0, '2023-11-23', '', '{\"4cab584554eee8bf04059f641667656d.pdf\":\"Spec. Sheet - Sweet Soy Sauce (Rice).pdf\"}', '2025-11-23', 1, 'ใช้งาน', 'a1uJD2Xl1dIFQm-NSiamgo', '2023-11-24 16:43:13', NULL, 3, 3),
(112, 'PS2312-002', 'Japanese Soy Sauce', 'WIC-348 Rich Soy Sauce No.1', 1, 'WIC-348 Rich Soy Sauce No.1', 1, '2023-12-02', '', '{\"444a8b345d815268af7809601f433c8f.pdf\":\"Spec. Sheet - Rich Soy Sauce No.1 Rev.01.pdf\"}', '2025-12-02', 1, 'ใช้งาน', 'wTBIGQywWXvuVuoTqBv7vV', '2023-12-06 14:20:04', NULL, 3, 3),
(113, 'PS2312-003', 'Miso', 'WID-151/2 Miso', 1, 'WID-151/2 Miso', 0, '2023-12-09', '', '{\"f38178315ee59de694265fb3a7b4d79c.pdf\":\"Spec. Sheet - MISO ( WID-151(2) ).pdf\"}', '2025-12-09', 1, 'ใช้งาน', 'bbrk0O2nk5Dt62KUT5IeQo', '2023-12-09 13:50:37', '2024-04-23 09:58:38', 3, 3),
(114, 'PS2312-004', 'Japanese Soy Sauce', 'WID-109 Standard Dark Soy Sauce', 1, 'WID-109 Standard Dark Soy Sauce', 0, '2023-12-13', '', '{\"ca5872c43d99b6d823f2abdd0ae50db9.pdf\":\"Spec. Sheet - Standard Dark Soy Sauce.pdf\"}', '2025-12-13', 1, 'ใช้งาน', 'Cy4pWYlGtdI7Cz2H4uI9tl', '2023-12-14 13:22:04', NULL, 3, 3),
(115, 'PS2312-005', 'Japanese Soy Sauce', 'WID-109 / CP Ram Standard Dark Soy Sauce', 1, 'WID-109 / CP Ram Standard Dark Soy Sauce', 0, '2023-12-13', '', '{\"15c662c6323b03e8e0a66af5bfb3ab49.pdf\":\"Spec. Sheet - Standard Dark Soy Sauce (CP Ram).pdf\"}', '2025-12-13', 1, 'ใช้งาน', 'LPaaUAWLI8Nwk_f5a2uo60', '2023-12-14 13:23:19', NULL, 3, 3),
(116, 'PS2312-006', 'Japanese Low Sauce', 'WIC-344 Or. Reduced Salt Soy Sauce (1%v/v Alcohol)', 1, 'WIC-344 Or. Reduced Salt Soy Sauce (1%v/v Alcohol)', 0, '2023-12-14', '', '{\"84a2c9838980cfcf5a568212d2f6cbd0.pdf\":\"Spec. Sheet - Organic Reduced Salt Soy Sauce.pdf\"}', '2025-12-14', 1, 'ใช้งาน', '2H1KFT9PRezCIe5r_-0DTy', '2023-12-21 09:13:34', NULL, 3, 3),
(117, 'PS2312-007', 'Japanese Soy Sauce', 'WIC-335 Extra Soy Sauce (Gluten Free)', 1, 'WIC-335 Extra Soy Sauce (Gluten Free)', 0, '2023-12-15', '', '{\"e4e547d7a7abd8c7696f24e09bbbb665.pdf\":\"Spec. sheet - Extra  Soy Sauce Gluten free.pdf\"}', '2025-12-15', 1, 'ใช้งาน', 'GhV4m2YqWPS1LBxl10KXyI', '2023-12-21 09:17:37', NULL, 3, 3),
(118, 'PS2401-001', 'Japanese Low Sauce', 'WIC-337 Organic Less Salt Soy Sauce (May Exports)', 1, 'WIC-337 Organic Less Salt Soy Sauce (May Exports)', 1, '2023-12-25', '', '{\"eb763ab3f4dd85197f9c7b083029a9e7.pdf\":\"Spec. Sheet - Organic Less Salt MayExports.pdf\"}', '2025-12-25', 1, 'ใช้งาน', '1WqX6qQmj4T8082BWL_D_F', '2024-01-17 16:20:17', '2024-08-22 13:30:13', 3, 3),
(119, 'PS2401-002', 'Japanese Gluten Free', 'WIC-314 Gluten Free (Rice) Soy Sauce', 1, 'WIC-314 Gluten Free (Rice) Soy Sauce', 1, '2023-12-22', '', '{\"b26a8c71eaeefc6b3f4da6a49c47fcd5.pdf\":\"Spec. Sheet - Gluten free (Rice) Singhakameda.pdf\"}', '2025-12-22', 1, 'ใช้งาน', 'HO4Hvk2yNNVCc0F8F4kyER', '2024-01-20 10:50:40', '2024-01-20 10:51:33', 3, 3),
(120, 'PS2401-003', 'Japanese Soy Sauce', 'WIC-304 Standard Soy Sauce (Singha Kameda)', 1, 'WIC-304 Standard Soy Sauce (Singha Kameda)', 1, '2023-12-22', '', '{\"acb67c2e691cf0cebf842a02c6743510.pdf\":\"Spec. Sheet - Standard   Singhakameda.pdf\"}', '2025-12-22', 1, 'ใช้งาน', 'kOIahSMFcgMphBR9eSq3wv', '2024-01-20 10:53:52', '2024-09-06 16:10:39', 3, 3),
(121, 'PS2401-004', 'Chinese Soy Sauce', 'WID-173 Chinese Soy Sauce No. 1.2 (Singha Kameda)', 1, 'WID-173 Chinese Soy Sauce No. 1.2 (Singha Kameda)', 1, '2023-12-22', '', '{\"39d5f4b5a91f1fb3a84a9f74b07821c8.pdf\":\"Spec. Sheet - Chinese 1.2  Singhakameda.pdf\"}', '2025-12-22', 1, 'ใช้งาน', 'eDqROmyX52pfyo-W_jJpdW', '2024-01-20 10:56:09', '2024-09-09 11:56:32', 3, 3),
(122, 'PS2401-005', 'Japanese Soy Sauce', 'WIC-306 Rich Soy Sauce', 1, 'WIC-306 Rich Soy Sauce', 1, '2023-12-22', '', '{\"58c7acc14fd709d1ce547bd15104fd68.pdf\":\"Spec. Sheet - Rich Singhakameda.pdf\"}', '2025-12-22', 1, 'ใช้งาน', 'SBu6A2vP859aoSTipzz9t0', '2024-01-20 10:57:58', NULL, 3, 3),
(123, 'PS2401-006', 'Japanese Soy Sauce', 'WIC-302 Special Soy sauce', 1, 'WIC-302 Special Soy sauce', 1, '2023-12-22', '', '{\"34d75003ac0c7ac2440389886e5284a2.pdf\":\"Spec. Sheet - Special   Singhakameda.pdf\"}', '2025-12-22', 1, 'ใช้งาน', 'F5HTX8t_jf2t6yFizN_W7y', '2024-01-20 10:59:42', NULL, 3, 3),
(124, 'PS2401-007', 'Japanese Light Color', 'WIC-305 Light Color Soy Sauce (Singha kameda)', 1, 'WIC-305 Light Color Soy Sauce (Singha kameda)', 1, '2023-12-22', '', '{\"f1aebce26c5e408988b4d5f28f6f9c72.pdf\":\"Spec. Sheet - light color    Singhakameda.pdf\"}', '2025-12-22', 1, 'ใช้งาน', '8uUjTu5-xfEoQ30AVUwecH', '2024-01-20 11:01:54', '2024-09-03 11:37:26', 3, 3),
(125, 'PS2401-008', 'Japanese Tamari', 'WIC-336 Or. Tamari Soy Sauce', 1, 'WIC-336 Or. Tamari Soy Sauce', 1, '2023-12-22', '', '{\"4193925cde0d82974f96e53990328385.pdf\":\"Spec. Sheet - Organic Tamari   Singhakameda.pdf\"}', '2025-12-22', 1, 'ใช้งาน', 'XiEZQ8yg2OL3217O8qDX4z', '2024-01-20 11:05:03', NULL, 3, 3),
(126, 'PS2401-009', 'Miso', 'WID-226 Or. Pasteurized Genmai Miso with Kombu', 2, 'WID-226 Or. Pasteurized Genmai Miso with Kombu', 1, '2024-01-24', '', '{\"47ebabeb528d5235749f57d0127bdbf4.pdf\":\"WID-226 Or. Pas. Genmai Miso with Kombu (N).pdf\"}', '2026-01-24', 1, 'ใช้งาน', 'U4SCSDBqlq7U5l7H6UFIPe', '2024-01-25 09:20:30', NULL, 3, 3),
(127, 'PS2401-010', 'Miso', 'WID-236 Or. Pasteurized Shiro Miso', 2, 'WID-236 Or. Pasteurized Shiro Miso', 1, '2024-01-24', '', '{\"6ed6cab2a36238fa8f9b3b4955576ca8.pdf\":\"WID-236 Or. Pas. Shiro Miso.pdf\"}', '2026-01-24', 1, 'ใช้งาน', 'w3mPIhpp1aNxUoYOyg7RaC', '2024-01-25 09:36:12', '2024-01-25 10:22:16', 3, 3),
(128, 'PS2401-011', 'Miso', 'WID-168 Or. Unpasteurized Miso', 2, 'WID-168 Or. Unpasteurized Miso', 1, '2024-01-24', '', '{\"807852c6aea2b7357cb029339ed93313.pdf\":\"WID-168 Or. Unpas miso (N).pdf\"}', '2026-01-24', 3, 'ยกเลิกใช้', 'o0wL4kXvnPdpfNVBHfcO80', '2024-01-25 09:50:06', '2024-04-23 09:51:05', 3, 3),
(129, 'PS2401-012', 'Miso', 'WID-224 Or. FT. Pasteurized Genmai Miso', 2, 'WID-224 Or. FT. Pasteurized Genmai Miso', 1, '2024-01-24', '', '{\"ab63162303064eac5251120842e790a0.pdf\":\"WID-224 - Or.Pas. Genmai miso.pdf\"}', '2026-01-24', 3, 'ยกเลิกใช้', 'BNVxlwlfwRNTw-Ar9-G42Q', '2024-01-25 09:53:23', '2024-08-16 11:33:48', 3, 3),
(130, 'PS2401-013', 'Rice Vinegar', 'WIC-327/WID-189/WID-210 Or. Rice Vinegar', 2, 'WIC-327/WID-189/WID-210 Or. Rice Vinegar', 0, '2024-01-24', '', '{\"290f265d0d7a5b1a547c65ac4ce2685a.pdf\":\"WIC-327,WID-189,WID-210 - Or. Rice Vinegar.pdf\"}', '2026-01-24', 3, 'ยกเลิกใช้', 'IsOJo84cwE4IwChECY_3rF', '2024-01-25 10:10:57', '2024-01-26 09:49:49', 3, 3),
(131, 'PS2401-014', 'Rice Vinegar', 'WIC-327/WID-189/WID-210 Or. Rice Vinegar', 2, 'WIC-327/WID-189/WID-210 Or. Rice Vinegar', 1, '2024-01-26', '', '{\"62ad3d386a709cdf5b4344a8265796ed.pdf\":\"WIC-327,WID-189,WID-210 Or. Rice Vinegar.pdf\"}', '2026-01-26', 3, 'ยกเลิกใช้', 'JCaYQUVHH9NJEpgigUWYcL', '2024-01-26 09:48:54', '2024-07-01 09:26:01', 3, 3),
(132, 'PS2401-015', 'Dark Soy Sauce', 'WID-114/CPRAM Dark Soy Sauce Formular 2 For CP', 1, 'WID-114/CPRAM Dark Soy Sauce Formular 2 For CP', 1, '2024-01-26', '', '{\"3eac914281dcb28524a08ae67cc47245.pdf\":\"Spec. Sheet - Dark Soy Sauce Formular 2 For CP, CPRAM.pdf\"}', '2026-01-26', 1, 'ใช้งาน', '1DP3iGVXZtvAckh6YNQA3e', '2024-01-31 13:38:30', NULL, 3, 3),
(133, 'PS2401-016', 'Chinese Soy Sauce', 'WID-112 Chinese Soy Sauce', 1, 'WID-112 Chinese Soy Sauce', 1, '2024-01-26', '', '{\"e0a2762e281dffacace1de0ad9da4025.pdf\":\"Spec. Sheet - Chinese Soy Sauce (2).pdf\"}', '2026-01-26', 1, 'ใช้งาน', '3GpDCKr-ebQxNfcltIlH7I', '2024-01-31 13:40:45', NULL, 3, 3),
(134, 'PS2401-017', 'Chinese Soy Sauce', 'WID-112/CPRAM Chinese Soy Sauce', 1, 'WID-112/CPRAM Chinese Soy Sauce', 1, '2024-01-26', '', '{\"993d8083a3e2d756ba59fc6cf54f2bc4.pdf\":\"Spec. Sheet - Chinese Soy Sauce, CPRAM.pdf\"}', '2026-01-26', 1, 'ใช้งาน', 'TX8ZfaTUPLqqk-pf1jUGTd', '2024-01-31 13:41:50', NULL, 3, 3),
(135, 'PS2402-001', 'Japanese Soy Sauce', 'WIC-309/01 Organic Shoyu Soy Sauce', 1, 'WIC-309/01 Organic Shoyu Soy Sauce', 0, '2024-02-09', '', '{\"00e369ef155949e8a5ed08a8a0493496.pdf\":\"Spec. Sheet - Or. Shoyu Soy Sauce.pdf\"}', '2026-02-09', 1, 'ใช้งาน', 'OmzJ7C8KMqMFnwh3--liXH', '2024-02-12 09:47:31', NULL, 3, 3),
(136, 'PS2403-001', 'Japanese Soy Sauce', 'WIC-Base Wheat Rev.00', 2, 'WIC-Base Wheat Rev.00', 0, '2024-03-01', '', '{\"3c196351adf1a85376662de7df5e09de.pdf\":\"WIC-Base Wheat Rev.00.pdf\"}', '2026-03-01', 1, 'ใช้งาน', 'NBxqc-7tj3Bjc5Om8xau28', '2024-03-04 13:45:13', '2024-08-03 10:56:23', 3, 3),
(137, 'PS2403-002', 'Sweet Soy Sauce', 'WID-248 Sweet Soy Sauce For Betagro', 1, 'WID-248 Sweet Soy Sauce For Betagro', 0, '2024-03-14', '', '{\"3e6d35f9b4d9eba9f49365ded0978268.pdf\":\"Spec. Sheet - Sweet Soy Sauce For Betagro.pdf\"}', '2026-03-14', 1, 'ใช้งาน', '0o-H4eHB9H7kj5e4Js9yiC', '2024-03-28 16:44:41', NULL, 3, 3),
(138, 'PS2404-001', 'Miso', 'WID-168 Or. Unpasteurized Miso', 2, 'WID-168 Or. Unpasteurized Miso', 2, '2024-04-18', '', '{\"485a35bb0ad1ffffda42365a25bf72d3.pdf\":\"WID-168 Organic Unpas. Miso (New).pdf\"}', '2026-04-18', 1, 'ใช้งาน', 'ihKRI6Rs819CokTp6VpCPs', '2024-04-23 09:47:10', '2024-04-23 09:48:00', 3, 3),
(139, 'PS2404-002', 'Miso', 'WID-151/2 Miso', 2, 'WID-151/2 Miso', 0, '2024-04-18', '', '{\"fc837a2399d9c9ee6406163a60085c9d.pdf\":\"WID-151.2 Miso.pdf\"}', '2026-04-18', 1, 'ใช้งาน', 'pHCDnk6c8jEZYUIgcylpeo', '2024-04-23 09:57:43', NULL, 3, 3),
(140, 'PS2404-003', 'Japanese Soy Sauce', 'WIC-313 Plus Iodine - Regular Soy Sauce Plus Iodine', 1, 'WIC-313 Plus Iodine - Regular Soy Sauce Plus Iodine', 0, '2024-04-11', '', '{\"0a9c52eb5a95d031efebe8bf57e22964.pdf\":\"Spec. Sheet - Regular Soy Sauce Plus Iodine.pdf\"}', '2026-04-11', 1, 'ใช้งาน', '7l_DSzrycttobP3BoGEmAT', '2024-04-23 10:04:10', NULL, 3, 3),
(141, 'PS2404-004', 'Japanese Soy Sauce', 'WIC-304 Plus Iodine - Standard Soy Sauce Plus Iodine', 1, 'WIC-304 Plus Iodine - Standard Soy Sauce Plus Iodine', 0, '2024-04-11', '', '{\"aef319b39ea3de4d434561d5c72acb22.pdf\":\"Spec. Sheet - Standard Soy Sauce Plus Iodine.pdf\"}', '2026-04-11', 1, 'ใช้งาน', 'OFIbQLRBFsVb2tKesdJzHf', '2024-04-23 10:05:40', NULL, 3, 3),
(142, 'PS2404-005', 'Japanese Low Sauce', 'WIC-337 (May Export) - Organic Less Salt Soy Sauce', 2, 'WIC-337 (May Export) - Organic Less Salt Soy Sauce', 0, '2024-04-24', '', '{\"08cb30d5182e4338a4a3106a2671514a.pdf\":\"WIC-337 (May Export) - Or. Less Salt Soy Sauce.pdf\"}', '2026-04-24', 1, 'ใช้งาน', '237tPyV4jdkyEke1hVcUua', '2024-04-25 09:18:14', NULL, 3, 3),
(143, 'PS2405-001', 'Dark Soy Sauce', 'WID-103 Premium Dark Soy Sauce For M&S 51', 1, 'WID-103 Premium Dark Soy Sauce For M&S 51', 1, '2024-05-07', '', '{\"8132504945158010df0f84a1f1c9b359.pdf\":\"Spec. Sheet - Premium Dark M&S 51.pdf\"}', '2026-05-07', 1, 'ใช้งาน', 'i-wfKDTNmv5-9euhPy-vZd', '2024-05-14 15:40:05', NULL, 3, 3),
(144, 'PS2405-002', 'Rice Vinegar', 'WID-177 Or. Rice Vinegar (Clear Style)', 1, 'WID-177 Or. Rice Vinegar (Clear Style)', 0, '2024-05-08', '', '{\"0c95195f7c7627cf0cfa8865819c6922.pdf\":\"Spec. Sheet - Or. Rice Vinegar (Clear Style).pdf\"}', '2026-05-08', 1, 'ใช้งาน', 'gvv9c0B4rUW2_SgoZXbUho', '2024-05-14 15:45:29', NULL, 3, 3),
(145, 'PS2405-003', 'Seasoning Ketjap', 'WID-227 Or. Ketjap Manis Sauce', 1, 'WID-227 Or. Ketjap Manis Sauce', 1, '2024-05-13', '', '{\"1c0bb793d7578ed9fe37e149a5f92482.pdf\":\"Spec. Sheet - Or. Ketjap Manis Sauce Rev.01.pdf\"}', '2026-05-13', 1, 'ใช้งาน', 'e7dhuFbCm5im1y4wQWEGNd', '2024-05-15 10:42:15', NULL, 3, 3),
(146, 'PS2405-004', 'Japanese Soy Sauce', 'WIC-338 Johin Gluten free Soy Sauce No.1', 1, 'WIC-338 Johin Gluten free Soy Sauce No.1', 0, '2024-05-15', '', '{\"089b9b3db4b91d993f3c27680b3b96e5.pdf\":\"Spec. Sheet - Johin Gluten free Soy Sauce No.1.pdf\"}', '2026-05-15', 1, 'ใช้งาน', 'YZwqeuQJTv0-XD0PUbafyF', '2024-05-15 10:44:40', NULL, 3, 3),
(147, 'PS2405-005', 'Rice Vinegar', 'WID-189 Or. FT. Rice Vinegar', 1, 'WID-189 Or. FT. Rice Vinegar', 1, '2024-05-13', '', '{\"745fa3c6636d67372d815f9a6354e765.pdf\":\"Spec. Sheet - FT. Or. Rice Vinegar Rev.01.pdf\"}', '2026-05-13', 1, 'ใช้งาน', 'jSljI4qvStQiJ60nuRRrto', '2024-05-15 10:48:09', NULL, 3, 3),
(148, 'PS2405-006', 'Seasoning Soy Sauce', 'WID-245 Or. Pad Thai Sauce', 1, 'WID-245 Or. Pad Thai Sauce', 1, '2024-05-13', '', '{\"167b4ba41b213be423a2b12634f436be.pdf\":\"Spec. Sheet - Or. Pad Thai Sauce Rev.01.pdf\"}', '2026-05-13', 1, 'ใช้งาน', 'qGU5PlMaWH_HhhV183T4ql', '2024-05-15 10:50:09', NULL, 3, 3);
INSERT INTO `products` (`id`, `numbers`, `title`, `description`, `category`, `product_name`, `revision`, `reviesed_date`, `product_iso`, `docs`, `expiration_date`, `status`, `status_details`, `ref`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(149, 'PS2405-007', 'Seasoning Ketjap', 'WID-186 Or. FT. Ketjap Manis Sauce', 1, 'WID-186 Or. FT. Ketjap Manis Sauce', 1, '2024-05-13', '', '{\"ca7241c8aa662d616d39122061a47988.pdf\":\"Spec. Sheet - Or. FT. Ketjap Manis Sauce Rev.01.pdf\"}', '2026-05-13', 1, 'ใช้งาน', 'qLf5FYd0UV2F7LOT7fD04e', '2024-05-15 10:52:32', NULL, 3, 3),
(150, 'PS2406-001', 'Japanese Gluten Free', 'WIC-314 Gluten Free (Rice) Soy Sauce', 1, 'WIC-314 Gluten Free (Rice) Soy Sauce', 2, '2024-05-27', '', '{\"ab6a6b6a6747be9ed47f2e993b9b4563.pdf\":\"Spec. Sheet - Gluten Free (Rice) Soy Sauce Rev.02.pdf\"}', '2026-05-27', 1, 'ใช้งาน', 'M-NdM0FlDPF-kRzdabxQcI', '2024-06-13 15:09:01', '2024-08-16 08:54:49', 3, 3),
(151, 'PS2406-002', 'Miso', 'WID-234 Pasteurized Miso', 1, 'WID-234 Pasteurized Miso', 2, '2024-06-12', '', '{\"ba5f67345129a0ee24c52e371c13553a.pdf\":\"Spec. Sheet - Pasteurized Miso Rev.02.pdf\"}', '2026-06-12', 1, 'ใช้งาน', 'VF3IITdPG7hcoJIWNQOuKY', '2024-06-13 15:12:11', NULL, 3, 3),
(152, 'PS2406-003', 'Japanese Soy Sauce', 'WIC-317 Standard Soy Sauce No.2', 1, 'WIC-317 Standard Soy Sauce No.2', 2, '2024-05-27', '', '{\"b14f952b919a68aedd0b4d235b939072.pdf\":\"Spec. Sheet - Standard Soy Sauce No.2 Rev.02.pdf\"}', '2026-05-27', 1, 'ใช้งาน', 'fNE5wBL-_MScYJ2GikNnYG', '2024-06-13 15:33:34', NULL, 3, 3),
(153, 'PS2406-004', 'Chinese Soy Sauce', 'WID-184 Chinese Soy Sauce (Sugar) For GN Food', 1, 'WID-184 Chinese Soy Sauce (Sugar) For GN Food', 1, '2024-06-15', '', '{\"dbe51af94f606bfb075d6e1edfa5abd2.pdf\":\"Spec. Sheet - Chinese Soy Sauce (Sugar) For GN Food Rev.01.pdf\"}', '2026-06-15', 1, 'ใช้งาน', '0B48_rRpY8YdzCUHLEFyJU', '2024-06-17 14:38:53', NULL, 3, 3),
(154, 'PS2406-005', 'Japanese Soy Sauce', 'WIC-301 Nutri Premium Soy Sauce', 3, 'WIC-301 Nutri Premium Soy Sauce', 0, '2024-06-18', '', '{\"76a8c08c510994286003bcbd6297d595.pdf\":\"WIC-301Nutri Premium Soy Sauce.pdf\"}', '2034-06-18', 1, 'ใช้งาน', 'ou_l0gRRrZfD3LDhnfAH2L', '2024-06-18 10:44:55', '2024-06-18 11:44:27', 3, 3),
(155, 'PS2406-006', 'Japanese Soy Sauce', 'WIC-305 Nutri Light Color Soy Sauce', 3, 'WIC-305 Nutri Light Color Soy Sauce', 0, '2024-06-18', '', '{\"a06d12bb6a79c4041c8c1af15a43dd43.pdf\":\"WIC-305 nutri light color.pdf\"}', '2034-06-18', 1, 'ใช้งาน', 'WnQU1yoXDSAquwaSxBzfZc', '2024-06-18 10:50:45', '2024-06-18 11:45:02', 3, 3),
(156, 'PS2406-007', 'Japanese Soy Sauce', 'WIC-306 Nutri Rich Soy Sauce', 3, 'WIC-306 Nutri Rich Soy Sauce', 0, '2024-06-18', '', '{\"09cd7c49ad29ed053600d919e06113e5.pdf\":\"WIC-306 nutri rich soy sauce.pdf\"}', '2034-06-18', 1, 'ใช้งาน', 'jlNzCslvqg1wmT1gM9SE_9', '2024-06-18 10:52:59', '2024-06-18 11:45:32', 3, 3),
(157, 'PS2406-008', 'Japanese Tamari', 'WIC-308 Nutri Tamari Soy Sauce', 3, 'WIC-308 Nutri Tamari Soy Sauce', 0, '2024-06-18', '', '{\"5296b4dd4b22986d21e9ad3554e2def4.pdf\":\"WIC-308 nutri Tamari Soy Sauce.pdf\"}', '2034-06-18', 1, 'ใช้งาน', 'jnlQnpBEX5uXTezqwsfsS0', '2024-06-18 11:13:14', '2024-06-18 11:46:04', 3, 3),
(158, 'PS2406-009', 'Japanese Soy Sauce', 'WIC-309 Nutri Organic FT. Soy Sauce', 3, 'WIC-309 Nutri Organic FT. Soy Sauce', 0, '2024-06-18', '', '{\"7543e60a218f4380dcc3b1c8ab3ab103.pdf\":\"WIC-309Nutri Organic FT Soy Sauce.pdf\"}', '2034-06-18', 1, 'ใช้งาน', 'bOkPK4QnuU1h6K2nBzz2X7', '2024-06-18 11:15:47', '2024-06-18 11:46:57', 3, 3),
(159, 'PS2406-010', 'Japanese Low Sauce', 'WIC-311 Nutri Less Salt Soy Sauce', 3, 'WIC-311 Nutri Less Salt Soy Sauce', 0, '2024-06-18', '', '{\"f13db715693141d9bf8216d35e3902b7.pdf\":\"WIC-311Nutri less salt.pdf\"}', '2034-06-18', 1, 'ใช้งาน', 'nRil5gtoYIn3B4wq_nrW36', '2024-06-18 11:23:35', '2024-06-18 11:47:36', 3, 3),
(160, 'PS2406-011', 'Japanese Soy Sauce', 'WIC-313 Nutri Regular Soy Sauce', 3, 'WIC-313 Nutri Regular Soy Sauce', 0, '2024-06-18', '', '{\"fd1e6a3264f68ef90cfabe3fd2c5f03d.pdf\":\"WIC-313 nutri regular soy sauce.pdf\"}', '2034-06-18', 1, 'ใช้งาน', 'KHB4Vk8D_D73eUp-sMDXak', '2024-06-18 11:43:34', '2024-06-18 11:43:52', 3, 3),
(161, 'PS2406-012', 'Japanese Gluten Free', 'WIC-314 Nutri Gluten Free Rice Soy Sauce', 3, 'WIC-314 Nutri Gluten Free Rice Soy Sauce', 0, '2024-06-18', '', '{\"28811af6799a24a4e1fd43f1824afd76.pdf\":\"WIC-314 nutri gluten free rice soy sauce.pdf\"}', '2034-06-18', 1, 'ใช้งาน', 'FlV6nex_jsvgd7kvXsvZiW', '2024-06-18 16:13:11', '2024-06-18 16:45:51', 3, 3),
(162, 'PS2406-013', 'Japanese Gluten Free', 'WIC-314 Nutri Fairtrade Gluten Free Soy Sauce', 3, 'WIC-314 Nutri Fairtrade Gluten Free Soy Sauce', 0, '2024-06-18', '', '{\"7b0bfa2c8c08a88618e0c13dc9606fd5.pdf\":\"WIC-314Nutrition Fairtrade  Gluten free.pdf\"}', '2034-06-18', 1, 'ใช้งาน', 'pbB1jyBw6qsLMx7QQgamdU', '2024-06-18 16:32:03', NULL, 3, 3),
(163, 'PS2406-014', 'Japanese Soy Sauce', 'WIC-317 Nutri Standard Soy Sauce No.2', 3, 'WIC-317 Nutri Standard Soy Sauce No.2', 0, '2024-06-18', '', '{\"992336f1078748af923db2084ea16329.pdf\":\"WIC-317 Nutri Standard  Soy SauceNo.2.pdf\"}', '2034-06-18', 1, 'ใช้งาน', 'UtnnFHKICgr8lSdWm8cSkh', '2024-06-18 16:41:45', NULL, 3, 3),
(164, 'PS2406-015', 'Japanese Tamari', 'WIC-324 Nutri FT. Organic Tamari Soy Sauce', 3, 'WIC-324 Nutri FT. Organic Tamari Soy Sauce', 0, '2024-06-18', '', '{\"d0ae0d29fe411adfaf98b17efa731e22.pdf\":\"WIC-324 nutri FT Organic Tamari.pdf\"}', '2034-06-18', 1, 'ใช้งาน', 'mWCH9ZAPAh0Uki-WXHwnYo', '2024-06-19 14:39:37', NULL, 3, 3),
(165, 'PS2406-016', 'Japanese Gluten Free', 'WIC-331 Nutri Less Sodium Gluten Free Soy Sauce', 3, 'WIC-331 Nutri Less Sodium Gluten Free Soy Sauce', 0, '2024-06-18', '', '{\"c22b602cb77911c10abc518329d600ce.pdf\":\"WIC-331 nutri less sodium gluten free.pdf\"}', '2034-06-18', 1, 'ใช้งาน', 'R0KZezmlhO3aI1TL0qgoHH', '2024-06-19 14:56:24', '2024-06-19 14:56:39', 3, 3),
(166, 'PS2406-017', 'Japanese Low Sauce', 'WIC-333 Nutri Less Salt No.1', 3, 'WIC-333 Nutri Less Salt No.1', 0, '2024-06-18', '', '{\"29285c967e0fc001840eb3321b05a993.pdf\":\"WIC-333 nutri  less salt no.1.pdf\"}', '2034-06-18', 1, 'ใช้งาน', 'Mc_JVYRwpmr8hkiTn_KVqL', '2024-06-19 14:58:40', NULL, 3, 3),
(167, 'PS2406-018', 'Japanese Low Sauce', 'WIC-337 Nutri Organic Less Salt Soy Sauce', 3, 'WIC-337 Nutri Organic Less Salt Soy Sauce', 0, '2024-06-18', '', '{\"8f5fac8aa46e69f320d2f8d78039b861.pdf\":\"WIC-337 Nutri Organic less Salt.pdf\"}', '2034-06-18', 1, 'ใช้งาน', 'sMACVEeQD01sabot04t8Ji', '2024-06-19 15:03:37', NULL, 3, 3),
(168, 'PS2406-019', 'Japanese Low Sauce', 'WIC-344 Nutri Organic Reduced Salt Soy Sauce 1% Alcohol', 3, 'WIC-344 Nutri Organic Reduced Salt Soy Sauce 1% Alcohol', 0, '2024-06-18', '', '{\"6f532e91d285249213e22d69fe15c250.pdf\":\"WIC-344 nutri organic redu 1% alcohol.pdf\"}', '2034-06-18', 1, 'ใช้งาน', 'Njg_IatPIPCdUsno-9GBK1', '2024-06-19 15:05:52', NULL, 3, 3),
(169, 'PS2406-020', 'Seasoning Teriyaki', 'WID-122 Nutri Premium Teriyaki Sauce', 3, 'WID-122 Nutri Premium Teriyaki Sauce', 0, '2024-06-18', '', '{\"90c3b0044302055592d9c94acbcf1a9d.pdf\":\"WID-122 nutri premium teriyaki sauce.pdf\"}', '2034-06-18', 1, 'ใช้งาน', 'dDsAZRi4J6fntcqWoNV7ze', '2024-06-19 15:32:13', NULL, 3, 3),
(170, 'PS2406-021', 'Hoi Sin Sauce', 'WID-128 Nutri Hoi Sin Sauce', 3, 'WID-128 Nutri Hoi Sin Sauce', 0, '2024-06-18', '', '{\"ecc39166dabfd375049e650280777675.pdf\":\"WID-128Nutri Hoi sin sauce.pdf\"}', '2034-06-18', 1, 'ใช้งาน', 'Jx4v59n5MONbXzPJ8QWWBI', '2024-06-19 15:39:40', '2024-06-19 15:40:39', 3, 3),
(171, 'PS2406-022', 'Dark Soy Sauce', 'WID-187 Dark Soy Sauce (Gluten Free)', 2, 'WID-187 Dark Soy Sauce (Gluten Free)', 0, '2024-06-22', '', '{\"cac46842bf8a63ae9d9d27a6751a09f2.pdf\":\"WID-187 Dark Soy Sauce Gluten free.pdf\"}', '2026-06-22', 1, 'ใช้งาน', '3F6JDPA3CUEhtet9V8rsXC', '2024-06-25 09:47:40', NULL, 3, 3),
(172, 'PS2407-001', 'Rice Vinegar', 'WIC-327/WID-189/WID-210/WID-177 Or. Rice Vinegar', 2, 'WIC-327/WID-189/WID-210/WID-177 Or. Rice Vinegar', 2, '2024-06-10', '', '{\"28b14bcace20207754b743033ca69456.pdf\":\"WIC-327,WID-189,WID-210,WID-177 Organic Rice Vinegar.pdf\"}', '2026-06-10', 3, 'ยกเลิกใช้', 'MohfAbxr2I2ptTk69Ztkph', '2024-07-01 09:25:11', '2024-08-16 13:21:17', 3, 3),
(173, 'PS2407-002', 'Seasoning Teriyaki', 'WID-181 Organic Teriyaki Sauce', 2, 'WID-181 Organic Teriyaki Sauce', 0, '2024-07-01', '', '{\"70a96c948134710141d589c829d12cd0.pdf\":\"WID-181 Organic Teriyaki Sauce.pdf\"}', '2026-07-01', 1, 'ใช้งาน', 'pRuZ3sx23DCeldwvys4Xul', '2024-07-02 16:29:26', NULL, 3, 3),
(174, 'PS2407-003', 'Dark Soy Sauce', 'WID-183 Organic Dark Soy Sauce', 2, 'WID-183 Organic Dark Soy Sauce', 0, '2024-07-01', '', '{\"30db972e64c5fccfb3335b310b430dfd.pdf\":\"WID-183 Organic Dark Soy Sauce.pdf\"}', '2026-07-01', 1, 'ใช้งาน', 'DR9Y8NPvWG68xZ3hdfVHBf', '2024-07-02 16:34:34', '2024-07-02 16:35:07', 3, 3),
(175, 'PS2407-004', 'Rice Vinegar', 'WID-182 Organic Black Rice Vinegar', 2, 'WID-182 Organic Black Rice Vinegar', 0, '2024-07-01', '', '{\"bae912834f69b452d1b353e36ff63113.pdf\":\"WID-182 Organic Black Rice Vinegar Sauce.pdf\"}', '2026-07-01', 1, 'ใช้งาน', 'I3JPfLeH7bOYTuMvjtSloq', '2024-07-02 16:36:36', NULL, 3, 3),
(176, 'PS2407-005', 'Chinese Soy Sauce', 'WID-188 Organic Chinese Soy Sauce', 2, 'WID-188 Organic Chinese Soy Sauce', 0, '2024-07-01', '', '{\"0301b5355f4961ec2e0a2062c6ded67f.pdf\":\"WID-188 Organic Chinese Soy Sauce.pdf\"}', '2026-07-01', 1, 'ใช้งาน', 'dP4y_Pwpw2LEKTe87HqU0J', '2024-07-02 16:38:06', NULL, 3, 3),
(177, 'PS2407-006', 'Japanese Other Sauce', 'WIC-309/WIC-336/WIC-341 Base Organic Rice', 2, 'WIC-309/WIC-336/WIC-341 Base Organic Rice', 0, '2024-07-01', '', '{\"d4a473794813476c5bc8049307a017b3.pdf\":\"WIC-309, WIC-336, WIC-341 Soy Sauce Base (Organic Rice).pdf\"}', '2026-07-01', 1, 'ใช้งาน', 'g8WSO6RBGJFwpsjABZZpHt', '2024-07-02 16:41:07', NULL, 3, 3),
(178, 'PS2407-007', 'Miso', 'WID-249 Organic Miso', 1, 'WID-249 Organic Miso', 0, '2024-07-03', '', '{\"89f5d4bbc90fb54630873bfef1e23cfb.pdf\":\"Spec. Sheet - Organic Miso.pdf\"}', '2026-07-03', 1, 'ใช้งาน', 'a4cbJbBDgDgbaNTsF25_M_', '2024-07-08 13:42:02', NULL, 3, 3),
(179, 'PS2407-008', 'Japanese Soy Sauce', 'WIC-341 Organic USA Soy Sauce', 1, 'WIC-341 Organic USA Soy Sauce', 0, '2024-06-29', '', '{\"6c60ef06a05a568f723fb26173d8a8e1.pdf\":\"Spec. Sheet - Organic USA Soy Sauce.pdf\"}', '2026-06-29', 1, 'ใช้งาน', 'fIAHB-_d7oZHmKnUoWISPQ', '2024-07-08 13:43:48', NULL, 3, 3),
(180, 'PS2407-009', 'Japanese Soy Sauce', 'WIC-301 Premium Soy Sauce', 4, 'WIC-301 Premium Soy Sauce', 0, '2024-07-02', '', '{\"05205fd76b4a2d4625be69442a5e5588.pdf\":\"WIC-301 ซอสถั่วเหลือง พรีเมียม ตรา โจฮิน 047.pdf\"}', '2034-07-02', 1, 'ใช้งาน', 'XLlXj1ahPqeCbhwZpC-muX', '2024-07-08 14:50:50', NULL, 3, 3),
(181, 'PS2407-010', 'Japanese Soy Sauce', 'WIC-309 Organic Soy Sauce (PB Farm)', 4, 'WIC-309 Organic Soy Sauce (PB Farm)', 1, '2024-07-02', '', '{\"2d24d72da4c03b8f1e12619484d4b4a7.pdf\":\"WIC-309 Pb FARM Organic Soy Sauce 099.pdf\"}', '2034-07-02', 1, 'ใช้งาน', '-KyEKQ68XVw8vh4gas-HVO', '2024-07-08 14:53:04', NULL, 3, 3),
(182, 'PS2407-011', 'Japanese Low Sauce', 'WIC-311 Less Salt Soy Sauce (PB Farm)', 4, 'WIC-311 Less Salt Soy Sauce (PB Farm)', 0, '2024-07-02', '', '{\"eb17cb3034e0670ff8bc21c1430e95f6.pdf\":\"WIC-311 Less Salt Soy Sauce PB Farm Brand 026.pdf\"}', '2034-07-02', 1, 'ใช้งาน', 'O2iUoNHdbRi7i-f8BqvWlK', '2024-07-08 15:21:52', NULL, 3, 3),
(183, 'PS2407-012', 'Japanese Soy Sauce', 'WIC-313 Regular Soy Sauce', 4, 'WIC-313 Regular Soy Sauce', 1, '2024-07-02', '', '{\"8c6400d43c9ba3eb348b95d1165a1ffa.pdf\":\"WIC-313 Johin Regular Soy Sauce 065.pdf\"}', '2034-07-02', 1, 'ใช้งาน', '5RU7SG-sYpHPgT-iHevTCO', '2024-07-08 15:24:02', NULL, 3, 3),
(184, 'PS2407-013', 'Japanese Gluten Free', 'WIC-314 Gluten Free Soy Sauce', 4, 'WIC-314 Gluten Free Soy Sauce', 0, '2024-07-02', '', '{\"da7d49a549b474b984f195c5a45648fd.pdf\":\"WIC-314 Johin Gluten Free Soy Saue 082.pdf\"}', '2034-07-02', 1, 'ใช้งาน', 'fPXwJfoAxd22TmxmLNxiVu', '2024-07-08 15:30:19', '2024-07-08 15:49:31', 3, 3),
(185, 'PS2407-014', 'Rice Vinegar', 'WIC-327 Organic Rice Vinegar (Asian Organics Brand)', 4, 'WIC-327 Organic Rice Vinegar (Asian Organics Brand)', 0, '2024-07-02', '', '{\"2cb0fe197505a0188d79cc8cbaeffda2.pdf\":\"WIC-327 Organic Rice Vinegar Asian Organics Brand 006.pdf\"}', '2034-07-02', 1, 'ใช้งาน', 'BuCC1El8ub8jZ7f4rNnVgg', '2024-07-08 15:33:59', NULL, 3, 3),
(186, 'PS2407-015', 'Japanese Tamari', 'WIC-336 Organic Tamari Soy Sauce (PF Farm)', 4, 'WIC-336 Organic Tamari Soy Sauce (PF Farm)', 0, '2024-07-02', '', '{\"d017e27ffa80b8b1487601febca3ae5a.pdf\":\"WIC-336 Organic Tamari Soy Sauce PB Farm Brand 017.pdf\"}', '2034-07-02', 1, 'ใช้งาน', 'e4ao93eBT6JUwvLmIZH73g', '2024-07-08 15:38:42', NULL, 3, 3),
(187, 'PS2407-016', 'Japanese Low Sauce', 'WIC-337 Organic Less Salt Soy Sauce (PB Farm)', 4, 'WIC-337 Organic Less Salt Soy Sauce (PB Farm)', 0, '2024-07-02', '', '{\"a3c34a83c4cd852e91b312c92473e298.pdf\":\"WIC-337 Organic Less Salt Soy Sauce PB Farm Brand 020.pdf\"}', '2034-07-02', 1, 'ใช้งาน', '7raQPNPlHqZvH4wAhdbHC_', '2024-07-08 15:47:50', NULL, 3, 3),
(188, 'PS2407-017', 'Hoi Sin Sauce', 'WID-133 Premium Hoi Sin Sauce', 4, 'WID-133 Premium Hoi Sin Sauce', 0, '2024-07-02', '', '{\"9cc6380f1b27c5ee32da4afae0726e9b.pdf\":\"WID-133 JOHIN PREMIUM HOISIN SAUCE 098.pdf\"}', '2034-07-02', 1, 'ใช้งาน', '9fSC1eLh-vyOJDxjy3_cFa', '2024-07-08 15:50:49', NULL, 3, 3),
(189, 'PS2407-018', 'Rice Vinegar', 'WID-177 Organic Rice Vinegar (PB Farm)', 4, 'WID-177 Organic Rice Vinegar (PB Farm)', 0, '2024-07-02', '', '{\"2cc0bd953e61c5255753bbead02766ff.pdf\":\"WID-177 Pb FARM Organic Rice Vinegar 101.pdf\"}', '2034-07-02', 1, 'ใช้งาน', '0LMD-nuCa9Ziv1GaWppJGx', '2024-07-08 15:52:53', NULL, 3, 3),
(190, 'PS2407-019', 'Seasoning Teriyaki', 'WID-181 Organic Teriyaki Sauce (PB Farm)', 4, 'WID-181 Organic Teriyaki Sauce (PB Farm)', 0, '2024-07-02', '', '{\"12fe7125af27656c5a7fac7e0376a055.pdf\":\"WID-181 Organic Teriyaki Sauce PB Farm Brand 016.pdf\"}', '2034-07-02', 1, 'ใช้งาน', 'IG6z9ln-OP2Q3Flkl5psJZ', '2024-07-08 15:55:07', NULL, 3, 3),
(191, 'PS2407-020', 'Seasoning Teriyaki', 'WID-181 Organic Teriyaki Sauce (Asian Organics Brand)', 4, 'WID-181 Organic Teriyaki Sauce (Asian Organics Brand)', 0, '2024-07-02', '', '{\"8db6d0b15ee516024f717f5121157e4d.pdf\":\"WID-181 Organic Teriyaki Sauce Asian Organics Brand 023.pdf\"}', '2034-07-02', 1, 'ใช้งาน', 'cXCcQNAPGKkFWVih6p-DTd', '2024-07-08 15:56:56', NULL, 3, 3),
(192, 'PS2407-021', 'Rice Vinegar', 'WID-182 Organic Black Rice Vinegar Sauce (PB Farm)', 4, 'WID-182 Organic Black Rice Vinegar Sauce (PB Farm)', 0, '2024-07-02', '', '{\"e1acbcd43b3e8049235842a1b988ba0e.pdf\":\"WID-182 Organic Black Rice Vinegar Sauce PB Farm Brand 022.pdf\"}', '2034-07-02', 1, 'ใช้งาน', 'mya-F0oim-MSkUhQ-ky0hY', '2024-07-08 15:58:58', NULL, 3, 3),
(193, 'PS2407-022', 'Dark Soy Sauce', 'WID-183 Organic Dark Soy Sauce (Asian Organics Brand)', 4, 'WID-183 Organic Dark Soy Sauce (Asian Organics Brand)', 0, '2024-07-02', '', '{\"236a5d08018d875533470da853aad47e.pdf\":\"WID-183 Organic Dark Soy Sauce Asian Orgaics Brand 021.pdf\"}', '2034-07-02', 1, 'ใช้งาน', 'Gz6LYA1-BAtZJAAF6Mas1X', '2024-07-08 16:01:28', NULL, 3, 3),
(194, 'PS2407-023', 'Dark Soy Sauce', 'WID-183 Organic Dark Soy Sauce (PB Farm)', 4, 'WID-183 Organic Dark Soy Sauce (PB Farm)', 0, '2024-07-02', '', '{\"1d4d120aa99c20aaf9fd6392f7cc08eb.pdf\":\"WID-183 Organic Dark Soy Sauce PB Farm Brand 018.pdf\"}', '2034-07-02', 1, 'ใช้งาน', 'bV2Z6UW7Bcy3f8Ismw6mt2', '2024-07-08 16:07:00', NULL, 3, 3),
(195, 'PS2407-024', 'Sweet Soy Sauce', 'WID-190 Sweet Soy Sauce (PB Farm)', 4, 'WID-190 Sweet Soy Sauce (PB Farm)', 0, '2024-07-02', '', '{\"fc7f59db98c0280f0cb1e9306b2482fa.pdf\":\"WID-190 Sweet Soy Sauce Pb Farm Brand 003.pdf\"}', '2034-07-02', 1, 'ใช้งาน', 'dC8JKSwf_Vjno3hngX4xAs', '2024-07-08 16:08:41', NULL, 3, 3),
(196, 'PS2407-025', 'Japanese Tamari', 'WID-229 Tamari Soy Sauce No.1  (สำหรับลูกค้าทั่วไป)', 1, 'WID-229 Tamari Soy Sauce No.1  (สำหรับลูกค้าทั่วไป)', 0, '2024-07-12', '', '{\"be4eb0d7dec138180479cb316706de33.pdf\":\"Spec. Sheet - Tamari Soy Sauce No.1.pdf\"}', '2026-07-12', 1, 'ใช้งาน', 'uspFt5T3KHK6tbqeOfyJgJ', '2024-07-13 14:11:28', NULL, 3, 3),
(197, 'PS2407-026', 'Seasoning Soy Sauce', 'WID-245 Organic Pad Thai Sauce', 2, 'WID-245 Organic Pad Thai Sauce', 0, '2024-07-24', '', '{\"936b92fb08401f3c7ac3f7cb5faf60e3.pdf\":\"WID-245  Organic Pad Thai Sauce.pdf\"}', '2026-07-24', 3, 'ยกเลิกใช้', 'jGyys4ZHIyrx-5dsbrdXPz', '2024-07-25 10:37:48', '2025-01-08 13:19:00', 3, 3),
(198, 'PS2407-027', 'Seasoning Soy Sauce', 'WID-244 Organic Sweet and Sour Sauce', 2, 'WID-244 Organic Sweet and Sour Sauce', 0, '2024-07-24', '', '{\"86d2d5544d682a54d92e654051c25c0b.pdf\":\"WID-244  Organic Sweet & Sour Sauce.pdf\"}', '2026-07-24', 1, 'ใช้งาน', 'HNh6pfMgAgFJMnsWt4X9cR', '2024-07-25 10:39:14', NULL, 3, 3),
(199, 'PS2407-028', 'Other Sauce', 'WID-240 Organic Sweet Chili Sauce', 2, 'WID-240 Organic Sweet Chili Sauce', 0, '2024-07-24', '', '{\"bcd760b98bfda8e5f45a96b979ede9f7.pdf\":\"WID-240  Organic Sweet Chili Sauce.pdf\"}', '2026-07-24', 1, 'ใช้งาน', 'iUD6mMwFZHrKwZW4phZ318', '2024-07-25 10:41:23', NULL, 3, 3),
(200, 'PS2407-029', 'Other Sauce', 'WID-239 Organic Spring Roll Sauce', 2, 'WID-239 Organic Spring Roll Sauce', 0, '2024-07-24', '', '{\"085fe6fa5f9020e9e2c17c09f5607972.pdf\":\"WID-239  Organic spring roll Sauce.pdf\"}', '2026-07-24', 1, 'ใช้งาน', 'FY8IpoeI9QbrWETnVTJAqB', '2024-07-25 10:42:23', NULL, 3, 3),
(201, 'PS2408-001', 'Chinese Soy Sauce', 'WID-112 Chinese Sauce', 2, 'WID-112 Chinese Sauce', 0, '2024-08-01', '', '{\"ad291b9783293c4f4bfefba027be11aa.pdf\":\"WID-112 Chinese Sauce.pdf\"}', '2026-08-01', 1, 'ใช้งาน', 'gIJiMxiNndvP5omJ0vuOYz', '2024-08-03 11:15:48', NULL, 3, 3),
(202, 'PS2408-002', 'Hoi Sin Sauce', 'WID-128 Hoi Sin Sauce', 2, 'WID-128 Hoi Sin Sauce', 0, '2024-08-01', '', '{\"2f451b3eadbab0f0287410576e4fe02e.pdf\":\"WID-128 Hoi Sin Sauce.pdf\"}', '2026-08-01', 1, 'ใช้งาน', 'GCyPI98gI67WDJS9KryojN', '2024-08-03 11:17:17', NULL, 3, 3),
(203, 'PS2408-003', 'Dark Soy Sauce', 'WID-114 Dark Soy Sauce Formular 2 For CP', 2, 'WID-114 Dark Soy Sauce Formular 2 For CP', 0, '2024-08-01', '', '{\"f2482e2823b1b27bf1e29cdd1b140ee1.pdf\":\"WID-114 Dark Soy Sauce Formular 2 For CP.pdf\"}', '2026-08-01', 1, 'ใช้งาน', 'lt6RB3-IkcCd2eUr2Fn1vR', '2024-08-03 11:19:11', NULL, 3, 3),
(204, 'PS2408-004', 'Chinese Soy Sauce', 'WID-250 Chinese Less Salt Soy Sauce', 1, 'WID-250 Chinese Less Salt Soy Sauce', 1, '2024-08-08', '', '{\"bf35fcb475cbfae96974a39bdfebde2e.pdf\":\"Spec. Sheet - Chinese Less Salt Soy Sauce.pdf\"}', '2026-08-08', 3, 'ยกเลิกใช้', 'ZodnKg8nlVaK2CktoAeG7m', '2024-08-09 10:55:41', '2024-08-28 15:45:26', 3, 3),
(205, 'PS2408-005', 'Chinese Soy Sauce', 'WID-250 Chinese Less Salt Soy Sauce', 2, 'WID-250 Chinese Less Salt Soy Sauce', 0, '2024-08-08', '', '{\"4630bf7490cc92925280011f413c74c9.pdf\":\"WID-250 Chinese less salt Soy Sauce.pdf\"}', '2026-08-08', 3, 'ยกเลิกใช้', 'c-QZL_AKYFSWE_Wsjavv06', '2024-08-09 10:59:07', '2024-08-28 15:45:01', 3, 3),
(206, 'PS2408-006', 'Commission Regulation (EC) No.2023/915 of 25 April 2023', 'Commission Regulation (EC) No.2023/915 of 25 April 2023 อ้างอิง การตรวจ 3-MCPD', 9, 'การตรวจ 3-MCPD', 0, '2024-08-14', '', '{\"3015485668103b01f527386b3d4b94d3.pdf\":\"COMMISSION REGULATION (EC) No.2023.915 of 25 April 2023.pdf\"}', '2034-08-14', 1, 'ใช้งาน', 'O-eEgJHy2YMetaZ5R9nJ4-', '2024-08-14 16:08:08', NULL, 3, 3),
(207, 'PS2408-007', 'Japanese Soy Sauce', 'Label - Johin Standard Soy Sauce No.2', 10, 'Label - Johin Standard Soy Sauce No.2', 0, '2024-08-15', '', '{\"191a4e98234bf2de426c9a39706dab58.pdf\":\"แบบสิ่งพิมพ์ - Johin Standard Soy Sauce No.2.pdf\"}', '2029-08-15', 3, 'ยกเลิกใช้', 'HZM1OSwIuLqnMqlrZC6EMv', '2024-08-15 10:10:37', '2025-02-06 10:22:03', 3, 3),
(208, 'PS2408-008', 'Miso', 'Label - Or. FT. Pas. Genmai Miso 200g (La Compagnie du riz)', 10, 'Label - Or. FT. Pas. Genmai Miso 200g (La Compagnie du riz)', 0, '2024-08-15', '', '{\"086eb6b62e39c4e62110b085368a8a51.pdf\":\"01 #Miso Genmai 200g 210x42-HD.pdf\"}', '2029-08-15', 1, 'ใช้งาน', 'DPU2IPaDFu71OdU6KHbvQt', '2024-08-15 10:21:57', NULL, 3, 3),
(209, 'PS2408-009', 'Miso', 'Label - Or. FT. Pas. Shiro Miso 200g (La Compagnie du riz)', 10, 'Label - Or. FT. Pas. Shiro Miso 200g (La Compagnie du riz)', 0, '2024-08-15', '', '{\"9693cae9249fcdc4b46864d238a76b8e.pdf\":\"03 #Miso Shiro 200g 210x42-HD.pdf\"}', '2029-08-15', 1, 'ใช้งาน', '6oMJI6koSORuWfnJsxZ73h', '2024-08-15 10:23:13', NULL, 3, 3),
(210, 'PS2408-010', 'Japanese Soy Sauce', 'PLN-126  - Organic FT. Soy Sauce 200ml. - Netherland (Fairtrade Original)', 10, 'PLN-126  - Organic FT. Soy Sauce 200ml. - Netherland (Fairtrade Original)', 0, '2024-08-15', '8,11', '{\"9a78d6d1137cc753d4b6008230985926.pdf\":\"PLN-126 - Organic FT. (Netherland)  ลูกค้า Approved - Fairtrade Original.pdf\"}', '2029-08-15', 1, 'ใช้งาน', '0yfgRfYV9Jv6CD2b-0Z_rB', '2024-08-15 10:31:32', '2025-02-06 11:02:30', 3, 3),
(211, 'PS2408-011', 'Japanese Soy Sauce', 'PLN-127   - Organic FT. Soy Sauce - German (Fairtrade Original)', 10, 'PLN-127   - Organic FT. Soy Sauce - German (Fairtrade Original)', 0, '2024-08-15', '', '{\"d91c989da33a9109871f65c595894df6.pdf\":\"PLN-127 - Organic FT. (German)  ลูกค้า Approved - Fairtrade Original.pdf\"}', '2029-08-15', 1, 'ใช้งาน', 'K08QBcoc3OgazUCo2izLDj', '2024-08-15 10:32:31', '2025-02-06 11:07:19', 3, 3),
(212, 'PS2408-012', 'Miso', 'WID-224 Or. FT. Pas. Genmai Miso', 2, 'WID-224 Or. FT. Pas. Genmai Miso', 1, '2024-08-15', '', '{\"a6ec9709019764284f2645502ee8aa1c.pdf\":\"WID-224 Or. FT. Pas. Genmai Miso Rev.01.pdf\"}', '2026-08-15', 1, 'ใช้งาน', 'lpo-prBRmTh_JBgSo5YAE-', '2024-08-16 11:32:57', NULL, 3, 3),
(213, 'PS2408-013', 'Rice Vinegar', 'WID-150 Or. Mirin', 2, 'WID-150 Or. Mirin', 1, '2024-08-15', '', '{\"66ff4aa585f187a60ee6dc95161e8f77.pdf\":\"WID-150 Or. Mirin Rev.01.pdf\"}', '2026-08-15', 1, 'ใช้งาน', 'cL7dsRGU0v3IGEkcua71zg', '2024-08-16 11:35:27', NULL, 3, 3),
(214, 'PS2408-014', 'Japanese Soy Sauce', 'WIC-309 Organic Soy Sauce', 2, 'WIC-309 Organic Soy Sauce', 1, '2024-08-15', '', '{\"d2e1578ab1cb18303db1df23202b927c.pdf\":\"WIC-309 Organic Soy Sauce Rev.01.pdf\"}', '2026-08-15', 1, 'ใช้งาน', 'FKtjr5aNmqgurCiAhcFHPO', '2024-08-16 11:37:11', NULL, 3, 3),
(215, 'PS2408-015', 'Rice Vinegar', 'WIC-327/WID-189/WID-210/WID-177 Or. Rice Vinegar', 2, 'WIC-327/WID-189/WID-210/WID-177 Or. Rice Vinegar', 1, '2024-08-15', '', '{\"75a7a06ef659cba4d238731dba94a49e.pdf\":\"WIC-327,WID-189,WID-210,WID-177 Organic Rice Vinegar Rev.01.pdf\"}', '2026-08-15', 1, 'ใช้งาน', 'r5J1M-xwK37aXxN0nEhqye', '2024-08-16 13:20:52', NULL, 3, 3),
(216, 'PS2408-016', 'Rice Vinegar', 'WIC-400 Or. Alcohol', 2, 'WIC-400 Or. Alcohol', 0, '2024-08-16', '', '{\"983530a5a4d3ebb5532a00afe6d8b810.pdf\":\"WIC-400 Or. Alcohol.pdf\"}', '2026-08-16', 1, 'ใช้งาน', 'ZDdJRXTF2Q0ghsJErAne6p', '2024-08-16 17:09:20', NULL, 3, 3),
(217, 'PS2408-017', 'Other Sauce', 'WIC-600 Or. Coconut Aminos', 2, 'WIC-600 Or. Coconut Aminos', 0, '2024-08-16', '', '{\"9e288f33ada30d35aed5f39048a6d74a.pdf\":\"WIC-600 Or. Coconut Aminos.pdf\"}', '2026-08-16', 1, 'ใช้งาน', 'Gq2V1fpBecO-eC2eZZxKx6', '2024-08-16 17:11:16', NULL, 3, 3),
(218, 'PS2408-018', 'Rice Vinegar', 'WIC-122 / WIC-126 Organic Rice wine', 2, 'WIC-122 / WIC-126 Organic Rice wine', 0, '2024-08-20', '', '{\"c8de65cb17c37fda412036805dceeb63.pdf\":\"WIC-122, WIC-126 Organic Rice Wine.pdf\"}', '2026-08-20', 1, 'ใช้งาน', '6RDIYIhknuxqL0FANgpEfx', '2024-08-20 15:14:37', NULL, 3, 3),
(219, 'PS2408-019', 'Rice Vinegar', 'WID-238 Organic Mirin 5.5 %', 1, 'WID-238 Organic Mirin 5.5 %', 2, '2024-08-21', '', '{\"6cf5c87d6e623cae1ac4364b601833a1.pdf\":\"Spec. Sheet - Or. Mirin 5.5% Rev.02.pdf\",\"619ca3efdb8b21d11704aabd4a05a660.pdf\":\"Product Spec (Autour du Riz) - Or. Mirin 5.5% Rev.04.pdf\"}', '2026-08-21', 1, 'ใช้งาน', 'ebD2wp-LwTnVcCDwx6bgs2', '2024-08-21 14:09:33', '2024-12-23 15:50:31', 3, 3),
(220, 'PS2408-020', 'Seasoning Soy Sauce', 'WID-228 Fish Sauce Flavored Organic Soy Sauce', 2, 'WID-228 Fish Sauce Flavored Organic Soy Sauce', 0, '2024-08-22', '', '{\"a796aad73c92f6322e4072db73fc3f77.pdf\":\"WID-228 Fish Sauce Flavored Organic Soy Sauce.pdf\"}', '2026-08-22', 1, 'ใช้งาน', 'VaOFmCDtScuH1_FaoiiO9u', '2024-08-22 13:16:16', '2024-08-24 09:31:31', 3, 3),
(221, 'PS2408-021', 'Chinese Soy Sauce', 'WID-108 Extra Chinese Soy Sauce', 2, 'WID-108 Extra Chinese Soy Sauce', 0, '2024-08-22', '', '{\"cfedbc72906fdf5aac3ad15105641592.pdf\":\"WID-108 Extra Chinese Sauce.pdf\"}', '2026-08-22', 1, 'ใช้งาน', '2vTZvXbLpFFOfsqUTFCJvN', '2024-08-22 16:30:08', NULL, 3, 3),
(222, 'PS2408-022', 'Other Sauce', 'WID-xxx (Draft) Organic Sesame Salad Dressing Sauce', 2, 'WID-xxx (Draft) Organic Sesame Salad Dressing Sauce', 0, '2024-08-23', '', '{\"20782c082b93b0b49e066d7edb386ff2.pdf\":\"WID-xxx Rev.00 (Draft) Or. Sesame Salad Dressing Sauce.pdf\"}', '2026-08-23', 1, 'ใช้งาน', 'Fq3rMnuiiyA9WM-BMQ2cxg', '2024-08-24 09:40:14', NULL, 3, 3),
(223, 'PS2408-023', 'Other Sauce', 'WID-xxx (Draft) Organic Papaya Salad (Somtom) Sauce', 2, 'WID-xxx (Draft) Organic Papaya Salad (Somtom) Sauce', 0, '2024-08-23', '', '{\"2131e80f075cd1f3ec64a3ae2f4caaa3.pdf\":\"WID-xxx Rev.00 (Draft) Or. Papaya Salad (Somtom) Sauce.pdf\"}', '2026-08-23', 1, 'ใช้งาน', 'oL8W3vT-2H4LOn77Xa9jHy', '2024-08-24 09:43:14', NULL, 3, 3),
(224, 'PS2408-024', 'Sweet Soy Sauce', 'WID-xxx (Draft) Organic Sweet Soy Sauce', 2, 'WID-xxx (Draft) Organic Sweet Soy Sauce', 0, '2024-08-23', '', '{\"5cd7bd0ade5fbd23fa182a106eadbb73.pdf\":\"WID-xxx Rev.00 (Draft) Or. Sweet Soy Sauce.pdf\"}', '2026-08-23', 1, 'ใช้งาน', 'QAof-zglqJon6wDEoYgZ6H', '2024-08-24 09:44:41', NULL, 3, 3),
(225, 'PS2408-025', 'Rice Vinegar', 'WID-xxx (Draft) Organic Drinking Vinegar with Turmeric', 2, 'WID-xxx (Draft) Organic Drinking Vinegar with Turmeric', 0, '2024-08-23', '', '{\"04daa1631f602696cd03e613dd33f875.pdf\":\"WID-xxx Rev.00 (Draft) Or. Drinking Vinegar with Turmeric.pdf\"}', '2026-08-23', 1, 'ใช้งาน', '0sX-eHeNfJVC-Ye1yKeg21', '2024-08-24 10:08:12', NULL, 3, 3),
(226, 'PS2408-026', 'Rice Vinegar', 'WID-xxx (Draft) Organic Drinking Vinegar with Ginger', 2, 'WID-xxx (Draft) Organic Drinking Vinegar with Ginger', 0, '2024-08-23', '', '{\"1a9f8f5d4dd0e2d9597fa4e351fb21bb.pdf\":\"WID-xxx Rev.00 (Draft) Or. Drinking Vinegar with Ginger.pdf\"}', '2026-08-23', 1, 'ใช้งาน', '5jZ4DVJq1tGDgvHuAz0eEt', '2024-08-24 10:08:58', NULL, 3, 3),
(227, 'PS2408-027', 'Other Sauce', 'WID-xxx (Draft) Organic Seafood Dressing Sauce', 2, 'WID-xxx (Draft) Organic Seafood Dressing Sauce', 0, '2024-08-23', '', '{\"73955dad9eba9a3733bb89a8690e938c.pdf\":\"WID-xxx Rev.00 (Draft) Or. seafood Dressing Sauce.pdf\"}', '2026-08-23', 1, 'ใช้งาน', 'z1Ykd8CewJnWY0OcCVcIcY', '2024-08-24 10:10:52', NULL, 3, 3),
(228, 'PS2408-028', 'Seasoning Soy Sauce', 'WID-xxx (Draft) Organic Chicken Rice Sauce', 2, 'WID-xxx (Draft) Organic Chicken Rice Sauce', 0, '2024-08-23', '', '{\"70ccd158cae55b891d3f5c5952ff9e9a.pdf\":\"WID-xxx Rev.00 (Draft) Or. Chicken Rice Sauce.pdf\"}', '2026-08-23', 1, 'ใช้งาน', '9IH7T769nyXKxSXy1OnetJ', '2024-08-24 10:14:32', NULL, 3, 3),
(229, 'PS2408-029', 'Rice Vinegar', 'WID-xxx (Draft) Organic Sake', 2, 'WID-xxx (Draft) Organic Sake', 0, '2024-08-23', '', '{\"8a3cf10cf2e61a6af81f769abeeaf0df.pdf\":\"WID-xxx Rev.00 (Draft) Or. Sake.pdf\"}', '2026-08-23', 1, 'ใช้งาน', 'pcLj9XBPNtHhmAt5jWaTi4', '2024-08-24 10:17:03', NULL, 3, 3),
(230, 'PS2408-030', 'Other Sauce', 'WID-xxx (Draft) Organic Rice Syrup', 2, 'WID-xxx (Draft) Organic Rice Syrup', 0, '2024-08-23', '', '{\"4302370d31691b3f209395d4fcb46377.pdf\":\"WID-xxx Rev.00 (Draft) Or. Rice Syrup.pdf\"}', '2026-08-23', 1, 'ใช้งาน', 'FcAdPTwShHwioWUhgw2Be2', '2024-08-24 10:20:25', NULL, 3, 3),
(231, 'PS2408-031', 'Other Sauce', 'WID-xxx (Draft) Organic Kimchi', 2, 'WID-xxx (Draft) Organic Kimchi', 0, '2024-08-23', '', '{\"f0dcec8481e78255072f2ddcb20e3ea9.pdf\":\"WID-xxx Rev.00 (Draft) Or. Kimchi.pdf\"}', '2026-08-23', 1, 'ใช้งาน', 'oSxVRNLq_cjbi4P-oPB53p', '2024-08-24 10:21:55', NULL, 3, 3),
(232, 'PS2408-032', 'Other Sauce', 'WID-xxx (Draft) Organic Thai Dressing Sauce', 2, 'WID-xxx (Draft) Organic Thai Dressing Sauce', 0, '2024-08-23', '', '{\"afbb65247044b066c3b1784734661878.pdf\":\"WID-xxx Rev.00 (Draft) Or. Thai Dressing Sauce.pdf\"}', '2026-08-23', 1, 'ใช้งาน', 'Ig1VD7DnKf8dfrnJp-8V-B', '2024-08-24 10:25:14', NULL, 3, 3),
(233, 'PS2408-033', 'Pickled Vegetables', 'WID-201 Pickled Organic Chili', 2, 'WID-201 Pickled Organic Chili', 0, '2024-08-24', '', '{\"cb3833ffd1b04c15777f85de97999b08.pdf\":\"WID-201 Rev.00 Pickled Organic Chili.pdf\"}', '2026-08-24', 1, 'ใช้งาน', 'yU5sAK5V1LwIGLvm_LzUSJ', '2024-08-24 14:47:23', NULL, 3, 3),
(234, 'PS2408-034', 'Pickled Vegetables', 'WID-196 Organic Tomato Paste / Pickled', 2, 'WID-196 Organic Tomato Paste / Pickled', 0, '2024-08-24', '', '{\"3ba65eb47136210d7e0b95b6dad83878.pdf\":\"WID-196 Rev.00 Organic Tomato Paste , Pickled.pdf\"}', '2026-08-24', 1, 'ใช้งาน', 'esshy10FdZzkLWei7Ohe6R', '2024-08-24 14:48:23', NULL, 3, 3),
(235, 'PS2408-035', 'Pickled Vegetables', 'WID-202 Pickled Organic Onion', 2, 'WID-202 Pickled Organic Onion', 0, '2024-08-24', '', '{\"517574a5e8876ccf9d6303cdaeefa417.pdf\":\"WID-202 Rev.00 Pickled Organic Onion.pdf\"}', '2026-08-24', 1, 'ใช้งาน', 'CYELyRvZ0QTXhg2Ig-K9GI', '2024-08-24 14:49:12', NULL, 3, 3),
(236, 'PS2408-036', 'Pickled Vegetables', 'WID-204 Pickled Organic Red Onion', 2, 'WID-204 Pickled Organic Red Onion', 0, '2024-08-24', '', '{\"840638554f21c1ef99480234c4a5b62a.pdf\":\"WID-204 Rev.00 Pickled Organic Red Onion.pdf\"}', '2026-08-24', 1, 'ใช้งาน', 'gGwiXTA5uSt8jWnRgYNgW_', '2024-08-24 14:50:33', NULL, 3, 3),
(237, 'PS2408-037', 'Pickled Vegetables', 'WID-205 Pickled Organic Ginger', 2, 'WID-205 Pickled Organic Ginger', 0, '2024-08-24', '', '{\"a1849b9ceeb69c28211577f9813a3d2e.pdf\":\"WID-205 Rev.00 Pickled Organic Ginger.pdf\"}', '2026-08-24', 3, 'ยกเลิกใช้', 'HKVe0WxtLCIbHoH61cZzPp', '2024-08-24 14:51:28', '2024-08-29 11:25:22', 3, 3),
(238, 'PS2408-038', 'Pickled Vegetables', 'WID-207 Pickled Organic Garlic', 2, 'WID-207 Pickled Organic Garlic', 0, '2024-08-24', '', '{\"4365e29519b0e9a1f7db512ae06b1c8b.pdf\":\"WID-207 rev.00 Pickled Organic Garlic.pdf\"}', '2026-08-24', 1, 'ใช้งาน', 'ie30xFowbS745CTQHFw4bb', '2024-08-24 14:52:32', NULL, 3, 3),
(239, 'PS2408-039', 'Pickled Vegetables', 'WID-209 Pickled Organic Carrot', 2, 'WID-209 Pickled Organic Carrot', 0, '2024-08-24', '', '{\"7b401db1f5781582d2ef58a571e0f8aa.pdf\":\"WID-209 Rev.00 Pickled Organic Carrot.pdf\"}', '2026-08-24', 1, 'ใช้งาน', 'aBCHnV6WHr1Eif0bUEjhDf', '2024-08-24 14:53:23', NULL, 3, 3),
(240, 'PS2408-040', 'Fruit Juice', 'WID-208 Organic Lime Juice', 2, 'WID-208 Organic Lime Juice', 0, '2024-08-24', '', '{\"c19180a92a8226efd0145e7ca6a5caf9.pdf\":\"WID-208 Rev.00 Organic Lime Juice.pdf\"}', '2026-08-24', 1, 'ใช้งาน', 'kab8XCK3Z5RDD2pFtDco5P', '2024-08-24 14:54:42', NULL, 3, 3),
(241, 'PS2408-041', 'Fruit Juice', 'WID-203 Organic Pineapple Juice', 2, 'WID-203 Organic Pineapple Juice', 0, '2024-08-24', '', '{\"98ce26e09b46fbcf4f64e23a76583098.pdf\":\"WID-203 Rev.00 Organic Pineapple Juice.pdf\"}', '2026-08-24', 1, 'ใช้งาน', 'fTckPhc1O9C77_8vDa5ho5', '2024-08-24 14:55:52', NULL, 3, 3),
(242, 'PS2408-042', 'Chinese Soy Sauce', 'WID-250 Chinese Less Salt Soy Sauce', 2, 'WID-250 Chinese Less Salt Soy Sauce', 1, '2024-08-28', '', '{\"a4a3201a3dc8970aea8d2b261bdf7283.pdf\":\"WID-250 Chinese less Salt Soy Sauce Rev.01.pdf\"}', '2026-08-28', 1, 'ใช้งาน', 'b4anUYr8PE3kDQAraDRAP8', '2024-08-28 15:42:32', '2024-08-28 15:44:40', 3, 3),
(243, 'PS2408-043', 'Chinese Soy Sauce', 'WID-250 Chinese Less Salt Soy Sauce', 1, 'WID-250 Chinese Less Salt Soy Sauce', 1, '2024-08-28', '', '{\"df43526903b42ad963d01af34b9201e5.pdf\":\"Spec. Sheet - Chinese less Salt Soy Sauce Rev.01.pdf\"}', '2026-08-28', 1, 'ใช้งาน', 'OYZ0G8dhtQPoSRMBBoQmRt', '2024-08-28 15:46:33', NULL, 3, 3),
(244, 'PS2408-044', 'Pickled Vegetables', 'WID-205 Pickled Organic Ginger', 2, 'WID-205 Pickled Organic Ginger', 1, '2024-08-28', '', '{\"32052dc8aa56ab58d3bc7eba32b4378a.pdf\":\"WID-205 Pickled Organic Ginger Rev.01.pdf\"}', '2026-08-28', 1, 'ใช้งาน', '-PiAPZZZ6eeQMxmW0zoOze', '2024-08-29 11:26:05', NULL, 3, 3),
(245, 'PS2408-045', 'Japanese Low Sauce', 'WIC-333 Less Salt Soy Sauce No.1', 2, 'WIC-333 Less Salt Soy Sauce No.1', 0, '2024-08-30', '', '{\"38abf4f446e5f8e60275298c62052fe9.pdf\":\"WIC-333 Johin Less Salt Soy Sauce No.1.pdf\"}', '2026-08-30', 1, 'ใช้งาน', 'fQ4EQfjMsrAJv97JadDiCr', '2024-08-31 13:42:38', NULL, 3, 3),
(246, 'PS2408-046', 'Dark Soy Sauce', 'WID-113 Dark Soy Sauce Formular 2 (Vangard)', 2, 'WID-113 Dark Soy Sauce Formular 2 (Vangard)', 0, '2024-08-30', '', '{\"7179483c4dd4e82029f35c628e36e7ce.pdf\":\"WID-113 Dark Soy Sauce Formular 2 (Vangard).pdf\"}', '2026-08-30', 1, 'ใช้งาน', 'qYoJ5lZCFCO2Dn2Xhho40Z', '2024-08-31 13:49:38', '2024-08-31 13:55:57', 3, 3),
(247, 'PS2408-047', 'Japanese Low Sauce', 'WIC-344 Organic Reduced Salt Soy Sauce with 1% v/v Alcohol', 2, 'WIC-344 Organic Reduced Salt Soy Sauce with 1% v/v Alcohol', 0, '2024-08-30', '', '{\"726464c4e9cc75e16dd035db615d2bf0.pdf\":\"WIC-344 Organic Reduced Salt Soy Sauce with 1% Alcohol.pdf\"}', '2026-08-30', 1, 'ใช้งาน', 'vt8KEYE6-eP8Q24OKCO22m', '2024-08-31 13:55:27', NULL, 3, 3),
(248, 'PS2408-048', 'Seasoning Vegan', 'WID-230 Organic Vegan Mushroom Sauce', 2, 'WID-230 Organic Vegan Mushroom Sauce', 0, '2024-08-30', '', '{\"9f4a369556c6c7f7672c2409814cea80.pdf\":\"WID-230 Organic Vegan Mushroom Sauce.pdf\"}', '2026-08-30', 1, 'ใช้งาน', 'VCDs0xDhDVGbnLLnbLJRwJ', '2024-08-31 13:58:32', NULL, 3, 3),
(249, 'PS2409-001', 'Chinese Soy Sauce', 'WID-165 Or. Chinese Soy Sauce', 2, 'WID-165 Or. Chinese Soy Sauce', 0, '2024-08-31', '', '{\"c56b6840798b988cc2b97fcecfe5c042.pdf\":\"WID-165 Organic chinese Soy Sauce.pdf\"}', '2026-08-31', 1, 'ใช้งาน', 'Vtya3Ch6mkDtY1QJj9QK1M', '2024-09-03 11:01:29', NULL, 3, 3),
(250, 'PS2409-002', 'Japanese Soy Sauce', 'WIC-310 Extra Soy Sauce Fairtrade', 2, 'WIC-310 Extra Soy Sauce Fairtrade', 0, '2024-09-03', '', '{\"94d615f80cba810e9bbe3fe615c1d97d.pdf\":\"WIC-310 Extra Soy Sauce Fairtrade.pdf\"}', '2026-09-03', 1, 'ใช้งาน', 'nWYiOn_MSJdf4OKIrOkKI3', '2024-09-03 17:33:12', NULL, 3, 3),
(251, 'PS2409-003', 'Japanese Soy Sauce', 'WIC-346 Standard Soy Sauce (Gluten Free)', 2, 'WIC-346 Standard Soy Sauce (Gluten Free)', 0, '2024-09-03', '', '{\"0b253c9e199be5a349635891a94b767a.pdf\":\"WIC-346 Standard Soy Sauce (Gluten Free).pdf\"}', '2026-09-03', 1, 'ใช้งาน', 'pASe4QSjP3EjdniGQcKqXc', '2024-09-03 17:35:09', NULL, 3, 3),
(252, 'PS2409-004', 'Japanese Other Sauce', 'WID-107 Roasted Japanese Soy Sauce', 2, 'WID-107 Roasted Japanese Soy Sauce', 0, '2024-09-03', '', '{\"4a05d2e65ff7dab95f3910dd12599d1d.pdf\":\"WID-107 Roasted Japanese Soy Sauce.pdf\"}', '2026-09-03', 1, 'ใช้งาน', 'gFo3AQ4xeYwQUt1f8nQXng', '2024-09-03 17:38:57', NULL, 3, 3),
(253, 'PS2409-005', 'Japanese Tamari', 'WID-229 Tamari Soy Sauce No.1', 2, 'WID-229 Tamari Soy Sauce No.1', 0, '2024-09-03', '', '{\"32847e6e608263f8874b427d0cb8a34a.pdf\":\"WID-229 Tamari Soy Sauce No.1.pdf\"}', '2026-09-03', 1, 'ใช้งาน', 'deA-8j8hFoSfuXJTxlbNoV', '2024-09-03 17:40:57', NULL, 3, 3),
(254, 'PS2409-006', 'Japanese Tamari', 'WIC-324 Fairtrade Tamari Organic Soy Sauce', 2, 'WIC-324 Fairtrade Tamari Organic Soy Sauce', 0, '2024-09-03', '', '{\"01b0dd0a06262c59898b0eab5fded780.pdf\":\"WIC-324 Fairtrade Tamari Organic Soy Sauce.pdf\"}', '2026-09-03', 1, 'ใช้งาน', 'YLwORZnCefRz58ynOaPgP4', '2024-09-03 17:42:42', NULL, 3, 3),
(255, 'PS2409-007', 'Japanese Gluten Free', 'WIC-338 Gluten Free Soy Sauce No.1', 2, 'WIC-338 Gluten Free Soy Sauce No.1', 0, '2024-09-03', '', '{\"1010d2fee026e16141c3aa4d02033069.pdf\":\"WIC-338 Gluten Free Soy Sauce No.1.pdf\"}', '2026-09-03', 1, 'ใช้งาน', 'K8k8_OQMg3rpzMhMYCM4uS', '2024-09-03 17:44:05', NULL, 3, 3),
(256, 'PS2409-008', 'Japanese Soy Sauce', 'WIC-335 Extra Soy Sauce (Gluten Free)', 2, 'WIC-335 Extra Soy Sauce (Gluten Free)', 0, '2024-09-03', '', '{\"d433a2601b645e5cafa43b84621e2b17.pdf\":\"WIC-335 Extra Soy Sauce (Gluten Free).pdf\"}', '2026-09-03', 1, 'ใช้งาน', 'ZVA9-YimFBE19b2YzbUDu8', '2024-09-03 17:45:35', NULL, 3, 3),
(257, 'PS2409-009', 'Seasoning Soy Sauce', 'WID-120 Sushi Soy Sauce', 2, 'WID-120 Sushi Soy Sauce', 0, '2024-09-03', '', '{\"b8f0ff11851c9988ad74b9faebb7f4e3.pdf\":\"WID-120 Sushi Soy Sauce.pdf\"}', '2026-09-03', 1, 'ใช้งาน', 'LPqjC38wo54wXnB5sa0I0W', '2024-09-03 17:46:59', NULL, 3, 3),
(258, 'PS2409-010', 'Miso', 'Label - Organic Pasteurized Miso 200g (PB Farm)', 10, 'Label - Organic Pasteurized Miso 200g (PB Farm)', 0, '2024-09-05', '', '{\"c138025042fce74fa0da98bc865d0cab.pdf\":\"Label - Organic Pasteurized Miso (PB) 200g.pdf\"}', '2029-09-05', 3, 'ยกเลิกใช้', 'uuB1cywHoaHYT7TKgaKvDB', '2024-09-05 10:11:33', '2025-02-04 15:21:29', 3, 3),
(259, 'PS2409-011', 'Japanese Soy Sauce', 'WIC-304 Standard Soy Sauce', 1, 'WIC-304 Standard Soy Sauce', 1, '2024-09-06', '', '{\"7bb6f4cb0ec536e0599210a1014ba463.pdf\":\"Spec. Sheet - Standard Soy Sauce Rev.01.pdf\"}', '2026-09-06', 1, 'ใช้งาน', 'P08IZqpyqdRF2-03oEHaal', '2024-09-06 16:14:53', NULL, 3, 3),
(260, 'PS2409-012', 'Seasoning Vinaigrette', 'WID-246 Organic Ponzu Lime Sauce', 2, 'WID-246 Organic Ponzu Lime Sauce', 0, '2024-09-02', '', '{\"8147f5e7c297dd466cd796fb1a044c0e.pdf\":\"WID-246 Organic Ponzu Lime Sauce.pdf\"}', '2026-09-02', 1, 'ใช้งาน', 'U7RBhpUiMloIzi4W5xZVCE', '2024-09-07 13:44:11', NULL, 3, 3),
(261, 'PS2409-013', 'Rice Vinegar', 'WID-238 Organic Mirin 5.5% v/v', 2, 'WID-238 Organic Mirin 5.5% v/v', 0, '2024-09-02', '', '{\"6cc7074ed9367d98e4be4b83e98f1817.pdf\":\"WID-238 Organic Mirin 5.5%.pdf\"}', '2026-09-02', 3, 'ยกเลิกใช้', 'NJyQoA84MtF0MjdsjPNfX7', '2024-09-07 13:45:43', '2024-12-23 15:57:13', 3, 3),
(262, 'PS2409-014', 'Japanese Soy Sauce', 'Label - Johin Standard Soy Sauce', 10, 'Label - Johin Standard Soy Sauce', 0, '2024-09-07', '', '{\"035b447827a16c9e47ef10c6f086593e.pdf\":\"แบบสิ่งพิมพ์ ฉลาก STANDARD JOHIN 18C.pdf\"}', '2029-09-07', 3, 'ยกเลิกใช้', 'jgTtjMod7D8uje1nG1lKmF', '2024-09-07 14:43:44', '2025-02-06 10:05:52', 3, 3),
(263, 'PS2409-015', 'Japanese Gluten Free', 'Label - Johin Gluten Free soy Sauce', 10, 'Label - Johin Gluten Free soy Sauce', 0, '2024-09-07', '', '{\"dd7389276ab7a6b46651ae799cdf9e97.pdf\":\"แบบสิ่งพิมพ์ Label Gluten Free Soy Sauce.pdf\"}', '2029-09-07', 3, 'ยกเลิกใช้', 'TP3xkwFGGPQV7WUc2qDGM9', '2024-09-07 14:45:50', '2025-02-06 10:50:07', 3, 3),
(264, 'PS2409-016', 'Japanese Soy Sauce', 'Label - Johin Extra Soy Sauce', 10, 'Label - Johin Extra Soy Sauce', 0, '2024-09-07', '', '{\"827b9b61c23347bfebda6c63edd15ab1.pdf\":\"แบบสิ่งพิมพ์_Johin Extra soy sauce.pdf\"}', '2029-09-07', 3, 'ยกเลิกใช้', 'TjNtCy4JZt0NEqaZCNclQk', '2024-09-07 14:46:54', '2025-02-06 10:00:04', 3, 3),
(265, 'PS2409-017', 'Japanese Light Color', 'Label - Johin Light Color Soy Sauce', 10, 'Label - Johin Light Color Soy Sauce', 0, '2024-09-07', '', '{\"f130123cb4009c90f6c736c5ca5207d8.pdf\":\"แบบสิ่งพิมพ์_ฉลาก JOHIN LIGHT COLOR SOY SAUCE (2).pdf\"}', '2029-09-07', 3, 'ยกเลิกใช้', 'UJrRcKUy_J_wer8robU3wX', '2024-09-07 14:48:29', '2025-02-06 10:15:29', 3, 3),
(266, 'PS2409-018', 'Japanese Soy Sauce', 'Label - Johin Rich Soy Sauce', 10, 'Label - Johin Rich Soy Sauce', 0, '2024-09-07', '', '{\"f23b693239d2af6743f50d4fbdd2bc22.pdf\":\"แบบสิ่งพิมพ์_ฉลาก JOHIN RICH SOY SAUCE_230566.pdf\"}', '2029-09-07', 3, 'ยกเลิกใช้', '57RbS8ovMykT3wRlKQARkS', '2024-09-07 14:50:32', '2025-02-06 10:35:02', 3, 3),
(267, 'PS2409-019', 'Japanese Soy Sauce', 'Label - Johin Regular Soy Sauce', 10, 'Label - Johin Regular Soy Sauce', 0, '2024-09-07', '', '{\"b4c8254b60cc89f55b6e6e493471fce5.pdf\":\"แบบสิ่งพิมพ์_ฉลากโจฮิน Regular Soy Sauce.pdf\"}', '2029-09-07', 3, 'ยกเลิกใช้', 'ODKG2YZpQSsRp8eZ4xod0O', '2024-09-07 14:52:09', '2025-02-06 10:18:22', 3, 3),
(268, 'PS2409-020', 'Japanese Low Sauce', 'Label - Johin Less Salt Soy Sauce', 10, 'Label - Johin Less Salt Soy Sauce', 0, '2024-09-07', '', '{\"f78c9462cf44171db553ea79e3324fd6.pdf\":\"แบบสิ่งพิมพ์_ซอสถั่วเหลืองเลสซอลท์.pdf\"}', '2029-09-07', 3, 'ยกเลิกใช้', 'Dn9tDO-3cbeQnmqrm5FVcD', '2024-09-07 14:53:23', '2025-02-06 10:37:43', 3, 3),
(269, 'PS2409-021', 'Chinese Soy Sauce', 'Label - Johin ซีอิ๊วขาว สูตร 1 ', 10, 'Label - Johin ซีอิ๊วขาว สูตร 1 ', 0, '2024-09-07', '', '{\"cbfb99da423110413ad7c60980be53d5.pdf\":\"แบบสิ่งพิมพ์_ซีอิ๊วขาวสูตร 1 ซอสถั่วเหลือง.pdf\"}', '2029-09-07', 3, 'ยกเลิกใช้', 'fPGHbRz4t3N8bep4Zb0Cq8', '2024-09-07 15:04:03', '2025-02-06 10:27:38', 3, 3),
(270, 'PS2409-022', 'Dark Soy Sauce', 'Label - Johin ซีอิ๊วดำ สูตร 2', 10, 'Label - Johin ซีอิ๊วดำ สูตร 2', 0, '2024-09-07', '', '{\"8fd1df6d6ed89459fb690b5295ca9a3c.pdf\":\"แบบสิ่งพิมพ์_ซีอิ๊วดำสูตร 2 (1).pdf\"}', '2029-09-07', 3, 'ยกเลิกใช้', 'GA6J9kQt2BxQxb94TEq7Bk', '2024-09-07 15:05:56', '2025-02-06 10:46:25', 3, 3),
(271, 'PS2409-023', 'Seasoning Soy Sauce', 'Label - Organic Sweet And Sour Sauce 200 ml. (La Compagnie du riz)', 10, 'Label - Organic Sweet And Sour Sauce 200 ml. (La Compagnie du riz)', 0, '2024-09-07', '', '{\"a75a4316c028455f6eb9f995830b5201.jpg\":\"0150181 Riz Aigre Douce 200ml_MC (1).jpg\"}', '2029-09-07', 1, 'ใช้งาน', 'jEGZZfN21-bIXR1givhyqK', '2024-09-07 16:32:31', '2024-09-07 16:44:44', 3, 3),
(272, 'PS2409-024', 'Rice Vinegar', 'Label - Organic Sushi Vinegar 200 ml. (La Compagnie du riz)', 10, 'Label - Organic Sushi Vinegar 200 ml. (La Compagnie du riz)', 0, '2024-09-07', '', '{\"7f356b820d30075b67b246b654a06e49.jpg\":\"0150191 RIZ 5.5 x 16 CM (1).jpg\"}', '2029-09-07', 1, 'ใช้งาน', 'toRRevZznK4TUtd70D70cG', '2024-09-07 16:35:40', NULL, 3, 3),
(273, 'PS2409-025', 'Rice Vinegar', 'Label - Organic Rice Vinegar 5% 600 ml. (La Compagnie Du riz)', 10, 'Label - Organic Rice Vinegar 5% 600 ml. (La Compagnie Du riz)', 0, '2024-09-07', '', '{\"011ff1807fd8d20cfe4faa335b64ed5a.jpg\":\"0151627 Riz Vinaigre de Riz 600ml..jpg\"}', '2029-09-07', 1, 'ใช้งาน', 't4ppKVVTAVlMl_Q67-KB9R', '2024-09-07 16:39:05', NULL, 3, 3),
(274, 'PS2409-026', 'Seasoning Teriyaki', 'Label - Organic FT. Marinade Teriyaki Sauce 200 ml. (La Compagnie Du riz)', 10, 'Label - Organic FT. Marinade Teriyaki Sauce 200 ml. (La Compagnie Du riz)', 0, '2024-09-07', '', '{\"3fea77f88b98197502e214e42030e127.jpg\":\"PLN-067 Marinade Teriyaki 200 ml. 0150186 Riz Teriyaki 200ml_MC (1).jpg\"}', '2029-09-07', 1, 'ใช้งาน', 'Ledn_GulJBQpI86xGAB6vC', '2024-09-07 16:41:31', '2024-09-07 16:45:25', 3, 3),
(275, 'PS2409-027', 'Japanese Soy Sauce', 'Label - Organic FT. Shoyu Soy Sauce 200 ml. (La Compagnie Du riz)', 10, 'Label - Organic FT. Shoyu Soy Sauce 200 ml. (La Compagnie Du riz)', 0, '2024-09-07', '', '{\"4580951952259b4d295e3d44839d5ca5.jpg\":\"PLN-068 Shoyu 200 ml..jpg\"}', '2029-09-07', 1, 'ใช้งาน', 'FoYDIG-Ennop2zqw0R9PYJ', '2024-09-07 16:43:44', NULL, 3, 3),
(276, 'PS2409-028', 'Japanese Soy Sauce', 'Label - Organic FT. Shoyu Soy Sauce 600 ml. (La Compagnie Du riz)', 10, 'Label - Organic FT. Shoyu Soy Sauce 600 ml. (La Compagnie Du riz)', 0, '2024-09-07', '', '{\"7ba3c084698c00539f27ca31fa1e086d.jpg\":\"PLN-069 Shoyu 600 ml..jpg\"}', '2029-09-07', 1, 'ใช้งาน', '-3rz4ZErumpFsNusaP1PoI', '2024-09-07 16:47:03', NULL, 3, 3),
(277, 'PS2409-029', 'Chinese Soy Sauce', 'WID-173 Chinese Soy Sauce No. 1.2', 2, 'WID-173 Chinese Soy Sauce No. 1.2', 0, '2024-09-05', '', '{\"0c8a334e7e6b1739d8f64c36bc449307.pdf\":\"WID-173 Chinese Soy Sauce No.1.2.pdf\"}', '2026-09-05', 1, 'ใช้งาน', '5Z4qzAhskaUlR7qcZZ0blo', '2024-09-09 11:54:11', NULL, 3, 3),
(278, 'PS2409-030', 'Seasoning Ketjap', 'WID-186 Organic FT. Ketjap Manis Sauce', 2, 'WID-186 Organic FT. Ketjap Manis Sauce', 0, '2024-09-03', '', '{\"e1107defcd7270d0a2bec3a548378811.pdf\":\"WID-186 Organic FT. Ketjap Manis Sauce.pdf\"}', '2026-09-03', 1, 'ใช้งาน', '8VM9UXdTJEQfvT867itl8e', '2024-09-09 11:55:31', NULL, 3, 3),
(279, 'PS2409-031', 'Japanese Tamari', 'Label - Organic FT. Tamari Soy Sauce 600 ml. (La Compagnie Du riz)', 10, 'Label - Organic FT. Tamari Soy Sauce 600 ml. (La Compagnie Du riz)', 0, '2024-09-09', '', '{\"a3066d2f79c394208263d7ad67c2eecf.jpg\":\"PLN-070 Tamari 600 ml..jpg\"}', '2029-09-09', 1, 'ใช้งาน', 'jTVLW9Wa3obkE0qFhRT0cE', '2024-09-09 13:18:36', NULL, 3, 3),
(280, 'PS2409-032', 'Japanese Tamari', 'Label - Organic FT. Tamari Soy Sauce 200 ml. (La Compagnie Du riz)', 10, 'Label - Organic FT. Tamari Soy Sauce 200 ml. (La Compagnie Du riz)', 0, '2024-09-09', '', '{\"ba490d128e10bb29ee12661591885f4e.jpg\":\"PLN-071 Tamari 200 ml..jpg\"}', '2029-09-09', 1, 'ใช้งาน', 'wBULGb6wu4ekQqOxSNIytu', '2024-09-09 13:19:42', NULL, 3, 3),
(281, 'PS2409-033', 'Seasoning Ketjap', 'Label - Organic FT. Ketjap Manis Sauce 600 ml. (La Compagnie Du riz)', 10, 'Label - Organic FT. Ketjap Manis Sauce 600 ml. (La Compagnie Du riz)', 0, '2024-09-09', '', '{\"b3b1d494c5fb6869ee8802d5b3c80bb0.jpg\":\"PLN-072 Shoyu Ketjap 600ml..jpg\"}', '2029-09-09', 1, 'ใช้งาน', 'SL99FwWPBMY51woIzcKnCD', '2024-09-09 13:25:13', NULL, 3, 3),
(282, 'PS2409-034', 'Seasoning Ketjap', 'Label - Organic FT. Ketjap Manis Sauce 200 ml. (La Compagnie Du riz)', 10, 'Label - Organic FT. Ketjap Manis Sauce 200 ml. (La Compagnie Du riz)', 0, '2024-09-09', '', '{\"d9d0fd06a1b05e53932abde42af5928e.jpg\":\"PLN-073 Shoyu Ketjap 200 ml..jpg\"}', '2029-09-09', 1, 'ใช้งาน', 'BWgFTnpbJfOSXOrehtsy1j', '2024-09-09 13:27:23', NULL, 3, 3),
(283, 'PS2409-035', 'Japanese Low Sauce', 'Label - Organic FT. Shoyu Less Salt Soy Sauce 200 ml. (La Compagnie Du riz)', 10, 'Label - Organic FT. Shoyu Less Salt Soy Sauce 200 ml. (La Compagnie Du riz)', 0, '2024-09-09', '', '{\"9345f2ac47ff54ea425d3f1f48c516b7.jpg\":\"PLN-085 Shoyu Less Salt 200 ml..jpg\"}', '2029-09-09', 1, 'ใช้งาน', 'vIrT1JIk3T3Hk-4G8QH05U', '2024-09-09 13:31:01', NULL, 3, 3),
(284, 'PS2409-036', 'Japanese Low Sauce', 'Label - Organic FT. Shoyu Less Salt Soy Sauce 600 ml. (La Compagnie Du riz)', 10, 'Label - Organic FT. Shoyu Less Salt Soy Sauce 600 ml. (La Compagnie Du riz)', 0, '2024-09-09', '', '{\"67bb4b027dc4bd90f2e40cc7bb3f83d3.jpg\":\"PLN-086 Shoyu Less Salt 600ml..jpg\"}', '2029-09-09', 1, 'ใช้งาน', 'oc1oRr5LMT45-uCErK1ZFZ', '2024-09-09 13:33:15', NULL, 3, 3),
(285, 'PS2409-037', 'Rice Vinegar', 'Label - Organic FT. Rice Vinegar 5% 310 ml. (La Compagnie Du riz)', 10, 'Label - Organic FT. Rice Vinegar 5% 310 ml. (La Compagnie Du riz)', 0, '2024-09-09', '', '{\"b800ce22689500c1a1347bfd5657ed1d.jpg\":\"PLN-095 Rice Vinegar 5% 0150189 Riz Vinaigre 310ml_MC.jpg\"}', '2029-09-09', 1, 'ใช้งาน', 'PNDEqEd59FtgJhS_2Czk24', '2024-09-09 13:35:39', NULL, 3, 3),
(286, 'PS2409-038', 'Other Sauce', 'Label - Organic Spring Roll Sauce 200 ml. (La Compagnie Du riz)', 10, 'Label - Organic Spring Roll Sauce 200 ml. (La Compagnie Du riz)', 0, '2024-09-09', '', '{\"ca389d1cb094bcfe7671656bc878c8bb.jpg\":\"PLN-113 Spring Roll 200 ml. 0150188 Riz Nems 200ml_MC (1).jpg\"}', '2029-09-09', 1, 'ใช้งาน', 'QMBrN0_VtN91PR74cV9IQb', '2024-09-09 13:38:13', NULL, 3, 3),
(287, 'PS2409-039', 'Other Sauce', 'Label - Organic Sweet Chili Sauce 200 ml. (La Compagnie Du riz)', 10, 'Label - Organic Sweet Chili Sauce 200 ml. (La Compagnie Du riz)', 0, '2024-09-09', '', '{\"71f9dafeea23f34a473f404f0364583a.jpg\":\"PLN-114 Sweet Chilli 200 ml. 0150182 Riz SW Chili 200ml_MC (1).jpg\"}', '2029-09-09', 1, 'ใช้งาน', 'qGOxO_tsHqrRfAAw5Ytekp', '2024-09-09 14:00:01', NULL, 3, 3),
(288, 'PS2409-040', 'Seasoning Soy Sauce', 'Label - Organic Pad Thai Sauce 200 ml. (La Compagnie Du riz)', 10, 'Label - Organic Pad Thai Sauce 200 ml. (La Compagnie Du riz)', 0, '2024-09-09', '', '{\"89f78478995c143cb1f88f73d76240ae.jpg\":\"PLN-115 Pad Thai 200 ml. 0150187 Riz Pad Thai 200ml_MC (1).jpg\"}', '2029-09-09', 1, 'ใช้งาน', 'tLHOV2E1JGtfRDszlac7mm', '2024-09-09 14:01:01', NULL, 3, 3),
(289, 'PS2409-041', 'Seasoning Vinaigrette', 'Label - Organic Thai Vinaigrette Sauce 200 ml. (La Compagnie Du riz)', 10, 'Label - Organic Thai Vinaigrette Sauce 200 ml. (La Compagnie Du riz)', 0, '2024-09-09', '', '{\"c6b2bf3f1f1434c58cd304e3b71ddc8f.jpg\":\"PLN-118 Thai Vinaigarrete 200 ml. 0150180 Riz Thailandaise 200ml_MC (1).jpg\"}', '2029-09-09', 1, 'ใช้งาน', 'lCSCQYuDei96XC8H0u0X09', '2024-09-09 14:07:48', NULL, 3, 3),
(290, 'PS2409-042', 'Seasoning Vinaigrette', 'Label - Organic Japanese Vinaigrette Sauce 200 ml. (La Compagnie Du riz)', 10, 'Label - Organic Japanese Vinaigrette Sauce 200 ml. (La Compagnie Du riz)', 0, '2024-09-09', '', '{\"137bf9f53528a59bc39fce74d62f8c33.jpg\":\"PLN-119 Japanese Vinaigarrete 200 ml. .jpg\"}', '2029-09-09', 1, 'ใช้งาน', 'pWbJ27ZPl_KlREv_t09xZM', '2024-09-09 14:09:04', NULL, 3, 3),
(291, 'PS2409-043', 'Other Sauce', 'Label - Fish Sauce Flavored 200 ml. (La Compagnie Du riz)', 10, 'Label - Fish Sauce Flavored 200 ml. (La Compagnie Du riz)', 0, '2024-09-09', '', '{\"328b39f2171c224171c5b85ca059b9f0.jpg\":\"PLN-157 Fish Sauce Flavored 200 ml. 0150184 Riz Nuoc Mam 200ml_MC (1).jpg\"}', '2029-09-09', 1, 'ใช้งาน', 'IHuHW-qrWuKEZuGCnFIaEX', '2024-09-09 14:16:56', NULL, 3, 3),
(292, 'PS2409-044', 'Seasoning Vinaigrette', 'Label - Organic Ponzu Sauce 200 ml. (La Compagnie Du riz)', 10, 'Label - Organic Ponzu Sauce 200 ml. (La Compagnie Du riz)', 0, '2024-09-09', '', '{\"88682231de8e376ed1a74603d0a44bc7.jpg\":\"PLN-158 Ponzu Lime 200 ml. 0150183 Riz Ponzu 200ml_MC (1).jpg\"}', '2029-09-09', 1, 'ใช้งาน', 'ix1lfMB9xpDtCJzXr5pbZ8', '2024-09-09 14:18:10', NULL, 3, 3),
(293, 'PS2409-045', 'Rice Vinegar', 'Label - Organic Mirin Sauce 200 ml. (La Compagnie Du riz)', 10, 'Label - Organic Mirin Sauce 200 ml. (La Compagnie Du riz)', 0, '2024-09-09', '', '{\"bca24bb3baa9d1402018669662bdbe4d.jpg\":\"PLN-159 Mirin Sauce 200 ml. 0150185 Riz Mirin 200ml_MC (1).jpg\"}', '2029-09-09', 1, 'ใช้งาน', 'ZBSa8SiXNC6XkqluWswOgz', '2024-09-09 14:19:02', NULL, 3, 3),
(294, 'PS2409-046', 'Japanese Gluten Free', 'WIC-349 Less Salt Soy Sauce (Gluten Free) with Alcohol - (Monty)', 1, 'WIC-349 Less Salt Soy Sauce (Gluten Free) with Alcohol - (Monty)', 0, '2024-09-18', '', '{\"0090cc25922bef9865d3913823688c4a.pdf\":\"Spec. Sheet - Less Salt Soy Sauce (Gluten Free).pdf\"}', '2026-09-18', 1, 'ใช้งาน', '6G9F8kYWMd_Z7XK2YwhGqL', '2024-09-19 09:01:19', NULL, 3, 3);
INSERT INTO `products` (`id`, `numbers`, `title`, `description`, `category`, `product_name`, `revision`, `reviesed_date`, `product_iso`, `docs`, `expiration_date`, `status`, `status_details`, `ref`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(295, 'PS2409-047', 'Japanese Gluten Free', 'WIC-349 Less Salt Soy Sauce (Gluten Free) with Alcohol - (Monty)', 2, 'WIC-349 Less Salt Soy Sauce (Gluten Free) with Alcohol - (Monty)', 0, '2024-09-18', '', '{\"77b4b6a3cafc00e4a6aee8a718124804.pdf\":\"WIC-349 Less Salt Soy Sauce (Gluten Free).pdf\"}', '2026-09-18', 1, 'ใช้งาน', '3daCWCCmuqjKZ6HuAh-moW', '2024-09-19 09:06:43', NULL, 3, 3),
(297, 'PS2409-049', 'Japanese Low Sauce', 'Label - Organic Reduced Salt Soy Sauce 1000ml. (Saitaku)', 10, 'Label - Organic Reduced Salt Soy Sauce 1000ml. (Saitaku)', 0, '2024-09-19', '', '{\"b21d50563e10992f6a10c3b89aee1f0f.jpg\":\"095821 SAITAKU Soy Sauce.jpg\"}', '2029-09-19', 1, 'ใช้งาน', 'L6LtrGV5P4ZvzeN2TfoGct', '2024-09-19 18:15:32', NULL, 3, 3),
(298, 'PS2409-050', 'Japanese Low Sauce', 'Label - Organic Reduced Salt Soy Sauce 200ml. (Mei Yang)', 10, 'Label - Organic Reduced Salt Soy Sauce 200ml. (Mei Yang)', 0, '2024-09-19', '', '{\"9806462a621c7946bd7d651a41162576.pdf\":\"MEI YANG Reduced Salt Soy Sauce.pdf\"}', '2029-09-19', 1, 'ใช้งาน', 'LFKW1xU-JHAb-gy_utvaEt', '2024-09-19 18:17:00', NULL, 3, 3),
(299, 'PS2409-051', 'Hoi Sin Sauce', 'Label - Hoi Sin Sauce 200ml. (New) (PB Farm)', 10, 'Label - Hoi Sin Sauce 200ml. (New) (PB Farm)', 0, '2024-09-19', '', '{\"9ebc5ab2f78db3b5b1cab76874440828.jpg\":\"0102761 PB Farm Hoisin Sauce 200ml New (2).jpg\"}', '2029-09-19', 1, 'ใช้งาน', 'CRVThAOIf9AWn0lhzXFzVS', '2024-09-19 18:24:32', NULL, 3, 3),
(300, 'PS2409-052', 'Sweet Soy Sauce', 'Label - Sweet Soy Sauce 200ml. (New) (PB Farm)', 10, 'Label - Sweet Soy Sauce 200ml. (New) (PB Farm)', 0, '2024-09-19', '', '{\"b2cf53c758008e9b3f9620bb62993b5b.jpg\":\"0102762 PB Farm Sweet Soy Sauce 200ml New (2).jpg\"}', '2029-09-19', 1, 'ใช้งาน', '1fB3f0f9XKif-Ya-40iI7B', '2024-09-19 18:28:47', NULL, 3, 3),
(301, 'PS2409-053', 'Seasoning Teriyaki', 'Label - Organic Teriyaki Sauce 200ml. (New) (PB Farm)', 10, 'Label - Organic Teriyaki Sauce 200ml. (New) (PB Farm)', 0, '2024-09-19', '', '{\"5ba5811a6217798ba29d5c4adba3211e.jpg\":\"0102763 PB Farm Teriyaki 200ml New (2).jpg\"}', '2029-09-19', 1, 'ใช้งาน', 'MxBdJ4lvVSSFP4T8WokHtL', '2024-09-19 18:30:49', NULL, 3, 3),
(302, 'PS2409-054', 'Rice Vinegar', 'Label - Organic Rice Vinegar 200ml. (New) (PB Farm)', 10, 'Label - Organic Rice Vinegar 200ml. (New) (PB Farm)', 0, '2024-09-19', '', '{\"b7264be5479d55d0228e6c792cd95bc4.jpg\":\"0102764 PB Farm Rice Vinegar 200ml New (1).jpg\"}', '2029-09-19', 1, 'ใช้งาน', 'oBOL0RLTfYIocFANJQhfWL', '2024-09-19 18:31:59', NULL, 3, 3),
(303, 'PS2409-055', 'Japanese Gluten Free', 'Label - Gluten Free Soy Sauce 200ml. (New) (PB Farm)', 10, 'Label - Gluten Free Soy Sauce 200ml. (New) (PB Farm)', 0, '2024-09-19', '', '{\"be1b7e905463b8cc5255a7ae7b15aa86.jpg\":\"0102766 PB Farm Gluten Free Soy 200ml New (1).jpg\"}', '2029-09-19', 1, 'ใช้งาน', '9hKGH8RGJZNYIi90-DdEsZ', '2024-09-19 18:36:22', NULL, 3, 3),
(304, 'PS2409-056', 'Japanese Low Sauce', 'Label - Less Salt Soy Sauce 200ml. (New) (PB Farm)', 10, 'Label - Less Salt Soy Sauce 200ml. (New) (PB Farm)', 0, '2024-09-19', '', '{\"802fe1609db88664cf36113d1eb0e4cb.jpg\":\"0102768 PB Farm Less Salt Soy 200ml New (1).jpg\"}', '2029-09-19', 1, 'ใช้งาน', '07-QpdmxgViApdAoEX-90-', '2024-09-19 18:42:56', NULL, 3, 3),
(305, 'PS2409-057', 'Chinese Soy Sauce', 'Label - Organic Chinese Soy Sauce 200ml. (New) (PB Farm)', 10, 'Label - Organic Chinese Soy Sauce 200ml. (New) (PB Farm)', 0, '2024-09-19', '', '{\"5198a3037fae192a1296de8faff63fa6.jpg\":\"0102769 PB Farm Soy Sauce 200ml New.jpg\"}', '2029-09-19', 1, 'ใช้งาน', '0zgQmFfOr4zn7sd05o8gvc', '2024-09-19 18:44:29', NULL, 3, 3),
(306, 'PS2409-058', 'Dark Soy Sauce', 'Label - Organic Dark Soy Sauce 200ml. (New) (PB Farm)', 10, 'Label - Organic Dark Soy Sauce 200ml. (New) (PB Farm)', 0, '2024-09-19', '', '{\"44694e7caca23495301869f6abda9ecb.jpg\":\"0102770 PB Farm Dark Soy Sauce 200ml New.jpg\"}', '2029-09-19', 1, 'ใช้งาน', 'n89z-Cd3VHsD9a_WAlvaw9', '2024-09-19 18:46:08', NULL, 3, 3),
(307, 'PS2409-059', 'Japanese Tamari', 'Label - Organic Tamari Soy Sauce 200ml. (New) (PB Farm)', 10, 'Label - Organic Tamari Soy Sauce 200ml. (New) (PB Farm)', 0, '2024-09-19', '', '{\"8b9208484b3bd0317afa12886b48cf14.jpg\":\"0102771 PB Farm Tamari Sauce 200ml New (2).jpg\"}', '2029-09-19', 1, 'ใช้งาน', '-BFU1sNEplp-ZDz7HhwPzz', '2024-09-19 18:48:10', NULL, 3, 3),
(308, 'PS2409-060', 'Japanese Soy Sauce', 'Label - Organic Soy Sauce 200ml. (New) (PB Farm)', 10, 'Label - Organic Soy Sauce 200ml. (New) (PB Farm)', 0, '2024-09-19', '', '{\"694e82960eec46e29f1d771d0256b5bb.jpg\":\"0102772 PB Farm Organic Soy 200ml New (1).jpg\"}', '2029-09-19', 1, 'ใช้งาน', 'pNNXLFQ8WGJcl6XgBSriNn', '2024-09-19 18:49:25', NULL, 3, 3),
(309, 'PS2409-061', 'Rice Vinegar', 'Label - Organic Black Rice Vinegar 200ml. (New) (PB Farm)', 10, 'Label - Organic Black Rice Vinegar 200ml. (New) (PB Farm)', 0, '2024-09-20', '', '{\"c4a1b50cc435c1fbe8eca847603c036d.jpg\":\"มาตรฐานฉลาก PB Farm Black Rice Vinegar 200ml. New.jpg\"}', '2029-09-20', 1, 'ใช้งาน', 'uNxIhHpcot1H9Zya7gWv6i', '2024-09-20 16:25:10', NULL, 3, 3),
(310, 'PS2409-062', 'Japanese Low Sauce', 'Label - Organic Less Salt Soy Sauce 200ml. (New) (PB Farm)', 10, 'Label - Organic Less Salt Soy Sauce 200ml. (New) (PB Farm)', 0, '2024-09-20', '', '{\"7b0af3de8269e0a0511f3c097abc59f1.jpg\":\"มาตรฐานฉลาก PB Farm Organic Less Salt Soy Sauce 200ml. New.jpg\"}', '2029-09-20', 1, 'ใช้งาน', 'JDBVQCvjofZq2WTk_oZePl', '2024-09-20 16:26:55', NULL, 3, 3),
(311, 'PS2410-001', 'Japanese Gluten Free', 'WIC-331 Less Salt Soy Sauce (Gluten free)', 2, 'WIC-331 Less Salt Soy Sauce (Gluten free)', 0, '2024-10-08', '', '{\"303faef4672d48529551d45e403f65b2.pdf\":\"WIC-331 Johin Less Salt Soy Sauce (Gluten Free).pdf\"}', '2026-10-08', 1, 'ใช้งาน', 'EisMg7dTo_szynRKvQlHqU', '2024-10-09 18:16:13', NULL, 3, 3),
(312, 'PS2410-002', 'Japanese Gluten Free', 'WIC-349 Nutri Less Salt Soy Sauce (Gluten Free)', 3, 'WIC-349 Nutri Less Salt Soy Sauce (Gluten Free)', 0, '2024-10-12', '', '{\"b4c18ef8c56a969330dc1fdf8ce55798.pdf\":\"WIC-349 Nutri Less Salt soy Sauce (Gluten Free).pdf\"}', '2034-10-12', 1, 'ใช้งาน', '8VrLkM_4USvypkF77DLCAD', '2024-10-12 11:47:09', '2024-10-12 11:48:10', 3, 3),
(313, 'PS2410-003', 'Seasoning Teriyaki', 'WID-242 Or. FT. Marinade Teriyaki Sauce', 2, 'WID-242 Or. FT. Marinade Teriyaki Sauce', 0, '2024-10-25', '', '{\"d897f9ea356e1341c3e767eab6b0d2c6.pdf\":\"WID-242 Rev.00 Or. FT. Marinade Teriyaki Sauce.pdf\"}', '2026-10-25', 1, 'ใช้งาน', 'zGNa0W_9kQ1YLf6lQ4ridn', '2024-10-26 16:49:41', NULL, 3, 3),
(314, 'PS2410-004', 'Hoi Sin Sauce', 'WID-133 Premium Hoi Sin Sauce', 2, 'WID-133 Premium Hoi Sin Sauce', 0, '2024-10-25', '', '{\"fdc16e95c7390a35ae956ea4a3d49c72.pdf\":\"WID-133 Rev.00 Premium Hoi Sin Sauce.pdf\"}', '2026-10-25', 1, 'ใช้งาน', '3VNx9-aZOA5Xni_ZpMM4dI', '2024-10-26 16:52:07', NULL, 3, 3),
(315, 'PS2410-005', 'Rice Vinegar', 'WID-213 Or. Sushi Vinegar', 2, 'WID-213 Or. Sushi Vinegar', 0, '2024-10-25', '', '{\"5e2c5c856b5064ec4c0e761df0e19a9a.pdf\":\"WID-213 Rev.00 Or. Sushi Vinegar.pdf\"}', '2026-10-25', 1, 'ใช้งาน', '7e4NyxTcG5e3mHHYGt6mbm', '2024-10-26 17:36:21', NULL, 3, 3),
(316, 'PS2410-006', 'Seasoning Vegan', 'WID-222 Or. Vegan Fish Sauce', 2, 'WID-222 Or. Vegan Fish Sauce', 0, '2024-10-25', '', '{\"8fa8feef66e265e9b2d0b5780b475015.pdf\":\"WID-222 Rev.00 Or. Vegan Fish Sauce.pdf\"}', '2026-10-25', 1, 'ใช้งาน', 'z__dH39erLbwaWp8d4xNSd', '2024-10-26 17:39:23', NULL, 3, 3),
(317, 'PS2410-007', 'Seasoning Vegan', 'WID-230 Or. Vegan Mushroom Sauce', 2, 'WID-230 Or. Vegan Mushroom Sauce', 0, '2024-10-25', '', '{\"728e8bfd2bf6d6241787716853fb94e7.pdf\":\"WID-230 Rev.00 Or. Vegan Mushroom Sauce.pdf\"}', '2026-10-25', 1, 'ใช้งาน', '6ztnJpSEIsZYfxm-FnNcBt', '2024-10-26 17:41:05', NULL, 3, 3),
(318, 'PS2410-008', 'Japanese Other Sauce', 'WID-xxx (Draft) Or. Rice Sauce', 2, 'WID-xxx (Draft) Or. Rice Sauce', 0, '2024-10-25', '', '{\"c389a172eff50e78a995c7b190d8c91a.pdf\":\"WID-xxx (Draft) Rev.00 Organic Rice Sauce.pdf\"}', '2026-10-25', 1, 'ใช้งาน', 'pq-xBsHaxnwd1W9ht9DJV0', '2024-10-26 17:44:51', NULL, 3, 3),
(319, 'PS2410-009', 'Seasoning Vinaigrette', 'WID-241 Or. Thai Vinaigrette Sauce', 2, 'WID-241 Or. Thai Vinaigrette Sauce', 0, '2024-10-25', '', '{\"293a31b14129bdc368b24f02881c1361.pdf\":\"WID-241 Rev.00 Or. Thai Vinaigrette Sauce.pdf\"}', '2026-10-25', 1, 'ใช้งาน', 'KuuAs6CoBN_nnEz1AXg7W7', '2024-10-26 17:46:51', NULL, 3, 3),
(320, 'PS2410-010', 'Seasoning Soy Sauce', 'WID-215 Or. Tandoori Marinade Sauce', 2, 'WID-215 Or. Tandoori Marinade Sauce', 0, '2024-10-25', '', '{\"5e1de29aa7e59de4a27d5379ba840792.pdf\":\"WID-215 rev.00 Or. Tandoori Marinade Sauce.pdf\"}', '2026-10-25', 1, 'ใช้งาน', '7jasDtIRU6a-ioX4UCNmtG', '2024-10-26 18:24:33', NULL, 3, 3),
(321, 'PS2410-011', 'Seasoning Vinaigrette', 'WID-243 Organic Japanese Vinaigrette Sauce', 2, 'WID-243 Organic Japanese Vinaigrette Sauce', 0, '2024-10-25', '', '{\"21f61d5c81c7c489c22b727c5e84d964.pdf\":\"WID-243 Rev.00 Or. Japanese Vinaigrette Sauce.pdf\"}', '2026-10-25', 1, 'ใช้งาน', 'W_doAdXIirQuHOcqSa19oX', '2024-10-26 18:39:54', NULL, 3, 3),
(322, 'PS2410-012', 'Japanese Soy Sauce', 'WIC-303 Extra soy sauce', 1, 'WIC-303 Extra soy sauce', 1, '2024-10-29', '', '{\"5c626ba1aaed614eaa76c356cab0c383.pdf\":\"Spec. Sheet - Extra Soy Sauce Rev.01.pdf\"}', '2026-10-29', 1, 'ใช้งาน', 'JSWjaVni7CmzzkGJBcPqX4', '2024-10-30 13:57:08', '2025-01-25 10:02:38', 3, 3),
(323, 'PS2411-001', 'Japanese Gluten Free', 'WIC-314 Gluten Free (Rice) Soy Sauce For Thai Nikken Food', 1, 'WIC-314 Gluten Free (Rice) Soy Sauce For Thai Nikken Food', 3, '2024-10-31', '', '{\"0348e5b22845c43a69de69afa521efbf.pdf\":\"Spec. Sheet - Gluten Free (Rice) Soy Sauce for Thai nikken food Rev.03.pdf\"}', '2026-10-31', 1, 'ใช้งาน', 'sj3OFrAbN7EttUPgDmLb60', '2024-11-06 15:01:54', NULL, 3, 3),
(324, 'PS2411-002', 'Dark Soy Sauce', 'WID-187 Dark Soy Sauce (Gluten Free)', 1, 'WID-187 Dark Soy Sauce (Gluten Free)', 1, '2024-11-06', '', '{\"fadb6b6291192d2bbf19a10b31d33b78.pdf\":\"Spec. Sheet - Dark soy sauce (Glutenfree)  Rev.01.pdf\"}', '2026-11-06', 1, 'ใช้งาน', 'B4QIlkwqmRQDBa-fUSHFMy', '2024-11-07 15:23:09', NULL, 3, 3),
(325, 'PS2411-003', 'Japanese Soy Sauce', 'WIC-322 Fairtrade Organic Soy Sauce', 2, 'WIC-322 Fairtrade Organic Soy Sauce', 0, '2024-11-08', '', '{\"df1f22247b8695c76a03b86bc63c408a.pdf\":\"WIC-322 Fairtrade Organic Soy Sauce.pdf\"}', '2026-11-08', 1, 'ใช้งาน', 'nv-RNij62p38TvchaejfX2', '2024-11-08 14:52:00', NULL, 3, 3),
(326, 'PS2411-004', 'Japanese Low Sauce', 'WIC-349 Less Salt Soy Sauce - Monty', 4, 'WIC-349 Less Salt Soy Sauce - Monty', 0, '2024-11-21', '', '{\"8c7050ad5eb02fca67731be1c7d65437.pdf\":\"WIC-349 Less Salt Soy Sauce - Monty (อย.).pdf\"}', '2034-11-21', 1, 'ใช้งาน', 'yXVEA-RhqMFfTNjADwt4Hm', '2024-11-21 09:41:34', '2024-11-21 09:43:26', 3, 3),
(327, 'PS2411-005', 'Miso', 'WID-236 Pasteurized Shiro Miso - Monty', 4, 'WID-236 Pasteurized Shiro Miso', 0, '2024-11-21', '', '{\"fb1763271b6c48e210359dc863a950b0.pdf\":\"WID-236 Pasteurized Shiro Miso - Monty (อย.).pdf\"}', '2034-11-21', 1, 'ใช้งาน', 'u5ufBw9aIA4pWYv3-akXZg', '2024-11-21 09:45:29', NULL, 3, 3),
(328, 'PS2412-001', 'Japanese Gluten Free', 'WIC-314 Gluten Free (Rice) Soy Sauce For Namchow', 1, 'WIC-314 Gluten Free (Rice) Soy Sauce For Namchow', 4, '2024-12-13', '', '{\"476aecd9ab1d2af9c29b44e3ed0241ae.pdf\":\"Spec. Sheet - Gluten free (Rice) Soy Sauce - NamChow Rev.04.pdf\"}', '2026-12-13', 1, 'ใช้งาน', '2Fl60VtqYI0yRr0D80OxY_', '2024-12-14 11:04:18', NULL, 3, 3),
(329, 'PS2412-002', 'Japanese Low Sauce', 'WIC-311 Less Salt Soy Sauce For Namchow', 1, 'WIC-311 Less Salt Soy Sauce For Namchow', 1, '2024-12-13', '', '{\"35d20a6c45ca898ed11751fb577d36de.pdf\":\"Spec. Sheet - Less Salt Soy Sauce - Namchow Rev.01.pdf\"}', '2026-12-13', 1, 'ใช้งาน', 'jmjSG-l8Vdj_QGDHLKxsm5', '2024-12-14 11:06:32', NULL, 3, 3),
(330, 'PS2412-003', 'Rice Vinegar', 'WID-238 Organic Mirin 5.5% v/v', 2, 'WID-238 Organic Mirin 5.5% v/v', 1, '2024-12-23', '', '{\"cb86d538d74252aad68ef82885ceeb6a.pdf\":\"WID-238 Organic Mirin 5.5% Rev.01.pdf\"}', '2026-12-23', 1, 'ใช้งาน', 'cBTDXfbGXo43OvJ1YQgfxk', '2024-12-23 15:56:53', NULL, 3, 3),
(331, 'PS2501-001', 'Japanese Low Sauce', 'WIC-337 Organic Less Salt Soy Sauce Rev.02  (ใช้ Organic Alcohol ตรงกับ ฉลาก PLN.105 ฉลาก PB Farm 200ml.)', 1, 'WIC-337 Organic Less Salt Soy Sauce Rev.02  (ใช้ Organic Alcohol ตรงกับ ฉลาก PLN.105 ฉลาก PB Farm 200ml.)', 2, '2025-01-07', '', '{\"3f29db10f261e967740a5664c91a2685.pdf\":\"Spec. Sheet - Organic Less Salt Soy Sauce Rev.02.pdf\"}', '2027-01-07', 1, 'ใช้งาน', 'B-V5jGyB0_pK9TC2uwwvjY', '2025-01-07 16:51:24', NULL, 3, 3),
(332, 'PS2501-002', 'Seasoning Soy Sauce', 'WID-245 Organic Pad Thai Sauce', 2, 'WID-245 Organic Pad Thai Sauce', 1, '2025-01-08', '', '{\"a7500dffa7db92d42759dbc92eb72544.pdf\":\"WID-245 Organic Pad Thai Sauce Rev.01.pdf\"}', '2027-01-08', 1, 'ใช้งาน', 'vAve55hTTp3G0XhSRAR_4v', '2025-01-08 13:19:56', NULL, 3, 3),
(333, 'PS2502-001', 'Miso', 'PLN-164   - Organic Pasteurized Miso 200g (PB Farm)', 10, 'PLN-164   - Organic Pasteurized Miso 200g (PB Farm)', 1, '2025-02-04', '1,2,8,9,10,11', '{\"5ba8e69a138c5f1dd59604a3b73ba655.pdf\":\"แบบสิ่งพิมพ์ Organic Miso 200g (PB Farm) - Customer approved 24.01.25.pdf\",\"b0949d3eeef47c14e533cacf7104b7de.pdf\":\"แบบสิ่งพิมพ์ Organic Miso 200g (PB Farm).pdf\",\"0c36985113c22df743f0336265263b1d.pdf\":\"Label Approval EU + NOP Organic Pasteurized Miso 200g (Pb farm), 29.01.25.pdf\"}', '2030-02-04', 1, 'ใช้งาน', '2rRRvm9pJK1PRS4QLf4a3W', '2025-02-04 15:20:48', '2025-02-06 17:14:18', 3, 3),
(334, 'PS2502-002', 'Japanese Soy Sauce', 'PLN-001  - Johin Extra Soy Sauce', 10, 'PLN-001  - Johin Extra Soy Sauce', 1, '2025-02-06', '1,2,6,9,10,12', '{\"d8182eb95cd6579f9f7c2fa3c533f689.pdf\":\"PLN-001แบบสิ่งพิมพ์_Johin Extra soy sauce (1).pdf\"}', '2030-02-06', 1, 'ใช้งาน', 'MKKisO4vkrpsIK-9Aq6lcr', '2025-02-06 10:04:30', '2025-02-06 10:11:40', 3, 3),
(335, 'PS2502-003', 'Japanese Soy Sauce', 'PLN-002  - Johin Standard Soy Sauce', 10, 'PLN-002  - Johin Standard Soy Sauce', 1, '2025-02-06', '1,2,6,9,10,12', '{\"ccd7507e4aafc6934b5bc22d428aeecd.pdf\":\"PLN-002แบบสิ่งพิมพ์_ฉลาก STANDARD JOHIN 18C (2).pdf\"}', '2030-02-06', 1, 'ใช้งาน', 'CQ01l7onPRByVKLGvngTUD', '2025-02-06 10:07:46', '2025-02-06 10:11:04', 3, 3),
(336, 'PS2502-004', 'Japanese Light Color', 'PLN-003  - Johin Light Color Soy Sauce', 10, 'PLN-003  - Johin Light Color Soy Sauce', 1, '2025-02-06', '1,2,6,9,10,12', '{\"6c1e51e44acaedddd781481d541197cf.pdf\":\"PLN-003แบบสิ่งพิมพ์_JOHIN LIGHT COLOR SOY SAUCE (1).pdf\"}', '2030-02-06', 1, 'ใช้งาน', 'uLasddk7acDfs1bIxy3PNe', '2025-02-06 10:16:51', NULL, 3, 3),
(337, 'PS2502-005', 'Japanese Soy Sauce', 'PLN-018  - Johin Regular Soy Sauce', 10, 'PLN-018  - Johin Regular Soy Sauce', 1, '2025-02-06', '1,2,6,9,10,12', '{\"31c23975cf7f1a9e3fb38e3779fed71d.pdf\":\"PLN-018แบบสิ่งพิมพ์_ฉลากโจฮิน Regular Soy Sauce.pdf\"}', '2030-02-06', 1, 'ใช้งาน', 'GSVz54DfTRrX3RzD99zhoh', '2025-02-06 10:19:14', '2025-02-06 10:19:38', 3, 3),
(338, 'PS2502-006', 'Japanese Soy Sauce', 'PLN-043  - Johin Standard Soy Sauce No.2', 10, 'PLN-043  - Johin Standard Soy Sauce No.2', 1, '2025-02-06', '1,2,6,9,10,12', '{\"efc3ed2d13a3d313d8ec98caceee85ca.pdf\":\"PLN-043แบบสิ่งพิมพ์_standard soy sauce No2.pdf\"}', '2030-02-06', 1, 'ใช้งาน', 'NFQJdwPu96VjCgB3w0pEX4', '2025-02-06 10:23:22', NULL, 3, 3),
(339, 'PS2502-007', 'Chinese Soy Sauce', 'PLN-047  - Johin ซีอิ๊วขาว สูตร 1', 10, 'PLN-047  - Johin ซีอิ๊วขาว สูตร 1', 1, '2025-02-06', '1,2,6,9,10', '{\"2dd6fc45d033d8b9db9ce20ce966d669.pdf\":\"PLN-047แบบสิ่งพิมพ์_Chinese soy sauce (1).pdf\"}', '2030-02-06', 1, 'ใช้งาน', '8g_gebZ4EBsuVeTsx-70dx', '2025-02-06 10:28:57', '2025-02-06 10:29:11', 3, 3),
(340, 'PS2502-008', 'Japanese Soy Sauce', 'PLN-106  - Johin Rich Soy Sauce', 10, 'PLN-106  - Johin Rich Soy Sauce', 1, '2025-02-06', '1,2,6,9,10,12', '{\"b96637460c9d9e5a368c0a4bdb8b530b.pdf\":\"PLN-106แบบสิ่งพิมพ์_JOHIN RICH SOY SAUCE.pdf\"}', '2030-02-06', 1, 'ใช้งาน', 'YE0VgGQZG2F89blo8Mka-b', '2025-02-06 10:36:13', NULL, 3, 3),
(341, 'PS2502-009', 'Japanese Low Sauce', 'PLN-108  - Johin Less Salt Soy Sauce', 10, 'PLN-108  - Johin Less Salt Soy Sauce', 1, '2025-02-06', '1,2,6,10,12', '{\"1829c599d12cf26b3d4942c8acfd6707.pdf\":\"PLN-108แบบสิ่งพิมพ์_JOHIN LESS SALT SOY SAUCE (1).pdf\"}', '2030-02-06', 1, 'ใช้งาน', 'XTqP7pdKxkAymIj6fxvf15', '2025-02-06 10:38:57', NULL, 3, 3),
(342, 'PS2502-010', 'Dark Soy Sauce', 'PLN-138   - Johin ซีอิ๊วดำ สูตร 2', 10, 'PLN-138   - Johin ซีอิ๊วดำ สูตร 2', 1, '2025-02-06', '1,2,6,9,10,12', '{\"440a1a5e6810ba0b546be257bf87f4a0.pdf\":\"PLN-138 แบบสิ่งพิมพ์_Dark soy sauce Formula (1).pdf\"}', '2030-02-06', 1, 'ใช้งาน', 'AAgiDiUr4qMWkVPw1rxP2D', '2025-02-06 10:48:16', NULL, 3, 3),
(343, 'PS2502-011', 'Japanese Gluten Free', 'PLN-155  - Johin Gluten Free soy Sauce', 10, 'PLN-155  - Johin Gluten Free soy Sauce', 1, '2025-02-06', '1,2,6,9,10,12', '{\"83806906b7200901dbbcc7dd51755456.pdf\":\"PLN-155 แบบสิ่งพิมพ์_Gluten free soy sauce (4).pdf\"}', '2030-02-06', 1, 'ใช้งาน', 't4SQH8iYNVLpFGORzoiGPf', '2025-02-06 10:50:32', '2025-02-06 10:51:19', 3, 3),
(344, 'PS2502-012', 'Japanese Soy Sauce', 'WIC-323 Standard Soy Sauce Fairtrade', 1, 'WIC-323 Standard Soy Sauce Fairtrade', 1, '2025-02-06', '', '{\"531e863072e979d2a13e4785eee0e29b.pdf\":\"Spec. Sheet - Standard Soy Sauce FT..pdf\"}', '2027-02-06', 1, 'ใช้งาน', 'ovgoaEeUKXe-zQ9VzTsSYQ', '2025-02-06 11:16:46', NULL, 3, 3);

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
(4, 'อย.', 'อย.', 'สำนักงานคณะกรรมการอาหารและยา (อังกฤษ: Food and Drug Administration - FDA) เป็นส่วนราชการระดับกรม ของประเทศไทย สังกัดกระทรวงสาธารณสุข มีหน้าที่ปกป้องและคุ้มครองสุขภาพประชาชนจากการบริโภคผลิตภัณฑ์สุขภาพ โดยผลิตภัณฑ์สุขภาพเหล่านั้นต้องมีคุณภาพมาตรฐานและปลอดภัย มีการส่งเสริมพฤติกรรมการบริโภคที่ถูกต้องด้วยข้อมูลวิชาการที่มีหลักฐานเชื่อถือได้และมีความเหมาะสม เพื่อให้ผู้บริโภคปลอดภัย ผู้ประกอบการก้าวไกล ระบบคุ้มครองสุขภาพไทยยั่งยืน', '#116D6E'),
(9, 'กฏหมาย ', 'กฏหมายอาหาร ', 'กฏหมายอาหารที่ใช้อ้างอิงการผลิต  Soy sauce/ Sauce/ Vinegar ', '#e69138'),
(10, 'Label Spec', 'แบบฉลากสินค้า', 'แบบฉลากสินค้าของผลิตภัณฑ์', '#a2da21');

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
(2, 'Haccp', 'Hazard Analysis Critical Control Point', 'HACCP คือ มาตรฐานการผลิตที่มีมาตรการป้องกันอันตราย ที่ผู้บริโภคอาจได้รับจากการบริโภคอาหาร โดยประเทศต่าง ๆ สามารถนำแนวทางไปประยุกต์ใช้เพื่อสร้างความมั่นใจในอุตสาหกรรมอาหารทั้งโดยผู้ผลิตและผู้บริโภค ซึ่งหลักการของระบบ HACCP', '#9BABB8'),
(3, 'ISO9001', 'ISO9001', '', '#9900ff'),
(4, 'ISO45001', 'ISO45001', '', '#a64d79'),
(5, 'ISO14001', 'ISO14001', '', '#d5a6bd'),
(6, 'FSSC22000', 'FSSC22000', '', '#9fc5e8'),
(7, 'BRC', 'BRC', '', '#3d85c6'),
(8, 'Organic', 'Organic', '', '#274e13'),
(9, 'Halal', 'Halal', '', '#9900ff'),
(10, 'Kosher', 'Kosher', '', '#0000ff'),
(11, 'Fairtrade', 'Fairtrade', '', '#f1c232'),
(12, 'ISO22000', 'ISO22000', 'ISO22000:2018', '#980000');

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

-- --------------------------------------------------------

--
-- Table structure for table `rawmat`
--

CREATE TABLE `rawmat` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `supplier` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

--
-- Dumping data for table `rawmats`
--

INSERT INTO `rawmats` (`id`, `numbers`, `title`, `description`, `category`, `supplier_name`, `rawmat_name`, `docs`, `expiration_date`, `status`, `status_details`, `ref`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(2, 'RM2308-001', 'ทดสอบชื่อเอกสาร 3', '', 3, 'ทดสอบชื่อผู้ขาย 2', 'ทดสอบชื่อวัตถุดิบ 2', 'null', '2033-08-25', 1, 'ใช้งาน', 'AuzMCeE06BsIoKqUdAYvph', '2023-08-29 16:52:21', NULL, 1, 1),
(3, 'RM2311-001', 'Test Report', 'Test Report ฝาขวด 10 ลิตร', 3, 'Sinpreecha Plastic', 'ฝา', '{\"03450bf16420785886b40d0a0d18d571.pdf\":\"Test Report ฝา 10 L. - Sinpreecha 2.pdf\",\"1a53674ee1d352a6fd09c9e9ad2c07cc.pdf\":\"Test Report ฝา 10 L. - Sinpreecha 3.pdf\",\"3ff23ae52309d02ddf0ad3ba05912d8e.pdf\":\"Test Report ฝา 10 L. - Sinpreecha.pdf\"}', '2024-11-01', 1, 'ใช้งาน', 'WCUSxZTt9ll5Pazjp4DH-A', '2023-11-16 15:05:10', '2023-11-16 15:22:29', 3, 3),
(4, 'RM2311-002', 'Test Report', 'Test Report ขวด PET 10 ลิตร', 3, 'Sinpreecha Plastic', 'ขวด PET 10 ลิตร', '{\"fd8fe34c6af0792bf44e1cef58603f05.pdf\":\"Test Report ขวด 10 L. - Sinpreecha 2.pdf\",\"230a571638d3e30c6fd1e8c1b39a8353.pdf\":\"Test Report ขวด 10 L. - Sinpreecha 3.pdf\",\"3046022bf02a330b3496d3e99fa8b918.pdf\":\"Test Report ขวด 10 L. - Sinpreecha.pdf\"}', '2024-11-01', 1, 'ใช้งาน', 'mNkVktjRoqEi_9GNNDKib6', '2023-11-16 15:24:49', NULL, 3, 3);

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
(2, 'Rawmat Spec, Supplier', 'Supplier Raw Material Specification ', '', '#0079FF'),
(3, 'Test Report', '', NULL, '#FF0060'),
(4, 'Certificate', '', NULL, '#793FDF'),
(5, 'Packing mat Spec, Supplier', 'Supplier Packing Material Specification', '', '#ff9800');

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
(12, 'Miso', 'Miso ', '#ea9999'),
(13, 'แป้ง Organic Cassava', '', '#3d85c6'),
(14, 'Activated Carbon', 'Activated Carbon YL-303', '#274e13'),
(15, 'แอลกอฮอล์', 'Ethanol 95%', '#0000ff'),
(16, 'Lactic Acid', '', '#e80b75'),
(17, 'I + G', '', '#ff0000'),
(18, 'Guar Gum', '', '#11ea29'),
(19, 'Citric Acid', '', '#0ad2f3'),
(20, 'Novation 2300', 'แป้ง', '#9c774b'),
(21, 'M-2000', '', '#3ead7b'),
(22, 'High Fructose', 'Syrup', '#a46e6e'),
(23, 'Moltodextrin', 'Moltodextrin', '#9447e8'),
(24, 'MSG', 'MSG', '#d38330'),
(25, 'Molass', 'Molass', '#cc4125'),
(26, 'Coconut Nectar Syrup', 'Coconut Nectar Syrup', '#ba6711'),
(27, 'โป๊ยกั๊ก / ยี่หร่า / ชะเอมแผ่น', 'เครื่องเทศ', '#2c6d0a'),
(28, 'Seed Koji', 'Seed Koji Starter', '#f4b803'),
(29, 'Dextrose', 'กลูโคส', '#e49a4d');

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
(1, 'ปกติ', '#258757'),
(2, 'ยกเลิก', '#232323'),
(3, 'มีปัญหา', '#d83847'),
(4, 'ไม่มีการซื้อขาย 1 ปี ขึ้นไป', '#fdc10a'),
(5, 'อยู่ในระหว่างการต่ออายุใบ Cert.', '#ea67a7');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `cert` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'ประเภท',
  `details` text COMMENT 'รายละเอียด',
  `color` varchar(45) DEFAULT NULL COMMENT 'สี'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `details`, `color`) VALUES
(1, 'Organic', 'System Organic', '#254b0d'),
(2, 'Original', '', '#a64d79'),
(3, 'Fairtrade', 'System Fairtrade', '#32bff9'),
(4, 'ในประเทศ', 'ในประเทศ Domestic', '#148019'),
(5, 'ต่างประเทศ', 'ต่างประเทศ Abroad', '#DF2E38'),
(6, 'None', 'ไม่ระบุ', '#232323');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thai_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อ-สกุล',
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

INSERT INTO `user` (`id`, `username`, `thai_name`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`, `role`) VALUES
(1, 'admin', 'ผู้ดูแลระบบ', '2tzscTHLNpS0rJlIJx_Uz1qZnvi6yS_q', '$2y$13$rP/SGxCIc7yuoFyQ2ECFIOGnA5aWllE0DsHgGgVMcu8szb6bjfqFO', NULL, 'admin@admin.com', 10, 1689666356, 1701483881, 'SA3gozOob2BBbQR0Ue5t4mJQpoyb0gcp_1689666356', 10),
(2, 'demo', 'ทดสอบระบบ', 'lJsMEFiO-XjqJrVhH2aDcjXyrP0oC0vy', '$2y$13$9cR6h5aFzqkDiaIYP4DQYuywLj.cgAyUBuIexfQNZCqaJQ.T/Zxfi', NULL, 'demo@demo.com', 9, 1689756005, 1698802154, 'sfLH5psKTa0wMf7dH-kiSrkNcSPqn9OD_1689756005', 1),
(3, 'onanong', 'อรอนงค์ ชมภู', '2bj5VmZ1PEwJDerqRsj3fhE8i2zvsVZq', '$2y$13$08zXpjOdJu83tT84JNqebe3SMFVctXSfynLDfss3sFMiveC7tPEUS', NULL, 'chumphu2538@gmail.com', 10, 1689759317, 1698802205, '9NqfkSJcx8KkIodMLNCeH9HLqhOUmcxw_1689759317', 10),
(4, 'phitchai', 'พิชญ์ชัย พิชญ์ชานุวัฒน์', 'yJwBMulOJv3IDmDkCXrdYZ-VMEw_zwLZ', '$2y$13$wGZx2YliuaqG5mjrTzY4AupjPJBT15DBgnkqqj8MiCcwCT6z1PJl.', NULL, 'qc.northernfoodcomplex@gmail.com', 10, 1689759339, 1698802005, '4Zgy1uVGJvXg2nZOAHcFCSj0NK0Ll3Ze_1689759339', 10),
(5, 'prakaiwan', 'ประกายวรรณ เทพมณี', 'y2RYhV3E1NG68CUaa8svzBknRdbCTO79', '$2y$13$EKiWqx3MuCJL6O92lT3sLudaYbESJu6DPi3CGiaU.Z98EWqjAQlc.', NULL, 'prakaiwan4213@gmail.com', 10, 1689759362, 1730266239, '2qNZk71gb01_K-bdCiscD38z36G9exZH_1689759362', 5),
(6, 'sale', 'ฝ่ายขาย', 'EHSvx6uElywR8fG2XRQ_xKE4sups-8cO', '$2y$13$0UZFJxx7tUAPdy972cvXEejPhldI17L0Ld7C3KnSKUk7KTLYVUP0y', NULL, 'sale@nfc.com', 10, 1689759388, 1691648993, '9ZnxmSRzPpvLgxD0MPSamdokpcp_eMul_1689759388', 8),
(7, 'planning', 'ฝ่ายวางแผน', 'JWT4BgIkYF4TIN62mLaKv5iL0uLMn7C9', '$2y$13$g08zQ7xjXISzs99kS2yApuOCRcV6QpMOfdzNAwYY8fP9N96pEuAye', NULL, 'planning@localhost.com', 9, 1689759413, 1698802241, '7xCjBXE9xNLx1gWqKX2LaVex2ah0IWt4_1689759413', 1),
(8, 'production', 'ฝ่ายผลิต', 'FjE8vrSWJ1uVTanpvQJDnpq_OiUySrzg', '$2y$13$Oa3U4rEqDwN8W0ytkDHCjuPw8CW4d44l9tEWbi3N3myBogr4mmzBy', NULL, 'production@localhost.com', 9, 1689759430, 1698802250, 'qNJ-e9RkWlfqvHqmvmSsItU1rlpb_D3j_1689759430', 1),
(9, 'watsara', 'วรรษรา หลวงเป็ง', 'XEPSPmb7Bt0oI_tklPUc5Uh4Jq4HM4Ig', '$2y$13$5iA/KWda5k7mbunRRwdNUOXn62jWJ/Ipoc.CzW3XYr69iVHThV1yC', NULL, 'watsara.nfc@gmail.com', 10, 1690430330, 1722397171, 't1iesBNA9TNHWotQHvGzbLCVhrK6LF9O_1690430330', 8),
(10, 'somsak', 'สมศักดิ์ ชาญเกียรติก้อง', '3tiUcswenYgRTZTfuvfv_Tv4V7BXwAcn', '$2y$13$6IvgfWeP4EAZ1PvsxKGnyOreXLFypVBDAoOTp4wKYVUGqmS7CUsHO', NULL, 'somsak@northernfoodcomplex.com', 10, 1691631165, 1732689853, 'Pj5G3y6R8VeykAb0cyXVIHChtnlpquo9_1691631165', 5),
(11, 'peeranai', 'พีรนัย โสทรทวีพงศ์', 'G3b3XCgv3uFzzly7jDX0cJXzNm45qoUV', '$2y$13$5gM/232mFQdlLwbqiQOdE.n2zbN3cLuDGdhIsTK0USk.ASVILRPZy', NULL, 'peeranai@northernfoodcomplex.com', 10, 1691631423, 1698802383, 'HmjAFfcWByo3VbwpZDD9qeBA-shqds8q_1691631423', 5),
(12, 'theerapong', 'ธีรพงศ์ ขันตา', 'tWXwJZ5JEXbWCN0M-0zpCouAUJcL5BwZ', '$2y$13$WG5mTZIZ4ZcL3BoA/vA/7urFzlU2xQ2g4NU29gJegyCCcIte0TCP.', NULL, 'theerapong.khan@gmail.com', 10, 1691639318, 1698802141, NULL, 1),
(14, 'yosaporn', 'ยศพร พยัคฆญาติ', 'GOI-0AQj0nAYGBIpppuSe-O3IK4OSs2h', '$2y$13$gnj.Vuf7hYLvMcPCesdU4eXqC4GAZR0iwhYbvBcVxlPNnTvB9mmji', NULL, 'ypayakayat@yahoo.com', 10, 1692180393, 1698802389, NULL, 1),
(15, 'sawika', 'สาวิกา พินิจ', 'GOI-0AQj0nAYGBIpppuSe-O3IK4OSs2h', '$2y$13$ggQkc27TiQ2iQSAW6jcr3OpNGzVRjsE5/etsA7BeM5MubC/RwnhP.', NULL, 'sawika_pinit@yahoo.co.th', 10, 1692180393, 1699002924, NULL, 8),
(16, 'premmika', 'เปรมมิกา พินิจ', 'GOI-0AQj0nAYGBIpppuSe-O3IK4OSs2h', '$2y$13$JNF9k6WursfrumEFcQkYCO1aM6Ikced40Zwsa0wIaOtrGDTBM/Y0y', NULL, 'pinit@yahoo.co.th', 10, 1692180393, 1699002964, NULL, 8),
(17, 'charinee', 'ชาริณี จันต๊ะนาเขต', 'wLQMbhfIHnG07ZHdPZA2IGb5JfIWjm37', '$2y$13$jbb8tfUMLQNpU40y65.1yei8N.iKlbQ5JZg7HA6fFABmc7wvDqyjy', NULL, 'charinee@localhost.com', 10, 1698800364, 1698802269, NULL, 9),
(18, 'benjarat', 'เบญจรัตน์ คงชำนาญ', '-WVnwHhiOWQdUJ3KYypIVVJ1WgFO_NUv', '$2y$13$f3BKYKAfTi6borbwY8AxjOMcVfRPZDy8wZM5y24psN0w30b5FSB1W', NULL, 'khongchanan1996@gmail.com', 10, 1698800565, 1736241482, NULL, 9),
(19, 'natthawat', 'ณัฐวัฒน์ วรรณราช', 'Kb6gw6VW_6c9O_CAnGJPnhsX85rF9zyx', '$2y$13$El.F4z5hUULPGAorAABTSObuecQ88VldJxIPZkIT8pRY79tZHuRG2', NULL, 'coi.northernfoodcomplex@gmail.com', 10, 1698800639, 1708485254, NULL, 10),
(20, 'thaksin', 'ทักษิณ อินทรศิลา', 'TZGAEflaZm143CsHlFjJZMMYZdKQeMVE', '$2y$13$BwKpULbKpy7h4gpHinfdJelEu3LEtHGC.mEKhvZWmD1HJlThpFuuq', NULL, 'notethaksin@hotmail.com', 10, 1698800733, 1698800733, NULL, 1),
(21, 'chadaporn', 'ชฎาภรณ์ แก้วคำ', '7HasNWHP_M5-W_fBPDKb1M_0sXyd2Dsc', '$2y$13$O66yoesXcMWn1fNB3AUmiubpNRcH9q/VDv5ARGQT3aMjLU8fIr.7a', NULL, 'kaewkhamchadaporn@gmail.com', 10, 1698801098, 1698801127, NULL, 1),
(22, 'araya', 'อารยา เทพโพธา', 'iOtjB0XK4SiRHsuOwg_vudd0epMz0wHW', '$2y$13$FwNHx5QgPEdvr3fO9TksmOQXoc/YN/fKpbMXvy5ehf/8WBdiMGVnS', NULL, 'araya.thep@gmail.com', 10, 1698801169, 1698801169, NULL, 1),
(23, 'suphot', 'สุพจน์ ช่างฆ้อง', 'vGAi-pbCSZLcDRzbxOZ5w9sPllCdSFQq', '$2y$13$dvgxE11A.6VlEWx2ZF6ODeijXkZI01I2cTcsF30DFG0n5MYoPKioa', NULL, 'changkhong.8777@gmail.com', 10, 1698801231, 1698801231, NULL, 1),
(24, 'suriya', 'สุริยา สมเพชร', 'BACKO9VW3y79pLaoZvOiQtX3OWZzuDQI', '$2y$13$BtJJseMYMycRgZMLsg1Rd.h7cJzilYsTpnyiUdlgxWDK8SwPfXt8S', NULL, 'suriyasompatch@gmail.com', 10, 1698801309, 1698801309, NULL, 1),
(25, 'yotsapon', 'ยศพนธ์ โพธิ', 'wmyXWYgzYvewSqTMmgf9CFDD_ryIM5nl', '$2y$13$SbsFYkqKBTQ3990SGOBnsOOl4Ad7LmnnIZMvz7Now6e/onXWuY70K', NULL, 'yotsapon@localhost.com', 10, 1698801387, 1698802283, NULL, 1),
(26, 'sutahatai', 'ศุทธหทัย ชุูกำลัง', 'LFeQidH3yohyJ3Qc1MOKuZJm27IAZFH0', '$2y$13$Y1SG4f6w03X5g4ku6Rre/OXBYxmLhQBQZLn2p8LLoSYuit.cQMX8u', NULL, 'rd.northernfoodcomplex@gmail.com', 10, 1698801460, 1718772278, NULL, 8),
(27, 'phannipha', 'พรรณ์นิภา พิพัฒน์ธัชพร', 'I4QgffOFLAp2wWgH0d5rBIWF-CCeG_4k', '$2y$13$1WGGnfxnKfgORW2jhudi4e9Nbh0ZhZOgrpXjaWnjba82XZQFwHyhK', NULL, 'purchase.northernfood@gmail.com', 10, 1698801550, 1699003313, NULL, 5),
(28, 'jiraporn', 'จิราภรณ์ กาบแก้ว', 'w0GFJQICSa2Ad9453hYPNUMf6Svm1WdX', '$2y$13$hiVIDOSOelsK3/XPYDH0KOFvgUFHLK9uDkZ814owQSIRvnBw.idFi', NULL, 'planning@northernfoodcomplex.com', 10, 1698801621, 1698801621, NULL, 1),
(29, 'taweekiat', 'ทวีเกียรติ คำเทพ', 'tjJu-rUAKYmyXN6v5wZxaESahe2EYKwx', '$2y$13$829fqk8R5kYhEHoVcozHP.RXSixc9NkkSWQU5X.Vo12E.AUstI9S2', NULL, 'd.taweekiat@gmail.com', 10, 1698801681, 1699003332, NULL, 5),
(30, 'kunrathon', 'กุลธร ดอนมูล', 'qD0mmuOHZ6ZNXs81dppLg3VBB1fQTrcn', '$2y$13$ox0loKGJwrz6bVgn8/MHne1/E8G5AMoTkiqSaVoNpyxGA5cUitIbG', NULL, 'pd03.nfc@gmail.com', 10, 1698801766, 1698801795, NULL, 1),
(31, 'tanawat', 'ธนาวัฒน์ กองพิมพ์', 'ARUenEMSFvE8UHkA8N6Yi8yjZldJIo3D', '$2y$13$KiksaoW4Zjm3hEGFLdTkeO6oLlrF/NJkfaQhOpyhxVx3uf6SPgPLO', NULL, 'nfcproduction22@gmail.com', 10, 1710824153, 1710824267, NULL, 8),
(32, 'nathakorn', 'Nathakorn Pornpitakpan', '5BQCCNBf1JOaXQUGvDsz_-vs9tLKDTmN', '$2y$13$tf9oqM7DnBoZxNYZv2rUXehZr072XLXyoH1uPs.WkRBBFPUAIAV76', NULL, 'sale-export2@northernfoodcomplex.com', 10, 1714451241, 1714451241, NULL, 8),
(33, 'wichuda', 'wichuda', 'FkwkgRf4mPPGBdxtvoXdb6Q7Mw2wohgg', '$2y$13$CalubEqxHs6JUBXCKcTWjengsttgpgl0G6MXcgkW7At5RzZ4yTn2m', NULL, 'wichuda1234intawong@gmail.com', 10, 1718699189, 1718699189, NULL, 9),
(34, 'nithiwadee', 'nithiwadee', 'J8_CCOfVHVGnQjX4w-YujuySydOrsK_k', '$2y$13$7AtV.0FOF/odg5zlxylmb.ZB1/RL/n019z2Gk1eIv6rEruXgR3zYK', NULL, 'nithiwadee', 10, 1718766697, 1718766697, NULL, 9),
(35, 'khajornsak', 'ขจรศักดิ์ สุภรัตนกูล', 'sS3XIe5YzH4TtTLSIvsmZXQJT2f2zeHN', '$2y$13$diizEzo7bvX5zyv8rqDWTuXz3d0yLX3ZvWlR5aWhlPvfcJ1NMZq8m', NULL, 'operationdirector@northernfoodcomplex.com', 10, 1720061206, 1720061833, NULL, 8),
(36, 'arun', 'อรุณ น้อมสูงเนิน', 'pS04OmCVq20TwoHIAsW6ynnD3irDZzP5', '$2y$13$sGH60FeMNLP151nK/nGQre3HyNMrjgSVRcGm0CXpakeTKYRXe/jgW', NULL, 'nfcpdsuper1@gmail.com', 10, 1720061259, 1720061259, NULL, 8),
(38, 'chukiat', 'ชูเกียรติ ลีลาธนพงศ์พันธุ์', 'JF3ndbco2JPfAfFMd-WRRzMOoFFxBNWp', '$2y$13$ue0KBGnJXtBfZQRzX.ht6utwd5seArFBuWaxpJQFHI8nhKIh1Z7HW', NULL, 'nfcproduction@gmail.com', 10, 1720061339, 1720061339, NULL, 8),
(39, 'supawish', 'ศุภวิชญ์ จำลอง', 'YnTxsCq9zkOtTUZxpqyWkJp8wVw9DY5Q', '$2y$13$cy6oZNOBEP1W6PfqsjPcAOadEwjg8l00CzTIwdHgUSJgiRMOiY8Cu', NULL, 'gm@northernfoodcomplex.com', 10, 1726800806, 1726800806, NULL, 8),
(41, 'jakkrit', 'จักรกฤษณ์ นับเนืองทรัพย์', 'cXm-tqrN-OJfqc4slUY15oYklDLNv_H3', '$2y$13$vXQ86NOYEnPZ/FD4gRctUO5l5x9mRKzMv1ZnwUZaUcvDRkE3fwkSa', NULL, 'nfcproduction222@gmail.com', 10, 1727765234, 1727765234, NULL, 8),
(42, 'sirintra', 'ศิรินที่ ยิ้มฉาย', 'MFI_lED1wvdu_y4TJzBSAfQp6CNFKwDs', '$2y$13$D/BzZ.aZeLJhLYMLDDL9zuEANv/SYO8wdwdovI4dVvEa46fEyOG4i', NULL, 'qmr.northernfoodcomplex@gmail.com', 10, 1729751824, 1729751824, NULL, 9),
(43, 'supanee', 'supanee', 'Vpa-7d3hI9bcZu8ka6Zg-F0W_X38PHWs', '$2y$13$uUZNoOjwGN17juH2dyKrHe7oxd/XdFiZ4TDDTPVHMzCjq1CXup2Eq', NULL, 'sale-export@northernfoodcomplex.com', 10, 1733890650, 1733890650, NULL, 8);

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
-- Indexes for table `cert`
--
ALTER TABLE `cert`
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
-- Indexes for table `occupier`
--
ALTER TABLE `occupier`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `product_spec`
--
ALTER TABLE `product_spec`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_status`
--
ALTER TABLE `product_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rawmat`
--
ALTER TABLE `rawmat`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `raw_material`
--
ALTER TABLE `raw_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cert`
--
ALTER TABLE `cert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `occupier`
--
ALTER TABLE `occupier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_iso`
--
ALTER TABLE `product_iso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_spec`
--
ALTER TABLE `product_spec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_status`
--
ALTER TABLE `product_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rawmat`
--
ALTER TABLE `rawmat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rawmats`
--
ALTER TABLE `rawmats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rawmat_category`
--
ALTER TABLE `rawmat_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rawmat_status`
--
ALTER TABLE `rawmat_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `raw_material`
--
ALTER TABLE `raw_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

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
