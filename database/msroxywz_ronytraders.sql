-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 19, 2023 at 01:39 PM
-- Server version: 10.3.37-MariaDB-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `msroxywz_ronytraders`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(7, 'কীটনাশক', '2022-06-21 16:28:07', '2022-06-21 16:28:07'),
(8, 'সার', '2022-07-23 00:46:04', '2022-07-23 00:46:04');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `photo`, `created_at`, `updated_at`) VALUES
(2, 'Nisad', 'Local', '+8801723275785', 'Rangpur Rajshahi Bangladesh', NULL, '2022-06-21 03:51:16', '2022-06-21 03:51:16'),
(3, 'Rony', 'Local', '01639380330', 'Prodhanabad (Jharpara)', NULL, '2022-06-21 16:11:23', '2022-07-30 17:27:23'),
(4, 'MD HAZRAT ALI (Bindu)', 'Local', '01314164784', 'Sal mara', NULL, '2022-06-22 23:25:24', '2022-06-30 21:01:51'),
(5, 'Sumon', 'Local', '01723275785', 'Prodhanabad (Jharpara)', NULL, '2022-06-25 15:49:06', '2022-06-25 15:49:06'),
(6, 'Joynal Abedin', 'Local', '01916573934', 'Khorarpar', NULL, '2022-06-25 16:59:58', '2022-07-15 18:58:29'),
(7, 'Aktarujjaman badol', 'Local', '01788229926', 'Dumortola', NULL, '2022-06-25 18:02:00', '2022-07-26 21:00:56'),
(8, 'Md Wahed Ali', 'Local', '01781197220', 'Darar hat odhikar parara', NULL, '2022-06-26 23:46:31', '2022-06-26 23:46:31'),
(9, 'Abdul Salam', 'Local', '12345678910', 'Hajera Danga 19 Ghor', NULL, '2022-06-27 01:32:14', '2022-06-30 20:54:34'),
(10, 'Kabal', 'Local', '01791875138', 'Noyon Para', NULL, '2022-06-27 19:07:49', '2022-06-27 19:07:49'),
(11, 'Arif Mama', 'Local', '01710281138', 'Khorarpar', NULL, '2022-06-27 19:14:32', '2022-06-27 19:14:32'),
(12, 'Forhad vai', 'Local', '01723972758', 'Kaligonj Bazar', NULL, '2022-06-27 19:44:36', '2022-06-27 19:44:36'),
(13, 'habib', 'Local', '10245122542', 'kaligoj', NULL, '2022-06-29 00:02:54', '2022-06-29 00:02:54'),
(14, 'Azat Alli', 'Local', '01765992767', 'Dumotla', NULL, '2022-06-29 23:25:55', '2022-06-29 23:25:55'),
(15, 'Lokman', 'Local', '01793888131', 'Sason kali', NULL, '2022-06-30 19:46:13', '2022-06-30 19:46:13'),
(16, 'Reboti', 'Local', '01740931660', 'Noyan Para', NULL, '2022-07-01 00:32:37', '2022-07-01 00:32:37'),
(17, 'Rohim', 'Local', '01568458311', 'Dakaiya Para', NULL, '2022-07-01 22:10:43', '2022-07-01 22:10:43'),
(18, 'Md.whab', 'Local', '01763173337', 'Dakaiwa Para', NULL, '2022-07-01 22:35:05', '2022-07-01 22:35:05'),
(19, 'Ab.Malek', 'Local', '01740927108', 'Shimultoli', NULL, '2022-07-03 15:52:32', '2022-07-03 15:52:32'),
(20, 'Md: Allal Udin', 'Local', '01764817848', 'Rajar Hat', NULL, '2022-07-03 18:56:38', '2022-07-03 19:14:00'),
(21, 'Md shofikul', 'Local', '01923426928', 'Dhakaya para', NULL, '2022-07-03 23:36:58', '2022-07-03 23:36:58'),
(22, 'বেলাল ভাই', 'Local', '01772882601', 'দাড়ার হাট', NULL, '2022-07-04 16:52:18', '2022-07-04 16:52:32'),
(23, 'Md: Nowser Alli', 'Local', '01722091676', 'Salmaea para', NULL, '2022-07-04 21:03:41', '2022-07-04 21:03:41'),
(24, 'Md: Nowser Alli', 'Local', '01722091676', 'Salmaea para', NULL, '2022-07-04 21:03:41', '2022-07-04 21:03:41'),
(25, 'Ab:Rajjak', 'Local', '01762965115', 'Shimultoli', NULL, '2022-07-04 23:03:28', '2022-07-04 23:03:28'),
(26, 'Moksed Ali', 'Local', '12345678911', 'Dhakaiya para', NULL, '2022-07-05 15:21:14', '2022-07-05 15:21:14'),
(27, 'Anisam Muajjim', 'Local', '12345678900', 'B M Collage Mor', NULL, '2022-07-11 23:21:28', '2022-07-11 23:21:28'),
(28, 'Muslem Kaka', 'Local', '01740963615', 'Dhakaiya para', NULL, '2022-07-14 18:18:29', '2022-07-14 18:18:29'),
(29, 'Abdul Hamid', 'Wholesell', '01750654212', 'Lohagara', NULL, '2022-07-14 21:58:13', '2022-07-18 15:04:35'),
(30, 'ফরিদুল ইসলাম', 'Local', '01737201650', 'মৌমারী', NULL, '2022-07-14 23:35:27', '2022-07-14 23:35:27'),
(31, 'Ismail vai', 'Local', '01234567890', 'Shimultoli', NULL, '2022-07-15 20:44:18', '2022-07-15 23:25:19'),
(32, 'Johur Ali', 'Local', '01708974778', 'Sason kali', NULL, '2022-07-15 22:03:39', '2022-07-15 22:03:39'),
(33, 'বঙ্কিম', 'Local', '01737618067', 'ফুলবাড়ি', NULL, '2022-07-15 22:17:33', '2022-07-15 22:17:33'),
(34, 'Dolon', 'Wholesell', '01724045302', 'Somulur Hat', NULL, '2022-07-16 20:08:42', '2022-08-01 15:09:47'),
(35, 'Md.Hafijur Rahman', 'Local', '01741201796', 'Santinagar Munsipara', NULL, '2022-07-16 20:54:01', '2022-07-16 20:54:01'),
(36, 'Moksedul islam', 'Local', '01707587886', 'Glanty Bazar', NULL, '2022-07-16 22:18:30', '2022-07-16 22:18:30'),
(37, 'শাহ্‌ আলম', 'Local', '01751121110', 'প্রেম বাজার', NULL, '2022-07-16 22:28:30', '2022-07-16 22:28:30'),
(38, 'নয়ন', 'Local', '123456789102', 'ডেবিদুবা', NULL, '2022-07-16 23:00:18', '2022-07-16 23:00:18'),
(39, 'নয়ন', 'Local', '123456789102', 'ডেবিদুবা', NULL, '2022-07-16 23:00:18', '2022-07-16 23:00:18'),
(40, 'নয়ন', 'Local', '123456789102', 'ডেবিদুবা', NULL, '2022-07-16 23:00:18', '2022-07-16 23:00:18'),
(41, 'নয়ন', 'Local', '1234567891', 'ডেবিদুবা', NULL, '2022-07-16 23:00:18', '2022-07-16 23:00:18'),
(42, 'Babul dorji', 'Local', '14702587981', 'Modurampara', NULL, '2022-07-17 14:00:43', '2022-07-17 14:00:43'),
(43, 'Mostofa', 'Local', '01783805839', 'Momari', NULL, '2022-07-18 01:21:59', '2022-07-18 01:21:59'),
(44, 'সফিকুল', 'Wholesell', '01740104019', 'হাজেরা দাঙ্গা', NULL, '2022-07-18 17:19:30', '2022-07-18 17:19:30'),
(45, 'Humawun B.S', 'Local', '01726321490', 'Fulbare', NULL, '2022-07-19 21:41:20', '2022-07-19 21:41:20'),
(46, 'monirul islam', 'Wholesell', '01738255844', 'Kaligonj Bazar', NULL, '2022-07-20 01:57:03', '2022-07-20 01:57:03'),
(49, 'Dolon', 'Wholesell', '01724045302', 'Somulur hat', NULL, '2022-07-21 21:54:48', '2022-08-01 15:11:12'),
(50, 'lalon', 'Local', '01767077800', 'Kaligonj Bazar', NULL, '2022-07-21 22:13:16', '2022-07-21 22:13:16'),
(51, 'muslim', 'Local', '01743052683', 'Dhakaiya para', NULL, '2022-07-22 00:41:09', '2022-07-22 00:41:09'),
(52, 'abdula beyai', 'Local', '01307382683', 'Kaligonj hotat para', NULL, '2022-07-22 01:29:39', '2022-07-22 01:29:39'),
(53, 'Harunr rosid', 'Local', '01479856231', 'simul toli', NULL, '2022-07-22 16:18:52', '2022-07-22 16:18:52'),
(54, 'Shamim Sikder', 'Wholesell', '01717119462', 'fulbari sikdermor', NULL, '2022-07-22 20:01:50', '2022-07-22 20:01:50'),
(55, 'MD Sabul islam', 'Wholesell', '01723533012', 'dangirhat bazar', NULL, '2022-07-22 20:07:36', '2022-07-22 20:07:36'),
(56, 'Muzzamel Hok', 'Wholesell', '1234567890', 'Kaligonj Bazar', NULL, '2022-07-23 02:11:49', '2022-07-23 02:11:49'),
(57, 'Habibur RHOMAN', 'Local', '01727373950', 'BEKHARI', NULL, '2022-07-23 19:00:41', '2022-07-23 19:00:41'),
(58, 'Shawon', 'Local', '01779869445', 'Golandi', NULL, '2022-07-24 01:17:44', '2022-07-24 01:17:44'),
(59, 'Jamal', 'Local', '01738279984', 'Mumari', NULL, '2022-07-26 00:02:09', '2022-07-26 00:02:09'),
(60, 'Masud vei', 'Local', '01738696443', 'Lohagara', NULL, '2022-07-27 13:40:48', '2022-07-27 13:40:48'),
(61, 'omor faruk', 'Local', '01744368331', 'jarpara', NULL, '2022-07-27 13:48:07', '2022-07-27 13:48:07'),
(62, 'Shabul islam', 'Wholesell', '01702693480', 'Dhangir hat', NULL, '2022-07-27 14:32:34', '2022-07-27 14:32:34'),
(63, 'Ratul', 'Local', '01732991156', 'Jharpara', NULL, '2022-07-27 14:59:39', '2022-07-27 14:59:39'),
(64, 'Dipok Baniya', 'Wholesell', '01713773968', 'Kaliganj', NULL, '2022-07-27 15:12:04', '2022-07-27 15:12:04'),
(65, 'moinudin', 'Local', '01714254203', 'mowmari', NULL, '2022-07-28 00:40:38', '2022-07-28 00:40:38'),
(66, 'Aminul Dis', 'Local', '01713731425', 'Prodhanabad (Jharpara)', NULL, '2022-07-29 02:05:13', '2022-07-29 02:05:13'),
(67, 'Belal vai', 'Wholesell', '017772882601', 'Darar hat', NULL, '2022-07-29 22:35:29', '2022-07-29 22:35:29'),
(68, 'Jolil Vai', 'Wholesell', '01740854865', 'Jharbri', NULL, '2022-07-29 23:00:05', '2022-07-29 23:00:05'),
(69, 'Babu/Rubel', 'Local', '01796909211', 'Dokan Malik/Kaligonj', NULL, '2022-07-29 23:09:53', '2022-07-29 23:09:53'),
(70, 'Aziz', 'Local', '01986045125', 'Hajera Danga 18 Ghor', NULL, '2022-07-30 14:41:46', '2022-07-30 14:41:46'),
(71, 'saiful Bepari', 'Local', '01780871254', 'Fulbari', NULL, '2022-07-31 01:16:28', '2022-07-31 01:16:28'),
(72, 'Nur hosen', 'Local', '01721754613', 'Khochabari /painkan para', NULL, '2022-07-31 16:54:09', '2022-07-31 16:54:09'),
(73, 'sochin roy', 'Wholesell', '01737693185', 'khokerhat', NULL, '2022-08-01 00:28:47', '2022-08-01 00:29:52'),
(74, 'kobirul islam', 'Wholesell', '01717131049', 'Khochabari', NULL, '2022-08-03 16:40:52', '2022-08-03 16:40:52'),
(75, 'kholil membar', 'Local', '01719686072', 'dararpar', NULL, '2022-08-03 18:02:33', '2022-08-03 18:02:33'),
(76, 'Arif paikar', 'Wholesell', '01309239606', 'Datuya', NULL, '2022-08-04 19:42:39', '2022-08-04 19:42:39'),
(77, 'Rabbi', 'Local', '01737359760', 'Fulbari', NULL, '2022-08-04 20:14:09', '2022-08-04 20:14:09'),
(78, 'Anisur sarkar', 'Local', '01712415946', 'Dakaia para', NULL, '2022-08-04 23:47:24', '2022-08-04 23:47:24'),
(79, 'rajjak', 'Wholesell', '01742790320', 'siberhat', NULL, '2022-08-05 00:01:36', '2022-08-05 00:01:36'),
(80, 'Hossain', 'Wholesell', '01301591556', 'khagerhat', NULL, '2022-08-05 16:44:16', '2022-08-05 16:44:16'),
(81, 'Babu 2', 'Local', '01318501632', 'somulurhat guyageram', NULL, '2022-08-06 00:50:17', '2022-08-06 00:50:17'),
(82, 'sahojahan', 'Local', '01724080345', 'mowmare', NULL, '2022-08-12 00:25:16', '2022-08-12 00:25:16'),
(83, 'inhdor mohon', 'Local', '01750528679', 'Golandi para', NULL, '2022-08-12 01:41:51', '2022-08-12 01:41:51'),
(84, 'hakim', 'Local', '01788229945', 'sadamermor', NULL, '2022-08-12 16:12:00', '2022-08-12 16:12:00'),
(85, 'Abdulla', 'Local', '01730842015', 'Adikari para', NULL, '2022-08-12 21:32:34', '2022-08-12 21:32:34'),
(86, 'taramiya', 'Local', '01774285386', 'sosankale', NULL, '2022-08-13 22:24:03', '2022-08-13 22:24:03'),
(87, 'wasim', 'Wholesell', 'dagir hat', '01717296111', NULL, '2022-08-19 19:51:08', '2022-08-19 19:51:08'),
(88, 'Abdul Malek', 'Local', '01796841200', 'Mollapara', NULL, '2022-08-23 23:54:33', '2022-08-23 23:54:33'),
(89, 'Bs Fulbari', 'Local', 'fulbari', '01726321490', NULL, '2022-08-25 20:00:54', '2022-08-25 20:00:54'),
(90, 'nurujaman', 'Wholesell', '01740994621', 'khochabare', NULL, '2022-08-27 01:07:32', '2022-08-27 01:07:32'),
(91, 'relop', 'Local', '01746905194', 'aktarmor', NULL, '2022-08-28 20:34:01', '2022-08-28 20:34:01'),
(92, 'আরিফ', 'Local', '0178680635', 'কালীগঞ্জ', NULL, '2022-09-05 01:34:39', '2022-09-05 01:34:39'),
(93, 'Auron', 'Wholesell', '01713711492', 'Fultola', NULL, '2022-09-14 16:55:29', '2022-09-14 16:55:29'),
(94, 'jakir hossen', 'Wholesell', '01745529155', 'kaligoing', NULL, '2022-09-17 17:23:53', '2022-09-17 17:23:53'),
(95, 'jamai / hasen', 'Wholesell', '01740929302', 'Sekberada / fulbari', NULL, '2022-09-20 17:13:13', '2022-09-20 17:13:13'),
(96, 'Asraful Islam', 'Local', '01740242612', 'Dhakaiyapara, Kaligonj', NULL, '2022-11-20 02:39:07', '2022-11-20 02:39:07');

-- --------------------------------------------------------

--
-- Table structure for table `custom_order_details`
--

CREATE TABLE `custom_order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_quantity` varchar(255) DEFAULT NULL,
  `product_quantity_type` varchar(255) DEFAULT NULL,
  `product_price` varchar(255) DEFAULT NULL,
  `sub_total` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_order_details`
--

INSERT INTO `custom_order_details` (`id`, `order_id`, `product_name`, `product_quantity`, `product_quantity_type`, `product_price`, `sub_total`, `created_at`, `updated_at`) VALUES
(1, 5, 'gjhgh', '1', 'কেজি', '20', '20', NULL, NULL),
(2, 6, 'ইউরিয়া সার', '5', 'বস্তা', '800', '4000', NULL, NULL),
(3, 6, 'ডাভ', '5', 'বস্তা', '800', '4000', NULL, NULL),
(4, 6, 'টি এস পি', '5', 'বস্তা', '1100', '5500', NULL, NULL),
(5, 6, 'এম ও পি', '5', 'বস্তা', '750', '3750', NULL, NULL),
(6, 7, 'tfgfd', '1', 'বস্তা', '20', '20', NULL, NULL),
(7, 9, 'Sampu', '5', 'কেজি', '6', '30', NULL, NULL),
(8, 9, 'Lobon', '5', 'বস্তা', '200', '1000', NULL, NULL),
(9, 11, 'SAr', '50', 'কেজি', '16', '800', NULL, NULL),
(10, 15, 'MOP', '10', 'কেজি', '26', '260', NULL, NULL),
(11, 15, 'TSP', '5', 'কেজি', '28', '140', NULL, NULL),
(12, 44, 'sar', '1.5', 'কেজি', '20', '30', NULL, NULL),
(13, 65, 'জিপসাম', '10', 'কেজি', '25', '250', NULL, NULL),
(14, 389, 'Sam', '5', 'কেজি', '25', '125', NULL, NULL),
(15, 389, 'Kola', '50', 'কেজি', '5', '250', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `duepayments`
--

CREATE TABLE `duepayments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_amount` varchar(255) NOT NULL,
  `payBy` varchar(255) NOT NULL,
  `pay_date` varchar(255) NOT NULL,
  `pay_month` varchar(255) NOT NULL,
  `pay_year` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `duepayments`
--

INSERT INTO `duepayments` (`id`, `customer_id`, `order_id`, `payment_amount`, `payBy`, `pay_date`, `pay_month`, `pay_year`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '6', 'Hand Cash', '20/06/2022', 'June', '2022', '2022-06-20 20:09:07', '2022-06-20 20:09:07'),
(2, 1, 2, '10', 'Hand Cash', '20/06/2022', 'June', '2022', '2022-06-20 22:13:18', '2022-06-20 22:13:18'),
(3, 2, 3, '91', 'Hand Cash', '21/06/2022', 'June', '2022', '2022-06-21 16:12:21', '2022-06-21 16:12:21'),
(4, 3, 6, '7200', 'Hand Cash', '22/06/2022', 'June', '2022', '2022-06-22 14:41:31', '2022-06-22 14:41:31'),
(5, 3, 9, '180', 'Hand Cash', '23/06/2022', 'June', '2022', '2022-06-23 19:07:16', '2022-06-23 19:07:16'),
(6, 3, 6, '50', 'Hand Cash', '23/06/2022', 'June', '2022', '2022-06-23 19:07:31', '2022-06-23 19:07:31'),
(7, 3, 4, '100', 'Hand Cash', '29/06/2022', 'June', '2022', '2022-06-29 21:37:59', '2022-06-29 21:37:59'),
(8, 3, 3, '5', 'Hand Cash', '29/06/2022', 'June', '2022', '2022-06-29 21:38:44', '2022-06-29 21:38:44'),
(9, 7, 22, '15', 'Hand Cash', '30/06/2022', 'June', '2022', '2022-06-30 15:43:05', '2022-06-30 15:43:05'),
(10, 6, 11, '300', 'Hand Cash', '01/07/2022', 'July', '2022', '2022-07-01 23:34:58', '2022-07-01 23:34:58'),
(11, 10, 15, '170', 'Hand Cash', '03/07/2022', 'July', '2022', '2022-07-03 19:11:35', '2022-07-03 19:11:35'),
(12, 12, 16, '10064', 'Hand Cash', '03/07/2022', 'July', '2022', '2022-07-03 19:13:22', '2022-07-03 19:13:22'),
(13, 5, 21, '1039', 'Hand Cash', '03/07/2022', 'July', '2022', '2022-07-03 19:14:58', '2022-07-03 19:14:58'),
(14, 19, 28, '80', 'Hand Cash', '03/07/2022', 'July', '2022', '2022-07-03 20:15:23', '2022-07-03 20:15:23'),
(15, 25, 36, '180', 'Hand Cash', '04/07/2022', 'July', '2022', '2022-07-04 23:13:18', '2022-07-04 23:13:18'),
(16, 20, 52, '2976', 'Hand Cash', '11/07/2022', 'July', '2022', '2022-07-11 18:31:39', '2022-07-11 18:31:39'),
(17, 20, 51, '2976', 'Hand Cash', '11/07/2022', 'July', '2022', '2022-07-11 18:31:50', '2022-07-11 18:31:50'),
(18, 28, 60, '800', 'Hand Cash', '14/07/2022', 'July', '2022', '2022-07-14 23:51:40', '2022-07-14 23:51:40'),
(19, 7, 81, '100', 'Hand Cash', '17/07/2022', 'July', '2022', '2022-07-17 13:48:40', '2022-07-17 13:48:40'),
(20, 45, 102, '2770', 'Hand Cash', '19/07/2022', 'July', '2022', '2022-07-19 22:27:46', '2022-07-19 22:27:46'),
(21, 80, 226, '94890', 'Hand Cash', '06/08/2022', 'August', '2022', '2022-08-06 13:57:32', '2022-08-06 13:57:32'),
(22, 64, 150, '5120', 'Hand Cash', '06/08/2022', 'August', '2022', '2022-08-06 22:51:50', '2022-08-06 22:51:50'),
(23, 87, 284, '4230', 'Hand Cash', '22/08/2022', 'August', '2022', '2022-08-22 18:13:21', '2022-08-22 18:13:21'),
(24, 87, 295, '1160', 'Hand Cash', '27/08/2022', 'August', '2022', '2022-08-27 20:44:47', '2022-08-27 20:44:47'),
(25, 87, 294, '8835', 'Hand Cash', '27/08/2022', 'August', '2022', '2022-08-27 20:46:26', '2022-08-27 20:46:26'),
(26, 95, 352, '400087', 'Hand Cash', '23/09/2022', 'September', '2022', '2022-09-23 23:30:39', '2022-09-23 23:30:39'),
(27, 95, 351, '193081', 'Hand Cash', '23/09/2022', 'September', '2022', '2022-09-23 23:30:53', '2022-09-23 23:30:53'),
(28, 7, 364, '6850', 'Hand Cash', '14/10/2022', 'October', '2022', '2022-10-14 19:20:33', '2022-10-14 19:20:33'),
(29, 96, 389, '15', 'Hand Cash', '19/11/2022', 'November', '2022', '2022-11-20 02:45:43', '2022-11-20 02:45:43'),
(30, 18, 26, '180', 'Hand Cash', '27/12/2022', 'December', '2022', '2022-12-27 20:31:30', '2022-12-27 20:31:30'),
(31, 5, 135, '105', 'Hand Cash', '29/01/2023', 'January', '2023', '2023-01-29 17:28:49', '2023-01-29 17:28:49'),
(32, 5, 134, '205', 'Hand Cash', '29/01/2023', 'January', '2023', '2023-01-29 17:29:04', '2023-01-29 17:29:04');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `salary` double(8,2) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `joining_date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone`, `address`, `salary`, `photo`, `nid`, `joining_date`, `created_at`, `updated_at`) VALUES
(1, 'Arif Mama', 'tmscedu2019@gmail.com', '01710281138', 'Prodhanabad (Jharpara)', 9000.00, NULL, '91548892153', '2022-06-01', '2022-06-23 00:56:48', '2022-06-23 00:56:48'),
(2, 'Aktarujjaman badol', 'Mdaktarujjamanbadolb@gmail.com', '01788229926', 'Dumor tala', 8000.00, NULL, '4640007649', '2022-06-01', '2022-07-15 20:17:23', '2022-07-15 20:17:23'),
(4, 'Kirton Roy', 'kirtonroy4030@gmail.com', '01722581933', 'Motasonnasi,Bandor Para', 6000.00, NULL, NULL, '2022-11-05', '2022-12-27 20:29:02', '2022-12-27 20:29:02');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `details` text NOT NULL,
  `amount` varchar(255) NOT NULL,
  `expense_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `details`, `amount`, `expense_date`, `created_at`, `updated_at`) VALUES
(3, 'Marshal Company, Gentco 1kg 500 pis product.', '45000', '2022-06-27', '2022-06-27 18:37:06', '2022-06-27 18:38:02'),
(6, 'Swazis Company product buying', '194700', '2022-06-29', '2022-06-29 22:41:45', '2022-06-29 22:41:45'),
(7, 'Marshal Company, Danfuran 1kg 500 pis product.', '50000', '2022-06-30', '2022-06-30 21:12:32', '2022-06-30 21:12:32');

-- --------------------------------------------------------

--
-- Table structure for table `extra`
--

