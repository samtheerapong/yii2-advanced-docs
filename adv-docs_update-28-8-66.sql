-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 28, 2023 at 02:38 PM
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
('202307-???', 24, 1, 1690343279),
('202308-???', 99, 1, 1693022443),
('5bce8a536749f4b5ebc03a256521426b', 24, 1, 1690343279),
('cb6105f484ffd5639fbc25fa3de20634', 97, 1, 1693022443),
('P202308-???', 1, 1, 1692439865),
('PS2308-???', 6, 1, 1693214190);

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
(1, '202308-042', 'FSSC 22000 V.5.1', 'Food Safety System', '', '2025-01-05', 60, '2023-08-19 10:58:36', '2023-08-22 10:03:24', 3, 1, 1, 8, 1, 4, 1, 'ใช้งาน', 'a-LkozdM5lGxVTzRvIN8-9', '{\"1e28e3b16e84080bee9bd58e192c9a15.pdf\":\"FSSC22000 EXP05JAN2025.pdf\"}'),
(2, '202308-043', 'Organic Standard', 'CERES Organic Standard (CE-OS) , Product List', '', '2023-10-31', 60, '2023-08-19 13:43:06', '2023-08-22 10:03:15', 3, 1, 1, 8, 1, 1, 1, 'ใช้งาน', 'JmsCgzncLa4nW_d9yBzrvG', '{\"2a52d15a178d1da5f3758eb121c3c27c.pdf\":\"CERES_Produkteliste.pdf\",\"5eb2a930f15aaed6fc3165029a3dd27d.pdf\":\"CERES_Zertifikat_v4.pdf\",\"fffc112f5f1f3f14e33d14a0a3b234ac.pdf\":\"2022 Northern Food CERES EU cert ext 306305_2023.08.10#1.pdf\"}'),
(4, '202308-045', 'Fair Trade', 'Certificate and License', '', '2025-09-02', 60, '2023-08-22 09:45:27', '2023-08-22 09:59:43', 3, 3, 1, 8, 1, 3, 1, 'ใช้งาน', '9iNq60c0iI9p5RclcydbFJ', '{\"4cd3c75aee10a65e697c36cda50dd85f.pdf\":\"CERT_Certificate  Fairtrade 2021-2025.pdf\",\"40c7eab90162b646de4fee6f941236aa.pdf\":\"LicensedProducts.pdf\"}'),
(5, '202308-046', 'GHPs HACCP', '', '', '2024-03-07', 60, '2023-08-22 09:48:20', NULL, 3, 3, 1, 8, 1, 4, 1, 'ใช้งาน', '36jXG8TSMtw2utwHMTQ4UN', '{\"25708ba051424b5d4cfb501ba55cae43.pdf\":\"GMP  HACCP  Exp2024.pdf\"}'),
(6, '202308-047', 'ISO 9001:2015', 'ใบ cer หมดอายุ  ใน ปี 2025 \r\nแต่จะต้องทำการ Audit  ทุกปี โดย CB', '', '2025-10-17', 60, '2023-08-22 09:52:24', '2023-08-26 09:24:59', 3, 5, 1, 8, 1, 4, 1, 'ใช้งาน', '69v0ieEPXktkydzXPzpqjU', '{\"8384631f3b0ff4f5e13806ae781fac21.pdf\":\"ISO9001 2015  Exp 10 2025  EN (1).pdf\",\"bc098c9a178798211de44f838bbca6e8.pdf\":\"ISO9001 2015  exp 2025 TH.pdf\"}'),
(7, '202308-048', 'ISO 14001:2015', 'ใบ  cer  หมดอายุ  17/10/2025 \r\nมีการ Audit ทุกปี โดย CB ', '', '2025-10-17', 60, '2023-08-22 09:54:27', '2023-08-26 09:23:38', 3, 5, 1, 8, 1, 4, 1, 'ใช้งาน', 'D43dRpLFN3Mfmzi18ePLb-', '{\"3241ca3d0afa9dc4b3b8dc16d2985fc5.pdf\":\"ISO14001  Exp 10 2025 EN (1).pdf\",\"8e936e07d0c994b385447ea55b11b3a2.pdf\":\"ISO14001 Exp 10 2025 TH.pdf\"}'),
(8, '202308-049', 'ISO 22000:2018', '', '', '2024-03-07', 60, '2023-08-22 09:56:01', NULL, 3, 3, 1, 8, 1, 4, 1, 'ใช้งาน', 'pDCBZ-yWgVjvArgZr5dX1o', '{\"ef359d6191a146973de8b75835646ea6.pdf\":\"ISO22000 (2).pdf\"}'),
(9, '202308-050', 'ISO 45001:2018', 'ใบ  cer หมดอายุปี 2025 \r\nทุกปี มีการ Audit โดย CB', '', '2025-10-17', 60, '2023-08-22 09:58:13', '2023-08-26 09:22:30', 3, 5, 1, 8, 1, 4, 1, 'ใช้งาน', 'p06YbmjLKp0wc_Ap9dYIb-', '{\"75b094b0a70809018aa665eed32ae74d.pdf\":\"ISO45001 Exp10 2025 EN (1).pdf\",\"63a3354aee38f181926c32c81113f9ba.pdf\":\"ISO45001 EXP10 2565  TH.pdf\"}'),
(10, '202308-051', 'VALID-IT Non-GM PROTOCOL', '', '', '2024-04-30', 60, '2023-08-22 10:03:16', NULL, 3, 3, 1, 8, 1, 5, 1, 'ใช้งาน', 'IqnXq4LC47reFAcI6qEbsr', '{\"03a174aad43c729d28aeaa0c0d835aee.pdf\":\"Northern Food Complex Co Ltd - 146 (2) (2).pdf\"}'),
(11, '202308-052', 'TLS 8001:2020', '', '', '2025-01-16', 60, '2023-08-22 10:08:41', NULL, 3, 3, 1, 8, 1, 4, 1, 'ใช้งาน', 'k8o3WzJp-rL7Zt_PNrGhOi', '{\"48ddb08df9be1888f8c723962c9fda54.pdf\":\"scan-มรท.8001-2563 (2565-2568)-(Eng).pdf\"}'),
(12, '202308-053', 'HALAL', '', '', '2023-07-31', 60, '2023-08-22 10:25:47', NULL, 3, 3, 1, 8, 1, 4, 3, 'รอใบ CER ใหม่', 'epO0aPt4LtaJb_YVnuUTB3', '{\"d0c5f855b201034aaa869fead18e9d32.pdf\":\"scan-Halal 2565-2566.pdf\"}'),
(13, '202308-054', 'Organic EU', '', 'Kritsanakorn Organic Farm Co., Ltd.', '2023-12-22', 60, '2023-08-22 13:19:56', '2023-08-25 08:15:02', 3, 1, 7, 8, 2, 1, 1, 'ใช้งาน', 'L-HmJpu2i6tV1cPMXN1dyk', '{\"4cabc1963341ecec8fb3e63177abec36.pdf\":\"Cert_K-organic EU2023.pdf\"}'),
(15, '202308-056', 'Organic USDA-NOP', '', 'Kritsanakorn Organic Farm Co., Ltd.', '2023-12-23', 60, '2023-08-22 13:28:13', '2023-08-25 08:14:57', 3, 1, 7, 8, 2, 1, 1, 'ใช้งาน', '9uVeXcvsDXgGHtobpmrsXQ', '{\"d642754fdc7ec3bed60b390900c30ad6.pdf\":\"Cert_K-organic USDA2023.pdf\"}'),
(16, '202308-057', 'Organic Standard', '', 'Raitong Organics Farm Co., Ltd.', '2022-06-30', 60, '2023-08-22 13:36:39', NULL, 3, 3, 2, 8, 2, 1, 2, 'ไม่ใช้งาน', 'O7cd03IXbaTPiPFsACYqBC', '{\"54ee980f2f55a9179e85fb1dcb16190a.pdf\":\"ใบ cer  Organic ไร่ทองEXP 30 SEP 2022.pdf\"}'),
(17, '202308-058', 'Organic Standard', '', 'Raitong Organics Farm Co., Ltd.', '2023-06-30', 60, '2023-08-22 13:38:22', NULL, 3, 3, 2, 8, 2, 1, 2, 'ไม่ใช้งาน', 'E4Akvk4w6NUptjARIdeF56', '{\"e2e135786d5fc571ddd31dc03c669ab4.pdf\":\"Organic Certificate 2022 -Raitong Organics Farm EXP 300623.pdf\"}'),
(18, '202308-059', 'Organic Standard', '', 'Raitong Organics Farm Co., Ltd.', '2024-06-30', 60, '2023-08-22 13:40:22', NULL, 3, 3, 2, 8, 2, 1, 1, 'ใช้งาน', 'dY_RTmdoVzIlr_20xQ87pG', '{\"8a7d6dc8191f3cb23d2583263e4b6260.pdf\":\"Certificate-Raitong 2023.pdf\"}'),
(19, '202308-060', 'Fair Trade', 'Fair trade USA', 'Raitong Organics Farm Co., Ltd.', '2024-12-14', 60, '2023-08-22 13:44:37', NULL, 3, 3, 2, 8, 2, 3, 1, 'ใช้งาน', '9RAmvnwZwo71BAlfqqLm7u', '{\"d8369c66ab39b90be4f41b6444e65052.pdf\":\"2022-2024 FT. USA Trader Certificate (1).pdf\"}'),
(20, '202308-061', 'Organic Standard', '', 'Siam Organic Food Products Co., Ltd.', '2024-05-25', 60, '2023-08-22 13:56:34', NULL, 3, 3, 4, 8, 2, 1, 1, 'ใช้งาน', 'kzxuqOHNgxYW_ufIiJiFzk', '{\"4a9fbd2428c02b822bbcdce8c68538e5.pdf\":\"2023_Siam Organic Food Products_Organic Cert._EUJ34VCC.pdf\"}'),
(21, '202308-062', 'Organic USDA-NOP', '', 'Siam Organic Food Products Co., Ltd.', '2024-01-28', 60, '2023-08-22 14:00:23', NULL, 3, 3, 4, 8, 2, 1, 1, 'ใช้งาน', 'CmkUcd9v-VMRs6Jnl22288', '{\"aa60ec9adb64c88865688e43fe9dcff7.pdf\":\"2023_Siam Organic Food Products_Organic Cert_NPJ34VCC.pdf\"}'),
(22, '202308-063', 'Organic EU', '', 'Organic Fairtrade Sisaket Community Enterprise', '2024-04-11', 60, '2023-08-22 14:34:15', '2023-08-25 08:16:37', 3, 1, 2, 8, 2, 1, 1, 'ใช้งาน', '7ckaOi9ZiWn_5pJFYcY9dJ', '{\"3b7f0f76cdb042ec706697e75e5d6da0.pdf\":\"CER CU 891838EU-01.2023 Srisaket.pdf\"}'),
(23, '202308-064', 'Organic EU+NOP', 'Organic EU + Organic USDA', 'Gebana', '2024-03-31', 60, '2023-08-22 16:21:56', '2023-08-25 08:16:33', 3, 1, 2, 8, 2, 1, 1, 'ใช้งาน', 'a8DDlXgTzkUpBNHTPa-kTV', '{\"bd61ec4b5ddf8424d45a100dccd6847b.pdf\":\"EU + NOPCertificado Cataratas Gebana.ไฟล์รวม.pdf\"}'),
(24, '202308-065', 'Organic Production and Labelling of Organic Products', '', 'La Compagnie Du Riz', '2024-03-31', 60, '2023-08-22 16:29:48', NULL, 3, 3, 1, 8, 2, 1, 1, 'ใช้งาน', 'D5prtj_PgpoaWbuIdPWtmU', '{\"9dd447b5a5d038ff50d8a3009c468d8d.pdf\":\"CER-OPT59245-C255893 31.04.2024.pdf\"}'),
(25, '202308-066', 'Kosher ', 'Kosher', '', '2024-05-01', 60, '2023-08-23 10:07:18', NULL, 5, 5, 1, 8, 1, 5, 1, 'ใช้งาน ', 'gx9JUrK8PJYTRrosrtOYKK', '{\"fb6c724d2e60f1cfa83ae1f9300aa605.pdf\":\"PROJ-00004736 - Northern Foods -  Kosher til May 24.pdf\"}'),
(26, '202308-067', 'Organic EU', 'Organic EU', 'BAN UM-SANG Rice', '2024-06-03', 60, '2023-08-23 10:55:09', '2023-08-23 11:04:56', 5, 5, 7, 8, 2, 1, 1, 'ใช้งาน ', 'qNAWp02W0M4oeUM0BENpNh', '{\"92685a5999d0d310bc92841e5008d481.pdf\":\"EU Organic Certificate exp 03062024.pdf\"}'),
(27, '202308-068', 'Organic NOP', 'Organic NOP', 'BAN UM-SANG Rice', '2024-01-24', 60, '2023-08-23 10:58:24', '2023-08-23 11:04:35', 5, 5, 7, 8, 2, 1, 1, 'ใช้งาน ', 'zFwmDlNA-TJ6tKiAEdZifH', '{\"ef11d8c25f6977b157e94d062e66afd4.pdf\":\"NOP-Cor Certificate exp24012024.pdf\"}'),
(28, '202308-069', 'Fairtrade ', 'Fairtrade ', 'BAN UM-SANG Rice', '2026-08-16', 60, '2023-08-23 11:06:35', NULL, 5, 5, 7, 8, 2, 3, 1, 'ใช้งาน ', 'UBVwoA3vKE2P2KZ1Fy2f7b', '{\"924796af21fac40ebd591dcc2cbf2ba8.pdf\":\"CERT_Certificate Fairtrade FLOCERT 2022-2026_Ban Um Sang ID 27806 (1)  exp 16082026.pdf\"}'),
(29, '202308-070', 'Organic EU', 'Organic EU', 'BAN UM-SANG Rice', '2022-06-01', 60, '2023-08-23 11:12:19', '2023-08-24 16:05:00', 5, 5, 7, 8, 2, 1, 2, 'ไม่ใช้งานเอกสารนี้แล้ว', 'iQEm0IRXKGaDWeAaCb2Jtb', '{\"88ba432ca85aae7c64e9f4a75f8f3bbf.pdf\":\"EU Certificate 2021 Exp 01062022.pdf\"}'),
(30, '202308-071', 'Organic NOP', 'Organic NOP', 'BAN UM-SANG Rice', '2022-01-20', 60, '2023-08-23 11:13:44', '2023-08-24 16:05:05', 5, 5, 7, 8, 2, 1, 2, 'ไม่ใช้งานเอกสารนี้แล้ว', 'OtzQC26Cgwavx6r6-JNQyG', '{\"c0eaca4a38a84cd83556d9e688a5c0ae.pdf\":\"NOP Certificate 2021 exp20012022.pdf\"}'),
(31, '202308-072', 'Fairtrade ', 'Fairtrade ', 'BAN UM-SANG Rice', '2022-05-31', 60, '2023-08-23 11:15:55', '2023-08-24 16:05:08', 5, 5, 7, 8, 2, 3, 2, 'ไม่ใช้งานเอกสารนี้แล้ว', 'zbO27cNK9Z00-CMt1mNgx6', '{\"9a48e85d8b49a0716cc993bd338affa1.pdf\":\"CERT_Certificate (1).pdf\"}'),
(32, '202308-073', 'Organic EU', 'Organic EU', 'Natural & Premium ', '2023-07-17', 60, '2023-08-23 12:01:46', '2023-08-24 09:16:34', 5, 5, 8, 8, 2, 1, 3, 'รอใบ   cer  ฉบับใหม่ ', 'v1aL0440IG_Sp1XwJgQw9U', '{\"6a4614ee583545992ced4b2b34b7f3f0.pdf\":\"list ใบ cer  Organic.pdf\",\"27e0d35d6c36d6ad127b13f256b9ad8c.pdf\":\"Organic EU regulation Certificate _Natural and premium food Co,Ltd  exp 17072023.pdf\"}'),
(33, '202308-074', 'Organic NOP', 'Organic NOP', 'Natural & Premium ', '2023-05-19', 60, '2023-08-23 12:03:05', '2023-08-24 09:16:58', 5, 5, 8, 8, 2, 1, 3, 'รอใบ cer  ฉบับใหม่ ', 'GsVH-EdjAqpNg0BG2MVnvz', '{\"4835504b53f9f816214920fade6c7ed1.pdf\":\"list ใบ cer  Organic.pdf\",\"06ee6c31dae6210fcb0c2040be9f2684.pdf\":\"Organic NOP USDA regulation Certificate_Natural and premium food Co,Ltd exp 19052023.pdf\"}'),
(34, '202308-075', 'Test report Soy Sauce (heavy metal/ Aflatoxin) ครั้งที่ 1  2023 ', 'Test report Soy Sauce (heavy metal/ Aflatoxin)', '', '2024-05-13', 60, '2023-08-23 12:07:32', '2023-08-23 13:40:32', 5, 5, 9, 7, 1, 2, 1, 'ใช้งาน ', 'k2IOgSUAXe83goeThnardM', '{\"0425e8e1322dbdffa036500d34ddd1d8.pdf\":\"Soy sauce Part 1 2023.pdf\"}'),
(35, '202308-076', 'Test report Sauce (heavy metal/ Aflatoxin) ครั้งที่ 1  2023', 'Test report Sauce (heavy metal/ Aflatoxin)', '', '2024-05-13', 60, '2023-08-23 12:09:07', '2023-08-23 13:40:59', 5, 5, 10, 7, 1, 2, 1, 'ใ้ชงาน ', 'Iw56manw7hZhqwR7735eYr', '{\"016763c0362c4ed5a4a303b3f1fda318.pdf\":\"Sauce  part 1  2023.pdf\"}'),
(36, '202308-077', 'Test report Sauce ( Micro) ครั้งที่ 1 2023 ', 'Test report Sauce ( Micro)', '', '2024-05-20', 60, '2023-08-23 12:10:47', '2023-08-23 13:43:10', 5, 5, 10, 7, 1, 2, 1, 'ใช้งาน ', 'E7UgTp3XDfswCYnEn21yjH', '{\"86514bfdfb3e9874ea932801483a0920.pdf\":\"Micro sauce   2023.pdf\"}'),
(37, '202308-078', 'Test report Soy Sauce (micro) ครั้งที่ 1  2023', 'Test report Soy Sauce (micro)', '', '2024-04-20', 60, '2023-08-23 12:14:22', '2023-08-23 13:42:25', 5, 5, 9, 7, 1, 2, 1, 'ใช้งาน', 'He0JeGvPf6xSm3cMqA6xsr', '{\"7dfa9b874b8786ede247ddfdff135e56.pdf\":\"Micro soy sauce 2023.pdf\"}'),
(38, '202308-079', 'Test report Melamine ครั้งที่ 1 2023  ', 'Test report Melamine  ', '', '2024-03-10', 60, '2023-08-23 12:18:37', NULL, 5, 5, 1, 7, 1, 2, 1, 'ใช้งาน ', 'Th084SgkIAsBOYfIHCvXIn', '{\"dc15ec0e138fbbad2edaed70d8ae3950.pdf\":\"Melamine part1  2023.pdf\"}'),
(39, '202308-080', 'Test report MCPD ครั้งที่ 1 2023  ', 'Test report MCPD ', '', '2024-03-13', 60, '2023-08-23 12:27:04', NULL, 5, 5, 1, 7, 1, 2, 1, 'ใช้งาน ', 'Ff82E8Tk05ag2SUERm5obb', '{\"b59a65040f9e6c38165ee4c3aae5b0fa.pdf\":\"MCPD  Soy Sauce  2023.pdf\"}'),
(40, '202308-081', 'Test report Allergen (koikuchi) 2023', 'Test report Allergen (koikuchi)  สินค้ากลุ่มที่ wheat เป็นส่วนประกอบ ', '', '2024-03-10', 60, '2023-08-23 13:18:17', '2023-08-23 13:22:14', 5, 5, 1, 7, 1, 2, 1, 'ใช้งาน ', 'xFbVSMZV-qHwScCpQsI44I', '{\"99b67f19e93e7d629443e2ffb5269233.pdf\":\"Allergen in Ko 2023.pdf\"}'),
(41, '202308-082', 'Test report Allergen (KOR) 2023', 'Test report Allergen (KOR)   กลุ่มสินค้าที่มี  Rice / Organic Rice เป็นส่วนประกอบ ', '', '2024-03-10', 60, '2023-08-23 13:21:28', NULL, 5, 5, 1, 7, 1, 2, 1, 'ใช้งาน ', 'PDw67rm_ePwnu7b-IMlOey', '{\"8dce8edb5d38e8d36a31b05ebd66d3e1.pdf\":\"Allergen in KOR 2023.pdf\"}'),
(42, '202308-083', 'Test report  Sorbic in soy sauce 2023 ', 'Test report  Sorbic in soy sauce 2023 ', '', '2024-03-10', 60, '2023-08-23 13:23:39', '2023-08-23 13:41:38', 5, 5, 9, 7, 1, 2, 1, 'ใช้งาน ', 'DGzBR5m_6_FB7y7IXyWO_U', '{\"afe60e9800f1a1d8542e24a376f50ef7.pdf\":\"Sorbic in Soy sauce 2023.pdf\"}'),
(43, '202308-084', 'Test report  Sorbic in sauce 2023 ', 'Test report  Sorbic in sauce 2023 ', '', '2024-03-10', 60, '2023-08-23 13:25:03', '2023-08-23 13:42:49', 5, 5, 10, 7, 1, 2, 1, 'ใช้งาน ', '1bOfscU-4Zu4nkKsMomphl', '{\"86e8453c40bcf4640c2f1c33e1bdb945.pdf\":\"Sorbic in sauce  2023.pdf\"}'),
(44, '202308-085', 'Test report  GMOs  in  soy sauce 2023 ', 'Test report  GMOs  in  soy sauce 2023 ', '', '2023-10-18', 60, '2023-08-23 13:26:41', NULL, 5, 5, 1, 7, 1, 2, 1, 'ใช้งาน ', 'G8ss3pGJjUUuJ7UuNQA356', '{\"381001526ae7eb9218a13c094f264e30.pdf\":\"GMOs   Soy Sauce &MISO 2022.pdf\"}'),
(45, '202308-086', 'Test report Positive list 2023 ', 'Test report Positive list 2023 ', '', '2024-05-17', 60, '2023-08-23 13:28:14', NULL, 5, 5, 1, 7, 1, 2, 1, 'ใช้งาน ', 'myBVnrTiFv5YJ3qFNCxgC9', '{\"f1e7acbb1b42d0836868d65eb5f5d94b.pdf\":\"positve list รวม.pdf\"}'),
(46, '202308-087', 'Test report Sulfur dioxide   2023 ', 'Test report Sulfur dioxide   2023 ', '', '2024-03-10', 60, '2023-08-23 13:30:16', NULL, 5, 5, 1, 7, 1, 2, 1, 'ใช้งาน ', 'n_qc81KGEQhByIRCgS9uWj', '{\"75e44feae9ebaeb7af67bc2118afa3bb.pdf\":\"SO2   in  Soy Sauce 2023.pdf\"}'),
(47, '202308-088', 'Test report Vinegar  (Heavy Metal) 2023 ', 'Test report Vinegar  (Heavy Metal)  ', '', '2024-03-15', 60, '2023-08-23 13:32:18', '2023-08-23 13:43:54', 5, 5, 11, 7, 1, 2, 1, 'ใช้งาน ', '4omqGs6JZaL_HaIfufYfH_', '{\"3393efb951dbfbf24656331097ea2be7.pdf\":\"organic Rice Vineagr  2023.pdf\"}'),
(48, '202308-089', 'Test report  (ethanol/ So2) in Vinegar  2023', 'Test report  (ethanol/ So2) in Vinegar  2023', '', '2024-03-16', 60, '2023-08-23 13:33:55', '2023-08-23 13:44:14', 5, 5, 11, 7, 1, 2, 1, 'ใช้งาน', 'b2WHp1Ypl99uj-veIscx2n', '{\"7bc6cb124585e8b62dcbbfb24fa1abbc.pdf\":\"Ethanol    So2  Organic vinegar 2023.pdf\"}'),
(49, '202308-090', 'Test report (Free Mineral) in Vinegar  2023 ', 'Test report (Free Mineral) in Vinegar  2023 ', '', '2024-03-16', 60, '2023-08-23 13:35:55', '2023-08-23 13:41:16', 5, 5, 11, 7, 1, 2, 1, 'ใช้งาน ', 'Jr0zjF6K18mU9FUc-VnEYi', '{\"63faf1b92a0ed4608958c58abfa3c1f3.pdf\":\"Free Mineral  Vinegar 2023.pdf\"}'),
(50, '202308-091', 'Test report (Aflatoxin /  Heavy metal)  miso 2023', 'Test report miso 2023', '', '2024-06-24', 60, '2023-08-23 13:49:24', NULL, 5, 5, 12, 7, 1, 2, 1, 'ใช้งาน ', '5fR_gaWGX626r7Esqowk-_', '{\"da40de2e3313c622c4937ec16852fe37.pdf\":\"ผลตรวจรวม MISO ประจำปี  2023.pdf\"}'),
(51, '202308-092', 'Test report (Micro Pas Miso) 2023 ', 'Test report (Micro Pas Miso) 2023 ', '', '2024-06-29', 60, '2023-08-23 13:51:01', NULL, 5, 5, 12, 7, 1, 2, 1, 'ใช้งาน ', 'JG0NQZgVzmWTNSerYPjp_9', '{\"abf4fd8d7f84bda1e25de654a9c8cf4b.pdf\":\"Micro  Pas miso 2023.pdf\"}'),
(52, '202308-093', 'Test report (micro) Un pasteurize Miso  2023 ', 'Test report (micro) Un pasteurize Miso  2023 ', '', '2024-06-29', 60, '2023-08-23 13:53:11', NULL, 5, 5, 12, 7, 1, 2, 1, 'ใช้งาน ', 'VJiiPfsmOs07hl1XCDyvhj', '{\"8d3e74028236728c1fc18def041eacc4.pdf\":\"Micro  Unpas miso 2023.pdf\"}'),
(53, '202308-094', 'Audit report  Intertek ( FSSC22000)    2022', 'Audit report  Intertek ( FSSC22000)', '', '2024-03-28', 60, '2023-08-23 14:30:47', '2023-08-26 08:50:37', 5, 5, 1, 3, 1, 2, 2, 'เป็นรายงานจากการ   Audit ระบบ   FSSC22000  ของปี 2022 \r\nสามารถนำผลไปใช้งาน กรณี ลูกค้าขอได้', 'YYsKPOAdxqezq3JE8x-zVF', '{\"182742480169980c22b95ad2fcfa1e41.pdf\":\"FSSC22000 ปี 2565  ACTY-2022-535993  report.pdf\"}'),
(54, '202308-095', 'Audit report  Intertek ( ISO22000)    2022', 'Audit report  Intertek ( ISO22000)    2022', '', '2024-03-03', 60, '2023-08-23 14:34:03', '2023-08-26 08:52:42', 5, 5, 1, 3, 1, 2, 2, 'เป็นรายงานผลการ Audit ระบบ ISO22000   ของปี 2022 \r\nสามารถส่งไฟล์ให้ลูกค้าได้ กรณีร้องขอผลการตรวจ ', 'taKPQ7qO7XmoB1OH3DuTRO', '{\"85bc10ec6487894b41096a3e0e80de22.pdf\":\"AuditSummaryDraft-ENG_CMPY-082012_ACTY-2021-463845.pdf\"}'),
(55, '202308-096', 'Audit report  Intertek ISO9001 / ISO 45001/ISO14001    2022', 'Audit report  Intertek ISO9001 / ISO 45001/ISO14001    2022', '', '2023-09-20', 60, '2023-08-23 14:53:21', '2023-08-26 09:19:30', 5, 5, 1, 3, 1, 2, 2, 'เป็นรายงานผลการ Audit report ระบบ ISO9001 / ISO 45001/ISO14001  ของปี  2022\r\nสามารถนำผลไปใช้งาน กรณี ลูกค้าขอได้', 'GhE8Os_5ZAcOzgIZ08n-_s', '{\"87d381a39f149e9a79230f95f42b9165.pdf\":\"Audit report ISO9001  ISO14001 ISO45001 date 20 092022.pdf\"}'),
(56, '202308-097', 'HALAL', '', 'Siam Organic Food Products Co., Ltd.', '2024-06-24', 60, '2023-08-26 11:00:43', NULL, 3, 3, 1, 8, 2, 4, 1, 'ใช้งาน', 'PW2YHsYM5EFu5E-Cn2fW2l', '{\"f1d12997bbc9ece9af1d2437d5e19c90.pdf\":\"HALAL 2023 (1).pdf\"}');

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
(1, 'PS2308-000', 'Extra soy sauce', 'Japanese Soy Sauce ', 1, 'Extra soy sauce', NULL, '2023-03-14', '1,2', '{\"cd3891c6673c43c04756e4e3f25d9a81.pdf\":\"wic- 303 Extra Soy Sauce 14032023.pdf\"}', '2024-03-14', 1, 'ใช้งาน ', '5wed3exfI2iKcs_lAaC9iL', '2023-08-24 15:01:46', '2023-08-28 16:55:53', 1, 3),
(2, 'PS2308-001', 'Extra soy sauce', 'Japanese Soy Sauce', 2, 'Extra soy sauce', 1, '2023-06-16', '1,2', '{\"fe58b3880545ab75ca67f7a37778a1b0.pdf\":\"process Flow  Extra  soy sauce.pdf\"}', '2024-06-16', 1, 'ใช้งาน ', 'kTRBr5nI4ggCBSbIKhRTiC', '2023-08-24 15:21:15', '2023-08-28 17:02:55', 1, 3),
(3, 'PS2308-002', 'Extra soy sauce', 'Extra soy sauce', 4, 'Extra soy sauce', NULL, '2004-09-28', '1,2', '{\"384fac0826ed0f2a76febf3d633b24db.pdf\":\"อย.extra  Soy Sauce.pdf\"}', '2034-08-28', 1, 'ใช้งาน ', 'nujZxLia9c0Y4cDTZIR6G1', '2023-08-24 15:22:24', '2023-08-28 15:56:58', 1, 5),
(4, 'PS2308-003', 'Extra soy sauce', ' Japanese Extra soy sauce', 3, 'Extra soy sauce', NULL, '2009-02-16', '1,2', '{\"2996c378f4c225c64535b1e28ffa5cba.pdf\":\"Nutri extra.pdf\"}', '2034-02-16', 1, 'ใช้งาน ', '_tzT_MWHjEvRhPTQ300hmE', '2023-08-24 15:24:34', '2023-08-28 14:50:09', 1, 5),
(5, 'PS2308-004', 'Standard Soy Sauce', 'Standard Soy Sauce', 3, 'Standard Soy Sauce', 2, '2007-01-11', '1,2', '{\"de33d5170cdd56b83f93edb86fb46f8e.pdf\":\"Nutri Standard.pdf\"}', '2033-01-11', 1, 'ใช้งาน', 'wzDZoxwfcrFJGp2fU12BpW', '2023-08-24 15:45:40', '2023-08-28 14:53:55', 1, 5),
(6, 'PS2308-005', 'Standard Soy Sauce', 'Standard Soy Sauce', 4, 'Standard Soy Sauce', NULL, '2004-09-28', '1,2', '{\"7496ab86cbfd5d8884557b8adac2d770.pdf\":\"อย.standard  Soy Sauce.pdf\"}', '2034-08-28', 1, 'ใช้งาน', 'TCZ_VsjJHw2ABFmSwy3Dph', '2023-08-24 16:07:13', '2023-08-28 15:55:52', 1, 5),
(7, 'PS2308-001', 'Standard Soy Sauce', 'Standard Soy Sauce', 1, 'Standard Soy Sauce', 1, '2023-02-02', '1,2', '{\"55627ba9495ae5b20deda3265f6cb134.pdf\":\"wic- 304   Standard Soy Sauce.pdf\"}', '2024-02-02', 1, 'ใ้ช้งาน', 'T8tMQGGSoigFH4hrG2-k-O', '2023-08-28 15:13:39', NULL, 5, 5),
(8, 'PS2308-002', 'Standard Soy Sauce', 'Standard  Soy Sauce', 2, 'Standard Soy Sauce', 1, '2023-04-01', '1,2', '{\"d5e3e83442eb7c9b39ea318521f35a4c.pdf\":\"process flow Standard Soy Sauce.pdf\"}', '2024-04-01', 1, 'ใช้งาน', '1GrCKVAcx7QTtOX1Eza5ix', '2023-08-28 15:16:03', '2023-08-28 16:57:34', 5, 3),
(9, 'PS2308-003', 'Special Soy sauce', 'Special Soy sauce', 1, 'Special soy sauce', 0, '2023-05-12', '1,2', '{\"e1dcb8a0ad4c7a337936936f6009665a.pdf\":\"WIC302 Special soy sauce  12052023.pdf\"}', '2024-05-12', 1, 'ใช้งาน ', '-juhlB4tUtj1Vi8pWZznsS', '2023-08-28 15:49:17', '2023-08-28 17:00:43', 5, 3),
(10, 'PS2308-004', 'Special Soy sauce', 'Special  soy sauce', 4, 'Special soy sauce', 0, '2004-09-28', '1,2', '{\"51617968f589d7164bd412cfc42f4b19.pdf\":\"อย.Special  Soy Sauce.pdf\"}', '2034-08-28', 1, 'ใช้งาน ', 'NhwgsDyLyC80W9A4z4e8Nt', '2023-08-28 15:54:20', '2023-08-28 17:00:57', 5, 3),
(11, 'PS2308-005', 'Special Soy sauce', 'Special Soy Sauce', 3, 'Special soy sauce', 1, '2016-09-20', '1,2', '{\"6daa87c533ad07a28878aae7295e2c51.pdf\":\"nutri special soy sauce.pdf\"}', '2034-08-28', 1, 'ใช้งาน ', 'eBxbam4dhJpEciSg2EUHBI', '2023-08-28 16:01:07', '2023-08-28 17:01:01', 5, 3),
(12, 'PS2308-006', 'Special Soy sauce', 'Special Soy Sauce', 2, 'Special soy sauce', 1, '2023-08-28', '1,2', '{\"4f69a93b73ed3430b9b94cf5bd20c24a.pdf\":\"Special soy sauce  Process Flow.pdf\"}', '2034-08-28', 1, 'ใช้งาน ', 'Y34OLGJDhHx1IuXpb9ult9', '2023-08-28 16:16:30', '2023-08-28 17:01:04', 5, 3);

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
(2, 'Haccp', 'Hazard Analysis Critical Control Point', 'HACCP คือ มาตรฐานการผลิตที่มีมาตรการป้องกันอันตราย ที่ผู้บริโภคอาจได้รับจากการบริโภคอาหาร โดยประเทศต่าง ๆ สามารถนำแนวทางไปประยุกต์ใช้เพื่อสร้างความมั่นใจในอุตสาหกรรมอาหารทั้งโดยผู้ผลิตและผู้บริโภค ซึ่งหลักการของระบบ HACCP', '#9BABB8'),
(3, 'ISO9001', 'ISO9001', '', '#9900ff'),
(4, 'ISO45001', 'ISO45001', '', '#a64d79'),
(5, 'ISO14001', 'ISO14001', '', '#d5a6bd'),
(6, 'FSSC22000', 'FSSC22000', '', '#9fc5e8'),
(7, 'BRC', 'BRC', '', '#3d85c6'),
(8, 'Organic', 'Organic', '', '#274e13'),
(9, 'Halal', 'Halal', '', '#9900ff'),
(10, 'Kosher', 'Kosher', '', '#0000ff'),
(11, 'Fairtrade', 'Fairtrade', '', '#f1c232');

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
(3, 'มีปัญหา', '#d83847');

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
(1, 'admin', 'ผู้ดูแลระบบ', '2tzscTHLNpS0rJlIJx_Uz1qZnvi6yS_q', '$2y$13$HwJ0Osagp4BHhcjKJMS.Su1kte.bpcDMCIusYWpu088FzQai9YqC6', NULL, 'admin@admin.com', 10, 1689666356, 1691635667, 'SA3gozOob2BBbQR0Ue5t4mJQpoyb0gcp_1689666356', 10),
(2, 'demo', 'ทดสอบระบบ', 'lJsMEFiO-XjqJrVhH2aDcjXyrP0oC0vy', '$2y$13$9cR6h5aFzqkDiaIYP4DQYuywLj.cgAyUBuIexfQNZCqaJQ.T/Zxfi', NULL, 'demo@demo.com', 10, 1689756005, 1691656266, 'sfLH5psKTa0wMf7dH-kiSrkNcSPqn9OD_1689756005', 1),
(3, 'onanong', 'อรอนงค์ ชมภู', '2bj5VmZ1PEwJDerqRsj3fhE8i2zvsVZq', '$2y$13$08zXpjOdJu83tT84JNqebe3SMFVctXSfynLDfss3sFMiveC7tPEUS', NULL, 'onanong@nfc.com', 10, 1689759317, 1692406656, '9NqfkSJcx8KkIodMLNCeH9HLqhOUmcxw_1689759317', 10),
(4, 'supanna', 'สุพรรณา พันธ์ภู่', 'yJwBMulOJv3IDmDkCXrdYZ-VMEw_zwLZ', '$2y$13$O4m3JByeXwarBQx8Na5aXuqT8v0WqaRJakqletAVt/p8XffgPvcau', NULL, 'supanna@nfc.com', 10, 1689759339, 1689759339, '4Zgy1uVGJvXg2nZOAHcFCSj0NK0Ll3Ze_1689759339', 9),
(5, 'prakaiwan', 'ประกายวรรณ เทพมณี', 'y2RYhV3E1NG68CUaa8svzBknRdbCTO79', '$2y$13$Skm6AuVq/Qi/E2r6BouzBOn.3GR8aJT5.iaHIpr2KCDsJLUPKU8B2', NULL, 'prakaiwan@nfc.com', 10, 1689759362, 1692760776, '2qNZk71gb01_K-bdCiscD38z36G9exZH_1689759362', 10),
(6, 'sale', 'ฝ่ายขาย', 'EHSvx6uElywR8fG2XRQ_xKE4sups-8cO', '$2y$13$0UZFJxx7tUAPdy972cvXEejPhldI17L0Ld7C3KnSKUk7KTLYVUP0y', NULL, 'sale@nfc.com', 10, 1689759388, 1691648993, '9ZnxmSRzPpvLgxD0MPSamdokpcp_eMul_1689759388', 8),
(7, 'planning', 'ฝ่ายวางแผน', 'JWT4BgIkYF4TIN62mLaKv5iL0uLMn7C9', '$2y$13$g08zQ7xjXISzs99kS2yApuOCRcV6QpMOfdzNAwYY8fP9N96pEuAye', NULL, 'planning@nfc.com', 9, 1689759413, 1691634989, '7xCjBXE9xNLx1gWqKX2LaVex2ah0IWt4_1689759413', 1),
(8, 'production', 'ฝ่ายผลิต', 'FjE8vrSWJ1uVTanpvQJDnpq_OiUySrzg', '$2y$13$Oa3U4rEqDwN8W0ytkDHCjuPw8CW4d44l9tEWbi3N3myBogr4mmzBy', NULL, 'production@nfc.com', 9, 1689759430, 1689759430, 'qNJ-e9RkWlfqvHqmvmSsItU1rlpb_D3j_1689759430', 1),
(9, 'watsara', 'วรรษรา หลวงเป็ง', 'XEPSPmb7Bt0oI_tklPUc5Uh4Jq4HM4Ig', '$2y$13$5iA/KWda5k7mbunRRwdNUOXn62jWJ/Ipoc.CzW3XYr69iVHThV1yC', NULL, 'watsara.nfc@gmail.com', 10, 1690430330, 1692612092, 't1iesBNA9TNHWotQHvGzbLCVhrK6LF9O_1690430330', 8),
(10, 'somsak', 'สมศักดิ์ ชาญเกียรติก้อง', '3tiUcswenYgRTZTfuvfv_Tv4V7BXwAcn', '$2y$13$RaVMZpvieW5IfdwpInG4JejNTn8rb7rTCluwPUDO6R8kAJBj1l7D.', NULL, 'somsak@northernfoodcomplex.com', 10, 1691631165, 1692172148, 'Pj5G3y6R8VeykAb0cyXVIHChtnlpquo9_1691631165', 8),
(11, 'peeranai', 'พีรนัย โสทรทวีพงศ์', 'G3b3XCgv3uFzzly7jDX0cJXzNm45qoUV', '$2y$13$5gM/232mFQdlLwbqiQOdE.n2zbN3cLuDGdhIsTK0USk.ASVILRPZy', NULL, 'peeranai@northernfoodcomplex.com', 10, 1691631423, 1692172158, 'HmjAFfcWByo3VbwpZDD9qeBA-shqds8q_1691631423', 8),
(12, 'theerapong', 'ธีรพงศ์ ขันตา', 'tWXwJZ5JEXbWCN0M-0zpCouAUJcL5BwZ', '$2y$13$WG5mTZIZ4ZcL3BoA/vA/7urFzlU2xQ2g4NU29gJegyCCcIte0TCP.', NULL, 'sam47290800@gmail.com', 10, 1691639318, 1691639449, NULL, 10),
(14, 'yosaporn', 'ยศพร พยัคฆญาติ', 'GOI-0AQj0nAYGBIpppuSe-O3IK4OSs2h', '$2y$13$gnj.Vuf7hYLvMcPCesdU4eXqC4GAZR0iwhYbvBcVxlPNnTvB9mmji', NULL, 'ypayakayat@yahoo.com', 10, 1692180393, 1692180393, NULL, 8),
(15, 'sawika', 'สาวิกา พินิจ', 'GOI-0AQj0nAYGBIpppuSe-O3IK4OSs2h', '$2y$13$ggQkc27TiQ2iQSAW6jcr3OpNGzVRjsE5/etsA7BeM5MubC/RwnhP.', NULL, 'sawika_pinit@yahoo.co.th', 10, 1692180393, 1692612391, NULL, 8),
(16, 'premmika', 'เปรมมิกา พินิจ', 'GOI-0AQj0nAYGBIpppuSe-O3IK4OSs2h', '$2y$13$ggQkc27TiQ2iQSAW6jcr3OpNGzVRjsE5/etsA7BeM5MubC/RwnhP.', NULL, 'pinit@yahoo.co.th', 10, 1692180393, 1692612391, NULL, 8);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cert`
--
ALTER TABLE `cert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `occupier`
--
ALTER TABLE `occupier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_iso`
--
ALTER TABLE `product_iso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
-- AUTO_INCREMENT for table `raw_material`
--
ALTER TABLE `raw_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
