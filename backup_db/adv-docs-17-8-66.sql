-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 18, 2023 at 01:13 AM
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
('202307-???', 24, 1, 1690343279),
('202308-???', 42, 1, 1692256310),
('5bce8a536749f4b5ebc03a256521426b', 24, 1, 1690343279),
('cb6105f484ffd5639fbc25fa3de20634', 40, 1, 1692256310);

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
(8, 'Certificate', 'ใบรับรอง (Master Certificate)', '#ff9900'),
(10, 'Product Spec', '', '#9900ff'),
(12, 'Process Flow', '', '#674ea7'),
(13, 'อย.', '', '#d5a6bd'),
(14, 'Nutrition Lable', '', '#4c1130');

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
(6, '202307-005', 'ถั่วเหลือง Organic', '', 'Ban Um Sang บ้านอุ่มแสง', '2024-01-11', 60, '2023-07-21 16:52:12', '2023-08-17 16:05:14', 3, 1, 1, 4, 2, 1, 1, '', 'Mh2Q3vg4bBIVuEB64Joxb0', '{\"befc1fd021f4ecbf6e6620e02a3ffc29.pdf\":\"ถั่วเหลือง Organic - อุ่มแสง.pdf\"}'),
(7, '202307-006', 'ถั่วเหลือง Organic Fairtrade', '', 'Ban Um Sang บ้านอุ่มแสง', '2021-05-31', 30, '2023-07-22 08:54:08', '2023-08-17 16:05:11', 3, 1, 1, 4, 2, 1, 3, '', 'EuL6CpCXtrijFWTXmEkdya', '{\"735854d45a4faf0cf656d0522e1bae23.pdf\":\"ถั่วเหลือง Organic FT. - อุ่มแสง.pdf\"}'),
(8, '202307-007', 'ถั่วเหลือง Organic Fairtrade', '', 'Gebana', '2023-12-31', 60, '2023-07-22 09:09:40', '2023-08-17 15:52:44', 3, 1, 1, 4, 2, 1, 1, '', 'GebU-zdiovR_5XoDiylaAj', '{\"18bd120b62fa910d2a721b7f5a55ba46.pdf\":\"Organic Soybean Fairtrade - Gebana.pdf\"}'),
(9, '202307-008', 'ถั่วเหลือง', '', 'ชาญ บรรณมาศ', '2023-11-09', 60, '2023-07-22 09:26:50', '2023-08-17 15:52:36', 3, 1, 1, 4, 2, 1, 1, '', 'gUnyjNevFJMU7rZQ3M4XsY', '{\"69008dceb176053607d173bfc58f22f7.pdf\":\"ถั่วเหลือง - ชาญ บรรณมาศ.pdf\"}'),
(10, '202307-009', 'ข้าวสาลี', '', 'Blue Point', '2022-02-23', 60, '2023-07-22 09:49:32', '2023-08-17 15:54:05', 3, 1, 1, 7, 2, 2, 3, '', '8AfVcCcTixDY_ckM4-pro8', '{\"23555e50f9f5a3105fcc7a076b7a0ed8.pdf\":\"ข้าวสาลี - Blue Point.pdf\"}'),
(11, '202307-010', 'ถั่วเหลือง Organic Fairtrade', '', 'Pratithi', '2027-02-06', 60, '2023-07-22 10:15:12', '2023-08-17 15:52:27', 3, 1, 1, 4, 2, 1, 1, '', 'HtKTESkQWykqPDPpG2JkQG', '{\"e053e82e52d86ac3673e40dd65fd173b.pdf\":\"Organic Soybean Fairtrade - Pratithi Organic Foods.pdf\"}'),
(12, '202307-011', 'ข้าวหอมมะลิอินทรีย์', '', 'กฤษณกรณ์ออร์แกนิคฟาร์ม', '2022-12-23', 60, '2023-07-22 10:27:25', '2023-08-17 15:52:18', 3, 1, 1, 4, 2, 1, 3, '', 'lQm3O5BNqFSA_OhOC6BhFD', '{\"02daa11c12a6811f8626656e1ad50129.pdf\":\"ข้าวหอมมะลิอินทรีย์ - กฤษณกรณ์.pdf\"}'),
(13, '202307-012', 'ถั่วเหลือง Organic', '', 'ST.Lawrence Beans', '2019-11-28', 60, '2023-07-22 13:16:01', '2023-08-17 15:52:09', 3, 1, 1, 4, 2, 1, 3, '', 'hH11yBt30BGkqY3dzmL2b0', '{\"d739cad180f87056c5867f323fdc6a24.pdf\":\"ถั่วเหลือง Organic - ST-Lawrence Beans.pdf\"}'),
(14, '202307-013', 'Fairtrade', '', 'NFC', '2025-09-02', 60, '2023-07-26 08:24:59', '2023-08-17 15:51:10', 3, 1, 1, 8, 1, 1, 1, '', 'GQEE5_6NLCowdNnFHh7mGo', '{\"69e7f8fbf5fc374af40f64a83466e15a.pdf\":\"CERT_Certificate  Fairtrade 2021-2025.pdf\",\"adf7999b0487bd4b47907432cc4b224a.pdf\":\"LicensedProducts.pdf\"}'),
(15, '202307-014', 'FSSC 22000', '', 'NFC', '2025-01-05', 60, '2023-07-26 08:41:40', '2023-08-17 15:50:59', 3, 1, 1, 8, 1, 1, 1, '', 'MZgYMcjAokdNMGBW7iNZEm', '{\"cdbd27a6ff8d63d81433221d02f6ef4e.pdf\":\"FSSC22000 EXP05JAN2025.pdf\"}'),
(16, '202307-015', 'GHPs, HACCP', '', 'NFC', '2024-03-07', 60, '2023-07-26 08:56:46', '2023-08-17 15:50:51', 3, 1, 1, 8, 1, 1, 1, '', 'r-InFsiMit20WyoOeJOWpq', '{\"f89fa2032a4eb2127f8cd20529e09dc0.pdf\":\"GMP  HACCP  Exp2024.pdf\"}'),
(17, '202307-016', 'ISO 9001:2015', '', 'NFC', '2023-09-24', 60, '2023-07-26 09:28:43', '2023-08-17 15:50:40', 3, 1, 1, 8, 1, 1, 1, '', 'ikk0CUJoT5kbW7nwQZirlX', '{\"289736527acc04ab59ea4c135d21f362.pdf\":\"ISO 9001.2015(EN) exp 24092023.pdf\"}'),
(18, '202307-017', 'ISO 14001:2015', '', 'NFC', '2023-09-20', 60, '2023-07-26 09:32:28', '2023-08-17 15:50:33', 3, 1, 1, 8, 1, 1, 1, '', '41E5gXM4vfL3sKtylwkACb', '{\"3ad7f385487d54d87eeda40eeccdc74b.pdf\":\"ISO 14001.2015 (EN)exp 20092023.pdf\"}'),
(19, '202307-018', 'มอก. 9001-2559 / ISO 9001:2015', '', 'NFC', '2025-10-17', 60, '2023-07-26 09:44:42', '2023-08-17 15:50:24', 3, 1, 1, 8, 1, 1, 1, '', 'zUrhR8hrUvBdFse9KobVyi', '{\"6226040d2e818248d7b1cca56cc33fa2.pdf\":\"ISO9001 2015  Exp 10 2025  EN (1).pdf\",\"6af27f8cfdd51b6bef94ffbe2a805956.pdf\":\"ISO9001 2015  exp 2025 TH.pdf\"}'),
(20, '202307-019', 'มอก. 14001-2559 / ISO 14001:2015', '', 'NFC', '2025-10-17', 60, '2023-07-26 09:52:04', '2023-08-17 15:50:15', 3, 1, 1, 8, 1, 1, 1, '', 'nMrCnHbvSO3sS-HsI17ij5', '{\"8c8f7e898b7aa1ba354fc9ef1d4a7ecf.pdf\":\"ISO14001  Exp 10 2025 EN (1).pdf\",\"d86b230d2468019961162f4dbac26218.pdf\":\"ISO14001 Exp 10 2025 TH.pdf\"}'),
(21, '202307-020', 'ISO 22000:2018', '', 'NFC', '2024-03-07', 60, '2023-07-26 09:54:51', '2023-08-17 15:50:05', 3, 1, 1, 8, 1, 1, 1, '', 'QvZ0OeFYyKsCOsRRZi0pKB', '{\"0921c08a5b3b0eb93a04dccc5a55ea04.pdf\":\"ISO22000 (2).pdf\"}'),
(22, '202307-021', 'มอก. 45001:2561 / ISO 45001:2018', '', 'NFC', '2025-10-17', 60, '2023-07-26 10:01:31', '2023-08-17 15:49:54', 3, 1, 1, 8, 1, 1, 1, '', '_jAc_uTZb4aFOLieumfku6', '{\"7988b480b78dd626bb27e5e258bd3610.pdf\":\"ISO45001 Exp10 2025 EN (1).pdf\",\"a62b3cb5b21f34e74de842f7f30b41cb.pdf\":\"ISO45001 EXP10 2565  TH.pdf\"}'),
(23, '202307-022', 'VALID-IT Non-GM PROTOCOL', '', 'NFC', '2024-04-30', 60, '2023-07-26 10:30:31', '2023-08-17 15:48:44', 3, 1, 1, 8, 1, 1, 1, '', 'iqigDUohgJ6qWtEEA0xWVW', '{\"11e77277d80f0656411ad15db2ef8bf6.pdf\":\"Northern Food Complex Co Ltd - 146 (2) (2).pdf\"}'),
(24, '202307-023', 'Halal Certificate', '', 'NFC', '2023-07-31', 60, '2023-07-26 10:36:44', '2023-08-17 15:48:35', 3, 1, 1, 8, 1, 1, 3, '', 'p7sir4lYZaSBuo_-YRBE07', '{\"3c9d53a4d1820ba3cb1a36dc9eab2f5a.pdf\":\"scan-Halal 2565-2566.pdf\"}'),
(25, '202307-024', 'TLS 8001:2020', '', 'NFC', '2025-01-16', 60, '2023-07-26 10:47:59', '2023-08-17 15:48:24', 3, 1, 1, 8, 1, 1, 1, '', 'YqXl2u8QpLAT1F-nuOlJrx', '{\"f0c84206b2dafb4e21690eda031a1ed1.pdf\":\"scan-มรท.8001-2563 (2565-2568)-(Eng).pdf\"}'),
(26, '202308-001', 'USDA Organic', 'DSDA Organic regulations, 7 CFR part 205 (NOP) และ Product list', 'PB Valley Chiangrai', '2023-07-31', 60, '2023-08-05 10:45:07', '2023-08-17 15:48:08', 3, 1, 1, 8, 1, 1, 3, '', 'MlAspZCEGfeZyCPa9GeY-k', '{\"9b4a8be6ab410a8a7df371702073374a.pdf\":\"CERES_Produkteliste_PB valley.pdf\",\"6ff69564ad1c0d8cef7cdfdb098f8d7a.pdf\":\"CERES_Zertifikat_PB Valley.pdf\"}'),
(27, '202308-002', 'CERES Organic Standard (CE-OS) EU Equivalent Standard', 'CERES Organic Standard (CE-OS) EU Equivalent Standard for third countries และ Product list', 'NFC', '2023-10-31', 60, '2023-08-05 11:53:37', '2023-08-17 15:49:12', 3, 1, 1, 8, 1, 1, 1, '', 'bAQMxZX7ZtFDq1rCXQ2hkB', '{\"d9bd7413ec8873474cd277bbe4f702b4.pdf\":\"CERES_Produkteliste.pdf\",\"e79f6407f7440e71ea5018346e752fa0.pdf\":\"CERES_Zertifikat_v4.pdf\",\"87c10256024e4630b1923acd25b9f4e5.pdf\":\"2022 Northern Food CERES EU cert ext 306305_2023.08.10#1.pdf\"}'),
(28, '202308-004', 'Organic Products', 'Certificate Organic Products and Conformity', 'Ban Um Sang บ้านอุ่มแสง', '2023-06-02', 60, '2023-08-11 13:30:54', '2023-08-17 16:05:08', 3, 1, 1, 8, 2, 1, 3, '', 'zQqD8uGtD96q8QugEH735q', '{\"71416a4e323c9b3c443fe08fb26a7f1d.pdf\":\"EUI92ICC_BAN UM SANG 2022  exp 02062023.pdf\",\"15d078e3d79fd1da2751b7c413b6c39f.pdf\":\"NPI92ICC_BAN UM SANG 2022-NOP. 29.01.2023.pdf\"}'),
(29, '202308-005', 'Organic Products', 'Certificate Organic Products and USDA Organic', 'Gebana', '2024-03-31', 60, '2023-08-11 13:39:56', '2023-08-17 15:20:29', 3, 1, 1, 8, 2, 1, 1, '', 'bHPiE8pd8q4rNUpMUfZ3-Z', '{\"5e777c489355813a7b7a65db5d1d1acd.pdf\":\"EU + NOPCertificado Cataratas Gebana.ไฟล์รวม.pdf\"}'),
(30, '202308-006', 'Organic Products', 'Certificate Organic Products and Label Organic Products', 'La Du Riz', '2024-03-31', 60, '2023-08-11 13:48:55', '2023-08-17 15:20:20', 3, 1, 1, 8, 2, 1, 1, '', 'Y3SUq5Qlc9DAuuNSD7lDKG', '{\"ac2b823dbd312b536835c40fe9362e85.pdf\":\"CER-OPT59245-C255893 31.04.2024.pdf\"}'),
(31, '202308-007', 'Organic Products', 'Certificate Organic Products and Conformity', 'Natural & Premium Food', '2023-07-17', 60, '2023-08-11 13:54:13', '2023-08-17 15:20:06', 3, 1, 1, 8, 2, 1, 3, '', 'zEExuVaDi6PDnhO-iv2bmc', '{\"6dc94f50e9b2a509e1916063be59372e.pdf\":\"Organic EU regulation Certificate _Natural and premium food Co,Ltd.pdf\",\"b2363ee4a5922208968c17c1dde90180.pdf\":\"Organic NOP USDA regulation Certificate_Natural and premium food Co,Ltd.pdf\"}'),
(32, '202308-008', 'Organic Products', 'Certificate Organic Product, USDA Organic and Product List', 'North Organic Thai', '2023-08-31', 60, '2023-08-11 14:07:26', '2023-08-17 15:19:55', 3, 1, 1, 8, 2, 1, 1, '', '57h4SL1KKUyLFfG8a-LRqi', '{\"339a03eea466ce108fe99b25b3397fc9.pdf\":\"cer   organc  eu  nop.pdf\",\"d5f10e286c09a49472dd974a74c43283.pdf\":\"list  CERES_Produkteliste_v1.pdf\"}'),
(33, '202308-009', 'Organic Products', 'Certificate Organic Products and Conformity', 'Credence', '2024-02-15', 60, '2023-08-11 14:12:27', '2023-08-17 15:19:45', 3, 1, 1, 8, 2, 1, 1, '', 'jwhW3v6hl30IFScc9qTaAz', '{\"5ae9530b028c15bdc8d6a9bbe2b370c6.pdf\":\"EUI95VCC.2023-2024.pdf\",\"36405e31b86ff63818b91f1deea8f099.pdf\":\"NPI95VCC.pdf\"}'),
(34, '202308-010', 'Organic Products', 'Certificate Organic Products', 'Pratithi', '2024-02-06', 60, '2023-08-11 14:17:35', '2023-08-17 15:19:35', 3, 1, 1, 8, 2, 1, 1, '', 'QFmU1esNFfEf_vO9RS9QyL', '{\"ba4ae798e7b3d83f9680b6aa15f7450f.pdf\":\"13279123 PRATITHI ORGANIC FOODS PRIVATE LIMITED ....pdf\"}'),
(35, '202308-011', 'Organic Products', 'Certificate Organic Products and Conformity', 'Southeast Asia', '2023-04-06', 60, '2023-08-11 14:23:55', '2023-08-17 15:19:25', 3, 1, 1, 8, 2, 1, 3, '', 'vZ7L35HsUsd6Oz_bmk7bKV', '{\"03878eeb861f5a4ddb6eab65138e5aeb.pdf\":\"annex EU2022 SEA Exp.06.04.2023 (1).pdf\",\"e2775c14c117c6ba0ccd5cbb169ef26b.pdf\":\"EU2022 SEA Exp.06.04.2023 (1).pdf\",\"bbd2adab8dd7477989c353338b001f96.pdf\":\"NOP certificate (1).pdf\",\"c876bd4a3dc686afaad584a04c97659c.pdf\":\"NPA16PCC (1) (1).pdf\"}'),
(36, '202308-012', 'Organic Products', 'Certificate EU, NOP, JAS, GMP, HACCP, Halal, ISO9001:2015, Kosher, Test Report, FSMA, BRC', 'Ubon Sunflower', '2023-03-31', 60, '2023-08-11 16:14:07', '2023-08-17 15:19:13', 3, 1, 1, 8, 2, 1, 3, '', 'l7jA2ITvJpx6K7rpHAdHQV', '{\"d68f6734e925b8d23ad7048e7936b726.pdf\":\"CU 842683EU-01.2022 Ubon Sunflower Company.pdf\",\"75c954515babe944566463a4683f424f.pdf\":\"CU 842683JAS-01.2022 Ubon Sunflower Company.pdf\",\"bbbbfb437a85d9162247fab1fff9ae71.pdf\":\"CU 842683NOP-01.2022 Ubon Sunflower Company_Exp 16-JAN-2023.pdf\",\"87b9290a3828b5e6f34aa291469743ec.pdf\":\"GMP- Ubon Sunflower Co., Ltd.pdf\",\"c79e93ea11744e798dc52694ae7cc362.pdf\":\"HACCP-Ubon Sunflower Co., Ltd.pdf\",\"2e32ce711fc33fd012a5c7ae367cdaee.pdf\":\"HALAL C350-2555 ENG UBONSUNFLOWER EXP. 28-11-22.pdf\",\"13d041474219602006840ce5f2aec105.pdf\":\"ISO 9001-2015-Ubon Sunflower Co., Ltd.pdf\",\"cc76b601f20c3d8d38e3f27c4d56b3fb.pdf\":\"KOSHER Cert. UBS Exp 31Jan2023.pdf\",\"f6832083b8c5017e424d4132c83f3b27.pdf\":\"Test report yearly_Oganic cassava flour 2022.pdf\",\"79eef8e53099e73eee57ae629b777390.pdf\":\"UBS_BRC_Exp Nov 5 2022.pdf\",\"7daa8800b9f43f1fb81587531ae1b5e2.pdf\":\"UBS_FSMA_Exp Nov 5 2022.pdf\"}'),
(37, '202308-013', 'Fair Trade', '', 'Raitong Organic Farm', '2024-12-14', 60, '2023-08-11 16:26:13', '2023-08-17 15:18:59', 3, 1, 1, 8, 2, 3, 1, '', 'awVPoLvyh7gaW0ZhYoDcn1', '{\"7be7be52786e487540516f080398d9ea.pdf\":\"2022-2024 FTUSA Trader Certificate (1).pdf\"}'),
(38, '202308-014', 'Organic Products', 'Certificate Organic และ หนังสือรับรอง', 'Raitong Organic Farm', '2023-06-30', 60, '2023-08-11 16:28:07', '2023-08-17 15:18:38', 3, 1, 1, 8, 2, 1, 3, '', '-o66-AoiD_1NmDw_3JReTY', '{\"9ea2deb8dafcb281b920d3484495f333.pdf\":\"Business Registration Certificate (1).pdf\",\"84668487622800b616e96a74f7423cb4.pdf\":\"Organic Certificate 2022 -Raitong Organics Farm EXP 300623.pdf\",\"3b2dc0f16fe1baa96976aa647d7c6969.pdf\":\"ใบ cer  Organic ไร่ทองEXP 30 SEP 2022.pdf\"}'),
(39, '202308-015', 'Miso', 'Test Report Pasteurized Miso และ Unpasteurized Miso', 'NFC', '2024-06-24', 60, '2023-08-14 16:07:20', '2023-08-17 15:54:15', 3, 1, 1, 7, 1, 2, 1, '', 'B3vA_148b9AdXRa2bvi-bg', '{\"cf4288eefb0af38a073ac5f21a672df4.pdf\":\"Micro  Pas miso 2023.pdf\",\"d891487504f173a7257291f4da1d40bf.pdf\":\"Micro  Unpas miso 2023.pdf\",\"9024a05e2aa6e0f91e5c416474ce9fb8.pdf\":\"ผลตรวจรวม MISO ประจำปี  2023.pdf\"}'),
(40, '202308-016', 'Organic Rice Vinegar', '', 'NFC', '2024-03-16', 60, '2023-08-14 16:11:19', '2023-08-17 15:54:18', 3, 1, 1, 7, 1, 2, 1, '', 'Ms_apHRYpUD8sqJisqgzl4', '{\"d42721b7aad6f21017b069b522229b7f.pdf\":\"Ethanol    So2  Organic vinegar 2023.pdf\",\"5dc37ab3f5cc629efb2b6cc0176117ca.pdf\":\"Free Mineral  Vinegar 2023.pdf\",\"a7b4384e0d79db4394ddd1a2434988a8.pdf\":\"organic Rice Vineagr  2023.pdf\"}'),
(41, '202308-017', 'Allergen Gluten', 'For Soy Sauce', 'NFC', '2024-03-10', 60, '2023-08-14 16:50:38', '2023-08-17 15:54:21', 3, 1, 1, 7, 1, 2, 1, '', '5dAYZNMsocYCQBTTSUixWV', '{\"43cd41a6952db7c83aaa11fe23ea69f3.pdf\":\"Allergen KO  2565.pdf\",\"69cdcc100d625e4f14599cdece38d790.pdf\":\"Allergen in Ko 2023.pdf\",\"f9269976ce0f59e95914a05ce0b1518b.pdf\":\"Allergen in KOR 2023.pdf\"}'),
(42, '202308-018', 'GMOs', 'For Soy Sauce', 'NFC', '2023-10-18', 60, '2023-08-15 10:10:44', '2023-08-17 15:54:51', 3, 1, 1, 7, 1, 2, 1, '', '3dqd6V7eNzU6cNk83QG3ET', '{\"261346dfbaffca067f6f9ae75dc4ab92.pdf\":\"GMOs   Soy Sauce &MISO 2022.pdf\"}'),
(43, '202308-019', 'MCPD', 'For Soy Sauce', 'NFC', '2024-03-13', 60, '2023-08-15 10:13:33', '2023-08-17 15:54:47', 3, 1, 1, 7, 1, 2, 1, '', 'uGKthbgBz57y5tGq4bRJzA', '{\"49e62bf735533a07e02166a44df18b0f.pdf\":\"MCPD  Soy Sauce  2023.pdf\"}'),
(44, '202308-020', 'Melamine ', 'For Soy Sauce', 'NFC', '2024-03-10', 60, '2023-08-15 10:17:38', '2023-08-17 15:54:24', 3, 1, 1, 7, 1, 2, 1, '', 'aAGnC3B5M_klki9gCaOX4-', '{\"f1c7836c73d5bf4a08cdbb7ca5f85c54.pdf\":\"Melamine part1  2023.pdf\"}'),
(45, '202308-021', 'Microbiological Testing', 'For Soy Sauce', 'NFC', '2023-11-29', 60, '2023-08-15 10:23:19', '2023-08-17 15:54:28', 3, 1, 1, 7, 1, 2, 1, '', 'sBcX6yCZbJkndglCcuak1s', '{\"d3f1c3971b393dec53e6a71c62619565.pdf\":\"Micro  Soy  sauce  ครั้งที่ 2 2022.pdf\"}'),
(46, '202308-022', 'Positive List', 'For Soy Sauce', 'NFC', '2023-05-19', 60, '2023-08-15 10:27:28', '2023-08-17 15:54:32', 3, 1, 1, 7, 1, 2, 3, '', 'sN_vAKVSci5NobdfjUMWNX', '{\"7bb82cf10db804523b73d5aaa7f6d7b7.pdf\":\"Positive list 2022.pdf\"}'),
(47, '202308-023', 'Sorbic Acid', 'For Soy Sauce', 'NFC', '2024-03-10', 60, '2023-08-15 10:32:22', '2023-08-17 15:54:35', 3, 1, 1, 7, 1, 2, 1, '', 'jRVu1_wgvI3vwB13e6nyIt', '{\"6c0be41a1e391ec95a2a2602044e03ca.pdf\":\"Sorbic in Soy sauce 2023.pdf\"}'),
(48, '202308-024', 'Aflatoxin Testing and metals Testing', 'For Soy Sauce', 'NFC', '2023-11-22', 60, '2023-08-15 10:36:57', '2023-08-17 15:54:38', 3, 1, 1, 7, 1, 2, 1, '', 'UmkGszlIN-gdjjrqDT0e1Y', '{\"1577e717d35899cd55d06ba6276f7862.pdf\":\"soy Sauce  ครั้งที่ 2 2022.pdf\"}'),
(49, '202308-025', 'Soybaen', '', 'ส.เสริมสร้าง', '2024-05-17', 60, '2023-08-16 08:27:39', '2023-08-17 15:44:57', 3, 1, 1, 7, 2, 2, 1, '', 'tdLyshR_KF6jFm3B1MpEze', '{\"afc157eb6cc73f14208d1e3f96e0d910.pdf\":\"Soybean -2023.pdf\"}'),
(50, '202308-026', 'Wheat', 'Raw wheat and Cartap', 'ส.เสริมสร้าง', '2024-05-15', 60, '2023-08-16 08:37:30', '2023-08-17 15:44:46', 3, 1, 1, 7, 2, 2, 1, '', '7fYYdf3gPqer0jP13eY-bS', '{\"babe927cc51c88e2fe2c1c79202c4987.pdf\":\"Wheat 2023-cartap.pdf\",\"8afbfc45ff90d91830917a9637b5d681.pdf\":\"Wheat 2023.pdf\"}'),
(51, '202308-027', 'Activated Carbon YL-303', 'Metals Testing and Process Flow Diagram', 'Right Solution', '2024-01-04', 60, '2023-08-16 08:58:26', '2023-08-17 15:25:26', 3, 1, 1, 7, 2, 2, 1, '', 'MCjiK9sWPNv6L3RO1P7gwC', '{\"d1ca4ddea3e31374dfdf30e24790453f.pdf\":\"ผลวิเคราะห์ YL-303.pdf\",\"eecaf1c30c20537583e94fa555c4b4ae.pdf\":\"Process Flow Diagram YL-303 Update 15.08.23.pdf\"}'),
(52, '202308-028', 'ISO 22000:2018', '', 'Right Solution', '2024-03-06', 60, '2023-08-16 09:04:59', '2023-08-17 15:18:25', 3, 1, 1, 8, 2, 2, 1, '', 'jqemKp0KkxHSuGs26dC7OB', '{\"70ddf0d32b0e62d39de635da7f795ed1.pdf\":\"ISO22000 020-03-07 Nanping Yuanli.pdf\"}'),
(53, '202308-029', 'Kosher', '', 'Right Solution', '2023-12-31', 60, '2023-08-16 09:17:19', '2023-08-17 15:15:09', 3, 1, 1, 8, 2, 2, 1, '', 'i7Kr7n5wFqeDONgLNYNaHw', '{\"c1bac50cfe7d854901328d41adb08fd8.pdf\":\"Kosher_Yuanli 2023.pdf\"}'),
(54, '202308-030', 'Halal (HAS 23000)', 'Halal (HAS 23000)', 'Right Solution', '2025-11-11', 60, '2023-08-16 09:23:17', '2023-08-17 15:14:54', 3, 1, 1, 8, 2, 2, 1, '', '2gKptjdzVEkq1vEICg1WpZ', '{\"5b778f509056505fdaab3ab46f39ce67.pdf\":\"HALAL CERTIFICATE(3).pdf\"}'),
(55, '202308-031', 'Halal (สนง)', ' (สนง.คณะกรรมการกลางอิสลามแห่งประเทศไทย)', 'Right Solution', '2025-01-10', 60, '2023-08-16 09:34:31', '2023-08-17 15:20:59', 3, 1, 1, 8, 2, 2, 1, '', '9pZfhbjbGe2revxS_BM8XV', '{\"abe8479da7a150a2b40ee4d0cf10c6ab.pdf\":\"B035-2551 Halal บมจ.ไร้ท์ โซลูชั่น.pdf\"}'),
(56, '202308-032', 'Halal (Mui)', '', 'Right Solution', '2025-11-11', 60, '2023-08-16 09:41:39', '2023-08-17 15:13:42', 3, 1, 1, 8, 2, 2, 1, '', '89UiSRLVgA_fn2M1aNLNfp', '{\"9f5f79ff1476a0a6ca0790b59a3ec670.pdf\":\"MUI HALAL LIST(2).pdf\"}'),
(57, '202308-033', 'Halal Assurance', 'Halal Assurance System Status', 'Right Solution', '2025-11-11', 60, '2023-08-16 09:43:59', '2023-08-17 15:14:05', 3, 1, 1, 8, 2, 2, 1, '', 'OHtTxC1rDGzGlUlfEWdg09', '{\"14d3b8c8142e30e99b6e895a5c1805e7.pdf\":\"HALAL ASSURANCE SYSTEM STATUS.pdf\"}'),
(58, '202308-034', 'ISO 14001:2015', '', 'Right Solution', '2023-07-09', 60, '2023-08-16 09:50:34', '2023-08-17 15:08:57', 3, 1, 1, 8, 2, 2, 3, '', 'HVB-RMfrtHEx3Xm-KKD1X5', '{\"646d3fc0cd90fa2f293832c3f4737e4f.pdf\":\"ISO14001 CN09 30314.02 2023.07.09.pdf\"}'),
(59, '202308-035', 'ISO 45001:2018', '', 'Right Solution', '2023-07-09', 60, '2023-08-16 10:15:21', '2023-08-17 15:06:50', 3, 1, 1, 8, 2, 2, 3, '', 'p-aY2Pwj7NfL5RZ9W0lbyG', '{\"ff84b6379927d1561d95c011350dcfc4.pdf\":\"ISO45001 CN20 30094.02  2023.07.09.pdf\"}'),
(60, '202308-036', 'ISO 9001:2015', '', 'Right Solution', '2023-07-09', 60, '2023-08-16 10:18:14', '2023-08-17 15:05:04', 3, 1, 1, 8, 2, 2, 3, '', 'nAg7BtuhogqG5UPgy8e8rO', '{\"3c85df2e9a7a04d481c1902f957882e1.pdf\":\"ISO9001 CN09 30355.02 2023.07.09.pdf\"}'),
(61, '202308-037', 'ถัง IBC 1,000 ลิตร', '', 'Pack Delta', '2024-06-21', 60, '2023-08-16 13:41:23', '2023-08-17 15:05:23', 3, 1, 1, 7, 2, 2, 1, '', 'LI5CEdpu7b_u5r7hKn1je7', '{\"d1bc50fb25f8521a00198245a83f60c9.pdf\":\"11. พรบ 435(บัญชี หมายเลข 2 ) Test Report Plastic cut piece Natural color (21-06-2023).pdf\"}'),
(62, '202308-038', 'ถังสีฟ้า 200 ลิตร', '', 'Pack Delta', '2024-06-21', 60, '2023-08-16 13:43:48', '2023-08-17 15:05:35', 3, 1, 1, 8, 2, 2, 1, '', 'D-zuxHHSBVVvWikbWAgVHI', '{\"5a56130f2ec365e3e8cc7d07027432aa.pdf\":\"10. พรบ 435(บัญชี หมายเลข 2 ) Test Report Plastic cut piece Blue color (21-06-2023).pdf\"}');

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
(1, 'NFC', 'NorthernfoodComplex', '#2ecc0e'),
(2, 'Supplier', 'Other Company', '#C21010');