CREATE TABLE `extra` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vat` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `Invoices` longtext DEFAULT NULL,
  `total_amount` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `customer_name`, `address`, `date`, `type`, `Invoices`, `total_amount`, `created_at`, `updated_at`) VALUES
(1, 'fdfdsfsd', 'dsfdsf', '2022-06-26', 'কেনা', '[{\"name\":\"fdsfsdf\",\"weight_quantity\":\"20\",\"price\":\"1\"}]', '20', '2022-06-26 16:33:51', '2022-06-26 16:33:51'),
(2, 'Senco Company', 'Kaligonj', '2022-06-27', 'কেনা', '[{\"name\":\"Gentco\",\"weight_quantity\":\"500\",\"price\":\"90\"}]', '45000', '2022-06-27 18:34:11', '2022-06-27 18:34:11'),
(3, 'Marshal Company', 'Kaligonj', '2022-06-27', 'কেনা', '[{\"name\":\"Gentco\",\"weight_quantity\":\"500\",\"price\":\"90\"}]', '45000', '2022-06-27 18:35:34', '2022-06-27 18:35:34'),
(4, 'Swazis', 'kaligonj', '2022-06-29', 'কেনা', '[{\"name\":\"Joar 500ml\",\"weight_quantity\":\"60\",\"price\":\"195\"},{\"name\":\"Cona Top 50ml\",\"weight_quantity\":\"120\",\"price\":\"117\"},{\"name\":\"Cona Top 100ml\",\"weight_quantity\":\"240\",\"price\":\"206\"},{\"name\":\"Cona Top 500ml\",\"weight_quantity\":\"120\",\"price\":\"1005\"}]', '195780', '2022-06-29 22:40:13', '2022-06-29 22:40:13'),
(5, 'Marshal Company', 'Kaligonj', '2022-06-29', 'কেনা', '[{\"name\":\"Danfuran 1kg\",\"weight_quantity\":\"500\",\"price\":\"100\"}]', '50000', '2022-07-04 17:20:54', '2022-07-04 17:20:54'),
(6, NULL, NULL, NULL, 'কেনা', '[{\"name\":null,\"weight_quantity\":null,\"price\":null}]', '0', '2022-12-07 13:16:40', '2022-12-07 13:16:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_25_202239_create_employees_table', 1),
(5, '2020_09_29_204653_create_suppliers_table', 1),
(6, '2020_09_29_214249_create_categories_table', 1),
(7, '2020_09_30_144042_create_products_table', 1),
(8, '2020_09_30_211814_create_expenses_table', 1),
(9, '2020_10_02_093726_create_salaries_table', 1),
(10, '2020_10_02_202045_create_customers_table', 1),
(11, '2020_10_03_191534_create_pos_table', 1),
(12, '2020_10_04_105052_create_extra_table', 1),
(13, '2020_10_04_194336_create_orders_table', 1),
(14, '2020_10_04_194547_create_order_details_table', 1),
(15, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(16, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(17, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(18, '2016_06_01_000004_create_oauth_clients_table', 2),
(19, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(20, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(21, '2022_05_15_120650_create_duepayments_table', 3),
(22, '2022_06_15_132454_create_invoices_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('02019df71a6b047f3b975bd4fa707497acc3d700cc4eda98c92b7ff1c22a2a85b22494cffd946d2a', 3, 3, 'accessToken', '[]', 0, '2022-07-24 17:07:44', '2022-07-24 17:07:44', '2023-07-24 13:07:44'),
('020d21a403140e44cf8b795c12717196ba8e0f2059386ebf4a46e996d620e2f2de3104aaf21193ce', 3, 3, 'accessToken', '[]', 0, '2022-06-13 09:00:30', '2022-06-13 09:00:30', '2023-06-13 15:00:30'),
('02bced7c5d09695391cdb3aa419b9c28cb6e7ce7d27570acd91a9c801779078170b6d927bb713386', 3, 3, 'accessToken', '[]', 0, '2022-07-23 00:25:37', '2022-07-23 00:25:37', '2023-07-22 20:25:37'),
('064551dd049f1ff97ac3e58731fa6d592bf8c3cc818bf145acb41316c6c760dbfc2c0c58d9a7e1ed', 3, 3, 'accessToken', '[]', 0, '2022-07-15 14:53:38', '2022-07-15 14:53:38', '2023-07-15 10:53:38'),
('077e01be437678d71d55c5724333b8eb29960dc1e6ecf7f5153cac68d69171182ed93d3997015aeb', 3, 3, 'accessToken', '[]', 0, '2022-10-27 00:15:12', '2022-10-27 00:15:12', '2023-10-26 20:15:12'),
('09fdf399b6c95383b15f8c4667c675b1152a1d71d49fa46180252ae66fdb06a1f9c768d6e2a340bb', 3, 3, 'accessToken', '[]', 0, '2023-01-26 03:43:00', '2023-01-26 03:43:00', '2024-01-25 22:43:00'),
('0a0f65b79bc7fb4eaed00106dd37a15a7a8fc81a70a6a4c4ea73a0446876e6735c1ed3eacc32483a', 3, 3, 'accessToken', '[]', 0, '2022-09-23 15:51:11', '2022-09-23 15:51:11', '2023-09-23 11:51:11'),
('0eb2c70f8e92557ce61b046bfd97cd43eda18e6c9ef4f7a518fa852f8f1e8c587dd3e5a029b73647', 3, 3, 'accessToken', '[]', 0, '2022-06-25 22:56:23', '2022-06-25 22:56:23', '2023-06-25 18:56:23'),
('0f213a5c2341e588334a40638135f7e278dfe3a27ac2a7423d0b017aaf021abe9f876d03ea5f3a16', 3, 3, 'accessToken', '[]', 0, '2022-06-21 03:33:38', '2022-06-21 03:33:38', '2023-06-20 23:33:38'),
('11080dfb6cd50fa9909558a9ca4784efacd3271d1a9712ff77d64dc358d3055b837dfebb8399ea72', 3, 3, 'accessToken', '[]', 0, '2022-06-26 01:36:01', '2022-06-26 01:36:01', '2023-06-25 21:36:01'),
('128689054b015f80cd03c8d69fff2876f0abf802ed845333a6fd87f37ca9106d151b96664b0d6706', 3, 3, 'accessToken', '[]', 0, '2022-06-25 22:56:23', '2022-06-25 22:56:23', '2023-06-25 18:56:23'),
('12b7631d8a7f94e47e1b8f18b3323c30d3637ca6f6af49dc0ff221728f7b039d087247cbb39d6a73', 3, 3, 'accessToken', '[]', 0, '2022-05-10 15:19:00', '2022-05-10 15:19:00', '2023-05-10 21:19:00'),
('17e3aa1691e92931ef8d235e525403be41cc4c504e4a529af19016ba5e05aa345e72beb74f929593', 3, 3, 'accessToken', '[]', 0, '2022-05-10 15:19:22', '2022-05-10 15:19:22', '2023-05-10 21:19:22'),
('1865bd5a4baaefe74cd635952ec4efca85972ab7aabbd270b12e9dff714d18705eab3b34be3fc7a5', 3, 3, 'accessToken', '[]', 0, '2022-10-26 04:19:57', '2022-10-26 04:19:57', '2023-10-26 00:19:57'),
('18e234d98fd41a4d49f01dfd5a0dde0d09a1e5fea9ed4620b1e18f116e80813dc3c338c8a4fcae98', 3, 3, 'accessToken', '[]', 0, '2023-01-29 17:26:15', '2023-01-29 17:26:15', '2024-01-29 12:26:15'),
('19bff59465fc7a262dea00a1bd5dc458bad7fa9ea87252d249bae0c30c81787dfc2dda1c55795233', 3, 3, 'accessToken', '[]', 0, '2022-08-22 14:57:29', '2022-08-22 14:57:29', '2023-08-22 10:57:29'),
('1c69551be92a09a6fcbea40144aa20552337423237e2ca75f54f1683c2776da14d3ffb64ffe9ddbf', 3, 3, 'accessToken', '[]', 0, '2022-06-13 09:00:30', '2022-06-13 09:00:30', '2023-06-13 15:00:30'),
('1cd5db789933a2186631e0e4cc35505cfaaedf662b2e9b165958b29833c51d8fd67ece3d93886382', 3, 3, 'accessToken', '[]', 0, '2022-07-09 18:57:51', '2022-07-09 18:57:51', '2023-07-09 14:57:51'),
('1d898d494251ed9777d777bb9819e23f57318526f16ccaf30befd607fbbad94a31a970bad23e8a81', 3, 3, 'accessToken', '[]', 0, '2022-05-10 15:19:22', '2022-05-10 15:19:22', '2023-05-10 21:19:22'),
('1f2172a617fd35d21ba9e69974c10ad7496666ecf2c04c74bf230b22f636ecd316640b499e9b1195', 3, 3, 'accessToken', '[]', 0, '2022-11-19 06:46:17', '2022-11-19 06:46:17', '2023-11-19 01:46:17'),
('1f7748f80407bb24438edc9024cfc2d58ce2884ddcb49704ca7eb4ae8ec7d01ce0a03ab9bec7d0fe', 3, 3, 'accessToken', '[]', 0, '2022-05-09 17:51:56', '2022-05-09 17:51:56', '2023-05-09 23:51:56'),
('20e7c5b02b40c727e84e02e03be7b99c15b0ac15304be32079e963848f41e14b5d6cb807eb087d8c', 3, 3, 'accessToken', '[]', 0, '2022-06-23 00:52:26', '2022-06-23 00:52:26', '2023-06-22 20:52:26'),
('230b39993259c86d89d554faa628c48b71ecf65dd635c30b5f4cead7f0c248f337ba4c6ffaf23213', 3, 3, 'accessToken', '[]', 0, '2022-07-23 00:25:37', '2022-07-23 00:25:37', '2023-07-22 20:25:37'),
('23a6ac90695d1e76ef670ea971d3a82b0e78fa18be1fbc590af293b0dccb6c270637c8cac546ba0b', 3, 3, 'accessToken', '[]', 0, '2022-06-20 03:13:09', '2022-06-20 03:13:09', '2023-06-20 09:13:09'),
('23ea486513a66763f726439166c1c80f8ee5855549b66cafd5f7323f41e369a620ddcd3951a6b7fd', 3, 3, 'accessToken', '[]', 0, '2023-01-22 21:07:31', '2023-01-22 21:07:31', '2024-01-22 16:07:31'),
('23f3b228d15e3ea4574c2ff246251bc59fc858dc463738ea040140f8d15e326b9c7d4a963169bb15', 3, 3, 'accessToken', '[]', 0, '2022-06-25 22:56:23', '2022-06-25 22:56:23', '2023-06-25 18:56:23'),
('28fd5351306ef6be74643f8cef79019db5239891312b56d898dbd6278adb371ed3f07d23ec9269e5', 3, 3, 'accessToken', '[]', 0, '2023-01-10 22:10:04', '2023-01-10 22:10:04', '2024-01-10 17:10:04'),
('2a0086967cea70693f5c1a3d1cc4edbe6e69dfba78e59a62ba4c68dd82997f8dad7e95c063a7bbf1', 3, 3, 'accessToken', '[]', 0, '2022-05-10 16:21:29', '2022-05-10 16:21:29', '2023-05-10 22:21:29'),
('2c1cc99a6268c44478ca958324907efbf64407f3322e89e11e35a689a0cf28c799e6c867b8f70167', 3, 3, 'accessToken', '[]', 0, '2022-10-26 04:19:56', '2022-10-26 04:19:56', '2023-10-26 00:19:56'),
('30bd43524e7b9dc18584e7fed13cd3c245253776572b49f23637073831eed5faaba086b2d66e2042', 3, 3, 'accessToken', '[]', 0, '2022-06-25 23:43:31', '2022-06-25 23:43:31', '2023-06-25 19:43:31'),
('350e968bea171e3e4e6593aff35aefb8e51f7d3ca54f093f82e3c020114c898ed5e8a78953467742', 3, 3, 'accessToken', '[]', 0, '2022-12-08 17:57:40', '2022-12-08 17:57:40', '2023-12-08 12:57:40'),
('36148fbe52209bf389025bca897fca7580e0d5083b06ae39ab125dc6f89b1e7e8df866ded2646bd3', 3, 3, 'accessToken', '[]', 0, '2022-09-23 15:51:11', '2022-09-23 15:51:11', '2023-09-23 11:51:11'),
('371c7e38f71f72009b92847efc44f187522ca93bb004421eed5ec1206929bd8c23153bd08fa90a99', 3, 3, 'accessToken', '[]', 0, '2022-10-25 18:51:21', '2022-10-25 18:51:21', '2023-10-25 14:51:21'),
('3e675cf3fc567dc832e7bc750c29a93a611ed1176e3a3c134a479bd21288090ee4278910a0fc1e9b', 3, 3, 'accessToken', '[]', 0, '2022-07-28 22:32:01', '2022-07-28 22:32:01', '2023-07-28 18:32:01'),
('4153bb51d61fe2f8725374b288fee88a675a7c8fec1d0a4963b57928fec7d6cc87c11e6ea60627d8', 3, 3, 'accessToken', '[]', 0, '2022-10-25 18:51:21', '2022-10-25 18:51:21', '2023-10-25 14:51:21'),
('4256f8d7810b9b8a86ea1806b1060f10210ea43e279b2c5d9b7b9be6febadd3201b3908b8f1104dc', 3, 3, 'accessToken', '[]', 0, '2022-11-19 02:05:45', '2022-11-19 02:05:45', '2023-11-18 21:05:45'),
('426a3c4dd1b72b018f153e9fe6157a4111f2d47a68c3d3fa43d23f79c694d4416986406262fcef8c', 3, 3, 'accessToken', '[]', 0, '2023-01-26 03:43:00', '2023-01-26 03:43:00', '2024-01-25 22:43:00'),
('45da066dba301aefdf155020a5e38049f86eddaa27295c5bcc48b70ec46ecf1163cf191528d0e877', 3, 3, 'accessToken', '[]', 0, '2022-05-10 16:21:29', '2022-05-10 16:21:29', '2023-05-10 22:21:29'),
('460ed6afa691d91bb361ef0124ca6ba6e53a2c54c84fc98288f0f021af6658b5ec8750e4d8008b6b', 3, 3, 'accessToken', '[]', 0, '2023-01-22 21:07:31', '2023-01-22 21:07:31', '2024-01-22 16:07:31'),
('47295f1158b8226cb2e96b452facac65169690ae7080ea829157bc482fc1df57a3f30e2219997558', 3, 3, 'accessToken', '[]', 0, '2023-01-10 22:10:04', '2023-01-10 22:10:04', '2024-01-10 17:10:04'),
('48ae9f8f54a71a9ae0563739033260c5ae730804431bbd807c6ee12ad9cc119a5c6a223bc93e5b3d', 3, 3, 'accessToken', '[]', 0, '2022-05-09 18:31:05', '2022-05-09 18:31:05', '2023-05-10 00:31:05'),
('4e2e0d190b974ed2a224705abb8c4cfa40706b151305e619677a1bef0ffa4063f2354e4579290dd9', 3, 3, 'accessToken', '[]', 0, '2022-07-17 14:20:27', '2022-07-17 14:20:27', '2023-07-17 10:20:27'),
('506a824e7d7e39d66e326027fc0a4e7e634a89a70d7e803a03cfa518c01b8a4f43d93582004129e9', 3, 3, 'accessToken', '[]', 0, '2022-11-19 06:46:17', '2022-11-19 06:46:17', '2023-11-19 01:46:17'),
('526e8c77c0bef9d3c8662441f8e5593c308e1ad3eb45c6b89d3d1c7e4831230b571ad6aa582b39c1', 3, 3, 'accessToken', '[]', 0, '2022-12-08 02:18:06', '2022-12-08 02:18:06', '2023-12-07 21:18:06'),
('52c71b10de499280f34eeb2a993ce3b9b403757c00dcca14c6115c7b495c30b17384ad09812df154', 3, 3, 'accessToken', '[]', 0, '2022-07-01 01:56:39', '2022-07-01 01:56:39', '2023-06-30 21:56:39'),
('5a0a16cb8d54d36fbee5288a60d517acf99e3f2dc4eef404773f2960920f03b606eb71f855610fb7', 3, 3, 'accessToken', '[]', 0, '2022-07-01 01:56:39', '2022-07-01 01:56:39', '2023-06-30 21:56:39'),
('5a3d97cbfbd39139a4ea671f9d90be616254c1d2a64229728948dfd75fe1cce062f262586c80c883', 3, 3, 'accessToken', '[]', 0, '2022-07-13 13:07:18', '2022-07-13 13:07:18', '2023-07-13 09:07:18'),
('5b66bcc1aceb0da9da41bdebab8cbc62e8e1ecff351c8160014535cb60fca514c3a92f36a603ec6c', 3, 3, 'accessToken', '[]', 0, '2022-06-25 23:43:31', '2022-06-25 23:43:31', '2023-06-25 19:43:31'),
('5c184184ac0c2d3754bce21e3ba61e6de41cb661742f7b48307ab993a6c153b1d59a270075e30959', 3, 3, 'accessToken', '[]', 0, '2022-05-09 18:31:10', '2022-05-09 18:31:10', '2023-05-10 00:31:10'),
('5dde4ea4c0a83f275c5724e2b0e44fce0c9f6a4d239ae354cf587cf38405fd51922a571458bea7ec', 3, 3, 'accessToken', '[]', 0, '2022-07-09 18:57:51', '2022-07-09 18:57:51', '2023-07-09 14:57:51'),
('61e43b204c7d9be59c5a4a8344078550a146dc253393fe7f5098fc0fd569c84df82813ce924c059c', 3, 3, 'accessToken', '[]', 0, '2022-07-17 14:20:27', '2022-07-17 14:20:27', '2023-07-17 10:20:27'),
('655ecacbb0c6072b8e9082f76a221b6ed1b2f89f81f7ab3d24dc773b07d2c9530fd98235e0f02809', 3, 3, 'accessToken', '[]', 0, '2022-06-20 17:11:51', '2022-06-20 17:11:51', '2023-06-20 13:11:51'),
('6f886a2bd48c61333ec29db60901c8f8501a1ae31da05bc462c8e0510dd0f4d9f5de263ef1deacfa', 3, 3, 'accessToken', '[]', 0, '2022-06-20 17:35:09', '2022-06-20 17:35:09', '2023-06-20 13:35:09'),
('725b5fb3c31c3384b119def55e6f1c6c4e9ecbd7cf359505f643e81cf106038ae85b8c58c901af14', 3, 3, 'accessToken', '[]', 0, '2023-01-29 17:26:15', '2023-01-29 17:26:15', '2024-01-29 12:26:15'),
('7413cb261e314f3ab249f6ac742e464da5aad970744308a225134b7f02e9f339d6497e8c42557059', 3, 3, 'accessToken', '[]', 0, '2022-08-28 19:26:45', '2022-08-28 19:26:45', '2023-08-28 15:26:45'),
('779f118298792ab404ae61d1620d85508a355fd141d5f12be6e731242001a06df972d557aefbc772', 3, 3, 'accessToken', '[]', 0, '2022-12-08 17:57:40', '2022-12-08 17:57:40', '2023-12-08 12:57:40'),
('7e0696c1e0ed660b61b362aa8749375a8890f6cd3c2894c51737564ed4f41abd68e76cd00e178799', 3, 3, 'accessToken', '[]', 0, '2022-07-28 22:32:01', '2022-07-28 22:32:01', '2023-07-28 18:32:01'),
('7f1b44802b934c5cbc992710951a48643cdea211426811402210b09471753f9a1472156d210f3eec', 3, 3, 'accessToken', '[]', 0, '2022-06-25 22:56:23', '2022-06-25 22:56:23', '2023-06-25 18:56:23'),
('8503ce4f97828852f67f0fb984ea50df197e38110b16c21d74f2ab73d951cedb84bbe7d9b8a476b0', 3, 3, 'accessToken', '[]', 0, '2022-08-22 14:57:29', '2022-08-22 14:57:29', '2023-08-22 10:57:29'),
('87d2c9640fd733182101631f54e1218a353237321835884dfc39f93261f960c22d8673bdc74b9f6e', 3, 3, 'accessToken', '[]', 0, '2022-06-23 18:52:27', '2022-06-23 18:52:27', '2023-06-23 14:52:27'),
('8a6326337e967213158c514ab20863d158dc66a2b322aec62293d5cfba96ad10e53c2a4b00aa696d', 3, 3, 'accessToken', '[]', 0, '2022-07-21 17:51:49', '2022-07-21 17:51:49', '2023-07-21 13:51:49'),
('9108b1939d33660b162c8b76ae2e6433edf4d6652c0325964365dbedb67b572967d35775dd6f9091', 3, 3, 'accessToken', '[]', 0, '2022-06-13 08:55:50', '2022-06-13 08:55:50', '2023-06-13 14:55:50'),
('94a8fb93195c53f294bc822eb5ecc418a2a8627ece36a3224d6a97fdf6fcdd8424f09da868bff3b6', 3, 3, 'accessToken', '[]', 0, '2022-06-26 01:36:01', '2022-06-26 01:36:01', '2023-06-25 21:36:01'),
('9a3566c1216109331be2cf3808f8dc1264e69493b1404625976d283abe88566cc583826a035f5565', 3, 3, 'accessToken', '[]', 0, '2022-12-08 02:18:06', '2022-12-08 02:18:06', '2023-12-07 21:18:06'),
('9ab41baa0a830032c103e3007c33402246a37881a9271eea71314c4e6fde23b23a7842ddea41cb72', 3, 3, 'accessToken', '[]', 0, '2022-07-08 19:07:18', '2022-07-08 19:07:18', '2023-07-08 15:07:18'),
('9c3abcc69fa4b158e01906f22e79cfa3b6f84a6496f955a044078bf7e895d213f4e4fdbcb27f0874', 3, 3, 'accessToken', '[]', 0, '2022-10-27 00:15:12', '2022-10-27 00:15:12', '2023-10-26 20:15:12'),
('9e8df863c6c624ee28b19b5f1ce895018416a67bb0a31c9027765540149dcd0b081274490fbdfde0', 3, 3, 'accessToken', '[]', 0, '2022-06-23 00:52:26', '2022-06-23 00:52:26', '2023-06-22 20:52:26'),
('a0957db0c8bbea22522c73702294819e8d46e29b0015dd4fa219b1adf65c0a8378fee947071fac8b', 3, 3, 'accessToken', '[]', 0, '2022-06-25 17:24:23', '2022-06-25 17:24:23', '2023-06-25 13:24:23'),
('a1cf6f9217df8da0ead09d237c2a96d1dfcdce85adbc2aab901464b77ece034f8a21823cb8e7cb88', 3, 3, 'accessToken', '[]', 0, '2022-07-13 13:07:18', '2022-07-13 13:07:18', '2023-07-13 09:07:18'),
('a7724f43ee5f1e5972129338c13bfe1694f27382f03b1629b810043efa93d1a14cb0c563a558b3ce', 3, 3, 'accessToken', '[]', 0, '2022-07-08 19:07:18', '2022-07-08 19:07:18', '2023-07-08 15:07:18'),
('b48905d0c95177a05f230e5cce48d3511c511d81c4ccc5e0943f7fb193069d96b99d4ab6bae19938', 3, 3, 'accessToken', '[]', 0, '2022-05-09 18:46:16', '2022-05-09 18:46:16', '2023-05-10 00:46:16'),
('b76f6005bb11e2b47df5b0fba6394981acba2196d51b268ec813f72a3a44e5c14ba72e2ddcf8ed1e', 3, 3, 'accessToken', '[]', 0, '2022-06-25 17:24:23', '2022-06-25 17:24:23', '2023-06-25 13:24:23'),
('b7a21de6da51a0d6ad85b6310f05cfb90fe31117303461a9f30fd16889c9d86da20baaf469140239', 3, 3, 'accessToken', '[]', 0, '2022-06-13 08:55:50', '2022-06-13 08:55:50', '2023-06-13 14:55:50'),
('b9bd89480cf859f458a0507a43fca49248ee5e3ea6d67f8d2ad39c5c552015751374f9d4fb53eeac', 3, 3, 'accessToken', '[]', 0, '2022-06-20 17:36:19', '2022-06-20 17:36:19', '2023-06-20 13:36:19'),
('ba7d9e9b01483fcddf1ebf52453ab7059f7f62e478920c0faa76f729665797a05fc4c66deca55a87', 3, 3, 'accessToken', '[]', 0, '2022-06-20 17:36:20', '2022-06-20 17:36:20', '2023-06-20 13:36:20'),
('c0d770c39f6a7726a19debd55e63afac4bf2d47fcdec6245aae0509cb60bd825df5718160067a903', 3, 3, 'accessToken', '[]', 0, '2022-08-28 19:26:45', '2022-08-28 19:26:45', '2023-08-28 15:26:45'),
('c4eead5ae16d0e63255b3c45d3f23d4bf6cbed4edef629049c1314375507ca8cd3fa0e1ca3acb1cb', 3, 3, 'accessToken', '[]', 0, '2023-01-27 04:39:40', '2023-01-27 04:39:40', '2024-01-26 23:39:40'),
('c528182786e3db3c4654c378839917b95327b5f2e332e06a80b95b5166d00ef5f011696047b93de3', 3, 3, 'accessToken', '[]', 0, '2022-06-21 03:33:38', '2022-06-21 03:33:38', '2023-06-20 23:33:38'),
('c6104bad689fbb7f18808e544cfee88acb1c746d1d123e7a102762d7ebdf94a0e85b60de2bccfdda', 3, 3, 'accessToken', '[]', 0, '2022-07-15 14:53:38', '2022-07-15 14:53:38', '2023-07-15 10:53:38'),
('c67fe8e0044dd6319e94ba9206532b86b7968d17e9f7789f6e65ac2172eb1f7869b073040ad6ff57', 3, 3, 'accessToken', '[]', 0, '2022-11-19 02:05:45', '2022-11-19 02:05:45', '2023-11-18 21:05:45'),
('d1fa818df618a1d8821f78116f320144b16bb2ed2deba904f7b00733c1773d69e3e2236d6d157163', 3, 3, 'accessToken', '[]', 0, '2022-06-25 23:43:31', '2022-06-25 23:43:31', '2023-06-25 19:43:31'),
('dd579fdb456680257e4fe27768ece128a081bc4d73e9c436e1c5ff5e0c24aa79c49839d355438900', 3, 3, 'accessToken', '[]', 0, '2022-06-20 17:11:51', '2022-06-20 17:11:51', '2023-06-20 13:11:51'),
('ddcbc474ffe6e6c1b272645a956578d1e7cd034993464b9fc6745677c1f9a92faea19687767b6e94', 3, 3, 'accessToken', '[]', 0, '2022-06-25 23:43:31', '2022-06-25 23:43:31', '2023-06-25 19:43:31'),
('e5bbc58efb620c43dae8a3eba8d6dc5a72511c64c2eb536d2b2ea1652cfea351afc59e84f1f64452', 3, 3, 'accessToken', '[]', 0, '2022-06-20 17:11:29', '2022-06-20 17:11:29', '2023-06-20 13:11:29'),
('e73f0cdac959c485c938768574bed25a9bb90b1b83b2cd8cc98c09f23a44518e87e95fca6589cf44', 3, 3, 'accessToken', '[]', 0, '2022-06-23 18:58:51', '2022-06-23 18:58:51', '2023-06-23 14:58:51'),
('e937aed263e0c9b50d4b769ebb468765aa566142df0498320ca704095ee6cece2011b82f2dd6e037', 3, 3, 'accessToken', '[]', 0, '2022-07-24 17:35:47', '2022-07-24 17:35:47', '2023-07-24 13:35:47'),
('ec1b055c81f65c786000257e038e03607085ec06eb4c060721e360e369a97e1c21e8e3a41f3ee437', 3, 3, 'accessToken', '[]', 0, '2022-07-24 17:07:44', '2022-07-24 17:07:44', '2023-07-24 13:07:44'),
('ec84868d3d54c0f91da31729cc3200b524d75047dd044cd00ac258c8e261fee71e40be27a022a01b', 3, 3, 'accessToken', '[]', 0, '2022-06-20 03:13:09', '2022-06-20 03:13:09', '2023-06-20 09:13:09'),
('ec852bef77602c380909f90d8691f30143c94e442d3348c532eb1a4b0306729dd87b511157c2ff16', 3, 3, 'accessToken', '[]', 0, '2022-06-23 18:52:27', '2022-06-23 18:52:27', '2023-06-23 14:52:27'),
('ef84316ab52dacd64aa72ec7ceb0d261c50cb87a97bc911ea5ceb86f4896f3f164fa9245509f2c35', 1, 1, 'accessToken', '[]', 0, '2022-05-09 17:49:37', '2022-05-09 17:49:37', '2023-05-09 23:49:37'),
('f4c557041a3b80bf3b35e0d5e89ad36bb94c976e21e0c29fe7dbd1d76f1648d294b2998ea07bc255', 3, 3, 'accessToken', '[]', 0, '2022-06-20 17:35:09', '2022-06-20 17:35:09', '2023-06-20 13:35:09'),
('f6450b9fa45ba1834753af8cb158da1979eb36c0e55e971866d34abb5c9c3cef6e6502dd41430f0f', 3, 3, 'accessToken', '[]', 0, '2022-06-20 17:11:29', '2022-06-20 17:11:29', '2023-06-20 13:11:29'),
('f7ebec6a01076abd9980638fcba909666f62d2ea80efeda15ec2194dfcb5e4d38c0b50b5a1e2b66d', 3, 3, 'accessToken', '[]', 0, '2022-07-24 17:35:47', '2022-07-24 17:35:47', '2023-07-24 13:35:47'),
('f90a068faaad47c572cef9190ad7fc4f0168ab14c0fd8846a808d8fb3fac6af533a8171f46f3b6e0', 3, 3, 'accessToken', '[]', 0, '2022-07-21 17:51:49', '2022-07-21 17:51:49', '2023-07-21 13:51:49'),
('f998c928cffc1cfe7bc46b75f12340c501d12b90b6406dca747bfd7dedc88e43e914d091f8b61301', 3, 3, 'accessToken', '[]', 0, '2023-01-27 04:39:40', '2023-01-27 04:39:40', '2024-01-26 23:39:40'),
('fc8479d77ea9046bf1cbaca25788a59aa777f9e51decafb85f6053f46e4a111fca78d2cabbda12a5', 3, 3, 'accessToken', '[]', 0, '2022-06-23 18:58:51', '2022-06-23 18:58:51', '2023-06-23 14:58:51');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel8.2 Personal Access Client', 'gsOxvzM3apLHqIUjpZ9U7RZTbZFyyzcM9hnB86uf', NULL, 'http://localhost', 1, 0, 0, '2022-05-09 17:46:35', '2022-05-09 17:46:35'),
(2, NULL, 'Laravel8.2 Personal Access Client', 'yt627NWiYq2OLmzxgMOGhilni83ogPZV5Zc85RJD', NULL, 'http://localhost', 1, 0, 0, '2022-05-09 17:50:55', '2022-05-09 17:50:55'),
(3, NULL, 'Laravel8.2 Personal Access Client', '5FBGE0uVvp0DyPZ5L7Xe8xgu9r1D0JjUfybfNuRm', NULL, 'http://localhost', 1, 0, 0, '2022-05-09 17:51:00', '2022-05-09 17:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-05-09 17:46:35', '2022-05-09 17:46:35'),
(2, 2, '2022-05-09 17:50:55', '2022-05-09 17:50:55'),
(3, 3, '2022-05-09 17:51:00', '2022-05-09 17:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orderId` varchar(255) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `sub_total` varchar(255) DEFAULT NULL,
  `vat` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `pay` varchar(255) DEFAULT NULL,
  `due` varchar(255) DEFAULT NULL,
  `payBy` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `order_date` varchar(255) DEFAULT NULL,
  `order_month` varchar(255) DEFAULT NULL,
  `order_year` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `orderId`, `customer_id`, `qty`, `sub_total`, `vat`, `total`, `pay`, `due`, `payBy`, `memo`, `order_date`, `order_month`, `order_year`, `created_at`, `updated_at`) VALUES
(1, '10000', 3, '1', '340', NULL, NULL, '340', NULL, 'Hand Cash', 'memo2', '21/06/2022', 'June', '2022', NULL, NULL),
(2, '10001', 2, '1', '180', NULL, NULL, '180', NULL, 'Hand Cash', 'memo2', '21/06/2022', 'June', '2022', NULL, NULL),
(3, '10002', 3, '1', '205', NULL, NULL, '205', '0', 'Hand Cash', 'memo2', '21/06/2022', 'June', '2022', NULL, NULL),
(4, '10003', 3, '1', '200', NULL, NULL, '200', '0', 'Hand Cash', 'memo2', '21/06/2022', 'June', '2022', NULL, NULL),
(5, '10004', 3, '0', '20', NULL, NULL, '20', '0', 'Hand Cash', 'memo2', '22/06/2022', 'June', '2022', NULL, NULL),
(6, '10005', 3, '0', '17250', NULL, NULL, '17250', '0', 'Hand Cash', 'memo2', '22/06/2022', 'June', '2022', NULL, NULL),
(7, '10006', 2, '0', '20', NULL, NULL, '20', '0', 'Hand Cash', 'memo1', '22/06/2022', 'June', '2022', NULL, NULL),
(8, '10007', 4, '3', '1110', NULL, NULL, '1110', '0', 'Hand Cash', 'memo2', '22/06/2022', 'June', '2022', NULL, NULL),
(9, '10008', 3, '0', '1030', NULL, NULL, '1030', '0', 'Hand Cash', 'memo2', '23/06/2022', 'June', '2022', NULL, NULL),
(10, '10009', 5, '2', '340', NULL, NULL, '340', '0', 'Hand Cash', 'memo2', '25/06/2022', 'June', '2022', NULL, NULL),
(11, '10010', 6, '0', '800', NULL, NULL, '800', '0', 'Hand Cash', 'memo1', '25/06/2022', 'June', '2022', NULL, NULL),
(12, NULL, 8, '6', '1020', NULL, NULL, '1020', '0', 'Hand Cash', 'memo2', '26/06/2022', 'June', '2022', NULL, NULL),
(13, NULL, 8, '3', '510', NULL, NULL, '510', '0', 'Hand Cash', 'memo2', '26/06/2022', 'June', '2022', NULL, NULL),
(14, NULL, 9, '1', '180', NULL, NULL, '180', '0', 'Hand Cash', 'memo2', '26/06/2022', 'June', '2022', NULL, NULL),
(15, NULL, 10, '1', '570', NULL, NULL, '570', '0', 'Hand Cash', 'memo2', '27/06/2022', 'June', '2022', NULL, NULL),
(16, NULL, 12, '33', '10064', NULL, NULL, '10064', '0', 'Hand Cash', 'memo2', '27/06/2022', 'June', '2022', NULL, NULL),
(17, NULL, 7, '2', '150', NULL, NULL, '150', '0', 'Hand Cash', 'memo2', '27/06/2022', 'June', '2022', NULL, NULL),
(18, NULL, 7, '1', '105', NULL, NULL, '105', '0', 'Hand Cash', 'memo2', '27/06/2022', 'June', '2022', NULL, NULL),
(19, NULL, 7, '1', '180', NULL, NULL, '180', '0', 'Hand Cash', 'memo2', '27/06/2022', 'June', '2022', NULL, NULL),
(20, NULL, 7, '2', '380', NULL, NULL, '380', '0', 'Hand Cash', 'memo2', '27/06/2022', 'June', '2022', NULL, NULL),
(21, NULL, 5, '9', '2539', NULL, NULL, '2539', '0', 'Hand Cash', 'memo2', '28/06/2022', 'June', '2022', NULL, NULL),
(22, NULL, 7, '1', '90', NULL, NULL, '105', '0', 'Hand Cash', 'memo2', '30/06/2022', 'June', '2022', NULL, NULL),
(23, NULL, 15, '2', '230', NULL, NULL, '230', '0', 'Hand Cash', 'memo2', '30/06/2022', 'June', '2022', NULL, NULL),
(24, NULL, 16, '1', '180', NULL, NULL, '180', '0', 'Hand Cash', 'memo2', '30/06/2022', 'June', '2022', NULL, NULL),
(25, NULL, 17, '2', '180', NULL, NULL, '180', '0', 'Hand Cash', 'memo2', '01/07/2022', 'July', '2022', NULL, NULL),
(26, NULL, 18, '2', '280', NULL, NULL, '280', '0', 'Hand Cash', 'memo2', '01/07/2022', 'July', '2022', NULL, NULL),
(27, NULL, 7, '5', '900', NULL, NULL, '900', '0', 'Hand Cash', 'memo2', '02/07/2022', 'July', '2022', NULL, NULL),
(28, NULL, 19, '1', '190', NULL, NULL, '190', '0', 'Hand Cash', 'memo2', '03/07/2022', 'July', '2022', NULL, NULL),
(29, NULL, 20, '44', '3236', NULL, NULL, '3236', '0', 'Hand Cash', 'memo2', '03/07/2022', 'July', '2022', NULL, NULL),
(30, NULL, 21, '2', '280', NULL, NULL, '280', '0', 'Hand Cash', 'memo2', '03/07/2022', 'July', '2022', NULL, NULL),
(31, NULL, 7, '1', '180', NULL, NULL, '180', '0', 'Hand Cash', 'memo2', '04/07/2022', 'July', '2022', NULL, NULL),
(32, NULL, 22, '30', '1560', NULL, NULL, '1560', '0', 'Hand Cash', 'memo2', '04/07/2022', 'July', '2022', NULL, NULL),
(33, NULL, 22, '5', '525', NULL, NULL, '525', '0', 'Hand Cash', 'memo2', '04/07/2022', 'July', '2022', NULL, NULL),
(34, NULL, 24, '5', '320', NULL, NULL, '320', '0', 'Hand Cash', 'memo2', '04/07/2022', 'July', '2022', NULL, NULL),
(35, NULL, 24, '6', '460', NULL, NULL, '460', '0', 'Hand Cash', 'memo2', '04/07/2022', 'July', '2022', NULL, NULL),
(36, NULL, 25, '2', '170', NULL, NULL, '180', '0', 'Hand Cash', 'memo2', '04/07/2022', 'July', '2022', NULL, NULL),
(37, NULL, 25, '2', '170', NULL, NULL, '00', '170', 'Hand Cash', 'memo2', '04/07/2022', 'July', '2022', NULL, NULL),
(38, NULL, 7, '2', '280', NULL, NULL, '280', '0', 'Hand Cash', 'memo2', '04/07/2022', 'July', '2022', NULL, NULL),
(39, NULL, 7, '1', '120', NULL, NULL, '120', '0', 'Hand Cash', 'memo2', '04/07/2022', 'July', '2022', NULL, NULL),
(40, NULL, 3, '4', '800', NULL, NULL, '800', '0', 'Hand Cash', 'memo2', '05/07/2022', 'July', '2022', NULL, NULL),
(41, NULL, 3, '3', '390', NULL, NULL, '390', '0', 'Hand Cash', 'memo2', '05/07/2022', 'July', '2022', NULL, NULL),
(42, NULL, 3, '1', '150', NULL, NULL, '150', '0', 'Hand Cash', 'memo2', '05/07/2022', 'July', '2022', NULL, NULL),
(43, NULL, 3, '1', '150', NULL, NULL, '150', '0', 'Hand Cash', 'memo2', '05/07/2022', 'July', '2022', NULL, NULL),
(44, NULL, 26, '1', '230', NULL, NULL, '00', '230', 'Hand Cash', 'memo2', '05/07/2022', 'July', '2022', NULL, NULL),
(45, NULL, 3, '1', '170', NULL, NULL, '170', '0', 'Hand Cash', 'memo2', '05/07/2022', 'July', '2022', NULL, NULL),
(46, NULL, 3, '1', '200', NULL, NULL, '200', '0', 'Hand Cash', 'memo2', '05/07/2022', 'July', '2022', NULL, NULL),
(47, NULL, 3, '51', '9991', NULL, NULL, '9991', '0', 'Hand Cash', 'memo2', '08/07/2022', 'July', '2022', NULL, NULL),
(48, NULL, 3, '3', '590', NULL, NULL, '590', '0', 'Hand Cash', 'memo2', '08/07/2022', 'July', '2022', NULL, NULL),
(49, NULL, 3, '4', '900', NULL, NULL, '900', '0', 'Hand Cash', 'memo2', '11/07/2022', 'July', '2022', NULL, NULL),
(50, NULL, 20, '54', '2976', NULL, NULL, '0', '2976', 'Hand Cash', 'memo2', '11/07/2022', 'July', '2022', NULL, NULL),
(51, NULL, 20, '54', '2976', NULL, NULL, '2976', '0', 'Hand Cash', 'memo2', '11/07/2022', 'July', '2022', NULL, NULL),
(52, NULL, 20, '54', '2976', NULL, NULL, '2976', '0', 'Hand Cash', 'memo2', '11/07/2022', 'July', '2022', NULL, NULL),
(53, NULL, 3, '33', '3684', NULL, NULL, '3684', '0', 'Hand Cash', 'memo2', '11/07/2022', 'July', '2022', NULL, NULL),
(54, NULL, 3, '16', '2320', NULL, NULL, '2320', '0', 'Hand Cash', 'memo2', '11/07/2022', 'July', '2022', NULL, NULL),
(55, NULL, 3, '6', '600', NULL, NULL, '600', '0', 'Hand Cash', 'memo2', '11/07/2022', 'July', '2022', NULL, NULL),
(56, NULL, 27, '2', '170', NULL, NULL, '70', '100', 'Hand Cash', 'memo2', '11/07/2022', 'July', '2022', NULL, NULL),
(57, NULL, 3, '3', '441', NULL, NULL, '441', '0', 'Hand Cash', 'memo2', '11/07/2022', 'July', '2022', NULL, NULL),
(58, NULL, 3, '1', '45', NULL, NULL, '45', '0', 'Hand Cash', 'memo2', '11/07/2022', 'July', '2022', NULL, NULL),
(59, NULL, 5, '1', '80', NULL, NULL, '80', '0', 'Hand Cash', 'memo2', '11/07/2022', 'July', '2022', NULL, NULL),
(60, NULL, 28, '2', '800', NULL, NULL, '800', '0', 'Hand Cash', 'memo2', '14/07/2022', 'July', '2022', NULL, NULL),
(61, NULL, 3, '12', '1135', NULL, NULL, '1135', '0', 'Hand Cash', 'memo2', '14/07/2022', 'July', '2022', NULL, NULL),
(62, NULL, 3, '9', '1746', NULL, NULL, '1746', '0', 'Hand Cash', 'memo2', '14/07/2022', 'July', '2022', NULL, NULL),
(63, NULL, 29, '442', '80260', NULL, NULL, '00', '80260', 'Hand Cash', 'memo2', '14/07/2022', 'July', '2022', NULL, NULL),
(64, NULL, 29, '397', '51892', NULL, NULL, '00', '51892', 'Hand Cash', 'memo2', '14/07/2022', 'July', '2022', NULL, NULL),
(65, NULL, 30, '9', '1490', NULL, NULL, '1490', '0', 'Hand Cash', 'memo2', '14/07/2022', 'July', '2022', NULL, NULL),
(66, '10001', 19, '1', '90', NULL, NULL, '00', '90', 'Hand Cash', 'memo2', '15/07/2022', 'July', '2022', NULL, NULL),
(67, '1', 32, '2', '165', NULL, NULL, '165', '0', 'Hand Cash', 'memo2', '15/07/2022', 'July', '2022', NULL, NULL),
(68, '2', 33, '10', '1700', NULL, NULL, '1700', '0', 'Hand Cash', 'memo2', '15/07/2022', 'July', '2022', NULL, NULL),
(69, '3', 18, '1', '90', NULL, NULL, '90', '0', 'Hand Cash', 'memo2', '15/07/2022', 'July', '2022', NULL, NULL),
(70, '4', 3, '27', '3518', NULL, NULL, '3518', '0', 'Hand Cash', 'memo2', '16/07/2022', 'July', '2022', NULL, NULL),
(71, '5', 34, '14', '1630', NULL, NULL, '00', '1630', 'Hand Cash', 'memo2', '16/07/2022', 'July', '2022', NULL, NULL),
(72, '6', 35, '2', '470', NULL, NULL, '470', '0', 'Hand Cash', 'memo2', '16/07/2022', 'July', '2022', NULL, NULL),
(73, '7', 36, '4', '1600', NULL, NULL, '1600', '0', 'Hand Cash', 'memo2', '16/07/2022', 'July', '2022', NULL, NULL),
(74, '8', 37, '24', '1200', NULL, NULL, '1200', '0', 'Hand Cash', 'memo2', '16/07/2022', 'July', '2022', NULL, NULL),
(75, '9', 38, '2', '720', NULL, NULL, '720', '0', 'Hand Cash', 'memo2', '16/07/2022', 'July', '2022', NULL, NULL),
(76, '10', 7, '1', '160', NULL, NULL, '160', '0', 'Hand Cash', 'memo2', '16/07/2022', 'July', '2022', NULL, NULL),
(77, '11', 3, '1', '180', NULL, NULL, '180', '0', 'Hand Cash', 'memo2', '16/07/2022', 'July', '2022', NULL, NULL),
(78, '12', 3, '1', '180', NULL, NULL, '180', '0', 'Hand Cash', 'memo2', '16/07/2022', 'July', '2022', NULL, NULL),
(79, '13', 3, '1', '180', NULL, NULL, '180', '0', 'Hand Cash', 'memo2', '16/07/2022', 'July', '2022', NULL, NULL),
(80, '14', 3, '1', '190', NULL, NULL, '190', '0', 'Hand Cash', 'memo2', '16/07/2022', 'July', '2022', NULL, NULL),
(81, '15', 7, '2', '150', NULL, NULL, '250', '0', 'Hand Cash', 'memo2', '17/07/2022', 'July', '2022', NULL, NULL),
(82, '16', 26, '2', '150', NULL, NULL, '00', '150', 'Hand Cash', 'memo2', '17/07/2022', 'July', '2022', NULL, NULL),
(83, '17', 41, '1', '80', NULL, NULL, '80', '0', 'Hand Cash', 'memo2', '17/07/2022', 'July', '2022', NULL, NULL),
(84, '18', 7, '2', '150', NULL, NULL, '150', '0', 'Hand Cash', 'memo2', '17/07/2022', 'July', '2022', NULL, NULL),
(85, '19', 42, '2', '150', NULL, NULL, '00', '150', 'Hand Cash', 'memo2', '17/07/2022', 'July', '2022', NULL, NULL),
(86, '20', 43, '4', '460', NULL, NULL, '460', '0', 'Hand Cash', 'memo2', '17/07/2022', 'July', '2022', NULL, NULL),
(87, '21', 31, '2', '160', NULL, NULL, '160', '0', 'Hand Cash', 'memo2', '18/07/2022', 'July', '2022', NULL, NULL),
(88, '22', 31, '1', '60', NULL, NULL, NULL, NULL, 'Hand Cash', 'memo2', '18/07/2022', 'July', '2022', NULL, NULL),
(89, '23', 44, '8', '520', NULL, NULL, '520', '0', 'Hand Cash', 'memo2', '18/07/2022', 'July', '2022', NULL, NULL),
(90, '24', 7, '1', '50', NULL, NULL, '50', '0', 'Hand Cash', 'memo2', '18/07/2022', 'July', '2022', NULL, NULL),
(91, '25', 5, '2', '1160', NULL, NULL, '1160', '0', 'Hand Cash', 'memo2', '18/07/2022', 'July', '2022', NULL, NULL),
(92, '26', 7, '3', '1020', NULL, NULL, '1020', '0', 'Hand Cash', 'memo2', '18/07/2022', 'July', '2022', NULL, NULL),
(93, '27', 7, '5', '400', NULL, NULL, '400', '0', 'Hand Cash', 'memo2', '18/07/2022', 'July', '2022', NULL, NULL),
(94, '28', 7, '3', '400', NULL, NULL, '400', '0', 'Hand Cash', 'memo2', '18/07/2022', 'July', '2022', NULL, NULL),
(95, '29', 7, '1', '45', NULL, NULL, '45', '0', 'Hand Cash', 'memo2', '18/07/2022', 'July', '2022', NULL, NULL),
(96, '30', 7, '1', '350', NULL, NULL, '350', '0', 'Hand Cash', 'memo2', '19/07/2022', 'July', '2022', NULL, NULL),
(97, '31', 7, '3', '380', NULL, NULL, '380', '0', 'Hand Cash', 'memo2', '19/07/2022', 'July', '2022', NULL, NULL),
(98, '32', 8, '2', '100', NULL, NULL, '0', '100', 'Hand Cash', 'memo2', '19/07/2022', 'July', '2022', NULL, NULL),
(99, '33', 6, '1', '35', NULL, NULL, '35', '0', 'Hand Cash', 'memo2', '19/07/2022', 'July', '2022', NULL, NULL),
(100, '34', 7, '10', '700', NULL, NULL, '700', '0', 'Hand Cash', 'memo2', '19/07/2022', 'July', '2022', NULL, NULL),
(101, '35', 7, '1', '300', NULL, NULL, '300', '0', 'Hand Cash', 'memo2', '19/07/2022', 'July', '2022', NULL, NULL),
(102, '36', 45, '5', '2770', NULL, NULL, '2770', '0', 'Hand Cash', 'memo2', '19/07/2022', 'July', '2022', NULL, NULL),
(103, '37', 18, '1', '55', NULL, NULL, '55', '0', 'Hand Cash', 'memo2', '19/07/2022', 'July', '2022', NULL, NULL),
(104, '38', 46, '120', '5080', NULL, NULL, '00', '5080', 'Hand Cash', 'memo2', '19/07/2022', 'July', '2022', NULL, NULL),
(105, '39', 7, '2', '300', NULL, NULL, '300', '0', 'Hand Cash', 'memo2', '19/07/2022', 'July', '2022', NULL, NULL),
(106, '40', 49, '120', '5120', NULL, NULL, '00', '5120', 'Hand Cash', 'memo2', '21/07/2022', 'July', '2022', NULL, NULL),
(107, '41', 7, '2', '100', NULL, NULL, '100', '0', 'Hand Cash', 'memo2', '21/07/2022', 'July', '2022', NULL, NULL),
(108, '42', 7, '6', '400', NULL, NULL, '400', '0', 'Hand Cash', 'memo2', '21/07/2022', 'July', '2022', NULL, NULL),
(109, '43', 7, '2', '140', NULL, NULL, '140', '0', 'Hand Cash', 'memo2', '21/07/2022', 'July', '2022', NULL, NULL),
(110, '44', 51, '1', '225', NULL, NULL, '00', '225', 'Hand Cash', 'memo2', '21/07/2022', 'July', '2022', NULL, NULL),
(111, '45', 7, '1', '150', NULL, NULL, '150', '0', 'Hand Cash', 'memo2', '21/07/2022', 'July', '2022', NULL, NULL),
(112, '46', 52, '1', '40', NULL, NULL, '00', '40', 'Hand Cash', 'memo2', '21/07/2022', 'July', '2022', NULL, NULL),
(113, '47', 7, '1', '200', NULL, NULL, '200', '0', 'Hand Cash', 'memo2', '21/07/2022', 'July', '2022', NULL, NULL),
(114, '48', 7, '1', '70', NULL, NULL, '70', '0', 'Hand Cash', 'memo2', '22/07/2022', 'July', '2022', NULL, NULL),
(115, '49', 53, '3', '460', NULL, NULL, '00', '460', 'Hand Cash', 'memo2', '22/07/2022', 'July', '2022', NULL, NULL),
(116, '50', 54, '120', '5120', NULL, NULL, '00', '5120', 'Hand Cash', 'memo2', '22/07/2022', 'July', '2022', NULL, NULL),
(117, '51', 55, '80', '2660', NULL, NULL, '00', '2660', 'Hand Cash', 'memo2', '22/07/2022', 'July', '2022', NULL, NULL),
(118, '52', 7, '4', '300', NULL, NULL, '300', '0', 'Hand Cash', 'memo2', '22/07/2022', 'July', '2022', NULL, NULL),
(119, '53', 7, '1', '80', NULL, NULL, '80', '0', 'Hand Cash', 'memo2', '22/07/2022', 'July', '2022', NULL, NULL),
(120, '54', 56, '55', '7362.5', NULL, NULL, '00', '7362.5', 'Hand Cash', 'memo2', '22/07/2022', 'July', '2022', NULL, NULL),
(121, '55', 56, '20', '1450', NULL, NULL, '00', '1450', 'Hand Cash', 'memo2', '22/07/2022', 'July', '2022', NULL, NULL),
(122, '56', 7, '2', '130', NULL, NULL, '130', '0', 'Hand Cash', 'memo2', '23/07/2022', 'July', '2022', NULL, NULL),
(123, '57', 7, '2', '320', NULL, NULL, '320', '0', 'Hand Cash', 'memo2', '23/07/2022', 'July', '2022', NULL, NULL),
(124, '58', 7, '2', '100', NULL, NULL, '100', '0', 'Hand Cash', 'memo2', '23/07/2022', 'July', '2022', NULL, NULL),
(125, '59', 46, '24', '1200', NULL, NULL, '1200', '0', 'Hand Cash', 'memo2', '23/07/2022', 'July', '2022', NULL, NULL),
(126, '60', 7, '35', '2948', NULL, NULL, '2948', '0', 'Hand Cash', 'memo2', '23/07/2022', 'July', '2022', NULL, NULL),
(127, '61', 57, '3', '230', NULL, NULL, '230', '0', 'Hand Cash', 'memo2', '23/07/2022', 'July', '2022', NULL, NULL),
(128, '62', 7, '1', '80', NULL, NULL, '80', '0', 'Hand Cash', 'memo2', '23/07/2022', 'July', '2022', NULL, NULL),
(129, '63', 51, '7', '570', NULL, NULL, '00', '570', 'Hand Cash', 'memo2', '24/07/2022', 'July', '2022', NULL, NULL),
(130, '64', 7, '1', '320', NULL, NULL, '320', '0', 'Hand Cash', 'memo2', '24/07/2022', 'July', '2022', NULL, NULL),
(131, '65', 7, '3', '150', NULL, NULL, '150', '0', 'Hand Cash', 'memo2', '25/07/2022', 'July', '2022', NULL, NULL),
(132, '66', 7, '5', '500', NULL, NULL, '500', '0', 'Hand Cash', 'memo2', '25/07/2022', 'July', '2022', NULL, NULL),
(133, '67', 7, '20', '3600', NULL, NULL, '3600', '0', 'Hand Cash', 'memo2', '25/07/2022', 'July', '2022', NULL, NULL),
(134, '68', 5, '1', '205', NULL, NULL, '205', '0', 'Hand Cash', 'memo2', '25/07/2022', 'July', '2022', NULL, NULL),
(135, '69', 5, '1', '205', NULL, NULL, '205', '0', 'Hand Cash', 'memo2', '25/07/2022', 'July', '2022', NULL, NULL),
(136, '70', 7, '2', '120', NULL, NULL, '120', '0', 'Hand Cash', 'memo2', '25/07/2022', 'July', '2022', NULL, NULL),
(137, '71', 59, '6', '1140', NULL, NULL, '1140', '0', 'Hand Cash', 'memo2', '25/07/2022', 'July', '2022', NULL, NULL),
(138, '72', 36, '50', '7000', NULL, NULL, '7000', '0', 'Hand Cash', 'memo2', '26/07/2022', 'July', '2022', NULL, NULL),
(139, '73', 7, '3', '198', NULL, NULL, '198', '0', 'Hand Cash', 'memo2', '26/07/2022', 'July', '2022', NULL, NULL),
(140, '74', 7, '1', '80', NULL, NULL, '80', '0', 'Hand Cash', 'memo2', '26/07/2022', 'July', '2022', NULL, NULL),
(141, '75', 50, '2', '100', NULL, NULL, '100', '0', 'Hand Cash', 'memo2', '26/07/2022', 'July', '2022', NULL, NULL),
(142, '76', 7, '1', '35', NULL, NULL, '35', '0', 'Hand Cash', 'memo2', '26/07/2022', 'July', '2022', NULL, NULL),
(143, '77', 7, '2', '100', NULL, NULL, '100', '0', 'Hand Cash', 'memo2', '26/07/2022', 'July', '2022', NULL, NULL),
(144, '78', 7, '1', '50', NULL, NULL, '50', '0', 'Hand Cash', 'memo2', '26/07/2022', 'July', '2022', NULL, NULL),
(145, '79', 7, '1', '50', NULL, NULL, '50', '0', 'Hand Cash', 'memo2', '27/07/2022', 'July', '2022', NULL, NULL),
(146, '80', 60, '4', '180', NULL, NULL, '180', '0', 'Hand Cash', 'memo2', '27/07/2022', 'July', '2022', NULL, NULL),
(147, '81', 61, '3', '200', NULL, NULL, '200', '0', 'Hand Cash', 'memo2', '27/07/2022', 'July', '2022', NULL, NULL),
(148, '82', 62, '80', '2660', NULL, NULL, '00', '2660', 'Hand Cash', 'memo2', '27/07/2022', 'July', '2022', NULL, NULL),
(149, '83', 22, '120', '5120', NULL, NULL, '00', '5120', 'Hand Cash', 'memo2', '27/07/2022', 'July', '2022', NULL, NULL),
(150, '84', 64, '120', '5120', NULL, NULL, '5120', '0', 'Hand Cash', 'memo2', '27/07/2022', 'July', '2022', NULL, NULL),
(151, '85', 50, '6', '540', NULL, NULL, '540', '0', 'Hand Cash', 'memo2', '27/07/2022', 'July', '2022', NULL, NULL),
(152, '86', 7, '1', '45', NULL, NULL, '45', '0', 'Hand Cash', 'memo2', '27/07/2022', 'July', '2022', NULL, NULL),
(153, '87', 65, '32', '7490', NULL, NULL, '7490', '0', 'Hand Cash', 'memo2', '27/07/2022', 'July', '2022', NULL, NULL),
(154, '88', 7, '1', '100', NULL, NULL, '100', '0', 'Hand Cash', 'memo2', '27/07/2022', 'July', '2022', NULL, NULL),
(155, '89', 7, '2', '270', NULL, NULL, '270', '0', 'Hand Cash', 'memo2', '27/07/2022', 'July', '2022', NULL, NULL),
(156, '90', 7, '11', '800', NULL, NULL, '800', '0', 'Hand Cash', 'memo2', '28/07/2022', 'July', '2022', NULL, NULL),
(157, '91', 7, '1', '50', NULL, NULL, '50', '0', 'Hand Cash', 'memo2', '28/07/2022', 'July', '2022', NULL, NULL),
(158, '92', 7, '2', '110', NULL, NULL, '110', '0', 'Hand Cash', 'memo2', '28/07/2022', 'July', '2022', NULL, NULL),
(159, '93', 50, '2', '180', NULL, NULL, '180', '0', 'Hand Cash', 'memo2', '28/07/2022', 'July', '2022', NULL, NULL),
(160, '94', 50, '3', '249', NULL, NULL, '249', '0', 'Hand Cash', 'memo2', '28/07/2022', 'July', '2022', NULL, NULL),
(161, '95', 66, '6', '1200', NULL, NULL, '00', '1200', 'Hand Cash', 'memo2', '28/07/2022', 'July', '2022', NULL, NULL),
(162, '96', 7, '1', '40', NULL, NULL, '40', '0', 'Hand Cash', 'memo2', '28/07/2022', 'July', '2022', NULL, NULL),
(163, '97', 50, '5', '410', NULL, NULL, '410', '0', 'Hand Cash', 'memo2', '29/07/2022', 'July', '2022', NULL, NULL),
(164, '98', 67, '25', '3225', NULL, NULL, '3225', '0', 'Cheque', 'memo2', '29/07/2022', 'July', '2022', NULL, NULL),
(165, '99', 68, '10', '700', NULL, NULL, '700', '0', 'Hand Cash', 'memo2', '29/07/2022', 'July', '2022', NULL, NULL),
(166, '100', 69, '4', '200', NULL, NULL, '00', '200', 'Hand Cash', 'memo2', '29/07/2022', 'July', '2022', NULL, NULL),
(167, '101', 55, '100', '8020', NULL, NULL, '00', '8020', 'Hand Cash', 'memo2', '29/07/2022', 'July', '2022', NULL, NULL),
(168, '102', 3, '2', '135', NULL, NULL, '135', '0', 'Hand Cash', 'memo2', '30/07/2022', 'July', '2022', NULL, NULL),
(169, '103', 70, '1', '400', NULL, NULL, '400', '0', 'Hand Cash', 'memo2', '30/07/2022', 'July', '2022', NULL, NULL),
(170, '104', 3, '10', '585', NULL, NULL, '585', '0', 'Hand Cash', 'memo2', '30/07/2022', 'July', '2022', NULL, NULL),
(171, '105', 3, '3', '230', NULL, NULL, '230', '0', 'Hand Cash', 'memo2', '30/07/2022', 'July', '2022', NULL, NULL),
(172, '106', 3, '1', '320', NULL, NULL, '320', '0', 'Hand Cash', 'memo2', '30/07/2022', 'July', '2022', NULL, NULL),
(173, '107', 71, '2', '180', NULL, NULL, '180', '0', 'Hand Cash', 'memo2', '30/07/2022', 'July', '2022', NULL, NULL),
(174, '108', 7, '1', '100', NULL, NULL, '100', '0', 'Hand Cash', 'memo2', '31/07/2022', 'July', '2022', NULL, NULL),
(175, '109', 72, '18', '5790', NULL, NULL, '2000', '3790', 'Hand Cash', 'memo2', '31/07/2022', 'July', '2022', NULL, NULL),
(176, '110', 7, '3', '180', NULL, NULL, '180', '0', 'Hand Cash', 'memo2', '31/07/2022', 'July', '2022', NULL, NULL),
(177, '111', 7, '1', '550', NULL, NULL, '550', '0', 'Hand Cash', 'memo2', '31/07/2022', 'July', '2022', NULL, NULL),
(178, '112', 7, '3', '500', NULL, NULL, '500', '0', 'Hand Cash', 'memo2', '31/07/2022', 'July', '2022', NULL, NULL),
(179, '113', 7, '3', '260', NULL, NULL, '260', '0', 'Hand Cash', 'memo2', '31/07/2022', 'July', '2022', NULL, NULL),
(180, '114', 73, '20', '990', NULL, NULL, '990', '0', 'Hand Cash', 'memo2', '31/07/2022', 'July', '2022', NULL, NULL),
(181, '115', 7, '3', '145', NULL, NULL, '145', '0', 'Hand Cash', 'memo2', '01/08/2022', 'August', '2022', NULL, NULL),
(182, '116', 34, '50', '6400', NULL, NULL, '00', '6400', 'Hand Cash', 'memo2', '01/08/2022', 'August', '2022', NULL, NULL),
(183, '117', 7, '7', '560', NULL, NULL, '560', '0', 'Hand Cash', 'memo2', '01/08/2022', 'August', '2022', NULL, NULL),
(184, '118', 7, '1', '950', NULL, NULL, '950', '0', 'Hand Cash', 'memo2', '01/08/2022', 'August', '2022', NULL, NULL),
(185, '119', 7, '3', '125', NULL, NULL, '125', '0', 'Hand Cash', 'memo2', '02/08/2022', 'August', '2022', NULL, NULL),
(186, '120', 7, '19', '2430', NULL, NULL, '2430', '0', 'Hand Cash', 'memo2', '02/08/2022', 'August', '2022', NULL, NULL),
(187, '121', 7, '6', '180', NULL, NULL, '180', '0', 'Hand Cash', 'memo2', '02/08/2022', 'August', '2022', NULL, NULL),
(188, '122', 46, '10', '1350', NULL, NULL, '1350', '0', 'Hand Cash', 'memo2', '02/08/2022', 'August', '2022', NULL, NULL),
(189, '123', 7, '2', '140', NULL, NULL, '140', '0', 'Hand Cash', 'memo2', '02/08/2022', 'August', '2022', NULL, NULL),
(190, '124', 7, '3', '108', NULL, NULL, '108', '0', 'Hand Cash', 'memo2', '02/08/2022', 'August', '2022', NULL, NULL),
(191, '125', 7, '3', '180', NULL, NULL, '180', '0', 'Hand Cash', 'memo2', '02/08/2022', 'August', '2022', NULL, NULL),
(192, '126', 7, '5', '1230', NULL, NULL, '1230', '0', 'Hand Cash', 'memo2', '02/08/2022', 'August', '2022', NULL, NULL),
(193, '127', 7, '1', '50', NULL, NULL, '50', '0', 'Hand Cash', 'memo2', '03/08/2022', 'August', '2022', NULL, NULL),
(194, '128', 7, '1', '50', NULL, NULL, '50', '0', 'Hand Cash', 'memo2', '03/08/2022', 'August', '2022', NULL, NULL),
(195, '129', 7, '3', '480', NULL, NULL, '480', '0', 'Hand Cash', 'memo2', '03/08/2022', 'August', '2022', NULL, NULL),
(196, '130', 7, '2', '190', NULL, NULL, '190', '0', 'Hand Cash', 'memo2', '03/08/2022', 'August', '2022', NULL, NULL),
(197, '131', 7, '1', '80', NULL, NULL, '80', '0', 'Hand Cash', 'memo2', '03/08/2022', 'August', '2022', NULL, NULL),
(198, '132', 7, '2', '150', NULL, NULL, '150', '0', 'Hand Cash', 'memo2', '03/08/2022', 'August', '2022', NULL, NULL),
(199, '133', 74, '81', '9020', NULL, NULL, '00', '9020', 'Hand Cash', 'memo2', '03/08/2022', 'August', '2022', NULL, NULL),
(200, '134', 74, '120', '5120', NULL, NULL, '00', '5120', 'Hand Cash', 'memo2', '03/08/2022', 'August', '2022', NULL, NULL),
(201, '135', 75, '10', '1140', NULL, NULL, '1140', '0', 'Hand Cash', 'memo2', '03/08/2022', 'August', '2022', NULL, NULL),
(202, '136', 7, '3', '108', NULL, NULL, '108', '0', 'Hand Cash', 'memo2', '03/08/2022', 'August', '2022', NULL, NULL),
(203, '137', 7, '2', '320', NULL, NULL, '320', '0', 'Hand Cash', 'memo2', '03/08/2022', 'August', '2022', NULL, NULL),
(204, '138', 7, '3', '390', NULL, NULL, '390', '0', 'Hand Cash', 'memo2', '03/08/2022', 'August', '2022', NULL, NULL),
(205, '139', 7, '3', '190', NULL, NULL, '190', '0', 'Hand Cash', 'memo2', '04/08/2022', 'August', '2022', NULL, NULL),
(206, '140', 7, '3', '450', NULL, NULL, '450', '0', 'Hand Cash', 'memo2', '04/08/2022', 'August', '2022', NULL, NULL),
(207, '141', 7, '6', '1090', NULL, NULL, '1090', '0', 'Hand Cash', 'memo2', '04/08/2022', 'August', '2022', NULL, NULL),
(208, '142', 29, '35', '2850', NULL, NULL, '2850', '0', 'Hand Cash', 'memo2', '04/08/2022', 'August', '2022', NULL, NULL),
(209, '143', 7, '1', '150', NULL, NULL, '150', '0', 'Hand Cash', 'memo2', '04/08/2022', 'August', '2022', NULL, NULL),
(210, '144', 76, '64', '6240', NULL, NULL, '00', '6240', 'Hand Cash', 'memo2', '04/08/2022', 'August', '2022', NULL, NULL),
(211, '145', 77, '11', '2750', NULL, NULL, '2750', '0', 'Hand Cash', 'memo2', '04/08/2022', 'August', '2022', NULL, NULL),
(212, '146', 7, '2', '100', NULL, NULL, '100', '0', 'Hand Cash', 'memo2', '04/08/2022', 'August', '2022', NULL, NULL),
(213, '147', 7, '10', '1594', NULL, NULL, '1594', '0', 'Hand Cash', 'memo2', '04/08/2022', 'August', '2022', NULL, NULL),
(214, '148', 7, '3', '615', NULL, NULL, '615', '0', 'Hand Cash', 'memo2', '04/08/2022', 'August', '2022', NULL, NULL),
(215, '149', 78, '20', '1400', NULL, NULL, '1400', '0', 'Hand Cash', 'memo2', '04/08/2022', 'August', '2022', NULL, NULL),
(216, '150', 79, '9', '459', NULL, NULL, '459', '0', 'Hand Cash', 'memo2', '04/08/2022', 'August', '2022', NULL, NULL),
(217, '151', 7, '3', '501', NULL, NULL, '501', '0', 'Hand Cash', 'memo2', '04/08/2022', 'August', '2022', NULL, NULL),
(218, '152', 7, '6', '210', NULL, NULL, '210', '0', 'Hand Cash', 'memo2', '04/08/2022', 'August', '2022', NULL, NULL),
(219, '153', 7, '2', '520', NULL, NULL, '520', '0', 'Hand Cash', 'memo2', '04/08/2022', 'August', '2022', NULL, NULL),
(220, '154', 7, '1', '80', NULL, NULL, '80', '0', 'Hand Cash', 'memo2', '04/08/2022', 'August', '2022', NULL, NULL),
(221, '155', 7, '7', '245', NULL, NULL, '245', '0', 'Hand Cash', 'memo2', '04/08/2022', 'August', '2022', NULL, NULL),
(222, '156', 7, '2', '80', NULL, NULL, '80', '0', 'Hand Cash', 'memo2', '04/08/2022', 'August', '2022', NULL, NULL),
(223, '157', 7, '3', '105', NULL, NULL, '105', '0', 'Hand Cash', 'memo2', '05/08/2022', 'August', '2022', NULL, NULL),
(224, '158', 7, '1', '90', NULL, NULL, '90', '0', 'Hand Cash', 'memo2', '05/08/2022', 'August', '2022', NULL, NULL),
(225, '159', 7, '4', '385', NULL, NULL, '385', '0', 'Hand Cash', 'memo2', '05/08/2022', 'August', '2022', NULL, NULL),
(226, '160', 80, '503', '94890', NULL, NULL, '94890', '0', 'Hand Cash', 'memo2', '05/08/2022', 'August', '2022', NULL, NULL),
(227, '161', 7, '4', '1360', NULL, NULL, '1360', '0', 'Hand Cash', 'memo2', '05/08/2022', 'August', '2022', NULL, NULL),
(228, '162', 80, '304', '39298', NULL, NULL, '28900', '10398', 'Hand Cash', 'memo2', '05/08/2022', 'August', '2022', NULL, NULL),
(229, '163', 81, '6', '3000', NULL, NULL, '2000', '1000', 'Hand Cash', 'memo2', '05/08/2022', 'August', '2022', NULL, NULL),
(230, '164', 7, '12', '480', NULL, NULL, '480', '0', 'Hand Cash', 'memo2', '06/08/2022', 'August', '2022', NULL, NULL),
(231, '165', 7, '2', '100', NULL, NULL, '100', '0', 'Hand Cash', 'memo2', '06/08/2022', 'August', '2022', NULL, NULL),
(232, '166', 7, '1', '50', NULL, NULL, '50', '0', 'Hand Cash', 'memo2', '06/08/2022', 'August', '2022', NULL, NULL),
(233, '167', 7, '3', '230', NULL, NULL, '230', '0', 'Hand Cash', 'memo2', '06/08/2022', 'August', '2022', NULL, NULL),
(234, '168', 7, '5', '225', NULL, NULL, '225', '0', 'Hand Cash', 'memo2', '06/08/2022', 'August', '2022', NULL, NULL),
(235, '169', 7, '1', '50', NULL, NULL, '50', '0', 'Hand Cash', 'memo2', '06/08/2022', 'August', '2022', NULL, NULL),
(236, '170', 7, '7', '580', NULL, NULL, '580', '0', 'Hand Cash', 'memo2', '06/08/2022', 'August', '2022', NULL, NULL),
(237, '171', 7, '10', '800', NULL, NULL, '800', '0', 'Hand Cash', 'memo2', '06/08/2022', 'August', '2022', NULL, NULL),
(238, '172', 64, '237', '17335', NULL, NULL, '00', '17335', 'Hand Cash', 'memo2', '06/08/2022', 'August', '2022', NULL, NULL),
(239, '173', 7, '16', '2300', NULL, NULL, '2300', '0', 'Hand Cash', 'memo2', '06/08/2022', 'August', '2022', NULL, NULL),
(240, '174', 7, '4', '550', NULL, NULL, '550', '0', 'Hand Cash', 'memo2', '06/08/2022', 'August', '2022', NULL, NULL),
(241, '175', 7, '2', '280', NULL, NULL, '280', '0', 'Hand Cash', 'memo2', '07/08/2022', 'August', '2022', NULL, NULL),
(242, '176', 7, '20', '1400', NULL, NULL, '1400', '0', 'Hand Cash', 'memo2', '07/08/2022', 'August', '2022', NULL, NULL),
(243, '177', 7, '1', '170', NULL, NULL, '170', '0', 'Hand Cash', 'memo2', '07/08/2022', 'August', '2022', NULL, NULL),
(244, '178', 7, '1', '310', NULL, NULL, '310', '0', 'Hand Cash', 'memo2', '07/08/2022', 'August', '2022', NULL, NULL),
(245, '179', 7, '2', '155', NULL, NULL, '155', '0', 'Hand Cash', 'memo2', '07/08/2022', 'August', '2022', NULL, NULL),
(246, '180', 7, '4', '370', NULL, NULL, '370', '0', 'Hand Cash', 'memo2', '07/08/2022', 'August', '2022', NULL, NULL),
(247, '181', 7, '1', '70', NULL, NULL, '70', '0', 'Hand Cash', 'memo2', '07/08/2022', 'August', '2022', NULL, NULL),
(248, '182', 7, '1', '130', NULL, NULL, '130', '0', 'Hand Cash', 'memo2', '07/08/2022', 'August', '2022', NULL, NULL),
(249, '183', 65, '8', '3600', NULL, NULL, '00', '3600', 'Hand Cash', 'memo2', '08/08/2022', 'August', '2022', NULL, NULL),
(250, '184', 29, '10', '700', NULL, NULL, '00', '700', 'Hand Cash', 'memo2', '11/08/2022', 'August', '2022', NULL, NULL),
(251, '185', 7, '6', '640', NULL, NULL, '640', '0', 'Hand Cash', 'memo2', '11/08/2022', 'August', '2022', NULL, NULL),
(252, '186', 82, '8', '1260', NULL, NULL, '1260', '0', 'Hand Cash', 'memo2', '11/08/2022', 'August', '2022', NULL, NULL),
(253, '187', 59, '2', '750', NULL, NULL, '750', '0', 'Hand Cash', 'memo2', '11/08/2022', 'August', '2022', NULL, NULL),
(254, '188', 7, '1', '130', NULL, NULL, '130', '0', 'Hand Cash', 'memo2', '11/08/2022', 'August', '2022', NULL, NULL),
(255, '189', 64, '6', '720', NULL, NULL, '720', '0', 'Hand Cash', 'memo2', '11/08/2022', 'August', '2022', NULL, NULL),
(256, '190', 7, '3', '290', NULL, NULL, '290', '0', 'Hand Cash', 'memo2', '11/08/2022', 'August', '2022', NULL, NULL),
(257, '191', 83, '4', '2900', NULL, NULL, '1300', '1600', 'Hand Cash', 'memo2', '11/08/2022', 'August', '2022', NULL, NULL),
(258, '192', 34, '50', '6400', NULL, NULL, '0000', '6400', 'Hand Cash', 'memo2', '12/08/2022', 'August', '2022', NULL, NULL),
(259, '193', 84, '46', '8050', NULL, NULL, '8050', '0', 'Hand Cash', 'memo2', '12/08/2022', 'August', '2022', NULL, NULL),
(260, '194', 85, '6', '1000', NULL, NULL, '1000', '0', 'Hand Cash', 'memo2', '12/08/2022', 'August', '2022', NULL, NULL),
(261, '195', 29, '20', '1400', NULL, NULL, '1400', '0', 'Hand Cash', 'memo2', '12/08/2022', 'August', '2022', NULL, NULL),
(262, '196', 64, '6', '2049', NULL, NULL, '2049', '0', 'Hand Cash', 'memo2', '13/08/2022', 'August', '2022', NULL, NULL),
(263, '197', 7, '1', '90', NULL, NULL, '90', '0', 'Hand Cash', 'memo2', '13/08/2022', 'August', '2022', NULL, NULL),
(264, '198', 7, '1', '180', NULL, NULL, '180', '0', 'Hand Cash', 'memo2', '13/08/2022', 'August', '2022', NULL, NULL),
(265, '199', 86, '5', '950', NULL, NULL, '950', '0', 'Hand Cash', 'memo2', '13/08/2022', 'August', '2022', NULL, NULL),
(266, '200', 5, '0', '0', NULL, NULL, NULL, NULL, 'Hand Cash', 'memo2', '13/08/2022', 'August', '2022', NULL, NULL),
(267, '201', 64, '10', '1380', NULL, NULL, '00', '1380', 'Hand Cash', 'memo2', '14/08/2022', 'August', '2022', NULL, NULL),
(268, '202', 7, '2', '330', NULL, NULL, '330', '0', 'Hand Cash', 'memo2', '15/08/2022', 'August', '2022', NULL, NULL),
(269, '203', 7, '2', '280', NULL, NULL, '280', '0', 'Hand Cash', 'memo2', '15/08/2022', 'August', '2022', NULL, NULL),
(270, '204', 29, '30', '2100', NULL, NULL, '00', '2100', 'Hand Cash', 'memo2', '16/08/2022', 'August', '2022', NULL, NULL),
(271, '205', 76, '110', '11284', NULL, NULL, '00', '11284', 'Hand Cash', 'memo2', '17/08/2022', 'August', '2022', NULL, NULL),
(272, '206', 76, '4', '448', NULL, NULL, '448', '0', 'Hand Cash', 'memo2', '17/08/2022', 'August', '2022', NULL, NULL),
(273, '207', 49, '90', '44285', NULL, NULL, '00', '44285', 'Hand Cash', 'memo2', '17/08/2022', 'August', '2022', NULL, NULL),
(274, '208', 25, '4', '1500', NULL, NULL, '200', '1300', 'Hand Cash', 'memo2', '18/08/2022', 'August', '2022', NULL, NULL),
(275, '209', 7, '3', '1050', NULL, NULL, '1050', '0', 'Hand Cash', 'memo2', '19/08/2022', 'August', '2022', NULL, NULL),
(276, '210', 87, '497', '76167', NULL, NULL, '47000', '29167', 'Hand Cash', 'memo2', '19/08/2022', 'August', '2022', NULL, NULL),
(277, '211', 7, '15', '3860', NULL, NULL, '3860', '0', 'Hand Cash', 'memo2', '19/08/2022', 'August', '2022', NULL, NULL),
(278, '212', 7, '7', '1000', NULL, NULL, '1000', '0', 'Hand Cash', 'memo2', '20/08/2022', 'August', '2022', NULL, NULL),
(279, '213', 55, '120', '27020', NULL, NULL, '00', '27020', 'Hand Cash', 'memo2', '20/08/2022', 'August', '2022', NULL, NULL),
(280, '214', 7, '9', '2460', NULL, NULL, '2460', '0', 'Hand Cash', 'memo2', '21/08/2022', 'August', '2022', NULL, NULL),
(281, '215', 7, '5', '1500', NULL, NULL, '1500', '0', 'Hand Cash', 'memo2', '21/08/2022', 'August', '2022', NULL, NULL),
(282, '216', 7, '2', '250', NULL, NULL, '250', '0', 'Hand Cash', 'memo2', '21/08/2022', 'August', '2022', NULL, NULL),
(283, '217', 7, '16', '2300', NULL, NULL, '2300', '0', 'Hand Cash', 'memo2', '22/08/2022', 'August', '2022', NULL, NULL),
(284, '218', 87, '10', '4736', NULL, NULL, '4230', '506', 'Hand Cash', 'memo2', '22/08/2022', 'August', '2022', NULL, NULL),
(285, '219', 87, '20', '1880', NULL, NULL, '00', '1880', 'Hand Cash', 'memo2', '22/08/2022', 'August', '2022', NULL, NULL),
(286, '220', 7, '9', '1780', NULL, NULL, '1780', '0', 'Hand Cash', 'memo2', '23/08/2022', 'August', '2022', NULL, NULL),
(287, '221', 7, '2', '380', NULL, NULL, '380', '0', 'Hand Cash', 'memo2', '23/08/2022', 'August', '2022', NULL, NULL),
(288, '222', 3, '2', '370', NULL, NULL, '370', '0', 'Hand Cash', 'memo2', '23/08/2022', 'August', '2022', NULL, NULL),
(289, '223', 7, '6', '1050', NULL, NULL, '1050', '0', 'Hand Cash', 'memo2', '23/08/2022', 'August', '2022', NULL, NULL),
(290, '224', 88, '4', '1340', NULL, NULL, '00', '1340', 'Hand Cash', 'memo2', '23/08/2022', 'August', '2022', NULL, NULL),
(291, '225', 7, '5', '1370', NULL, NULL, '1370', '0', 'Hand Cash', 'memo2', '24/08/2022', 'August', '2022', NULL, NULL),
(292, '226', 7, '20', '1730', NULL, NULL, '1730', '0', 'Hand Cash', 'memo2', '24/08/2022', 'August', '2022', NULL, NULL),
(293, '227', 62, '16', '10100', NULL, NULL, '4700', '5400', 'Hand Cash', 'memo2', '24/08/2022', 'August', '2022', NULL, NULL),
(294, '228', 87, '21', '8835', NULL, NULL, '8835', '0', 'Hand Cash', 'memo2', '24/08/2022', 'August', '2022', NULL, NULL),
(295, '229', 87, '5', '1160', NULL, NULL, '1160', '0', 'Hand Cash', 'memo2', '24/08/2022', 'August', '2022', NULL, NULL),
(296, '230', 87, '26', '10639', NULL, NULL, '00', '10639', 'Hand Cash', 'memo2', '24/08/2022', 'August', '2022', NULL, NULL),
(297, '231', 7, '7', '830', NULL, NULL, '830', '0', 'Hand Cash', 'memo2', '25/08/2022', 'August', '2022', NULL, NULL),
(298, '232', 89, '6', '2028', NULL, NULL, '00', '2028', 'Hand Cash', 'memo2', '25/08/2022', 'August', '2022', NULL, NULL),
(299, '233', 7, '3', '640', NULL, NULL, '640', '0', 'Hand Cash', 'memo2', '25/08/2022', 'August', '2022', NULL, NULL),
(300, '234', 7, '10', '980', NULL, NULL, '980', '0', 'Hand Cash', 'memo2', '26/08/2022', 'August', '2022', NULL, NULL),
(301, '235', 90, '10', '1781', NULL, NULL, '1781', '0', 'Hand Cash', 'memo2', '26/08/2022', 'August', '2022', NULL, NULL),
(302, '236', 87, '10', '2150', NULL, NULL, '2150', '0', 'Hand Cash', 'memo2', '26/08/2022', 'August', '2022', NULL, NULL),
(303, '237', 7, '5', '1460', NULL, NULL, '1460', '0', 'Hand Cash', 'memo2', '26/08/2022', 'August', '2022', NULL, NULL),
(304, '238', 3, '26', '4488', NULL, NULL, '4488', '0', 'Hand Cash', 'memo2', '26/08/2022', 'August', '2022', NULL, NULL),
(305, '239', 87, '51', '9780', NULL, NULL, '2500', '7280', 'Hand Cash', 'memo2', '27/08/2022', 'August', '2022', NULL, NULL),
(306, '240', 87, '58', '16880', NULL, NULL, '00', '16880', 'Hand Cash', 'memo2', '27/08/2022', 'August', '2022', NULL, NULL),
(307, '241', 90, '43', '9140', NULL, NULL, '9140', '0', 'Hand Cash', 'memo2', '27/08/2022', 'August', '2022', NULL, NULL),
(308, '242', 74, '154', '28300', NULL, NULL, '00', '28300', 'Hand Cash', 'memo2', '28/08/2022', 'August', '2022', NULL, NULL),
(309, '243', 74, '10', '2310', NULL, NULL, '00', '2310', 'Hand Cash', 'memo2', '28/08/2022', 'August', '2022', NULL, NULL),
(310, '244', 91, '11', '1920', NULL, NULL, '00', '1920', 'Hand Cash', 'memo2', '28/08/2022', 'August', '2022', NULL, NULL),
(311, '245', 7, '20', '2900', NULL, NULL, '2900', '0', 'Hand Cash', 'memo2', '29/08/2022', 'August', '2022', NULL, NULL),
(312, '246', 87, '130', '27715', NULL, NULL, '00', '27715', 'Hand Cash', 'memo2', '31/08/2022', 'August', '2022', NULL, NULL),
(313, '247', 87, '17', '6950', NULL, NULL, '00', '6950', 'Hand Cash', 'memo2', '31/08/2022', 'August', '2022', NULL, NULL),
(314, '248', 7, '20', '500', NULL, NULL, '500', '0', 'Hand Cash', 'memo2', '31/08/2022', 'August', '2022', NULL, NULL),
(315, '249', 7, '4', '760', NULL, NULL, '760', '0', 'Hand Cash', 'memo2', '31/08/2022', 'August', '2022', NULL, NULL),
(316, '250', 7, '2', '320', NULL, NULL, '320', '0', 'Hand Cash', 'memo2', '31/08/2022', 'August', '2022', NULL, NULL),
(317, '251', 7, '18', '6480', NULL, NULL, '6480', '0', 'Hand Cash', 'memo2', '31/08/2022', 'August', '2022', NULL, NULL),
(318, '252', 7, '4', '2850', NULL, NULL, '2850', '0', 'Hand Cash', 'memo2', '31/08/2022', 'August', '2022', NULL, NULL),
(319, '253', 7, '40', '880', NULL, NULL, '880', '0', 'Hand Cash', 'memo2', '31/08/2022', 'August', '2022', NULL, NULL),
(320, '254', 7, '1', '590', NULL, NULL, '590', '0', 'Hand Cash', 'memo2', '01/09/2022', 'September', '2022', NULL, NULL),
(321, '255', 76, '24', '3588', NULL, NULL, '3588', '0', 'Hand Cash', 'memo2', '01/09/2022', 'September', '2022', NULL, NULL),
(322, '256', 76, '7', '2660', NULL, NULL, '2660', '0', 'Hand Cash', 'memo2', '01/09/2022', 'September', '2022', NULL, NULL),
(323, '257', 76, '53', '12380', NULL, NULL, '3380', '9000', 'Hand Cash', 'memo2', '01/09/2022', 'September', '2022', NULL, NULL),
(324, '258', 7, '6', '1170', NULL, NULL, '1170', '0', 'Hand Cash', 'memo2', '01/09/2022', 'September', '2022', NULL, NULL),
(325, '259', 7, '5', '2360', NULL, NULL, '2360', '0', 'Hand Cash', 'memo2', '02/09/2022', 'September', '2022', NULL, NULL),
(326, '260', 7, '5', '980', NULL, NULL, '980', '0', 'Hand Cash', 'memo2', '02/09/2022', 'September', '2022', NULL, NULL),
(327, '261', 7, '3', '660', NULL, NULL, '660', '0', 'Hand Cash', 'memo2', '02/09/2022', 'September', '2022', NULL, NULL),
(328, '262', 7, '1', '400', NULL, NULL, '400', '0', 'Hand Cash', 'memo2', '02/09/2022', 'September', '2022', NULL, NULL),
(329, '263', 90, '4', '570', NULL, NULL, '570', '0', 'Hand Cash', 'memo2', '02/09/2022', 'September', '2022', NULL, NULL),
(330, '264', 7, '8', '5030', NULL, NULL, '5030', '0', 'Hand Cash', 'memo2', '03/09/2022', 'September', '2022', NULL, NULL),
(331, '265', 7, '8', '1150', NULL, NULL, '1150', '0', 'Hand Cash', 'memo2', '03/09/2022', 'September', '2022', NULL, NULL),
(332, '266', 7, '11', '2225', NULL, NULL, '2225', '0', 'Hand Cash', 'memo2', '03/09/2022', 'September', '2022', NULL, NULL),
(333, '267', 7, '2', '430', NULL, NULL, '430', '0', 'Hand Cash', 'memo2', '03/09/2022', 'September', '2022', NULL, NULL),
(334, '268', 7, '4', '2250', NULL, NULL, '2250', '0', 'Hand Cash', 'memo2', '03/09/2022', 'September', '2022', NULL, NULL),
(335, '269', 7, '100', '24410', NULL, NULL, '24410', '0', 'Hand Cash', 'memo2', '04/09/2022', 'September', '2022', NULL, NULL),
(336, '270', 92, '1', '600', NULL, NULL, '600', '0', 'Hand Cash', 'memo2', '04/09/2022', 'September', '2022', NULL, NULL),
(337, '271', 87, '47', '10155', NULL, NULL, '5400', '4755', 'Hand Cash', 'memo2', '05/09/2022', 'September', '2022', NULL, NULL),
(338, '272', 7, '28', '11950', NULL, NULL, '11950', '0', 'Hand Cash', 'memo2', '05/09/2022', 'September', '2022', NULL, NULL),
(339, '273', 7, '105', '20030', NULL, NULL, '20030', '0', 'Hand Cash', 'memo2', '06/09/2022', 'September', '2022', NULL, NULL),
(340, '274', 76, '35', '4905', NULL, NULL, '00', '4905', 'Hand Cash', 'memo2', '07/09/2022', 'September', '2022', NULL, NULL),
(341, '275', 7, '36', '10480', NULL, NULL, '10480', '0', 'Hand Cash', 'memo2', '08/09/2022', 'September', '2022', NULL, NULL),
(342, '276', 7, '1', '150', NULL, NULL, '150', '0', 'Hand Cash', 'memo2', '09/09/2022', 'September', '2022', NULL, NULL),
(343, '277', 7, '46', '13464', NULL, NULL, '13464', '0', 'Hand Cash', 'memo2', '09/09/2022', 'September', '2022', NULL, NULL),
(344, '278', 93, '20', '1680', NULL, NULL, '1680', '0', 'Hand Cash', 'memo2', '14/09/2022', 'September', '2022', NULL, NULL),
(345, '279', 94, '9', '1848', NULL, NULL, '00', '1848', 'Hand Cash', 'memo2', '17/09/2022', 'September', '2022', NULL, NULL),
(346, '280', 7, '5', '1030', NULL, NULL, '1030', '0', 'Hand Cash', 'memo2', '18/09/2022', 'September', '2022', NULL, NULL),
(347, '281', 7, '2', '380', NULL, NULL, '380', '0', 'Hand Cash', 'memo2', '18/09/2022', 'September', '2022', NULL, NULL),
(348, '282', 7, '3', '2370', NULL, NULL, '2370', '0', 'Hand Cash', 'memo2', '18/09/2022', 'September', '2022', NULL, NULL),
(349, '283', 7, '1', '210', NULL, NULL, '210', '0', 'Hand Cash', 'memo2', '18/09/2022', 'September', '2022', NULL, NULL),
(350, '284', 7, '15', '2740', NULL, NULL, '2740', '0', 'Hand Cash', 'memo2', '19/09/2022', 'September', '2022', NULL, NULL),
(351, '285', 95, '1248', '193081', NULL, NULL, '193081', '0', 'Hand Cash', 'memo2', '20/09/2022', 'September', '2022', NULL, NULL),
(352, '286', 95, '2921', '400087', NULL, NULL, '400087', '0', 'Hand Cash', 'memo2', '20/09/2022', 'September', '2022', NULL, NULL),
(353, '287', 7, '6', '960', NULL, NULL, '960', '0', 'Hand Cash', 'memo2', '26/09/2022', 'September', '2022', NULL, NULL),
(354, '288', 7, '9', '1950', NULL, NULL, '1950', '0', 'Hand Cash', 'memo2', '27/09/2022', 'September', '2022', NULL, NULL),
(355, '289', 7, '2', '1950', NULL, NULL, '1950', '0', 'Hand Cash', 'memo2', '28/09/2022', 'September', '2022', NULL, NULL),
(356, '290', 7, '1', '300', NULL, NULL, '300', '0', 'Hand Cash', 'memo2', '28/09/2022', 'September', '2022', NULL, NULL),
(357, '291', 7, '10', '660', NULL, NULL, '660', '0', 'Hand Cash', 'memo2', '28/09/2022', 'September', '2022', NULL, NULL),
(358, '292', 7, '10', '7900', NULL, NULL, '7900', '0', 'Hand Cash', 'memo2', '29/09/2022', 'September', '2022', NULL, NULL),
(359, '293', 7, '30', '12705', NULL, NULL, '12705', '0', 'Hand Cash', 'memo2', '01/10/2022', 'October', '2022', NULL, NULL),
(360, '294', 7, '5', '1580', NULL, NULL, '1580', '0', 'Hand Cash', 'memo2', '02/10/2022', 'October', '2022', NULL, NULL),
(361, '295', 7, '4', '3300', NULL, NULL, '3300', '0', 'Hand Cash', 'memo2', '02/10/2022', 'October', '2022', NULL, NULL),
(362, '296', 7, '4', '1390', NULL, NULL, '1390', '0', 'Hand Cash', 'memo2', '02/10/2022', 'October', '2022', NULL, NULL),
(363, '297', 7, '10', '3504', NULL, NULL, '3504', '0', 'Hand Cash', 'memo2', '02/10/2022', 'October', '2022', NULL, NULL),
(364, '298', 7, '46', '6850', NULL, NULL, '6850', '0', 'Hand Cash', 'memo2', '03/10/2022', 'October', '2022', NULL, NULL),
(365, '299', 7, '1', '330', NULL, NULL, '330', '0', 'Hand Cash', 'memo2', '04/10/2022', 'October', '2022', NULL, NULL),
(366, '300', 7, '4', '1250', NULL, NULL, '1250', '0', 'Hand Cash', 'memo2', '04/10/2022', 'October', '2022', NULL, NULL),
(367, '301', 7, '6', '1700', NULL, NULL, '1700', '0', 'Hand Cash', 'memo2', '05/10/2022', 'October', '2022', NULL, NULL),
(368, '302', 7, '4', '2400', NULL, NULL, '2400', '0', 'Hand Cash', 'memo2', '05/10/2022', 'October', '2022', NULL, NULL),
(369, '303', 7, '20', '3230', NULL, NULL, '3230', '0', 'Hand Cash', 'memo2', '06/10/2022', 'October', '2022', NULL, NULL),
(370, '304', 7, '5', '1620', NULL, NULL, '1620', '0', 'Hand Cash', 'memo2', '06/10/2022', 'October', '2022', NULL, NULL),
(371, '305', 7, '7', '300', NULL, NULL, '300', '0', 'Hand Cash', 'memo2', '07/10/2022', 'October', '2022', NULL, NULL),
(372, '306', 7, '16', '6100', NULL, NULL, '6100', '0', 'Hand Cash', 'memo2', '07/10/2022', 'October', '2022', NULL, NULL),
(373, '307', 7, '9', '3300', NULL, NULL, '3300', '0', 'Hand Cash', 'memo2', '07/10/2022', 'October', '2022', NULL, NULL),
(374, '308', 7, '15', '2850', NULL, NULL, '2850', '0', 'Hand Cash', 'memo2', '07/10/2022', 'October', '2022', NULL, NULL),
(375, '309', 7, '12', '348', NULL, NULL, '348', '0', 'Hand Cash', 'memo2', '07/10/2022', 'October', '2022', NULL, NULL),
(376, '310', 7, '2', '700', NULL, NULL, '700', '0', 'Hand Cash', 'memo2', '07/10/2022', 'October', '2022', NULL, NULL),
(377, '311', 7, '4', '850', NULL, NULL, '850', '0', 'Hand Cash', 'memo2', '09/10/2022', 'October', '2022', NULL, NULL),
(378, '312', 7, '6', '2490', NULL, NULL, '2490', '0', 'Hand Cash', 'memo2', '10/10/2022', 'October', '2022', NULL, NULL),
(379, '313', 7, '3', '900', NULL, NULL, '900', '0', 'Hand Cash', 'memo2', '10/10/2022', 'October', '2022', NULL, NULL),
(380, '314', 7, '7', '830', NULL, NULL, '830', '0', 'Hand Cash', 'memo2', '10/10/2022', 'October', '2022', NULL, NULL),
(381, '315', 7, '1', '300', NULL, NULL, '300', '0', 'Hand Cash', 'memo2', '11/10/2022', 'October', '2022', NULL, NULL),
(382, '316', 7, '5', '2510', NULL, NULL, '2510', '0', 'Hand Cash', 'memo2', '11/10/2022', 'October', '2022', NULL, NULL),
(383, '317', 7, '7', '1810', NULL, NULL, '1810', '0', 'Hand Cash', 'memo2', '11/10/2022', 'October', '2022', NULL, NULL),
(384, '318', 7, '5', '1200', NULL, NULL, '1200', '0', 'Hand Cash', 'memo2', '12/10/2022', 'October', '2022', NULL, NULL),
(385, '319', 7, '5', '1930', NULL, NULL, '1930', '0', 'Hand Cash', 'memo2', '12/10/2022', 'October', '2022', NULL, NULL),
(386, '320', 7, '5', '1350', NULL, NULL, '1350', '0', 'Hand Cash', 'memo2', '13/10/2022', 'October', '2022', NULL, NULL),
(387, '321', 7, '1', '300', NULL, NULL, '300', '0', 'Hand Cash', 'memo2', '14/10/2022', 'October', '2022', NULL, NULL),
(388, '322', 7, '8', '2310', NULL, NULL, '2310', '0', 'Hand Cash', 'memo2', '26/10/2022', 'October', '2022', NULL, NULL),
(389, '323', 96, '1', '615', NULL, NULL, '615', '0', 'Hand Cash', 'memo2', '19/11/2022', 'November', '2022', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_quantity` varchar(255) DEFAULT NULL,
  `buying_price` varchar(255) DEFAULT NULL,
  `product_price` varchar(255) DEFAULT NULL,
  `sub_total` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_quantity`, `buying_price`, `product_price`, `sub_total`, `created_at`, `updated_at`) VALUES