-- --------------------------------------------------------

--
-- Table structure for table `product_spec`
--

CREATE TABLE `product_spec` (
  `id` int(11) NOT NULL,
  `product_number` varchar(50) DEFAULT NULL,
  `revision` varchar(50) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `spec` text COMMENT 'สเปค',
  `process` text,
  `fda` text COMMENT 'อย.',
  `nutrition` text COMMENT 'Nutrition Label',
  `iso_cert` text,
  `created_at` varchar(50) DEFAULT NULL,
  `updated_at` varchar(50) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_spec`
--

INSERT INTO `product_spec` (`id`, `product_number`, `revision`, `title`, `description`, `spec`, `process`, `fda`, `nutrition`, `iso_cert`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'S-202308-001', NULL, 'ทดสอบ', NULL, 'S-202308-001-ff145def.pdf', 'S-202308-001-ff145def.pdf', 'S-202308-001-ff145def.pdf', 'S-202308-001-ff145def.pdf', NULL, '1692321172', '1692321172', 1, 1);

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
(1, 'ไม่ระบุ', NULL, '#393646'),
(2, 'ถั่วเหลือง', NULL, '#FD8D14'),
(3, 'เกลือ', NULL, '#504099'),
(4, 'น้ำตาล', NULL, '#C8AE7D');

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
(1, 'ปกติ', '#328906'),
(2, 'ยกเลิก', '#666666'),
(3, 'มีปัญหา', '#ff0000');

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
(1, 'Oranic', 'System Organic', '#274e13'),
(2, 'Original', '', '#a64d79'),
(3, 'System Fairtrade', 'Fairtrade', '#3AA6B9'),
(4, 'ในประเทศ', '', '#6aa84f'),
(5, 'ต่างประเทศ', 'ต่างประเทศ', '#e69138'),
(6, 'ไม่ระบุ', '', '#666666');

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
(3, 'onanong', 'อรอนงค์ ชมภู', '2bj5VmZ1PEwJDerqRsj3fhE8i2zvsVZq', '$2y$13$08zXpjOdJu83tT84JNqebe3SMFVctXSfynLDfss3sFMiveC7tPEUS', NULL, 'onanong@nfc.com', 10, 1689759317, 1689759317, '9NqfkSJcx8KkIodMLNCeH9HLqhOUmcxw_1689759317', 10),
(4, 'supanna', 'สุพรรณา พันธ์ภู่', 'yJwBMulOJv3IDmDkCXrdYZ-VMEw_zwLZ', '$2y$13$O4m3JByeXwarBQx8Na5aXuqT8v0WqaRJakqletAVt/p8XffgPvcau', NULL, 'supanna@nfc.com', 10, 1689759339, 1689759339, '4Zgy1uVGJvXg2nZOAHcFCSj0NK0Ll3Ze_1689759339', 9),
(5, 'prakaiwan', 'ประกายวรรณ เทพมณี', 'y2RYhV3E1NG68CUaa8svzBknRdbCTO79', '$2y$13$Skm6AuVq/Qi/E2r6BouzBOn.3GR8aJT5.iaHIpr2KCDsJLUPKU8B2', NULL, 'prakaiwan@nfc.com', 10, 1689759362, 1692169847, '2qNZk71gb01_K-bdCiscD38z36G9exZH_1689759362', 9),
(6, 'sale', 'ฝ่ายขาย', 'EHSvx6uElywR8fG2XRQ_xKE4sups-8cO', '$2y$13$0UZFJxx7tUAPdy972cvXEejPhldI17L0Ld7C3KnSKUk7KTLYVUP0y', NULL, 'sale@nfc.com', 10, 1689759388, 1691648993, '9ZnxmSRzPpvLgxD0MPSamdokpcp_eMul_1689759388', 8),
(7, 'planning', 'ฝ่ายวางแผน', 'JWT4BgIkYF4TIN62mLaKv5iL0uLMn7C9', '$2y$13$g08zQ7xjXISzs99kS2yApuOCRcV6QpMOfdzNAwYY8fP9N96pEuAye', NULL, 'planning@nfc.com', 9, 1689759413, 1691634989, '7xCjBXE9xNLx1gWqKX2LaVex2ah0IWt4_1689759413', 1),
(8, 'production', 'ฝ่ายผลิต', 'FjE8vrSWJ1uVTanpvQJDnpq_OiUySrzg', '$2y$13$Oa3U4rEqDwN8W0ytkDHCjuPw8CW4d44l9tEWbi3N3myBogr4mmzBy', NULL, 'production@nfc.com', 9, 1689759430, 1689759430, 'qNJ-e9RkWlfqvHqmvmSsItU1rlpb_D3j_1689759430', 1),
(9, 'user', 'ผู้ใช้งาน', 'XEPSPmb7Bt0oI_tklPUc5Uh4Jq4HM4Ig', '$2y$13$Cnpq/RL3WMS2iCp5aceVpOtAEuq.LIilfbVNr4uJiBDNwswJhKkuq', NULL, 'user@local.com', 9, 1690430330, 1691646338, 't1iesBNA9TNHWotQHvGzbLCVhrK6LF9O_1690430330', 1),
(10, 'somsak', 'สมศักดิ์ ชาญเกียรติก้อง', '3tiUcswenYgRTZTfuvfv_Tv4V7BXwAcn', '$2y$13$RaVMZpvieW5IfdwpInG4JejNTn8rb7rTCluwPUDO6R8kAJBj1l7D.', NULL, 'somsak@northernfoodcomplex.com', 10, 1691631165, 1692172148, 'Pj5G3y6R8VeykAb0cyXVIHChtnlpquo9_1691631165', 8),
(11, 'peeranai', 'พีรนัย โสทรทวีพงศ์', 'G3b3XCgv3uFzzly7jDX0cJXzNm45qoUV', '$2y$13$5gM/232mFQdlLwbqiQOdE.n2zbN3cLuDGdhIsTK0USk.ASVILRPZy', NULL, 'peeranai@northernfoodcomplex.com', 10, 1691631423, 1692172158, 'HmjAFfcWByo3VbwpZDD9qeBA-shqds8q_1691631423', 8),
(12, 'theerapong', 'ธีรพงศ์ ขันตา', 'tWXwJZ5JEXbWCN0M-0zpCouAUJcL5BwZ', '$2y$13$WG5mTZIZ4ZcL3BoA/vA/7urFzlU2xQ2g4NU29gJegyCCcIte0TCP.', NULL, 'sam47290800@gmail.com', 10, 1691639318, 1691639449, NULL, 10),
(14, 'yosaporn', 'ยศพร พยัคฆญาติ', 'GOI-0AQj0nAYGBIpppuSe-O3IK4OSs2h', '$2y$13$gnj.Vuf7hYLvMcPCesdU4eXqC4GAZR0iwhYbvBcVxlPNnTvB9mmji', NULL, 'ypayakayat@yahoo.com', 10, 1692180393, 1692180393, NULL, 8);

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
-- Indexes for table `product_spec`
--
ALTER TABLE `product_spec`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `occupier`
--
ALTER TABLE `occupier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_spec`
--
ALTER TABLE `product_spec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rawmat`
--
ALTER TABLE `rawmat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `raw_material`
--
ALTER TABLE `raw_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