(1, 1, 9, '1', '286', '340', '340', NULL, NULL),
(2, 2, 10, '1', '148', '180', '180', NULL, NULL),
(3, 3, 12, '1', '205', '205', '205', NULL, NULL),
(4, 4, 10, '1', '148', '200', '200', NULL, NULL),
(5, 8, 9, '3', '286', '370', '1110', NULL, NULL),
(6, 10, 14, '2', '140', '170', '340', NULL, NULL),
(7, 12, 14, '6', '140', '170', '1020', NULL, NULL),
(8, 13, 14, '3', '140', '170', '510', NULL, NULL),
(9, 14, 14, '1', '140', '180', '180', NULL, NULL),
(10, 15, 14, '1', '140', '170', '170', NULL, NULL),
(11, 16, 161, '10', '75', '90', '900', NULL, NULL),
(12, 16, 130, '10', '370', '370', '3700', NULL, NULL),
(13, 16, 31, '3', '1066', '1188', '3564', NULL, NULL),
(14, 16, 215, '10', '190', '190', '1900', NULL, NULL),
(15, 17, 172, '2', '70', '75', '150', NULL, NULL),
(16, 18, 172, '1', '70', '105', '105', NULL, NULL),
(17, 19, 35, '1', '145', '180', '180', NULL, NULL),
(18, 20, 102, '1', '155', '350', '350', NULL, NULL),
(19, 20, 88, '1', '25', '30', '30', NULL, NULL),
(20, 21, 57, '2', '125', '250', '500', NULL, NULL),
(21, 21, 52, '1', '195', '410', '410', NULL, NULL),
(22, 21, 34, '2', '137', '300', '600', NULL, NULL),
(23, 21, 16, '3', '30', '68', '204', NULL, NULL),
(24, 21, 13, '1', '473', '825', '825', NULL, NULL),
(25, 22, 172, '1', '70', '90', '90', NULL, NULL),
(26, 23, 74, '1', '66', '100', '100', NULL, NULL),
(27, 23, 79, '1', '88', '130', '130', NULL, NULL),
(28, 24, 218, '1', '117', '180', '180', NULL, NULL),
(29, 25, 105, '1', '81', '90', '90', NULL, NULL),
(30, 25, 84, '1', '85', '90', '90', NULL, NULL),
(31, 26, 218, '1', '117', '200', '200', NULL, NULL),
(32, 26, 63, '1', '80', '80', '80', NULL, NULL),
(33, 27, 14, '5', '140', '180', '900', NULL, NULL),
(34, 28, 10, '1', '148', '190', '190', NULL, NULL),
(35, 29, 84, '20', '85', '85', '1700', NULL, NULL),
(36, 29, 44, '24', '63', '64', '1536', NULL, NULL),
(37, 30, 218, '1', '140', '200', '200', NULL, NULL),
(38, 30, 63, '1', '80', '80', '80', NULL, NULL),
(39, 31, 10, '1', '148', '180', '180', NULL, NULL),
(40, 32, 214, '10', '27', '30', '300', NULL, NULL),
(41, 32, 16, '10', '30', '68', '680', NULL, NULL),
(42, 32, 15, '10', '56', '58', '580', NULL, NULL),
(43, 33, 200, '5', '95', '105', '525', NULL, NULL),
(44, 34, 15, '4', '56', '70', '280', NULL, NULL),
(45, 34, 16, '1', '30', '40', '40', NULL, NULL),
(46, 35, 15, '4', '56', '70', '280', NULL, NULL),
(47, 35, 16, '1', '30', '40', '40', NULL, NULL),
(48, 35, 79, '1', '88', '140', '140', NULL, NULL),
(49, 36, 143, '1', '54', '80', '80', NULL, NULL),
(50, 36, 84, '1', '85', '90', '90', NULL, NULL),
(51, 37, 143, '1', '54', '80', '80', NULL, NULL),
(52, 37, 84, '1', '85', '90', '90', NULL, NULL),
(53, 38, 186, '2', '113', '140', '280', NULL, NULL),
(54, 39, 199, '1', '110', '120', '120', NULL, NULL),
(55, 40, 84, '2', '85', '90', '180', NULL, NULL),
(56, 40, 115, '1', '755', '450', '450', NULL, NULL),
(57, 40, 35, '1', '145', '170', '170', NULL, NULL),
(58, 41, 199, '3', '110', '130', '390', NULL, NULL),
(59, 42, 40, '1', '132', '150', '150', NULL, NULL),
(60, 43, 40, '1', '132', '150', '150', NULL, NULL),
(61, 44, 218, '1', '140', '200', '200', NULL, NULL),
(62, 45, 49, '1', '110', '170', '170', NULL, NULL),
(63, 46, 190, '1', '120', '200', '200', NULL, NULL),
(64, 47, 44, '1', '63', '150', '150', NULL, NULL),
(65, 47, 14, '9', '140', '262', '2096', NULL, NULL),
(66, 47, 82, '4', '118', '250', '750', NULL, NULL),
(67, 47, 211, '1', '375', '580', '580', NULL, NULL),
(68, 47, 79, '5', '88', '160', '640', NULL, NULL),
(69, 47, 32, '4', '85', '200', '600', NULL, NULL),
(70, 47, 218, '3', '140', '280', '560', NULL, NULL),
(71, 47, 188, '2', '80', '195', '195', NULL, NULL),
(72, 47, 10, '1', '148', '220', '220', NULL, NULL),
(73, 47, 42, '1', '143', '300', '300', NULL, NULL),
(74, 47, 213, '20', '101', '195', '3900', NULL, NULL),
(75, 48, 63, '1', '80', '200', '200', NULL, NULL),
(76, 48, 218, '1', '140', '280', '280', NULL, NULL),
(77, 48, 25, '1', '60', '110', '110', NULL, NULL),
(78, 49, 59, '1', '95', '200', '200', NULL, NULL),
(79, 49, 218, '1', '140', '280', '280', NULL, NULL),
(80, 49, 188, '1', '80', '195', '195', NULL, NULL),
(81, 49, 190, '1', '120', '225', '225', NULL, NULL),
(82, 51, 159, '30', '45', '48', '1440', NULL, NULL),
(83, 50, 159, '30', '45', '48', '1440', NULL, NULL),
(84, 51, 44, '24', '63', '64', '1536', NULL, NULL),
(85, 50, 44, '24', '63', '64', '1536', NULL, NULL),
(86, 52, 159, '30', '45', '48', '1440', NULL, NULL),
(87, 52, 44, '24', '63', '64', '1536', NULL, NULL),
(88, 53, 218, '20', '140', '140', '2800', NULL, NULL),
(89, 53, 145, '12', '65', '68', '816', NULL, NULL),
(90, 53, 16, '1', '30', '68', '68', NULL, NULL),
(91, 54, 102, '6', '155', '170', '1020', NULL, NULL),
(92, 54, 131, '10', '127', '130', '1300', NULL, NULL),
(93, 55, 44, '6', '63', '100', '600', NULL, NULL),
(94, 56, 159, '1', '45', '70', '70', NULL, NULL),
(95, 56, 44, '1', '63', '100', '100', NULL, NULL),
(96, 57, 105, '3', '81', '147', '441', NULL, NULL),
(97, 58, 133, '1', '41', '45', '45', NULL, NULL),
(98, 59, 225, '1', '60', '80', '80', NULL, NULL),
(99, 60, 217, '1', '246', '400', '400', NULL, NULL),
(100, 60, 132, '1', '370', '400', '400', NULL, NULL),
(101, 61, 44, '1', '63', '70', '70', NULL, NULL),
(102, 61, 159, '2', '45', '90', '90', NULL, NULL),
(103, 61, 186, '1', '113', '130', '130', NULL, NULL),
(104, 61, 215, '1', '190', '200', '200', NULL, NULL),
(105, 61, 105, '1', '81', '85', '85', NULL, NULL),
(106, 61, 161, '1', '75', '90', '90', NULL, NULL),
(107, 61, 218, '1', '140', '200', '200', NULL, NULL),
(108, 61, 231, '1', '42', '70', '70', NULL, NULL),
(109, 61, 88, '2', '25', '25', '50', NULL, NULL),
(110, 61, 131, '1', '127', '150', '150', NULL, NULL),
(111, 62, 215, '9', '190', '194', '1746', NULL, NULL),
(112, 63, 218, '40', '140', '150', '6000', NULL, NULL),
(113, 63, 216, '10', '1200', '1300', '13000', NULL, NULL),
(114, 63, 217, '40', '246', '255', '10200', NULL, NULL),
(115, 63, 23, '12', '569', '590', '7080', NULL, NULL),
(116, 63, 22, '20', '300', '310', '6200', NULL, NULL),
(117, 63, 21, '20', '150', '160', '3200', NULL, NULL),
(118, 63, 14, '20', '140', '145', '2900', NULL, NULL),
(119, 63, 10, '20', '156', '160', '3200', NULL, NULL),
(120, 63, 9, '20', '301', '306', '6120', NULL, NULL),
(121, 63, 213, '30', '101', '115', '3450', NULL, NULL),
(122, 63, 212, '30', '90', '110', '3300', NULL, NULL),
(123, 63, 106, '10', '225', '230', '2300', NULL, NULL),
(124, 63, 105, '20', '81', '82', '1640', NULL, NULL),
(125, 63, 132, '10', '370', '375', '3750', NULL, NULL),
(126, 63, 131, '20', '127', '130', '2600', NULL, NULL),
(127, 63, 16, '80', '32', '35', '2800', NULL, NULL),
(128, 63, 15, '40', '59', '63', '2520', NULL, NULL),
(129, 64, 237, '30', '148', '160', '4800', NULL, NULL),
(130, 64, 88, '50', '25', '25', '1250', NULL, NULL),
(131, 64, 117, '13', '18', '20', '260', NULL, NULL),
(132, 64, 171, '75', '15', '16', '1200', NULL, NULL),
(133, 64, 84, '46', '85', '86', '3956', NULL, NULL),
(134, 64, 86, '25', '264', '266', '6650', NULL, NULL),
(135, 64, 87, '20', '542', '570', '11400', NULL, NULL),
(136, 64, 91, '12', '260', '265', '3180', NULL, NULL),
(137, 64, 90, '12', '500', '505', '6060', NULL, NULL),
(138, 64, 93, '12', '112', '115', '1380', NULL, NULL),
(139, 64, 92, '12', '218', '222', '2664', NULL, NULL),
(140, 64, 61, '6', '560', '570', '3420', NULL, NULL),
(141, 64, 62, '24', '128', '133', '3192', NULL, NULL),
(142, 64, 235, '20', '35', '37', '740', NULL, NULL),
(143, 64, 236, '20', '62', '65', '1300', NULL, NULL),
(144, 64, 76, '20', '20', '22', '440', NULL, NULL),
(145, 65, 10, '4', '156', '190', '760', NULL, NULL),
(146, 65, 14, '1', '140', '180', '180', NULL, NULL),
(147, 65, 79, '1', '88', '140', '140', NULL, NULL),
(148, 65, 32, '1', '85', '100', '100', NULL, NULL),
(149, 65, 88, '2', '25', '30', '60', NULL, NULL),
(150, 66, 145, '1', '65', '90', '90', NULL, NULL),
(151, 67, 44, '1', '63', '75', '75', NULL, NULL),
(152, 67, 105, '1', '81', '90', '90', NULL, NULL),
(153, 68, 102, '10', '161', '170', '1700', NULL, NULL),
(154, 69, 105, '1', '81', '90', '90', NULL, NULL),
(155, 70, 145, '1', '65', '90', '90', NULL, NULL),
(156, 70, 159, '1', '45', '80', '80', NULL, NULL),
(157, 70, 102, '10', '161', '170', '1700', NULL, NULL),
(158, 70, 196, '1', '140', '200', '200', NULL, NULL),
(159, 70, 231, '3', '42', '76', '228', NULL, NULL),
(160, 70, 200, '10', '95', '105', '1050', NULL, NULL),
(161, 70, 40, '1', '132', '170', '170', NULL, NULL),
(162, 71, 231, '6', '42', '45', '270', NULL, NULL),
(163, 71, 102, '8', '161', '170', '1360', NULL, NULL),
(164, 72, 10, '3', '156', '220', '660', NULL, NULL),
(165, 72, 234, '1', '224', '250', '250', NULL, NULL),
(166, 73, 232, '4', '392', '400', '1600', NULL, NULL),
(167, 74, 159, '24', '45', '50', '1200', NULL, NULL),
(168, 75, 9, '2', '301', '360', '720', NULL, NULL),
(169, 76, 199, '1', '110', '160', '160', NULL, NULL),
(170, 77, 218, '1', '140', '180', '180', NULL, NULL),
(171, 80, 218, '1', '140', '190', '190', NULL, NULL),
(172, 81, 46, '1', '59', '75', '75', NULL, NULL),
(173, 81, 44, '1', '63', '75', '75', NULL, NULL),
(174, 82, 46, '1', '59', '75', '75', NULL, NULL),
(175, 82, 44, '1', '63', '75', '75', NULL, NULL),
(176, 83, 231, '1', '42', '80', '80', NULL, NULL),
(177, 84, 109, '1', '52', '75', '75', NULL, NULL),
(178, 84, 145, '1', '65', '75', '75', NULL, NULL),
(179, 85, 46, '1', '59', '75', '75', NULL, NULL),
(180, 85, 44, '1', '63', '75', '75', NULL, NULL),
(181, 86, 195, '1', '72', '100', '100', NULL, NULL),
(182, 86, 213, '1', '101', '150', '150', NULL, NULL),
(183, 86, 84, '1', '85', '90', '90', NULL, NULL),
(184, 86, 59, '1', '95', '120', '120', NULL, NULL),
(185, 87, 179, '1', '35', '45', '45', NULL, NULL),
(186, 87, 141, '1', '107', '115', '115', NULL, NULL),
(187, 88, 231, '1', '42', '60', '60', NULL, NULL),
(188, 89, 44, '8', '63', '65', '520', NULL, NULL),
(189, 90, 16, '1', '32', '50', '50', NULL, NULL),
(190, 91, 90, '2', '500', '580', '1160', NULL, NULL),
(191, 92, 25, '1', '60', '60', '60', NULL, NULL),
(192, 92, 142, '2', '455', '480', '960', NULL, NULL),
(193, 93, 15, '5', '59', '80', '400', NULL, NULL),
(194, 94, 14, '1', '140', '170', '170', NULL, NULL),
(195, 94, 195, '1', '72', '100', '100', NULL, NULL),
(196, 94, 192, '1', '100', '130', '130', NULL, NULL),
(197, 95, 214, '1', '27', '45', '45', NULL, NULL),
(198, 96, 244, '1', '283', '350', '350', NULL, NULL),
(199, 97, 102, '1', '161', '230', '230', NULL, NULL),
(200, 97, 16, '1', '32', '50', '50', NULL, NULL),
(201, 97, 15, '1', '59', '100', '100', NULL, NULL),
(202, 98, 72, '1', '22', '50', '50', NULL, NULL),
(203, 98, 64, '1', '30', '50', '50', NULL, NULL),
(204, 99, 16, '1', '32', '35', '35', NULL, NULL),
(205, 100, 231, '10', '42', '70', '700', NULL, NULL),
(206, 101, 86, '1', '264', '300', '300', NULL, NULL),
(207, 102, 130, '3', '370', '390', '1170', NULL, NULL),
(208, 102, 132, '2', '370', '800', '1600', NULL, NULL),
(209, 103, 16, '1', '32', '55', '55', NULL, NULL),
(210, 104, 16, '80', '32', '33', '2640', NULL, NULL),
(211, 104, 15, '40', '59', '61', '2440', NULL, NULL),
(212, 105, 213, '1', '101', '150', '150', NULL, NULL),
(213, 105, 79, '1', '88', '150', '150', NULL, NULL),
(214, 106, 16, '80', '32', '33.25', '2660', NULL, NULL),
(215, 106, 15, '40', '59', '61.5', '2460', NULL, NULL),
(216, 107, 16, '2', '32', '50', '100', NULL, NULL),
(217, 108, 88, '2', '25', '30', '60', NULL, NULL),
(218, 108, 11, '1', '101', '150', '150', NULL, NULL),
(219, 108, 145, '1', '65', '90', '90', NULL, NULL),
(220, 108, 16, '2', '32', '50', '100', NULL, NULL),
(221, 109, 249, '2', '48', '70', '140', NULL, NULL),
(222, 110, 248, '1', '175', '225', '225', NULL, NULL),
(223, 111, 148, '1', '133', '150', '150', NULL, NULL),
(224, 112, 18, '1', '30', '40', '40', NULL, NULL),
(225, 113, 148, '1', '133', '200', '200', NULL, NULL),
(226, 114, 249, '1', '48', '70', '70', NULL, NULL),
(227, 115, 86, '1', '264', '320', '320', NULL, NULL),
(228, 115, 198, '2', '80', '70', '140', NULL, NULL),
(229, 116, 16, '80', '32', '33.25', '2660', NULL, NULL),
(230, 116, 15, '40', '59', '61.5', '2460', NULL, NULL),
(231, 117, 16, '80', '32', '33.25', '2660', NULL, NULL),
(232, 118, 16, '2', '32', '50', '100', NULL, NULL),
(233, 118, 15, '2', '59', '100', '200', NULL, NULL),
(234, 119, 198, '1', '80', '80', '80', NULL, NULL),
(235, 120, 259, '50', '130', '140', '7000', NULL, NULL),
(236, 120, 260, '5', '65', '72.5', '362.5', NULL, NULL),
(237, 121, 260, '20', '65', '72.5', '1450', NULL, NULL),
(238, 122, 249, '2', '48', '65', '130', NULL, NULL),
(239, 123, 248, '1', '175', '220', '220', NULL, NULL),
(240, 123, 105, '1', '81', '100', '100', NULL, NULL),
(241, 124, 16, '2', '32', '50', '100', NULL, NULL),
(242, 125, 249, '24', '48', '50', '1200', NULL, NULL),
(243, 126, 231, '24', '42', '47', '1128', NULL, NULL),
(244, 126, 102, '10', '161', '167', '1670', NULL, NULL),
(245, 126, 11, '1', '101', '150', '150', NULL, NULL),
(246, 127, 16, '1', '32', '50', '50', NULL, NULL),
(247, 127, 15, '2', '59', '90', '180', NULL, NULL),
(248, 128, 143, '1', '54', '80', '80', NULL, NULL),
(249, 129, 248, '1', '175', '220', '220', NULL, NULL),
(250, 129, 60, '1', '51', '70', '70', NULL, NULL),
(251, 129, 143, '1', '54', '80', '80', NULL, NULL),
(252, 129, 16, '4', '32', '50', '200', NULL, NULL),
(253, 130, 86, '1', '264', '320', '320', NULL, NULL),
(254, 131, 16, '3', '32', '50', '150', NULL, NULL),
(255, 132, 15, '5', '59', '100', '500', NULL, NULL),
(256, 133, 40, '20', '132', '180', '3600', NULL, NULL),
(257, 134, 265, '1', '205', '205', '205', NULL, NULL),
(258, 135, 265, '1', '205', '205', '205', NULL, NULL),
(259, 136, 117, '1', '18', '30', '30', NULL, NULL),
(260, 136, 84, '1', '85', '90', '90', NULL, NULL),
(261, 137, 10, '4', '156', '180', '720', NULL, NULL),
(262, 137, 196, '2', '140', '210', '420', NULL, NULL),
(263, 138, 259, '50', '130', '140', '7000', NULL, NULL),
(264, 139, 249, '3', '48', '66', '198', NULL, NULL),
(265, 140, 249, '1', '48', '80', '80', NULL, NULL),
(266, 141, 235, '2', '35', '50', '100', NULL, NULL),
(267, 142, 246, '1', '35', '35', '35', NULL, NULL),
(268, 143, 16, '2', '32', '50', '100', NULL, NULL),
(269, 144, 16, '1', '32', '50', '50', NULL, NULL),
(270, 145, 16, '1', '32', '50', '50', NULL, NULL),
(271, 146, 214, '4', '27', '45', '180', NULL, NULL),
(272, 147, 15, '2', '59', '80', '160', NULL, NULL),
(273, 147, 16, '1', '32', '40', '40', NULL, NULL),
(274, 148, 16, '80', '32', '33.25', '2660', NULL, NULL),
(275, 149, 15, '40', '59', '61.5', '2460', NULL, NULL),
(276, 149, 16, '80', '32', '33.25', '2660', NULL, NULL),
(277, 150, 16, '80', '32', '33.25', '2660', NULL, NULL),
(278, 150, 15, '40', '59', '61.5', '2460', NULL, NULL),
(279, 151, 15, '6', '59', '90', '540', NULL, NULL),
(280, 152, 235, '1', '35', '45', '45', NULL, NULL),
(281, 153, 211, '2', '375', '450', '900', NULL, NULL),
(282, 153, 9, '6', '301', '360', '2160', NULL, NULL),
(283, 153, 142, '1', '455', '580', '580', NULL, NULL),
(284, 153, 252, '10', '55', '80', '800', NULL, NULL),
(285, 153, 261, '12', '205', '250', '3000', NULL, NULL),
(286, 153, 16, '1', '32', '50', '50', NULL, NULL),
(287, 154, 44, '1', '70', '100', '100', NULL, NULL),
(288, 155, 79, '1', '88', '120', '120', NULL, NULL),
(289, 155, 34, '1', '137', '150', '150', NULL, NULL),
(290, 156, 17, '2', '27', '80', '160', NULL, NULL),
(291, 156, 16, '3', '32', '50', '150', NULL, NULL),
(292, 156, 15, '2', '59', '45', '90', NULL, NULL),
(293, 156, 264, '2', '47', '75', '150', NULL, NULL),
(294, 156, 145, '1', '65', '100', '100', NULL, NULL),
(295, 156, 140, '1', '100', '150', '150', NULL, NULL),
(296, 157, 16, '1', '32', '50', '50', NULL, NULL),
(297, 158, 231, '2', '42', '55', '110', NULL, NULL),
(298, 159, 15, '2', '59', '90', '180', NULL, NULL),
(299, 160, 15, '3', '59', '83', '249', NULL, NULL),
(300, 161, 199, '5', '110', '140', '700', NULL, NULL),
(301, 161, 185, '1', '458', '500', '500', NULL, NULL),
(302, 162, 214, '1', '27', '40', '40', NULL, NULL),
(303, 163, 16, '1', '32', '50', '50', NULL, NULL),
(304, 163, 15, '4', '59', '90', '360', NULL, NULL),
(305, 164, 79, '5', '88', '105', '525', NULL, NULL),
(306, 164, 196, '10', '140', '140', '1400', NULL, NULL),
(307, 164, 258, '10', '90', '130', '1300', NULL, NULL),
(308, 165, 262, '10', '50', '70', '700', NULL, NULL),
(309, 166, 16, '4', '32', '50', '200', NULL, NULL),
(310, 167, 16, '40', '32', '33.25', '1330', NULL, NULL),
(311, 167, 15, '20', '59', '61.5', '1230', NULL, NULL),
(312, 167, 10, '10', '156', '164', '1640', NULL, NULL),
(313, 167, 40, '20', '132', '158', '3160', NULL, NULL),
(314, 167, 236, '10', '62', '66', '660', NULL, NULL),
(315, 168, 15, '1', '59', '90', '90', NULL, NULL),
(316, 168, 16, '1', '32', '45', '45', NULL, NULL),
(317, 169, 27, '1', '295', '400', '400', NULL, NULL),
(318, 170, 15, '3', '59', '90', '270', NULL, NULL),
(319, 170, 16, '7', '32', '45', '315', NULL, NULL),
(320, 171, 15, '2', '59', '90', '180', NULL, NULL),
(321, 171, 16, '1', '32', '50', '50', NULL, NULL),
(322, 172, 240, '1', '220', '320', '320', NULL, NULL),
(323, 173, 15, '2', '59', '90', '180', NULL, NULL),
(324, 174, 15, '1', '59', '100', '100', NULL, NULL),
(325, 175, 10, '4', '156', '180', '720', NULL, NULL),
(326, 175, 9, '2', '301', '360', '720', NULL, NULL),
(327, 175, 258, '4', '90', '200', '800', NULL, NULL),
(328, 175, 216, '1', '1200', '1600', '1600', NULL, NULL),
(329, 175, 262, '5', '50', '150', '750', NULL, NULL),
(330, 175, 241, '1', '600', '900', '900', NULL, NULL),
(331, 175, 240, '1', '220', '300', '300', NULL, NULL),
(332, 176, 16, '2', '32', '45', '90', NULL, NULL),
(333, 176, 15, '1', '59', '90', '90', NULL, NULL),
(334, 177, 142, '1', '455', '550', '550', NULL, NULL),
(335, 178, 236, '2', '62', '80', '160', NULL, NULL),
(336, 178, 9, '1', '301', '340', '340', NULL, NULL),
(337, 179, 252, '1', '55', '100', '100', NULL, NULL),
(338, 179, 197, '2', '38', '80', '160', NULL, NULL),
(339, 180, 17, '10', '27', '29', '290', NULL, NULL),
(340, 180, 252, '10', '55', '70', '700', NULL, NULL),
(341, 181, 16, '2', '32', '50', '100', NULL, NULL),
(342, 181, 235, '1', '35', '45', '45', NULL, NULL),
(343, 182, 213, '50', '101', '128', '6400', NULL, NULL),
(344, 183, 236, '7', '62', '80', '560', NULL, NULL),
(345, 184, 250, '1', '900', '950', '950', NULL, NULL),
(346, 185, 17, '2', '27', '45', '90', NULL, NULL),
(347, 185, 16, '1', '32', '35', '35', NULL, NULL),
(348, 186, 15, '12', '59', '90', '1080', NULL, NULL),
(349, 186, 16, '2', '32', '50', '100', NULL, NULL),
(350, 186, 196, '5', '140', '250', '1250', NULL, NULL),
(351, 187, 17, '6', '27', '30', '180', NULL, NULL),
(352, 188, 259, '10', '130', '135', '1350', NULL, NULL),
(353, 189, 16, '1', '33', '50', '50', NULL, NULL),
(354, 189, 15, '1', '62', '90', '90', NULL, NULL),
(355, 190, 17, '3', '27', '36', '108', NULL, NULL),
(356, 191, 15, '2', '62', '70', '140', NULL, NULL),
(357, 191, 16, '1', '33', '40', '40', NULL, NULL),
(358, 192, 9, '3', '301', '360', '1080', NULL, NULL),
(359, 192, 15, '1', '62', '100', '100', NULL, NULL),
(360, 192, 16, '1', '33', '50', '50', NULL, NULL),
(361, 193, 16, '1', '33', '50', '50', NULL, NULL),
(362, 194, 16, '1', '33', '50', '50', NULL, NULL),
(363, 195, 212, '3', '90', '160', '480', NULL, NULL),
(364, 196, 15, '2', '62', '95', '190', NULL, NULL),
(365, 197, 231, '1', '42', '80', '80', NULL, NULL),
(366, 198, 16, '1', '33', '50', '50', NULL, NULL),
(367, 198, 15, '1', '62', '100', '100', NULL, NULL),
(368, 199, 188, '45', '80', '84', '3780', NULL, NULL),
(369, 199, 237, '20', '148', '156', '3120', NULL, NULL),
(370, 199, 213, '10', '101', '140', '1400', NULL, NULL),
(371, 199, 186, '6', '113', '120', '720', NULL, NULL),
(372, 200, 16, '80', '33', '33.25', '2660', NULL, NULL),
(373, 200, 15, '40', '62', '61.50', '2460', NULL, NULL),
(374, 201, 242, '8', '55', '80', '640', NULL, NULL),
(375, 201, 261, '2', '205', '250', '500', NULL, NULL),
(376, 202, 16, '3', '33', '36', '108', NULL, NULL),
(377, 203, 214, '1', '27', '40', '40', NULL, NULL),
(378, 203, 43, '1', '270', '280', '280', NULL, NULL),
(379, 204, 162, '2', '35', '45', '90', NULL, NULL),
(380, 204, 86, '1', '264', '300', '300', NULL, NULL),
(381, 205, 16, '2', '33', '50', '100', NULL, NULL),
(382, 205, 15, '1', '62', '90', '90', NULL, NULL),
(383, 206, 15, '2', '62', '90', '180', NULL, NULL),
(384, 206, 253, '1', '220', '270', '270', NULL, NULL),
(385, 207, 237, '5', '148', '200', '1000', NULL, NULL),
(386, 207, 15, '1', '62', '90', '90', NULL, NULL),
(387, 208, 195, '10', '72', '72.5', '725', NULL, NULL),
(388, 208, 196, '5', '140', '145', '725', NULL, NULL),
(389, 208, 262, '20', '50', '70', '1400', NULL, NULL),
(390, 209, 131, '1', '127', '150', '150', NULL, NULL),
(391, 210, 141, '20', '107', '116', '2320', NULL, NULL),
(392, 210, 252, '20', '55', '70', '1400', NULL, NULL),
(393, 210, 140, '24', '100', '105', '2520', NULL, NULL),
(394, 211, 40, '10', '132', '140', '1400', NULL, NULL),
(395, 211, 146, '1', '1242', '1350', '1350', NULL, NULL),
(396, 212, 16, '2', '33', '50', '100', NULL, NULL),
(397, 213, 259, '3', '130', '200', '600', NULL, NULL),
(398, 213, 254, '7', '130', '142', '994', NULL, NULL),
(399, 214, 208, '1', '115', '125', '125', NULL, NULL),
(400, 214, 42, '1', '143', '170', '170', NULL, NULL),
(401, 214, 9, '1', '301', '320', '320', NULL, NULL),
(402, 215, 15, '20', '62', '70', '1400', NULL, NULL),
(403, 216, 231, '9', '42', '51', '459', NULL, NULL),
(404, 217, 10, '3', '156', '167', '501', NULL, NULL),
(405, 218, 16, '6', '33', '35', '210', NULL, NULL),
(406, 219, 196, '2', '140', '260', '520', NULL, NULL),
(407, 220, 15, '1', '62', '80', '80', NULL, NULL),
(408, 221, 214, '7', '27', '35', '245', NULL, NULL),
(409, 222, 214, '2', '27', '40', '80', NULL, NULL),
(410, 223, 214, '3', '27', '35', '105', NULL, NULL),
(411, 224, 15, '1', '62', '90', '90', NULL, NULL),
(412, 225, 208, '1', '115', '130', '130', NULL, NULL),
(413, 225, 15, '3', '62', '85', '255', NULL, NULL),
(414, 226, 16, '80', '33', '33.25', '2660', NULL, NULL),
(415, 226, 15, '40', '62', '62', '2480', NULL, NULL),
(416, 226, 140, '24', '100', '105', '2520', NULL, NULL),
(417, 226, 143, '24', '54', '62', '1488', NULL, NULL),
(418, 226, 30, '20', '288', '365', '7300', NULL, NULL),
(419, 226, 29, '40', '155', '196', '7840', NULL, NULL),
(420, 226, 27, '20', '295', '365', '7300', NULL, NULL),
(421, 226, 173, '40', '154', '196', '7840', NULL, NULL),
(422, 226, 121, '1', '120', '185', '185', NULL, NULL),
(423, 226, 120, '30', '440', '455', '13650', NULL, NULL),
(424, 226, 159, '15', '45', '50', '750', NULL, NULL),
(425, 226, 158, '15', '83', '90', '1350', NULL, NULL),
(426, 226, 218, '24', '140', '170', '4080', NULL, NULL),
(427, 226, 217, '24', '300', '303', '7272', NULL, NULL),
(428, 226, 216, '10', '1200', '1205', '12050', NULL, NULL),
(429, 226, 215, '6', '190', '200', '1200', NULL, NULL),
(430, 226, 130, '6', '370', '385', '2310', NULL, NULL),
(431, 226, 148, '15', '133', '160', '2400', NULL, NULL),
(432, 226, 147, '15', '255', '295', '4425', NULL, NULL),
(433, 226, 145, '24', '65', '75', '1800', NULL, NULL),
(434, 226, 45, '6', '285', '305', '1830', NULL, NULL),
(435, 226, 44, '24', '70', '90', '2160', NULL, NULL),
(436, 227, 233, '1', '390', '460', '460', NULL, NULL),
(437, 227, 10, '1', '156', '180', '180', NULL, NULL),
(438, 227, 9, '2', '301', '360', '720', NULL, NULL),
(439, 228, 16, '40', '33', '33.25', '1330', NULL, NULL),
(440, 228, 15, '20', '62', '62', '1240', NULL, NULL),
(441, 228, 213, '30', '101', '125', '3750', NULL, NULL),
(442, 228, 262, '30', '50', '70', '2100', NULL, NULL),
(443, 228, 158, '15', '83', '90', '1350', NULL, NULL),
(444, 228, 159, '15', '45', '50', '750', NULL, NULL),
(445, 228, 131, '10', '127', '132', '1320', NULL, NULL),
(446, 228, 132, '10', '370', '372', '3720', NULL, NULL),
(447, 228, 105, '10', '81', '82', '820', NULL, NULL),
(448, 228, 106, '10', '225', '128', '1280', NULL, NULL),
(449, 228, 258, '10', '90', '120', '1200', NULL, NULL),
(450, 228, 148, '10', '133', '142', '1420', NULL, NULL),
(451, 228, 147, '10', '255', '265', '2650', NULL, NULL),
(452, 228, 218, '12', '140', '165', '1980', NULL, NULL),
(453, 228, 217, '12', '300', '305', '3660', NULL, NULL),
(454, 228, 130, '6', '370', '375', '2250', NULL, NULL),
(455, 228, 215, '6', '190', '193', '1158', NULL, NULL),
(456, 228, 145, '12', '65', '65', '780', NULL, NULL),
(457, 228, 144, '6', '305', '310', '1860', NULL, NULL),
(458, 228, 237, '30', '148', '156', '4680', NULL, NULL),
(459, 229, 43, '5', '270', '320', '1600', NULL, NULL),
(460, 229, 31, '1', '1066', '1400', '1400', NULL, NULL),
(461, 230, 214, '12', '27', '40', '480', NULL, NULL),
(462, 231, 231, '1', '42', '60', '60', NULL, NULL),
(463, 231, 235, '1', '35', '40', '40', NULL, NULL),
(464, 232, 16, '1', '33', '50', '50', NULL, NULL),
(465, 233, 16, '1', '33', '50', '50', NULL, NULL),
(466, 233, 15, '2', '62', '90', '180', NULL, NULL),
(467, 234, 214, '5', '27', '45', '225', NULL, NULL),
(468, 235, 16, '1', '33', '50', '50', NULL, NULL),
(469, 236, 167, '1', '60', '50', '50', NULL, NULL),
(470, 236, 33, '1', '35', '60', '60', NULL, NULL),
(471, 236, 208, '1', '115', '120', '120', NULL, NULL),
(472, 236, 15, '2', '62', '90', '180', NULL, NULL),
(473, 236, 198, '2', '80', '85', '170', NULL, NULL),
(474, 237, 214, '10', '27', '80', '800', NULL, NULL),
(475, 238, 237, '10', '148', '156', '1560', NULL, NULL),
(476, 238, 242, '50', '55', '59', '2950', NULL, NULL),
(477, 238, 262, '10', '50', '80', '800', NULL, NULL),
(478, 238, 79, '10', '88', '110', '1100', NULL, NULL),
(479, 238, 258, '10', '90', '138', '1380', NULL, NULL),
(480, 238, 234, '5', '224', '233', '1165', NULL, NULL),
(481, 238, 116, '10', '101', '138', '1380', NULL, NULL),
(482, 238, 10, '10', '156', '164', '1640', NULL, NULL),
(483, 238, 16, '80', '33', '33.25', '2660', NULL, NULL),
(484, 238, 15, '40', '62', '61.5', '2460', NULL, NULL),
(485, 238, 208, '2', '115', '120', '240', NULL, NULL),
(486, 239, 15, '4', '62', '90', '360', NULL, NULL),
(487, 239, 261, '2', '205', '245', '490', NULL, NULL),
(488, 239, 116, '10', '101', '145', '1450', NULL, NULL),
(489, 240, 84, '1', '85', '90', '90', NULL, NULL),
(490, 240, 86, '1', '264', '290', '290', NULL, NULL),
(491, 240, 163, '1', '110', '120', '120', NULL, NULL),
(492, 240, 162, '1', '35', '50', '50', NULL, NULL),
(493, 241, 199, '2', '110', '140', '280', NULL, NULL),
(494, 242, 16, '10', '33', '50', '500', NULL, NULL),
(495, 242, 15, '10', '62', '90', '900', NULL, NULL),
(496, 243, 237, '1', '148', '170', '170', NULL, NULL),
(497, 244, 9, '1', '301', '310', '310', NULL, NULL),
(498, 245, 252, '1', '55', '100', '100', NULL, NULL),
(499, 245, 143, '1', '54', '55', '55', NULL, NULL),
(500, 246, 79, '2', '88', '120', '240', NULL, NULL),
(501, 246, 242, '2', '55', '65', '130', NULL, NULL),
(502, 247, 242, '1', '55', '70', '70', NULL, NULL),
(503, 248, 208, '1', '115', '130', '130', NULL, NULL),
(504, 249, 241, '4', '600', '650', '2600', NULL, NULL),
(505, 249, 240, '4', '220', '250', '1000', NULL, NULL),
(506, 250, 252, '10', '55', '70', '700', NULL, NULL),
(507, 251, 145, '2', '65', '80', '160', NULL, NULL),
(508, 251, 143, '1', '54', '70', '70', NULL, NULL),
(509, 251, 140, '1', '100', '130', '130', NULL, NULL),
(510, 251, 231, '2', '42', '140', '280', NULL, NULL),
(511, 252, 44, '2', '70', '100', '200', NULL, NULL),
(512, 252, 202, '1', '224', '250', '250', NULL, NULL),
(513, 252, 158, '1', '83', '100', '100', NULL, NULL),
(514, 252, 159, '1', '45', '70', '70', NULL, NULL),
(515, 252, 132, '1', '370', '400', '400', NULL, NULL),
(516, 252, 257, '1', '78', '90', '90', NULL, NULL),
(517, 252, 254, '1', '130', '150', '150', NULL, NULL),
(518, 253, 45, '1', '285', '350', '350', NULL, NULL),
(519, 253, 132, '1', '370', '400', '400', NULL, NULL),
(520, 254, 131, '1', '127', '130', '130', NULL, NULL),
(521, 255, 208, '6', '115', '120', '720', NULL, NULL),
(522, 256, 158, '1', '83', '100', '100', NULL, NULL),
(523, 256, 44, '1', '70', '100', '100', NULL, NULL),
(524, 256, 105, '1', '81', '90', '90', NULL, NULL),
(525, 257, 132, '3', '370', '400', '1200', NULL, NULL),
(526, 257, 206, '1', '1565', '1700', '1700', NULL, NULL),
(527, 258, 116, '50', '101', '128', '6400', NULL, NULL),
(528, 259, 262, '20', '50', '70', '1400', NULL, NULL),
(529, 259, 258, '20', '90', '120', '2400', NULL, NULL),
(530, 259, 241, '5', '600', '790', '3950', NULL, NULL),
(531, 259, 240, '1', '220', '300', '300', NULL, NULL),
(532, 260, 10, '1', '156', '170', '170', NULL, NULL),
(533, 260, 9, '1', '301', '340', '340', NULL, NULL),
(534, 260, 83, '2', '62', '95', '190', NULL, NULL),
(535, 260, 79, '2', '88', '150', '300', NULL, NULL),
(536, 261, 252, '20', '55', '70', '1400', NULL, NULL),
(537, 262, 233, '3', '390', '450', '1350', NULL, NULL),
(538, 262, 234, '3', '224', '233', '699', NULL, NULL),
(539, 263, 15, '1', '62', '90', '90', NULL, NULL),
(540, 264, 10, '1', '156', '180', '180', NULL, NULL),
(541, 265, 237, '2', '148', '280', '560', NULL, NULL),
(542, 265, 79, '3', '88', '130', '390', NULL, NULL),
(543, 267, 116, '10', '101', '138', '1380', NULL, NULL),
(544, 268, 218, '1', '140', '170', '170', NULL, NULL),
(545, 268, 271, '1', '110', '160', '160', NULL, NULL),
(546, 269, 131, '2', '127', '140', '280', NULL, NULL),
(547, 270, 252, '30', '55', '70', '2100', NULL, NULL),
(548, 271, 145, '24', '65', '58', '1392', NULL, NULL),
(549, 271, 144, '6', '305', '308', '1848', NULL, NULL),
(550, 271, 140, '24', '100', '104', '2496', NULL, NULL),
(551, 271, 142, '6', '455', '458', '2748', NULL, NULL),
(552, 271, 242, '50', '55', '56', '2800', NULL, NULL),
(553, 272, 141, '4', '107', '112', '448', NULL, NULL),
(554, 273, 31, '10', '1066', '1318.5', '13185', NULL, NULL),
(555, 273, 30, '20', '288', '364.5', '7290', NULL, NULL),
(556, 273, 29, '25', '155', '212.5', '5312.5', NULL, NULL),
(557, 273, 28, '10', '1066', '1318.5', '13185', NULL, NULL),
(558, 273, 173, '25', '154', '212.5', '5312.5', NULL, NULL),
(559, 274, 30, '1', '288', '500', '500', NULL, NULL),
(560, 274, 29, '1', '155', '250', '250', NULL, NULL),
(561, 274, 27, '1', '295', '500', '500', NULL, NULL),
(562, 274, 173, '1', '154', '250', '250', NULL, NULL),
(563, 275, 272, '2', '220', '300', '600', NULL, NULL),
(564, 275, 217, '1', '300', '450', '450', NULL, NULL),
(565, 276, 116, '50', '101', '125', '6250', NULL, NULL),
(566, 276, 237, '20', '148', '155', '3100', NULL, NULL),
(567, 276, 30, '12', '288', '356', '4272', NULL, NULL),
(568, 276, 29, '12', '155', '208', '2496', NULL, NULL),
(569, 276, 27, '12', '295', '356', '4272', NULL, NULL),
(570, 276, 173, '12', '154', '205', '2460', NULL, NULL),
(571, 276, 145, '24', '65', '70', '1680', NULL, NULL),
(572, 276, 44, '24', '70', '75', '1800', NULL, NULL),
(573, 276, 270, '24', '95', '104', '2496', NULL, NULL),
(574, 276, 175, '21', '96', '105', '2205', NULL, NULL),
(575, 276, 10, '10', '156', '164', '1640', NULL, NULL),
(576, 276, 258, '10', '90', '120', '1200', NULL, NULL),
(577, 276, 262, '10', '50', '70', '700', NULL, NULL),
(578, 276, 106, '10', '225', '300', '3000', NULL, NULL),
(579, 276, 105, '10', '81', '86', '860', NULL, NULL),
(580, 276, 132, '10', '370', '375', '3750', NULL, NULL),
(581, 276, 131, '10', '127', '132', '1320', NULL, NULL),
(582, 276, 133, '10', '41', '45', '450', NULL, NULL),
(583, 276, 76, '10', '20', '22', '220', NULL, NULL),
(584, 276, 88, '25', '25', '25', '625', NULL, NULL),
(585, 276, 158, '12', '83', '88', '1056', NULL, NULL),
(586, 276, 159, '12', '45', '50', '600', NULL, NULL),
(587, 276, 60, '12', '51', '55', '660', NULL, NULL),
(588, 276, 46, '24', '76', '80', '1920', NULL, NULL),
(589, 276, 86, '10', '264', '264', '2640', NULL, NULL),
(590, 276, 84, '10', '85', '90', '900', NULL, NULL),
(591, 276, 188, '10', '80', '85', '850', NULL, NULL),
(592, 276, 205, '10', '370', '375', '3750', NULL, NULL),
(593, 276, 215, '12', '190', '195', '2340', NULL, NULL),
(594, 276, 217, '24', '300', '255', '6120', NULL, NULL),
(595, 276, 218, '12', '140', '150', '1800', NULL, NULL),
(596, 276, 90, '11', '500', '505', '5555', NULL, NULL),
(597, 276, 91, '12', '260', '265', '3180', NULL, NULL),
(598, 277, 43, '10', '270', '305', '3050', NULL, NULL),
(599, 277, 42, '5', '143', '162', '810', NULL, NULL),
(600, 278, 116, '5', '101', '140', '700', NULL, NULL),
(601, 278, 262, '2', '50', '150', '300', NULL, NULL),
(602, 279, 116, '20', '101', '128', '2560', NULL, NULL),
(603, 279, 10, '20', '156', '164', '3280', NULL, NULL),
(604, 279, 211, '30', '375', '440', '13200', NULL, NULL),
(605, 279, 40, '20', '132', '160', '3200', NULL, NULL),
(606, 279, 106, '10', '225', '236', '2360', NULL, NULL),
(607, 279, 105, '10', '81', '86', '860', NULL, NULL),
(608, 279, 237, '10', '148', '156', '1560', NULL, NULL),
(609, 280, 205, '2', '370', '400', '800', NULL, NULL),
(610, 280, 142, '1', '455', '580', '580', NULL, NULL),
(611, 280, 42, '1', '143', '180', '180', NULL, NULL),
(612, 280, 159, '1', '45', '90', '90', NULL, NULL),
(613, 280, 196, '2', '140', '280', '560', NULL, NULL),
(614, 280, 271, '1', '115', '170', '170', NULL, NULL),
(615, 280, 145, '1', '65', '80', '80', NULL, NULL),
(616, 281, 272, '4', '220', '290', '1160', NULL, NULL),
(617, 281, 144, '1', '305', '340', '340', NULL, NULL),
(618, 282, 140, '2', '100', '125', '250', NULL, NULL),
(619, 283, 196, '7', '140', '170', '1190', NULL, NULL),
(620, 283, 79, '2', '88', '130', '260', NULL, NULL),
(621, 283, 116, '1', '101', '150', '150', NULL, NULL),
(622, 283, 252, '2', '55', '125', '250', NULL, NULL),
(623, 283, 44, '1', '70', '100', '100', NULL, NULL),
(624, 283, 145, '1', '65', '100', '100', NULL, NULL),
(625, 283, 62, '1', '128', '150', '150', NULL, NULL),
(626, 283, 189, '1', '70', '100', '100', NULL, NULL),
(627, 284, 206, '2', '1565', '1585', '3170', NULL, NULL),
(628, 284, 185, '2', '458', '480', '960', NULL, NULL),
(629, 284, 186, '2', '113', '128', '256', NULL, NULL),
(630, 284, 170, '2', '60', '65', '130', NULL, NULL),
(631, 284, 187, '2', '97', '110', '220', NULL, NULL),
(632, 285, 55, '1', '375', '400', '400', NULL, NULL),
(633, 285, 53, '5', '48', '55', '275', NULL, NULL),
(634, 285, 257, '5', '78', '85', '425', NULL, NULL),
(635, 285, 254, '4', '130', '140', '560', NULL, NULL),
(636, 285, 179, '5', '38', '44', '220', NULL, NULL),
(637, 286, 43, '2', '270', '320', '640', NULL, NULL),
(638, 286, 42, '1', '143', '180', '180', NULL, NULL),
(639, 286, 233, '1', '390', '440', '440', NULL, NULL),
(640, 286, 197, '2', '38', '70', '140', NULL, NULL),
(641, 286, 258, '1', '90', '200', '200', NULL, NULL),
(642, 286, 105, '2', '81', '90', '180', NULL, NULL),
(643, 287, 237, '2', '148', '190', '380', NULL, NULL),
(644, 288, 218, '1', '140', '240', '240', NULL, NULL),
(645, 288, 131, '1', '127', '130', '130', NULL, NULL),
(646, 289, 237, '2', '148', '200', '400', NULL, NULL),
(647, 289, 150, '1', '114', '150', '150', NULL, NULL),
(648, 289, 258, '1', '90', '200', '200', NULL, NULL),
(649, 289, 79, '2', '88', '150', '300', NULL, NULL),
(650, 290, 30, '1', '288', '430', '430', NULL, NULL),
(651, 290, 29, '1', '155', '240', '240', NULL, NULL),
(652, 290, 27, '1', '295', '430', '430', NULL, NULL),
(653, 290, 173, '1', '154', '240', '240', NULL, NULL),
(654, 291, 280, '1', '640', '800', '800', NULL, NULL),
(655, 291, 79, '1', '88', '140', '140', NULL, NULL),
(656, 291, 184, '1', '52', '55', '55', NULL, NULL),
(657, 291, 218, '1', '140', '185', '185', NULL, NULL),
(658, 291, 271, '1', '115', '190', '190', NULL, NULL),
(659, 292, 118, '10', '49', '60', '600', NULL, NULL),
(660, 292, 140, '10', '100', '113', '1130', NULL, NULL),
(661, 293, 130, '10', '370', '380', '3800', NULL, NULL),
(662, 293, 201, '6', '1012', '1050', '6300', NULL, NULL),
(663, 294, 201, '7', '1012', '1050', '7350', NULL, NULL),
(664, 294, 203, '5', '123', '135', '675', NULL, NULL),
(665, 294, 151, '4', '58', '65', '260', NULL, NULL),
(666, 294, 152, '5', '98', '110', '550', NULL, NULL),
(667, 295, 202, '5', '224', '232', '1160', NULL, NULL),
(668, 296, 203, '5', '123', '140', '700', NULL, NULL),
(669, 296, 201, '7', '1012', '1100', '7700', NULL, NULL),
(670, 296, 202, '5', '224', '260', '1300', NULL, NULL),
(671, 296, 152, '5', '98', '135', '675', NULL, NULL),
(672, 296, 151, '4', '58', '66', '264', NULL, NULL),
(673, 297, 118, '3', '49', '80', '240', NULL, NULL),
(674, 297, 145, '3', '65', '100', '300', NULL, NULL),
(675, 297, 106, '1', '225', '290', '290', NULL, NULL),
(676, 298, 142, '1', '455', '470', '470', NULL, NULL),
(677, 298, 132, '2', '370', '380', '760', NULL, NULL),
(678, 298, 147, '3', '255', '266', '798', NULL, NULL),
(679, 299, 147, '1', '255', '380', '380', NULL, NULL),
(680, 299, 131, '2', '127', '130', '260', NULL, NULL),
(681, 300, 88, '6', '25', '25', '150', NULL, NULL),
(682, 300, 208, '1', '122', '130', '130', NULL, NULL),
(683, 300, 105, '1', '81', '100', '100', NULL, NULL),
(684, 300, 272, '2', '220', '300', '600', NULL, NULL),
(685, 301, 102, '3', '161', '170', '510', NULL, NULL),
(686, 301, 249, '3', '48', '54', '162', NULL, NULL),
(687, 301, 264, '3', '47', '53', '159', NULL, NULL),
(688, 301, 283, '1', '900', '950', '950', NULL, NULL),
(689, 302, 141, '10', '200', '215', '2150', NULL, NULL),
(690, 303, 106, '2', '225', '300', '600', NULL, NULL),
(691, 303, 45, '1', '285', '350', '350', NULL, NULL),
(692, 303, 160, '1', '300', '400', '400', NULL, NULL),
(693, 303, 44, '1', '70', '110', '110', NULL, NULL),
(694, 304, 140, '24', '100', '162', '3888', NULL, NULL),
(695, 304, 215, '1', '190', '200', '200', NULL, NULL),
(696, 304, 205, '1', '370', '400', '400', NULL, NULL),
(697, 305, 272, '6', '220', '250', '1500', NULL, NULL),
(698, 305, 271, '6', '115', '130', '780', NULL, NULL),
(699, 305, 216, '2', '1200', '1300', '2600', NULL, NULL),
(700, 305, 31, '2', '1066', '1150', '2300', NULL, NULL),
(701, 305, 131, '10', '127', '135', '1350', NULL, NULL),
(702, 305, 246, '25', '35', '50', '1250', NULL, NULL),
(703, 306, 211, '10', '375', '440', '4400', NULL, NULL),
(704, 306, 253, '48', '220', '260', '12480', NULL, NULL),
(705, 307, 106, '10', '225', '245', '2450', NULL, NULL),
(706, 307, 132, '10', '370', '376', '3760', NULL, NULL),
(707, 307, 272, '3', '220', '240', '720', NULL, NULL),
(708, 307, 105, '10', '81', '86', '860', NULL, NULL),
(709, 307, 131, '10', '127', '135', '1350', NULL, NULL),
(710, 308, 140, '24', '100', '115', '2760', NULL, NULL),
(711, 308, 59, '10', '95', '125', '1250', NULL, NULL),
(712, 308, 60, '10', '51', '60', '600', NULL, NULL),
(713, 308, 30, '20', '288', '396', '7920', NULL, NULL),
(714, 308, 29, '10', '155', '231', '2310', NULL, NULL),
(715, 308, 27, '10', '295', '396', '3960', NULL, NULL),
(716, 308, 88, '50', '25', '28', '1400', NULL, NULL),
(717, 308, 90, '10', '500', '530', '5300', NULL, NULL),
(718, 308, 91, '10', '260', '280', '2800', NULL, NULL),
(719, 309, 173, '10', '154', '231', '2310', NULL, NULL),
(720, 310, 286, '2', '145', '155', '310', NULL, NULL),
(721, 310, 284, '1', '312', '380', '380', NULL, NULL),
(722, 310, 11, '1', '101', '150', '150', NULL, NULL),
(723, 310, 258, '2', '90', '150', '300', NULL, NULL),
(724, 310, 262, '2', '50', '130', '260', NULL, NULL),
(725, 310, 287, '2', '99', '160', '320', NULL, NULL),
(726, 310, 237, '1', '148', '200', '200', NULL, NULL),
(727, 311, 292, '20', '82', '145', '2900', NULL, NULL),
(728, 312, 300, '10', '297', '320', '3200', NULL, NULL),
(729, 312, 298, '10', '157', '170', '1700', NULL, NULL),
(730, 312, 51, '2', '407', '415', '830', NULL, NULL),
(731, 312, 48, '10', '63', '74', '740', NULL, NULL),
(732, 312, 121, '5', '120', '130', '650', NULL, NULL),
(733, 312, 122, '5', '230', '240', '1200', NULL, NULL),
(734, 312, 94, '2', '898', '950', '1900', NULL, NULL),
(735, 312, 93, '5', '112', '121', '605', NULL, NULL),
(736, 312, 92, '5', '218', '225', '1125', NULL, NULL),
(737, 312, 219, '2', '300', '350', '700', NULL, NULL),
(738, 312, 25, '5', '90', '100', '500', NULL, NULL),
(739, 312, 294, '5', '68', '75', '375', NULL, NULL),
(740, 312, 295, '5', '38', '42', '210', NULL, NULL),
(741, 312, 293, '2', '128', '135', '270', NULL, NULL),
(742, 312, 226, '5', '35', '65', '325', NULL, NULL),
(743, 312, 225, '5', '60', '115', '575', NULL, NULL),
(744, 312, 250, '1', '900', '950', '950', NULL, NULL),
(745, 312, 267, '6', '490', '510', '3060', NULL, NULL),
(746, 312, 52, '10', '195', '205', '2050', NULL, NULL),
(747, 312, 45, '2', '285', '300', '600', NULL, NULL),
(748, 312, 28, '2', '1066', '1150', '2300', NULL, NULL),
(749, 312, 195, '20', '75', '85', '1700', NULL, NULL),
(750, 312, 31, '1', '1066', '1150', '1150', NULL, NULL),
(751, 312, 89, '5', '180', '200', '1000', NULL, NULL),
(752, 313, 120, '5', '440', '470', '2350', NULL, NULL),
(753, 313, 21, '4', '160', '180', '720', NULL, NULL),
(754, 313, 22, '4', '300', '350', '1400', NULL, NULL),
(755, 313, 23, '4', '580', '620', '2480', NULL, NULL),
(756, 314, 268, '20', '20', '25', '500', NULL, NULL),
(757, 315, 71, '2', '93', '115', '230', NULL, NULL),
(758, 315, 217, '1', '300', '400', '400', NULL, NULL),
(759, 315, 140, '1', '100', '130', '130', NULL, NULL),
(760, 316, 285, '1', '164', '190', '190', NULL, NULL),
(761, 316, 292, '1', '82', '130', '130', NULL, NULL),
(762, 317, 280, '6', '640', '640', '3840', NULL, NULL),
(763, 317, 272, '12', '220', '220', '2640', NULL, NULL),
(764, 318, 45, '1', '285', '340', '340', NULL, NULL),
(765, 318, 91, '1', '260', '280', '280', NULL, NULL),
(766, 318, 90, '1', '500', '550', '550', NULL, NULL),
(767, 318, 216, '1', '1200', '1680', '1680', NULL, NULL),
(768, 319, 268, '40', '20', '22', '880', NULL, NULL),
(769, 320, 87, '1', '542', '590', '590', NULL, NULL),
(770, 321, 147, '12', '255', '160', '1920', NULL, NULL),
(771, 321, 148, '12', '133', '139', '1668', NULL, NULL),
(772, 322, 132, '7', '370', '380', '2660', NULL, NULL),
(773, 323, 146, '3', '1242', '1260', '3780', NULL, NULL),
(774, 323, 29, '10', '155', '210', '2100', NULL, NULL),
(775, 323, 42, '40', '143', '162.50', '6500', NULL, NULL),
(776, 324, 202, '1', '224', '240', '240', NULL, NULL),
(777, 324, 130, '1', '370', '400', '400', NULL, NULL),
(778, 324, 215, '1', '190', '200', '200', NULL, NULL),
(779, 324, 257, '1', '78', '90', '90', NULL, NULL),
(780, 324, 254, '1', '130', '160', '160', NULL, NULL),
(781, 324, 159, '1', '45', '80', '80', NULL, NULL),
(782, 325, 130, '2', '370', '400', '800', NULL, NULL),
(783, 325, 90, '3', '500', '520', '1560', NULL, NULL),
(784, 326, 131, '3', '127', '130', '390', NULL, NULL),
(785, 326, 218, '1', '140', '200', '200', NULL, NULL),
(786, 326, 217, '1', '300', '390', '390', NULL, NULL),
(787, 327, 130, '1', '370', '400', '400', NULL, NULL),
(788, 327, 131, '2', '127', '130', '260', NULL, NULL),
(789, 328, 217, '1', '246', '400', '400', NULL, NULL),
(790, 329, 260, '2', '65', '80', '160', NULL, NULL),
(791, 329, 259, '1', '130', '160', '160', NULL, NULL),
(792, 329, 261, '1', '235', '250', '250', NULL, NULL),
(793, 330, 272, '2', '220', '300', '600', NULL, NULL),
(794, 330, 206, '1', '1565', '1650', '1650', NULL, NULL),
(795, 330, 148, '1', '133', '200', '200', NULL, NULL),
(796, 330, 218, '1', '140', '180', '180', NULL, NULL),
(797, 330, 216, '1', '1200', '1600', '1600', NULL, NULL),
(798, 330, 284, '2', '312', '400', '800', NULL, NULL),
(799, 331, 217, '1', '246', '380', '380', NULL, NULL),
(800, 331, 218, '1', '140', '180', '180', NULL, NULL),
(801, 331, 43, '1', '287', '320', '320', NULL, NULL),
(802, 331, 42, '1', '149', '170', '170', NULL, NULL),
(803, 331, 268, '4', '20', '25', '100', NULL, NULL),
(804, 332, 284, '1', '312', '400', '400', NULL, NULL),
(805, 332, 217, '1', '246', '400', '400', NULL, NULL),
(806, 332, 268, '5', '20', '25', '125', NULL, NULL),
(807, 332, 29, '1', '155', '250', '250', NULL, NULL),
(808, 332, 30, '1', '288', '400', '400', NULL, NULL),
(809, 332, 173, '1', '154', '250', '250', NULL, NULL),
(810, 332, 27, '1', '295', '400', '400', NULL, NULL),
(811, 333, 274, '1', '281', '300', '300', NULL, NULL),
(812, 333, 131, '1', '127', '130', '130', NULL, NULL),
(813, 334, 87, '2', '542', '575', '1150', NULL, NULL),
(814, 334, 90, '2', '480', '550', '1100', NULL, NULL),
(815, 335, 157, '6', '388', '400', '2400', NULL, NULL),
(816, 335, 158, '24', '83', '90', '2160', NULL, NULL),
(817, 335, 86, '10', '264', '272', '2720', NULL, NULL),
(818, 335, 87, '10', '542', '575', '5750', NULL, NULL),
(819, 335, 131, '20', '127', '132', '2640', NULL, NULL),
(820, 335, 84, '10', '85', '90', '900', NULL, NULL),
(821, 335, 91, '10', '260', '274', '2740', NULL, NULL),
(822, 335, 90, '10', '480', '510', '5100', NULL, NULL),
(823, 336, 319, '1', '268', '600', '600', NULL, NULL),
(824, 337, 131, '10', '127', '132', '1320', NULL, NULL),
(825, 337, 188, '15', '90', '115', '1725', NULL, NULL),
(826, 337, 215, '5', '190', '200', '1000', NULL, NULL),
(827, 337, 206, '2', '1565', '1650', '3300', NULL, NULL),
(828, 337, 205, '5', '370', '390', '1950', NULL, NULL),
(829, 337, 105, '10', '81', '86', '860', NULL, NULL),
(830, 338, 272, '25', '220', '280', '7000', NULL, NULL),
(831, 338, 216, '3', '1200', '1650', '4950', NULL, NULL),
(832, 339, 45, '2', '285', '340', '680', NULL, NULL),
(833, 339, 211, '3', '550', '550', '1650', NULL, NULL),
(834, 339, 196, '1', '145', '200', '200', NULL, NULL),
(835, 339, 81, '3', '154', '200', '600', NULL, NULL),
(836, 339, 87, '5', '542', '590', '2950', NULL, NULL),
(837, 339, 157, '1', '388', '350', '350', NULL, NULL),
(838, 339, 268, '50', '21', '32', '1600', NULL, NULL),
(839, 339, 272, '40', '220', '300', '12000', NULL, NULL),
(840, 340, 175, '15', '110', '115', '1725', NULL, NULL),
(841, 340, 42, '20', '149', '159', '3180', NULL, NULL),
(842, 341, 90, '4', '480', '530', '2120', NULL, NULL),
(843, 341, 218, '3', '140', '190', '570', NULL, NULL),
(844, 341, 217, '4', '246', '400', '1600', NULL, NULL),
(845, 341, 215, '2', '190', '200', '400', NULL, NULL),
(846, 341, 130, '4', '370', '400', '1600', NULL, NULL),
(847, 341, 131, '7', '127', '130', '910', NULL, NULL),
(848, 341, 285, '6', '148', '190', '1140', NULL, NULL),
(849, 341, 284, '4', '280', '400', '1600', NULL, NULL),
(850, 341, 91, '2', '260', '270', '540', NULL, NULL),
(851, 342, 323, '1', '120', '150', '150', NULL, NULL),
(852, 343, 194, '7', '100', '142', '994', NULL, NULL),
(853, 343, 90, '10', '480', '530', '5300', NULL, NULL),
(854, 343, 13, '2', '473', '600', '1200', NULL, NULL),
(855, 343, 288, '4', '72', '80', '320', NULL, NULL),
(856, 343, 11, '3', '101', '150', '450', NULL, NULL),
(857, 343, 285, '10', '148', '170', '1700', NULL, NULL),
(858, 343, 284, '10', '280', '350', '3500', NULL, NULL),
(859, 344, 124, '20', '73', '84', '1680', NULL, NULL),
(860, 345, 45, '2', '285', '300', '600', NULL, NULL),
(861, 345, 163, '4', '110', '112', '448', NULL, NULL),
(862, 345, 224, '2', '211', '240', '480', NULL, NULL),
(863, 345, 160, '1', '300', '320', '320', NULL, NULL),
(864, 346, 159, '1', '45', '80', '80', NULL, NULL),
(865, 346, 158, '2', '83', '120', '240', NULL, NULL),
(866, 346, 319, '1', '268', '430', '430', NULL, NULL),
(867, 346, 141, '1', '200', '280', '280', NULL, NULL),
(868, 347, 24, '1', '140', '180', '180', NULL, NULL),
(869, 347, 21, '1', '160', '200', '200', NULL, NULL),
(870, 348, 129, '1', '1578', '1650', '1650', NULL, NULL),
(871, 348, 284, '2', '280', '360', '720', NULL, NULL),
(872, 349, 42, '1', '149', '210', '210', NULL, NULL),
(873, 350, 81, '2', '154', '215', '430', NULL, NULL),
(874, 350, 79, '3', '88', '160', '480', NULL, NULL),
(875, 350, 190, '3', '120', '240', '720', NULL, NULL),
(876, 350, 262, '2', '50', '100', '200', NULL, NULL),
(877, 350, 93, '1', '112', '130', '130', NULL, NULL),
(878, 350, 130, '1', '370', '400', '400', NULL, NULL),
(879, 350, 140, '2', '100', '125', '250', NULL, NULL),
(880, 350, 121, '1', '120', '130', '130', NULL, NULL),
(881, 351, 259, '50', '130', '135', '6750', NULL, NULL),
(882, 351, 261, '50', '235', '245', '12250', NULL, NULL),
(883, 351, 242, '100', '63', '63', '6300', NULL, NULL),
(884, 351, 197, '100', '38', '40', '4000', NULL, NULL),
(885, 351, 262, '50', '50', '60', '3000', NULL, NULL),
(886, 351, 258, '50', '90', '93', '4650', NULL, NULL),
(887, 351, 230, '200', '88', '90', '18000', NULL, NULL),
(888, 351, 221, '100', '100', '105', '10500', NULL, NULL),
(889, 351, 212, '50', '90', '95', '4750', NULL, NULL),
(890, 351, 10, '50', '156', '156', '7800', NULL, NULL),
(891, 351, 9, '25', '301', '304', '7600', NULL, NULL),
(892, 351, 40, '20', '132', '134', '2680', NULL, NULL),
(893, 351, 253, '48', '220', '222', '10656', NULL, NULL),
(894, 351, 251, '30', '76', '80', '2400', NULL, NULL),
(895, 351, 237, '70', '148', '150', '10500', NULL, NULL),
(896, 351, 234, '10', '224', '225', '2250', NULL, NULL),
(897, 351, 211, '20', '460', '460', '9200', NULL, NULL),
(898, 351, 31, '10', '1066', '1070', '10700', NULL, NULL),
(899, 351, 30, '20', '288', '290', '5800', NULL, NULL),
(900, 351, 29, '40', '155', '157', '6280', NULL, NULL),
(901, 351, 28, '10', '1066', '1070', '10700', NULL, NULL),
(902, 351, 27, '20', '295', '300', '6000', NULL, NULL),
(903, 351, 173, '40', '154', '155', '6200', NULL, NULL),
(904, 351, 319, '10', '268', '269', '2690', NULL, NULL),
(905, 351, 292, '10', '74', '80', '800', NULL, NULL),
(906, 351, 23, '6', '580', '582', '3492', NULL, NULL),
(907, 351, 22, '12', '300', '302', '3624', NULL, NULL),
(908, 351, 21, '12', '160', '162', '1944', NULL, NULL),
(909, 351, 24, '10', '140', '142', '1420', NULL, NULL),
(910, 351, 146, '5', '1242', '1245', '6225', NULL, NULL),
(911, 351, 147, '10', '255', '258', '2580', NULL, NULL),
(912, 351, 148, '10', '133', '134', '1340', NULL, NULL),
(913, 352, 223, '3', '1012', '1030', '3090', NULL, NULL),
(914, 352, 204, '10', '220', '225', '2250', NULL, NULL),
(915, 352, 216, '10', '1200', '1230', '12300', NULL, NULL),
(916, 352, 217, '20', '246', '250', '5000', NULL, NULL),
(917, 352, 218, '20', '140', '145', '2900', NULL, NULL),
(918, 352, 129, '10', '1578', '1600', '16000', NULL, NULL),
(919, 352, 130, '24', '370', '375', '9000', NULL, NULL),
(920, 352, 215, '24', '190', '195', '4680', NULL, NULL),
(921, 352, 45, '10', '285', '290', '2900', NULL, NULL),
(922, 352, 44, '24', '70', '75', '1800', NULL, NULL),
(923, 352, 93, '24', '112', '118', '2832', NULL, NULL),
(924, 352, 108, '10', '362', '364', '3640', NULL, NULL),
(925, 352, 109, '24', '52', '53', '1272', NULL, NULL),
(926, 352, 175, '24', '110', '111', '2664', NULL, NULL),
(927, 352, 142, '6', '455', '457', '2742', NULL, NULL),
(928, 352, 140, '24', '100', '101', '2424', NULL, NULL),
(929, 352, 143, '24', '54', '55', '1320', NULL, NULL),
(930, 352, 13, '10', '473', '474', '4740', NULL, NULL),
(931, 352, 11, '24', '101', '102', '2448', NULL, NULL),
(932, 352, 288, '20', '72', '145', '2900', NULL, NULL),
(933, 352, 160, '6', '300', '301', '1806', NULL, NULL),
(934, 352, 158, '24', '83', '84', '2016', NULL, NULL),
(935, 352, 159, '4', '45', '46', '184', NULL, NULL),
(936, 352, 61, '24', '560', '561', '13464', NULL, NULL),
(937, 352, 62, '24', '128', '129', '3096', NULL, NULL),
(938, 352, 63, '24', '80', '80', '1920', NULL, NULL),
(939, 352, 97, '6', '115', '116', '696', NULL, NULL),
(940, 352, 58, '12', '365', '367', '4404', NULL, NULL),
(941, 352, 59, '12', '95', '96', '1152', NULL, NULL),
(942, 352, 60, '14', '51', '52', '728', NULL, NULL),
(943, 352, 47, '6', '290', '290', '1740', NULL, NULL),
(944, 352, 46, '24', '76', '77', '1848', NULL, NULL),
(945, 352, 267, '24', '490', '491', '11784', NULL, NULL),
(946, 352, 52, '24', '195', '196', '4704', NULL, NULL),
(947, 352, 180, '12', '284', '285', '3420', NULL, NULL),
(948, 352, 181, '12', '148', '150', '1800', NULL, NULL),
(949, 352, 107, '12', '508', '509', '6108', NULL, NULL),
(950, 352, 110, '24', '133', '134', '3216', NULL, NULL),
(951, 352, 124, '12', '73', '74', '888', NULL, NULL),
(952, 352, 127, '12', '156', '157', '1884', NULL, NULL),
(953, 352, 125, '10', '300', '302', '3020', NULL, NULL),
(954, 352, 66, '20', '106', '107', '2140', NULL, NULL);
INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_quantity`, `buying_price`, `product_price`, `sub_total`, `created_at`, `updated_at`) VALUES
(955, 352, 65, '20', '44', '46', '920', NULL, NULL),
(956, 352, 64, '12', '30', '32', '384', NULL, NULL),
(957, 352, 51, '12', '407', '408', '4896', NULL, NULL),
(958, 352, 49, '24', '110', '111', '2664', NULL, NULL),
(959, 352, 219, '5', '300', '302', '1510', NULL, NULL),
(960, 352, 25, '12', '90', '91', '1092', NULL, NULL),
(961, 352, 96, '12', '379', '380', '4560', NULL, NULL),
(962, 352, 95, '12', '207', '208', '2496', NULL, NULL),
(963, 352, 207, '6', '528', '529', '3174', NULL, NULL),
(964, 352, 208, '6', '122', '123', '738', NULL, NULL),
(965, 352, 201, '5', '1012', '1050', '5250', NULL, NULL),
(966, 352, 202, '5', '224', '225', '1125', NULL, NULL),
(967, 352, 203, '5', '123', '124', '620', NULL, NULL),
(968, 352, 188, '30', '90', '91', '2730', NULL, NULL),
(969, 352, 88, '100', '25', '26', '2600', NULL, NULL),
(970, 352, 119, '12', '365', '670', '8040', NULL, NULL),
(971, 352, 118, '24', '49', '50', '1200', NULL, NULL),
(972, 352, 269, '10', '70', '71', '710', NULL, NULL),
(973, 352, 132, '10', '374', '375', '3750', NULL, NULL),
(974, 352, 106, '10', '225', '226', '2260', NULL, NULL),
(975, 352, 105, '20', '81', '82', '1640', NULL, NULL),
(976, 352, 120, '30', '440', '450', '13500', NULL, NULL),
(977, 352, 122, '40', '230', '240', '9600', NULL, NULL),
(978, 352, 239, '10', '562', '562', '5620', NULL, NULL),
(979, 352, 238, '20', '291', '292', '5840', NULL, NULL),
(980, 352, 43, '30', '287', '385', '11550', NULL, NULL),
(981, 352, 42, '40', '149', '151', '6040', NULL, NULL),
(982, 352, 284, '40', '280', '285', '11400', NULL, NULL),
(983, 352, 285, '30', '148', '150', '4500', NULL, NULL),
(984, 352, 56, '12', '97', '94', '1128', NULL, NULL),
(985, 352, 318, '6', '1422', '1430', '8580', NULL, NULL),
(986, 352, 300, '12', '297', '299', '3588', NULL, NULL),
(987, 352, 298, '12', '157', '158', '1896', NULL, NULL),
(988, 352, 293, '12', '128', '130', '1560', NULL, NULL),
(989, 352, 294, '12', '68', '70', '840', NULL, NULL),
(990, 352, 295, '12', '38', '40', '480', NULL, NULL),
(991, 352, 254, '20', '130', '130', '2600', NULL, NULL),
(992, 352, 257, '30', '78', '79', '2370', NULL, NULL),
(993, 352, 220, '12', '191', '195', '2340', NULL, NULL),
(994, 352, 70, '12', '116', '118', '1416', NULL, NULL),
(995, 352, 55, '5', '375', '378', '1890', NULL, NULL),
(996, 352, 54, '10', '83', '85', '850', NULL, NULL),
(997, 352, 163, '5', '110', '115', '575', NULL, NULL),
(998, 352, 162, '124', '35', '36', '4464', NULL, NULL),
(999, 352, 102, '5', '161', '162', '810', NULL, NULL),
(1000, 352, 248, '3', '175', '175', '525', NULL, NULL),
(1001, 352, 249, '24', '48', '50', '1200', NULL, NULL),
(1002, 352, 264, '12', '47', '50', '600', NULL, NULL),
(1003, 352, 325, '6', '180', '185', '1110', NULL, NULL),
(1004, 352, 226, '12', '35', '37', '444', NULL, NULL),
(1005, 352, 225, '12', '60', '61', '732', NULL, NULL),
(1006, 352, 81, '12', '154', '155', '1860', NULL, NULL),
(1007, 352, 32, '20', '85', '87', '1740', NULL, NULL),
(1008, 352, 192, '100', '100', '105', '10500', NULL, NULL),
(1009, 352, 100, '20', '86', '86', '1720', NULL, NULL),
(1010, 352, 252, '1100', '55', '57', '62700', NULL, NULL),
(1011, 352, 196, '10', '145', '146', '1460', NULL, NULL),
(1012, 352, 195, '10', '75', '78', '780', NULL, NULL),
(1013, 353, 24, '6', '140', '160', '960', NULL, NULL),
(1014, 354, 177, '2', '123', '140', '280', NULL, NULL),
(1015, 354, 161, '2', '75', '80', '160', NULL, NULL),
(1016, 354, 100, '1', '86', '120', '120', NULL, NULL),
(1017, 354, 87, '1', '542', '600', '600', NULL, NULL),
(1018, 354, 86, '1', '264', '300', '300', NULL, NULL),
(1019, 354, 43, '1', '287', '320', '320', NULL, NULL),
(1020, 354, 42, '1', '149', '170', '170', NULL, NULL),
(1021, 355, 122, '1', '260', '290', '290', NULL, NULL),
(1022, 355, 129, '1', '1578', '1660', '1660', NULL, NULL),
(1023, 356, 86, '1', '264', '300', '300', NULL, NULL),
(1024, 357, 174, '5', '55', '66', '330', NULL, NULL),
(1025, 357, 170, '5', '60', '66', '330', NULL, NULL),
(1026, 358, 157, '2', '388', '450', '900', NULL, NULL),
(1027, 358, 129, '3', '1578', '1650', '4950', NULL, NULL),
(1028, 358, 319, '1', '268', '450', '450', NULL, NULL),
(1029, 358, 205, '4', '370', '400', '1600', NULL, NULL),
(1030, 359, 87, '15', '542', '575', '8625', NULL, NULL),
(1031, 359, 86, '15', '264', '272', '4080', NULL, NULL),
(1032, 360, 120, '1', '490', '540', '540', NULL, NULL),
(1033, 360, 121, '1', '135', '160', '160', NULL, NULL),
(1034, 360, 254, '1', '130', '150', '150', NULL, NULL),
(1035, 360, 49, '1', '110', '130', '130', NULL, NULL),
(1036, 360, 87, '1', '542', '600', '600', NULL, NULL),
(1037, 361, 239, '2', '562', '625', '1250', NULL, NULL),
(1038, 361, 146, '1', '1242', '1400', '1400', NULL, NULL),
(1039, 361, 142, '1', '455', '650', '650', NULL, NULL),
(1040, 362, 78, '1', '242', '390', '390', NULL, NULL),
(1041, 362, 77, '1', '66', '100', '100', NULL, NULL),
(1042, 362, 120, '1', '490', '600', '600', NULL, NULL),
(1043, 362, 122, '1', '260', '300', '300', NULL, NULL),
(1044, 363, 120, '2', '490', '645', '1290', NULL, NULL),
(1045, 363, 23, '2', '580', '900', '1800', NULL, NULL),
(1046, 363, 246, '6', '35', '69', '414', NULL, NULL),
(1047, 364, 287, '15', '99', '120', '1800', NULL, NULL),
(1048, 364, 261, '1', '235', '250', '250', NULL, NULL),
(1049, 364, 286, '20', '131', '150', '3000', NULL, NULL),
(1050, 364, 227, '10', '120', '180', '1800', NULL, NULL),
(1051, 365, 238, '1', '291', '330', '330', NULL, NULL),
(1052, 366, 69, '1', '511', '590', '590', NULL, NULL),
(1053, 366, 92, '1', '218', '260', '260', NULL, NULL),
(1054, 366, 93, '1', '112', '130', '130', NULL, NULL),
(1055, 366, 106, '1', '225', '270', '270', NULL, NULL),
(1056, 367, 238, '2', '291', '340', '680', NULL, NULL),
(1057, 367, 205, '2', '370', '390', '780', NULL, NULL),
(1058, 367, 188, '2', '90', '120', '240', NULL, NULL),
(1059, 368, 87, '2', '542', '550', '1100', NULL, NULL),
(1060, 368, 223, '1', '1012', '1070', '1070', NULL, NULL),
(1061, 368, 204, '1', '220', '230', '230', NULL, NULL),
(1062, 369, 87, '3', '542', '600', '1800', NULL, NULL),
(1063, 369, 254, '1', '130', '140', '140', NULL, NULL),
(1064, 369, 239, '1', '562', '600', '600', NULL, NULL),
(1065, 369, 11, '3', '101', '150', '450', NULL, NULL),
(1066, 369, 171, '12', '15', '20', '240', NULL, NULL),
(1067, 370, 135, '2', '186', '190', '380', NULL, NULL),
(1068, 370, 87, '2', '542', '590', '1180', NULL, NULL),
(1069, 370, 264, '1', '47', '60', '60', NULL, NULL),
(1070, 371, 84, '2', '85', '100', '200', NULL, NULL),
(1071, 371, 171, '5', '15', '20', '100', NULL, NULL),
(1072, 372, 22, '1', '300', '350', '350', NULL, NULL),
(1073, 372, 21, '1', '160', '250', '250', NULL, NULL),
(1074, 372, 121, '1', '135', '170', '170', NULL, NULL),
(1075, 372, 122, '2', '260', '270', '540', NULL, NULL),
(1076, 372, 239, '1', '562', '600', '600', NULL, NULL),
(1077, 372, 267, '1', '490', '490', '490', NULL, NULL),
(1078, 372, 52, '1', '180', '200', '200', NULL, NULL),
(1079, 372, 171, '2', '15', '20', '40', NULL, NULL),
(1080, 372, 119, '1', '365', '430', '430', NULL, NULL),
(1081, 372, 106, '1', '225', '290', '290', NULL, NULL),
(1082, 372, 60, '1', '51', '70', '70', NULL, NULL),
(1083, 372, 92, '1', '218', '270', '270', NULL, NULL),
(1084, 372, 87, '2', '542', '1200', '2400', NULL, NULL),
(1085, 373, 142, '1', '455', '580', '580', NULL, NULL),
(1086, 373, 87, '2', '542', '600', '1200', NULL, NULL),
(1087, 373, 121, '1', '135', '160', '160', NULL, NULL),
(1088, 373, 120, '2', '490', '550', '1100', NULL, NULL),
(1089, 373, 88, '2', '25', '30', '60', NULL, NULL),
(1090, 373, 135, '1', '186', '200', '200', NULL, NULL),
(1091, 374, 321, '7', '76', '90', '630', NULL, NULL),
(1092, 374, 239, '2', '562', '610', '1220', NULL, NULL),
(1093, 374, 202, '1', '224', '240', '240', NULL, NULL),
(1094, 374, 87, '1', '542', '600', '600', NULL, NULL),
(1095, 374, 246, '4', '35', '40', '160', NULL, NULL),
(1096, 375, 88, '12', '25', '29', '348', NULL, NULL),
(1097, 376, 9, '2', '301', '350', '700', NULL, NULL),
(1098, 377, 140, '1', '100', '130', '130', NULL, NULL),
(1099, 377, 238, '1', '291', '340', '340', NULL, NULL),
(1100, 377, 92, '1', '218', '230', '230', NULL, NULL),
(1101, 377, 254, '1', '130', '150', '150', NULL, NULL),
(1102, 378, 157, '6', '388', '415', '2490', NULL, NULL),
(1103, 379, 205, '1', '370', '400', '400', NULL, NULL),
(1104, 379, 238, '1', '291', '340', '340', NULL, NULL),
(1105, 379, 42, '1', '149', '160', '160', NULL, NULL),
(1106, 380, 43, '2', '287', '300', '600', NULL, NULL),
(1107, 380, 171, '4', '15', '20', '80', NULL, NULL),
(1108, 380, 73, '1', '93', '150', '150', NULL, NULL),
(1109, 381, 240, '1', '220', '300', '300', NULL, NULL),
(1110, 382, 239, '3', '562', '630', '1890', NULL, NULL),
(1111, 382, 238, '1', '291', '320', '320', NULL, NULL),
(1112, 382, 322, '1', '230', '300', '300', NULL, NULL),
(1113, 383, 239, '1', '562', '650', '650', NULL, NULL),
(1114, 383, 238, '1', '291', '350', '350', NULL, NULL),
(1115, 383, 205, '1', '370', '400', '400', NULL, NULL),
(1116, 383, 215, '1', '190', '200', '200', NULL, NULL),
(1117, 383, 246, '3', '35', '70', '210', NULL, NULL),
(1118, 384, 121, '2', '135', '160', '320', NULL, NULL),
(1119, 384, 329, '1', '280', '350', '350', NULL, NULL),
(1120, 384, 93, '1', '112', '130', '130', NULL, NULL),
(1121, 384, 205, '1', '370', '400', '400', NULL, NULL),
(1122, 385, 121, '1', '135', '150', '150', NULL, NULL),
(1123, 385, 329, '1', '280', '350', '350', NULL, NULL),
(1124, 385, 86, '1', '264', '300', '300', NULL, NULL),
(1125, 385, 87, '1', '542', '600', '600', NULL, NULL),
(1126, 385, 120, '1', '490', '530', '530', NULL, NULL),
(1127, 386, 120, '1', '490', '510', '510', NULL, NULL),
(1128, 386, 135, '3', '186', '190', '570', NULL, NULL),
(1129, 386, 122, '1', '260', '270', '270', NULL, NULL),
(1130, 387, 238, '1', '291', '300', '300', NULL, NULL),
(1131, 388, 10, '4', '156', '230', '920', NULL, NULL),
(1132, 388, 120, '1', '490', '580', '580', NULL, NULL),
(1133, 388, 261, '3', '235', '270', '810', NULL, NULL),
(1134, 389, 190, '1', '132', '240', '240', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pos`
--

CREATE TABLE `pos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `buying_price` varchar(255) DEFAULT NULL,
  `product_price` varchar(255) DEFAULT NULL,
  `sub_total` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `root` varchar(255) DEFAULT NULL,
  `buying_price` varchar(255) DEFAULT NULL,
  `selling_price` varchar(255) NOT NULL,
  `buying_date` varchar(255) DEFAULT NULL,
  `expired_date` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_quantity` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `supplier_id`, `product_name`, `product_code`, `root`, `buying_price`, `selling_price`, `buying_date`, `expired_date`, `image`, `product_quantity`, `created_at`, `updated_at`) VALUES
(9, 7, 1, 'Heritage 10 G 2kg', '10000', 'AAMA GREEN CARE', '301', '382', '2022-06-21', '2024-01-24', NULL, '200', '2022-06-21 16:37:02', '2023-01-02 20:31:44'),
(10, 7, 1, 'Heritage 10 G 1kg', '10001', 'AAMA GREEN CARE', '156', '220', '2022-06-21', '2024-02-24', NULL, '600', '2022-06-21 16:39:44', '2023-01-02 20:31:27'),
(11, 7, 1, 'Tata 505 EC 100 ml', '10002', 'AAMA GREEN CARE', '111', '198', '2022-06-21', '2024-05-24', NULL, '100', '2022-06-21 17:19:40', '2022-12-22 15:55:28'),
(13, 7, 1, 'Tata 505 EC 500 ml', '10003', 'AAMA GREEN CARE', '473', '825', '2022-06-21', '2024-02-29', NULL, '30', '2022-06-21 17:32:16', '2022-10-02 15:33:11'),
(14, 7, 1, 'Amafuran 5G  1KG', '10004', 'AAMA GREEN CARE', '196', '292', '2022-06-21', '2024-04-30', NULL, '200', '2022-06-21 17:37:00', '2023-01-18 20:04:14'),
(15, 7, 1, 'Jhilik 18 WP 100gm', '10005', 'AAMA GREEN CARE', '62', '130', '2022-06-21', '2024-03-31', NULL, '00', '2022-06-21 17:40:00', '2023-01-18 19:31:06'),
(16, 7, 1, 'Jhilik 18 WP 50gm', '10006', 'AAMA GREEN CARE', '33', '68', '2022-06-21', '2024-03-31', NULL, '240', '2022-06-21 17:43:05', '2023-01-18 19:31:36'),
(17, 7, 1, 'Amaraj 10 WP 25gm', '10007', 'AAMA GREEN CARE', '27', '65', '2022-06-21', '2024-01-31', NULL, '70', '2022-06-21 17:45:03', '2022-08-21 22:30:52'),
(18, 7, 1, 'Benjoy 10gm', '10008', 'Swazis', '30', '60', '2022-06-21', '2023-10-21', NULL, '1', '2022-06-21 18:08:57', '2022-12-21 19:32:13'),
(20, 7, 1, 'Dong 50mg', '10009', 'Swazis', '120', '240', '2022-06-21', '2023-10-21', NULL, '20', '2022-06-21 18:11:37', '2022-06-21 18:11:37'),
(21, 7, 1, 'Kaicin 80Wg 30gm', '10010', 'Swazis', '170', '260', '2022-06-22', '2023-12-22', NULL, '43', '2022-06-22 14:47:18', '2023-01-08 01:11:12'),
(22, 7, 1, 'Kaicin 80WG 60gm', '10011', 'Swazis', '320', '600', '2022-06-22', '2023-10-22', NULL, '158', '2022-06-22 14:49:28', '2023-01-08 01:10:44'),
(23, 7, 1, 'Kaicin 80Wg 120gm', '10012', 'Swazis', '620', '940', '2022-07-15', '2023-11-22', NULL, '14', '2022-06-22 14:51:28', '2023-01-08 01:10:17'),
(24, 7, 1, 'Carzim Gold 50WG 30gm', '10013', 'Swazis', '140', '280', '2022-06-22', '2023-10-22', NULL, '41', '2022-06-22 14:53:26', '2022-06-22 14:53:26'),
(25, 7, 1, 'Joar 100ml', '10014', 'Swazis', '80', '110', '2022-06-22', '2023-12-22', NULL, '80', '2022-06-22 14:55:59', '2023-01-08 01:14:02'),
(27, 7, 1, 'Proloy 100ml', '10016', 'Bebilon', '295', '600', '2022-06-22', '2023-04-22', NULL, '131', '2022-06-22 23:42:09', '2022-08-05 23:28:29'),
(28, 7, 1, 'Proloy 400ml', '10017', 'Bebilon', '1066', '1800', '2022-06-22', '2023-06-22', NULL, '25', '2022-06-22 23:48:30', '2022-06-22 23:48:30'),
(29, 7, 1, 'Troy 50ml', '10018', 'Bebilon', '155', '350', '2022-06-22', '2023-12-30', NULL, '227', '2022-06-22 23:50:14', '2023-01-02 20:30:51'),
(30, 7, 1, 'Troy 100ml', '10019', 'Bebilon', '288', '550', '2022-06-22', '2023-02-01', NULL, '141', '2022-06-22 23:51:22', '2022-08-05 23:26:27'),
(31, 7, 1, 'Troy 400ml', '10020', 'Bebilon', '1066', '2000', '2022-06-22', '2023-04-01', NULL, '24', '2022-06-22 23:53:09', '2022-06-22 23:53:09'),
(32, 7, 1, 'Fosoliboron 500gm', '10021', 'Bebilon', '85', '165', '2022-06-22', '2024-01-01', NULL, '300', '2022-06-22 23:54:49', '2023-02-13 01:04:37'),
(33, 7, 1, 'Fosoliboron 100gm spraw', '10022', 'Bebilon', '35', '100', '2022-06-22', '2023-03-01', NULL, '00', '2022-06-22 23:56:06', '2023-02-13 01:04:57'),
(34, 7, 1, 'Sibafuran 5G 1kg', '10023', 'Bebilon', '137', '300', '2022-06-22', '2023-09-01', NULL, '00', '2022-06-22 23:58:07', '2023-01-02 20:29:20'),
(35, 7, 1, 'Civovit 80W 1kg', '10024', 'Bebilon', '145', '300', '2022-06-22', '2023-08-01', NULL, '2', '2022-06-23 00:00:12', '2022-10-05 21:52:25'),
(36, 7, 1, 'Cross out 50gm', '10025', 'Bebilon', '30', '75', '2022-06-22', '2023-08-01', NULL, '2', '2022-06-23 00:01:40', '2022-07-04 22:33:38'),
(37, 7, 1, 'Cross out 100gm', '10026', 'Bebilon', '55', '110', '2022-06-22', '2023-08-01', NULL, '00', '2022-06-23 00:04:53', '2023-01-02 20:27:48'),
(38, 7, 1, 'Fixx two 80WG 10gm', '10027', 'Bebilon', '90', '200', '2022-06-22', '2023-02-01', NULL, '17', '2022-06-23 00:05:57', '2022-06-23 00:05:57'),
(39, 7, 1, 'Lorent 10gm', '10028', 'Bebilon', '25', '30', '2022-06-22', '2023-03-01', NULL, '20', '2022-06-23 00:06:37', '2022-12-01 22:33:48'),
(40, 7, 1, 'Fana 5G 1kg', '10029', 'Intefa', '132', '350', '2022-06-22', '2023-05-01', NULL, '78', '2022-06-23 00:09:33', '2022-07-03 16:04:19'),
(41, 7, 1, 'Fana 5G 2kg', '10030', 'Intefa', '253', '550', '2022-06-22', '2023-05-01', NULL, '15', '2022-06-23 00:10:33', '2022-06-23 00:10:33'),
(42, 7, 1, 'Batir 50gm', '10031', 'Intefa', '149', '210', '2022-06-22', '2023-12-01', NULL, '165', '2022-06-23 00:11:24', '2022-09-04 19:26:27'),
(43, 7, 1, 'Batir 100gm', '10032', 'Intefa', '287', '385', '2022-06-22', '2023-12-01', NULL, '142', '2022-06-23 00:12:37', '2022-09-04 19:25:57'),
(44, 7, 1, 'Getjol 100ml', '10033', 'Getco', '90', '150', '2022-06-22', '2023-04-01', NULL, '146', '2022-06-23 00:14:28', '2023-01-08 00:26:14'),
(45, 7, 1, 'Getjol 400ml', '10034', 'Getco', '300', '450', '2022-06-22', '2023-04-01', NULL, '112', '2022-06-23 00:15:16', '2023-01-08 00:25:55'),
(46, 7, 1, 'G-Lemda 100ml', '10035', 'Getco', '90', '150', '2022-06-22', '2023-11-30', NULL, '112', '2022-06-23 00:17:08', '2023-02-05 16:32:20'),
(47, 7, 1, 'G-Lemda 400ml', '10036', 'Getco', '310', '400', '2022-06-22', '2023-11-30', NULL, '77', '2022-06-23 00:19:37', '2023-02-05 16:31:57'),
(48, 7, 1, 'Litosen 50ml', '10037', 'Nafco', '63', '120', '2022-06-22', '2024-09-01', NULL, '00', '2022-06-23 00:22:40', '2023-01-02 20:28:51'),
(49, 7, 1, 'Litosen 100ml', '10038', 'Nafco', '110', '250', '2022-06-22', '2024-05-01', NULL, '00', '2022-06-23 00:23:39', '2023-01-02 20:28:34'),
(51, 7, 1, 'Litosen 400ml', '10039', 'Nafco', '407', '1000', '2022-06-22', '2024-10-01', NULL, '00', '2022-06-23 00:24:22', '2023-01-02 20:28:18'),
(52, 7, 1, 'Seltima 100ml', '10040', 'Semco', '192', '305', '2022-06-22', '2023-10-01', NULL, '48', '2022-06-23 00:25:56', '2023-02-15 20:18:56'),
(53, 7, 1, 'Frastin 50gm', '10041', 'Semco', '48', '110', '2022-06-22', '2023-02-01', NULL, '12', '2022-06-23 00:27:14', '2022-07-17 23:27:47'),
(54, 7, 1, 'Frastin 100gm', '10042', 'Semco', '83', '200', '2022-06-22', '2023-02-01', NULL, '6', '2022-06-23 00:27:58', '2022-07-17 23:02:43'),
(55, 7, 1, 'Frastin 500gm', '10043', 'Semco', '375', '700', '2022-06-22', '2023-05-02', NULL, '4', '2022-06-23 00:29:23', '2022-07-17 23:02:02'),
(56, 7, 1, 'Dabol 100ml', '10044', 'Semco', '97', '200', '2022-06-22', '2023-05-01', NULL, '12', '2022-06-23 00:31:44', '2022-07-17 23:00:22'),
(57, 7, 1, 'Semcup 50 EG 100ml', '10045', 'Semco', '125', '250', '2022-06-22', '2023-09-01', NULL, '00', '2022-06-23 00:34:33', '2022-09-22 00:11:29'),
(58, 7, 1, 'Ripcot 400ml', '10046', 'Podma Oil Co.', '410', '550', '2022-06-22', '2023-09-01', NULL, '22', '2022-06-23 00:40:56', '2023-01-08 00:22:41'),
(59, 7, 1, 'Ripcot 100ml', '10047', 'Podma Oil Co.', '108', '200', '2022-06-22', '2023-11-01', NULL, '100', '2022-06-23 00:41:47', '2023-01-08 00:22:18'),
(60, 7, 1, 'Ripcot 50ml', '10048', 'Podma Oil Co.', '60', '105', '2022-06-22', '2023-10-01', NULL, '276', '2022-06-23 00:42:30', '2023-01-08 00:21:01'),
(61, 7, 1, 'Duwel 505 EC 400ml', '10049', 'Century', '560', '1100', '2022-06-22', '2023-10-01', NULL, '10', '2022-06-23 01:27:51', '2022-06-23 01:27:51'),
(62, 7, 1, 'Duwel 505 EC 100ml', '10050', 'Century', '128', '280', '2022-06-22', '2023-10-01', NULL, '194', '2022-06-23 01:38:35', '2022-06-23 01:38:35'),
(63, 7, 1, 'Duwel 505 EC 50ml', '10051', 'Century', '80', '200', '2022-06-22', '2023-10-01', NULL, '2', '2022-06-23 01:39:39', '2022-10-04 20:46:06'),
(64, 7, 1, 'Centuri Power 50ml', '10052', 'Century', '30', '100', '2022-06-22', '2023-08-01', NULL, '24', '2022-06-23 01:47:56', '2022-06-30 18:10:45'),
(65, 7, 1, 'Centuri Power  100ml', '10053', 'Century', '44', '150', '2022-06-22', '2024-01-01', NULL, '22', '2022-06-23 01:49:03', '2022-06-23 01:49:03'),
(66, 7, 1, 'Centuri Power 250ml', '10054', 'Century', '106', '250', '2022-06-22', '2024-02-01', NULL, '40', '2022-06-23 01:50:06', '2022-10-04 20:44:12'),
(67, 7, 1, 'Amfan 25gm', '10055', 'Century', '137', '400', '2022-06-22', '2023-03-01', NULL, '7', '2022-06-23 01:51:14', '2023-01-02 17:42:24'),
(69, 7, 1, 'Amfan 100gm', '10056', 'Century', '511', '1000', '2022-06-22', '2023-10-01', NULL, '4', '2022-06-23 01:52:14', '2023-01-02 17:42:00'),
(70, 7, 1, 'Tapwin 50ASP 50gm', '10057', 'Century', '116', '195', '2022-06-22', '2023-10-01', NULL, '121', '2022-06-23 01:54:38', '2022-08-17 22:19:58'),
(71, 7, 1, 'Winmax 40WG 10gm', '10058', 'Century', '93', '200', '2022-06-22', '2023-03-01', NULL, '13', '2022-06-23 01:56:02', '2022-12-01 22:30:29'),
(72, 7, 1, 'Century Cileted Zink 17gm', '10059', 'Century', '22', '80', '2022-06-22', '2023-09-01', NULL, '30', '2022-06-23 01:58:23', '2022-06-23 01:58:23'),
(73, 7, 1, 'Winzim 50WG 100gm', '10060', 'Century', '93', '200', '2022-06-22', '2023-02-01', NULL, '36', '2022-06-23 02:00:11', '2022-12-01 22:32:07'),
(74, 7, 1, 'Century Zipsam 2kg', '10061', 'Century', '66', '150', '2022-06-22', '2024-10-01', NULL, '2', '2022-06-23 02:01:58', '2022-09-22 22:18:53'),
(75, 7, 1, 'Amfan 10gm', '10062', 'Century', '62', '150', '2022-06-22', '2024-07-01', NULL, '160', '2022-06-23 02:03:03', '2022-06-23 02:03:03'),
(76, 7, 1, 'Cenben 5 SG 10gm', '10063', 'Century', '20', '60', '2022-06-22', '2023-10-01', NULL, '74', '2022-06-23 02:04:18', '2023-01-02 20:24:02'),
(77, 7, 1, 'Ciko hexa 5 EC 100ml', '10064', 'Century', '66', '150', '2022-06-22', '2023-10-01', NULL, '23', '2022-06-23 02:05:50', '2022-06-23 02:05:50'),
(78, 7, 1, 'Ciko hexa 5 EC 400ml', '10065', 'Century', '242', '600', '2022-06-22', '2023-10-01', NULL, '5', '2022-06-23 02:06:33', '2022-06-23 02:06:33'),
(79, 7, 1, 'Green Gold 500gm', '10066', 'Century', '88', '160', '2022-06-22', '2023-10-01', NULL, '57', '2022-06-23 02:07:32', '2022-08-30 16:04:03'),
(81, 7, 1, 'Century Boron 500gm', '10067', 'Century', '154', '300', '2022-06-22', '2023-09-01', NULL, '00', '2022-06-23 02:09:08', '2022-11-17 21:00:17'),
(82, 7, 1, 'Mag Pro 2kg', '10068', 'Century', '118', '250', '2022-06-22', '2023-10-01', NULL, '21', '2022-06-23 02:10:16', '2022-06-23 02:10:16'),
(83, 7, 1, 'Mag Pro 1kg', '10069', 'Century', '62', '180', '2022-06-22', '2023-10-01', NULL, '49', '2022-06-23 02:11:04', '2022-06-27 05:54:37'),
(84, 7, 1, 'Nativo 10gm', '10070', 'Bayer', '95', '120', '2022-06-23', '2023-07-01', NULL, '500', '2022-06-23 16:34:53', '2023-01-08 17:57:43'),
(86, 7, 1, 'Nativo 40gm', '10072', 'Bayer', '290', '365', '2022-06-23', '2023-07-01', NULL, '150', '2022-06-23 16:37:46', '2023-01-08 17:58:03'),
(87, 7, 1, 'Nativo 100gm', '10073', 'Bayer', '610', '795', '2022-06-23', '2023-09-01', NULL, '20', '2022-06-23 16:38:45', '2023-01-08 17:58:20'),
(88, 7, 1, 'Confidor 2gm', '10074', 'Bayer', '29', '35', '2022-06-23', '2023-09-01', NULL, '100', '2022-06-23 16:39:57', '2022-11-20 21:43:11'),
(89, 7, 1, 'Solemon 100ml', '10075', 'Bayer', '180', '240', '2022-06-23', '2023-05-01', NULL, '49', '2022-06-23 16:41:24', '2022-06-29 20:41:09'),
(90, 7, 1, 'Belt-Expert 100ml', '10076', 'Bayer', '510', '650', '2022-06-23', '2024-01-01', NULL, '1', '2022-06-23 16:43:02', '2023-01-02 20:21:10'),
(91, 7, 1, 'Belt-Expert 50ml', '10077', 'Bayer', '260', '335', '2022-06-23', '2024-01-01', NULL, '1', '2022-06-23 16:43:58', '2023-01-02 20:20:23'),
(92, 7, 1, 'Folicure 100ml', '10078', 'Bayer', '235', '310', '2022-06-23', '2024-11-01', NULL, '26', '2022-06-23 16:44:49', '2022-10-16 01:50:05'),
(93, 7, 1, 'Folicure 50ml', '10079', 'Bayer', '121', '165', '2022-06-23', '2024-12-01', NULL, '50', '2022-06-23 16:45:59', '2022-10-16 01:47:04'),
(94, 7, 1, 'Folicure 500ml', '10080', 'Bayer', '986', '1250', '2022-06-23', '2024-12-01', NULL, '21', '2022-06-23 16:47:37', '2022-11-03 18:27:44'),
(95, 7, 1, 'Complesal 250ml', '10081', 'Bayer', '207', '300', '2022-06-23', '2023-04-01', NULL, '11', '2022-06-23 16:48:47', '2022-06-27 18:11:54'),
(96, 7, 1, 'Complesal 500ml', '10082', 'Bayer', '379', '550', '2022-06-23', '2023-01-24', NULL, '00', '2022-06-23 16:49:36', '2023-02-05 16:36:13'),
(97, 7, 1, 'Decis 2.5 EC 100ml', '10083', 'Bayer', '115', '150', '2022-06-23', '2023-02-01', NULL, '00', '2022-06-23 16:50:35', '2023-02-05 16:36:00'),
(98, 7, 1, 'Luna 50ml', '10084', 'Bayer', '352', '480', '2022-06-23', '2023-04-01', NULL, '50', '2022-06-23 16:51:29', '2022-06-26 23:02:56'),
(99, 7, 1, 'Luna 100ml', '10085', 'Bayer', '645', '860', '2022-06-23', '2023-03-23', NULL, '42', '2022-06-23 16:52:31', '2023-01-02 20:18:19'),
(100, 7, 1, 'Antracall 100ml', '10086', 'Bayer', '97', '120', '2022-06-23', '2024-02-01', NULL, '80', '2022-06-23 16:53:40', '2022-12-31 18:09:04'),
(101, 7, 1, 'Antracall 1Kg', '10087', 'Bayer', '758', '910', '2022-06-23', '2023-07-01', NULL, '8', '2022-06-23 16:54:44', '2022-12-31 18:05:42'),
(102, 7, 1, 'Arocson 400ml', '10088', 'Mimprex Agrocamical Ltd', '161', '503', '2022-06-25', '2024-04-01', NULL, '2', '2022-06-25 16:24:40', '2022-07-23 16:43:02'),
(104, 7, 1, 'Kimiya 21.5 WB 100gm', '10089', 'Mimprex Agrocamical Ltd', '120', '180', '2022-06-25', '2023-11-01', NULL, '3', '2022-06-25 16:27:41', '2023-01-02 20:16:45'),
(105, 7, 1, 'Altima Plus 40WB 10gm', '10090', 'Mimprex Agrocamical Ltd', '81', '147', '2022-06-25', '2023-06-01', NULL, '122', '2022-06-25 16:31:00', '2022-06-27 05:17:58'),
(106, 7, 1, 'Altima Plus 40WB 30gm', '10091', 'Mimprex Agrocamical Ltd', '225', '400', '2022-06-25', '2023-06-01', NULL, '44', '2022-06-25 16:35:48', '2022-06-25 16:35:48'),
(107, 7, 1, 'Suret 20 EC 400ml', '10092', 'Mimprex Agrocamical Ltd', '508', '1100', '2022-06-25', '2023-03-01', NULL, '20', '2022-06-25 16:38:45', '2022-10-04 20:46:48'),
(108, 7, 1, 'Setara 550 EC 400ml', '10093', 'Mimprex Agrocamical Ltd', '362', '700', '2022-06-25', '2023-04-01', NULL, '3', '2022-06-25 16:41:53', '2023-01-02 20:16:09'),
(109, 7, 1, 'Setara 550 EC 50ml', '10094', 'Mimprex Agrocamical Ltd', '52', '108', '2022-06-25', '2023-10-01', NULL, '3', '2022-06-25 16:44:19', '2022-09-29 23:56:05'),
(110, 7, 1, 'Suret 20 EC 100ml', '10095', 'Mimprex Agrocamical Ltd', '133', '302', '2022-06-25', '2023-05-01', NULL, '22', '2022-06-25 16:46:45', '2022-07-03 16:54:32'),
(111, 7, 1, 'Manik 20 S.P 100gm', '10096', 'Mimprex Agrocamical Ltd', '150', '300', '2022-06-25', '2023-05-01', NULL, '45', '2022-06-25 16:49:15', '2022-07-02 21:21:22'),
(112, 7, 1, 'U-Turn 75gm', '10097', 'Ingenious crop since ltd', '518', '825', '2022-06-26', '2023-05-01', NULL, '6', '2022-06-27 00:05:19', '2022-06-27 00:05:39'),
(113, 7, 1, 'U-Turn 25gm', '10098', 'Ingenious crop since ltd', '189', '310', '2022-06-26', '2023-05-01', NULL, '6', '2022-06-27 00:06:26', '2022-06-27 00:06:26'),
(114, 7, 1, 'Kemojol 380 SC 100ml', '10099', 'Green Bangla agrovet ltd', '310', '522', '2022-06-26', '2024-01-01', NULL, '22', '2022-06-27 00:09:36', '2022-07-02 19:13:01'),
(115, 7, 1, 'chumbuk 400ml', '10100', 'Clean Agro', '415', '550', '2022-06-26', '2023-12-01', NULL, '00', '2022-06-27 00:11:05', '2023-01-02 20:15:17'),
(116, 7, 1, 'Danfuran 1kg', '10101', 'Marshal', '101', '205', '2022-06-26', '2023-12-01', NULL, '44', '2022-06-27 00:15:31', '2022-08-21 22:44:45'),
(117, 7, 1, 'Kaspar 10gm', '10102', 'Marshal', '18', '42', '2022-06-26', '2023-12-01', NULL, '23', '2022-06-27 00:16:55', '2022-06-27 00:16:55'),
(118, 7, 1, 'Sidor 50ml', '10103', 'Agreemax bangla ltd', '58', '107', '2022-06-26', '2023-10-01', NULL, '43', '2022-06-27 00:18:45', '2022-12-26 16:11:55'),
(119, 7, 1, 'Sidor 400ml', '10104', 'Agreemax bangla ltd', '423', '670', '2022-06-26', '2023-10-01', NULL, '5', '2022-06-27 00:20:32', '2022-12-26 16:11:28'),
(120, 7, 1, 'Payrazin 100gm', '10105', 'ACI Crop Care', '490', '675', '2022-06-26', '2024-03-01', NULL, '79', '2022-06-27 00:26:31', '2022-10-25 19:09:14'),
(121, 7, 1, 'Payrazin 25gm', '10106', 'ACI Crop Care', '145', '185', '2022-06-26', '2023-12-01', NULL, '60', '2022-06-27 00:28:23', '2022-10-23 14:45:11'),
(122, 7, 1, 'Payrazin 50gm', '10107', 'ACI Crop Care', '270', '355', '2022-06-26', '2024-03-01', NULL, '200', '2022-06-27 00:30:06', '2022-10-23 14:45:38'),
(123, 7, 1, 'Flora 1 Litter', '10108', 'ACI Crop Care', '569', '1000', '2022-06-26', '2023-10-01', NULL, '5', '2022-06-27 00:31:22', '2022-06-27 00:31:22'),
(124, 7, 1, 'Flora 100ml', '10109', 'ACI Crop Care', '86', '140', '2023-01-07', '2025-10-07', NULL, '50', '2022-06-27 00:32:36', '2023-01-07 18:40:14'),
(125, 7, 1, 'Flora 500ml', '10110', 'ACI Crop Care', '300', '525', '2022-06-26', '2023-10-01', NULL, '5', '2022-06-27 00:35:32', '2022-12-21 20:54:59'),
(126, 7, 1, 'Flora 500ml', '10111', 'ACI Crop Care', '349', '550', '2023-01-07', '2025-06-29', NULL, '20', '2022-06-27 00:36:33', '2023-01-07 18:44:31'),
(127, 7, 1, 'Flora 250ml', '10112', 'ACI Crop Care', '185', '280', '2023-01-07', '2025-02-21', NULL, '40', '2022-06-27 00:38:21', '2023-01-07 18:42:55'),
(128, 7, 1, 'Sicohexa 100ml', '10113', 'Century', '68', '150', '2022-06-26', '2023-10-01', NULL, '24', '2022-06-27 00:44:12', '2022-06-27 00:44:21'),
(129, 7, 1, 'Amistertop 500ml', '10114', 'Singenta', '1578', '1720', '2022-06-26', '2023-09-01', NULL, '00', '2022-06-27 00:47:51', '2023-01-02 19:20:38'),
(130, 7, 1, 'Amistertop 100ml', '10115', 'Singenta', '370', '400', '2022-06-26', '2023-03-01', NULL, '00', '2022-06-27 00:55:24', '2022-09-25 19:12:07'),
(131, 7, 1, 'Virtako 10gm', '10116', 'Singenta', '127', '150', '2022-06-26', '2023-04-01', NULL, '00', '2022-06-27 00:56:32', '2023-01-02 20:13:00'),
(132, 7, 1, 'Virtako 30gm', '10117', 'Singenta', '374', '430', '2022-06-26', '2023-03-01', NULL, '2', '2022-06-27 00:57:42', '2023-01-02 20:13:18'),
(133, 7, 1, 'Aktara 5gm', '10118', 'Singenta', '41', '50', '2022-06-26', '2023-01-05', NULL, '00', '2022-06-27 01:02:24', '2023-01-20 01:40:33'),
(134, 7, 1, 'Amfan 50gm', '10119', 'Century', '300', '570', '2022-06-27', '2023-10-01', NULL, '17', '2022-06-27 04:09:06', '2023-01-02 17:41:33'),
(135, 7, 1, 'Troopar 50gm', '10120', 'Auto Crop Care Ltd', '186', '238', '2022-06-27', '2023-09-01', NULL, '458', '2022-06-27 04:12:05', '2022-09-23 16:09:18'),
(136, 7, 1, 'Troopar 100gm', '10121', 'Auto Crop Care Ltd', '372', '460', '2022-06-27', '2023-10-01', NULL, '351', '2022-06-27 04:12:57', '2022-09-22 16:32:41'),
(137, 7, 1, 'Troopar 25gm', '10122', 'Auto Crop Care Ltd', '118', '125', '2022-06-27', '2023-07-30', NULL, '280', '2022-06-27 04:14:03', '2023-01-08 16:53:21'),
(138, 7, 1, 'Backtaf 50gm', '10123', 'Auto Crop Care Ltd', '85', '130', '2022-06-27', '2022-12-01', NULL, '00', '2022-06-27 04:16:11', '2022-12-01 22:29:24'),
(139, 7, 1, 'Rovral 50gm', '10124', 'Auto Crop Care Ltd', '179', '275', '2022-06-27', '2024-05-01', NULL, '66', '2022-06-27 04:17:15', '2023-01-01 15:21:38'),
(140, 7, 1, 'Naitro 100ml', '10125', 'Auto Crop Care Ltd', '100', '162', '2022-06-27', '2023-07-01', NULL, '20', '2022-06-27 04:19:11', '2022-08-21 22:23:59'),
(141, 7, 1, 'Siyena 100gm', '10126', 'Auto Crop Care Ltd', '200', '348', '2022-06-27', '2024-11-01', NULL, '14', '2022-06-27 04:20:07', '2022-08-27 01:20:02'),
(142, 7, 1, 'Naitro 500ml', '10127', 'Auto Crop Care Ltd', '539', '875', '2022-06-27', '2023-07-01', NULL, '6', '2022-06-27 04:21:53', '2022-12-05 20:20:35'),
(143, 7, 1, 'Naitro 50ml', '10128', 'Auto Crop Care Ltd', '54', '92', '2022-06-27', '2024-02-01', NULL, '44', '2022-06-27 04:22:40', '2023-01-02 20:11:27'),
(144, 7, 1, 'Kontaf 500ml', '10129', 'Auto Crop Care Ltd', '305', '488', '2022-06-27', '2023-02-01', NULL, '12', '2022-06-27 04:24:56', '2022-08-01 17:49:31'),
(145, 7, 1, 'Kontaf 100ml', '10130', 'Auto Crop Care Ltd', '67', '112', '2022-06-27', '2024-01-01', NULL, '24', '2022-06-27 04:25:50', '2022-10-13 18:24:30'),
(146, 7, 1, 'Navara 500ml', '10131', 'Auto Crop Care Ltd', '1242', '1750', '2022-06-27', '2024-02-29', NULL, '7', '2022-06-27 04:26:55', '2023-01-02 20:11:11'),
(147, 7, 1, 'Navara 100ml', '10132', 'Auto Crop Care Ltd', '255', '402', '2022-06-27', '2024-02-29', NULL, '14', '2022-06-27 04:27:45', '2023-01-02 20:10:50'),
(148, 7, 1, 'Navara 50ml', '10133', 'Auto Crop Care Ltd', '133', '207', '2022-06-27', '2024-01-01', NULL, '5', '2022-06-27 04:28:43', '2022-10-07 19:54:04'),
(149, 7, 1, 'LIbrel Jink 50gm', '10134', 'Auto Crop Care Ltd', '55', '93', '2022-06-27', '2023-03-01', NULL, '40', '2022-06-27 04:31:03', '2022-06-27 04:31:03'),
(150, 7, 1, 'LIbrel Jink 100gm', '10135', 'Auto Crop Care Ltd', '114', '175', '2022-06-27', '2023-10-01', NULL, '39', '2022-06-27 04:32:21', '2022-06-27 04:32:21'),
(151, 7, 1, 'Emitaf 25ml', '10136', 'Auto Crop Care Ltd', '58', '92', '2022-06-27', '2023-08-01', NULL, '0', '2022-06-27 04:33:26', '2022-08-25 02:06:25'),
(152, 7, 1, 'Emitaf 50ml', '10137', 'Auto Crop Care Ltd', '135', '155', '2022-06-27', '2023-08-01', NULL, '10', '2022-06-27 04:34:08', '2022-11-20 21:39:12'),
(153, 7, 1, 'Autostin 500gm', '10138', 'Auto', '489', '750', '2022-06-27', '2023-01-01', NULL, '7', '2022-06-27 04:36:45', '2022-06-27 04:36:45'),
(154, 7, 1, 'Autostin 100gm', '10139', 'Auto', '125', '195', '2022-06-27', '2023-01-01', NULL, '3', '2022-06-27 04:37:32', '2022-06-27 04:37:32'),
(155, 7, 1, 'Autostin 50gm', '10140', 'Auto', '65', '110', '2022-06-27', '2023-06-01', NULL, '5', '2022-06-27 04:38:12', '2022-06-27 04:38:12'),
(156, 7, 1, 'Actoplus 1 Litter', '10141', 'Sweeweet', '759', '1590', '2022-06-27', '2023-07-01', NULL, '5', '2022-06-27 04:39:59', '2022-10-10 15:44:41'),
(157, 7, 1, 'Actoplus 500ml', '10142', 'Sweeweet', '457', '760', '2022-06-27', '2024-12-01', NULL, '12', '2022-06-27 04:40:56', '2023-02-16 21:29:25'),
(158, 7, 1, 'Actoplus 100ml', '10143', 'Sweeweet', '98', '175', '2022-06-27', '2024-12-01', NULL, '144', '2022-06-27 04:41:40', '2023-02-16 21:28:07'),
(159, 7, 1, 'Actoplus 50ml', '10144', 'Sweeweet', '63', '90', '2022-06-27', '2024-01-01', NULL, '120', '2022-06-27 04:42:30', '2023-02-16 21:26:16'),
(160, 7, 1, 'Actoplus 400ml', '10145', 'Sweeweet', '371', '620', '2022-06-27', '2024-12-01', NULL, '24', '2022-06-27 04:44:57', '2023-02-16 21:30:38'),
(161, 7, 1, 'Etigold 10gm', '10146', 'Sweeweet', '91', '145', '2022-06-27', '2024-12-01', NULL, '300', '2022-06-27 04:46:33', '2023-02-16 21:32:49'),
(162, 7, 1, 'Lazim 25gm', '10147', 'Sweeweet', '35', '55', '2022-06-27', '2023-09-05', NULL, '45', '2022-06-27 04:47:42', '2023-01-18 19:30:08'),
(163, 7, 1, 'Lazim 100gm', '10148', 'Sweeweet', '110', '185', '2022-06-27', '2023-03-05', NULL, '1', '2022-06-27 04:49:56', '2023-01-01 21:27:50'),
(164, 7, 1, 'Sweetprim 100ml', '10149', 'Sweeweet', '180', '360', '2022-06-27', '2023-04-01', NULL, '18', '2022-06-27 04:51:39', '2022-06-27 04:51:39'),
(165, 7, 1, 'Taijeb Gold 100gm', '10150', 'Sweeweet', '120', '180', '2022-06-27', '2023-04-01', NULL, '17', '2022-06-27 04:52:54', '2022-07-03 16:15:17'),
(166, 7, 1, 'I-Ben 5 S.g 10gm', '10151', 'Sweeweet', '22', '50', '2022-06-27', '2024-01-01', NULL, '22', '2022-06-27 04:54:03', '2022-10-02 15:28:26'),
(167, 7, 1, 'Taijeb 100gm', '10152', 'Sweeweet', '60', '130', '2022-06-27', '2023-04-01', NULL, '16', '2022-06-27 04:55:13', '2022-07-03 15:12:48'),
(168, 7, 1, 'Mun Right 10gm', '10153', 'Sweeweet', '60', '110', '2022-06-27', '2023-10-01', NULL, '17', '2022-06-27 04:56:18', '2022-06-29 20:28:07'),
(169, 7, 1, 'Taizelo super 100ml', '10154', 'Sweeweet', '80', '260', '2022-06-27', '2023-10-01', NULL, '21', '2022-06-27 04:59:37', '2022-06-29 20:25:46'),
(170, 7, 1, 'Best Potast 25gm', '10155', 'Sweeweet', '60', '90', '2022-06-27', '2023-11-01', NULL, '6', '2022-06-27 05:00:35', '2022-06-27 05:00:35'),
(171, 7, 1, 'Topamac 2gm', '10156', 'Bebilon', '15', '20', '2022-06-27', '2024-01-01', NULL, '28', '2022-06-27 05:03:39', '2023-01-02 20:09:48'),
(172, 7, 1, 'Mukut 100ml', '10157', 'Bebilon', '70', '105', '2022-06-27', '2023-03-01', NULL, '27', '2022-06-27 05:04:45', '2023-01-02 20:06:45'),
(173, 7, 1, 'Proloy 50ml', '10158', 'Bebilon', '154', '285', '2022-06-27', '2023-09-01', NULL, '216', '2022-06-27 05:05:24', '2022-08-05 23:29:15'),
(174, 7, 1, 'Super Patash 250gm', '10159', 'AgreePlus', '55', '90', '2022-06-27', '2023-06-01', NULL, '00', '2022-06-27 05:12:51', '2022-10-03 19:38:40'),
(175, 7, 1, 'Setara 100ml', '10160', 'Mimprex Agrocamical Ltd', '110', '194', '2022-06-27', '2023-10-01', NULL, '2', '2022-06-27 05:15:04', '2022-09-29 23:55:36'),
(177, 7, 1, 'Sunfighter 100ml', '10162', 'Mackdronald', '135', '210', '2023-01-18', '2024-09-01', NULL, '125', '2022-06-27 05:22:44', '2023-01-18 19:40:47'),
(178, 7, 1, 'Sunfighter 400ml', '10163', 'Mackdronald', '510', '700', '2023-01-18', '2024-02-01', NULL, '46', '2022-06-27 05:23:30', '2023-01-18 19:37:19'),
(179, 7, 1, 'Noin 25gm', '10164', 'Mackdronald', '41', '85', '2023-01-18', '2024-09-01', NULL, '275', '2022-06-27 05:25:15', '2023-01-18 19:56:26'),
(180, 7, 1, 'Karisma 100ml', '10165', 'Yeon Agro', '284', '445', '2022-06-27', '2023-06-01', NULL, '3', '2022-06-27 05:26:37', '2022-06-27 05:26:37'),
(181, 7, 1, 'Karisma 50ml', '10166', 'Yeon Agro', '148', '230', '2022-06-27', '2023-06-01', NULL, '7', '2022-06-27 05:27:26', '2022-10-02 15:26:29'),
(182, 7, 1, 'Comret 15gm', '10167', 'Yeon Agro', '165', '232', '2022-06-27', '2024-01-01', NULL, '7', '2022-06-27 05:28:54', '2022-08-20 19:02:19'),
(183, 7, 1, 'Comret10gm', '10168', 'Yeon Agro', '114', '160', '2022-06-27', '2024-01-01', NULL, '8', '2022-06-27 05:29:39', '2022-08-20 19:02:04'),
(184, 7, 1, 'Charj 50gm', '10169', 'Yeon Agro', '52', '82', '2022-06-27', '2023-10-01', NULL, '30', '2022-06-27 05:30:41', '2022-07-03 20:23:15'),
(185, 7, 1, 'Sumithiyeon 400ml', '10170', 'Setu', '458', '635', '2022-06-27', '2023-10-01', NULL, '7', '2022-06-27 05:33:07', '2022-07-02 19:01:09'),
(186, 7, 1, 'Sumithiyeon 100ml', '10171', 'Setu', '113', '175', '2022-06-27', '2023-09-01', NULL, '8', '2022-06-27 05:34:23', '2022-06-27 05:34:23'),
(187, 7, 1, 'Ready Potash 500gm', '10172', 'GME', '97', '150', '2022-06-27', '2023-06-01', NULL, '10', '2022-06-27 05:36:28', '2022-10-03 19:38:19'),
(188, 7, 1, 'KG Plus 10gm', '10173', 'Gloriyas', '105', '195', '2022-06-27', '2025-01-01', NULL, '1410', '2022-06-27 05:38:19', '2023-01-10 18:39:06'),
(189, 7, 1, 'KG Sipahi 100ml', '10174', 'Gloriyas', '80', '135', '2022-06-27', '2025-01-01', NULL, '696', '2022-06-27 05:39:09', '2023-01-08 23:28:18'),
(190, 7, 1, 'Peradox 1kg', '10175', 'SAM', '132', '240', '2022-06-27', '2024-05-01', NULL, '30', '2022-06-27 05:41:24', '2022-11-25 16:35:03'),
(191, 7, 1, 'Peak 250gm', '10176', 'SAM', '140', '270', '2022-06-27', '2023-02-01', NULL, '00', '2022-06-27 05:42:06', '2023-02-05 16:33:55'),
(192, 7, 1, 'Gold Jink 1kg', '10177', 'Lark Internation', '100', '165', '2022-06-27', '2023-11-01', NULL, '58', '2022-06-27 05:46:32', '2022-09-22 14:51:37'),
(193, 7, 1, 'Ruten 1kg', '10178', 'National Agricare', '76', '105', '2022-06-27', '2024-10-01', NULL, '11', '2022-06-27 05:47:56', '2022-11-17 20:59:18'),
(194, 7, 1, 'Big Forun 1kg', '10179', 'Blosing Agrovet', '100', '275', '2022-06-27', '2023-08-01', NULL, '00', '2022-06-27 05:49:24', '2022-09-10 00:33:27'),
(195, 7, 1, 'High Gold 500gm', '10180', 'Blesing Agrovet', '75', '210', '2022-06-27', '2024-10-01', NULL, '40', '2022-06-27 05:50:25', '2022-11-20 21:50:05'),
(196, 7, 1, 'High Gold 1kg', '10181', 'Blesing Agrovet', '145', '390', '2022-06-27', '2024-03-01', NULL, '62', '2022-06-27 05:51:22', '2022-11-20 21:48:47'),
(197, 7, 1, 'Kisibid Mag  (chikon)  1kg', '10182', 'Kisibid Group', '38', '80', '2022-06-27', '2024-10-01', NULL, '106', '2022-06-27 05:52:46', '2022-07-16 23:50:31'),
(198, 7, 1, 'Kisibid Green jib Tablet 10gm', '10183', 'Kisibid Group', '84', '170', '2022-06-27', '2023-10-01', NULL, '64', '2022-06-27 05:53:36', '2022-08-25 21:33:34'),
(199, 7, 1, 'Cal Zeolite 2kg', '10184', 'Century', '110', '160', '2022-06-27', '2024-01-01', NULL, '112', '2022-06-27 05:56:17', '2022-07-29 15:12:58'),
(200, 7, 1, 'Topaj Hepta 1kg', '10185', 'Intefa', '135', '200', '2022-06-27', '2024-07-30', NULL, '40', '2022-06-27 05:58:10', '2022-09-22 14:48:31'),
(201, 7, 1, 'Til 500ml', '10186', 'Singenta', '1012', '1150', '2022-06-27', '2023-05-01', NULL, '4', '2022-06-27 06:00:36', '2022-09-12 15:47:37'),
(202, 7, 1, 'Til 100ml', '10187', 'Singenta', '224', '270', '2022-06-27', '2023-08-01', NULL, '23', '2022-06-27 06:01:18', '2022-09-24 17:53:32'),
(203, 7, 1, 'Til 50ml', '10188', 'Singenta', '123', '150', '2022-06-01', '2023-07-01', NULL, '00', '2022-06-27 06:02:22', '2022-10-02 15:26:01'),
(204, 7, 1, 'Filia 100ml', '10189', 'Singenta', '220', '240', '2022-06-27', '2023-07-01', NULL, '9', '2022-06-27 06:04:38', '2022-10-02 15:25:36'),
(205, 7, 1, 'Amistertop 100ml', '10190', 'Singenta', '370', '400', '2022-06-27', '2023-09-01', NULL, '32', '2022-06-27 06:05:49', '2023-01-02 19:20:09'),
(206, 7, 1, 'Amistertop 500ml', '10191', 'Singenta', '1565', '1720', '2022-06-27', '2022-10-01', NULL, '0', '2022-06-27 06:06:46', '2022-09-02 01:35:03'),
(207, 7, 1, 'Kerate 500ml', '10192', 'Singenta', '528', '600', '2022-06-27', '2023-05-01', NULL, '8', '2022-06-27 06:07:35', '2022-07-02 20:04:53'),
(208, 7, 1, 'Kerate 100ml', '10193', 'Singenta', '122', '130', '2022-06-27', '2023-05-01', NULL, '43', '2022-06-27 06:08:39', '2022-08-24 22:35:05'),
(209, 7, 1, 'Frastap 100gm', '10194', 'Semco', '152', '260', '2022-06-27', '2023-10-01', NULL, '5', '2022-06-27 18:14:44', '2023-01-02 20:04:52'),
(210, 7, 1, 'Enova Super 2gm', '10195', 'Semco', '9', '30', '2022-06-27', '2023-05-01', NULL, '30', '2022-06-27 18:15:38', '2023-01-02 20:00:24'),
(211, 7, 1, 'Ragbi 1Kg', '10196', 'Semco', '480', '700', '2023-02-10', '2024-01-01', NULL, '20', '2022-06-27 18:25:47', '2023-02-10 22:44:54'),
(212, 7, 1, 'Gentco  3 GR 1Kg', '10197', 'Marshal', '90', '230', '2022-06-27', '2023-11-01', NULL, '416', '2022-06-27 18:29:40', '2022-07-16 22:21:34'),
(213, 7, 1, 'Danfuran 5G 1kg', '10198', 'Marshal', '101', '195', '2022-06-27', '2024-06-01', NULL, '1000', '2022-06-27 18:39:34', '2023-01-02 19:57:57'),
(214, 7, 1, 'Pathal 25gm', '10199', 'Marshal', '27', '90', '2022-06-27', '2023-08-01', NULL, '4', '2022-06-27 18:41:58', '2022-08-07 15:16:00'),
(215, 7, 1, 'Amistertop 50ml', '10200', 'Singenta', '190', '210', '2022-06-27', '2023-10-01', NULL, '00', '2022-06-27 19:48:39', '2023-01-02 19:20:54'),
(216, 7, 1, 'Cona Top 500ml', '10201', 'Swazis', '1500', '2400', '2022-06-29', '2023-11-01', NULL, '46', '2022-06-29 15:44:55', '2023-01-08 00:10:46'),
(217, 7, 1, 'Cona Top 100ml', '10202', 'Swazis', '340', '535', '2022-06-29', '2023-10-01', NULL, '67', '2022-06-29 15:48:03', '2023-01-08 00:09:41'),
(218, 7, 1, 'Cona Top 50ml', '10203', 'Swazis', '180', '280', '2022-06-29', '2023-11-29', NULL, '67', '2022-06-29 15:52:07', '2023-01-08 00:09:15'),
(219, 7, 1, 'Joar 500ml', '10204', 'Swazis', '300', '610', '2022-06-29', '2023-07-01', NULL, '53', '2022-06-29 15:57:19', '2022-08-15 16:44:32'),
(220, 7, 1, 'Tapwin 100gm', '10205', 'Century', '191', '375', '2022-06-30', '2024-01-30', NULL, '28', '2022-06-30 18:09:55', '2022-06-30 18:09:55'),
(221, 7, 1, 'Danfuran 5G 1kg', '10206', 'Marshal', '100', '195', '2022-06-30', '2023-11-01', NULL, '400', '2022-06-30 20:32:24', '2022-08-20 19:04:41'),
(222, 7, 1, 'Kemojol 380sc 50ml', '10207', 'Green Bangla agrovet ltd', '166', '281', '2022-07-02', '2024-01-01', NULL, '11', '2022-07-02 19:12:19', '2022-07-02 19:12:19'),
(223, 7, 1, 'Filia 500ml', '10208', 'Singenta', '1012', '1150', '2022-07-02', '2023-05-01', NULL, '8', '2022-07-02 20:08:06', '2022-08-24 22:29:09'),
(224, 7, 1, 'Etigold 30gm', '10209', 'Sweet  Agro.', '251', '390', '2022-07-03', '2024-12-03', NULL, '100', '2022-07-03 15:04:55', '2023-02-16 21:34:26'),
(225, 7, 1, 'Peak 100gm', '10210', 'Sam', '58', '115', '2022-07-03', '2024-09-25', NULL, '00', '2022-07-03 17:20:30', '2023-02-05 16:33:29'),
(226, 7, 1, 'Peak 50gm', '10211', 'Sam', '35', '65', '2022-07-03', '2023-11-01', NULL, '00', '2022-07-03 17:24:29', '2023-01-08 17:44:54'),
(227, 7, 1, 'Shoktiman 1kg', '10212', 'SAM', '120', '250', '2022-07-04', '2023-08-04', NULL, '22', '2022-07-04 17:23:24', '2022-10-09 13:55:09'),
(228, 7, 1, 'Dhano viet', '10213', 'এগ্রি সোর্স লিঃ', '100', '235', '2022-07-04', '2023-08-04', NULL, '1', '2022-07-04 17:28:33', '2022-07-04 22:38:03'),
(229, 7, 1, 'Brexil Zn 20gm', '10214', 'National Agricare', '25', '45', '2022-07-04', '2023-06-04', NULL, '25', '2022-07-04 17:32:50', '2022-07-04 17:32:50'),
(230, 7, 1, 'Vumi 1Kg', '10215', 'Getco', '88', '160', '2022-07-25', '2024-03-01', NULL, '307', '2022-07-04 17:33:53', '2022-07-25 22:33:53'),
(231, 7, 1, 'Arocson 100ml', '10216', 'Mimprex Agrocamical Ltd', '42', '163', '2022-07-13', '2024-04-13', NULL, '3', '2022-07-13 17:28:59', '2022-08-18 17:11:37'),
(232, 7, 1, 'Arocson 1 Liter', '10217', 'Mimprex Agrocamical Ltd', '392', '1090', '2022-07-13', '2024-04-01', NULL, '15', '2022-07-13 17:31:23', '2022-08-05 23:32:01'),
(233, 7, 1, 'থিয়োভিট ২ কেজি', '10218', 'Syngenta', '390', '470', '2022-07-13', '2023-10-01', NULL, '12', '2022-07-13 17:38:08', '2022-10-24 19:35:39'),
(234, 7, 1, 'থিয়োভিট ১ কেজি', '10219', 'Syngenta', '224', '250', '2022-07-13', '2023-08-01', NULL, '18', '2022-07-13 17:39:15', '2022-08-21 22:35:55'),
(235, 7, 1, 'KG Kamla 50gm', '10220', 'Kisibid Group/Glorious', '42', '70', '2022-07-13', '2025-01-13', NULL, '2000', '2022-07-13 23:36:53', '2023-01-07 22:29:03'),
(236, 7, 1, 'KG Kamla 100gm', '10221', 'Kisibid Group/Glorious', '74', '165', '2022-07-13', '2025-01-13', NULL, '1750', '2022-07-13 23:38:13', '2023-01-07 22:26:06'),
(237, 7, 1, 'Wonderfull 80 WG 1kg', '10222', 'AAMA GREEN CARE', '148', '290', '2022-07-13', '2024-01-13', NULL, '500', '2022-07-13 23:59:23', '2023-01-02 19:56:58'),
(238, 7, 1, 'Shokot 68 WDG 50gm', '10223', 'AAMA GREEN CARE', '291', '450', '2022-07-13', '2023-12-13', NULL, '212', '2022-07-14 00:07:04', '2022-07-15 19:50:06'),
(239, 7, 1, 'Shokot 68 WDG 100gm', '10224', 'AAMA GREEN CARE', '562', '870', '2022-07-13', '2023-12-13', NULL, '100', '2022-07-14 00:10:40', '2022-07-15 19:49:32'),
(240, 7, 1, 'ZeenUltra 25gm', '10225', 'Swazis', '220', '375', '2022-07-15', '2024-01-01', NULL, '36', '2022-07-15 19:18:49', '2023-01-02 17:49:59'),
(241, 7, 1, 'ZeenUltra75gm', '10226', 'Swazis', '600', '975', '2022-07-15', '2024-01-01', NULL, '34', '2022-07-15 19:20:47', '2023-01-02 17:48:35'),
(242, 7, 1, 'Kisibid magnasiam (দানা)', '10227', 'Kisibid Group', '63', '150', '2022-07-16', '2025-03-16', NULL, '8582', '2022-07-16 23:53:34', '2023-01-02 19:55:56'),
(244, 7, 1, 'Bikranto vicafen 500 gm', '10228', 'Indian product', '283', '600', '2022-07-16', '2025-09-16', NULL, '19', '2022-07-17 00:02:22', '2022-07-17 00:02:22'),
(246, 7, 1, 'Chalamin 17gm', '10229', 'Shine agro L.M', '32', '90', '2022-07-19', '2024-02-01', NULL, '00', '2022-07-19 17:47:00', '2023-01-20 01:49:11'),
(248, 7, 1, 'betacran400ml', '10230', 'agri shos', '175', '265', '2022-07-21', '2024-01-01', NULL, '24', '2022-07-21 23:10:33', '2022-07-21 23:21:40'),
(249, 7, 1, 'betacran100ml', '10231', 'agri shos', '48', '90', '2022-07-21', '2024-01-01', NULL, '28', '2022-07-21 23:12:35', '2022-08-18 17:29:54'),
(250, 7, 1, 'Ges tablet', '10232', 'intefa', '900', '1170', '2022-07-22', '2024-02-01', NULL, '9', '2022-07-22 15:05:02', '2022-07-24 01:47:53'),
(251, 7, 1, 'fertigro 1kg', '10233', 'Marshal', '76', '180', '2022-07-22', '2024-02-01', NULL, '180', '2022-07-22 15:36:19', '2023-01-29 21:38:26'),
(252, 7, 1, 'Goldfuran5g 1kg', '10234', 'agro biusnes', '55', '172', '2022-07-22', '2024-03-01', NULL, '280', '2022-07-22 15:40:14', '2022-10-22 23:24:18'),
(253, 7, 1, 'fartera 1kg', '10235', 'patrocam agro', '220', '315', '2022-07-22', '2023-09-01', NULL, '93', '2022-07-22 19:28:03', '2022-08-21 23:54:53'),
(254, 7, 1, 'Noin100gm', '10236', 'Mackdronald', '140', '220', '2022-07-22', '2024-01-22', NULL, '120', '2022-07-22 21:37:20', '2023-01-18 19:49:35'),
(257, 7, 1, 'Noin50gm', '10237', 'Mackdronald', '77', '120', '2022-07-22', '2024-01-22', NULL, '248', '2022-07-22 21:38:51', '2023-01-18 19:54:42'),
(258, 7, 1, 'তেজ জিঙ্ক ১ কেজি', '10238', 'চায়না এগ্রো', '90', '230', '2022-07-22', '2024-04-22', NULL, '150', '2022-07-22 21:43:59', '2023-01-02 19:56:26'),
(259, 8, 1, 'তিস্তা জিব সার ১০ কেজি বস্তা', '10239', 'তিস্তা', '130', '250', '2022-07-22', '2025-01-22', NULL, '611', '2022-07-23 00:50:15', '2022-08-20 19:16:52'),
(260, 8, 1, 'তিস্তা জিব সার ৫ কেজি প্যাকেট', '10240', 'তিস্তা', '65', '130', '2022-07-22', '2025-01-22', NULL, '323', '2022-07-23 00:51:49', '2022-08-20 19:19:14'),
(261, 8, 1, 'জিব সার ১০ কেজি কৃষিবীদ', '10241', 'কৃষিবীদ', '235', '270', '2022-07-22', '2025-01-22', NULL, '447', '2022-07-23 00:56:53', '2022-10-28 01:03:07'),
(262, 7, 1, 'Agrogro dhanadar 1kg', '10242', 'mamun agro l.m', '50', '180', '2022-07-23', '2024-01-01', NULL, '400', '2022-07-24 01:58:06', '2023-01-02 19:53:56'),
(264, 7, 1, 'Am para 100ml', '10243', 'S H Crop', '47', '115', '2022-07-24', '2024-01-01', NULL, '150', '2022-07-24 23:39:26', '2022-07-24 23:39:47'),
(265, 7, 1, 'A M Para 500ml', '10244', 'M H Crop', '205', '375', '2022-07-24', '2024-01-01', NULL, '10', '2022-07-24 23:42:13', '2022-07-25 16:16:41'),
(266, 7, 1, 'Magnesium Sulfer', '10245', 'Getco Agro', '56', '105', '2022-07-25', '2024-03-01', NULL, '498', '2022-07-25 22:32:17', '2022-08-21 23:56:29'),
(267, 7, 1, 'Seltima 250ml', '10246', 'samko grop', '470', '717', '2022-07-26', '2024-02-12', NULL, '40', '2022-07-26 17:05:52', '2023-02-15 20:13:16'),
(268, 7, 1, 'Promotar pelas 4ml', '10247', 'aci', '21', '40', '2022-07-28', '2024-02-28', NULL, '240', '2022-07-28 20:51:31', '2023-01-02 19:45:14'),
(269, 7, 1, 'paythrin 3wdg', '10248', 'Marsal', '70', '160', '2022-07-28', '2023-09-01', NULL, '12', '2022-07-28 20:59:55', '2023-01-02 19:19:13'),
(270, 7, 1, 'Sidor 100ml', '10249', 'Marshal', '123', '200', '2022-07-29', '2024-01-01', NULL, '00', '2022-07-29 15:03:21', '2022-12-26 16:10:53'),
(271, 7, 1, 'Foni 50gm', '10250', 'Swazis', '130', '300', '2022-08-12', '2024-01-01', NULL, '100', '2022-08-12 19:26:25', '2022-12-27 20:04:45'),
(272, 7, 1, 'Foni 100gm', '10251', 'Swazis', '250', '400', '2022-08-12', '2024-07-01', NULL, '121', '2022-08-12 19:36:29', '2022-12-27 20:05:58'),
(273, 7, 1, 'benjoy30g', '10252', 'Swazis', '70', '140', '2022-08-17', '2024-01-17', NULL, '40', '2022-08-17 14:30:09', '2022-08-19 15:53:25'),
(274, 7, 1, 'Kg T2 40gm', '10253', 'Gloriyas', '270', '365', '2022-08-19', '2025-04-01', NULL, '24', '2022-08-19 14:24:53', '2023-01-08 23:32:35'),
(275, 7, 1, 'KgT2 100gm', '10254', 'Gloriyas', '652', '840', '2022-08-19', '2025-04-19', NULL, '20', '2022-08-19 14:31:09', '2022-08-25 21:34:14'),
(276, 7, 1, 'Kg T2 10gm', '10255', 'Gloriyas', '100', '118', '2022-08-19', '2025-03-19', NULL, '50', '2022-08-19 14:33:17', '2023-01-08 23:32:17'),
(277, 7, 1, 'Bona 100ml', '10256', 'Swazis', '80', '130', '2022-08-19', '2024-04-01', NULL, '20', '2022-08-19 15:47:49', '2022-08-19 15:51:26'),
(278, 7, 1, 'Bona 400ml', '10257', 'Swazis', '280', '455', '2022-08-19', '2024-05-19', NULL, '6', '2022-08-19 15:51:12', '2022-08-19 15:51:12'),
(279, 7, 1, 'benjoy 60gm', '10258', 'Swazis', '130', '230', '2022-08-19', '2023-09-19', NULL, '20', '2022-08-19 16:02:31', '2022-08-19 16:02:31'),
(280, 7, 1, 'Foni 300gm', '10259', 'Swazis', '720', '1100', '2022-08-24', '2024-01-01', NULL, '30', '2022-08-24 18:47:14', '2022-12-27 20:03:31'),
(281, 7, 1, 'Kg Gold mekojeb Holde 1kg', '10260', 'Gloriyas', '520', '895', '2023-01-19', '2024-11-01', NULL, '50', '2022-08-26 19:37:36', '2023-01-19 21:38:41'),
(282, 7, 1, 'Kg Gold mekojeb Bulu 1kg', '10261', 'Goliriwas', '620', '986', '2023-01-19', '2025-11-01', NULL, '300', '2022-08-26 19:51:48', '2023-01-19 21:37:02'),
(283, 7, 1, 'saota 1kg', '10262', 'Intefa', '900', '1170', '2022-08-26', '2024-11-01', NULL, '9', '2022-08-27 01:03:08', '2022-08-27 01:03:08'),
(284, 7, 1, 'charu 100gm', '10263', 'AMA GREEN CARE', '300', '525', '2023-02-11', '2024-05-01', NULL, '125', '2022-08-28 20:06:44', '2023-02-11 17:27:48'),
(285, 7, 1, 'charu 50gm', '10264', 'AAMA GREEN CARE', '158', '285', '2023-02-11', '2024-05-01', NULL, '250', '2022-08-28 20:09:13', '2023-02-11 17:27:10'),
(286, 7, 1, 'Amaboron 500gm', '10265', 'AAMA GREEN CARE', '131', '255', '2022-08-28', '2024-05-01', NULL, '00', '2022-08-28 20:13:06', '2023-01-02 19:52:38'),
(287, 7, 1, 'Amavit 1kg', '10266', 'AAMA GREEN CARE', '99', '180', '2022-08-28', '2024-05-28', NULL, '81', '2022-08-28 20:26:48', '2022-08-28 20:26:48'),
(288, 7, 1, 'Tata 50ml', '10267', 'AAMA GREEN CARE', '72', '145', '2022-08-28', '2024-04-01', NULL, '54', '2022-08-28 22:12:45', '2022-08-28 22:12:45'),
(289, 7, 1, 'Gilitar 50', '10268', 'AAMA GREEN CARE', '56', '92', '2022-08-28', '2024-04-28', NULL, '50', '2022-08-28 22:22:32', '2022-08-29 19:32:06'),
(291, 7, 1, 'Happy80wp 1kg', '10269', 'AAMA GREEN CARE', '730', '910', '2022-08-28', '2024-07-28', NULL, '10', '2022-08-28 22:26:24', '2022-08-28 22:26:24'),
(292, 7, 1, 'Amacon 100ml', '10270', 'AAMA GREEN CARE', '74', '160', '2022-08-28', '2024-04-01', NULL, '49', '2022-08-28 22:28:46', '2022-09-04 19:38:26'),
(293, 7, 1, 'Nafa 200', '10271', 'intefa', '128', '190', '2022-08-28', '2024-01-01', NULL, '14', '2022-08-28 22:52:44', '2023-01-02 19:33:09'),
(294, 7, 1, 'Nafa 100', '10272', 'Intefa', '68', '100', '2022-08-28', '2024-01-01', NULL, '23', '2022-08-28 23:00:50', '2022-08-28 23:06:39'),
(295, 7, 1, 'Nafa 50ml', '10273', 'Intefa', '38', '60', '2022-08-28', '2024-01-01', NULL, '00', '2022-08-28 23:06:09', '2023-01-02 19:32:39'),
(298, 7, 1, 'Tared 50ml', '10274', 'Intefa', '157', '220', '2022-08-28', '2024-04-28', NULL, '00', '2022-08-28 23:10:50', '2022-10-02 15:17:55'),
(300, 7, 1, 'Tared 100ml', '10275', 'Intefa', '297', '430', '2022-08-28', '2024-04-28', NULL, '20', '2022-08-28 23:18:13', '2022-10-13 15:53:53'),
(317, 7, 1, 'Kafa 80w 100gm', '10276', 'Intefa', '75', '115', '2022-08-28', '2024-05-28', NULL, '30', '2022-08-28 23:28:35', '2022-10-02 15:41:04'),
(318, 7, 1, 'Tared 500ml', '10277', 'Intefa', '1422', '1875', '2022-09-04', '2024-01-01', NULL, '00', '2022-09-04 19:19:05', '2023-01-02 19:32:03'),
(319, 7, 1, 'Amacon 400ml', '10278', NULL, '268', '650', '2022-09-04', '2024-01-01', NULL, '32', '2022-09-04 19:41:04', '2023-01-02 19:31:39'),
(320, 7, 1, 'kuiek phtas250gm', '10279', NULL, '69', '130', '2022-09-05', '2025-03-01', NULL, '29', '2022-09-05 19:26:19', '2022-09-06 22:26:27'),
(321, 7, 1, 'Dasban 100ml', '10280', 'Auto Crop Care Ltd', '76', '103', '2022-09-05', '2024-03-05', NULL, '10', '2022-09-05 19:33:29', '2022-10-13 15:53:13'),
(322, 7, 1, 'Zeen 1 EC 100gm', '10281', 'Swazis', '230', '375', '2022-09-06', '2024-03-06', NULL, '39', '2022-09-06 20:25:10', '2022-12-27 20:11:12'),
(323, 7, 1, 'Zeen 1 EC  50gm', '10282', 'Swazis', '120', '195', '2022-09-06', '2024-04-01', NULL, '120', '2022-09-06 20:26:58', '2022-12-27 20:10:35'),
(324, 7, 1, 'Katamin 50gm', '10283', 'Swazis', '160', '320', '2022-09-06', '2024-01-06', NULL, '20', '2022-09-06 20:35:50', '2022-09-06 20:35:50'),
(325, 7, 1, 'Am pawer 500 ml', '10284', 'S H Crop', '180', '375', '2022-09-20', '2024-06-20', NULL, '14', '2022-09-20 19:12:22', '2022-12-20 15:51:33'),
(326, 7, 1, 'vayego 100ml', '10285', 'Bayer', '695', '845', '2022-09-23', '2026-06-06', NULL, '22', '2022-09-23 23:25:18', '2022-10-22 18:54:26'),
(327, 7, 1, 'vayego 50ml', '10286', 'Bayer', '355', '455', '2022-09-23', '2026-06-05', NULL, '22', '2022-09-23 23:28:06', '2022-10-22 18:54:09'),
(328, 7, 1, 'Zeen 1 EC 500ml', '10287', 'Swazis', '1000', '1525', '2022-09-25', '2024-07-25', NULL, '36', '2022-09-25 19:21:05', '2022-12-27 20:12:32'),
(329, 7, 1, 'Success 100ml', '10288', 'Auto Crop Care Ltd', '280', '415', '2022-10-12', '2024-07-01', NULL, '11', '2022-10-12 15:42:04', '2022-10-22 18:49:54'),
(330, 7, 1, 'Dasban 500ml', '10289', 'Auto Crop Care Ltd', '345', '575', '2022-10-13', '2024-01-13', NULL, '00', '2022-10-13 18:27:42', '2023-01-02 19:30:29'),
(331, 7, 1, 'succes 25ml', '10290', 'Auto Crop Care Ltd', '75', '110', '2022-10-13', '2024-06-13', NULL, '11', '2022-10-14 01:49:48', '2022-10-14 01:49:48'),
(333, 7, 1, 'Hparshood', '10291', 'Semco', '410', '670', '2022-10-15', '2024-08-01', NULL, '10', '2022-10-16 01:45:07', '2023-01-02 19:30:03'),
(334, 7, 1, 'PGR 1Lt', '10292', 'Swazis', '250', '1050', '2022-11-08', '2024-01-08', NULL, '00', '2022-11-08 19:41:26', '2023-02-12 01:00:32'),
(335, 7, 1, 'PGR 500ml', '10293', 'Swazis', '150', '425', '2022-11-08', '2024-01-08', NULL, '1', '2022-11-08 19:44:05', '2023-02-12 01:00:53'),
(336, 7, 1, 'PGR 100ml', '10294', 'Swazis', '45', '75', '2022-11-08', '2024-01-08', NULL, '15', '2022-11-08 19:46:01', '2023-02-12 01:01:25'),
(337, 7, 1, 'Boostar 500 gm', '10295', 'Swazis', '125', '320', '2022-11-08', '2024-01-08', NULL, '00', '2022-11-08 19:48:33', '2023-01-02 19:29:03'),
(338, 7, 1, 'Boostar Plus 100gm', '10296', 'Swazis', '50', '105', '2022-11-08', '2024-01-08', NULL, '40', '2022-11-08 19:50:56', '2023-01-02 19:27:35'),
(339, 7, 1, 'SAila 250gm', '10297', 'Swazis', '200', '330', '2022-11-08', '2024-01-08', NULL, '10', '2022-11-08 20:15:31', '2023-01-02 19:25:53'),
(340, 7, 1, 'Gibrel 1gm', '10298', 'Swazis', '30', '110', '2022-11-08', '2024-01-08', NULL, '50', '2022-11-08 20:18:17', '2022-11-08 20:18:17'),
(341, 7, 1, 'Boostar 500gm', '10299', 'Swazis', '125', '220', '2022-11-15', '2024-12-01', NULL, '80', '2022-11-15 22:28:04', '2022-11-15 22:28:04'),
(342, 7, 1, 'Zeen gold 25gm', '10300', 'Swazis', '150', '245', '2022-11-15', '2024-12-01', NULL, '60', '2022-11-15 22:30:10', '2022-11-15 22:30:10'),
(343, 7, 1, 'Lalmia  100ml', '10301', 'Swazis', '115', '270', '2022-11-15', '2024-12-01', NULL, '90', '2022-11-15 22:34:39', '2023-01-08 00:59:42'),
(344, 7, 1, 'Emida 35gm', '10302', 'Pettokam', '63', '95', '2022-11-17', '2024-12-17', NULL, '30', '2022-11-17 20:58:01', '2022-11-17 20:58:01'),
(345, 7, 1, 'Reven Boron 500gm', '10303', 'Raven', '60', '140', '2022-11-18', '2024-10-01', NULL, '40', '2022-11-18 21:09:59', '2022-12-01 22:59:16'),
(346, 7, 1, 'Emitaf 100', '10304', 'Auto Crop Care Ltd', '232', '375', '2022-11-20', '2023-10-20', NULL, '3', '2022-11-20 21:41:38', '2023-01-02 19:24:06'),
(347, 7, 1, 'Anazim Zin1kg', '10305', 'Swazis', '120', '260', '2022-11-25', '2024-05-24', NULL, '00', '2022-11-25 16:37:42', '2023-01-02 19:23:48'),
(348, 7, 1, 'Tina 30gm', '10306', 'Swazis', '100', '200', '2022-11-25', '2024-05-25', NULL, '20', '2022-11-25 16:40:40', '2022-11-25 16:40:40'),
(349, 7, 1, 'Tina 10gm', '10307', 'Swazis', '35', '60', '2022-11-25', '2024-05-25', NULL, '20', '2022-11-25 16:41:37', '2022-11-25 16:41:37'),
(350, 7, 1, 'Lalmia50ml', '10308', 'Swazis', '60', '140', '2022-11-25', '2024-05-25', NULL, '20', '2022-11-25 16:44:21', '2023-01-08 00:59:24'),
(351, 7, 1, 'Carzim karbondaijim 60gm', '10309', 'Swazis', '130', '260', '2022-11-25', '2024-05-25', NULL, '20', '2022-11-25 16:49:39', '2022-11-25 16:49:39'),
(352, 7, 1, 'Foni Sobji', '10310', 'Swazis', '220', '360', '2022-11-25', '2024-05-25', NULL, '12', '2022-11-25 16:54:26', '2022-11-25 17:14:29'),
(353, 7, 1, 'Borof Boron 500gm', '10311', 'Intefa', '120', '180', '2022-11-29', '2024-05-29', NULL, '80', '2022-11-29 15:26:05', '2023-02-16 21:36:54'),
(354, 7, 1, 'Topaz Zin kg', '10312', 'Intefa', '195', '300', '2022-11-29', '2024-05-06', NULL, '70', '2022-11-29 16:10:13', '2023-01-02 19:21:53'),
(356, 7, 1, 'Saila 1kg', '10313', NULL, '700', '1200', '2022-11-29', '2024-06-29', NULL, '8', '2022-11-29 20:52:39', '2023-01-02 19:21:33'),
(357, 7, 1, 'Five Star 57%', '10314', 'AAMA GREEN CARE', '1350', '1700', '2022-12-03', '2024-06-03', NULL, '50', '2022-12-03 16:03:27', '2023-01-02 19:22:06'),
(358, 7, 1, 'Rovral 100gm', '10315', 'Auto Crop Care Ltd', '345', '530', '2022-12-05', '2024-05-05', NULL, '40', '2022-12-05 20:11:19', '2022-12-28 23:07:42'),
(359, 7, 1, 'nikosal 500ml', '10316', 'Sweeweet', '300', '600', '2022-12-14', '2024-08-14', NULL, '30', '2022-12-15 00:16:21', '2022-12-15 00:16:21'),
(360, 7, 1, 'nikosal 250ml', '10317', 'Sweeweet', '160', '310', '2022-12-14', '2024-07-01', NULL, '40', '2022-12-15 00:22:32', '2022-12-21 20:56:18'),
(361, 7, 1, 'Antracall 500gm', '10318', 'Bayer', '404', '600', '2022-12-17', '2023-10-17', NULL, '5', '2022-12-17 22:10:49', '2023-01-02 19:28:12'),
(362, 7, 1, 'Fix 3', '10319', 'Babylon', '90', '205', '2022-12-17', '2024-06-17', NULL, '110', '2022-12-17 22:17:58', '2023-01-08 17:44:25'),
(363, 7, 1, 'gildar 10gm', '10320', 'AAMA GREEN CARE', '20', '50', '2022-12-22', '2024-02-22', NULL, '50', '2022-12-22 22:20:48', '2023-01-02 19:27:48'),
(364, 7, 1, 'Zeen 1 EC 250mg', '10321', 'Swazis', '520', '800', '2022-12-27', '2024-01-27', NULL, '54', '2022-12-27 20:13:45', '2022-12-27 20:13:45'),
(365, 7, 1, 'Happy 500gm', '10322', 'AAMA GREEN CARE', '356', '540', '2023-01-04', '2024-02-04', NULL, '20', '2023-01-04 18:27:59', '2023-01-04 18:27:59'),
(366, 7, 1, 'Flon pelas 400ml', '10323', 'Kisibid Group/Glorious', '196', '350', '2023-01-07', '2025-06-07', NULL, '240', '2023-01-07 22:39:55', '2023-01-07 22:39:55'),
(367, 7, 1, 'Flon ples 100', '10324', 'Kisibid Group/Glorious', '64', '140', '2023-01-07', '2025-01-07', NULL, '816', '2023-01-07 22:43:20', '2023-01-07 22:43:20'),
(368, 7, 1, 'kg sipahi 50ml', '10325', 'Kisibid Group/Glorious', '53', '110', '2023-01-07', '2025-01-07', NULL, '300', '2023-01-07 22:57:08', '2023-01-08 23:28:57'),
(369, 7, 1, 'Kg sipahi 400ml', '10326', 'Kisibid Group/Glorious', '264', '544', '2023-01-07', '2025-01-07', NULL, '240', '2023-01-07 23:00:00', '2023-01-08 23:30:13'),
(370, 7, 1, 'bawojet 100', '10327', 'Swazis', '90', '180', '2023-01-07', '2024-01-07', NULL, '10', '2023-01-08 01:29:28', '2023-01-08 01:29:28'),
(371, 7, 1, 'sunfightar 50ml', '10328', 'Mackdronald', '72', '115', '2023-01-18', '2024-09-18', NULL, '125', '2023-01-18 19:42:53', '2023-01-18 19:42:53'),
(372, 7, 1, 'Noin 500gm', '10329', 'Mackdronald', '564', '1050', '2023-01-18', '2024-09-18', NULL, '30', '2023-01-18 19:46:03', '2023-01-18 20:00:01'),
(373, 7, 1, 'Kg gold pius 500gm', '10330', 'Kisibid Group', '420', '775', '2023-01-19', '2026-01-19', NULL, '360', '2023-01-19 21:31:23', '2023-01-19 21:31:23'),
(374, 7, 1, 'Ascend 1kg', '10331', 'Bayer', '160', '210', '2023-02-11', '2024-04-11', NULL, '60', '2023-02-12 00:59:56', '2023-02-12 00:59:56'),
(375, 7, 1, 'seltima 500ml', '10332', 'Semco', '925', '1500', '2023-02-15', '2024-01-15', NULL, '24', '2023-02-15 20:18:06', '2023-02-15 20:18:06');

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `salary_date` varchar(255) NOT NULL,
  `salary_month` varchar(255) NOT NULL,
  `salary_year` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`id`, `employee_id`, `amount`, `salary_date`, `salary_month`, `salary_year`, `created_at`, `updated_at`) VALUES
(1, 1, '9000.00', '22/06/2022', 'June', '2022', NULL, NULL),
(2, 3, '6000.00', '15/07/2022', 'June', '2022', NULL, NULL),
(3, 2, '8000.00', '15/07/2022', 'June', '2022', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `shopName` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Md Nishad Hossain', 'tmscedu2019@gmail.com', NULL, '$2y$10$PTraPAGMTeDVAp5dKdVNhu2rboFMcE9uat8NVyzb0jV/dK2akWPBa', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_order_details`
--
ALTER TABLE `custom_order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `duepayments`
--
ALTER TABLE `duepayments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extra`
--
ALTER TABLE `extra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pos`
--
ALTER TABLE `pos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`product_code`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `custom_order_details`
--
ALTER TABLE `custom_order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `duepayments`
--
ALTER TABLE `duepayments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `extra`
--
ALTER TABLE `extra`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=390;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1135;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos`
--
ALTER TABLE `pos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1568;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=376;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
