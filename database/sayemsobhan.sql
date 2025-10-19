-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 09, 2022 at 04:48 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sayemsobhan`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) NOT NULL,
  `adtype` varchar(100) NOT NULL,
  `name` varchar(256) NOT NULL,
  `device` varchar(100) NOT NULL,
  `page` varchar(100) NOT NULL,
  `ads_positions_slug` varchar(256) DEFAULT NULL,
  `menus_id` varchar(256) DEFAULT 'all',
  `ad_condition` tinyint(1) DEFAULT NULL COMMENT '0:!=,1:==',
  `ad_order` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `ad_img` varchar(256) DEFAULT NULL,
  `landing_url` text,
  `ad_code` longtext,
  `head_code` tinytext,
  `footer_code` tinytext,
  `time_schedule` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ads_positions`
--

CREATE TABLE `ads_positions` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `slug` varchar(256) NOT NULL,
  `page` varchar(100) NOT NULL,
  `device` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `name_bangla` varchar(255) DEFAULT NULL,
  `type` varchar(100) NOT NULL DEFAULT '0' COMMENT '0: Minor\r\n1: Major\r\n2: Appreciation ',
  `cover_photo` varchar(256) DEFAULT NULL,
  `description` longtext NOT NULL,
  `order_by` int(11) NOT NULL DEFAULT '0',
  `received_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `received_from` varchar(255) NOT NULL,
  `edit_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `name`, `name_bangla`, `type`, `cover_photo`, `description`, `order_by`, `received_date`, `received_from`, `edit_at`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Person of the Year 2021-22', '', '1', '1654663442-1-copy.png', '&lt;p&gt;Bashundhara Group Managing Director Sayem Sobhan Anvir has been honoured as &amp;lsquo;Person of the Year&amp;rsquo; at an international forum for his leadership excellence for industries.&lt;/p&gt;', 0, '2022-05-31 18:00:00', 'International forum', NULL, 1, 3, 3, '2022-06-08 04:44:02', '2022-06-08 06:11:03');

-- --------------------------------------------------------

--
-- Table structure for table `become_a_members`
--

CREATE TABLE `become_a_members` (
  `id` bigint(20) NOT NULL,
  `bn_f_name` varchar(250) DEFAULT NULL,
  `bn_l_name` varchar(256) DEFAULT NULL,
  `en_f_name` varchar(256) DEFAULT NULL,
  `en_l_name` varchar(256) DEFAULT NULL,
  `divisions` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `thana` varchar(100) DEFAULT NULL,
  `guardian` varchar(256) DEFAULT NULL,
  `organization` varchar(256) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `telephone` varchar(100) DEFAULT NULL,
  `address` tinytext,
  `vat_number` varchar(100) DEFAULT NULL,
  `tin_number` varchar(100) DEFAULT NULL,
  `nid` varchar(100) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `trade_license` varchar(256) DEFAULT NULL,
  `tin_file` varchar(256) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `vat_file` varchar(256) DEFAULT NULL,
  `visiting_card_file` varchar(256) DEFAULT NULL,
  `nid_file` varchar(100) DEFAULT NULL,
  `company_file` varchar(100) DEFAULT NULL,
  `m_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `become_a_members`
--

INSERT INTO `become_a_members` (`id`, `bn_f_name`, `bn_l_name`, `en_f_name`, `en_l_name`, `divisions`, `district`, `thana`, `guardian`, `organization`, `mobile`, `telephone`, `address`, `vat_number`, `tin_number`, `nid`, `email`, `trade_license`, `tin_file`, `image`, `vat_file`, `visiting_card_file`, `nid_file`, `company_file`, `m_status`, `created_at`, `updated_at`) VALUES
(2, 'rabin', 'rabin', 'rabin', 'rabin', 'Dhaka', 'Dhaka', 'rabin', 'পিতা/স্বামীর নাম', 'rabin', '234566544', '234566543', 'rabin', '1234', '1234', '1234', 'bdrabin@gmail.com', '1644056169-Membership-form-1 copy 2.pdf', '1644056169-Membership-form-1 copy 3.pdf', '1644056169-Untitled-1-2201251602.jpg', '1644056169-Membership-form-1 copy 4.pdf', '1644056169-Membership-form-1 copy 5.pdf', '1644056169-Membership-form-1 copy 6.pdf', '1644056169-Membership-form-1.pdf', 0, '2022-02-05 10:16:09', '2022-02-05 10:16:09'),
(3, 'rabin', 'rabin', 'rabin', 'rabin', 'Dhaka', 'Dhaka', 'rabin', 'পিতা/স্বামীর নাম', 'rabin', '234566544', '234566543', 'rabin', '1234', '1234', '1234', 'bdrabin@gmail.com', '1644056193-Membership-form-1 copy 2.pdf', '1644056193-Membership-form-1 copy 3.pdf', '1644056193-Untitled-1-2201251602.jpg', '1644056193-Membership-form-1 copy 4.pdf', '1644056193-Membership-form-1 copy 5.pdf', '1644056193-Membership-form-1 copy 6.pdf', '1644056193-Membership-form-1.pdf', 0, '2022-02-05 10:16:33', '2022-02-05 10:16:33'),
(4, 'rabin', 'rabin', 'rabin', 'rabin', 'Dhaka', 'Dhaka', 'rabin', 'পিতা/স্বামীর নাম', 'rabin', '234566544', '234566543', 'rabin', '1234', '1234', '1234', 'bdrabin@gmail.com', '1644056197-Membership-form-1 copy 2.pdf', '1644056197-Membership-form-1 copy 3.pdf', '1644056197-Untitled-1-2201251602.jpg', '1644056197-Membership-form-1 copy 4.pdf', '1644056197-Membership-form-1 copy 5.pdf', '1644056197-Membership-form-1 copy 6.pdf', '1644056197-Membership-form-1.pdf', 0, '2022-02-05 10:16:37', '2022-02-05 10:16:37'),
(5, 'rabin', 'rabin', 'rabin', 'rabin', 'Dhaka', 'Dhaka', 'rabin', 'পিতা/স্বামীর নাম', 'rabin', '234566544', '234566543', 'rabin', '1234', '1234', '1234', 'bdrabin@gmail.com', '1644056200-Membership-form-1 copy 2.pdf', '1644056200-Membership-form-1 copy 3.pdf', '1644056200-Untitled-1-2201251602.jpg', '1644056200-Membership-form-1 copy 4.pdf', '1644056200-Membership-form-1 copy 5.pdf', '1644056200-Membership-form-1 copy 6.pdf', '1644056200-Membership-form-1.pdf', 0, '2022-02-05 10:16:40', '2022-02-05 10:16:40'),
(6, 'rabin', 'rabin', 'rabin', 'rabin', 'Dhaka', 'Dhaka', 'rabin', 'পিতা/স্বামীর নাম', 'rabin', '234566544', '234566543', 'rabin', '1234', '1234', '1234', 'bdrabin@gmail.com', '1644056203-Membership-form-1 copy 2.pdf', '1644056203-Membership-form-1 copy 3.pdf', '1644056203-Untitled-1-2201251602.jpg', '1644056203-Membership-form-1 copy 4.pdf', '1644056203-Membership-form-1 copy 5.pdf', '1644056203-Membership-form-1 copy 6.pdf', '1644056203-Membership-form-1.pdf', 0, '2022-02-05 10:16:43', '2022-02-05 10:16:43'),
(7, 'test name', NULL, 'test নাম', NULL, 'Chattogram', 'Bandarban', 'dsdf', '', 'btech', '01914626443', '', 'sdfsdf', '', '', '12123213121', '', '1653121710-code.png', '', '1653121710-code.png', '', '', '1653121710-code.png', '', 0, '2022-05-21 08:28:30', '2022-05-21 08:28:30');

-- --------------------------------------------------------

--
-- Table structure for table `breaking_news`
--

CREATE TABLE `breaking_news` (
  `id` bigint(20) NOT NULL,
  `text` text NOT NULL,
  `start_at` timestamp NULL DEFAULT NULL,
  `end_at` timestamp NULL DEFAULT NULL,
  `b_status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bundles`
--

CREATE TABLE `bundles` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bundles`
--

INSERT INTO `bundles` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Digital Library', 1, 3, NULL, '2022-06-07 08:59:57', '2022-06-07 08:59:57');

-- --------------------------------------------------------

--
-- Table structure for table `contributions`
--

CREATE TABLE `contributions` (
  `id` bigint(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_bangla` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source_id` int(11) NOT NULL,
  `type` tinyint(11) NOT NULL DEFAULT '1' COMMENT '1: News, 2: Gallery, 3: Bundle',
  `order_by` int(5) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: Inactive, 1: Active',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contributions`
--

INSERT INTO `contributions` (`id`, `name`, `name_bangla`, `source_id`, `type`, `order_by`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Contribution testing ssss', '', 1, 2, 0, 1, 3, 3, '2022-06-09 07:54:54', '2022-06-09 08:15:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `s_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: Inactive, 1: Active',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `title`, `page`, `file`, `s_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'SRO 144', 'Govt_Circular', 'http://local.bajus.com/storage/files/shares/SRO-144.pdf', 1, 3, 3, '2022-05-18 05:33:03', '2022-05-18 06:06:38'),
(3, 'সাধারণ সভা সর্ম্পকিত নোটিশ', 'Govt_Circular', 'http://local.bajus.com/storage/files/shares/Notice.pdf', 1, 3, 3, '2022-05-18 05:33:22', '2022-05-18 06:07:04'),
(4, 'VATSRO 239', 'Govt_Circular', 'http://local.bajus.com/storage/files/shares/VATSRO-239.pdf', 1, 3, 3, '2022-05-18 05:33:38', '2022-05-18 06:07:17'),
(5, 'SRO 151', 'Govt_Circular', 'http://local.bajus.com/storage/files/shares/SRO-151.pdf', 1, 3, 3, '2022-05-18 05:33:53', '2022-05-18 06:07:35'),
(6, 'স্বর্ণের মূল্যের বিবরণী ক্যাডমিয়াম', 'Annual_Report', 'http://local.bajus.com/storage/files/shares/Gold-kadiyam.pdf', 1, 3, 3, '2022-05-18 05:35:42', '2022-05-18 06:07:50'),
(7, 'Gold Price', 'Gold_And_SilverRate', 'http://local.bajus.com/storage/files/shares/Notice.pdf', 1, 3, 3, '2022-05-18 06:14:29', '2022-05-18 06:17:14'),
(8, 'Gold price latest', 'Gold_And_SilverRate', 'http://local.bajus.com/storage/files/shares/Gold-Price.pdf', 1, 3, NULL, '2022-05-18 06:17:36', '2022-05-18 06:17:36'),
(9, 'Become Member', 'Become_A_Member', 'http://local.bajus.com/storage/files/shares/Gold-Price.pdf', 1, 3, NULL, '2022-05-18 06:27:10', '2022-05-18 06:27:10'),
(10, 'প্রণোদনা/ঋণ সংক্রান্ত তথ্যাদি', 'Policy', 'http://local.bajus.com/storage/files/shares/Gold-Price.pdf', 1, 3, NULL, '2022-05-18 06:29:17', '2022-05-18 06:29:17'),
(11, 'Membership Form', 'Policy', 'http://local.bajus.com/storage/files/shares/Notice.pdf', 1, 3, NULL, '2022-05-18 06:29:33', '2022-05-18 06:29:33'),
(12, 'Gold Policy 2018', 'Policy', 'http://local.bajus.com/storage/files/shares/Gold-Policy-2021.pdf', 1, 3, NULL, '2022-05-18 06:29:48', '2022-05-18 06:29:48');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `name_bangla` varchar(255) DEFAULT NULL,
  `caption` text NOT NULL,
  `cover_photo` varchar(256) DEFAULT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `order_by` int(11) NOT NULL DEFAULT '0',
  `event_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `name_bangla`, `caption`, `cover_photo`, `keywords`, `description`, `order_by`, `event_date`, `edit_at`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'বঙ্গবন্ধু শেখ মুজিবুর রহমানের নামে লাইব্রেরি', 'বঙ্গবন্ধু শেখ মুজিবুর রহমানের নামে লাইব্রেরি', '', '1654750653-BD-Pratidin_2022-06-05-08-463x260.jpeg', 'digital,library', 'জাতীয় মসজিদ বায়তুল মোকাররমে জাতির জনক বঙ্গবন্ধু শেখ মুজিবুর রহমানের নামে বিশ্বমানের ডিজিটাল লাইব্রেরি করার ঘোষণা দিয়েছেন বসুন্ধরা গ্রুপের ব্যবস্থাপনা পরিচালক (এমডি) ও বায়তুল মোকাররম জাতীয় মসজিদ মুসল্লি কমিটির প্রধান উপদেষ্টা সায়েম সোবহান আনভীর।', 0, '2022-06-01 04:50:51', NULL, 1, 3, NULL, '2022-06-09 04:57:33', '2022-06-09 04:57:33');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_categories`
--

CREATE TABLE `gallery_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `type` tinytext NOT NULL,
  `g_status` tinyint(1) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gallery_categories`
--

INSERT INTO `gallery_categories` (`id`, `name`, `type`, `g_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Default Album', 'photo', 1, 1, NULL, '2022-02-06 05:02:59', '2022-02-06 05:02:59');

-- --------------------------------------------------------

--
-- Table structure for table `gold_silvers`
--

CREATE TABLE `gold_silvers` (
  `id` int(11) NOT NULL,
  `karat` varchar(250) NOT NULL,
  `text` varchar(256) DEFAULT NULL,
  `price` varchar(256) NOT NULL,
  `img` tinytext NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `g_order` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gold_silvers`
--

INSERT INTO `gold_silvers` (`id`, `karat`, `text`, `price`, `img`, `type`, `g_order`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '22', 'CADMIUM (HALLMARKED GOLD)', '6560', 'https://www.bajus.org/storage/public/news_images/photo/shares/gold.png', 1, 1, 1, 2, '2022-02-02 10:07:44', '2022-05-12 12:08:23'),
(2, '21', 'CADMIUM (HALLMARKED GOLD)', '6260', 'https://www.bajus.org/storage/public/news_images/photo/shares/TRADITIONAL METHOD PER GRAM.png', 1, 2, 1, 2, '2022-02-02 10:07:44', '2022-05-12 12:08:37'),
(3, '18', 'CADMIUM (HALLMARKED GOLD)', '5370', 'https://www.bajus.org/storage/public/news_images/photo/shares/Frame-16568-1024x741-1-768x556.png', 1, 3, 2, 2, '2022-02-24 13:11:23', '2022-05-12 12:08:47'),
(4, 'TRADITIONAL METHOD PER GRAM', 'CADMIUM (HALLMARKED GOLD)', '4475', 'https://www.bajus.org/storage/public/news_images/photo/shares/Frame-16568-1024x741-1-768x556.png', 2, 4, 2, 2, '2022-02-24 13:16:14', '2022-05-12 12:08:53'),
(5, '22', 'CADMIUM (HALLMARKED)', '130', 'https://www.bajus.org/storage/public/news_images/photo/shares/Physical-Bars_30_09_2014-4-1.png', 3, 5, 2, 2, '2022-02-24 15:21:38', '2022-05-12 13:04:01'),
(6, '21', 'CADMIUM (HALLMARKED)', '123', 'https://www.bajus.org/storage/public/news_images/photo/shares/Physical-Bars_30_09_2014-4-1.png', 3, 6, 2, 2, '2022-02-27 16:07:51', '2022-05-12 13:03:45'),
(7, '18', 'CADMIUM (HALLMARKED)', '105', 'https://www.bajus.org/storage/public/news_images/photo/shares/Physical-Bars_30_09_2014-4-1.png', 3, 7, 2, 2, '2022-02-27 16:08:36', '2022-05-12 13:03:50'),
(8, 'TRADITIONAL', 'CADMIUM', '80', 'https://www.bajus.org/storage/public/news_images/photo/shares/Physical-Bars_30_09_2014-4-1.png', 4, 8, 2, 2, '2022-02-27 16:09:05', '2022-05-12 13:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `homenews`
--

CREATE TABLE `homenews` (
  `id` int(11) NOT NULL,
  `value` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `homenews`
--

INSERT INTO `homenews` (`id`, `value`) VALUES
(1, '[\"7\",\"87\",\"85\",\"77\"]');

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE `mails` (
  `id` bigint(20) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `company` varchar(256) DEFAULT NULL,
  `message` text,
  `m_status` tinyint(1) DEFAULT NULL,
  `send_at` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mails`
--

INSERT INTO `mails` (`id`, `name`, `email`, `company`, `message`, `m_status`, `send_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'rabin', 'bdrabin@gmail.com', 'hehehe', 'ah ha hahd fsadfsadf', 1, '2022-02-19 11:35:42', 1, 1, '2022-02-19 05:35:42', '2022-02-19 06:11:34'),
(2, 'rabin', 'bdrabin@gmail.com', 'hehehe', 'ah ha hahd fsadfsadf', 1, '2022-02-19 11:35:53', 1, 1, '2022-02-19 05:35:53', '2022-02-19 08:34:45'),
(3, 'Bangladesh Jeweller’s Association (BAJUS) celebrates its President Sayem Sobhan Anvir’s birthday', 'bdrabin@gmail.com', 'hehehe', 'fd sfasdfas dfsadf sdf sdf', 1, '2022-02-19 11:36:08', 1, 2, '2022-02-19 05:36:08', '2022-05-14 16:04:32'),
(4, 'Mr. Gulzar Ahmed', 'bdrabin@gmail.com', 'hehehe', 'sddfdsfsdfs dfsdf sdf sdf safd', 0, '2022-02-19 11:42:45', 1, NULL, '2022-02-19 05:42:45', '2022-02-19 05:42:45');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `number_id` varchar(100) NOT NULL,
  `member_since` varchar(100) DEFAULT NULL,
  `central_committee_post` varchar(256) DEFAULT NULL,
  `central_committee_order` int(2) NOT NULL DEFAULT '99',
  `district_committee_post` varchar(256) DEFAULT NULL,
  `district` varchar(256) DEFAULT NULL,
  `divisions` varchar(256) DEFAULT NULL,
  `inst_name` varchar(256) DEFAULT NULL,
  `inst_name_bn` varchar(256) DEFAULT NULL,
  `inst_address` tinytext,
  `inst_address_bn` tinytext,
  `inst_trade_license` varchar(255) DEFAULT NULL,
  `inst_bin` varchar(256) DEFAULT NULL,
  `inst_tin` varchar(256) DEFAULT NULL,
  `inst_telephone` varchar(100) DEFAULT NULL,
  `inst_mobile` varchar(100) DEFAULT NULL,
  `img` varchar(256) DEFAULT NULL,
  `inst_img` varchar(256) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `blood_group` varchar(10) DEFAULT NULL,
  `name_bn` varchar(256) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `contact` varchar(256) DEFAULT NULL,
  `home_address` tinytext,
  `standing_committee` tinytext,
  `m_status` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `number_id`, `member_since`, `central_committee_post`, `central_committee_order`, `district_committee_post`, `district`, `divisions`, `inst_name`, `inst_name_bn`, `inst_address`, `inst_address_bn`, `inst_trade_license`, `inst_bin`, `inst_tin`, `inst_telephone`, `inst_mobile`, `img`, `inst_img`, `name`, `email`, `blood_group`, `name_bn`, `gender`, `contact`, `home_address`, `standing_committee`, `m_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '00002', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Khan Jewellers', 'নিউ খান জুয়েলার্স', '74, Baitul Mukarram (1st floor) Dhaka.', '৭৪, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9560651', NULL, NULL, NULL, 'Abdul Mannan Khan', NULL, NULL, 'জনাব আব্দুল মান্নান খান', 'Male', '01711536505', NULL, '{\"name\":[\"law-and-membership\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(2, '00080', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Kalpana Jewellers', 'কল্পনা জুয়েলার্স', '64, Baitul Mukarram (1st floor) Dhaka.', '৬৪, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9555885', NULL, NULL, NULL, 'Kailash Chandra Barai', NULL, NULL, 'বাবু কৈলাশ চন্দ্র বাড়ৈ', 'Male', '01817583947', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(3, '00003', NULL, 'executive-member', 99, NULL, 'Dhaka', 'Dhaka', 'Lily Jewellers', 'লিলি জুয়েলার্স', '22, Baitul Mukarram (1st floor) Dhaka.', '২২, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9555836', NULL, 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Bablu Dutta.jpg', NULL, 'Bablu Dutta', NULL, NULL, 'বাবু বাবলু দত্ত', NULL, '01712166162', NULL, '{\"name\":[\"pricing-and-price-monitoring\",null],\"post\":[\"member-secretary\",null]}', 1, 1, 2, '2022-05-14 10:13:30', NULL),
(4, '00004', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Prime Jewellers', 'প্রাইম জুয়েলার্স', '13, Baitul Mukarram (Ground floor) Dhaka.', '১৩, বায়তুল মোকাররম (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9550758', NULL, NULL, NULL, 'Shankar Saha', NULL, NULL, 'বাবু শংকর সাহা', 'Male', '01715314670', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(5, '00005', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sananda Jewellers Pvt. Ltd.', 'সানন্দা জুয়েলার্স প্রাঃ লিঃ', '49-51, Baitul Mukarram (Ground Floor) Dhaka.', '৪৯-৫১, বায়তুল মোকাররম (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9555851', NULL, NULL, NULL, 'Ranjit Ghosh', NULL, NULL, 'বাবু রনজিত ঘোষ', 'Male', '01715175165', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(6, '00007', '', 'assistant-secretary', 99, '', 'Dhaka', 'Dhaka', 'Baishakhi Jewellers', 'বৈশাখী জুয়েলার্স', '70, Baitul Mukarram (1st floor) Dhaka.', '৭০, বায়তুল মোকাররম (২য়তলা) ঢাকা।', '', '', '', '9560750', '', 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Narayan Chandra Dey.jpg', NULL, 'Narayan Chandra Dey', '', '', 'নারায়ন চন্দ্র দে', '', '01714047762', '', '{\"name\":[\"exhibition-tread-and-event-management\",null],\"post\":[\"vice-chairman\",null]}', 1, 1, 2, '2022-05-14 10:13:30', '2022-05-16 15:42:40'),
(7, '00010', NULL, 'executive-member', 99, NULL, 'Dhaka', 'Dhaka', 'Sajni Jewellers', 'সাজনী জুয়েলার্স', '2/A, Baitul Mukarram (1st floor) Dhaka.', '২/এ, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9567214', NULL, 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Iqbal Uddin.jpg', NULL, 'Hazi Iqbal Uddin', NULL, NULL, 'হাজী ইকবাল উদ্দিন', NULL, '01711564940', NULL, '{\"name\":[null,null],\"post\":[null,null]}', 1, 1, 2, '2022-05-14 10:13:30', NULL),
(8, '00011', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Synthia Jewellers', 'সিনথিয়া জুয়েলার্স', '17, Baitul Mukarram (1st floor) Dhaka.', '১৭, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9564365', NULL, NULL, NULL, 'Kazi Tuhura Rashid', NULL, NULL, 'কাজী তুহুরা রশিদ', 'Male', '01771992509', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(9, '00012', NULL, 'executive-member', 99, NULL, 'Dhaka', 'Dhaka', 'Rahman Jewellers', 'রহমান জুয়েলার্স', '72/A, Baitul Mukarram (1st Floor) Dhaka.', '৭২/এ, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9559277', NULL, 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Md Mojibor Rahman Khan.jpg', NULL, 'Md. Mojibar Rahman Khan', NULL, NULL, 'জনাব মোঃ মজিবর রহমান খান', NULL, '01713013299', NULL, '{\"name\":[\"tariff-and-taxation\",null],\"post\":[\"member\",null]}', 1, 1, 2, '2022-05-14 10:13:30', NULL),
(10, '00013', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Shahnaz Jewellers', 'শাহানাজ জুয়েলার্স', '17, Baitul Mukarram (1st floor) Dhaka.', '১৭, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9551222', NULL, NULL, NULL, 'S. Anwar Hossain', NULL, NULL, 'জনাব এস, আনোয়ার হোসেন', 'Male', '01755502084', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(11, '00014', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Hritu Jewellers', 'ঋতু জুয়েলার্স', '12 / B, Baitul Mukarram (1st floor) Dhaka.', '১২/বি, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '7115042', NULL, NULL, NULL, 'Kinkar Saha', NULL, NULL, 'বাবু কিংকর সাহা', 'Male', '01711991238', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(12, '00015', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Swarnali Jewellers', 'স্বর্ণালী জুয়েলার্স', '79, Baitul Mukarram (Ground floor) Dhaka.', '৭৯, বায়তুল মোকাররম (নীচ তলা) ঢাকা।', NULL, NULL, NULL, '9552703', NULL, NULL, NULL, 'Md. Shahjahan Akand', NULL, NULL, 'জনাব মোঃ শাহজাহান আকন্দ', 'Male', '01819248680', NULL, '{\"name\":[\"law-and-membership\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(13, '00017', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Al Amin Jewellers', 'আল আমিন জুয়েলার্স', '48, Baitul Mukarram (1st floor) Dhaka.', '৪৮, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9558361', NULL, NULL, NULL, 'Md. Ayub Ali', NULL, NULL, 'জনাব মোঃ আইয়ুব আলী', 'Male', '01715333644', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(14, '00018', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'M M Jewellers', 'এম এম জুয়েলার্স', '60, Baitul Mukarram (1st floor) Dhaka.', '৬০, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9577842', NULL, NULL, NULL, 'Shah Md. Moazzem Hossain (Matin)', NULL, NULL, 'শাহ মোঃ মোয়াজ্জেম হোসেন (মতিন)', 'Male', '01813328556', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(15, '00020', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Riya Jewellers', 'রিয়া জুয়েলার্স', '5, Baitul Mukarram (1st floor) Dhaka.', '৫, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9585918', NULL, NULL, NULL, 'Md. Ruhul Amin', NULL, NULL, 'জনাব মোঃ রুহুল আমিন', 'Male', '01788877549', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(16, '00021', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Alvi Jewellers', 'আলভী জুয়েলার্স', '23, Baitul Mukarram (1st floor) Dhaka.', '২৩, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9560747', NULL, NULL, NULL, 'Mostafa Kamal', NULL, NULL, 'জনাব মোস্তফা কামাল', 'Male', '01824891824', NULL, '{\"name\":[\"exhibition-tread-and-event-management\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(17, '00022', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Annonda Jewellers', 'নিউ আনন্দ জুয়েলার্স', '62, Baitul Mukarram (Ground floor) Dhaka.', '৬২, বায়তুল মোকাররম (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9563334', NULL, NULL, NULL, 'Hazi Mohammad Ullah Bhuiyan', NULL, NULL, 'হাজী মোহাম্মদ উল্যাহ ভূইয়া', 'Male', '01552466217', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(18, '00023', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Bismillah Jewellers', 'বিস্মিল্লাহ জুয়েলার্স', '9, Baitul Mukarram (1st floor) Dhaka.', '৯, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9515978', NULL, NULL, NULL, 'Md. Monir Hossain', NULL, NULL, 'জনাব মোঃ মনির হোসেন', 'Male', '01715025301', NULL, '{\"name\":[\"exhibition-tread-and-event-management\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(19, '00024', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Famous Jewellers Ltd.', 'ফেমাস জুয়েলার্স লিঃ', '7, Baitul Mukarram (Ground floor) Dhaka.', '৭, বায়তুল মোকাররম (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9554415', NULL, NULL, NULL, 'Md. Ayub Khan', NULL, NULL, 'জনাব মোঃ আইয়ুব খাঁন', 'Male', '01817511766', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(20, '00025', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Ekta Jewellers', 'একতা জুয়েলার্স', '76, Baitul Mukarram (1st floor) Dhaka.', '৭৬, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nuruddin Imran', NULL, NULL, 'জনাব নুরুউদ্দিন ইমরান', 'Male', '01711155542', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(21, '00026', NULL, 'executive-member', 99, NULL, 'Dhaka', 'Dhaka', 'Rajnigandha Jewellers Ltd.', 'রজনীগন্ধা জুয়েলার্স লিঃ', '55, Baitul Mukarram (1st floor) Dhaka.', '৫৫, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9555849', NULL, 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Md Shahidul Islam.jpg', NULL, 'Md. Shahidul Islam', NULL, NULL, 'জনাব মোঃ শহিদুল ইসলাম', NULL, '01713063630', NULL, '{\"name\":[\"research-and-development\",null],\"post\":[\"vice-chairman\",null]}', 1, 1, 2, '2022-05-14 10:13:30', NULL),
(22, '00027', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Amina Jewellers', 'আমিনা জুয়েলার্স', '21, Baitul Mukarram (1st floor) Dhaka.', '২১, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9553961', NULL, NULL, NULL, 'Khandaker Ashraful Alam', NULL, NULL, 'জনাব খন্দকার আশরাফুল আলম', 'Male', '01913488455', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(23, '00028', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Unique Jewellers', 'ইউনিক জুয়েলার্স', '43, Baitul Mukarram (1st floor) Dhaka.', '৪৩, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9563273', NULL, NULL, NULL, 'S. Helal Uddin', NULL, NULL, 'জনাব এস, হেলাল উদ্দিন', 'Male', '01711066621', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(24, '00029', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Mita Jewellers', 'মিতা জুয়েলার্স', '19, Baitul Mukarram (Ground floor) Dhaka.', '১৯, বায়তুল মোকাররম (নীচতলা) ঢাকা।', NULL, NULL, NULL, '7169496', NULL, NULL, NULL, 'Md. Abu Bakkar Siddique', NULL, NULL, 'জনাব মোঃ আবু বক্কর সিদ্দিক', 'Male', '01554354441', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(25, '00032', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Khokon Jewellers', 'খোকন জুয়েলার্স', '11, Baitul Mukarram (Ground floor) Dhaka.', '১১, বায়তুল মোকাররম (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9560993', NULL, NULL, NULL, 'Md. Jahangir Alam Khokon', NULL, NULL, 'জনাব মোঃ জাহাঙ্গীর আলম খোকন', 'Male', '01817050422', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(26, '00033', '', 'vice-president', 99, '', 'Dhaka', 'Dhaka', 'L. Rahman Jewellers', 'এল, রহমান জুয়েলার্স', '65, Baitul Mukarram (Ground floor) Dhaka.', '৬৫, বায়তুল মোকাররম (নীচতলা) ঢাকা।', '', '', '', '9563454', '', 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Md Anisur Rahman.jpg', NULL, 'Md. Anisur Rahman', '', '', 'জনাব মোঃ আনিসুর রহমান', '', '01730302077', '', '{\"name\":[\"banking-and-financial-service\",null],\"post\":[\"member\",null]}', 1, 1, 2, '2022-05-14 10:13:30', '2022-05-16 15:32:57'),
(27, '00034', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Licon Jewellers', 'লিকন জুয়েলার্স', '27, Baitul Mukarram (1st floor) Dhaka.', '২৭, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9555831', NULL, NULL, NULL, 'Gaur Saha', NULL, NULL, 'বাবু গৌর সাহা', 'Male', '01711523866', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(28, '00035', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Hera Jewellers', 'হীরা জুয়েলার্স', '34, Baitul Mukarram (1st floor) Dhaka.', '৩৪, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9561916', NULL, NULL, NULL, 'Niaz Akbar Khan', NULL, NULL, 'জনাব নিয়াজ আকবর খান', 'Male', '01847005958', NULL, '{\"name\":[\"young-entrepreneurs\"], \"post\":[\"vice-chairman\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(29, '00036', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'S.P Jewellers', 'এস, পি জুয়েলার্স', '1/B, Baitul Mukarram (1st floor) Dhaka.', '১/বি, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9552020', NULL, NULL, NULL, 'Rahul Saha', NULL, NULL, 'বাবু রাহুল সাহা', 'Male', '01711905407', NULL, '{\"name\":[\"media-&-communication-and-social-affairs\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(30, '00038', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Uttara Jewellers', 'উত্তরা জুয়েলার্স', '35,35/B, Baitul Mukarram (1st Floor) Dhaka.', '৩৫,৩৫/বি, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9565050', NULL, NULL, NULL, 'Jagadish Chandra Sarkar', NULL, NULL, 'বাবু জগদীশ চন্দ্র সরকার', 'Male', '01840444880', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(31, '00039', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Al-Islam Jewellers', 'নিউ আল-ইসলাম জুয়েলার্স', '41/A, Baitul Mukarram (Ground Floor) Dhaka.', '৪১/এ, বায়তুল মোকাররম (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9515284', NULL, NULL, NULL, 'Tanvir Rahman', NULL, NULL, 'জনাব তানভীর রহমান', 'Male', '01819244464', NULL, '{\"name\":[\"exhibition-tread-and-event-management\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(32, '00041', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'M. Ahmed Jewellers', 'এম, আহম্মদ জুয়েলার্স', '58, Baitul Mukarram (Ground floor) Dhaka.', '৫৮, বায়তুল মোকাররম (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9585727', NULL, NULL, NULL, 'Md. Shakhawat Hossain Mazumder', NULL, NULL, 'জনাব মোঃ শাখাওয়াত হোসেন মজুমদার', 'Male', '01712054435', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(33, '00042', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Salma Jewellers', 'সালমা জুয়েলার্স', '58, Baitul Mukarram (1st floor) Dhaka.', '৫৮, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9583592', NULL, NULL, NULL, 'Md. Badiuzzaman', NULL, NULL, 'জনাব মোঃ বদিউজ্জামান', 'Male', '01711934338', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(34, '00043', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Jhalak Jewellers', 'ঝলক জুয়েলার্স', '62, Baitul Mukarram (1st floor) Dhaka.', '৬২, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9552640', NULL, NULL, NULL, 'Jhalak Karmakar', NULL, NULL, 'বাবু ঝলক কর্মকার', 'Male', '01712715359', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(35, '00044', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Alvi Jewellers', 'নিউ আলভী জুয়েলার্স', '13, Baitul Mukarram (1st floor) Dhaka.', '১৩, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9554371', NULL, NULL, NULL, 'Nusrat Nahid Kamal', NULL, NULL, 'মিসেস নুসরাত নাহিদ কামাল', 'Female', '01847076937', NULL, '{\"name\":[\"women-affairs\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(36, '00045', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Mukta Jewellers', 'মুক্তা জুয়েলার্স', '68, Baitul Mukarram (1st floor) Dhaka.', '৬৮, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9552320', NULL, NULL, NULL, 'Biswajit Mandal', NULL, NULL, 'বাবু বিশ্বজিৎ মন্ডল', 'Male', '01822718111', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(37, '00046', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Al Rifat Jewellers', 'আল রিফাত জুয়েলার্স', '9/A, Baitul Mukarram (Ground Floor) Dhaka.', '৯/এ, বায়তুল মোকাররম (নীচতলা) ঢাকা।', NULL, NULL, NULL, '7162398', NULL, NULL, NULL, 'Selima Begum', NULL, NULL, 'মিসেস সেলিমা বেগম', 'Female', '01819417861', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(38, '00048', NULL, 'vice-president', 99, NULL, 'Dhaka', 'Dhaka', 'The Apan Jewellers', 'দি আপন জুয়েলার্স', '47, Baitul Mukarram (Ground floor) Dhaka.', '৪৭, বায়তুল মোকাররম (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9555867', NULL, 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Gulzar Ahmed.jpg', NULL, 'Gulzar Ahmed', NULL, NULL, 'জনাব গুলজার আহমেদ', 'Male', '01713046578', NULL, '{\"name\":[\"banking-and-financial-service\",null],\"post\":[\"chairman\",null]}', 1, 1, 2, '2022-05-14 10:13:30', NULL),
(39, '00049', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Apan Diamond House', 'আপন ডায়মন্ড হাউস', '31,31 / B, Baitul Mukarram (1st Floor) Dhaka.', '৩১,৩১/বি, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Azad Ahmed', NULL, NULL, 'জনাব আজাদ আহমেদ', 'Male', '01714687114', NULL, '{\"name\":[\"young-entrepreneurs\"], \"post\":[\"chairman\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(40, '00050', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Stone Jewellers', 'স্টোন জুয়েলার্স', '46, Baitul Mukarram (1st floor) Dhaka.', '৪৬, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9558659', NULL, NULL, NULL, 'Bishwanath Ghosh', NULL, NULL, 'বাবু বিশ্বনাথ ঘোষ', 'Male', '01911399735', NULL, '{\"name\":[\"pricing-and-price-monitoring\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(41, '00051', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Taiyiba Jewellers', 'তাইয়্যিবা জুয়েলার্স', '49, Baitul Mukarram (1st floor) Dhaka.', '৪৯, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9551814', NULL, NULL, NULL, 'Md. Selim', NULL, NULL, 'জনাব মোঃ সেলিম', 'Male', '01552579351', NULL, '{\"name\":[\"media-&-communication-and-social-affairs\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(42, '00052', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Aheli Jewellers', 'আহেলী জুয়েলার্স', '19, Baitul Mukarram (1st floor) Dhaka.', '১৯, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9559464', NULL, NULL, NULL, 'Mir Khaled Hossain (Babu)', NULL, NULL, 'জনাব মীর খালেদ হোসেন (বাবু)', 'Male', '01711541744', NULL, '{\"name\":[\"tariff-and-taxation\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(43, '00053', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Matri James Jewellers & James Stone', 'মাতৃ জেমস জুয়েলার্স এন্ড জেমস স্টোন', '4, Baitul Mukarram (1st floor) Dhaka.', '৪, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '7162688', NULL, NULL, NULL, 'M. Kamruzzaman', NULL, NULL, 'জনাব এম, কামরুজ্জামান', 'Male', '01711530174', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(44, '00054', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Konika Jewellers', 'কনিকা জুয়েলার্স', '1/D, Baitul Mukarram (1st floor) Dhaka.', '১/ডি, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '7169895', NULL, NULL, NULL, 'Sanjay Poddar', NULL, NULL, 'বাবু সঞ্জয় পোদ্দার', 'Male', '01711826939', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(45, '00055', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Al Hamra Jewellers', 'আল হামরা জুয়েলার্স', '73, Baitul Mukarram (1st floor) Dhaka.', '৭৩, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Faruk Ahmed', NULL, NULL, 'জনাব মোঃ ফারুক আহাম্মদ', 'Male', '01712941284', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(46, '00056', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Fahim Jewellers', 'ফাহিম জুয়েলার্স', '66, Baitul Mukarram (1st floor) Dhaka.', '৬৬, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9555829', NULL, NULL, NULL, 'Fayez Ahmed', NULL, NULL, 'জনাব ফয়েজ আহম্মেদ', 'Male', '01711561847', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(47, '00057', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Baitul Jewellers', 'বায়তুল জুয়েলার্স', '16, Baitul Mukarram (1st floor) Dhaka.', '১৬, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9557998', NULL, NULL, NULL, 'Teharun Nahar Beauty', NULL, NULL, 'মিসেস তেহারুন নাহার বিউটি', 'Female', '01711538532', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(48, '00059', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Naz Jewellers', 'নিউ নাজ জুয়েলার্স', '19, Baitul Mukarram (1st floor) Dhaka.', '১৯, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9569018', NULL, NULL, NULL, 'Bholanath Ghosh', NULL, NULL, 'বাবু ভোলানাথ ঘোষ', 'Male', '01914258387', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(49, '00060', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Monikanchan Jewellers', 'মনিকাঞ্চন জুয়েলার্স', '75, Baitul Mukarram (1st floor) Dhaka.', '৭৫, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9571821', NULL, NULL, NULL, 'Shri Gouranga Chandra Paul', NULL, NULL, 'শ্রী গৌরাঙ্গ চন্দ্র পাল', 'Male', '01718264052', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(50, '00061', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Safa Jewellers', 'সাফা জুয়েলার্স', '12/A, Baitul Mukarram (1st floor) Dhaka.', '১২/এ, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '7112383', NULL, NULL, NULL, 'Md. Anwar Hossain', NULL, NULL, 'জনাব মোঃ আনোয়ার হোসেন', 'Male', '01819484070', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(51, '00062', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Happy Jewellers', 'হ্যাপি জুয়েলার্স', '54, Baitul Mukarram (1st floor) Dhaka.', '৫৪, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9555852', NULL, NULL, NULL, 'Lal Basak', NULL, NULL, 'বাবু লাল বসাক', 'Male', '01720091183', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(52, '00063', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Raj Jewellers', 'রাজ জুয়েলার্স', '29, Baitul Mukarram (1st floor) Dhaka.', '২৯, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9555837', NULL, NULL, NULL, 'Nesar Ahmed', NULL, NULL, 'জনাব নেসার আহমেদ', 'Male', '01711986310', NULL, '{\"name\":[\"foreign-tread-and-market-development\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(53, '00065', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Dhaka Jewellers', 'ঢাকা জুয়েলার্স', '32, Baitul Mukarram (1st floor) Dhaka.', '৩২, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9555857', NULL, NULL, NULL, 'Amit Kumar Ghosh', NULL, NULL, 'বাবু অমিত কুমার ঘোষ', 'Male', '01817099031', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(54, '00066', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Paragon Jewellers', 'প্যারাগন জুয়েলার্স', '05, Baitul Mukarram (Ground floor) Dhaka.', '০৫, বায়তুল মোকাররম (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9560431', NULL, NULL, NULL, 'Md. Sirajul Islam', NULL, NULL, 'জনাব মোঃ সিরাজুল ইসলাম', 'Male', '01712113271', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(55, '00067', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Annie Jewellers', 'আন্্নি জুয়েলার্স', '19, Baitul Mukarram (Ground floor) Dhaka.', '১৯, বায়তুল মোকাররম (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9557829', NULL, NULL, NULL, 'Jahidul Mahmud', NULL, NULL, 'জনাব জাহিদুল মাহমুদ', 'Male', '01819279953', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(56, '00068', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Deepa Jewellers', 'দীপা জুয়েলার্স', '21, Baitul Mukarram (Ground floor) Dhaka.', '২১, বায়তুল মোকাররম (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9557829', NULL, NULL, NULL, 'Manjurul Haque Khan', NULL, NULL, 'জনাব মনজুরুল হক খান', 'Male', '01711536990', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(57, '00069', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Smriti Jewellers', 'দি স্মৃতি জুয়েলার্স', '41, Baitul Mukarram (1st floor) Dhaka.', '৪১, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9555861', NULL, NULL, NULL, 'Shyamal Karmakar', NULL, NULL, 'বাবু শ্যামল কর্মকার', 'Male', '01715161299', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(58, '00071', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Mona Jewellers Co.', 'মোনা জুয়েলার্স কোং', '28, Baitul Mukarram (1st floor) Dhaka.', '২৮, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9555418', NULL, NULL, NULL, 'Kazi Shahjahan Hossain', NULL, NULL, 'জনাব কাজী শাহজাহান হোসেন', 'Male', '01816594037', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(59, '00072', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Amin Jewellers', 'আমিন জুয়েলার্স', '77, Baitul Mukarram (Ground floor) Dhaka.', '৭৭, বায়তুল মোকাররম (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9555871', NULL, NULL, NULL, 'Kazi Aminul Islam', NULL, NULL, 'জনাব কাজী আমিনুল ইসলাম', 'Male', '01711281193', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(60, '00073', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Amin Jewellers Ltd.', 'আমিন জুয়েলার্স লিঃ', '73, Baitul Mukarram, (Ground floor) Dhaka.', '৭৩, বায়তুল মোকাররম (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9555873', NULL, NULL, NULL, 'Kazi Sirajul Islam', NULL, NULL, 'জনাব কাজী সিরাজুল ইসলাম', 'Male', '01713205778', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(61, '00074', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Nibir Jewellers', 'নিবিড় জুয়েলার্স', '4/A, Baitul Mukarram (1st floor) Dhaka.', '৪/এ, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Awlad Hossain', NULL, NULL, 'জনাব মোঃ আওলাদ হোসেন', 'Male', '01711635817', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(62, '00076', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Shilpi Jewellers', 'শিল্পী জুয়েলার্স', '39, Baitul Mukarram (1st floor) Dhaka.', '৩৯, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9551973', NULL, NULL, NULL, 'Shankar Das', NULL, NULL, 'বাবু শংকর দাস', 'Male', '01711531667', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(63, '00077', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Bulbul Jewellers', 'বুলবুল জুয়েলার্স', '3, Baitul Mukarram (Ground floor) Dhaka.', '৩, বায়তুল মোকাররম (নীচতলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sultana Razia', NULL, NULL, 'মিসেস সুলতানা রাজিয়া', 'Female', '01911400656', NULL, '{\"name\":[\"women-affairs\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(64, '00079', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Venus Jewellers Ltd.', 'ভেনাস জুয়েলার্স লিঃ', '52, Baitul Mukarram (1st floor) Dhaka.', '৫২, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9565100', NULL, NULL, NULL, 'Biplob Malakar', NULL, NULL, 'বাবু বিপ্লব মালাকার', 'Male', '01711560261', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(65, '00001', '', '', 90, '', 'Dhaka', 'Dhaka', 'Venus Jewellers Ltd.', 'ভেনাস জুয়েলার্স লিঃ', '33/B, Baitul Mukarram (1st floor) Dhaka.', '৩৩/বি, বায়তুল মোকাররম (২য়তলা) ঢাকা।', '', '', '', '9555846', '', '', NULL, 'Ganga Charan Malakar', '', '', 'বাবু গঙ্গা চরণ মালাকার', 'Male', '01711530687', '', '{\"name\":[null],\"post\":[null]}', 1, 1, 3, '2022-05-14 10:13:30', '2022-05-25 09:08:35'),
(66, '00081', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Manik Jewellers', 'নিউ মানিক জুয়েলার্স', '57, Baitul Mukarram (1st floor) Dhaka.', '৫৭, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9558604', NULL, NULL, NULL, 'Shikha Rani Sarkar', NULL, NULL, 'শিখা রানী সরকার', 'Male', '01732301162', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(67, '00083', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Almas Jewellers Ltd.', 'আলমাস জুয়েলার্স লিঃ', '31, Baitul Mukarram (Ground floor) Dhaka.', '৩১, বায়তুল মোকাররম (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9555705', NULL, NULL, NULL, 'Bhajan Bhattacharya', NULL, NULL, 'বাবু ভজন ভট্টাচার্য্য', 'Male', '01741381223', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(68, '00087', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Ananya Jewellers', 'অনন্যা জুয়েলার্স', '59, Baitul Mukarram (1st floor), Dhaka.', '৫৯, বায়তুল মোকাররম (২য়তলা), ঢাকা।', NULL, NULL, NULL, '9586116', NULL, NULL, NULL, 'Kala Chan Basak', NULL, NULL, 'বাবু কালা চাঁন বসাক', 'Male', '01741463463', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(69, '00088', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Gems World', 'জেমস ওয়ার্ল্ড', '14, Baitul Mukarram (1st floor), Dhaka.', '১৪, বায়তুল মোকাররম (২য়তলা), ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Rajab Ali Phathan', NULL, NULL, 'জনাব মোঃ রজ্জব আলী পাঠান', 'Male', '01711544825', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(70, '00091', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Al-Amin D Showroom', 'নিউ আল-আমিন ডি শোরুম', '55, Baitul Mukarram (Ground floor) Dhaka.', '৫৫, বায়তুল মোকাররম (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9588255', NULL, NULL, NULL, 'Md. Shah Kabir', NULL, NULL, 'জনাব মোঃ শাহ্ কবির', 'Male', '01917960305', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(71, '00092', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Bashundhara Jewellers', 'বসুন্ধরা জুয়েলার্স', '18, Baitul Mukarram (1st floor) Dhaka.', '১৮, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shaon Ahmed Chowdhury', NULL, NULL, 'জনাব শাওন আহমেদ চৌধুরী', 'Male', '01714209002', NULL, '{\"name\":[\"foreign-tread-and-market-development\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(72, '00094', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Kunjo Jewellers', 'কুঞ্জ জুয়েলার্স', '53/A, Baitul Mukarram (1st Floor) Dhaka.', '৫৩/এ, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sumon Chandra Dey', NULL, NULL, 'বাবু সুমন চন্দ্র দে', 'Male', '01724616576', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(73, '00096', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Al-Arafat Jewellers', 'আল-আরাফাত জুয়েলার্স', '18, Baitul Mukarram (1st floor) Dhaka.', '১৮, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9565417', NULL, NULL, NULL, 'Md. Shahin Ahmed Chowdhury', NULL, NULL, 'জনাব মোঃ শাহিন আহমেদ চৌধুরী', 'Male', '01726965555', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(74, '00047', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sharmin Jewellers', 'শারমীন জুয়েলার্স', '67, Baitul Mukarram (Ground floor) Dhaka.', '৬৭, বায়তুল মোকাররম (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9555872', NULL, 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Enamul Haque Khan.jpeg', NULL, 'Enamul Haque Khan', NULL, NULL, 'জনাব এনামুল হক খান', NULL, '01819410891', NULL, '{\"name\":[\"anti-smuggling-and-law-enforcement\",null],\"post\":[\"chairman\",null]}', 1, 1, 2, '2022-05-14 10:13:30', NULL),
(75, '00097', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Urvashi Jewellers', 'উর্বশী জুয়েলার্স', '47, Baitul Mukarram (1st floor) Dhaka.', '৪৭, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shadhan Basak', NULL, NULL, 'বাবু সাধন বসাক', 'Male', '01819422002', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(76, '00098', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Grameen Jewellers Ltd.', 'গ্রামীন জুয়েলার্স লিঃ', '15, Baitul Mukarram (Ground floor) Dhaka.', '১৫, বায়তুল মোকাররম (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9556658', NULL, NULL, NULL, 'Dr. Dilip Roy', NULL, NULL, 'ডাঃ দিলীপ রায়', 'Male', '01914392395', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(77, '00099', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Ruby Jewellers', 'নিউ রুবি জুয়েলার্স', '66, Baitul Mukarram (1st floor) Dhaka.', '৬৬, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mohammad Akram Sayed', NULL, NULL, 'জনাব মোহাম্মদ আকরাম সাইদ', 'Male', '01712226181', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(78, '00100', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Khan Jewellers', 'খান জুয়েলার্স', '2, Baitul Mukarram (1st floor) Dhaka.', '২, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9513950', NULL, NULL, NULL, 'Md. Mosharraf Hossain Khan', NULL, NULL, 'জনাব মোঃ মোশারফ হোসেন খান', 'Male', '01711460803', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(79, '00101', NULL, 'general-secretary', 99, NULL, 'Dhaka', 'Dhaka', 'Diamond World', 'ডায়মন্ড ওয়ার্ল্ড', '27, Baitul Mukarram (1st floor) Dhaka.', '২৭, বায়তুল মোকাররম (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Dilip Kumar Agarwala.jpeg', NULL, 'Dilip Kumar Agarwala', NULL, NULL, 'বাবু দিলীপ কুমার আগরওয়ালা', NULL, '01711549640', NULL, '{\"name\":[null,null],\"post\":[null,null]}', 1, 1, 2, '2022-05-14 10:13:30', NULL),
(80, '00672', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Ila Jewellers', 'ইলা জুয়েলার্স', '62/A, Baitul Mukarram (1st floor) Dhaka.', '৬২/এ, বায়তুল মোকাররম (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Biswajit Basak', NULL, NULL, 'বাবু বিশ্বজিৎ বসাক', 'Male', '01822524922', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(81, '00672', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Gold Palace & Diamond Jewellery', 'ইলা জুয়েলার্স', '27, Baitul Mukarram (1st floor) Dhaka.', '৬২/এ, বায়তুল মোকাররম (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sushanto Kiriti', NULL, NULL, 'বাবু বিশ্বজিৎ বসাক', 'Male', '01914979559', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(82, '00677', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Gold House', 'গোল্ড হাউজ', '15/A, Baitul Mukarram (1st floor) Dhaka.', '১৫/এ, বায়তুল মোকাররম (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Enamul Haque Khan', NULL, NULL, 'জনাব এনামুল হক খান', 'Male', '01621111110', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(83, '00679', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Diamond Room', 'দি ডায়মন্ড রুম', '11/A, Baitul Mukarram (1st floor) Dhaka.', '১১/এ, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Saidul Islam', NULL, NULL, 'জনাব মোঃ সাইদুল ইসলাম', 'Male', '01796590777', NULL, '{\"name\":[\"young-entrepreneurs\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(84, '00680', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Aparupa Jewellers', 'অপরূপা জুয়েলার্স', '63/A, Baitul Mukarram (1st Floor) Dhaka.', '৬৩/এ, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Khandaker Rafiqul Alam', NULL, NULL, 'জনাব খন্দকার রফিকুল আলম', 'Male', '01825822174', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(85, '00684', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Sharmin Jewellers', 'নিউ শারমীন জুয়েলার্স', '53, Baitul Mukarram (Ground floor) Dhaka', '৫৩, বায়তুল মোকাররম (নীচতলা) ঢাকা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shahana Begum', NULL, NULL, 'মিসেস শাহানা বেগম', 'Female', '01911342243', NULL, '{\"name\":[\"women-affairs\"], \"post\":[\"member-secretary\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(86, '00687', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Takbir Jewellers', 'তাকবীর জুয়েলার্স', '66, Baitul Mukarram (1st floor) Dhaka.', '৬৬, বায়তুল মোকাররম (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Fahad bin Sayed', NULL, NULL, 'জনাব ফাহাদ বিন সাঈদ', 'Male', '01712700035', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(87, '00701', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Fariha Jewellers', 'ফারিহা জুয়েলার্স', '24, Baitul Mukarram (1st floor) Dhaka.', '২৪, বায়তুল মোকাররম (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kamrul Hasan', NULL, NULL, 'জনাব কামরুল হাসান', 'Male', '01756712228', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(88, '00702', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Mina Gold Jewellers', 'মিনা গোল্ড জুয়েলার্স', '7, Baitul Mukarram (1st floor) Dhaka.', '৭, বায়তুল মোকাররম (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Salam', NULL, NULL, 'জনাব মোঃ ছালাম', 'Male', '01745922769', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(89, '00708', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Square Jewellers', 'স্কয়ার জুয়েলার্স', '20, Baitul Mukarram (1st floor) Dhaka.', '২০, বায়তুল মোকাররম (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Hedayetul Islam', NULL, NULL, 'জনাব মোঃ হেদায়েতুল ইসলাম', 'Male', '01712713107', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(90, '00718', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Silver Touch Jewellers', 'সিলভার টাচ জুয়েলার্স', '67/4/A, Purana Paltan, Dhaka.', '৬৭/৪/এ, পুরানা পল্টন, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Zakaria', NULL, NULL, 'জনাব মোঃ জাকারিয়া', 'Male', '01717550052', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(91, '00719', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Kalpataru Jewellers', 'কল্পতরু জুয়েলার্স', '59, Baitul Mukarram (Ground floor) Dhaka.', '৫৯, বায়তুল মোকাররম (নীচ তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Habibur Rahman Sohel', NULL, NULL, 'জনাব হাবিবুর রহমান সোহেল', 'Male', '01784467355', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(92, '00746', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'khalyan Jewellers', 'কল্যাণ জুয়েলার্স', '9/A, Baitul Mukarram (1st floor) Dhaka.', '৯/এ, বায়তুল মোকাররম (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Mizanur Rahman', NULL, NULL, 'জনাব মোঃ মিজানুর রহমান', 'Male', '01741564092', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(93, '00748', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Nurani Jewellers', 'নুরানী জুয়েলার্স', '56/A Baitul Mukarram (1st floor) Dhaka.', '৫৮/এ বায়তুল মোকাররম (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Monir Hossain', NULL, NULL, 'জনাব মোঃ মনির হোসেন', 'Male', '01785953278', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(94, '00752', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Zam Zam Jewellers', 'জম জম জুয়েলার্স', '48/A, Baitul Mukarram (1st floor) Dhaka.', '৪৮/এ, বায়তুল মোকাররম (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mizanur Rahman', NULL, NULL, 'জনাব মিজানুর রহমান', 'Male', '01902608574', NULL, '{\"name\":[\"tariff-and-taxation\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(95, '00752', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Anas Jewellers', 'জম জম জুয়েলার্স', '35, Baitul Mukarram (1st floor) Dhaka', '৪৮/এ, বায়তুল মোকাররম (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kazi Nazrul Islam', NULL, NULL, 'জনাব মিজানুর রহমান', 'Male', '01759131322', NULL, '{\"name\":[\"tariff-and-taxation\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(96, '00084', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Chandni Jewellers', 'নিউ চাঁদনী জুয়েলার্স', '13/A, Baitul Mukarram (1st floor) Dhaka.', '১৩/এ, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Tajul Islam Khandaker', NULL, NULL, 'জনাব মোঃ তাজুল ইসলাম খন্দকার', 'Male', '01711138508', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(97, '00093', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Nimi Jewellers', 'নিমি জুয়েলার্স', '34/A, Baitul Mukarram (1st Floor) Dhaka.', '৩৪/এ, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Azadur Rahman Azad', NULL, NULL, 'জনাব আজাদুর রহমান আজাদ', 'Male', '01727539241', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(98, '00006', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'M. L Silver House', 'এম, এল সিলভার হাউস', '70/A, Baitul Mukarram (1st Floor) Dhaka.', '৭০/এ, বায়তুল মোকাররম (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9552978', NULL, NULL, NULL, 'Swapan Chandra Dey', NULL, NULL, 'বাবু স্বপন চন্দ্র দে', 'Male', '01715054326', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(99, '00070', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Rina Jewellers', 'রিনা জুয়েলার্স', '72, Baitul Mukarram (1st floor) Dhaka.', '৭২, বায়তুল মোকাররম (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kazi Nurjahan (Rina)', NULL, NULL, 'মিসেস কাজী নূরজাহান (রিনা)', 'Female', '01781582924', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(100, '00794', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Nakshi Jewellers', 'নকশী জুয়েলার্স', '10/A, Baitul Mukarram (1st floor) Dhaka.', '১০/এ, বায়তুল মোকাররম (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Shahin Alam', NULL, NULL, 'জনাব মোঃ শাহিন আলম', 'Male', '01919137424', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(101, '00859', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Etihad Jewellers', 'ইতিহাদ জুয়েলার্স', '25, Baitul Mukarram (1st floor) Dhaka.', '২৫, বায়তুল মোকাররম (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HM Iqbal Hossain', NULL, NULL, 'জনাব এইচ এম ইকবাল হোসেন', 'Male', '01911313902', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(102, '00870', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Silver Gallery', 'সিলভার গ্যালারী', '37, Baitul Mukarram (1st floor) Dhaka.', '৩৭, বায়তুল মোকাররম (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Delwar Hossain', NULL, NULL, 'জনাব মোঃ দেলোয়ার হোসেন', 'Male', '01711873061', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(103, '00875', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Anshul Jewellers', 'আনশুল জুয়েলার্স', '29, Baitul Mukarram (Ground floor) Dhaka.', '২৯, বায়তুল মোকাররম (নীচ তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dulal Chandra Sarkar', NULL, NULL, 'বাবু দুলাল চন্দ্র সরকার', 'Male', '01710928876', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(104, '00895', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Rahman Jewellers', 'নিউ রহমান জুয়েলার্স', '47, Baitul Mukarram (1st floor) Dhaka.', '৪৭, বায়তুল মোকাররম (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sobahan Khan', NULL, NULL, 'জনাব সোবাহান খান', 'Male', '01759512710', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(105, '00897', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Diamond & Divas', 'ডায়মন্ড এন্ড ডিভাস', '67, Baitul Mukarram (Ground floor) Dhaka.', '৬৭, বায়তুল মোকাররম (নীচ তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Enamul Haque Khan', NULL, NULL, 'জনাব এনামুল হক খান', 'Male', '01819410891', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(106, '00899', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Janata Jewellers', 'জনতা জুয়েলার্স', '25, Baitul Mukarram (Ground floor) Dhaka.', '২৫, বায়তুল মোকাররম (নীচ তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Maruf Hossain', NULL, NULL, 'জনাব মারুফ হোসেন', 'Male', '01757760097', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(107, '00900', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'M/s Nibir Jewellers', 'মেসার্স নিবিড় জুয়েলার্স', '30, Baitul Mukarram (1st floor) Dhaka.', '৩০, বায়তুল মোকাররম (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Monir Hossain', NULL, NULL, 'জনাব মোঃ মনির হোসেন', 'Male', '01713032610', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(108, '00903', NULL, 'executive-member', 99, NULL, 'Dhaka', 'Dhaka', 'Grameen Diamond House', 'গ্রামীণ ডায়মন্ড হাউজ', '33, Baitul Mukarram (Ground floor) Dhaka.', '৩৩, বায়তুল মোকাররম (নীচ তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Dr Dilip Kumar Roy.jpg', NULL, 'Dr. Dilip Kumar Roy', NULL, NULL, 'ডাঃ দিলীপ কুমার রায়', NULL, '01711956146', NULL, '{\"name\":[\"monitoring-of-districts-organization\",null],\"post\":[\"chairman\",null]}', 1, 1, 2, '2022-05-14 10:13:30', NULL),
(109, '00760', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Diamond Bazar & Gold', 'ডায়মন্ড বাজার এন্ড গোল্ড', '15, Baitul Mukarram (1st floor) Dhaka.', '১৫, বায়তুল মোকাররম (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mahfuzur Rahman', NULL, NULL, 'জনাব মাহফুজুর রহমান', 'Male', '01811605397', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(110, '00714', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Haque Jewellers', 'হক জুয়েলার্স', '67/4/A, Purana Paltan, Shop No-26, Baitul Mukarram, Dhaka-1000', '৬৭/৪/এ, পুরানা পল্টন, দোকান নং-২৬, বায়তুল মোকাররম, ঢাকা-১০০০', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mezbahul Haque', NULL, NULL, 'জনাব মেজবাহুল হক', 'Male', '01711380101', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(111, '00751', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sultan Jewellers', 'সুলতান জুয়েলার্স', '67/4/A, Purana Paltan, Shop No. 24, Baitul Mukarram (1st Floor), Dhaka-1000', '৬৭/৪/এ, পুরানা পল্টন, দোকান নং ২৪, বায়তুল মোকাররম (২য় তলা), ঢাকা-১০০০', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Al Amin Bepari (Chunnu)', NULL, NULL, 'জনাব আল আমিন বেপারী (চুন্নু)', 'Male', '01919261449', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(112, '00910', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Diamond Lounge Limited', 'ডায়মন্ড লাউঞ্জ লিমিটেড', '35/A, Baitul Mukarram (Ground Floor) Dhaka-1000', '৩৫/এ, বায়তুল মোকাররম (নীচ তলা) ঢাকা-১০০০', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HM Iqbal Hussain Antar', NULL, NULL, 'জনাব এইচ এম ইকবাল হুসাইন অন্তর', 'Male', '01911313902', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(113, '00923', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Kazi Jewellers', 'কাজী জুয়েলার্স', '67/4/A, Purana Paltan, Shop No. 1/A, Baitul Mukarram (1st Floor) Dhaka-1000', '৬৭/৪/এ, পুরানা পল্টন, দোকান নং ১/এ, বায়তুল মোকাররম (২য় তলা) ঢাকা-১০০০', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kazi Md. Billal Hossain', NULL, NULL, 'জনাব কাজী মোঃ বিল্লাল হোসেন', 'Male', '01811500722', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(114, '00102', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Mukhor Jewellers', 'মুখর জুয়েলার্স', '25, Baitul Aman New Market, Dhaka.', '২৫, বায়তুল আমান নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, '8614818', NULL, NULL, NULL, 'Md. Khalilur Rahman', NULL, NULL, 'জনাব মোঃ খলিলুর রহমান', 'Male', '01711273986', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(115, '00104', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Dhaka Jewellers', 'দি ঢাকা জুয়েলার্স', '211, Dhaka New Market, Dhaka.', '২১১, ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, '8626100', NULL, NULL, NULL, 'Lal Mohan Das', NULL, NULL, 'বাবু লাল মোহন দাস', 'Male', '01711528748', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(116, '00105', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Romoney Jewellers', 'রমনী জুয়েলার্স', '226, Dhaka New Market, Dhaka.', '২২৬, ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, '8628421', NULL, NULL, NULL, 'Md. Sahidur Rahman (Nuru)', NULL, NULL, 'জনাব মোঃ সহিদুর রহমান (নূরু)', 'Male', '01819529006', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(117, '00106', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Ashraf Jewellers', 'নিউ আশরাফ জুয়েলার্স', '225, Dhaka New Market, Dhaka.', '২২৫, ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, '8626135', NULL, NULL, NULL, 'Md. Ashraf Hossain', NULL, NULL, 'জনাব মোঃ আশরাফ হোসেন', 'Male', '01552397790', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(118, '00107', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sonargaon Jewellers', 'সোনারগাঁও জুয়েলার্স', '12, Dhaka New Market, Dhaka.', '১২, ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, '8627652', NULL, NULL, NULL, 'Shri Haripada Dey', NULL, NULL, 'শ্রী হরিপদ দে', 'Male', '01865503315', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(119, '00108', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Alangkar Niketan Pvt. Ltd.', 'অলংকার নিকেতন প্রাঃ লিঃ', '3, 4, Dhaka New Market, Dhaka.', '৩, ৪, ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, '8627360', NULL, NULL, NULL, 'M.A. Hannan Azad', NULL, NULL, 'জনাব এম, এ, হান্নান আজাদ', 'Male', '01822890872', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(120, '00111', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Rafiq Jewellers', 'রফিক জুয়েলার্স', '14, Dhaka New Market, Dhaka.', '১৪, ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, '9663862', NULL, NULL, NULL, 'Alauddin Ahmed', NULL, NULL, 'জনাব আলাউদ্দিন আহমেদ', 'Male', '01713004085', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(121, '00113', NULL, 'vice-president', 99, NULL, 'Dhaka', 'Dhaka', 'Siraj Jewellers', 'সিরাজ জুয়েলার্স', '10-11, Dhaka New Market, Dhaka.', '১০-১১, ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, '8627268', NULL, 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Dr Dewan Aminul Islam Shahin.jpg', NULL, 'Dr. Dewan Aminul Islam', NULL, NULL, 'ডাঃ দেওয়ান আমিনুল ইসলাম', NULL, '01817538878', NULL, '{\"name\":[null,null],\"post\":[null,null]}', 1, 1, 2, '2022-05-14 10:13:30', NULL),
(122, '00115', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Madhuri Jewellers', 'নিউ মাধুরী জুয়েলার্স', '08, Dhaka New Market, Dhaka.', '০৮, ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, '9670327', NULL, NULL, NULL, 'Sukumar Paul', NULL, NULL, 'বাবু সুকুমার পাল', 'Male', '01914391556', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(123, '00116', '', '', 99, '', 'Dhaka', 'Dhaka', 'Shangita Jewellers', 'সঙ্গীতা জুয়েলার্স', '231, Dhaka New Market, Dhaka.', '২৩১, ঢাকা নিউ মার্কেট, ঢাকা।', '', '', '', '8625758', '', '', NULL, 'Gautam Ghosh', '', '', 'বাবু গৌতম ঘোষ', 'Male', '01911324516', '', '{\"name\":[\"banking-and-financial-service\",null],\"post\":[\"member\",null]}', 1, 1, 2, '2022-05-14 10:13:30', '2022-05-16 15:35:53'),
(124, '00118', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Badhan Jewellers', 'বাঁধন জুয়েলার্স', '230, Dhaka New Market, Dhaka.', '২৩০, ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, '8627273', NULL, NULL, NULL, 'BM Rokon Uddin Mahmud', NULL, NULL, 'জনাব বি এম রোকন উদ্দিন মাহমুদ', 'Male', '01715458228', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(125, '00119', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Siddikin Jewellers', 'সিদ্দিকিন জুয়েলার্স', '35, Baitul Aman Dhaka New Market, Dhaka.', '৩৫, বায়তুল আমান ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, '8617994', NULL, NULL, NULL, 'A. Rahim Mollah', NULL, NULL, 'জনাব আঃ রহিম মোল্লা', 'Male', '01799899915', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(126, '00120', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Mostafa Jewellers', 'মোস্তফা জুয়েলার্স', '212, Dhaka New Market, Dhaka.', '২১২, ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, '9669380', NULL, NULL, NULL, 'Md. Rokon Uddin', NULL, NULL, 'জনাব মোঃ রোকন উদ্দিন', 'Male', '01730644788', NULL, '{\"name\":[\"media-&-communication-and-social-affairs\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(127, '00121', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Mita Jewellers', 'নিউ মিতা জুয়েলার্স', '218, Dhaka New Market, Dhaka.', '২১৮, ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, '8624386', NULL, NULL, NULL, 'Pranab Deb', NULL, NULL, 'বাবু প্রণব দেব', 'Male', '01715036174', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(128, '00122', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sarna Kanon Jewellers', 'স্বর্ণ কানন জুয়েলার্স', '223,224, Dhaka New Market, Dhaka.', '২২৩,২২৪, ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, '9667898', NULL, NULL, NULL, 'Brindaban Das', NULL, NULL, 'বাবু বৃন্দাবন দাস', 'Male', '01740401060', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(129, '00123', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Amin Jewellers', 'আমিন জুয়েলার্স লিঃ', '215, 216, Dhaka New Market, Dhaka.', '২১৫, ২১৭, ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, '8619723', NULL, NULL, NULL, 'Kazi Shahjahan Hossain', NULL, NULL, 'জনাব কাজী শাহজাহান হোসেন', 'Male', '01981243494', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(130, '00124', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Barishal Jewellers', 'দি বরিশাল জুয়েলার্স', '244, Dhaka New Market, Dhaka.', '২৪৪, ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, '8626505', NULL, NULL, NULL, 'Rezaul Alam Khan', NULL, NULL, 'জনাব রেজাউল আলম খান', 'Male', '01711321775', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(131, '00125', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Roja Jewellers', 'রোজা জুয়েলার্স', '96, Dhaka New Market, Dhaka.', '৯৬, ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, '9668899', NULL, NULL, NULL, 'Abu Naser Md. Abdullah', NULL, NULL, 'জনাব আবু নাসের মোঃ আবদুল্লাহ', 'Male', '01925613150', NULL, '{\"name\":[\"pricing-and-price-monitoring\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL);
INSERT INTO `members` (`id`, `number_id`, `member_since`, `central_committee_post`, `central_committee_order`, `district_committee_post`, `district`, `divisions`, `inst_name`, `inst_name_bn`, `inst_address`, `inst_address_bn`, `inst_trade_license`, `inst_bin`, `inst_tin`, `inst_telephone`, `inst_mobile`, `img`, `inst_img`, `name`, `email`, `blood_group`, `name_bn`, `gender`, `contact`, `home_address`, `standing_committee`, `m_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(132, '00126', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Shilpi Jewellers', 'নিউ শিল্পী জুয়েলার্স', '7, Dhaka New Market, Dhaka.', '৭, ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Suma Das', NULL, NULL, 'সুমা দাস', 'Male', '01970388803', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(133, '00127', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Mizan Jewellers', 'মিজান জুয়েলার্স', '207-208, Dhaka New Market, Dhaka.', '২০৭-২০৮, ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, '8620749', NULL, NULL, NULL, 'Mizanur Rahman', NULL, NULL, 'জনাব মিজানুর রহমান', 'Male', '01711522160', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(134, '00129', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Hashem Jewellers', 'হাশেম জুয়েলার্স', '13, Dhaka New Market, Dhaka.', '১৩, ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, '9669560', NULL, NULL, NULL, 'Golam Dastagir', NULL, NULL, 'জনাব গোলাম দস্তগীর', 'Male', '01712044583', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(135, '00130', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sultana Jewellers (Pvt) Ltd.', 'সুলতানা জুয়েলার্স (প্রাঃ) লিঃ', '5, 6, Dhaka New Market, Dhaka.', '৫, ৬, ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rajiv Iqbal', NULL, NULL, 'জনাব রাজিব ইকবাল', 'Male', '01710397515', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(136, '00131', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Milon Jewellers', 'নিউ মিলন জুয়েলার্স', '221, Dhaka New Market, Dhaka.', '২২১, ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, '8628697', NULL, NULL, NULL, 'Golam Dastagir (Babu)', NULL, NULL, 'জনাব গোলাম দস্তগীর (বাবু)', 'Male', '01799754362', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(137, '00132', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Laboni Jewellers', 'দি লাবনী জুয়েলার্স', '246, Dhaka New Market Main, Dhaka.', '২৪৭, ঢাকা নিউ মার্কেট মেইন, ঢাকা।', NULL, NULL, NULL, '9676742', NULL, NULL, NULL, 'Sachindra Chandra Varman', NULL, NULL, 'বাবু শচীন্দ্র চন্দ্র বর্মন', 'Male', '01819202557', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(138, '00133', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Labani Jewellers', 'নিউ লাবনী জুয়েলার্স', '236, Dhaka New Market, Dhaka.', '২৩৬, ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, '8626301', NULL, NULL, NULL, 'Md. Emdadul Haque', NULL, NULL, 'জনাব মোঃ এমদাদুল হক', 'Male', '01515262424', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(139, '00134', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sarnokoly Jewellers', 'স্বর্ণ কলি জুয়েলার্স', '205, Dhaka New Market, Dhaka.', '২০৫, ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, '8628708', NULL, NULL, NULL, 'Shyamal Sarkar', NULL, NULL, 'বাবু শ্যামল সরকার', 'Male', '01914601660', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(140, '00135', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sananda Jewellers (Pvt) Ltd.', 'সানন্দা জুয়েলার্স (প্রাঃ) লিঃ', 'Dhaka New Market, Dhaka.', 'ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Piklu Ghosh', NULL, NULL, 'বাবু পিকলু ঘোষ', 'Male', '01711537769', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(141, '00137', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Jamuna Jewellers', 'নিউ যমুনা জুয়েলার্স', '227, Dhaka New Market, Dhaka.', '২২৭, ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, '58610922', NULL, NULL, NULL, 'Ganesh Chandra Paul', NULL, NULL, 'বাবু গনেশ চন্দ্র পাল', 'Male', '01936115480', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(142, '00138', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Asian Jewellers', 'এশিয়ান জুয়েলার্স', 'Dhaka New Market, Dhaka.', 'ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Abdur Razzak', NULL, NULL, 'জনাব মোঃ আব্দুর রজ্জাক', 'Male', '01748964400', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(143, '00139', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Jamuna Jewellers', 'যমুনা জুয়েলার্স', 'Dhaka New Market, Dhaka.', 'ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dipak Kumar Saha', NULL, NULL, 'বাবু দিপক কুমার সাহা', 'Male', '01715833333', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(144, '00140', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Ahona Jewellers', 'অহনা জুয়েলার্স', '203, New Market, Dhaka.', '২০৩, নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, '9661685', NULL, NULL, NULL, 'Sheikh Ahasan Ullah', NULL, NULL, 'জনাব শেখ আহাসান উল্ল্যাহ', 'Male', '01720503424', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(145, '00630', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Rizvi Jewellers', 'রিজভী জুয়েলার্স', '19-20, Dhaka New Market, Dhaka.', '১৯-২০, ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Rubel', NULL, NULL, 'জনাব মোঃ রুবেল', 'Male', '01733959596', NULL, '{\"name\":[\"young-entrepreneurs\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(146, '00635', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Haven Jewellers', 'নিউ হেভেন জুয়েলার্স', '238, Dhaka New Market Main, Dhaka.', '২৩৮, ঢাকা নিউ মার্কেট মেইন, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Emdad Amin', NULL, NULL, 'জনাব এমদাদ আমিন', 'Male', '01615003000', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(147, '00640', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sananda Diamond Ltd.', 'সানন্দা ডায়মন্ড লিঃ', '228, 229, Dhaka New Market, Dhaka.', '২২৮, ২২৯, ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Piklu Ghosh', NULL, NULL, 'বাবু পিকলু ঘোষ', 'Male', '01711537769', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(148, '00649', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Eastern Jewellers', 'দি ইষ্টার্ণ জুয়েলার্স', '9, Dhaka New Market, Dhaka.', '৯, ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tulsi Rani Ghosh', NULL, NULL, 'মিসেস তুলসী রানী ঘোষ', 'Female', '01758939998', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(149, '00665', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sawpna Jewellers', 'স্বপ্না জুয়েলার্স', '15, Dhaka New Market Main, Dhaka.', '১৫, ঢাকা নিউ মার্কেট মেইন, ঢাকা।', NULL, NULL, NULL, '58610921', NULL, NULL, NULL, 'Yadav Malakar', NULL, NULL, 'বাবু যাদব মালাকার', 'Male', '01765325768', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(150, '00688', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Jamuna Jewellers', 'নিউ যমুনা জুয়েলার্স', '40-41, Dhaka New Market Main, Dhaka.', '৪০-৪১, ঢাকা নিউ মার্কেট মেইন, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mantosh Kumar Karmakar', NULL, NULL, 'বাবু মনতোষ কুমার কর্মকার', 'Male', '01792389777', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(151, '00692', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Jamuna Jewellers', 'দি যমুনা জুয়েলার্স', '230, Dhaka New Market, Dhaka.', '২৩০, ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ajit Saha', NULL, NULL, 'বাবু অজিত সাহা', 'Male', '01711806471', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(152, '00694', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Rupam Jewellers', 'রুপম জুয়েলার্স', '245, Dhaka New Market Main, Dhaka.', '২৪৫, ঢাকা নিউ মার্কেট মেইন, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bharti Ghosh', NULL, NULL, 'মিসেস ভারতী ঘোষ', 'Female', '01991972695', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(153, '00700', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Habib Jewellers', 'হাবিব জুয়েলার্স', '222, Dhaka New Market Main, Dhaka.', '২২২, ঢাকা নিউ মার্কেট মেইন, ঢাকা।', NULL, NULL, NULL, '58614192', NULL, NULL, NULL, 'Md. Habibur Rahman', NULL, NULL, 'জনাব মোঃ হাবিবুর রহমান', 'Male', '01712548989', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(154, '00703', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Diamond World', 'ডায়মন্ড ওয়ার্ল্ড', '16-17, Dhaka New Market Main, Dhaka.', '১৬-১৭, ঢাকা নিউ মার্কেট মেইন, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sabita Agarwala', NULL, NULL, 'মিসেস সবিতা আগরওয়ালা', 'Female', '01841199291', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(155, '00721', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Abir Jewellers', 'আবির জুয়েলার্স', '42, Baitul Aman New Market, Dhaka.', '৪২, বায়তুল আমান নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shankar Paul', NULL, NULL, 'বাবু শংকর পাল', 'Male', '01732647058', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(156, '00756', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Asian Jewellers', 'দি এশিয়ান জুয়েলার্স', '232, Dhaka New Market Main, Dhaka.', '২৩২, ঢাকা নিউ মার্কেট মেইন, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bikash Biswas Krishna', NULL, NULL, 'বাবু বিকাশ বিশ্বাস কৃষ্ণ', 'Male', '01715647281', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(157, '00757', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Heaven Gold', 'হেভেন গোল্ড', '206, Dhaka New Market, Dhaka.', '২০৬, ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Akter Hossain (Batu)', NULL, NULL, 'জনাব মোঃ আক্তার হোসেন (বতু)', 'Male', '01719318649', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(158, '00758', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Shuchona Jewellers', 'সূচনা জুয়েলার্স', '358/1, Dhaka New Market, Maine, Dhaka.', '৩৫৮/১, ঢাকা নিউ মার্কেট, মেইন, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Aminul Islam', NULL, NULL, 'জনাব মোঃ আমিনুল ইসলাম', 'Male', '01675648832', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(159, '00781', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Elegance Jewellers', 'এলিগেন্স জুয়েলার্স', '201, Dhaka New Market Main, Dhaka.', '২০১, ঢাকা নিউ মার্কেট মেইন, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Jamal Bepari', NULL, NULL, 'জনাব মোঃ জামাল বেপারী', 'Male', '01716572115', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(160, '00128', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sadia Jewellers', 'সাদিয়া জুয়েলার্স', '356 /A, Dhaka New Market, Dhaka.', '৩৫৬/ক, ঢাকা নিউ মার্কেট, ঢাকা।', NULL, NULL, NULL, '9663862', NULL, NULL, NULL, 'Alauddin Ahmed', NULL, NULL, 'জনাব আলাউদ্দিন আহমেদ', 'Male', '01713004085', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(161, '00904', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Winner Jewellers', 'উইনার জুয়েলার্স', '50, Dhaka New Market Main, Dhaka.', '৫০, ঢাকা নিউ মার্কেট মেইন, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ashfaq Ahmed', NULL, NULL, 'জনাব আশফাক আহমেদ', 'Male', '01777232304', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(162, '00906', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Medina Jewellers', 'দি মদিনা জুয়েলার্স', '241, Dhaka New Market Main, Dhaka.', '২৪১, ঢাকা নিউ মার্কেট মেইন, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Akkach Ali', NULL, NULL, 'জনাব আককাছ আলী', 'Male', '01727778383', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(163, '00141', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Monikanchan Jewellers', 'মনি কাঞ্চন জুয়েলার্স', '2/59, Chandni Chowk Market (lst Floor) Dhaka.', '২/৫৯, চাঁদনী চক মার্কেট (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9634690', NULL, NULL, NULL, 'Kanchan is a merchant', NULL, NULL, 'বাবু কাঞ্চণ বণিক', 'Male', '01711541096', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(164, '00144', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Manihar Jewellers', 'মনিহার জুয়েলার্স', '28-31, Chandni Chowk Market (Ground Floor) Dhaka.', '২৮-৩১, চাঁদনী চক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '8624814', NULL, NULL, NULL, 'Md. Abu Lais Khan', NULL, NULL, 'জনাব মোঃ আবু লাইস খান', 'Male', '01771777742', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(165, '00150', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Manihar Jewellers', 'মনিহার জুয়েলার্স', '50, Chandni Chowk Market (Ground Floor) Dhaka.', '৫০, চাঁদনী চক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9661661', NULL, NULL, NULL, 'Md. Abu Lais Khan', NULL, NULL, 'জনাব মোঃ আবু লাইস খান', 'Male', '01634763760', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(166, '00146', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Padma Jewellers', 'দি পদ্মা জুয়েলার্স', '36, Chandni Chowk Market (lst Floor) Dhaka.', '৩৬, চাঁদনী চক মার্কেট (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9664653', NULL, NULL, NULL, 'S. M Jasim Uddin', NULL, NULL, 'জনাব এস, এম জসিম উদ্দিন', 'Male', '01753790913', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(167, '00147', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Eastern Jewellers', 'ইষ্টার্ণ জুয়েলার্স', '2/9-10 Chandni Chowk Market (Ground Floor) Dhaka.', '২/৯-১০ চাঁদনী চক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9677270', NULL, NULL, NULL, 'Bimal Chandra Ghosh', NULL, NULL, 'বাবু বিমল চন্দ্র ঘোষ', 'Male', '01758939998', NULL, '{\"name\":[\"pricing-and-price-monitoring\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(168, '00148', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Angoshaj Jewellers', 'অঙ্গঁসাজ জুয়েলার্স', '4/47, Chandni Chowk Market (lst Floor) Dhaka.', '৪/৪৭, চাঁদনী চক মার্কেট (২য়তলা) ঢাকা।', NULL, NULL, NULL, '8631615', NULL, NULL, NULL, 'Ranjit Karmakar', NULL, NULL, 'বাবু রণজিৎ কর্মকার', 'Male', '01726802067', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(169, '00149', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Swaondo Jewellers', 'সাওন্দো জুয়েলার্স', '3/57, Chandni Chowk Market (lst Floor) Dhaka.', '৩/৫৭, চাঁদনী চক মার্কেট (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9615521', NULL, NULL, NULL, 'Bhavdev Saha', NULL, NULL, 'বাবু ভবদেব সাহা', 'Male', '01712154216', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(170, '00150', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sunmoon Jewellers', 'মনিহার জুয়েলার্স', '4/43, Chandni Chowk Market (lst Floor) Dhaka.', '৫০, চাঁদনী চক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9661661', NULL, NULL, NULL, 'Md. Faruk Hossain', NULL, NULL, 'জনাব মোঃ আবু লাইস খান', 'Male', '01716802712', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(171, '00154', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Chandrika Jewellers', 'নিউ চন্দ্রিকা জুয়েলার্স', '01/4, Chandni Chowk Market (Ground Floor) Dhaka.', '০১/৪, চাঁদনী চক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9634698', NULL, NULL, NULL, 'Md. Belal Hossain', NULL, NULL, 'জনাব মোঃ বেলাল হোসেন', 'Male', '01795568871', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(172, '00155', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Shotota Jewellers', 'সততা জুয়েলার্স', '3/64, Chandni Chowk Market (lst Floor) Dhaka.', '৩/৬৪, চাঁদনী চক মার্কেট (২য়তলা) ঢাকা।', NULL, NULL, NULL, '8629823', NULL, NULL, NULL, 'Swapan Chowdhury', NULL, NULL, 'বাবু স্বপন চৌধুরী', 'Male', '01724919494', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(173, '00157', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Orin Jewellers', 'অরিন জুয়েলার্স', '3/61, Chandni Chowk Market (2nd Floor) Dhaka.', '৩/৬১, চাঁদনী চক মার্কেট (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9671040', NULL, NULL, NULL, 'Mizanur Rahman Bhuiyan', NULL, NULL, 'জনাব মিজানুর রহমান ভুইয়া', 'Male', '01979202047', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(174, '00161', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Nandita Jewellers', 'দি নন্দিতা জুয়েলার্স', '1/21-22, Chandni Chowk Market (Ground Floor) Dhaka.', '১/২১-২২, চাঁদনী চক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9661070', NULL, NULL, NULL, 'Kazi Wahid', NULL, NULL, 'জনাব কাজী ওয়াহিদ', 'Male', '01720564744', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(175, '00162', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Bangladesh Pearl House', 'বাংলাদেশ পার্ল হাউস', '2/21, Chandni Chowk Market (Ground Floor) Dhaka.', '২/২১, চাঁদনী চক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9660869', NULL, NULL, NULL, 'Badal Chandra Karmakar', NULL, NULL, 'বাবু বাদল চন্দ্র কর্মকার', 'Male', '01730946066', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(176, '00163', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Nandita Jewellers', 'নন্দিতা জুয়েলার্স', '3/4, Chandni Chowk Market (Ground Floor) Dhaka.', '৩/৪, চাঁদনী চক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '8618519', NULL, NULL, NULL, 'Bhavaranjan Biswas', NULL, NULL, 'বাবু ভবরঞ্জণ বিশ্বাস', 'Male', '01781901728', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(177, '00164', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Adar Jewellers', 'আদর জুয়েলার্স', '2/5/A, Chandni Chowk Market (Ground Floor) Dhaka.', '২/৫/এ, চাঁদনী চক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Nazmul Huda Latif', NULL, NULL, 'জনাব মোঃ নজমুল হুদা লতিফ', 'Male', '01819441108', NULL, '{\"name\":[\"media-&-communication-and-social-affairs\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(178, '00165', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Ashraf Jewellers', 'আশরাফ জুয়েলার্স', '2/1, Chandni Chowk Market (Ground Floor) Dhaka.', '২/১, চাঁদনী চক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9664166', NULL, NULL, NULL, 'Md. Rafiqul Islam', NULL, NULL, 'জনাব মোঃ রফিকুল ইসলাম', 'Male', '01711181813', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(179, '00169', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Juicy Jewellers', 'জুসী জুয়েলার্স', '5/5, Chandni Chowk Market (Ground Floor) Dhaka.', '৫/৫, চাঁদনী চক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '8613003', NULL, NULL, NULL, 'Md. Fakruzzaman Talukder', NULL, NULL, 'জনাব মোঃ ফকরুজ্জামান তালুকদার', 'Male', '01716425900', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(180, '00172', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Rose Jewellers', 'রোজ জুয়েলার্স', '1/9, Chandni Chowk Market (Ground Floor) Dhaka.', '১/৯, চাঁদনী চক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '8627728', NULL, NULL, NULL, 'Golam Morshed', NULL, NULL, 'জনাব গোলাম মোর্শেদ', 'Male', '01978080774', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(181, '00173', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Venux Jewellers', 'ভেনাক্স জুয়েলার্স', '1/12/A, Chandni Chowk Market (Ground Floor) Dhaka.', '১/১২/এ, চাঁদনী চক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '8624787', NULL, NULL, NULL, 'Md. Abul Kalam', NULL, NULL, 'জনাব মোঃ আবুল কালাম', 'Male', '01711954547', NULL, '{\"name\":[\"research-and-development\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(182, '00174', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Mallika Jewellers', 'মল্লিকা জুয়েলার্স', '1/5, Chandni Chowk Market (Ground Floor) Dhaka.', '১/৫, চাঁদনী চক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '8622384', NULL, NULL, NULL, 'Golam Mohiuddin', NULL, NULL, 'জনাব গোলাম মহিউদ্দিন', 'Male', '01715129456', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(183, '00175', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Shovan Jewellers', 'শোভন জুয়েলার্স', '1/23, Chandni Chowk Market (Ground Floor) Dhaka.', '১/২৩, চাঁদনী চক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '8616004', NULL, NULL, NULL, 'Mr Shyamal Ranjan Sadhukha', NULL, NULL, 'বাবু শ্যামল রঞ্জণ সাধুখা', 'Male', '01730946066', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(184, '00176', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Bobby Jewellers', 'ববি জুয়েলার্স', '1/16, Chandni Chowk Market (Ground Floor) Dhaka.', '১/১৬, চাঁদনী চক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '8618273', NULL, NULL, NULL, 'Shahidul Alam Khan', NULL, NULL, 'জনাব শহীদুল আলম খান', 'Male', '01798362718', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(185, '00177', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Pritam Jewellers', 'প্রীতম জুয়েলার্স', '4/9, Chandni Chowk Market (Ground Floor) Dhaka.', '৪/৯, চাঁদনী চক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9665747', NULL, NULL, NULL, 'Delwara Begum', NULL, NULL, 'মিসেস দেলোয়ারা বেগম', 'Female', '01777662147', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(186, '00180', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New York Jewellers', 'নিউ ইয়র্ক জুয়েলার্স', '3/58, Chandni Chowk Market (lst Floor) Dhaka.', '৩/৫৮, চাঁদনী চক মার্কেট (২য়তলা) ঢাকা।', NULL, NULL, NULL, '8620568', NULL, NULL, NULL, 'Prabir Kumar Sadhukha', NULL, NULL, 'বাবু প্রবীর কুমার সাধুখা', 'Male', '01711026656', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(187, '00181', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Nabarupa Jewellers', 'নিউ নবরূপা জুয়েলার্স', '3/4/57, Chandni Chowk Market (lst Floor) Dhaka.', '৩/৪/৫৭, চাঁদনী চক মার্কেট (২য়তলা) ঢাকা।', NULL, NULL, NULL, '8622844', NULL, NULL, NULL, 'Biplob Kumar Mandal', NULL, NULL, 'বাবু বিপ্লব কুমার মন্ডল', 'Male', '01745240240', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(188, '00182', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Nipa Jewellers', 'নিউ নিপা জুয়েলার্স', '3/51, Chandni Chowk Market (lst Floor) Dhaka.', '৩/৫১, চাঁদনী চক মার্কেট (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9665026', NULL, NULL, NULL, 'Gaurapada Roy', NULL, NULL, 'বাবু গৌরপদ রায়', 'Male', '01715362390', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(189, '00183', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Laboni Jewellers', 'লাবনী জুয়েলার্স', '1/10, Chandni Chowk Market (Ground Floor) Dhaka.', '১/১০, চাঁদনী চক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '8616000', NULL, NULL, NULL, 'Santosh Kumar Pal', NULL, NULL, 'বাবু সন্তোষ কুমার পাল', 'Male', '01714001425', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(190, '00184', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Riyad Jewellers', 'রিয়াদ জুয়েলার্স', '1/3, Chandni Chowk Market (Ground Floor) Dhaka.', '১/৩, চাঁদনী চক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '8626924', NULL, NULL, NULL, 'Golam Quddus Sheikh', NULL, NULL, 'জনাব গোলাম কুদ্দুস শেখ', 'Male', '01712532599', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(191, '00185', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Bandhon Jewellers', 'বন্ধন জুয়েলার্স', '2/53, Chandni Chowk Market (lst Floor) Dhaka.', '২/৫৩, চাঁদনী চক মার্কেট (২য়তলা) ঢাকা।', NULL, NULL, NULL, '8621150', NULL, NULL, NULL, 'Md. Matiur Rahman Bhuiyan', NULL, NULL, 'জনাব মোঃ মতিউর রহমান ভূইয়া', 'Male', '01711104943', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(192, '00186', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sanchita Jewellers', 'সঞ্চিতা জুয়েলার্স', '1/14, Chandni Chowk Market (Ground Floor) Dhaka.', '১/১৪, চাঁদনী চক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '8627804', NULL, NULL, NULL, 'Prabir Kumar Dey', NULL, NULL, 'বাবু প্রবীর কুমার দে', 'Male', '01715300262', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(193, '00189', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Mahbub Jewellers', 'মাহবুব জুয়েলার্স', '5/8, Chandni Chowk Market (Ground Floor) Dhaka.', '৫/৮, চাঁদনী চক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9670798', NULL, NULL, NULL, 'Md. Tofazzal Hossain Montu', NULL, NULL, 'জনাব মোঃ তোফাজ্জল হোসেন মন্টু', 'Male', '01817050020', NULL, '{\"name\":[\"pricing-and-price-monitoring\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(194, '00193', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Ajanta Jewellers', 'নিউ অজন্তা জুয়েলার্স', '3/19, Chandni Chowk Market (Ground Floor) Dhaka.', '৩/১৯, চাঁদনী চক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '8631699', NULL, NULL, NULL, 'Ramakrishna Ghosh', NULL, NULL, 'বাবু রামকৃষ্ণ ঘোষ', 'Male', '01716693333', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(195, '00195', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Sananda Jewellers', 'দি সানন্দা জুয়েলার্স', '4/41, Chandni Chowk Market (lst Floor) Dhaka.', '৪/৪১, চাঁদনী চক মার্কেট (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9677577', NULL, NULL, NULL, 'Md. Abdul Jabbar', NULL, NULL, 'জনাব মোঃ আব্দুল জব্বার', 'Male', '01818080609', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(196, '00196', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Al-Helal Jewellers', 'আল-হেলাল জুয়েলার্স', '1/17, Chandni Chowk Market (Ground Floor) Dhaka.', '১/১৭, চাঁদনী চক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '8625411', NULL, NULL, NULL, 'Md. Ehesanul Quader Helal', NULL, NULL, 'জনাব মোঃ এহেসানুল কাদের হেলাল', 'Male', '01817091708', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(197, '00198', '', '', 99, '', 'Dhaka', 'Dhaka', 'Purabi Jewellers (Pvt) Ltd.', 'পূরবী জুয়েলার্স (প্রাঃ) লিঃ', '3/7, Chandni Chowk Market (Ground Floor), Dhaka.', '৩/৭, চাঁদনী চক মার্কেট (নীচতলা), ঢাকা।', '', '', '', '8614687', '', '', NULL, 'Mukta Rani Ghosh', '', '', 'মুক্তা রানী ঘোষ', 'Female', '01841787624', '', '{\"name\":[\"banking-and-financial-service\",null],\"post\":[\"Vice_Chairman\",null]}', 1, 1, 2, '2022-05-14 10:13:30', '2022-05-16 15:30:35'),
(198, '00199', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Purabi Jewellers (Pvt) Ltd.', 'পূরবী জুয়েলার্স (প্রাঃ) লিঃ', '2/13, Chandni Chowk Market (Ground Floor), Dhaka.', '২/১৩, চাঁদনী চক মার্কেট (নীচতলা), ঢাকা।', NULL, NULL, NULL, '9668398', NULL, NULL, NULL, 'Suchitra Rani Ghosh', NULL, NULL, 'সুচিত্রা রানী ঘোষ', 'Male', '01711843707', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(199, '00202', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Fashion Jewellers', 'নিউ ফ্যাশন জুয়েলার্স', '2/48, Chandni Chowk Market (lst Floor) Dhaka.', '২/৪৮, চাঁদনী চক মার্কেট (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9674227', NULL, NULL, NULL, 'Mrinal Kanti Pal', NULL, NULL, 'বাবু মৃনাল কান্তি পাল', 'Male', '01911367421', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(200, '00210', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Esha Jewellers', 'এষা জুয়েলার্স', '3/23, Chandni Chowk Market, Dhaka.', '৩/২৩, চাঁদনী চক মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Agrajit Kumar Lashkar', NULL, NULL, 'বাবু অগ্রজিৎ কুমার লস্কর', 'Male', '01715086703', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(201, '00755', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'NC Paul Jewellers', 'এন সি পাল জুয়েলার্স', '2/62, Chandni Chowk Market (st Floor) Dhaka.', '২/৬২, চাঁদনী চক মার্কেট (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Niranjan Chandra Paul', NULL, NULL, 'বাবু নিরঞ্জন চন্দ্র পাল', 'Male', '01825779846', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(202, '00776', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Hiroki Jewellers Ltd.', 'হিরোকী জুয়েলার্স লিঃ', 'Building No-1, 2-2/A Chandni Chowk Market (Ground Floor) Dhaka.', 'বিল্ডিং নং-১, ২- ২/এ চাঁদনী চক মার্কেট (নীচ তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HM Jahangir Hossain', NULL, NULL, 'জনাব এইচ এম জাহাঙ্গীর হোসেন', 'Male', '01710881398', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(203, '00110', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Shatarup Jewellers', 'শতরূপ জুয়েলার্স', '1/6, Chandni Chowk Market, Dhaka.', '১/৬, চাঁদনী চক মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chittaranjan Paul', NULL, NULL, 'বাবু চিত্তরঞ্জণ পাল', 'Male', '01711522408', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(204, '00103', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Faruk Jewellers', 'ফারুক জুয়েলার্স', '2/2, Chandni Chowk Market, Dhaka.', '২/২, চাঁদনী চক মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mostafizur Rahman Faruk', NULL, NULL, 'জনাব মোস্তাফিজুর রহমান ফারুক', 'Male', '01711523427', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(205, '00151', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Bithi Jewellers', 'বীথি জুয়েলার্স', '4/35, Chandni Chowk Market (lst Floor) Dhaka.', '৪/৩৫, চাঁদনী চক মার্কেট (২য়তলা) ঢাকা।', NULL, NULL, NULL, '8631511', NULL, NULL, NULL, 'Ratan Debnath', NULL, NULL, 'বাবু রতন দেবনাথ', 'Male', '01732480333', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(206, '00204', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Meghla Jewellers', 'মেঘলা জুয়েলার্স', '1/116, Chandni Chowk Market (lst Floor)', '১/১১৬, চাঁদনী চক মার্কেট (২য়তলা)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manik Das', NULL, NULL, 'বাবু মানিক দাস', 'Male', '01817081092', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(207, '00203', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Tandra Jewellers', 'নিউ তন্দ্রা জুয়েলার্স', '3/27, Chandni Chowk Market (Ground Floor) Dhaka.', '৩/২৭, চাঁদনী চক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Susanta Kumar Saha', NULL, NULL, 'বাবু সুসান্ত কুমার সাহা', 'Male', '01711806383', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(208, '00201', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Al-Hera Jewellers', 'আল-হেরা জুয়েলার্স', '2/58, Chandni Chowk Market (lst Floor) Dhaka.', '২/৫৮, চাঁদনী চক মার্কেট (২য় তলা) ঢাকা।', NULL, NULL, NULL, '9674528', NULL, NULL, NULL, 'Md. Zahirul Islam', NULL, NULL, 'জনাব মোঃ জহিরুল ইসলাম', 'Male', '01817506461', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(209, '00187', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Shundori Jewellers', 'সুন্দরী জুয়েলার্স', '3/2 Chandnichak Market, Building-2, Shop No-6, Dhaka.', '৩/২ চাঁদনীচক মার্কেট,বিল্ডিং-২,দোকান নং-৬,ঢাকা।', NULL, NULL, NULL, '9662973', NULL, NULL, NULL, 'Kanulal Ghosh', NULL, NULL, 'বাবু কানুলাল ঘোষ', 'Male', '01626215761', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(210, '00170', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The City Jewellers', 'দি সিটি জুয়েলার্স', '1/13, Chandni Chowk Market (Ground Floor) Dhaka.', '১/১৩, চাঁদনী চক মার্কেট (নীচ তলা) ঢাকা।', NULL, NULL, NULL, '9664564', NULL, NULL, NULL, 'Md. Ziauddin', NULL, NULL, 'জনাব মোঃ জিয়াউদ্দিন', 'Male', '01911359630', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(211, '00179', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sonar Khakon Jewellers', 'সোনার কাঁকন জুয়েলার্স', '5/10, Chandni Chowk Market (Ground Floor) Dhaka.', '৫/১০, চাঁদনী চক মার্কেট (নীচ তলা) ঢাকা।', NULL, NULL, NULL, '9661604', NULL, NULL, NULL, 'Aleya Begum', NULL, NULL, 'মিসেস আলেয়া বেগম', 'Female', '01822862313', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(212, '00832', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Nakshatra Jewellry', 'নক্ষত্র জুয়েলারী', '4/42, Chandani Chowk Market (lst Floor) Dhaka.', '৪/৪২, চাঁদানী চক মার্কেট (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Apurba Kumar Saha', NULL, NULL, 'বাবু অপূর্ব কুমার সাহা', 'Male', '01727684977', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(213, '00833', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sheela Jewellers', 'শীলা জুয়েলার্স', '3/74, Chandani Chowk Market (lst Floor) Dhaka.', '৩/৭৪, চাঁদানী চক মার্কেট (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sheila Hazra', NULL, NULL, 'মিসেস শীলা হাজরা', 'Female', '01755233376', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(214, '00861', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'J Islam Jewellers', 'জে ইসলাম জুয়েলার্স', '2/39, Chandni Chowk Market (lst Floor) Dhaka.', '২/৩৯, চাঁদনী চক মার্কেট (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Zahirul Islam', NULL, NULL, 'জনাব মোঃ জহিরুল ইসলাম', 'Male', '01715001263', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(215, '00874', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Anik Jewellers', 'অনিক জুয়েলার্স', '2/24 A-25 Chandni Chowk Market (Ground Floor) Dhaka.', '২/২৪/এ-২৫ চাঁদনী চক মার্কেট (নীচ তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Anup Kumar Saha', NULL, NULL, 'বাবু অনুপ কুমার সাহা', 'Male', '01711930601', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(216, '00882', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Upahar Jewellers', 'নিউ উপহার জুয়েলার্স', '1/15, Chandni Chowk Market (Ground Floor) Dhaka.', '১/১৫, চাঁদনী চক মার্কেট (নীচ তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hafeez Md. Yunus Khan', NULL, NULL, 'হাফেজ মোঃ ইউনুস খান', 'Male', '01713038541', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(217, '00905', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Medina Jewellers', 'দি মদিনা জুয়েলার্স', '3/1, Mirpur Road, 3, Chandni Chowk Market, Dhaka.', '৩/১, মিরপুর রোড, ৩, চাঁদনী চক মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Akkach Ali', NULL, NULL, 'জনাব আককাছ আলী', 'Male', '01727778383', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(218, '00212', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Lipi Jewellers', 'লিপি জুয়েলার্স', '9, Tanti Bazar, Dhaka.', '৯, তাঁতী বাজার, ঢাকা।', NULL, NULL, NULL, '7392471', NULL, NULL, NULL, 'Vidyadhar Sarkar', NULL, NULL, 'বাবু বিদ্যাধর সরকার', 'Male', '01759615637', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(219, '00215', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Tithi Jewellers', 'নিউ তিথী জুয়েলার্স', '34/1, Kotwali Road, Dhaka.', '৩৪/১, কোতয়ালী রোড, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sushanta Roy Nandi', NULL, NULL, 'বাবু সুশান্ত রায় নন্দী', 'Male', '01714262701', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(220, '00220', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'KC Jewellers', 'কে সি জুয়েলার্স', '21, Tanti Bazar, Dhaka.', '২১, তাঁতী বাজার, ঢাকা।', NULL, NULL, NULL, '7392465', NULL, NULL, NULL, 'Kartik Chandra Ghosh', NULL, NULL, 'বাবু কার্তিক চন্দ্র ঘোষ', 'Male', '01712295139', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(221, '00221', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Adinath Basak Store', 'আদিনাথ বসাক ষ্টোর', '12, Tanti Bazar, Dhaka.', '১২, তাঁতী বাজার, ঢাকা।', NULL, NULL, NULL, '7393170', NULL, NULL, NULL, 'Loknath Basak', NULL, NULL, 'বাবু লোকনাথ বসাক', 'Male', '01977345368', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(222, '00225', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Mau Priya Jewellers', 'মৌ প্রিয়া জুয়েলার্স', '100, Tanti Bazar, Dhaka.', '১০০, তাঁতী বাজার, ঢাকা।', NULL, NULL, NULL, '7393649', NULL, NULL, NULL, 'Ganesh Debnath', NULL, NULL, 'বাবু গনেশ দেবনাথ', 'Male', '01748317004', NULL, '{\"name\":[\"exhibition-tread-and-event-management\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(223, '00227', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Michael & Sons Jewellers', 'মাইকেল এন্ড সন্স জুয়েলার্স', '40/41, Tanti Bazar, Dhaka.', '৪০/৪১, তাঁতী বাজার, ঢাকা।', NULL, NULL, NULL, '7395629', NULL, NULL, NULL, 'Michael korrya', NULL, NULL, 'জনাব মাইকেল কোরাইয়া', 'Male', '01731158987', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(224, '00228', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Ghosh & Sons', 'ঘোষ এন্ড সন্স', '40, Tanti Bazar, Dhaka.', '৪০, তাঁতী বাজার, ঢাকা।', NULL, NULL, NULL, NULL, NULL, 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Pobitra Chandra Ghosh.jpg', NULL, 'Pabitra Chandra Ghosh', NULL, NULL, 'বাবু পবিত্র চন্দ্র ঘোষ', NULL, '01817572540', NULL, '{\"name\":[null,null],\"post\":[null,null]}', 1, 1, 2, '2022-05-14 10:13:30', NULL),
(225, '00234', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Monalisa Jewellers', 'দি মোনালিসা জুয়েলার্স', '5 Kotwali Road, Dhaka.', '৫নং কোতয়ালী রোড, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Badal Roy', NULL, NULL, 'বাবু বাদল রায়', 'Male', '01720643012', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(226, '00236', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Shekha Jewellers', 'শিখা জুয়েলার্স', '48, Tanti Bazar, Dhaka.', '৪৮, তাঁতী বাজার, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jhantu Ghosh', NULL, NULL, 'বাবু ঝন্টু ঘোষ', 'Male', '01720275189', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(227, '00238', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'M/s Biswas Sarnalay', 'মেসার্স বিশ্বাস স্বর্ণালয়', '43, Tanti Bazar, Dhaka.', '৪৩, তাঁতী বাজার, ঢাকা।', NULL, NULL, NULL, '7392795', NULL, NULL, NULL, 'Ranjan Biswas', NULL, NULL, 'বাবু রঞ্জণ বিশ্বাস', 'Male', '01711530529', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(228, '00240', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'M/s Alo Jewellers', 'মেসার্স আলো জুয়েলার্স', '70, Tanti Bazar, Dhaka.', '৭০, তাঁতী বাজার, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manu Chandra Ghosh', NULL, NULL, 'বাবু মনু চন্দ্র ঘোষ', 'Male', '01715180870', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(229, '00241', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Ripon Jewellery & Workshop', 'রিপন জুয়েলারী এন্ড ওয়ার্কসপ', '98, Tanti Bazar, Dhaka.', '৯৮, তাঁতী বাজার, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ripon Ghosh', NULL, NULL, 'বাবু রিপন ঘোষ', 'Male', '01675045886', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(230, '00243', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Alo Jewellers', 'দি আলো জুয়েলার্স', '39, Tanti Bazar, Dhaka.', '৩৯, তাঁতী বাজার, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Krishna Chandra Ghosh', NULL, NULL, 'বাবু কৃষ্ণ চন্দ্র ঘোষ', 'Male', '01711529880', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(231, '00245', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Greenland House', 'গ্রীনল্যান্ড হাউস', '40/41, Tanti Bazar, Dhaka.', '৪০/৪১, তাঁতী বাজার, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Swapan Chandra Karmakar', NULL, NULL, 'বাবু স্বপন চন্দ্র কর্মকার', 'Male', '01712016366', NULL, '{\"name\":[\"anti-smuggling-and-law-enforcement\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(232, '00246', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sarnodip Jewellers', 'স্বর্ণদ্বীপ জুয়েলার্স', '72, Tanti Bazar, Dhaka.', '৭২, তাঁতী বাজার, ঢাকা।', NULL, NULL, NULL, '7394869', NULL, NULL, NULL, 'Md. Sohag', NULL, NULL, 'জনাব মোঃ সোহাগ', 'Male', '01711949676', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(233, '00247', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Sarnomoni Jewellers', 'নিউ স্বর্ণমনি জুয়েলার্স', '48, Tanti Bazar, Dhaka.', '৪৮, তাঁতী বাজার, ঢাকা।', NULL, NULL, NULL, '7393680', NULL, NULL, NULL, 'Haji Md. Shahidullah', NULL, NULL, 'হাজী মোঃ শহিদুল্ল্যাহ', 'Male', '01817036023', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(234, '00248', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Bipul Jewellers', 'বিপুল জুয়েলার্স', '1, Tanti Bazar, Dhaka.', '১, তাঁতী বাজার, ঢাকা।', NULL, NULL, NULL, '7393933', NULL, NULL, NULL, 'Bikash Ghosh', NULL, NULL, 'বাবু বিকাশ ঘোষ', 'Male', '01936513454', NULL, '{\"name\":[\"anti-smuggling-and-law-enforcement\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(235, '00250', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'M/s Amit Jewellers', 'মেসার্স অমিত জুয়েলার্স', '46, Tanti Bazar, Dhaka.', '৪৬, তাঁতী বাজার, ঢাকা।', NULL, NULL, NULL, '7395608', NULL, NULL, NULL, 'Lakshi Rani Ghosh', NULL, NULL, 'শ্রীমতি লক্ষী রানী ঘোষ', 'Female', '01715107108', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(236, '00251', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Apan Gold House', 'আপন গোল্ড হাউস', '87/1 Tanti Bazar, Dhaka.', '৮৭/১তাঁতী বাজার, ঢাকা।', NULL, NULL, NULL, '7119110', NULL, NULL, NULL, 'Ratan Karmakar', NULL, NULL, 'বাবু রতন কর্মকার', 'Male', '01911319108', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(237, '00253', NULL, 'assistant-secretary', 99, NULL, 'Dhaka', 'Dhaka', 'Rizvi Jewellers', 'রিজভী জুয়েলার্স', '28, Kotwali Road, Dhaka.', '২৮, কোতয়ালী রোড, ঢাকা।', NULL, NULL, NULL, '7392176', NULL, 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Md Joynal Abidin Khokan.jpg', NULL, 'Md. Joynal Abedin', NULL, NULL, 'জনাব মোঃ জয়নাল আবেদীন', NULL, '01866777774', NULL, '{\"name\":[null,null],\"post\":[null,null]}', 1, 1, 2, '2022-05-14 10:13:30', NULL),
(238, '00257', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sharif Jewellers', 'শরীফ জুয়েলার্স', '49, Tanti Bazar, Dhaka.', '৪৯, তাঁতী বাজার, ঢাকা।', NULL, NULL, NULL, '7393263', NULL, NULL, NULL, 'Md. Yusuf Sharif', NULL, NULL, 'জনাব মোঃ ইউসুফ শরীফ', 'Male', '01711600229', NULL, '{\"name\":[\"anti-smuggling-and-law-enforcement\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(239, '00259', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Bangladesh Dice House', 'বাংলাদেশ ডাইস হাউজ', '17, Hariprasanna Mitra Road, Kotwali, Dhaka.', '১৭, হরিপ্রসন্ন মিত্র রোড, কোতয়ালী, ঢাকা।', NULL, NULL, NULL, '7393823', NULL, NULL, NULL, 'Ratan Kumar Roy', NULL, NULL, 'বাবু রতন কুমার রায়', 'Male', '01971522566', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(240, '00261', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Bangla Gold (Pvt) Ltd.', 'বাংলা গোল্ড (প্রাঃ) লিঃ', '06, Hariprasanna Mitra Road (2nd Floor) Kotwali, Dhaka.', '০৬, হরিপ্রসন্ন মিত্র রোড (২য় তলা) কোতয়ালী, ঢাকা।', NULL, NULL, NULL, '7392424', NULL, NULL, NULL, 'Mizanur Rahman Manik', NULL, NULL, 'জনাব মিজানুর রহমান মানিক', 'Male', '01902608574', NULL, '{\"name\":[\"media-&-communication-and-social-affairs\"], \"post\":[\"member-secretary\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(241, '00262', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Bishwa Jewellers', 'বিশ্ব জুয়েলার্স', '19/A, Tanti Bazar, Dhaka.', '১৯/এ, তাঁতী বাজার, ঢাকা।', NULL, NULL, NULL, '7395572', NULL, NULL, NULL, 'Bishwanath Ghosh', NULL, NULL, 'বাবু বিশ্বনাথ ঘোষ', 'Male', '01928919242', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(242, '00269', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'N.S.R Bullion & Jewellers', 'এন, এস, আর, বুলিয়ন এন্ড জুয়েলার্স', '34/1, Kotwali Road, Dhaka.', '৩৪/১, কোতয়ালী রোড, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bidyut Kumar Ghosh', NULL, NULL, 'বাবু বিদ্যুৎ কুমার ঘোষ', 'Male', '01911320387', NULL, '{\"name\":[\"media-&-communication-and-social-affairs\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(243, '00270', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Subal Bullion & Jewellers', 'সুবল বুলিয়ন এন্ড জুয়েলার্স', '12/18, Kotwali Road, Dhaka', '১২/১৮, কোতয়ালী রোড, ঢাকা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Santu Saha', NULL, NULL, 'বাবু সন্টু সাহা', 'Male', '01711135419', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(244, '00271', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'M/s. KC Ghosh', 'মেসার্স কেসি ঘোষ', '77, Basi Charan Sen Poddar Street, Dhaka.', '৭৭, বাসী চরণ সেন পোদ্দার ষ্ট্রীট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kajal Rani Ghosh', NULL, NULL, 'কাজল রানী ঘোষ', 'Male', '01919737248', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(245, '00272', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Prime Jewellers', 'প্রাইম জুয়েলার্স', '34/1, Hariprasanna Mitra Road, Dhaka.', '৩৪/১, হরিপ্রসন্ন মিত্র রোড, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Shankar Saha', NULL, NULL, 'বাবু শংকর সাহা', 'Male', '01715314670', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(246, '00443', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Alangkar Niketan (Pvt) Ltd.', 'অলংকার নিকেতন (প্রাঃ) লিঃ', 'Holding No-8, Uchhab Poddar Lane, Kotwali, Dhaka.', 'হোল্ডিং নং-৮, উচ্ছব পোদ্দার লেন, কোতয়ালী, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M, A, Hannan Azad', NULL, NULL, 'জনাব এম, এ, হান্নান আজাদ', 'Male', '01727174572', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(247, '00776', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Nipun Jewellers', 'হিরোকী জুয়েলার্স লিঃ', '54, Patuatuli Road, Dhaka.', 'বিল্ডিং নং-১, ২- ২/এ চাঁদনী চক মার্কেট (নীচ তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Arun Krishna Poddar', NULL, NULL, 'জনাব এইচ এম জাহাঙ্গীর হোসেন', 'Male', '01715438882', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(248, '00277', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Monica Jewellers', 'মনিকা জুয়েলার্স', '56, Patuatuli, Dhaka.', '৫৬, পাটুয়াটুলী, ঢাকা।', NULL, NULL, NULL, '7391813', NULL, NULL, NULL, 'Babu Manoranjan Sarkar', NULL, NULL, 'বাবু মনোরঞ্জণ সরকার', 'Male', '01795097144', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(249, '00278', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'M/s. Subal Poddar', 'মেসার্স সুবল পোদ্দার', '55, Patuatuli Road, Dhaka.', '৫৫, পাটুয়াটুলী রোড, ঢাকা।', NULL, NULL, NULL, '7390581', NULL, NULL, NULL, 'Babu Subal Chandra Poddar', NULL, NULL, 'বাবু সুবল চন্দ্র পোদ্দার', 'Male', '01752724577', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(250, '00681', '', '', 99, '', 'Dhaka', 'Dhaka', 'PC Chandra Jewellers', 'পিসি চন্দ্র জুয়েলার্স', '48, Bashi Charan Sen Poddar Street, Dhaka.', '৪৮, বাশি চরণ সেন পোদ্দার ষ্ট্রীট, ঢাকা।', '', '', '', '', '', '', NULL, 'Pabitra Chandra Ghosh', '', '', 'পবিত্র চন্দ্র ঘোষ', 'Male', '01727653529', '', '{\"name\":[\"monitoring-of-districts-organization\",null],\"post\":[\"member\",null]}', 1, 1, 2, '2022-05-14 10:13:30', '2022-05-16 15:17:44'),
(251, '00682', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Gitanjali Jewellers', 'নিউ গীতাঞ্জলী জুয়েলার্স', '40/41, Bashi Charan Sen Poddar Street, Dhaka.', '৪০/৪১, বাশি চরণ সেন পোদ্দার ষ্ট্রীট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Uttam Kumar Ghosh', NULL, NULL, 'বাবু উত্তম কুমার ঘোষ', 'Male', '01711442081', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(252, '00691', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Dhaka Gold Limited', 'ঢাকা গোল্ড লিমিটেড', '4, Bashi Charan Sen Poddar Street, Dhaka.', '৪, বাশী চরন সেন পোদ্দার ষ্ট্রীট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Joynal Abedin Khokon', NULL, NULL, 'জনাব জয়নাল আবেদীন খোকন', 'Male', '01852226665', NULL, '{\"name\":[\"monitoring-of-districts-organization\"], \"post\":[\"member-secretary\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(253, '00693', NULL, 'executive-member', 99, NULL, 'Dhaka', 'Dhaka', 'Jewellery House', 'জুয়েলারী হাউজ', '110 / A, Basi Charan Sen Poddar Street', '১১০/এ, বাসী চরণ সেন পোদ্দার ষ্ট্রীট', NULL, NULL, NULL, NULL, NULL, 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Md Repnul Hasan.jpg', NULL, 'Md. Riponul Hasan', NULL, NULL, 'জনাব মোঃ রিপনুল হাসান', NULL, '01711308885', NULL, '{\"name\":[null],\"post\":[null]}', 1, 1, 2, '2022-05-14 10:13:30', NULL),
(254, '00711', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Hrithika Jewellers', 'ঋত্তিকা জুয়েলার্স', '42, Basi Charan Sen Poddar Street, Tanti Bazar, Dhaka.', '৪২, বাসী চরণ সেন পোদ্দার স্ট্রীট, তাঁতী বাজার, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Biswajit Ghosh', NULL, NULL, 'বাবু বিশ্বজিৎ ঘোষ', 'Male', '01913984334', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(255, '00712', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'M/s Krishna Bullion', 'মেসার্স কৃষ্ণ বুলিয়ন', '18, Hariprasanna Mitra Road, Dhaka.', '১৮, হরিপ্রসন্ন মিত্র রোড, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Nil Krishna Ghosh', NULL, NULL, 'বাবু নীল কৃষ্ণ ঘোষ', 'Male', '01919802754', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(256, '00229', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Mishu Jewellers', 'মিশু জুয়েলার্স', '72, Tanti Bazar, Dhaka.', '৭২, তাঁতী বাজার, ঢাকা।', NULL, NULL, NULL, '7394084', NULL, NULL, NULL, 'Md. Ashok Ullah', NULL, NULL, 'জনাব মোঃ আশক উল্লাহ', 'Male', '01674059623', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(257, '00747', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'M/s Arpita Jewellers', 'মেসার্স অর্পিতা জুয়েলার্স', '16, Bashi Charan Sen Poddar Street, Dhaka.', '১৬, বাশী চরন সেন পোদ্দার ষ্ট্রীট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Ashutosh Dev', NULL, NULL, 'বাবু আশুতোষ দেব', 'Male', '01725595265', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(258, '00750', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sarha Gold House', 'ছারহা গোল্ড হাউস', '34/1 Hariprasanna Mitra Road, Dhaka.', '৩৪/১ হরিপ্রসন্ন মিত্র রোড, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M Khokon Mridha', NULL, NULL, 'জনাব এম খোকন মৃধা', 'Male', '01712028041', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(259, '00768', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'M/s KC Paul Jewellers', 'মেসার্স কেসি পাল জুয়েলার্স', '70, Bashi Charan Sen Poddar Street, Dhaka.', '৭০, বাশী চরন সেন পোদ্দার ষ্ট্রীট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Kamolesh Paul', NULL, NULL, 'বাবু কমলেশ পাল', 'Male', '01730949640', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(260, '00814', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Rakesh Jewellers', 'রাকেশ জুয়েলার্স', '84, Tanti Bazar, Dhaka.', '৮৪, তাঁতী বাজার, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Gobinda Roy', NULL, NULL, 'বাবু গোবিন্দ রায়', 'Male', '01778261555', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(261, '00815', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Rahul Bullion & Jewellers', 'রাহুল বুলিয়ন এন্ড জুয়েলার্স', '18, Kotwali Road, Dhaka.', '১৮, কোতয়ালী রোড, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Ratan Ghosh', NULL, NULL, 'বাবু রতন ঘোস', 'Male', '01715076914', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(262, '00816', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Bhabani Jewellers', 'ভবানী জুয়েলার্স', '41, Tanti Bazar, Dhaka.', '৪১, তাঁতী বাজার, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Jagannath Das', NULL, NULL, 'বাবু জগন্নাথ দাস', 'Male', '01715461144', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(263, '00817', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'M/s Quality Jewellers', 'মেসার্স কোয়ালিটি জুয়েলার্স', '48, Basi Charan Sen Poddar Street, Dhaka.', '৪৮, বাসী চরণ সেন পোদ্দার স্ট্রীট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Nasir', NULL, NULL, 'জনাব মোঃ নাসির', 'Male', '01715495547', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(264, '00818', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'M/s. KC Ghosh Jewellers', 'মেসার্স কেসি ঘোষ জুয়েলার্স', '75/1, Tanti Bazar, Dhaka.', '৭৫/১, তাঁতী বাজার, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Krishan Ghosh', NULL, NULL, 'বাবু কৃষান ঘোষ', 'Male', '01916580925', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(265, '00819', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Pallavi Jewellers', 'পল্লবী জুয়েলার্স', '47, Tanti Bazar, Dhaka.', '৪৭, তাঁতী বাজার, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Debashish Ghosh', NULL, NULL, 'বাবু দেবাশীষ ঘোষ', 'Male', '01819224744', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(266, '00821', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'M/s New Baishakhi Jewellers', 'মেসার্স নিউ বৈশাখী জুয়েলার্স', '48, Basi Charan Sen Poddar Street, Dhaka.', '৪৮, বাসী চরণ সেন পোদ্দার স্ট্রীট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Subal Chandra Ghosh', NULL, NULL, 'বাবু সুবল চন্দ্র ঘোষ', 'Male', '01711698212', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(267, '00822', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'M/s A.C Ghosh Jewellers', 'মেসার্স এ সি ঘোষ জুয়েলার্স', '39, Basi Charan Sen Poddar Street, Dhaka.', '৩৯, বাসী চরণ সেন পোদ্দার স্ট্রীট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Tapan Ghosh', NULL, NULL, 'বাবু তপন ঘোষ', 'Male', '01712545110', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(268, '00865', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Mexico Jewellers', 'মেক্সিকো জুয়েলার্স', '40/41, Basi Charan Sen Poddar Street, Dhaka.', '৪০/৪১, বাসী চরন সেন পোদ্দার ষ্ট্রীট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S. M. Ragib Hasan', NULL, NULL, 'জনাব এস. এম. রাগিব হাসান', 'Male', '01711686590', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL);
INSERT INTO `members` (`id`, `number_id`, `member_since`, `central_committee_post`, `central_committee_order`, `district_committee_post`, `district`, `divisions`, `inst_name`, `inst_name_bn`, `inst_address`, `inst_address_bn`, `inst_trade_license`, `inst_bin`, `inst_tin`, `inst_telephone`, `inst_mobile`, `img`, `inst_img`, `name`, `email`, `blood_group`, `name_bn`, `gender`, `contact`, `home_address`, `standing_committee`, `m_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(269, '00866', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'M/s Afrina Jack Jewellers Diamond', 'মেসার্স আফরিনা জ্যাক জুয়েলার্স ডায়মন্ড', '48, Basi Charan Sen Poddar Street, Dhaka.', '৪৮, বাসী চরন সেন পোদ্দার ষ্ট্রীট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Afrina Jack', NULL, NULL, 'মিসেস আফরিনা জ্যাক', 'Female', '01913200308', NULL, '{\"name\":[\"women-affairs\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(270, '00879', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'KC Bullion & Jewellers', 'কে সি বুলিয়ন এন্ড জুয়েলার্স', '18, Hariprasanna Mitra Road, Dhaka.', '১৮, হরিপ্রসন্ন মিত্র রোড, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Chandan Kumar Ghosh', NULL, NULL, 'বাবু চন্দন কুমার ঘোষ', 'Male', '01826645001', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(271, '00881', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'M/s Preety Gold House', 'মেসার্স প্রীতি গোল্ড হাউজ', '49, Charan Sen Poddar Street, Dhaka.', '৪৯, বাসী চরন সেন পোদ্দার ষ্ট্রীট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Abdul Malek', NULL, NULL, 'জনাব মোঃ আব্দুল মালেক', 'Male', '01716367391', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(272, '00901', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'M/s Shokh Jewellers', 'মেসার্স শখ জুয়েলার্স', '25, 26 Hariprasanna Mitra Road, Dhaka.', '২৫, ২৬ হরিপ্রসন্ন মিত্র রোড, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sardar Md. Gias Uddin', NULL, NULL, 'জনাব সরদার মোঃ গিয়াস উদ্দিন', 'Male', '01711521732', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(273, '00912', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Mayer Doa Gold House', 'মায়ের দোয়া গোল্ড হাউজ', '57, Basi Charan Sen Poddar Street, Dhaka.', '৫৭, বাসী চরন সেন পোদ্দার ষ্ট্রীট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Sredam Paul', NULL, NULL, 'বাবু ছিদাম পাল', 'Male', '01713507299', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(274, '00915', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Brindavan Swarna Kunja', 'বৃন্দাবন স্বর্ণ কুঞ্জ', '51, Basi Charan Sen Poddar Street, Dhaka', '৫১, বাসী চরন সেন পোদ্দার ষ্ট্রীট, ঢাকা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Milon Chandra Shil', NULL, NULL, 'বাবু মিলন চন্দ্র শীল', 'Male', '01749291782', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(275, '00929', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'RK Gold & Diamond Jewellers', 'আর কে গোল্ড এন্ড ডায়মন্ড জুয়েলার্স', '9, Hariprasanna Mitra Road, Kotwali, Dhaka.', '৯, হরিপ্রসন্ন মিত্র রোড, কোতয়ালী, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Rezaul Karim', NULL, NULL, 'জনাব মোঃ রেজাউল করিম', 'Male', '01720061332', NULL, '{\"name\":[\"foreign-tread-and-market-development\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(276, '00934', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Barman Bullion Store', 'বর্মন বুলিয়ন স্টোর', '91, Basi Charan Sen Poddar Street, Dhaka.', '৯১, বাসী চরণ সেন পোদ্দার ষ্ট্রীট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Palash Barman', NULL, NULL, 'জনাব পলাশ বর্মন', 'Male', '01966405354', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(277, '00935', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Jewellers Al Fayez', 'জুয়েলার্স আল ফয়েজ', '6 Hariprasanna Mitra Road, Dhaka.', '৬ নং হরিপ্রসন্ন মিত্র রোড, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Sadequr Rahman', NULL, NULL, 'জনাব মোঃ সাদেকুর রহমান', 'Male', '01966594882', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(278, '00216', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Bipul Jewellers', 'বিপুল জুয়েলার্স', '40/41, Tanti Bazar, Dhaka.', '৪০/৪১, তাঁতী বাজার, ঢাকা।', NULL, NULL, NULL, '7394786', NULL, NULL, NULL, 'Babu Bipul Ghosh Shankar', NULL, NULL, 'বাবু বিপুল ঘোষ শংকর', 'Male', '01714005092', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(279, '00279', NULL, 'vice-president', 99, NULL, 'Dhaka', 'Dhaka', 'Jarwa House (Pvt) Ltd.', 'জড়োয়া হাউস (প্রাঃ) লিঃ', '76, Gulshan Avenue (2nd floor) Dhaka.', '৭৬, গুলশান এভিনিউ (২য়তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Badal Chandra Roy.jpeg', NULL, 'Badal Chandra Roy', NULL, NULL, 'বাবু বাদল চন্দ্র রায়', NULL, '01919217777', NULL, '{\"name\":[\"foreign-tread-and-market-development\",null],\"post\":[\"chairman\",null]}', 1, 1, 2, '2022-05-14 10:13:30', NULL),
(280, '00280', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Diamond World Limited', 'ডায়মন্ড ওয়ার্ল্ড লিমিটেড', '68/1, Gulshan Avenue, Gulshan-1, Dhaka.', '৬৮/১, গুলশান এভিনিউ, গুলশান-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dilip Kumar Agarwal', NULL, NULL, 'বাবু দিলীপ কুমার আগরওয়াল', 'Male', '01711549640', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(281, '00281', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Diamond World (BD) Limited', 'ডায়মন্ড ওয়ার্ল্ড (বিডি) লিমিটেড', '68/1, Gulshan Avenue (3rd Floor), Gulshan-1, Dhaka.', '৬৮/১, গুলশান এভিনিউ (৪র্থতলা), গুলশান-১, ঢাকা।', NULL, NULL, NULL, '7394786', NULL, NULL, NULL, 'Dilip Kumar Agarwala', NULL, NULL, 'বাবু দিলীপ কুমার আগরওয়ালা', 'Male', '01711549640', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(282, '00282', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Al-Hassan Diamond Gallery Ltd.', 'আল-হাসান ডায়মন্ড গ্যালারী লিঃ', '68, Richmond Concord (1st floor) Gulshan-1, Dhaka.', '৬৮, রিচমন্ড কনকর্ড (২য়তলা) গুলশান-১, ঢাকা।', NULL, NULL, NULL, '8816666', NULL, NULL, NULL, 'Md. Khabir Uddin', NULL, NULL, 'জনাব মোঃ খবির উদ্দিন', 'Male', '01711531116', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(283, '00284', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Apan Jewellers', 'আপন জুয়েলার্স', 'B/1, Ground Floor Gulshan (South) Paka Market, Dhaka.', 'বি/১, নীচতলা গুলশান (দ:) পাকা মার্কেট, ঢাকা।', NULL, NULL, NULL, '9850040', NULL, NULL, NULL, 'Azad Ahmed', NULL, NULL, 'জনাব আজাদ আহমেদ', 'Male', '01713046578', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(284, '00285', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Apan Jewellers', 'আপন জুয়েলার্স', '65, Gulshan Avenue, Gulshan-1, Dhaka.', '৬৫, গুলশান এভিনিউ, গুলশান-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gulzar Ahmed', NULL, NULL, 'জনাব গুলজার আহমেদ', 'Male', '01711590370', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(285, '00287', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sach Ltd.', 'সাস লিঃ', 'CWS (A) Plot-6 / A, Gulshan Avenue, Dhaka.', 'সিডব্লিউএস (এ) প্লট-৬/এ, গুলশান এভিনিউ, ঢাকা।', NULL, NULL, NULL, '8833713', NULL, NULL, NULL, 'Sohana Rouf Chowdhury', NULL, NULL, 'মিসেস সোহানা রউফ চৌধুরী', 'Female', '01945357313', NULL, '{\"name\":[\"women-affairs\"], \"post\":[\"vice-chairman\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(286, '00716', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Protiva Jewellers', 'প্রতিভা জুয়েলার্স', '68/1, Gulshan Avenue (3rd Floor) Gulshan-1, Dhaka-1212', '৬৮/১, গুলশান এভিনিউ (৪র্থ তলা) গুলশান-১, ঢাকা-১২১২', NULL, NULL, NULL, '9892314', NULL, NULL, NULL, 'Babu Raj Kumar Roy', NULL, NULL, 'বাবু রাজ কুমার রায়', 'Male', '01712805310', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(287, '00289', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Nur Jewellers', 'নূর জুয়েলার্স', '16, Plaza Market, Gulshan-2, Dhaka.', '১৬, প্লাজা মার্কেট, গুলশান-২, ঢাকা।', NULL, NULL, NULL, '8816754', NULL, NULL, NULL, 'Nazir Ahmed', NULL, NULL, 'জনাব নজির আহমেদ', 'Male', '01727145093', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(288, '00290', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Amin Jewellers', 'নিউ আমিন জুয়েলার্স', 'F-27, DCC Market, Gulshan-2, Dhaka.', 'এফ-২৭, ডিসিসি মার্কেট, গুলশান-২, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kazi Ariful Islam', NULL, NULL, 'জনাব কাজী আরিফুল ইসলাম', 'Male', '01839591780', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(289, '00675', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Diamond World', 'ডায়মন্ড ওয়ার্ল্ড', '68/1, Gulshan Avenue, Dhaka.', '৬৮/১, গুলশান এভিনিউ, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dilip Kumar Agarwala', NULL, NULL, 'জনাব দিলীপ কুমার আগরওয়ালা', 'Male', '01711549640', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(290, '00291', '', '', 99, '', 'Dhaka', 'Dhaka', 'Surana Gold', 'সুরানা গোল্ড', '19, Pink City, Gulshan-2, Dhaka.', '১৯, পিংক সিটি, গুলশান-২, ঢাকা।', '', '', '', '', '', '', NULL, 'Tapan Mallick', '', '', 'তপন মল্লিক', 'Male', '01715064087', '', '{\"name\":[\"foreign-tread-and-market-development\",null],\"post\":[\"Member\",null]}', 1, 1, 2, '2022-05-14 10:13:30', '2022-05-16 15:56:33'),
(291, '00292', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Nakshatra Gold', 'নক্ষত্র গোল্ড', 'C-3 Pink City (2nd Floor), Gulshan-2, Dhaka.', 'সি-৩ পিংক সিটি (৩য় তলা), গুলশান-২, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Kanak Biswas', NULL, NULL, 'বাবু কনক বিশ্বাস', 'Male', '01717768730', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(292, '00293', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'BC Sen Jewellers', 'বিসি সেন জুয়েলার্স', '23, Pink City (2nd Floor), Gulshan-2, Dhaka.', '২৩, পিংক সিটি (৩য়তলা), গুলশান-২, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Bijan Kumar Sen.', NULL, NULL, 'বাবু বিজন কুমার সেন', 'Male', '01720132427', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(293, '00294', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Asmi Jewellers', 'আস্মি জুয়েলার্স', '25, Pink City (2nd Floor), Gulshan, Dhaka.', '২৫, পিংক সিটি (৩য়তলা), গুলশান, ঢাকা।', NULL, NULL, NULL, '8881439', NULL, NULL, NULL, 'Babu Sanjay Chakraborty', NULL, NULL, 'বাবু সঞ্জয় চক্রবর্তী', 'Male', '01715135022', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(294, '00295', '', '', 99, '', 'Dhaka', 'Dhaka', 'R.S Jewellers', 'আর, এস, জুয়েলার্স', '10 / A, Pink City (2nd Floor) Gulshan-2, Dhaka', '১০/এ, পিংক সিটি(৩য়তলা) গুলশান-২, ঢাকা', '', '', '', '8881362', '', '', NULL, 'Babu Samir Roy', '', '', 'বাবু সমীর রায়', 'Male', '01819269249', '', '{\"name\":[\"banking-and-financial-service\",null],\"post\":[\"Member\",null]}', 1, 1, 2, '2022-05-14 10:13:30', '2022-05-16 15:35:35'),
(295, '00296', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'S. K. Pearl House', 'এস. কে. পার্ল হাউস', '21 / A, Pink City (2nd Floor), Gulshan-2, Dhaka.', '২১/এ, পিংক সিটি (৩য়তলা), গুলশান-২, ঢাকা।', NULL, NULL, NULL, '8881670', NULL, NULL, NULL, 'Babu Swapan Karmakar', NULL, NULL, 'বাবু স্বপন কর্মকার', 'Male', '01819459115', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(296, '00297', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Pearl House', 'পার্ল হাউজ', '18, Pink (2nd Floor), Gulshan-2, Dhaka.', '১৮, পিংক সিটি (৩য়তলা), গুলশান-২, ঢাকা।', NULL, NULL, NULL, '8881420', NULL, NULL, NULL, 'Babu Shailendra Nath Biswas', NULL, NULL, 'বাবু শৈলেন্দ্র নাথ বিশ্বাস', 'Male', '01985841862', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(297, '00298', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Tanishq Jewellers', 'তানিশক জুয়েলার্স', '4 / A, Pink City (2nd Floor), Gulshan-2, Dhaka.', '৪/এ, পিংক সিটি (৩য়তলা), গুলশান-২, ঢাকা।', NULL, NULL, NULL, '8881106', NULL, NULL, NULL, 'Babu Badal Saha', NULL, NULL, 'বাবু বাদল সাহা', 'Male', '01720004196', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(298, '00299', '', '', 99, '', 'Dhaka', 'Dhaka', 'Gitanjali Jewellers', 'গীতাঞ্জলী জুয়েলার্স', '21, Pink City (2nd Floor), Gulshan-2, Dhaka.', '২১, পিংক সিটি (৩য়তলা), গুলশান-২, ঢাকা।', '', '', '', '8881365', '', '', NULL, 'Pawan Kumar Agarwal', '', '', 'পবন কুমার আগারওয়াল', 'Male', '01711524955', '', '{\"name\":[\"tariff-and-taxation\",null],\"post\":[\"Member_Secretary\",null]}', 1, 1, 2, '2022-05-14 10:13:30', '2022-05-16 16:05:24'),
(299, '00300', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'D. Damas (The Art of Jewellry)', 'ডি. ডামাস (দি আর্ট অব জুয়েলারী', '20, Pink City (2nd Floor), Gulshan-2, Dhaka.', '২০, পিংক সিটি (৩য়তলা), গুলশান-২, ঢাকা।', NULL, NULL, NULL, '8881200', NULL, NULL, NULL, 'Babu Sreebus Roy', NULL, NULL, 'বাবু শ্রীবাস রায়', 'Male', '01715050081', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(300, '00302', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Gold Gallery', 'গোল্ড গ্যালারী', '27 / C, Pink City (2nd Floor), Gulshan-2, Dhaka.', '২৭/সি, পিংক সিটি (৩য়তলা), গুলশান-২, ঢাকা।', NULL, NULL, NULL, '8881694', NULL, NULL, NULL, 'Babu Uttam Kumar Nag', NULL, NULL, 'বাবু উত্তম কুমার নাগ', 'Male', '01711535031', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(301, '00303', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Golden World', 'গোল্ডেন ওয়ার্ল্ড', '17, Pink City (2nd Floor), Gulshan-2, Dhaka.', '১৭, পিংক সিটি (৩য়তলা), গুলশান-২, ঢাকা।', NULL, NULL, NULL, '8881416', NULL, NULL, NULL, 'Farida Hossain', NULL, NULL, 'মিসেস ফরিদা হোসেন', 'Female', '01729053222', NULL, '{\"name\":[\"women-affairs\"], \"post\":[\"chairman\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(302, '00304', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Parineeta Gold', 'পরিনীতা গোল্ড', '13, Pink City (2nd floor), Gulshan-2, Dhaka.', '১৩, পিংক সিটি (৩য়তলা), গুলশান-২, ঢাকা।', NULL, NULL, NULL, '8881222', NULL, NULL, NULL, 'Babu Ranjit Paul', NULL, NULL, 'বাবু রনজিৎ পাল', 'Male', '01765058333', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(303, '00308', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Anjali Gold', 'অঞ্জলি গোল্ড', '4B, Pink City (2nd Floor) Gulshan-2, Dhaka.', '৪বি, পিংক সিটি (৩য় তলা) গুলশান-২, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nazrul Islam', NULL, NULL, 'জনাব নজরুল ইসলাম', 'Male', '01711520590', NULL, '{\"name\":[\"anti-smuggling-and-law-enforcement\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(304, '00309', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Surana Gold Palace', 'সুরানা গোল্ড প্যালেস', 'Pink City (2nd floor) Gulshan-2, Dhaka.', 'পিংক সিটি (৩য় তলা) গুলশান-২, ঢাকা।', NULL, NULL, NULL, '8881273', NULL, NULL, NULL, 'Babu Pariyo Lal Banik', NULL, NULL, 'বাবু প্রিয় লাল বণিক', 'Male', '01913389005', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(305, '00723', '', 'executive-member', 99, '', 'Dhaka', 'Dhaka', 'Jara Gold', 'জারা গোল্ড', 'Shop-22 (2nd floor) Pink City Gulshan-2, Dhaka.', 'দোঃ-২২ (৩য় তলা) পিংক সিটি গুলশান-২, ঢাকা।', '', '', '', '8881160', '', 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Kazi Naznin Hossain.jpg', NULL, 'Kazi Naznin Hossain', '', '', 'কাজী নাজনীন হোসেন', '', '01717152005', '', '{\"name\":[null,\"foreign-tread-and-market-development\"],\"post\":[null,\"Member\"]}', 1, 1, 2, '2022-05-14 10:13:30', '2022-05-16 15:54:13'),
(306, '00898', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Diamond World', 'ডায়মন্ড ওয়ার্ল্ড', 'Plot-15, Road-103, Block-CEN (C) Pink City Shopping Complex, Shop No-22 (2nd Floor) Gulshan-2, Dhaka.', 'প্লট-১৫, রোড-১০৩, ব্লক-সিইএন (সি) পিংক সিটি শপিং কমপ্লেক্স, দোকান নং-২২ (৩য় তলা) গুলশান-২, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sabita Agarwala', NULL, NULL, 'মিসেস সবিতা আগরওয়ালা', 'Female', '01841199270', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(307, '00310', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Queen Pearl House Jewellers', 'নিউ কুইন পার্ল হাউস জুয়েলার্স', '23/24, Navana Tower (2nd Floor) Gulshan-1, Dhaka.', '২৩/২৪, নাভানা টাওয়ার (৩য়তলা) গুলশান-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Kalachand Karmakar', NULL, NULL, 'বাবু কালাচাঁদ কর্মকার', 'Male', '01715016838', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(308, '00311', '', 'executive-member', 99, '', 'Dhaka', 'Dhaka', 'The Pearl Oasis Jewellers', 'দি পার্ল ওয়েসিস জুয়েলার্স', '15-17, Navana Tower (3rd Floor) Gulshan-1, Dhaka.', '১৫-১৭, নাভানা টাওয়ার(৪র্থতলা) গুলশান-১, ঢাকা।', '', '', '', '', '', 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Joydeb Saha.jpg', NULL, 'Babu Joydev Saha', '', '', 'বাবু জয়দেব সাহা', '', '01819220977', '', '{\"name\":[null,\"foreign-tread-and-market-development\"],\"post\":[null,\"Member_Secretary\"]}', 1, 1, 2, '2022-05-14 10:13:30', '2022-05-16 15:53:45'),
(309, '00312', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Queen Pearl House', 'কুইন পার্ল হাউজ', '45, Navana Tower (3rd Floor), Gulshan-1, Dhaka.', '৪৫, নাভানা টাওয়ার (৪র্থতলা), গুলশান-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Bijan Kumar Sen.', NULL, NULL, 'বাবু বিজন কুমার সেন', 'Male', '01720132427', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(310, '00315', NULL, 'assistant-secretary', 99, NULL, 'Dhaka', 'Dhaka', 'Gold World', 'গোল্ড ওয়ার্ল্ড', '10 / A, Navana Tower (1st Floor), Gulshan-1, Dhaka.', '১০/এ, নাভানা টাওয়ার (২য়তলা), গুলশান-১, ঢাকা।', NULL, NULL, NULL, '9880698', NULL, 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Masudur Rahman.jpeg', NULL, 'Masudur Rahman', NULL, NULL, 'জনাব মাসুদুর রহমান', NULL, '01711439595', NULL, '{\"name\":[\"law-and-membership\",null],\"post\":[\"vice-chairman\",null]}', 1, 1, 2, '2022-05-14 10:13:30', NULL),
(311, '00316', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Pearls Paradise (Pvt) Ltd.', 'পালস প্যারাডাইস (প্রাঃ) লিঃ', '21/22, Navana Tower (2nd Floor), Gulshan-1, Dhaka.', '২১/২২, নাভানা টাওয়ার (৩য়তলা), গুলশান-১, ঢাকা।', NULL, NULL, NULL, '8834107', NULL, NULL, NULL, 'Tahmina Enayet', NULL, NULL, 'মিসেস তাহমিনা এনায়েত', 'Female', '01837736854', NULL, '{\"name\":[\"women-affairs\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(312, '00317', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Ruma Jewellers', 'দি রুমা জুয়েলার্স', '25, Navana Tower (3rd floor), Gulshan-1, Dhaka.', '২৫, নাভানা টাওয়ার (৪র্থতলা), গুলশান-১, ঢাকা।', NULL, NULL, NULL, '9893438', NULL, NULL, NULL, 'Babu Shyamal Kumar Basak', NULL, NULL, 'বাবু শ্যামল কুমার বসাক', 'Male', '01711234292', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(313, '00318', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Royal Diamond', 'রয়েল ডায়মন্ড', '13, Navana Tower (3rd Floor), Gulshan-1, Dhaka.', '১৩, নাভানা টাওয়ার (৪র্থতলা), গুলশান-১, ঢাকা।', NULL, NULL, NULL, '8837160', NULL, NULL, NULL, 'Fazlul Haque Pathan', NULL, NULL, 'জনাব ফজলুল হক পাঠান', 'Male', '01772144475', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(314, '00320', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Shreeja Gold Palace', 'শ্রীজা গোল্ড প্যালেস', '2,4-7, Navana Tower (3rd Floor), Gulshan-1, Dhaka.', '২,৪-৭, নাভানা টাওয়ার (৪র্থতলা), গুলশান-১, ঢাকা।', NULL, NULL, NULL, '8815448', NULL, NULL, NULL, 'Eng: Manik K Bhattacharya', NULL, NULL, 'ইঞ্জিঃ মানিক কে ভট্টাচার্য্য', 'Male', '01857872313', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(315, '00322', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Games Classic', 'নিউ জেমস্ ক্লাসিক', '05, Navana Tower (2nd Floor) Gulshan-1, Dhaka.', '০৫, নাভানা টাওয়ার (৩য়তলা) গুলশান-১, ঢাকা।', NULL, NULL, NULL, '9850684', NULL, NULL, NULL, 'Md. Azad Hossain', NULL, NULL, 'জনাব মোঃ আজাদ হোসেন', 'Male', '01716182959', NULL, '{\"name\":[\"exhibition-tread-and-event-management\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(316, '00323', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Aban Gold', 'আবান গোল্ড', '13, Navana Tower (2nd Floor) Gulshan-1, Dhaka.', '১৩, নাভানা টাওয়ার (৩য়তলা)গুলশান-১,ঢাকা।', NULL, NULL, NULL, '9851294', NULL, NULL, NULL, 'Shabana Parveen', NULL, NULL, 'মিসেস শাবানা পারভীন', 'Female', '01871301300', NULL, '{\"name\":[\"women-affairs\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(317, '00325', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Soul James & Diamond', 'সোল জেমস এন্ড ডায়মন্ড', '11, Navana Tower (3rd Floor) Gulshan-1, Dhaka.', '১১, নাভানা টাওয়ার (৪র্থতলা) গুলশান-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Omar Gul Newaz', NULL, NULL, 'জনাব ওমর গুল নেওয়াজ', 'Male', '01755940555', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(318, '00685', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Payel Jewellers', 'পায়েল জুয়েলার্স', '26, Navana Tower (3rd Floor) Gulshan-1, Dhaka', '২৬, নাভানা টাওয়ার (৪র্থ তলা) গুলশান-১, ঢাকা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pratima Saha', NULL, NULL, 'মিসেস প্রতিমা সাহা', 'Female', '01715110015', NULL, '{\"name\":[\"women-affairs\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(319, '00858', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Classic Gold & Diamond Jewellery', 'ক্লাসিক গোল্ড এন্ড ডায়মন্ড জুয়েলারী', '07, Navana Tower (1st floor) Gulshan-1, Dhaka.', '০৭, নাভানা টাওয়ার (২য় তলা) গুলশান-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Azad Hossain', NULL, NULL, 'জনাব মোঃ আজাদ হোসেন', 'Male', '01716182959', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(320, '00872', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Oasis Jewellers', 'দি ওয়েসিস জুয়েলার্স', '2,3,6, Navana Tower (1st floor) Dhaka.', '২,৩,৬, নাভানা টাওয়ার (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Joydev Saha', NULL, NULL, 'বাবু জয়দেব সাহা', 'Male', '01819220977', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(321, '00887', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Royal Gems', 'রয়েল জেমস', '05 Navana Tower (1st floor) Gulshan-1, Dhaka.', '০৫ নাভানা টাওয়ার (২য় তলা) গুলশান-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Ramzan Ali Pathan', NULL, NULL, 'জনাব মোঃ রমজান আলী পাঠান', 'Male', '01819477292', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(322, '00932', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Saondoz Gold', 'সাওন্দোজ গোল্ড', '45, Navana Tower Shopping Complex, Shop 10B (1st Floor) Gulshan, Dhaka', '৪৫, নাভানা টাওয়ার শপিং কমপ্লেক্স, দোকান ১০বি (২য় তলা) গুলশান, ঢাকা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shaon Saha', NULL, NULL, 'জনাব শাওন সাহা', 'Male', '01777353572', NULL, '{\"name\":[\"law-and-membership\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(323, '00717', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Rangdhonu Jewellers', 'রংধনু জুয়েলার্স', 'CES (F) -8, 68/1, Gulshan Avenue (3rd Floor) Gulshan-1, B / A, Dhaka-1212.', 'সিইএস (এফ) -৮, ৬৮/১, গুলশান এভিনিউ (৪র্থ তলা) গুলশান-১, বি/এ, ঢাকা-১২১২।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Miss Tania Akhter', NULL, NULL, 'মিস তানিয়া আক্তার', 'Male', '01944635747', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(324, '00327', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'M/s. Manimala Jewellers', 'মেসার্স মনিমালা জুয়েলার্স', '9, Banani Super Market (1st Floor, Dhaka).', '৯, বনানী সুপার মার্কেট (২য়তলা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Rabiul Islam', NULL, NULL, 'জনাব মোঃ রবিউল ইসলাম', 'Male', '01711393879', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(325, '00329', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Samoy Jewellers', 'সময় জুয়েলার্স', '377,378, Concord Police Plaza (1st Floor) Gulshan-1, Dhaka.', '৩৭৭,৩৭৮, কনকর্ড পুলিশ প্লাজা (২য়তলা) গুলশান-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Ruhi Das Paul', NULL, NULL, 'বাবু রুহী দাস পাল', 'Male', '01913944257', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(326, '00330', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Senko Gold & Diamond', 'সেনকো গোল্ড এন্ড ডায়মন্ড', '331, Concord Police Plaza, Gulshan-1, Dhaka.', '৩৩১, কনকর্ড পুলিশ প্লাজা, গুলশান-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mostafizur Rahman', NULL, NULL, 'জনাব মোস্তাফিজুর রহমান', 'Male', '01790119977', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(327, '00660', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Alif Jewellers & Diamond', 'আলিফ জুয়েলার্স এন্ড ডায়মন্ড', '364, Police Plaza, Level-3, Gulshan-1, Dhaka.', '৩৮৪, পুলিশ প্লাজা, লে-৩, গুলশান-১, ঢাকা।', NULL, NULL, NULL, '9822142', NULL, NULL, NULL, 'Abdul Karim Mia', NULL, NULL, 'জনাব আব্দুল করিম মিয়া', 'Male', '01912238977', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(328, '00909', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Venus Jewellers Limited', 'ভেনাস জুয়েলার্স লিমিটেড', 'Plot-2, Police Plaza Concord Shop No-324-329, Level-3, Gulshan-1, Dhaka-1212', 'প্লট-২, পুলিশ প্লাজা কনকর্ড দোকান নং-৩২৪-৩২৯, লেভেল-৩, গুলশান-১, ঢাকা-১২১২', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shefali Malakar', NULL, NULL, 'মিসেস শেফালী মালাকার', 'Female', '01715157617', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(329, '00924', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Golden World Jewellers', 'গোল্ডেন ওয়ার্ল্ড জুয়েলার্স', 'Plot-02, Road-144, Police Plaza Concord (2nd Floor) Shop No-371, Gulshan-1, Dhaka-1212', 'প্লট-০২, রোড-১৪৪, পুলিশ প্লাজা কনকর্ড (৩য় তলা) দোকান নং-৩৭১, গুলশান-১, ঢাকা-১২১২', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Farida Hossain', NULL, NULL, 'মিসেস ফরিদা হোসেন', 'Female', '01729053222', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(330, '00705', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Malabar Diamonds Limited', 'মালাবার ডায়মন্ডস লিমিটেড', '68/1, Gulshan Avenue, Dhaka.', '৬৮/১, গুলশান এভিনিউ, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dilip Kumar Agarwala', NULL, NULL, 'দিলীপ কুমার আগরওয়ালা', 'Male', '01711549640', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(331, '00888', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'B Shakha Jewellers', 'বি শখা জুয়েলার্স', 'Ga-2, Shop - J-20 (1st Floor) Subastu Nazar Valley Shopping Mall, Dhaka.', 'গ-২, দোকান- জে-২০ (২য় তলা) সুবাস্তু নজর ভ্যালী শপিং মল, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Pran Krishna Paul', NULL, NULL, 'বাবু প্রাণ কৃষ্ণ পাল', 'Male', '01864008952', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(332, '00715', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Diamond World', 'ডায়মন্ড ওয়ার্ল্ড', '68/1, Gulshan Avenue, Gulshan-1, Dhaka-1212', '৬৮/১, গুলশান এভিনিউ, গুলশান-১, ঢাকা-১২১২', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dilip Kumar Agarwala', NULL, NULL, 'জনাব দিলীপ কুমার আগরওয়ালা', 'Male', '01711549640', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(333, '00288', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Vasavi Jewellers Ltd.', 'ভাসাভী জুয়েলার্স লিঃ', 'F-151 Mohakhali, Gulshan, Dhaka.', 'এফ-১৫১ মহাখালী, গুলশান, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kamal Zaman Mollah', NULL, NULL, 'জনাব কামাল জামান মোল্লা', 'Male', '01760608994', NULL, '{\"name\":[\"anti-smuggling-and-law-enforcement\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(334, '00933', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Dreamz Instrument Technology', 'ড্রিমজ ইন্সট্রুমেন্ট টেকনোলজি', 'House No-103, Road No-13 / A, Block-C, Banani, Dhaka.', 'বাড়ী নং-১০৩, রোড নং-১৩/এ, ব্লক-সি, বানানী, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Ali Hossain', NULL, NULL, 'জনাব মোঃ আলী হোসেন', 'Male', '01819252916', NULL, '{\"name\":[\"tariff-and-taxation\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(335, '00332', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Porna Jewellers', 'পর্ণা জুয়েলার্স', '8, Mouchak Market 1st floor), Dhaka.', '৮, মৌচাক মার্কেট (২য়তলা), ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rita Basak', NULL, NULL, 'মিসেস রীতা বসাক', 'Female', '01759976634', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(336, '00333', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Fashion Jewellers', 'দি ফ্যাশন জুয়েলার্স', 'E / 9 / B, Mouchak Market (Ground Floor), Dhaka.', 'ই/৯/বি, মৌচাক মার্কেট (নীচতলা), ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Tutul Das', NULL, NULL, 'বাবু টুটুল দাস', 'Male', '01732139700', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(337, '00334', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Muslim Jewellers', 'দি মুসলিম জুয়েলার্স', 'D-6, Mouchak Market (Ground Floor), Dhaka.', 'ডি-৬, মৌচাক মার্কেট (নীচতলা), ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Rana Poddar', NULL, NULL, 'বাবু রানা পোদ্দার', 'Male', '01955908939', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(338, '00335', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Keya Jewellers', 'কেয়া জুয়েলার্স', '22,23, Mouchak Market (1st floor), Dhaka.', '২২,২৩, মৌচাক মার্কেট(২য়তলা), ঢাকা।', NULL, NULL, NULL, '8312388', NULL, NULL, NULL, 'Babu Paritosh Paul', NULL, NULL, 'বাবু পরিতোষ পাল', 'Male', '01712834802', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(339, '00337', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Bipasha Jewellers', 'নিউ বিপাশা জুয়েলার্স', 'E / 10 / B, Mouchak Market, Dhaka.', 'ই/১০/বি, মৌচাক মার্কেট, ঢাকা।', NULL, NULL, NULL, '9355101', NULL, NULL, NULL, 'Babu Ratan Chandra Dhor', NULL, NULL, 'বাবু রতন চন্দ্র ধর', 'Male', '01711586268', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(340, '00338', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Aftab Jewellers', 'আফতাব জুয়েলার্স', 'D-3, Mouchak Market, Dhaka.', 'ডি-৩, মৌচাক মার্কেট, ঢাকা।', NULL, NULL, NULL, '9362343', NULL, NULL, NULL, 'Babu Goutam Ghosh', NULL, NULL, 'বাবু গেীতম ঘোষ', 'Male', '01754300787', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(341, '00339', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Asif Jewellers', 'আসিফ জুয়েলার্স', 'Bank 17 Mouchak Market (2nd Floor), Dhaka.', 'ব্যাংক ১৬ মৌচাক মার্কেট (২য়তলা), ঢাকা।', NULL, NULL, NULL, '9353452', NULL, NULL, NULL, 'Alim Uddin', NULL, NULL, 'জনাব আলিম উদ্দিন', 'Male', '01713000872', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(342, '00340', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Shelima Jewellers', 'শেলিমা জুয়েলার্স', 'Bank 14 / A Mouchak Market (1st Floor), Dhaka.', 'ব্যাংক ১৪/এ মৌচাক মার্কেট (২য়তলা), ঢাকা।', NULL, NULL, NULL, '9357605', NULL, NULL, NULL, 'Maruf Ahmed Khan', NULL, NULL, 'জনাব মারুফ আহম্মেদ খাঁন', 'Male', '01813700562', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(343, '00341', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Apan Jewellers', 'আপন জুয়েলার্স', 'B 2-3, Mouchak Market, Dhaka.', 'বি ২-৩, মৌচাক মার্কেট, ঢাকা।', NULL, NULL, NULL, '9342657', NULL, NULL, NULL, 'Dildar Ahmed', NULL, NULL, 'জনাব দিলদার আহমেদ', 'Male', '01711835060', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(344, '00342', NULL, 'assistant-secretary', 99, NULL, 'Dhaka', 'Dhaka', 'Manimala Jewellers', 'মনিমালা জুয়েলার্স', 'E / 12, Mouchak Market, Dhaka.', 'ই/১২, মৌচাক মার্কেট, ঢাকা।', NULL, NULL, NULL, '9349806', NULL, 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Tajul Islam Lablu.jpeg', NULL, 'Md. Tajul Islam (Lavlu)', NULL, NULL, 'জনাব মোঃ তাজুল ইসলাম (লাভলু)', NULL, '01711527226', NULL, '{\"name\":[\"foreign-tread-and-market-development\",null],\"post\":[\"vice-chairman\",null]}', 1, 1, 2, '2022-05-14 10:13:30', NULL),
(345, '00343', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Jahan Jewellers', 'জাহান জুয়েলার্স', 'D-15, Mouchak Market, Dhaka.', 'ডি-১৫, মৌচাক মার্কেট, ঢাকা।', NULL, NULL, NULL, '9331132', NULL, NULL, NULL, 'Abul Hossain Mia', NULL, NULL, 'জনাব আবুল হোসেন মিয়া', 'Male', '01716004160', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(346, '00344', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Star Jewellers', 'নিউ স্টার জুয়েলার্স', '10, Mouchak Market (1st floor) Dhaka.', '১০, মৌচাক মার্কেট(২য়তলা) ঢাকা।', NULL, NULL, NULL, '9333698', NULL, NULL, NULL, 'Babu Nirmal Krishna Sen (Sagar)', NULL, NULL, 'বাবু নির্মল কৃষ্ণ সেন (সাগর)', 'Male', '01720578918', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(347, '00345', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Gold Star Jewellers', 'গোল্ড ষ্টার জুয়েলার্স', '15 / A, Mouchak Market (1st Floor), Dhaka.', '১৫/এ, মৌচাক মার্কেট(২য়তলা), ঢাকা।', NULL, NULL, NULL, '9339998', NULL, NULL, NULL, 'Md. Sirajul Haque Khan', NULL, NULL, 'জনাব মোঃ সিরাজুল হক খান', 'Male', '01711537382', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(348, '00346', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Anika Jewellers', 'আনিকা জুয়েলার্স', '113 / A, Mouchak Market (1st Floor), Dhaka.', '১১৩/এ, মৌচাক মার্কেট(২য়তলা), ঢাকা।', NULL, NULL, NULL, '9338309', NULL, NULL, NULL, 'Babu Uttam Kumar Paul', NULL, NULL, 'বাবু উত্তম কুমার পাল', 'Male', '01911381275', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(349, '00347', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Alo Jewellers', 'আলো জুয়েলার্স', 'E / 11 / A, Mouchak Market (Ground Floor) Dhaka.', 'ই/১১/এ, মৌচাক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '8331916', NULL, NULL, NULL, 'Meherun Nesha', NULL, NULL, 'মিসেস মেহেরুন নেছা', 'Female', '01812861962', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(350, '00348', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Rajmani Jewellers', 'রাজমনি জুয়েলার্স', 'A / 105, Mouchak Market (1st Floor) Dhaka.', 'এ/১০৫, মৌচাক মার্কেট (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9354080', NULL, NULL, NULL, 'Babu Shankar Chandra Paul', NULL, NULL, 'বাবু শংকর চন্দ্র পাল', 'Male', '01712044390', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(351, '00349', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Palki Jewellers', 'পালকি জুয়েলার্স', 'D-7/ A, Mouchak Market (Ground Floor) Dhaka.', 'ডি-৭/এ, মৌচাক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9352187', NULL, NULL, NULL, 'Babu Ajit Kumar Majumder', NULL, NULL, 'বাবু অজিত কুমার মজুমদার', 'Male', '01819159689', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(352, '00350', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Eva Jewellers', 'ইভা জুয়েলার্স', '9, Mouchak Market (1st floor) Dhaka.', '৯, মৌচাক মার্কেট (২য়তলা) ঢাকা।', NULL, NULL, NULL, '9332946', NULL, NULL, NULL, 'Golam Mohammad', NULL, NULL, 'জনাব গোলাম মোহাম্মদ', 'Male', '01819144559', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(353, '00351', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Jhenuk Jewellers', 'নিউ ঝিনুক জুয়েলার্স', 'E / 9 / A, Mouchak Market (Ground Floor) Dhaka.', 'ই/৯/এ, মৌচাক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9356357', NULL, NULL, NULL, 'Babu Subir Das', NULL, NULL, 'বাবু সুবীর দাস', 'Male', '01720287276', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(354, '00354', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sonalika Jewellers', 'সোনালিকা জুয়েলার্স', 'D-7, Mouchak Market (Ground Floor) Dhaka.', 'ডি-৭, মৌচাক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9338613', NULL, NULL, NULL, 'Babu Lipon Karmakar', NULL, NULL, 'বাবু লিপন কর্মকার', 'Male', '01717756803', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(355, '00355', NULL, 'assistant-secretary', 99, NULL, 'Dhaka', 'Dhaka', 'The Fancy Jewellers', 'দি ফেন্সী জুয়েলার্স', 'D-4, Mouchak Market (Ground Floor) Dhaka.', 'ডি-৪, মৌচাক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9351979', NULL, NULL, NULL, 'Mr. Dilip Chandra Ghosh', NULL, NULL, 'জনাব দিলীপ চন্দ্র ঘোষ', NULL, '01715940375', NULL, '{\"name\":[null,null],\"post\":[null,null]}', 1, 1, 2, '2022-05-14 10:13:30', NULL),
(356, '00356', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Mohammadi Jewellers', 'মোহাম্মদী জুয়েলার্স', 'E / 2, Mouchak Market (Ground Floor) Dhaka.', 'ই/২, মৌচাক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9330336', NULL, NULL, NULL, 'Minti Rani Ghosh', NULL, NULL, 'মিসেস মিনতী রানী ঘোষ', 'Female', '01715940375', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(357, '00629', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Bishwa Sundory Jewellers', 'বিশ্ব সুন্দরী জুয়েলার্স', 'F-12, Mouchak Market (Ground Floor) Dhaka.', 'এফ-১২, মৌচাক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9337637', NULL, NULL, NULL, 'Ferdousi Sadeq', NULL, NULL, 'মিসেস ফেরদৌসী সাদেক', 'Female', '01778888998', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(358, '00357', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Mouchak Jewellers', 'মৌচাক জুয়েলার্স', 'D-13, 14, Mouchak Market (Ground Floor) Dhaka.', 'ডি-১৩,১৪, মৌচাক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '8362328', NULL, NULL, NULL, 'Sumaiya Sin Pasha', NULL, NULL, 'সুমাইয়া সিন পাশা', 'Male', '01718300874', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(359, '00358', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sajan Jewellers', 'সাজন জুয়েলার্স', 'E / 8, Mouchak Market (Ground Floor) Dhaka.', 'ই/৮, মৌচাক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9344789', NULL, NULL, NULL, 'Babu Ranjit Saha', NULL, NULL, 'বাবু রনজিত সাহা', 'Male', '01911179927', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(360, '00359', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Gold House', 'নিউ গোল্ড হাউস', 'D-2, Mouchak Market (Ground Floor) Dhaka.', 'ডি-২, মৌচাক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9358895', NULL, NULL, NULL, 'Babu Shyamal Mallick', NULL, NULL, 'বাবু শ্যামল মল্লিক', 'Male', '01715005713', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(361, '00360', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Angrupa Jewellers', 'অঙ্গরূপা জুয়েলার্স', 'E-4, Mouchak Market (Ground Floor) Dhaka.', 'ই-৪, মৌচাক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9352883', NULL, NULL, NULL, 'Babu Bancha Ram Das', NULL, NULL, 'বাবু বাঞ্চা রাম দাস', 'Male', '01752846868', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(362, '00361', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sundory Jewellers', 'সুন্দরী জুয়েলার্স', 'E-5 / B Mouchak Market (Ground Floor) Dhaka.', 'ই-৫/বি মৌচাক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '8351682', NULL, NULL, NULL, 'Babu Dilip Poddar', NULL, NULL, 'বাবু দিলীপ পোদ্দার', 'Male', '01914198085', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(363, '00362', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Kakan Jewellers', 'নিউ কাঁকন জুয়েলার্স', 'D-5-A, Mouchak Market (Ground Floor), Dhaka.', 'ডি-৫-এ, মৌচাক মার্কেট (নীচতলা), ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Sumon Poddar', NULL, NULL, 'বাবু সুমন পোদ্দার', 'Male', '01917534384', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(364, '00363', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Decent Jewellers', 'ডিসেন্ট জুয়েলার্স', 'A / 106-107, Mouchak Market (1st floor), Dhaka.', 'এ/১০৬-১০৭, মৌচাক মার্কেট (২য় তলা), ঢাকা।', NULL, NULL, NULL, '9359735', NULL, NULL, NULL, 'Babu Uttam Ghosh', NULL, NULL, 'বাবু উত্তম ঘোষ', 'Male', '01724526162', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(365, '00686', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Mahua Jewellers', 'মহুয়া জুয়েলার্স', 'E-6, Mouchak Market (Ground Floor) Dhaka.', 'ই-৬, মৌচাক মার্কেট (নীচতলা) ঢাকা।', NULL, NULL, NULL, '9357242', NULL, NULL, NULL, 'Sanyukta Debnath', NULL, NULL, 'মিসেস সংযুক্তা দেবনাথ', 'Female', '01674662137', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(366, '00709', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Palki Jewellers', 'নিউ পালকি জুয়েলার্স', 'E-7 / A, Mouchak Market (Ground Floor) Dhaka.', 'ই-৭/এ, মৌচাক মার্কেট (নীচ তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Bhabesh Chandra Sarkar', NULL, NULL, 'বাবু ভবেশ চন্দ্র সরকার', 'Male', '01777226119', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(367, '00720', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Palki Jewellers', 'দি পালকি জুয়েলার্স', 'E-7 / B Mouchak Market (Ground Floor) Dhaka.', 'ই-৭/বি মৌচাক মার্কেট (নীচ তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Siddeswar Karmakar', NULL, NULL, 'বাবু সিদ্ধেশ্বর কর্মকার', 'Male', '01715015345', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(368, '00722', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Tania Jewellers', 'নিউ তানিয়া জুয়েলার্স', 'A-107, Mouchak Market (1st Floor) Dhaka.', 'এ-১০৭, মৌচাক মার্কেট (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Nirmal Ghosh', NULL, NULL, 'বাবু নির্মল ঘোষ', 'Male', '01715079272', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(369, '00742', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Kobari Jewellers', 'কবরী জুয়েলার্স', 'G-1, Mouchak Market (Ground Floor) Dhaka.', 'জি-১, মৌচাক মার্কেট (নীচ তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Prantosh Kumar Dutta', NULL, NULL, 'জনাব প্রান্তোষ কুমার দত্ত', 'Male', '01719188859', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(370, '00743', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Jalsa Jewellers', 'জলসা জুয়েলার্স', 'D-10, Mouchak Market (Ground Floor) Dhaka', 'ডি-১০, মৌচাক মার্কেট (নীচতলা) ঢাকা', NULL, NULL, NULL, '48321731', NULL, NULL, NULL, 'Babu Ratan Chandra Dutta', NULL, NULL, 'বাবু রতন চন্দ্র দত্ত', 'Male', '01819169009', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(371, '00767', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Parama Jewellers Limited', 'পরমা জুয়েলার্স লিমিটেড', 'D-11, Mouchak Market (Ground Floor) Dhaka.', 'ডি-১১, মৌচাক মার্কেট (নীচ তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Saiful Islam Chowdhury', NULL, NULL, 'জনাব মোঃ সাইফুল ইসলাম চৌধুরী', 'Male', '01304330004', NULL, '{\"name\":[\"foreign-tread-and-market-development\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(372, '00783', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Jonopriyo Jewellers', 'জনপ্রিয় জুয়েলার্স', 'E-1, Mouchak Market (Ground Floor) Dhaka.', 'ই-১, মৌচাক মার্কেট (নীচ তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sree Satya Ranjan Majumdar', NULL, NULL, 'শ্রী সত্য রঞ্জন মজুমদার', 'Male', '01775535939', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(373, '00852', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Janani Jewellers', 'জননী জুয়েলার্স', 'E / 5 / A, Mouchak Market, Dhaka.', 'ই/৫/এ, মৌচাক মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Sridam Chandra Poddar', NULL, NULL, 'বাবু শ্রীদাম চন্দ্র পোদ্দার', 'Male', '01715590049', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(374, '00853', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Lavanya Jewellers', 'লাবন্য জুয়েলার্স', '21, Mouchak Market (1st floor) Dhaka.', '২১, মৌচাক মার্কেট (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Masud Hossain', NULL, NULL, 'জনাব মোঃ মাসুদ হোসেন', 'Male', '01712644626', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(375, '00369', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Manimala Jewellers', 'নিউ মনিমালা জুয়েলার্স', 'Option-11, Anarkali Super Market, Dhaka.', 'অপশন-১১, আনারকলি সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Shahidul Islam', NULL, NULL, 'জনাব মোঃ শহিদুল ইসলাম', 'Male', '01711113063', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(376, '00372', '', 'vice-president', 99, '', 'Dhaka', 'Dhaka', 'New General Jewellers', 'নিউ জেনারেল জুয়েলার্স', 'F-37, 38, Anarkali Super Market (2nd Floor), Dhaka.', 'এফ-৩৭,৩৮, আনারকলি সুপার মার্কেট (২য়তলা), ঢাকা।', '', '', '', '', '', 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Anower Hossain.jpeg', NULL, 'Anowar Hossain', '', '', 'জনাব আনোয়ার হোসেন', '', '01713009791', '', '{\"name\":[\"monitoring-of-districts-organization\",null,\"tariff-and-taxation\"],\"post\":[\"vice-chairman\",null,\"Chairman\"]}', 1, 1, 2, '2022-05-14 10:13:30', '2022-05-16 16:03:50'),
(377, '00373', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Karuka Jewellers', 'নিউ কারুকা জুয়েলার্স', 'F-87, Anarkali Super Market (1st Floor), Dhaka', 'এফ-৮৭, আনারকলি সুপার মার্কেট (২য়তলা), ঢাকা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Abdul Mannan', NULL, NULL, 'জনাব মোঃ আব্দুল মান্নান', 'Male', '01709092322', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(378, '00374', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Al Hera Jewellers', 'দি আল হেরা জুয়েলার্স', '63, Anarkali Super Market (Ground Floor), Dhaka', '৬৩, আনারকলি সুপার মার্কেট (নীচতলা), ঢাকা', NULL, NULL, NULL, '9352954', NULL, NULL, NULL, 'Firoza Akhtar', NULL, NULL, 'মিসেস ফিরোজা আকতার', 'Female', '01936276714', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(379, '00632', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Tizara Jewellers', 'তিজারা জুয়েলার্স', 'F.O.P-6, Anarkali Suh Market (1st Floor) Dhaka.', 'এফ.ও.পি-৬, আনারকলি সুঃ মার্কেট (২য়তলা) ঢাকা।', NULL, NULL, NULL, '8322314', NULL, NULL, NULL, 'Md. Monirul Islam', NULL, NULL, 'জনাব মোঃ মনিরুল ইসলাম', 'Male', '01911321953', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(380, '00749', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Manimukta Jewellers', 'নিউ মনিমুক্তা জুয়েলার্স', 'F-99-118, Anarkali Super Market (1st Floor) Dhaka.', 'এফ-৯৯-১১৮, আনারকলি সুপার মার্কেট (২য় তলা) ঢাকা।', NULL, NULL, NULL, '8356509', NULL, NULL, NULL, 'Md. Babul Hossain', NULL, NULL, 'জনাব মোঃ বাবুল হোসেন', 'Male', '01712964676', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(381, '00381', NULL, 'executive-member', 99, NULL, 'Dhaka', 'Dhaka', 'Shaily jewellers', 'শৈলী জুয়েলার্স', '184, Farmview Super Market (1st Floor) Dhaka.', '১৮৪, ফার্মভিউ সুঃ মার্কেট(২য়তলা) ঢাকা।', NULL, NULL, NULL, '9348532', NULL, 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Ferdous Alam Shahin.jpg', NULL, 'Md. Ferdous Alam Shahin', NULL, NULL, 'জনাব মোঃ ফেরদৌস আলম শাহীন', NULL, '01911381395', NULL, '{\"name\":[null,null],\"post\":[null,null]}', 1, 1, 2, '2022-05-14 10:13:30', NULL),
(382, '00382', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Gold Star Jewellers', 'নিউ গোল্ড ষ্টার জুয়েলার্স', '162, Farmview Super Market (1st Floor) Dhaka.', '১৬২, ফার্মভিউ সুঃ মার্কেট(২য়তলা) ঢাকা।', NULL, NULL, NULL, '9335568', NULL, NULL, NULL, 'Babu Nikhil Karmakar', NULL, NULL, 'বাবু নিখিল কর্মকার', 'Male', '01720050255', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(383, '00383', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Dhaka Guinea House', 'নিউ ঢাকা গিনি হাউস', '163, Farmview Super Market (1st Floor) Dhaka.', '১৬৩, ফার্মভিউ সুঃ মার্কেট(২য়তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Umapada Das', NULL, NULL, 'বাবু উমাপদ দাস', 'Male', '01988018802', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(384, '00384', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Chaiti Jewellers', 'দি চৈতী জুয়েলার্স', '179/180 Farmview Super Market (1st Floor) Dhaka.', '১৭৯/১৮০ ফার্মভিউ সুঃ মার্কেট(২য়তলা) ঢাকা।', NULL, NULL, NULL, '9126065', NULL, NULL, NULL, 'Babu Ranjan Kumar Pike', NULL, NULL, 'বাবু রঞ্জণ কুমার পাইক', 'Male', '01711387789', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(385, '00385', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Chaiti Jewellers', 'চৈতী জুয়েলার্স', '157, Farmview Super Market (1st Floor) Dhaka.', '১৪৭, ফার্মভিউ সুঃ মার্কেট(২য়তলা) ঢাকা।', NULL, NULL, NULL, '8127712', NULL, NULL, NULL, 'Babu Ratan Kumar Pike', NULL, NULL, 'বাবু রতন কুমার পাইক', 'Male', '01711062154', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(386, '00386', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'M/s New AP Jewellers', 'মেসার্স নিউ এপি জুয়েলার্স', '156, Farmview Suh Market (2nd Floor) Dhaka.', '১৫৭, ফার্মভিউ সুঃ মার্কেট(২য়তলা) ঢাকা।', NULL, NULL, NULL, '9110063', NULL, NULL, NULL, 'Babu Subas Das', NULL, NULL, 'বাবু সুবাস দাস', 'Male', '01815061299', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(387, '00387', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Bashundhara Jewellers', 'বসুন্ধরা জুয়েলার্স', '181, Farmview Super Market (2nd Floor) Dhaka.', '১৮১, ফার্মভিউ সুঃ মার্কেট(২য়তলা) ঢাকা।', NULL, NULL, NULL, '8141411', NULL, NULL, NULL, 'Babu Joy Gopal Sarkar', NULL, NULL, 'বাবু জয় গোপাল সরকার', 'Male', '01799590272', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(388, '00388', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Nandita Jewellers', 'নিউ নন্দিতা জুয়েলার্স', '148, Farmview Super Market (1st Floor) Dhaka.', '১৪৮, ফার্মভিউ সুঃ মার্কেট(২য়তলা) ঢাকা।', NULL, NULL, NULL, '8119035', NULL, NULL, NULL, 'Prabhavati Barman', NULL, NULL, 'মিসেস প্রভাবতী বর্মন', 'Female', '01715337074', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(389, '00389', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Keya Jewellers', 'কেয়া জুয়েলার্স', '173, Farmview Super market (1st Floor), Dhaka.', '১৭৩, ফার্মভিউ সুঃ মার্কেট(২য়তলা) ঢাকা।', NULL, NULL, NULL, '8127415', NULL, NULL, NULL, 'Babu Sunil Karmakar', NULL, NULL, 'বাবু সুনিল কর্মকার', 'Male', '01711561175', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(390, '00390', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Jhorna Jewelers', 'ঝর্ণা জুয়েলার্স', '165, Farmview Super market (1st Floor), Dhaka.', '১৬৫, ফার্মভিউ সুঃ মার্কেট(২য়তলা) ঢাকা।', NULL, NULL, NULL, '9117683', NULL, NULL, NULL, 'Makhon Rani Mandal', NULL, NULL, 'মিসেস মাখন রানী মন্ডল', 'Female', '01819226753', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(391, '00391', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Modern Guinea Palace', 'মডার্ণ গিনি প্যালেস', '137, Farmview Super market (1st Floor), Dhaka.', '১৩৭, ফার্মভিউ সুঃ মার্কেট(২য়তলা) ঢাকা।', NULL, NULL, NULL, '9119225', NULL, NULL, NULL, 'Babu Manoranjan Das', NULL, NULL, 'বাবু মনোরঞ্জন দাস', 'Male', '01718484409', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(392, '00392', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Fair Gold', 'ফেয়ার গোল্ড', '103/17, Farmview Super market (1st Floor), Dhaka.', '১০৩/১৭, ফার্মভিউ সুঃ মার্কেট(২য়তলা) ঢাকা।', NULL, NULL, NULL, '9110913', NULL, NULL, NULL, 'Shahinur Alam', NULL, NULL, 'জনাব শাহীনুর আলম', 'Male', '01819156999', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(393, '00393', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Priyanka Jewellers', 'নিউ প্রিয়াংকা জুয়েলার্স', '162 / B, Farmview Super Market (1st Floor) Dhaka.', '১৬২/বি, ফার্মভিউ সুঃ মার্কেট(২য়তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Jadunath Ghosh', NULL, NULL, 'বাবু যদুনাথ ঘোষ', 'Male', '01979066550', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(394, '00394', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Mau Jewellers', 'মৌ জুয়েলার্স', '175, Farmview Super Market (1st Floor) Dhaka.', '১৭৫, ফার্মভিউ সুঃ মার্কেট(২য়তলা) ঢাকা।', NULL, NULL, NULL, '8115639', NULL, NULL, NULL, 'Babu Sambhunath Sarkar', NULL, NULL, 'বাবু সম্ভূনাথ সরকার', 'Male', '01711958532', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(395, '00395', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sudipa Jewellers', 'সুদীপা জুয়েলার্স', '168, Farmview Super Market (2nd Floor) Dhaka.', '১৬৮, ফার্মভিউ সুপার মার্কেট (২য়তলা) ঢাকা।', NULL, NULL, NULL, '8118448', NULL, NULL, NULL, 'Sumi Das', NULL, NULL, 'মিসেস সুমী দাস', 'Female', '01715105131', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(396, '00397', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Baurani Jewellers', 'বৌরানী জুয়েলার্স', '132, Farmview Super Market (1st Floor), Dhaka.', '১৩২, ফার্মভিউ সুপার মার্কেট(দোতলা), ঢাকা।', NULL, NULL, NULL, '9136821', NULL, NULL, NULL, 'Babu Shanti Ranjan Sarkar', NULL, NULL, 'বাবু শান্তি রঞ্জন সরকার', 'Male', '01819432979', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL);
INSERT INTO `members` (`id`, `number_id`, `member_since`, `central_committee_post`, `central_committee_order`, `district_committee_post`, `district`, `divisions`, `inst_name`, `inst_name_bn`, `inst_address`, `inst_address_bn`, `inst_trade_license`, `inst_bin`, `inst_tin`, `inst_telephone`, `inst_mobile`, `img`, `inst_img`, `name`, `email`, `blood_group`, `name_bn`, `gender`, `contact`, `home_address`, `standing_committee`, `m_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(397, '00399', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Linkon Jewellers', 'লিংকন জুয়েলার্স', '166, Farmview Super Market (1st floor), Dhaka.', '১৬৬, ফার্মভিউ সুপার মার্কেট(দোতলা), ঢাকা।', NULL, NULL, NULL, '8110257', NULL, NULL, NULL, 'Babu Anil Chandra Sarkar', NULL, NULL, 'বাবু অনিল চন্দ্র সরকার', 'Male', '01712421168', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(398, '00400', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Century Jewellers', 'দি সেঞ্চুরী জুয়েলার্স', '145, Farmview Super Market (1st Floor) Dhaka.', '১৪৫, ফার্মভিউ সুপার মার্কেট (২য়তলা) ঢাকা।', NULL, NULL, NULL, '8115469', NULL, NULL, NULL, 'Babu Shuvo Shaha', NULL, NULL, 'শুভ সাহা', 'Male', '01712811843', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(399, '00401', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Rangabou Jewellers', 'রাঙ্গাবউ জুয়েলার্স', '103 / 12-13, Farmview Super Market, Dhaka.', '১০৩/১২-১৩, ফার্মভিউ সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Shibu Prasad Majumdar', NULL, NULL, 'বাবু শিবু প্রসাদ মজুমদার', 'Male', '01712538976', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(400, '00652', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Kalpana Jewellers', 'দি কল্পনা জুয়েলার্স', '103/16, Farmview Super Market, Dhaka.', '১০৩/১৬, ফার্মভিউ সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Swapan Paul', NULL, NULL, 'বাবু স্বপন পাল', 'Male', '01720129192', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(401, '00671', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Baurani Jewellers', 'নিউ বৌরানী জুয়েলার্স', '146, Farmview Super Market, Dhaka.', '১৪৬, ফার্মভিউ সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Pankaj Roy', NULL, NULL, 'বাবু পঙ্কজ রায়', 'Male', '01748935251', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(402, '00769', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Ridika Jewellers', 'রিদিকা জুয়েলার্স', '153/154, Farmview Super Market, Dhaka.', '১৫৩/১৫৪, ফার্মভিউ সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, '8155052', NULL, NULL, NULL, 'Babu Ravi Das', NULL, NULL, 'বাবু রবি দাস', 'Male', '01819189961', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(403, '00770', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Sheen Jewellers', 'নিউ শীন জুয়েলার্স', '174, Farm View Super Market, Dhaka.', '১৭৪, ফার্ম ভিউ সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Haider Hossain', NULL, NULL, 'জনাব মোঃ হায়দার হোসেন', 'Male', '01748955097', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(404, '00876', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'A R Jewellers', 'এ আর জুয়েলার্স', '117, Farmview Super Market (1st Floor) Dhaka.', '১১৭, ফার্মভিউ সুপার মার্কেট (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Swapan Sarkar', NULL, NULL, 'বাবু স্বপন সরকার', 'Male', '01918504767', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(405, '00877', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Manimukta Jewellers', 'নিউ মনিমুক্তা জুয়েলার্স', '160, Farmview Super Market (1st Floor) Dhaka.', '১৬০, ফার্মভিউ সুপার মার্কেট (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Ramlal Sarkar', NULL, NULL, 'বাবু রামলাল সরকার', 'Male', '01819128852', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(406, '00402', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'LB Jewellers', 'এল বি জুয়েলার্স', '453/454, Sejan Point (3rd Floor), Farmgate, Dhaka.', '৪৫৩/৪৫৪, সিজান পয়েন্ট(৪র্থতলা), ফার্মগেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Nakul Das', NULL, NULL, 'বাবু নকুল দাস', 'Male', '01711445723', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(407, '00404', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Smarany Jewellers', 'স্মরণী জুয়েলার্স', '402, Sejan Point (3rd Floor) Farmgate, Dhaka.', '৪০২, সিজান পয়েন্ট (৪র্থতলা)ফার্মগেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Sarojit Mollik', NULL, NULL, 'বাবু সরোজিৎ মৌলিক', 'Male', '01718661508', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(408, '00403', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Jhenuk Jewellers', 'দি ঝিনুক জুয়েলার্স', '420-421, Sejan Point (3rd Floor) Farmgate, Dhaka.', '৪২০-৪২১, সিজান পয়েন্ট (৪র্থতলা) ফার্মগেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Prabir Das', NULL, NULL, 'বাবু প্রবীর দাস', 'Male', '01716898765', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(409, '00405', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Ananya Jewellers', 'অনন্যা জুয়েলার্স', 'Level-5, Block-D, 6,7, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-ডি, ৬,৭, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sanchita Basak', NULL, NULL, 'মিসেস সঞ্চিতা বসাক', 'Female', '01926585687', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(410, '00406', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Sonargaon Jewellers', 'দি সোনারগাঁ জুয়েলার্স', 'Level-5, Block-D, 75,76,89, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-ডি, ৭৫,৭৬,৮৯, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rekha Rani Saha', NULL, NULL, 'মিসেস রেখা রানী সাহা', 'Female', '01919031461', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(411, '00407', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Standard Jewellers', 'স্ট্যান্ডার্ড জুয়েলার্স', 'Level-5, Block-D, 38, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-ডি, ৩৮, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Dilip Dhor', NULL, NULL, 'বাবু দিলীপ ধর', 'Male', '01913041140', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(412, '00408', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Navana Jewellers', 'নাভানা জুয়েলার্স', 'Level-5, Block-A, 50, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-এ, ৫০, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, '9101524', NULL, NULL, NULL, 'Babu Manik Ratan Malakar', NULL, NULL, 'বাবু মানিক রতন মালাকার', 'Male', '01741231216', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(413, '00409', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Abedin Jewellers', 'আবেদীন জুয়েলার্স', 'Level-5, Block-C, 3,4, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-সি, ৩,৪, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nasima Abedin', NULL, NULL, 'মিসেস নাছিমা আবেদীন', 'Female', '01711748372', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(414, '00410', '', '', 99, '', 'Dhaka', 'Dhaka', 'Palash Jewellers', 'পলাশ জুয়েলার্স', 'Level-5, Block-D, 48, 49, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-ডি, ৪৮,৪৯, বসুন্ধরা সিটি, ঢাকা।', '', '', '', '', '', '', NULL, 'Babu Palash Saha', '', '', 'বাবু পলাশ সাহা', 'Male', '01711011166', '', '{\"name\":[\"foreign-tread-and-market-development\",null],\"post\":[\"Member\",null]}', 1, 1, 2, '2022-05-14 10:13:30', '2022-05-16 15:55:12'),
(415, '00411', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Alankar Niketan Pvt. Ltd.', 'অলংকার নিকেতন প্রাঃ লিঃ', 'Level-5, Block-A, 63-67, 75-78, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-এ, ৬৩-৬৭, ৭৫-৭৮, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, '7395413', NULL, NULL, NULL, 'Momotaz Begum', NULL, NULL, 'মিসেস মমতাজ বেগম', 'Female', '01822890874', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(416, '00412', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Pearl House Jewellers', 'নিউ পার্ল হাউজ জুয়েলার্স', 'Level-5, Block-A, 47, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-এ, ৪৭, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, '9111440', NULL, NULL, NULL, 'Babu Subrata Karmakar', NULL, NULL, 'বাবু সুব্রত কর্মকার', 'Male', '01716129888', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(417, '00415', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Chandrima Jewellers', 'চন্দ্রিমা জুয়েলার্স', 'Level-5, Block-C, 6,7, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-সি, ৬,৭, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, '9102654', NULL, NULL, NULL, 'M, A, Wadud Khan', NULL, NULL, 'জনাব এম, এ, ওয়াদুদ খান', 'Male', '01710850825', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(418, '00416', '', '', 99, '', 'Dhaka', 'Dhaka', 'The Mukta Jewellers', 'দি মুক্তা জুয়েলার্স', 'Level-5, Block-C, 5, 16, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-সি, ৫, ১৬, বসুন্ধরা সিটি, ঢাকা।', '', '', '', '9112374', '', '', NULL, 'Ashish Kumar Mandal', '', '', 'আশিষ কুমার মন্ডল', 'Male', '01819226753', '', '{\"name\":[\"banking-and-financial-service\",null],\"post\":[\"Member_Secretary\",null]}', 1, 1, 2, '2022-05-14 10:13:30', '2022-05-16 15:31:31'),
(419, '00417', NULL, 'assistant-secretary', 99, NULL, 'Dhaka', 'Dhaka', 'Gold King Jewellers', 'গোল্ড কিং জুয়েলার্স', 'Level-5, Block-C, 23,24,24A, 36,37,37A, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-সি, ২৩,২৪,২৪এ,৩৬,৩৭,৩৭এ,বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, '9111440', NULL, 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Enamul Haque Bhuiyan Liton.jpg', NULL, 'Enamul Haque Bhuiyan Liton', NULL, NULL, 'জনাব এনামুল হক ভূঞা লিটন', NULL, '01713009983', NULL, '{\"name\":[\"pricing-and-price-monitoring\",null],\"post\":[\"vice-chairman\",null]}', 1, 1, 2, '2022-05-14 10:13:30', NULL),
(420, '00418', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Senko Jewellers', 'সেনকো জুয়েলার্স', 'Level-5, Block-D, 52-53, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-ডি, ৫২-৫৩, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, '8157726', NULL, NULL, NULL, 'Babu Uttam Kumar Paul', NULL, NULL, 'বাবু উত্তম কুমার পাল', 'Male', '01819152292', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(421, '00725', NULL, 'assistant-secretary', 99, NULL, 'Dhaka', 'Dhaka', 'New Sonartari Jewellers', 'নিউ সোনারতরী জুয়েলার্স', 'Level-5, Block-C, 32, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-সি, ৩২, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, '9141039', NULL, 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Md Liton Hawlader.jpg', NULL, 'Md. Liton Hawladar', NULL, NULL, 'জনাব মোঃ লিটন হাওলাদার', NULL, '01715011226', NULL, '{\"name\":[null,null],\"post\":[\"vice-chairman\",null]}', 1, 1, 2, '2022-05-14 10:13:30', NULL),
(422, '00422', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'P.C Chandra Jewellers', 'পি.সি চন্দ্র জুয়েলার্স', 'Level-5, Block-C, 52, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-সি, ৫২, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, '9104595', NULL, NULL, NULL, 'Babu Nirmal Chandra Paul', NULL, NULL, 'বাবু নির্মল চন্দ্র পাল', 'Male', '01989980738', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(423, '00423', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Diamond World Ltd.', 'ডায়মন্ড ওয়াল্ড লিঃ', 'Level-5, Block-A, 70,71, 80-82, 83, 83A, 83B, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-এ, ৭০,৭১, ৮০-৮২, ৮৩, ৮৩এ, ৮৩বি, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dilip Kumar Agarwala', NULL, NULL, 'বাবু দিলীপ কুমার আগরওয়ালা', 'Male', '01613199319', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(424, '00425', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Matrikanchan Jewellers', 'নিউ মাতৃকাঞ্চন জুয়েলার্স', 'Level-5, Block-C, 73, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-সি, ৭৩, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Uday Shankar Ghosh', NULL, NULL, 'বাবু উদয় শংকর ঘোষ', 'Male', '01711567993', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(425, '00426', NULL, 'Treasurer', 99, NULL, 'Dhaka', 'Dhaka', 'Kundan Jewellry House', 'কুন্দন জুয়েলারী হাউস', 'Level-5, Block-C, 15 Bashundhara City, Dhaka.', 'লে-৫, ব্লক-সি, ১৫ বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, '9110217', NULL, 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Uttam Banik.jpg', NULL, 'Mr. Uttam Banik', NULL, NULL, 'জনাব উত্তম বণিক', NULL, '01926767676', NULL, '{\"name\":[null],\"post\":[null]}', 1, 1, 2, '2022-05-14 10:13:30', NULL),
(426, '00428', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Rajnigandha Jewellers Ltd.', 'রজনীগন্ধা জুয়েলার্স লিঃ', 'Level-5, Block-D, 25, 26, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-ডি, ২৫,২৬, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, '9850040', NULL, NULL, NULL, 'Amirul Islam', NULL, NULL, 'জনাব আমিরুল ইসলাম', 'Male', '01715529876', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(427, '00430', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Fancy Jewellers', 'ফেন্সী জুয়েলার্স', 'Level-5, Block-D, 23, 24, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-ডি, ২৩,২৪, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Dilip Ghosh', NULL, NULL, 'বাবু দিলীপ ঘোষ', 'Male', '01746688525', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(428, '00431', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Saramoni Jewellers', 'সারামনি জুয়েলার্স', 'Level-5, Block-C, 18, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-সি, ১৮, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Ruhul Amin', NULL, NULL, 'জনাব মোঃ রুহুল আমিন', 'Male', '01726485464', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(429, '00432', NULL, 'vice-president', 99, NULL, 'Dhaka', 'Dhaka', 'The Amin Jewellers', 'দি আমিন জুয়েলার্স', 'Level-5, Block-D, 9-11, 20-22, Bashundhara City, Dhaka.', 'লে-৭, ব্লক-ডি, ৯-১১, ২০-২২, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, '9125829', NULL, 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Kazi Naznin Islam.jpg', NULL, 'Kazi Nazneen Islam', NULL, NULL, 'মিসেস কাজী নাজনীন ইসলাম', NULL, '01741010545', NULL, '{\"name\":[\"research-and-development\",null],\"post\":[\"chairman\",null]}', 1, 1, 2, '2022-05-14 10:13:30', NULL),
(430, '00433', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Pearl Oasis Jewellers', 'পার্ল ওয়েসিস জুয়েলার্স', 'Level-5, Block-D, 29, 30, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-ডি, ২৯,৩০, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, '8144803', NULL, NULL, NULL, 'Babu Subrata Kumar Saha', NULL, NULL, 'বাবু সুব্রত কুমার সাহা', 'Male', '01747751460', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(431, '00434', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Shilpi Jewellers', 'শিল্পী জুয়েলার্স', 'Level-5, Block-D, 24 / A, 37 / A, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-ডি, ২৪/এ, ৩৭/এ, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Suma Das', NULL, NULL, 'সুমা দাস', 'Male', '01970488804', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(432, '00435', '', 'executive-member', 99, '', 'Dhaka', 'Dhaka', 'Shatarupa Jewellers', 'শতরূপা জুয়েলার্স', 'Level-5, Block-B, 27,28, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-বি, ২৭,২৮, বসুন্ধরা সিটি, ঢাকা।', '', '', '', '81581010', '', 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Kartick Karmokar.jpg', NULL, 'Mr. Kartik Karmakar', '', '', 'জনাব কার্তিক কর্মকার', '', '01711539986', '', '{\"name\":[null,\"pricing-and-price-monitoring\"],\"post\":[null,\"Member\"]}', 1, 1, 2, '2022-05-14 10:13:30', '2022-05-16 15:40:53'),
(433, '00436', NULL, 'executive-member', 99, NULL, 'Dhaka', 'Dhaka', 'Sultana Jewellers (Pvt) Ltd.', 'সুলতানা জুয়েলার্স (প্রাঃ) লিঃ', 'Level-5, Block-C, 48,49,59,60, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-সি, ৪৮,৪৯,৫৯,৬০, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Mohammad Babul Miah.jpg', NULL, 'Md. Babul Mia', NULL, NULL, 'জনাব মোঃ বাবুল মিয়া', NULL, '01757848262', NULL, '{\"name\":[null,null],\"post\":[null,null]}', 1, 1, 2, '2022-05-14 10:13:30', NULL),
(434, '00437', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Venus Jewellers Ltd.', 'ভেনাস জুয়েলার্স লিঃ', 'Level-5, Block-D, 1,2,3,12,13,14, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-ডি, ১,২,৩,১২,১৩,১৪, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, '8154527', NULL, NULL, NULL, 'Babu Ganga Charan Malakar', NULL, NULL, 'বাবু গঙ্গা চরণ মালাকার', 'Male', '01915804521', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(435, '00438', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Shreeja Gold Palace (Pvt) Ltd.', 'শ্রীজা গোল্ড প্যালেস (প্রাঃ) লিঃ', 'Level-5, Block-D, 4,5,16, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-ডি,৪,৫,১৬, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, '8121884', NULL, NULL, NULL, 'Eng: Manik K Bhattacharya', NULL, NULL, 'ইঞ্জিঃ মানিক কে ভট্টাচার্য্য', 'Male', '01711530781', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(436, '00439', NULL, 'assistant-secretary', 99, NULL, 'Dhaka', 'Dhaka', 'Venus Diamond Collection', 'ভেনাস ডায়মন্ড কালেকশন', 'Level-5, Block-C, 1,2,12,13 Bashundhara City, Dhaka.', 'লে-৫, ব্লক-সি,১,২,১২,১৩ বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, '913764', NULL, 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Bidhan Malaker.jpg', NULL, 'Mr. Bidhan Malakar', NULL, NULL, 'জনাব বিধান মালাকার', NULL, '01711527475', NULL, '{\"name\":[null],\"post\":[null]}', 1, 1, 2, '2022-05-14 10:13:30', NULL),
(437, '00440', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Licon Jewellers', 'নিউ লিকন জুয়েলার্স', 'Level-5, Block-D, 15, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-ডি, ১৫, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, '8118383', NULL, NULL, NULL, 'Babu Gaura Saha', NULL, NULL, 'বাবু গৌর সাহা', 'Male', '01770016463', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(438, '00441', '', '', 99, '', 'Dhaka', 'Dhaka', 'Fancy Diamond', 'ফেন্সী ডায়মন্ড', 'Level-5, Block-D, 08, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-ডি, ০৮, বসুন্ধরা সিটি, ঢাকা।', '', '', '', '9138932', '', '', NULL, 'Samit Ghosh', '', '', 'সমিত ঘোষ', 'Male', '01715940375', '', '{\"name\":[\"tariff-and-taxation\",null],\"post\":[\"Vice_Chairman\",null]}', 1, 1, 2, '2022-05-14 10:13:30', '2022-05-16 16:04:53'),
(439, '00445', '', '', 99, '', 'Dhaka', 'Dhaka', 'New Swarnakanon Jewellers', 'নিউ স্বর্ণকানন জুয়েলার্স', 'Level-5, Block-D, 112,113, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-ডি, ১১২,১১৩, বসুন্ধরা সিটি, ঢাকা।', '', '', '', '9103661', '', '', NULL, 'Brindaban Das', '', '', 'বৃন্দাবন দাস', 'Male', '01740401060', '', '{\"name\":[\"banking-and-financial-service\",null],\"post\":[\"Member\",null]}', 1, 1, 2, '2022-05-14 10:13:30', '2022-05-16 15:38:05'),
(440, '00447', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Shatarupa Jewellers', 'শতরুপা জুয়েলার্স', 'Level-5, 27,28, Bashundhara City, Dhaka.', 'লে-৫, ২৭,২৮, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, '9111440', NULL, NULL, NULL, 'Babu Kartik Karmakar', NULL, NULL, 'বাবু কার্তিক কর্মকার', 'Male', '01711539986', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(441, '00449', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Tisha Jewellers', 'তিশা জুয়েলার্স', 'Level-5, Block-A, 57, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-এ, ৫৭, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kazi Shahjahan Hossain', NULL, NULL, 'জনাব কাজী শাহজাহান হোসেন', 'Male', '01780007005', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(442, '00450', '', '', 99, '', 'Dhaka', 'Dhaka', 'M/s Paul Jewellers & Sons', 'মেসার্স পাল জুয়েলার্স এন্ড সন্স', 'Level-5, Block-A, 51-53, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-এ, ৫৪, বসুন্ধরা সিটি, ঢাকা।', '', '', '', '', '', '', NULL, 'Narayan Chandra Paul', '', '', 'নারায়ন চন্দ্র পাল', 'Male', '01711409705', '', '{\"name\":[\"pricing-and-price-monitoring\",null],\"post\":[\"Member\",null]}', 1, 1, 2, '2022-05-14 10:13:30', '2022-05-16 15:43:09'),
(443, '00451', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sohana Gold & Diamond', 'সোহানা গোল্ড এন্ড ডায়মন্ড', 'Level-5, Block-A, 51-53, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-এ, ৫১-৫৩, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Gopal Chandra Saha', NULL, NULL, 'বাবু গোপাল চন্দ্র সাহা', 'Male', '01711015499', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(444, '00452', '', '', 99, '', 'Dhaka', 'Dhaka', 'Propa Jewellers', 'প্রপা জুয়েলার্স', 'Level-5, Block-C, 19, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-সি, ১৯, বসুন্ধরা সিটি, ঢাকা।', '', '', '', '', '', '', NULL, 'M.M.A Bashar', '', '', 'জনাব এম এম এ বাশার', 'Male', '01711566017', '', '{\"name\":[\"foreign-tread-and-market-development\",null],\"post\":[\"Member\",null]}', 1, 1, 2, '2022-05-14 10:13:30', '2022-05-16 15:54:37'),
(445, '00453', '', '', 99, '', 'Dhaka', 'Dhaka', 'Gold World and Diamond', 'গোল্ড ওয়ার্ল্ড এন্ড ডায়মন্ড', 'Level-5, Block-A, 44,46,59,60, Bashundhara City', 'লে-৫, ব্লক-এ, ৪৪,৪৬,৫৯,৬০, বসুন্ধরা সিটি', '', '', '', '', '', '', NULL, 'Uttam Kumar Saha', '', '', 'উত্তম কুমার সাহা', 'Male', '01711236457', '', '{\"name\":[\"pricing-and-price-monitoring\",null],\"post\":[\"Member\",null]}', 1, 1, 2, '2022-05-14 10:13:30', '2022-05-16 15:41:43'),
(446, '00454', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Angosaj Jewellers', 'নিউ অঙ্গসাজ জুয়েলার্স', 'Level-5, Block-A, 41, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-এ, ৪১, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, '9140867', NULL, NULL, NULL, 'Babu Ranjit Karmakar', NULL, NULL, 'বাবু রনজিৎ কর্মকার', 'Male', '01741904103', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(447, '00456', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'M/s. Preeti Jewellers', 'মেসার্স প্রীতি জুয়েলার্স', 'Level-5, 33, Bashundhara City, Dhaka.', 'লে-৫, ৩৩, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, '9140860', NULL, NULL, NULL, 'Babu Parimal Chandra Sarkar', NULL, NULL, 'বাবু পরিমল চন্দ্র সরকার', 'Male', '01819259445', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(448, '00458', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Pearl House Jewellers', 'দি পার্ল হাউজ জুয়েলার্স', 'Level-5, Block-D, 60, 74, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-ডি, ৬০, ৭৪, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Barun Karmakar', NULL, NULL, 'বাবু বরুন কর্মকার', 'Male', '01859547765', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(449, '00459', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Puspanjali Gold and Diamond', 'পুস্পাঞ্জলী গোল্ড এন্ড ডায়মন্ড', 'Level-5, Block-D, 37, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-ডি, ৩৭, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Krishna Gopal Karmakar', NULL, NULL, 'বাবু কৃষ্ণ গোপাল কর্মকার', 'Male', '01712703752', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(450, '00631', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Aftab Jewellers', 'আফতাব জুয়েলার্স', 'Level-5, Block-D, 35, 36, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-ডি, ৩৫,৩৬, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Uttam Ghosh.jpeg', NULL, 'Babu Uttam Ghosh', NULL, NULL, 'বাবু উত্তম ঘোষ', NULL, '01711533609', NULL, '{\"name\":[null,null],\"post\":[null,null]}', 1, 1, 2, '2022-05-14 10:13:30', NULL),
(451, '00642', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sahara Gold & Diamond', 'সাহারা গোল্ড এন্ড ডায়মন্ড', 'Level-5, Block-A, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-এ, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Liton Karmakar', NULL, NULL, 'বাবু লিটন কর্মকার', 'Male', '01761532609', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(452, '00706', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Mina Jewellers', 'দি মিনা জুয়েলার্স', 'Level-5, Block-A, 48, 49, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-এ, ৪৮, ৪৯, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Chandan Kumar Saha', NULL, NULL, 'বাবু চন্দন কুমার সাহা', 'Male', '01721643626', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(453, '00707', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Modern Pearl Palace Jewellers', 'মডার্ণ পার্ল প্যালেস জুয়েলার্স', 'Level-5, Block-A, 74, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-এ, ৭৪, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Subodh Haldar', NULL, NULL, 'বাবু সুবোধ হালদার', 'Male', '01783649004', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(454, '00732', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Henna Jewellers', 'হেনা জুয়েলার্স', 'Level-5, Block-D, Shop No-43-44, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-ডি, দোকান নং-৪৩-৪৪, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Niranjan Sarkar', NULL, NULL, 'বাবু নিরঞ্জন সরকার', 'Male', '01713001894', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(455, '00733', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Diamond City', 'ডায়মন্ড সিটি', 'Level-5, Block-A, Shop-11, 12, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-এ, দোকান-১১,১২, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nazmuddin Mohammad Faisal', NULL, NULL, 'জনাব নাজমুদ্দিন মোহাম্মদ ফয়সাল', 'Male', '01715233362', NULL, '{\"name\":[\"tariff-and-taxation\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(456, '00761', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Dabir Gold & Diamond', 'দবির গোল্ড এন্ড ডায়মন্ড', 'Level-5, Block-D, Shop-88, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-ডি, দোকান-৮৮, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Shah Dabir', NULL, NULL, 'জনাব মোঃ শাহ দবির', 'Male', '01711051428', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(457, '00764', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'SD Jewellers', 'এস ডি জুয়েলার্স', 'Level-5, Block-A, Shop No-86, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-এ, দোকান নং-৮৬, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Pran Gobinda Haldar', NULL, NULL, 'বাবু প্রাণ গোবিন্দ হালদার', 'Male', '01715016670', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(458, '00782', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Jemima Jewellers', 'জেমিমা জুয়েলার্স', 'Level-5, Block-D, Shop-103, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-ডি, দোকান-১০৩, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jasim Uddin', NULL, NULL, 'জনাব জসিম উদ্দিন', 'Male', '01746756528', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(459, '00419', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Arafat Jewellers', 'আরাফাত জুয়েলার্স', 'Level-5, Block-C, 43, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-সি, ৪৩, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Lablu Mia', NULL, NULL, 'জনাব মোঃ লাবলু মিয়া', 'Male', '01716684409', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(460, '00787', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Avinandan Jewellers', 'অভিনন্দন জুয়েলার্স', 'Level-5, Block-D, 76, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-ডি, ৭৬, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Rabiul Alam', NULL, NULL, 'জনাব মোঃ রবিউল আলম', 'Male', '01732642009', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(461, '00676', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Malabar Diamonds', 'মালাবার ডায়মন্ডস', '68/1 Gulshan Avenue, Gulshan-1, Dhaka.', '৬৮/১ গুলশান এভিনিউ, গুলশান-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sabita Agarwala', NULL, NULL, 'মিসেস সবিতা আগরওয়ালা', 'Female', '01711894553', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(462, '00789', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Diamond Touch', 'ডায়মন্ড টাচ', 'Level-5, Block-C, 53, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-সি, ৫৩, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Abdul Latif', NULL, NULL, 'জনাব মোঃ আব্দুল লতিফ', 'Male', '01715055593', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(463, '00869', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Rupayan Jewellers', 'রূপায়ন জুয়েলার্স', 'Level-5, Block-C, 38, Bashundhara City, Dhaka.', 'লেভেল-৫, ব্লক-সি, ৩৮, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Arjun Kumar Paul', NULL, NULL, 'বাবু অর্জুন কুমার পাল', 'Male', '01716171298', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(464, '00883', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Nandan Jewellers', 'দি নন্দন জুয়েলার্স', 'Level-5, Block-D, 54, 55, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-ডি, ৫৪, ৫৫, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Chitta Ranjan Karmakar', NULL, NULL, 'বাবু চিত্ত রঞ্জন কর্মকার', 'Male', '01819425426', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(465, '00894', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'D. Diamond', 'ডি ডায়মন্ড', 'Level-5, Block-B, 51-53, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-বি, ৫১-৫৩, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Shah Dabir', NULL, NULL, 'জনাব মোঃ শাহ দবির', 'Male', '01711051428', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(466, '00896', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Diamond House', 'ডায়মন্ড হাউজ', 'Level-5, Block-A, 48, Bashundhara City, Dhaka.', 'লে-৫, ব্লক-এ, ৪৮, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dr. Dilip Kumar Roy', NULL, NULL, 'ডাঃ দিলীপ কুমার রায়', 'Male', '01844687056', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(467, '00908', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Gourab Jewellers', 'গৌরব জুয়েলার্স', '3 West Tejturi Bazar Level-5, Block-C, Shop No-71, 81, 82, Bashundhara City, Panthapath, Dhaka.', '৩ নং পশ্চিম তেজতুরী বাজার লে-৫, ব্লক-সি, দোকান নং- ৭১, ৮১, ৮২, বসুন্ধরা সিটি, পান্থপথ, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Ganesh Debnath', NULL, NULL, 'বাবু গনেশ দেবনাথ', 'Male', '01748317004', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(468, '00911', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Diamond Dream', 'ডায়মন্ড ড্রিম', '3 West Tejturi Bazar Level-5, Block-D, Shop No-64, Bashundhara City, Panthapath, Dhaka.', '৩ নং পশ্চিম তেজতুরী বাজার লে-৫, ব্লক-ডি, দোকান নং- ৬৪, বসুন্ধরা সিটি, পান্থপথ, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Sanjib Saha', NULL, NULL, 'বাবু সঞ্জীব সাহা', 'Male', '01715040269', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(469, '00913', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Diamond Corner', 'ডায়মন্ড কর্ণার', '3 West Tejturi Bazar Level-5, Block-C, Shop No-25, 26, Bashundhara City, Panthapath, Dhaka.', '৩ নং পশ্চিম তেজতুরী বাজার লে-৫, ব্লক-সি, দোকান নং-২৫,২৬, বসুন্ধরা সিটি, পান্থপথ, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Swarup Dey', NULL, NULL, 'জনাব স্বরূপ দে', 'Male', '01841820091', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(470, '00916', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Tushar Gold & Diamond', 'তুষার গোল্ড এন্ড ডায়মন্ড', '3 West Tejturi Bazar, Level-5, Block-D, Shop No-38, Bashundhara City, Panthapath, Dhaka.', '৩ নং পশ্চিম তেজতুরী বাজার, লে-৫, ব্লক-ডি, দোকান নং-৩৮, বসুন্ধরা সিটি, পান্থপথ, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Krishna Karmakar', NULL, NULL, 'বাবু কৃষ্ণ কর্মকার', 'Male', '01819135020', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(471, '00917', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'V V S Diamond Gallery & Gold', 'ভি ভি এস ডায়মন্ড গ্যালারী এন্ড গোল্ড', '3 West Tejturi Bazar, Level-5, Block-D, Shop No-40, Bashundhara City', '৩ নং পশ্চিম তেজতুরী বাজার, লে-৫, ব্লক-ডি, দোকান নং-৪০, বসুন্ধরা সিটি, পান্থপথ, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Sonatan Chandra Karmakar', NULL, NULL, 'বাবু সোনাতন চন্দ্র কর্মকার', 'Male', '01782239009', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(472, '00918', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Diamond Fair & Gold', 'ডায়মন্ড ফেয়ার এন্ড গোল্ড', 'Level-5, Block-D, Shop- 51-53, Bashundhara City, Dhaka.', '৩ নং পশ্চিম তেজতুরী বাজার, লে-৫, ব্লক-ডি, দোকান নং-৫২-৫৩, বসুন্ধরা সিটি, পান্থপথ, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Monoranjan Karmakar', NULL, NULL, 'বাবু মনোরঞ্জন কর্মকার', 'Male', '01711379713', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(473, '00919', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Diamond Queen', 'ডায়মন্ড কুইন', '3 West Tejturi Bazar, Level-5, Block-C, Shop No-14, Bashundhara City, Dhaka.', '৩ নং পশ্চিম তেজতুরী বাজার, লে-৫, ব্লক-সি, দোকান নং-১৪, বসুন্ধরা সিটি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Shuvo Karmakar', NULL, NULL, 'বাবু শুভ কর্মকার', 'Male', '01313573737', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(474, '00920', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Naboneeta Gold & Diamond', 'নবনীতা গোল্ড এন্ড ডায়মন্ড', '3 West Tejturi Bazar, Level-5, Block-C, Shop No-39, Bashundhara City, Panthapath, Dhaka.', '৩নং পশ্চিম তেজতুরী বাজার, লে-৫, ব্লক-সি, দোকান নং-৩৯, বসুন্ধরা সিটি, পান্থপথ, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Jahar Lal Paul', NULL, NULL, 'বাবু জহর লাল পাল', 'Male', '01715084963', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(475, '00921', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Diamond Garden', 'ডায়মন্ড গার্ডেন', '3 West Tejturi Bazar, Level-5, Block-C, Shop No-27,28, Bashundhara City, Panthapath, Dhaka.', '৩ নং পশ্চিম তেজতুরী বাজার, লে-০৫, ব্লক-সি, দোকান নং-২৭, ২৮, বসুন্ধরা সিটি, পান্থপথ, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Sumon Karmakar', NULL, NULL, 'বাবু সুমন কর্মকার', 'Male', '01748000888', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(476, '00922', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Diamond Experts', 'দি ডায়মন্ড এক্সপার্টস', '3 West Tejturi Bazar, Level-5, Block-D, Shop No-51, Bashundhara City, Panthapath, Dhaka.', '৩ নং পশ্চিম তেজতুরী বাজার, লে-০৫, ব্লক-ডি, দোকান নং-৫১, বসুন্ধরা সিটি, পান্থপথ, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Rajib Ghosh Rony', NULL, NULL, 'বাবু রাজিব ঘোষ রনি', 'Male', '01914888946', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(477, '00926', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Diamond Point', 'ডায়মন্ড পয়েন্ট', '3 West Tejturi Bazar, Level-5, Block-A, Shop No-58, Bashundhara City, Panthapath, Dhaka.', '৩ নং পশ্চিম তেজতুরী বাজার, লে-০৫, ব্লক-এ, দোকান নং-৫৮, বসুন্ধরা সিটি, পান্থপথ, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rasel Hossain', NULL, NULL, 'জনাব রাসেল হোসেন', 'Male', '01919907988', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(478, '00927', NULL, 'vice-president', 99, NULL, 'Dhaka', 'Dhaka', 'Alankar Niketan Pvt. Ltd.', 'অলংকার নিকেতন প্রাঃ লিঃ', '3 West Tejturi Bazar, Level-5, Block-D, Shop No-104-107, Bashundhara City, Panthapath, Dhaka.', '৩ নং পশ্চিম তেজতুরী বাজার, লে-০৫, ব্লক-ডি, দোকান নং-১০৪-১০৭, বসুন্ধরা সিটি, পান্থপথ, ঢাকা।', NULL, NULL, NULL, NULL, NULL, 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/M A Hannan Azad.jpeg', NULL, 'M. A. Hannan Azad', NULL, NULL, 'জনাব এম. এ হান্নান আজাদ', NULL, '01711530475', NULL, '{\"name\":[\"pricing-and-price-monitoring\",null],\"post\":[\"chairman\",null]}', 1, 1, 2, '2022-05-14 10:13:30', NULL),
(479, '00460', '', '', 99, '', 'Dhaka', 'Dhaka', 'I. K Jewellers Ltd.', 'আই, কে জুয়েলার্স লিঃ', '51-53, Amir Complex, Uttara, Dhaka.', '৫১-৫৩, আমির কমপ্লেক্স, উত্তরা, ঢাকা।', '', '', '', '', '', '', NULL, 'Md. Imran Chowdhury', '', '', 'জনাব মোঃ ইমরান চৌধুরী', 'Male', '01711532008', '', '{\"name\":[\"banking-and-financial-service\",null],\"post\":[\"member\",null]}', 1, 1, 2, '2022-05-14 10:13:30', '2022-05-16 15:33:47'),
(480, '00461', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Al Amin Jewellers', 'আল আমিন জুয়েলার্স', '26-28, Amir Complex, Uttara, Dhaka.', '২৬-২৭, আমির কমপ্লেক্স, উত্তরা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Harun Ur Rashid', NULL, NULL, 'জনাব মোঃ হারুন অর রশিদ', 'Male', '01712064186', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(481, '00462', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Al-Raju Jewellers', 'আল-রাজু জুয়েলার্স', '22,40, Amir Complex, Uttara, Dhaka.', '২২,৪০, আমির কমপ্লেক্স, উত্তরা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sultan Ahmed', NULL, NULL, 'জনাব সুলতান আহমেদ', 'Male', '01715023561', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(482, '00464', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Al-Noor Jewellers', 'আল-নূর জুয়েলার্স', '31, 32, Amir Complex, Uttara, Dhaka.', '৩১,৩২, আমির কমপ্লেক্স, উত্তরা, ঢাকা।', NULL, NULL, NULL, '8919034', NULL, NULL, NULL, 'Md. Wahiduzzaman', NULL, NULL, 'জনাব মোঃ ওয়াহিদুজ্জামান', 'Male', '01782689249', NULL, '{\"name\":[\"research-and-development\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(483, '00465', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Paroma Jewellers', 'পারমা জুয়েলার্স', '60, Amir Complex, Uttara, Dhaka.', '৬০, আমির কমপ্লেক্স, উত্তরা, ঢাকা।', NULL, NULL, NULL, '8922790', NULL, NULL, NULL, 'Abdus Sobahan', NULL, NULL, 'জনাব আব্দুস সোবাহান', 'Male', '01971567945', NULL, '{\"name\":[\"research-and-development\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(484, '00734', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Pabna Jewellers', 'পাবনা জুয়েলার্স', '23, 24, Amir Complex (1st Floor) Uttara, Dhaka.', '২৩, ২৪, আমির কমপ্লেক্স (২য় তলা) উত্তরা, ঢাকা।', NULL, NULL, NULL, '8933354', NULL, NULL, NULL, 'Md. Jane Alam', NULL, NULL, 'জনাব মোঃ জানে আলম', 'Male', '01720529977', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(485, '00823', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Angkon Jewellers', 'অংকন জুয়েলার্স', '55, Amir Complex (1st Floor) Uttara, Dhaka.', '৫৫, আমির কমপ্লেক্স (২য় তলা) উত্তরা, ঢাকা।', NULL, NULL, NULL, '8917578', NULL, NULL, NULL, 'Babu Santosh Kumar Bepari', NULL, NULL, 'বাবু সন্তোষ কুমার বেপারী', 'Male', '01711318853', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(486, '00824', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Sadia Jewellers', 'নিউ সাদিয়া জুয়েলার্স', '22, Amir Complex (1st floor) Uttara, Dhaka.', '২২, আমির কমপ্লেক্স (২য় তলা) উত্তরা, ঢাকা।', NULL, NULL, NULL, '8917433', NULL, NULL, NULL, 'Md.Mohammad Badshah Mia', NULL, NULL, 'জনাব মোহাম্মদ বাদশা মিয়া', 'Male', '01743148086', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(487, '00826', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Mizan Jewellers', 'নিউ মিজান জুয়েলার্স', '50, Amir Complex (1st Floor) Uttara, Dhaka.', '৫০, আমির কমপ্লেক্স (২য় তল) উত্তরা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Saifur Rahman Mizan', NULL, NULL, 'জনাব মোঃ সাইফুর রহমান মিজান', 'Male', '01711004232', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(488, '00827', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Asha Moni Jewellers', 'আশা মনি জুয়েলার্স', '46, Amir Complex (1st Floor) Uttara, Dhaka.', '৪৬, আমির কমপ্লেক্স (২য় তল) উত্তরা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Zahidul Islam', NULL, NULL, 'জনাব মোঃ জাহিদুল ইসলাম', 'Male', '01721071235', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(489, '00828', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Diamond Sea', 'দি ডায়মন্ড সী', '42, Amir Complex (1st Floor) Uttara, Dhaka.', '৪২, আমির কমপ্লেক্স (২য় তল) উত্তরা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Imran Chowdhury', NULL, NULL, 'জনাব মোঃ ইমরান চৌধুরী', 'Male', '01711532008', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(490, '00829', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'SR Jewellers', 'এস আর জুয়েলার্স', '54, Amir Complex (1st Floor) Uttara, Dhaka.', '৫৪, আমির কমপ্লেক্স (২য় তল) উত্তরা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. A. Samad', NULL, NULL, 'জনাব মোঃ আঃ ছামাদ', 'Male', '01860006270', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(491, '00890', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'A. B. Jewellers', 'এ. বি জুয়েলার্স', '29, Amir Complex (1st floor) Dhaka.', '২৯, আমির কমপ্লেক্স (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Abul Bashar', NULL, NULL, 'জনাব মোঃ আবুল বাশার', 'Male', '01732342224', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(492, '00466', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Paroma Jewellers', 'নিউ পারমা জুয়েলার্স', '421, 422, Mascot Plaza (3rd Floor) Uttara, Dhaka.', '৪২১, ৪২২, মাসকট প্লাজা (৪র্থতলা) উত্তরা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Badal Mia', NULL, NULL, 'জনাব মোঃ বাদল মিয়া', 'Male', '01711568899', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(493, '00467', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Paroma Jewellers', 'পারমা জুয়েলার্স', '417-420, Mascot Plaza (3rd Floor) Uttara, Dhaka.', '৪১৭-৪২০, মাসকট প্লাজ (৪র্থতলা) উত্তরা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Abdus Sobahan', NULL, NULL, 'জনাব আব্দুস সোবাহান', 'Male', '01739264677', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(494, '00468', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Preyose Jewellers', 'দি প্রেয়সী জুয়েলার্স', '419, Mascot Plaza (3rd Floor) Uttara, Dhaka.', '৪১৯, মাসকট প্লাজা (৪র্থতলা) উত্তরা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Pulak Sarkar', NULL, NULL, 'বাবু পুলক সরকার', 'Male', '01819296930', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(495, '00469', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Konica Jewellers', 'নিউ কনিকা জুয়েলার্স', '427, Mascot Plaza (3rd Floor) Uttara, Dhaka.', '৪২৭, মাসকট প্লাজা (৪র্থতলা) উত্তরা, ঢাকা।', NULL, NULL, NULL, '8923301', NULL, NULL, NULL, 'Babu Pobitra Ranjan Poddar', NULL, NULL, 'বাবু পবিত্র রঞ্জন পোদ্দার', 'Male', '01711529796', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(496, '00471', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Shotopaul Jewellers', 'নিউ শতপার্ল জুয়েলার্স', '413, Mascot Plaza (3rd Floor) Uttara, Dhaka.', '৪১৩, মাসকট প্লাজা (৪র্থতলা) উত্তরা, ঢাকা।', NULL, NULL, NULL, '8952808', NULL, NULL, NULL, 'Babu Pratap Karmakar', NULL, NULL, 'বাবু প্রতাপ কর্মকার', 'Male', '01673783261', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(497, '00472', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'King Pearl House Jewellers', 'কিং পার্ল হাউজ জুয়েলার্স', '431-432, Mascot Plaza (3rd Floor) Uttara, Dhaka.', '৪৩১-৪৩২, মাসকট প্লাজা (৪র্থ তলা) উত্তরা, ঢাকা।', NULL, NULL, NULL, '8924444', NULL, NULL, NULL, 'Babu Alok Saha', NULL, NULL, 'বাবু অলোক সাহা', 'Male', '01819144322', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(498, '00473', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Moukanchan Jewellers', 'মৌকাঞ্চন জুয়েলার্স', '423, Mascot Plaza (3rd Floor) Uttara, Dhaka.', '৪২৩, মাসকট প্লাজা (৪র্থতলা) উত্তরা, ঢাকা।', NULL, NULL, NULL, '8961469', NULL, NULL, NULL, 'Babu Bimal Kumar Dey', NULL, NULL, 'বাবু বিমল কুমার দে', 'Male', '01914006239', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(499, '00474', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Priya Pearl House Jewellers', 'প্রিয়া পার্ল হাউজ জুয়েলার্স', '425, Mascot Plaza (3rd Floor) Uttara, Dhaka.', '৪২৫, মাসকট প্লাজা (৪র্থতলা) উত্তরা, ঢাকা।', NULL, NULL, NULL, '8921390', NULL, NULL, NULL, 'Babu Niranjan Karmakar', NULL, NULL, 'বাবু নিরঞ্জণ কর্মকার', 'Male', '01713039431', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(500, '00638', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Jaya Jewellers', 'জয়া জুয়েলার্স', '418, Mascot Plaza (3rd Floor) Uttara, Dhaka.', '৪১৮, মাসকট প্লাজা (৪র্থ তলা) উত্তরা, ঢাকা।', NULL, NULL, NULL, '8933865', NULL, NULL, NULL, 'M, A, Hannan', NULL, NULL, 'জনাব এম, এ, হান্নান', 'Male', '01732799831', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(501, '00667', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Gold Star Jewellers', 'নিউ গোল্ড ষ্টার জুয়েলার্স', '414, Mascot Plaza, Uttara, Dhaka.', '৪১৪, মাসকট প্লাজা, উত্তরা, ঢাকা।', NULL, NULL, NULL, '8920620', NULL, NULL, NULL, 'Babu Narayan Dey', NULL, NULL, 'বাবু নারায়ন দে', 'Male', '01715067498', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(502, '00673', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Priya Diamond Gallery Ltd.', 'প্রিয়া ডায়মন্ড গ্যালারী লিঃ', '405, Mascot Plaza, Uttara, Dhaka.', '৪০৫, মাসকট প্লাজা, উত্তরা, ঢাকা।', NULL, NULL, NULL, '8951282', NULL, NULL, NULL, 'Babu Niranjan Karmakar', NULL, NULL, 'বাবু নিরঞ্জন কর্মকার', 'Male', '01713039831', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(503, '00696', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Aditya Jewellers', 'আদিত্য জুয়েলার্স', '430, Mascot Plaza (3rd Floor) Uttara, Dhaka.', '৪৩০, মাসকট প্লাজা (৪র্থ তলা) উত্তরা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Narayan Dey', NULL, NULL, 'বাবু নারায়ন দে', 'Male', '01715067498', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(504, '00744', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Ananda Jewellers', 'আনন্দ জুয়েলার্স', '406, Mascot Plaza (3rd Floor) Uttara, Dhaka.', '৪০৬, মাসকট প্লাজা (৪র্থ তলা) উত্তরা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Farhana Akhter Sathi', NULL, NULL, 'মিসেস ফারহানা আক্তার সাথী', 'Female', '01612500045', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(505, '00777', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Amantron Jewellers', 'আমন্ত্রণ জুয়েলার্স', '407, Mascot Plaza (3rd Floor) Uttara, Dhaka.', '৪০৭, মাসকট প্লাজা (৪র্থ তলা) উত্তরা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rita Dey', NULL, NULL, 'রীতা দে', 'Male', '01789552717', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(506, '00825', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The I.K Jewellers', 'দি আইকে জুয়েলার্স', '411-412, Mascot Plaza (3rd Floor) Uttara, Dhaka.', '৪১১-৪১২, মাসকট প্লাজা (৪র্থ তলা) উত্তরা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kohinoor Akhter Chowdhury', NULL, NULL, 'মিসেস কোহিনুর আক্তার চৌধুরী', 'Female', '01611532504', NULL, '{\"name\":[\"women-affairs\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(507, '00475', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Preyose Jewellers', 'প্রেয়সী জুয়েলার্স', '57, Kushal Center (1st Floor) Uttara, Dhaka.', '৫৭, কুশল সেন্টার (২য়তলা) উত্তরা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Barun Dutat', NULL, NULL, 'বাবু বরুন দত্ত', 'Male', '01715079271', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(508, '00476', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Anupom Jewellers', 'অনুপম জুয়েলার্স', '51, Kushal Center (1st Floor) Uttara, Dhaka.', '৫১, কুশল সেন্টার (২য়তলা) উত্তরা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Firoz Ahmed', NULL, NULL, 'জনাব ফিরোজ আহাম্মেদ', 'Male', '01552478387', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(509, '00477', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Tanvir Jewellers', 'তানভীর জুয়েলার্স', '56, Kushal Center (1st Floor) Uttara, Dhaka.', '৫৬, কুশল সেন্টার (২য়তলা) উত্তরা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Ananda Karmakar', NULL, NULL, 'বাবু আনন্দ কর্মকার', 'Male', '01726180007', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(510, '00479', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Piyal Jewellers', 'পিয়াল জুয়েলার্স', '11, Kushal Center (1st Floor) Uttara, Dhaka.', '১১, কুশল সেন্টার (২য়তলা) উত্তরা, ঢাকা।', NULL, NULL, NULL, '7913766', NULL, NULL, NULL, 'Babu Anil Chandra Karmakar', NULL, NULL, 'বাবু অনিল চন্দ্র কর্মকার', 'Male', '01726800496', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(511, '00480', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Hasi Alangkar Niketan', 'হাসি অলংকার নিকেতন', '9, Kushal Center (1st Floor) Uttara, Dhaka.', '৯, কুশন সেন্টার (২য়তলা) উত্তরা, ঢাকা।', NULL, NULL, NULL, '8920995', NULL, NULL, NULL, 'Hasina Rahman', NULL, NULL, 'মিসেস হাসিনা রহমান', 'Female', '01819224887', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(512, '00482', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Swarnakomol Jewellers', 'স্বর্ণ কমল জুয়েলার্স', 'Kushal Center (1st Floor) Uttara, Dhaka.', 'কুশল সেন্টার (২য়তলা) উত্তরা, ঢাকা।', NULL, NULL, NULL, '8921222', NULL, NULL, NULL, 'Abdus Salam Hiron', NULL, NULL, 'জনাব আব্দুস সালাম হিরন', 'Male', '01711536926', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(513, '00483', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Mamony Jewellers', 'নিউ মামনি জুয়েলার্স', '7, RAJUK Commercial Complex, Uttara, Dhaka.', '৭, রাজউক কর্মঃ কমাঃ কমপ্লেক্স, উত্তরা,ঢাকা।', NULL, NULL, NULL, '8951273', NULL, NULL, NULL, 'Md. Mosharraf Hossain', NULL, NULL, 'জনাব মোঃ মোশাররফ হোসেন', 'Male', '01817505933', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(514, '00484', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Al-Shahi Jewellers', 'আল-শাহী জুয়েলার্স', '17, RAJUK Commercial Complex, Uttara, Dhaka.', '১৭, রাজউক কর্মঃ কমাঃ কমপ্লেক্স, উত্তরা,ঢাকা।', NULL, NULL, NULL, '8922364', NULL, NULL, NULL, 'Md. Shahin Hawladar', NULL, NULL, 'জনাব মোঃ শাহীন হাওলাদার', 'Male', '01715056677', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(515, '00486', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Rajnandini Jewellers', 'রাজনন্দিনী জুয়েলার্স', '44, Rajlaxmi Complex, Uttara, Dhaka.', '৪৪, রাজলক্ষী কমপ্লেক্স, উত্তরা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Ashutosh Dutta', NULL, NULL, 'বাবু আশুতোষ দত্ত', 'Male', '01711108590', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(516, '00485', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Rajmoni Jewellers', 'নিউ রাজমনি জুয়েলার্স', '55/1, Rajlaxmi Complex, Uttara, Dhaka.', '৫৫/১, রাজলক্ষী কমপ্লেক্স, উত্তরা, ঢাকা।', NULL, NULL, NULL, '8951160', NULL, NULL, NULL, 'Babu Joydev Dutta', NULL, NULL, 'বাবু জয়দেব দত্ত', 'Male', '01711108590', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(517, '00488', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Apan Jewellers', 'আপন জুয়েলার্স', 'N, R Complex (1st Floor) Uttara, Dhaka.', 'এন, আর কমপ্লেক্স (২য়তলা) উত্তরা, ঢাকা।', NULL, NULL, NULL, '8951951', NULL, NULL, NULL, 'Dildar Ahmed', NULL, NULL, 'জনাব দিলদার আহমেদ', 'Male', '01711567457', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(518, '00489', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Ananda Jewellers', 'আনন্দ জুয়েলার্স', '202, North Tower (2nd Floor) Uttara, Dhaka.', '২০২, নর্থ টাওয়ার (৩য়তলা) উত্তরা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Nayan Chowdhury', NULL, NULL, 'জনাব মোঃ নয়ন চৌধুরী', 'Male', '01715041170', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(519, '00653', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'B.P Jewellers', 'বি.পি জুয়েলার্স', '215, North Tower, Uttara, Dhaka.', '২১৫, নর্থ টাওয়ার, উত্তরা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Bikash Chandra Dey', NULL, NULL, 'বাবু বিকাশ চন্দ্র দে', 'Male', '01827577611', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(520, '00655', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Carat Jewellers', 'ক্যারেট জুয়েলার্স', '217, North Tower, Uttara, Dhaka.', '২১৭, নর্থ টাওয়ার, উত্তর, ঢাকা।', NULL, NULL, NULL, '8961204', NULL, NULL, NULL, 'Babu Sujit Karmakar', NULL, NULL, 'বাবু সুজিত কর্মকার', 'Male', '01733113438', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(521, '00695', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Amantron Jewellers', 'আমন্ত্রন জুয়েলার্স', '216/B, North Tower (2nd floor), Uttara, Dhaka-1230.', '২২১, নর্থ টাওয়ার (৩য় তলা) উত্তরা, ঢাকা।', NULL, NULL, NULL, '8959160', NULL, NULL, NULL, 'Babu Palash Kumar Saha', NULL, NULL, 'বাবু পলাশ কুমার সাহা', 'Male', '01712626722', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL);
INSERT INTO `members` (`id`, `number_id`, `member_since`, `central_committee_post`, `central_committee_order`, `district_committee_post`, `district`, `divisions`, `inst_name`, `inst_name_bn`, `inst_address`, `inst_address_bn`, `inst_trade_license`, `inst_bin`, `inst_tin`, `inst_telephone`, `inst_mobile`, `img`, `inst_img`, `name`, `email`, `blood_group`, `name_bn`, `gender`, `contact`, `home_address`, `standing_committee`, `m_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(522, '00907', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Gourab Jewellers', 'গৌরব জুয়েলার্স', 'Plot No-107, North Tower Shop No-203 (2nd Floor) Sector-7, Uttara, Dhaka.', 'প্লট নং-১০৭, নর্থ টাওয়ার দোকান নং-২০৩ (৩য় তলা) সেক্টর-৭, উত্তরা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Ganesh Debnath', NULL, NULL, 'বাবু গনেশ দেবনাথ', 'Male', '01748317004', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(523, '00491', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Provaty Pearl House Jewellers', 'প্রভাতী পার্ল হাউজ জুয়েলার্স', '508, Tropical Alauddin Tower (4th floor) Uttara, Dhaka.', '৫০৮, ট্রপিক্যাল আলাউদ্দিন টাওয়ার (৫মতলা) উত্তরা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Subodh Karmakar', NULL, NULL, 'বাবু সুবোধ কর্মকার', 'Male', '01749292829', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(524, '00891', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Al-Amin Jewellers', 'আল-আমিন জুয়েলার্স', '514-515, Tropical Alauddin Tower (4th Floor), Uttara Dhaka.', '৫১৪-৫১৫, ট্রপিক্যাল আলাউদ্দিন টাওয়ার (৫ম তলা), ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Fahima Akhter', NULL, NULL, 'মিসেস ফাহিমা আক্তার', 'Female', '01712064186', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(525, '00487', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Diamond World', 'ডায়মন্ড ওয়ার্ল্ড', 'Nawab Mansion (1st Floor) Plot-22, Sector-11, Sonargaon Janapath Road, Uttara, Dhaka.', 'নওয়াব ম্যানশন (২য় তলা) প্লট-২২, সেক্টর-১১, সোনারগাঁ জনপদ রোড, উত্তরা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dilip Kumar Agarwala', NULL, NULL, 'জনাব দিলীপ কুমার আগরওয়ালা', 'Male', '01711549640', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(526, '00727', NULL, 'executive-member', 99, NULL, 'Dhaka', 'Dhaka', 'Royal Malabar Jewellers (BD) Ltd.', 'রয়েল মালাবার জুয়েলার্স (বিডি) লিঃ', '14-16, Khan Tower (2nd Floor) Sector-11, Sonagaon Janapath Road, Uttara, Dhaka.', '১৪-১৬, খান টাওয়ার (৩য় তলা) সেক্টর-১১, সোনাগাঁ জনপদ রোড, উত্তরা, ঢাকা।', NULL, NULL, NULL, '8957918', NULL, 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Md Aslam Khan.jpg', NULL, 'Md. Aslam Khan', NULL, NULL, 'জনাব মোঃ আসলাম খান', NULL, '01726222940', NULL, '{\"name\":[\"tariff-and-taxation\",null],\"post\":[\"member\",null]}', 1, 1, 2, '2022-05-14 10:13:30', NULL),
(527, '00830', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Queen Gold House', 'কুইন গোল্ড হাউজ', '613, Jam Jam Tower, Uttara, Dhaka.', '৬১৩, জম জম টাওয়ার, উত্তরা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Praeep Kumar Haldar (Subas)', NULL, NULL, 'বাবু প্রদীপ কুমার হালদার (সুবাস)', 'Male', '01720579295', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(528, '00831', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Manimukta Jewellers', 'নিউ মনিমুক্তা জুয়েলার্স', '607, Jam Jam Tower, Uttara, Dhaka.', '৬০৭, জম জম টাওয়ার, উত্তরা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Sanjay Folia', NULL, NULL, 'বাবু সঞ্জয় ফলিয়া', 'Male', '01770356699', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(529, '00493', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Prothoma Jewellers', 'নিউ প্রথমা জুয়েলার্স', '4/65, Eastern Plaza, Dhaka.', '৪/৬৫, ইষ্টার্ণ প্লাজা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Deepak Karmakar', NULL, NULL, 'বাবু দীপক কর্মকার', 'Male', '01715053417', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(530, '00494', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Sananda Jewellers', 'দি সানন্দা জুয়েলার্স', '4/64, Eastern Plaza, Dhaka.', '৪/৬৪, ইষ্টার্ণ প্লাজা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Badal Charan Ghosh', NULL, NULL, 'বাবু বাদল চরণ ঘোষ', 'Male', '01819159660', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(531, '00495', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Sagar Jewellers', 'নিউ সাগর জুয়েলার্স', '4/53, Eastern Plaza, Dhaka.', '৪/৫৩, ইষ্টার্ণ প্লাজা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haji Aminul Haque', NULL, NULL, 'জনাব হাজী আমিনুল হক', 'Male', '01919277793', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(532, '00496', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Nipun Jewellers', 'নিপুন জুয়েলার্স', '4/19, Eastern Plaza, Dhaka.', '৪/১৯, ইষ্টার্ণ প্লাজা, ঢাকা।', NULL, NULL, NULL, '9667692', NULL, NULL, NULL, 'Md. Mokhlesur Rahman', NULL, NULL, 'জনাব মোঃ মোখলেছুর রহমান', 'Male', '01819469363', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(533, '00497', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Bikrampur Jewellers', 'নিউ বিক্রমপুর জুয়েলার্স', '4/59, Eastern Plaza, Dhaka.', '৪/৫৯, ইষ্টার্ণ প্লাজা, ঢাকা।', NULL, NULL, NULL, '9660496', NULL, NULL, NULL, 'Md. Tajul Islam', NULL, NULL, 'জনাব মোঃ তাজুল ইসলাম', 'Male', '01711947592', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(534, '00498', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Niton Jewellers', 'নিটোন জুয়েলার্স', '4/25, Eastern Plaza, Dhaka.', '৪/২৫, ইষ্টার্ণ প্লাজা, ঢাকা।', NULL, NULL, NULL, '9664249', NULL, NULL, NULL, 'Monju Rani Das', NULL, NULL, 'মিসেস মঞ্জু রানী দাস', 'Female', '01714994611', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(535, '00499', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Eastern Jewellers', 'দি ইষ্টার্ণ জুয়েলার্স', '4/63, Eastern Plaza, Dhaka.', '৪/৬৩, ইষ্টার্ণ প্লাজা, ঢাকা।', NULL, NULL, NULL, '9672675', NULL, NULL, NULL, 'Tulshi Rani Ghosh', NULL, NULL, 'মিসেস তুলসী রানী ঘোষ', 'Female', '01758939998', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(536, '00500', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Chandrika Jewellers', 'চন্দ্রিকা জুয়েলার্স', '4/23, Eastern Plaza, Dhaka.', '৪/২৩, ইষ্টার্ণ প্লাজা, ঢাকা।', NULL, NULL, NULL, '9672274', NULL, NULL, NULL, 'Babu Tapan Ghosh', NULL, NULL, 'বাবু তপন ঘোষ', 'Male', '01715132566', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(537, '00501', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Akash Jewellers', 'আকাশ জুয়েলার্স', '4/16, Eastern Plaza, Dhaka.', '৪/১৬, ইষ্টার্ণ প্লাজা, ঢাকা।', NULL, NULL, NULL, '9669226', NULL, NULL, NULL, 'Monika Karmakar', NULL, NULL, 'মিসেস মনিকা কর্মকার', 'Female', '01715036990', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(538, '00503', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Shreeja Gold Palace (Pvt) Ltd.', 'শ্রীজা গোল্ড প্যালেস (প্রাঃ) লিঃ', '4/60/61, Eastern Plaza, Dhaka.', '৪/৬০/৬১, ইষ্টার্ণ প্লাজা, ঢাকা।', NULL, NULL, NULL, '8619229', NULL, NULL, NULL, 'Shetima Bhattacharya', NULL, NULL, 'সিতিমা ভট্ট্রাচার্য্য', 'Male', '01716152612', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(539, '00504', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Bobby Jewellers', 'নিউ ববী জুয়েলার্স', '4/18, Eastern Plaza, Dhaka.', '৪/১৮, ইষ্টার্ণ প্লাজা, ঢাকা।', NULL, NULL, NULL, '9676714', NULL, NULL, NULL, 'M R Chunnu Mia', NULL, NULL, 'জনাব এম আর চুন্নু মিয়া', 'Male', '01673014100', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(540, '00678', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Grameen Alangker', 'গ্রামীন অলংকার', '4/15, Eastern Plaza, Dhaka.', '৪/১৫, ইস্টার্ণ প্লাজা, ঢাকা।', NULL, NULL, NULL, '9674989', NULL, NULL, NULL, 'M. A. Rahat', NULL, NULL, 'জনাব এম. এ. রাহাত', 'Male', '01721077815', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(541, '00820', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Meghma Jewellers', 'মেঘমা জুয়েলার্স', '4/24, Eastern Plaza, Hatirpool, Dhaka.', '৪/২৪, ইস্টার্ণ প্লাজা, হাতিরপুল, ঢাকা।', NULL, NULL, NULL, '9672013', NULL, NULL, NULL, 'Babu Swapan Kumar Roy', NULL, NULL, 'বাবু স্বপন কুমার রায়', 'Male', '01964052998', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(542, '00884', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Shatarupa Jewellers', 'শতরূপা জুয়েলার্স', '4/62, Eastern Plaza, Dhaka.', '৪/৬২, ইস্টার্ণ প্লাজা, ঢাকা।', NULL, NULL, NULL, '8614582', NULL, NULL, NULL, 'Dolly Karmaker', NULL, NULL, 'মিসেস ডলি কর্মকার', 'Female', '01947117104', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(543, '00506', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Shabrang Jewellers', 'শাবরাং জুয়েলার্স', '35, New Rajdhani Super Market, Dhaka.', '৩৫, নিউ রাজধানী সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Anwarul Haque', NULL, NULL, 'জনাব মোঃ আনোয়ারুল হক', 'Male', '01911448190', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(544, '00507', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Shatabdi Jewellers', 'নিউ শতাব্দী জুয়েলার্স', '6, New Rajdhani Super Market, Dhaka.', '৬, নিউ রাজধানী সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haji Md. Anowar Hossain Sikder', NULL, NULL, 'হাজী মোঃ আনোয়ার হোসেন শিকদার', 'Male', '01918006004', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(545, '00508', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Classic Jewellers', 'ক্ল্যাসিক জুয়েলার্স', '7, New Rajdhani Super Market, Dhaka.', '৭, নিউ রাজধানী সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Sumon Dutta', NULL, NULL, 'বাবু সুমন দত্ত', 'Male', '01920303828', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(546, '00509', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Amanat Jewellers', 'আমানত জুয়েলার্স', '10, New Rajdhani Super Market, Dhaka.', '১০, নিউ রাজধানী সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, '7163945', NULL, NULL, NULL, 'Md. Sahidul Islam', NULL, NULL, 'জনাব মোঃ সহিদুল ইসলাম', 'Male', '01712246206', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(547, '00510', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Monalisa Jewellers', 'নিউ মোনালিসা জুয়েলার্স', '34, New Rajdhani Super Market, Dhaka.', '৩৪, নিউ রাজধানী সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, '7114326', NULL, NULL, NULL, 'Babu Anjan Roy', NULL, NULL, 'বাবু অঞ্জন রায়', 'Male', '01970827312', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(548, '00511', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Apurba Jewellers', 'অপূর্ব জুয়েলার্স', '16, New Rajdhani Super Market, Dhaka.', '১৬, নিউ রাজধানী সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Apurba Paul', NULL, NULL, 'বাবু অপূর্ব পাল', 'Male', '01731122589', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(549, '00512', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Payel Jewellers', 'পায়েল জুয়েলার্স', '15, New Rajdhani Super Market, Dhaka.', '১৫, নিউ রাজধানী সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, '9581623', NULL, NULL, NULL, 'Raju Ahmed', NULL, NULL, 'জনাব রাজু আহমেদ', 'Male', '01711334588', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(550, '00513', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Khaza Jewellers', 'খাজা জুয়েলার্স', '31, New Rajdhani Super Market, Dhaka.', '৩১, নিউ রাজধানী সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Babul Rahman', NULL, NULL, 'জনাব মোঃ বাবুল রহমান', 'Male', '01919016303', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(551, '00514', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Gold Queen Jewellers', 'দি গোল্ড কুইন জুয়েলার্স', '9, New Rajdhani Super Market, Dhaka.', '৯, নিউ রাজধানী সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Biswajit Roy Chowdhury', NULL, NULL, 'বাবু বিশ্বজিৎ রায় চৌধুরী', 'Male', '01711034594', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(552, '00515', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Ekanta Apan Jewellers', 'একান্ত আপন জুয়েলার্স', '18, New Rajdhani Super Market, Dhaka.', '১৮, নিউ রাজধানী সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Gopal Paul', NULL, NULL, 'বাবু গোপাল পাল', 'Male', '01712758632', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(553, '00516', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Jaya Jewellers', 'জয়া জুয়েলার্স', '19, New Rajdhani Super Market, Dhaka.', '১৯, নিউ রাজধানী সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, '7121415', NULL, NULL, NULL, 'Md. Saidul Haque', NULL, NULL, 'জনাব মোঃ সাইদুল হক', 'Male', '01715329190', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(554, '00637', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Rupnagar Jewellers', 'নতুন রূপনগর জুয়েলার্স', 'New Rajdhani Super Market, Dhaka.', 'নিউ রাজধানী সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, '9589716', NULL, NULL, NULL, 'Abdul Halim Mollah', NULL, NULL, 'জনাব আব্দুল হালিম মোল্লা', 'Male', '01911182314', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(555, '00518', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Maa Jewellers', 'নিউ মা জুয়েলার্স', 'New Rajdhani Super Market, Dhaka.', 'নিউ রাজধানী সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, '9554556', NULL, NULL, NULL, 'Babu Kali Shankar Baral', NULL, NULL, 'বাবু কালি শংকর বড়াল', 'Male', '01914094269', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(556, '00520', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Mukti Jewellers', 'নিউ মুক্তি জুয়েলার্স', '56/1, New Rajdhani Super Market, Dhaka.', '৫৬/১, নিউ রাজধানী সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Madhab Ghosh', NULL, NULL, 'বাবু মাধব ঘোষ', 'Male', '01711952368', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(557, '00521', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Dip Jewellers', 'দীপ জুয়েলার্স', '4, New Rajdhani Super Market, Dhaka.', '৪, নিউ রাজধানী সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, '7111022', NULL, NULL, NULL, 'Babu Pobitra Paul', NULL, NULL, 'বাবু পবিত্র পাল', 'Male', '01732049383', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(558, '00522', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Korobi Jewellers', 'দি করবী জুয়েলার্স', '43/1 / A, New Rajdhani Super Market, Dhaka.', '৪৩/১/এ, নিউ রাজধানী সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Krishna Paul', NULL, NULL, 'বাবু কৃষ্ণ পাল', 'Male', '01715160858', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(559, '00523', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Sananda Jewellers', 'দি সানন্দ জুয়েলার্স', '43/1 / A, New Rajdhani Super Market, Dhaka.', '৪৩/১/এ, নিউ রাজধানী সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Haripada Paul', NULL, NULL, 'বাবু হরিপদ পাল', 'Male', '01717344047', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(560, '00524', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Shatabdi Jewellers', 'শতাব্দী জুয়েলার্স', '17, New Rajdhani Super Market, Dhaka.', '১৭, নিউ রাজধানী সুপার মার্কেট,ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Fazlul Haque', NULL, NULL, 'জনাব মোঃ ফজলুল হক', 'Male', '01920877624', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(561, '00525', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Agrone Jewellers', 'অগ্রণী জুয়েলার্স', '20, New Rajdhani Super Market, Dhaka.', '২০, নিউ রাজধানী সুপার মার্কেট,ঢাকা।', NULL, NULL, NULL, '7173112', NULL, NULL, NULL, 'Babu Tilottama Bhattacharya', NULL, NULL, 'বাবু তিলোত্তমা ভট্টাচার্য', 'Male', '01552338490', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(562, '00526', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Nadia Jewellers', 'নদীয়া জুয়েলার্স', '8, New Rajdhani Super Market, Dhaka.', '৮, নিউ রাজধানী সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Jatan Haldar', NULL, NULL, 'বাবু যতন হালদার', 'Male', '01715106491', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(563, '00634', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'JBL Jewellers', 'জেবিএল জুয়েলার্স', '5, New Rajdhani Super Market, Dhaka.', '৫, নিউ রাজধানী সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Krishna Paul', NULL, NULL, 'বাবু কৃষ্ণ পাল', 'Male', '01711322163', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(564, '00811', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Raj Nandini Jewellers', 'রাজ নন্দিনী জুয়েলার্স', '32 Rajdhani Super Market, Dhaka.', '৩২ রাজধানী সুপার মার্কেট,ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Paritosh Karmkar', NULL, NULL, 'বাবু পরিতোষ কর্মকার', 'Male', '01552420646', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(565, '00273', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Dia Jewellers', 'দিয়া জুয়েলার্স', '36, Rajdhani Super Market, Dhaka.', '৩৬, রাজধানী সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, '9590590', NULL, NULL, NULL, 'Babu Sunil Ghosh', NULL, NULL, 'বাবু সুনীল ঘোষ', 'Male', '01764551153', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(566, '00527', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Preeti Jewellers', 'প্রীতি জুয়েলার্স', '123/1, South Jatrabari, Dhaka.', '১২৩/১-এ দক্ষিন যাত্রাবাড়ী, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sajal Mahmood', NULL, NULL, 'জনাব সজল মাহমুদ', 'Male', '01711352892', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(567, '00529', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Prerona Jewellers', 'প্রেরণা জুয়েলার্স', '123/1 A Haji Samad Super Market, Jatrabari, Dhaka.', '১২৩/১-এ হাজী সামাদ সুঃ মার্কেট, যাত্রাবাড়ী, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Purnima Ghosh', NULL, NULL, 'মিসেস পূর্ণিমা ঘোষ', 'Female', '01758491333', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(568, '00531', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Rakib Jewellers', 'নিউ রাকিব জুয়েলার্স', '123/1 / A, Haji Samad Super Market, Jatrabari, Dhaka.', '১২৩/১/এ, হাজী সামাদ সুঃ মার্কেট, যাত্রাবাড়ী, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haji Md. Harun Ur Rashid', NULL, NULL, 'হাজী মোঃ হারুন উর রশিদ', 'Male', '01711154311', NULL, '{\"name\":[\"tariff-and-taxation\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(569, '00532', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Momotaz Jewellers', 'নিউ মমতাজ জুয়েলার্স', '123/1 / A, South Jatrabari, Dhaka.', '১২৩/১/এ, দক্ষিন যাত্রাবাড়ী, ঢাকা।', NULL, NULL, NULL, '7549047', NULL, NULL, NULL, 'Md. Taufiqul Alam', NULL, NULL, 'জনাব মোঃ তৌফিকুল আলম', 'Male', '01920803801', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(570, '00533', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Al-Habib Jewellers', 'আল-হাবিব জুয়েলার্স', '123/1 A, Haji Samad Super Market, Dhaka.', '১২৩/১-এ, হাজী সামাদ সুঃ মার্কেট, ঢাকা।', NULL, NULL, NULL, '7543243', NULL, NULL, NULL, 'Kazi Anisur Rahman', NULL, NULL, 'জনাব কাজী আনিসুর রহমান', 'Male', '01917133279', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(571, '00534', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Shawon Jewellers', 'শাওন জুয়েলার্স', '123/1 A, Haji Samad Super Market, Dhaka.', '১২৩/১-এ, হাজী সামাদ সুঃ মার্কেট, ঢাকা।', NULL, NULL, NULL, '7541102', NULL, NULL, NULL, 'Kazi Emdadul Haque', NULL, NULL, 'জনাব কাজী এমদাদুল হক', 'Male', '01842800664', NULL, '{\"name\":[\"law-and-membership\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(572, '00535', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Moushumi Jewellers', 'মৌসুমী জুযেলার্স', '3/9, Haji Samad Super Market, Dhaka.', '৩/৯, হাজী সামাদ সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Arif Hossain', NULL, NULL, 'জনাব মোঃ আরিফ হোসেন', 'Male', '01912932525', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(573, '00536', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Joty Jewellers', 'নিউ জ্যোতি জুয়েলার্স', '123/1-A, South Jatrabari, Dhaka.', '১২৩/১-এ, দক্ষিন যাত্রাবাড়ী, ঢাকা।', NULL, NULL, NULL, '7543428', NULL, NULL, NULL, 'Babu Gopal Chandra Karmakar', NULL, NULL, 'বাবু গোপাল চন্দ্র কর্মকার', 'Male', '01715733119', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(574, '00537', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Nishamoni Jewellers', 'নিশামনি জুয়েলার্স', '123/1 / A, Samad Super Market, Jatrabari, Dhaka.', '১২৩/১/এ, সামাদ সুপার মার্কেট, যাত্রাবাড়ী, ঢাকা।', NULL, NULL, NULL, '7546005', NULL, NULL, NULL, 'Babu Tapan Kumar Sarkar', NULL, NULL, 'বাবু তপন কুমার সরকার', 'Male', '01556305262', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(575, '00539', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Al-Jannat Jewellers', 'আল-জান্নাত জুয়েলার্স', '123/1 / A, Samad Super Market, Jatrabari, Dhaka.', '১২৩/১/এ, সামাদ সুপার মার্কেট, যাত্রাবাড়ী, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Shahjahan', NULL, NULL, 'জনাব মোঃ শাহজাহান', 'Male', '01552346348', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(576, '00728', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Swarnali Jewellers', 'নিউ স্বর্ণালী জুয়েলার্স', 'Shop No-15, Haji Samad Super Market, Jatrabari, Dhaka.', 'দোকান নং-১৫, হাজী সামাদ সুপার মার্কেট, যাত্রাবাড়ী, ঢাকা।', NULL, NULL, NULL, '7550437', NULL, NULL, NULL, 'Md. Bashir Ullah', NULL, NULL, 'জনাব মোঃ বশির উল্লাহ্', 'Male', '01987020301', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(577, '00812', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Meruna Jewellers', 'মেরুনা জুয়েলার্স', '406/407 Agrani Super Market, Jatrabari, Dhaka.', '৪০৬/৪০৭ অগ্রনী সুপার মার্কেট, যাত্রাবাড়ী, ঢাকা।', NULL, NULL, NULL, '7547429', NULL, NULL, NULL, 'Md. Nizamul Haque Mollah', NULL, NULL, 'জনাব মোঃ নিজামুল হক মোল্লা', 'Male', '01819440652', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(578, '00810', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Moushumi Gold Manufacturing & Jewellers', 'মৌসুমী গোল্ড ম্যানুফ্যাকচারীং এন্ড জুয়েলার্স', '53, Sanir Akhra, Shekhadi Bottala, Jatrabari, Dhaka.', '৫৩, শনির আখড়া, শেখদী বটতলা, যাত্রাবাড়ী, ঢাকা।', NULL, NULL, NULL, '7550335', NULL, NULL, NULL, 'Babu Bijoy Saha', NULL, NULL, 'বাবু বিজয় সাহা', 'Male', '01716398745', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(579, '00857', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Bodhu Jewellers', 'নিউ বধু জুয়েলার্স', '123/1 / A South Jatrabari, Dhaka.', '১২৩/১/এ দক্ষিণ যাত্রাবাড়ী, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Atiqur Rahman', NULL, NULL, 'জনাব মোঃ আতিকুর রহমান', 'Male', '01712837772', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(580, '00892', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Bismillah Jewellers', 'বিসমিল্লাহ জুয়েলার্স', '123/1 / A, South Jatrabari, Dhaka.', '১২৩/১/এ, দক্ষিণ যাত্রাবাড়ী, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shyamal Mahmud', NULL, NULL, 'জনাব শ্যামল মাহমুদ', 'Male', '01675590437', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(581, '00549', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Marigold Jewellers', 'ম্যারিগোল্ড জুয়েলার্স', '2/43, City Heart Shopping Complex, Dhaka.', '২/৪৩, সিটি হাট শপিং কমপ্লেক্স, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Rakhal Chandra Das', NULL, NULL, 'বাবু রাখাল চন্দ্র দাস', 'Male', '01715155052', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(582, '00550', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Uday Jewellers', 'উদয় জুয়েলার্স', '2/44, City Heart Shopping Complex, Dhaka.', '২/৪৪, সিটি হাট শপিং কমপ্লেক্স, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Narayan Ghosh', NULL, NULL, 'বাবু নারায়ন ঘোষ', 'Male', '01711116656', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(583, '00551', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sunflower Jewellers', 'সানফ্লাওয়ার জুয়েলার্স', '2/8, City Heart Shopping Complex, Dhaka.', '২/৮, সিটি হাট শপিং কমপ্লেক্স, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Showmen Nag', NULL, NULL, 'বাবু সৌমেন নাগ', 'Male', '01815846747', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(584, '00552', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Taj Jewellers', 'তাজ জুয়েলার্স', '2 / 4-5, City Heart Shopping Complex, Dhaka.', '২/৪-৫, সিটি হার্ট শপিং কমপ্লেক্স, ঢাকা।', NULL, NULL, NULL, '8350438', NULL, NULL, NULL, 'Md. Tajul Islam', NULL, NULL, 'জনাব মোঃ তাজুল ইসলাম', 'Male', '01711172493', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(585, '00553', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Mohanagar Jewellers', 'মহানগর জুয়েলার্স', '34, Karnafuliy Garden City, Dhaka.', '৩৪, কর্ণফুলী গার্ডেন সিটি, ঢাকা।', NULL, NULL, NULL, '8332198', NULL, NULL, NULL, 'Babu Tarak Gupta', NULL, NULL, 'বাবু তারক গুপ্ত', 'Male', '01712706786', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(586, '00554', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Aparupa Jewellers', 'অপরূপা জুয়েলার্স', '29, Karnafuly Garden City, Dhaka.', '২৯, কর্ণফুলী গার্ডেন সিটি, ঢাকা।', NULL, NULL, NULL, '9353511', NULL, NULL, NULL, 'Babu Kalipada Dey', NULL, NULL, 'বাবু কালী পদ দে', 'Male', '01913039689', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(587, '00697', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Mohana Jewellers', 'মোহনা জুয়েলার্স', '4/36, Karnafuly Garden City (3rd Floor) Dhaka.', '৪/৩৬, কর্ণফুলী গার্ডেন সিটি (৪র্থ তলা) ঢাকা।', NULL, NULL, NULL, '9334753', NULL, NULL, NULL, 'Babu Nirmal Kumar Gupta', NULL, NULL, 'বাবু নির্মল কুমার গুপ্ত', 'Male', '01715662170', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(588, '00849', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Swarnakunja Jewellers', 'নিউ স্বর্ণ কুঞ্জ জুয়েলার্স', '32, Karnafuly Garden City (3rd Floor) Dhaka.', '৩২, কর্ণফুলী গার্ডেন সিটি (৪র্থ তলা) ঢাকা।', NULL, NULL, NULL, '9354024', NULL, NULL, NULL, 'Babu Nil Komol Paul', NULL, NULL, 'বাবু নীল কমল পাল', 'Male', '01626637053', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(589, '00850', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Best & Best Gold Creation Jewel Avenue Jewellers', 'বেস্ট এন্ড বেস্ট গোল্ড ক্রিয়েশন জুয়েল এভিনিউ জুয়েলার্স', '17-18, Karnafuly Garden City (3rd Floor) Dhaka.', '১৭-১৮, কর্ণফুলী গার্ডেন সিটি (৪র্থ তলা) ঢাকা।', NULL, NULL, NULL, '9355346', NULL, NULL, NULL, 'Babu Biplab Roy', NULL, NULL, 'বাবু বিল্পব রায়', 'Male', '01715711141', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(590, '00555', '', '', 99, '', 'Dhaka', 'Dhaka', 'Khan Jewellers', 'খান জুয়েলার্স', '85,75, Muktijoddha Super Market, Mirpur-1, Dhaka', '৭৮, ৮৫, মুক্তিযোদ্ধা সুঃ মার্কেট, মিরপুর-১, ঢাকা', '', '', '', '9332919', '', '', NULL, 'Anisur Rahman Labu', '', '', 'জনাব আনিসুর রহমান লাবু', 'Male', '01819499855', '', '{\"name\":[\"banking-and-financial-service\",null],\"post\":[\"member\",null]}', 1, 1, 2, '2022-05-14 10:13:30', '2022-05-16 15:34:30'),
(591, '00556', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sweety Jewellers', 'সুইটি জুয়েলার্স', '88, Muktijoddha Super Market, Mirpur-1, Dhaka', '৮৮, মুক্তিযোদ্ধা সুঃ মার্কেট, মিরপুর-১, ঢাকা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Badal Chandra Ghosh', NULL, NULL, 'বাবু বাদল চন্দ্র ঘোষ', 'Male', '01733854189', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(592, '00557', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Rajib Jewellers', 'নিউ রাজিব জুয়েলার্স', '76, Muktijoddha Super Market, Mirpur-1, Dhaka', '৭৬, মুক্তিযোদ্ধা সুঃ মার্কেট, মিরপুর-১, ঢাকা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Gopal Chandra Das', NULL, NULL, 'বাবু গোপাল চন্দ্র দাস', 'Male', '01714277443', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(593, '00558', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Anima Jewellers', 'নিউ অনিমা জুয়েলার্স', '128, Muktijoddha Super Market, Mirpur-1, Dhaka', '১২৮, মুক্তিযোদ্ধা সুঃ মার্কেট, মিরপুর-১, ঢাকা', NULL, NULL, NULL, '9007618', NULL, NULL, NULL, 'Babu Uttam Sarkar', NULL, NULL, 'বাবু উত্তম সরকার', 'Male', '01819193807', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(594, '00561', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Sananda Jewellers', 'নিউ সানন্দা জুয়েলার্স', '91, Muktijoddha Super Market, Mirpur-1, Dhaka', '৯১, মুক্তিযোদ্ধা সুঃ মার্কেট, মিরপুর-১, ঢাকা', NULL, NULL, NULL, '9007299', NULL, NULL, NULL, 'Babu Dhananjay Saha Bipul', NULL, NULL, 'বাবু ধনঞ্জয় সাহা বিপুল', 'Male', '01710855361', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(595, '00564', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Haque Jewellers', 'হক জুয়েলার্স', '130, Muktijoddha Super Market, Mirpur-1, Dhaka', '১৩০, মুক্তিযোদ্ধা সুঃ মার্কেট, মিরপুর-১, ঢাকা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Abdul Halim Mamun', NULL, NULL, 'জনাব মোঃ আবদুল হালিম মামুন', 'Male', '01975436993', NULL, '{\"name\":[\"tariff-and-taxation\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(596, '00568', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Pinky Jewellers', 'পিংকি জুয়েলার্স', '89, Muktijoddha Super Market, Mirpur-1, Dhaka', '৮৯, মুক্তিযোদ্ধা সুঃ মার্কেট, মিরপুর-১, ঢাকা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Sirajul Islam', NULL, NULL, 'জনাব মোঃ সিরাজুল ইসলাম', 'Male', '01715105144', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(597, '00569', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Dewan Jewellers', 'দেওয়ান জুয়েলার্স', '21,22, Muktijoddha Super Market, Mirpur-1, Dhaka', '২১,২২, মুক্তিযোদ্ধা সুঃ মার্কেট, মিরপুর-১, ঢাকা', NULL, NULL, NULL, '9021635', NULL, NULL, NULL, 'Tajul Islam Dewan', NULL, NULL, 'জনাব তাজুল ইসলাম দেওয়ান', 'Male', '01748208225', NULL, '{\"name\":[\"banking-and-financial-service\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(598, '00571', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sikder Jewellers', 'সিকদার জুয়েলার্স', '129, Muktijoddha Super Market, Mirpur-1, Dhaka.', '১২৯, মুক্তিযোদ্ধা সুঃ মার্কেট, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, '9004241', NULL, NULL, NULL, 'Aktar Hossain Sikder', NULL, NULL, 'জনাব মোঃ আকতার হোসেন সিকদার', 'Male', '01715117394', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(599, '00572', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Mita Jewellers', 'মিতা জুয়েলার্স', '73, Muktijoddha Super Market, Mirpur-1, Dhaka.', '৭৩, মুক্তিযোদ্ধা সুঃ মার্কেট, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Subodh Ghosh', NULL, NULL, 'বাবু সুবোধ ঘোষ', 'Male', '01919504861', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(600, '00573', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'S.A Jewellers', 'এস, এ, জুয়েলার্স', '148, Muktijoddha Super Market, Mirpur-1, Dhaka.', '১৪৮, মুক্তিযোদ্ধা সুঃ মার্কেট, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, '9038975', NULL, NULL, NULL, 'Md. Jaynal Abedin', NULL, NULL, 'জনাব মোঃ জয়নাল আবেদীন', 'Male', '01819282043', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(601, '00636', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Nandini Jewellers', 'নন্দিনী জুয়েলার্স', '127, Muktijoddha Super Market, Mirpur-1, Dhaka.', '১২৭, মুক্তিযোদ্ধা সুপার মার্কেট, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Sagar Das', NULL, NULL, 'বাবু সাগর দাস', 'Male', '01715176359', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(602, '00641', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Arpita Jewellers', 'অর্পিতা জুয়েলার্স', '80, Muktijoddha Super Market, Mirpur-1, Dhaka.', '৮০, মুক্তিযোদ্ধা সুপার মার্কেট, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, '8032655', NULL, NULL, NULL, 'Babu Rajib Chandra Das', NULL, NULL, 'বাবু রাজীব চন্দ্র দাস', 'Male', '01670494659', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(603, '00666', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sahara Jewellers', 'সাহারা জুয়েলার্স', '23, Muktijoddha Super Market, Mirpur-1, Dhaka.', '২৩, মুক্তিযোদ্ধা সুপার মার্কেট, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Salma Begum', NULL, NULL, 'মিসেস সালমা বেগম', 'Female', '01778258821', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(604, '00575', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Karnafuly Jewellers', 'কর্ণফুলী জুয়েলার্স', '75, Muktijoddha Super Market, Mirpur-1, Dhaka.', '৭৫, মুক্তিযোদ্ধা সুঃ মার্কেট, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Sushanto Karmakar', NULL, NULL, 'বাবু সুশান্ত কর্মকার', 'Male', '01748918266', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(605, '00704', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Alpana Jewellers', 'দি আলপনা জুয়েলার্স', '95, Muktijoddha Super Market, Mirpur-1, Dhaka.', '৯৫, মুক্তিযোদ্ধা সুঃ মার্কেট, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Monir Hossain', NULL, NULL, 'জনাব মোঃ মনির হোসেন', 'Male', '01711173130', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(606, '00753', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Nur Jewellers', 'নূর জুয়েলার্স', '82, Muktijoddha Super Market (Ground Floor) Dhaka.', '৮২, মুক্তিযোদ্ধা সুপার মার্কেট (নীচ তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Solaiman Sarkar (Noman)', NULL, NULL, 'জনাব মোঃ সোলায়মান সরকার (নোমান)', 'Male', '01735454070', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(607, '00766', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Prime Jewellers', 'প্রাইম জুয়েলার্স', '74, Muktijoddha Super Market, Mirpur-1, Dhaka.', '৭৪, মুক্তিযোদ্ধা সুপার মার্কেট, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, '8010454', NULL, NULL, NULL, 'Babu Anup Acharya', NULL, NULL, 'বাবু অনুপ আচার্য্য', 'Male', '01714293261', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(608, '00779', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Adarsha Jewellers', 'আদর্শ জুয়েলার্স', '83, Muktijoddha Super Market, Mirpur-1, Dhaka.', '৮৩, মুক্তিযোদ্ধা সুপার মার্কেট, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, '55075225', NULL, NULL, NULL, 'Md. Sakhawat Hossain (Dulal)', NULL, NULL, 'জনাব মোঃ সাখাওয়াত হোসেন (দুলাল)', 'Male', '01720090064', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(609, '00570', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Rony Jewellers', 'রনি জুয়েলার্স', '131, Muktijoddha Super Market, Mirpur-1, Dhaka', '১৩১, মুক্তিযোদ্ধা সুঃ মার্কেট, মিরপুর-১, ঢাকা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Subhash Chakraborty', NULL, NULL, 'বাবু সুভাষ চক্রবর্তী', 'Male', '01720082000', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(610, '00800', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Al-Harun Jewellers', 'আল-হারুন জুয়েলার্স', '94, Muktijoddha Super Market, Mirpur-1, Dhaka.', '৯৪, মুক্তিযোদ্ধা সুপার মার্কেট, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haji Harun Ur Rashid', NULL, NULL, 'হাজী হারুন অর রশিদ', 'Male', '01914262635', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(611, '00801', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'M/s. Guinea House', 'মেসার্স গিনি হাউজ', '72, Muktijoddha Super Market, Mirpur-1, Dhaka.', '৭২, মুক্তিযোদ্ধা সুপার মার্কেট, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Badal Chandra Das', NULL, NULL, 'বাবু বাদল চন্দ্র দাস', 'Male', '01720902508', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(612, '00802', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Rupaly Jewellers', 'নিউ রূপালী জুয়েলার্স', '84, Muktijoddha Super Market, Mirpur-1, Dhaka.', '৮৪, মুক্তিযোদ্ধা সুপার মার্কেট, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, '9009323', NULL, NULL, NULL, 'Salauddin Shekh (Ripon)', NULL, NULL, 'জনাব সালাউদ্দিন শেখ (রিপন)', 'Male', '01822955768', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(613, '00803', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Senko Gold & Jewellers', 'সেনকো গোল্ড এন্ড জুয়েলার্স', '73, Muktijoddha Super Market, Mirpur-1, Dhaka.', '৭৩, মুক্তিযোদ্ধা সুপার মার্কেট, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sharif Shamimur Rahman', NULL, NULL, 'জনাব শরীফ শামীমুর রহমান', 'Male', '01712149115', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(614, '00880', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Nidhi Jewellers', 'নিধি জুয়েলার্স', '93, Muktijoddha Super Market, Mirpur-1, Dhaka.', '৯৩, মুক্তিযোদ্ধা সুঃ মার্কেট, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sree Swapan Chandra Das', NULL, NULL, 'শ্রী স্বপন চন্দ্র দাস', 'Male', '01776326677', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(615, '00578', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Mim Jewellers', 'মীম জুয়েলার্স', '44, Shah Ali Shopping Complex, Mirpur-1, Dhaka.', '৪৪, শাহআলী শপিং কমপ্লেক্স, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Anowar Hossain (Kuddus)', NULL, NULL, 'জনাব মোঃ আনোয়ার হোসেন (কুদ্দুস)', 'Male', '01715939600', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(616, '00579', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Ananya Jewellers', 'অনন্যা জুয়েলার্স', '62, Shahali Shopping Complex, Mirpur-1, Dhaka.', '৬২, শাহআলী শপিং কমপ্লেক্স, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Gobinda Saha', NULL, NULL, 'বাবু গোবিন্দ সাহা', 'Male', '01920827819', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(617, '00580', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Eureka Jewellers', 'ইউরেকা জুয়েলার্স', '13,26, Shah Ali Shopping Complex, Mirpur-1, Dhaka.', '১৩,২৬, শাহআলী শপিং কমপ্লেক্স, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Taherunnesa', NULL, NULL, 'মিসেস তাহেরুন্নেসা', 'Female', '01552379972', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(618, '00582', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Sheetal Jewellers', 'নিউ শীতল জুয়েলার্স', '45, Shah Ali Shopping Complex, Mirpur-1, Dhaka.', '৪৫, শাহআলী শপিং কমপ্লেক্স, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, '9013476', NULL, NULL, NULL, 'Babu Barun Chandra Dhar', NULL, NULL, 'বাবু বরুন চন্দ্র ধর', 'Male', '01712156635', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(619, '00583', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Smrity Jewellers', 'স্মৃতি জুয়েলার্স', '114, Shah Ali Shopping Complex, Mirpur-1, Dhaka.', '১১৪, শাহআলী শপিং কমপ্লেক্স, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, '8057299', NULL, NULL, NULL, 'Babu Shital Chandra Dhor', NULL, NULL, 'বাবু শীতল চন্দ্র ধর', 'Male', '01912178922', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(620, '00587', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Luna Jewellers', 'লুনা জুয়েলার্স', '29, Shah Ali Shopping Complex, Mirpur-1, Dhaka.', '২৯, শাহআলী শপিং কমপ্লেক্স, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, '8061317', NULL, NULL, NULL, 'B.M Nazrul Islam Selim', NULL, NULL, 'জনাব বিএম নজরুল ইসলাম সেলিম', 'Male', '01711948737', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(621, '00588', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Shatarupa Jewellers', 'নিউ শতরূপা জুয়েলার্স', '77, Shah Ali Shopping Com: Mirpur-1, Dhaka.', '৭৭, শাহ্আলী শপিং কমঃ, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Kartik Saha', NULL, NULL, 'বাবু কার্তিক সাহা', 'Male', '01715161094', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(622, '00656', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Prince Jewellers', 'নিউ প্রিন্স জুয়েলার্স', '26, 12 Shah Ali Shopping Complex, Mirpur-1, Dhaka.', '২৭,১২ শাহআলী শপিং কমপ্লেক্স, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belayet Hossain', NULL, NULL, 'জনাব বেলায়েত হোসেন', 'Male', '01712663240', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(623, '00657', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Karnafuly Jewellers', 'কর্ণফুলী জুয়েলার্স', '76, 102, Shah Ali Shopping Complex, Mirpur-1, Dhaka.', '৭৬, ১০২, শাহআলী শপিং কমপ্লেক্স, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Namita Karmakar', NULL, NULL, 'মিসেস নমিতা কর্মকার', 'Female', '01748918266', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(624, '00581', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Dewan Jewellers', 'দেওয়ান জুয়েলার্স', '9,30, Shah Ali Shopping Complex, Mirpur-1, Dhaka.', '৯,৩০, শাহআলী শপিং কমপ্লেক্স, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tajul Islam Dewan', NULL, NULL, 'জনাব তাজুল ইসলাম দেওয়ান', 'Male', '01748208225', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(625, '00765', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Nupur Jewellers', 'নুপুর জুয়েলার্স', '60, Shah Ali Shopping Complex, Mirpur-1, Dhaka.', '৬০, শাহ্আলী শপিং কমপ্লেক্স, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jalil Sikder', NULL, NULL, 'জনাব জলিল শিকদার', 'Male', '01917004904', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(626, '00774', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Swarnaly Jewellers', 'নিউ স্বর্ণালী জুয়েলার্স', '28, Shah Ali Shopping Complex (1st floor), Mirpur-1, Dhaka.', '২৮, শাহ্আলী শপিং কমপ্লেক্স (২য় তলা), মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nasir Uddin Khan', NULL, NULL, 'জনাব নাসির উদ্দিন খাঁন', 'Male', '01926243536', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(627, '00775', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Al-Razzaq Jewellers', 'আল-রাজ্জাক জুয়েলার্স', '81, Shah Ali Shopping Complex (2nd Floor) Mirpur-1, Dhaka.', '৮১, শাহ্ আলী শপিং কমপ্লেক্স (২য় তলা) মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jasim Uddin', NULL, NULL, 'জনাব জসিম উদ্দীন', 'Male', '01700562398', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(628, '00586', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'D. Bikrampur Jewellers', 'ডি বিক্রমপুর জুয়েলার্স', '28, Shah Ali Shopping Complex, Mirpur-1, Dhaka.', '২৮, শাহআলী শপিং কমপ্লেক্স, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Sunil Ghosh (Shuvo)', NULL, NULL, 'বাবু সুনীল ঘোষ (শুভ)', 'Male', '01712032385', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(629, '00931', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Shashi Jewellers', 'শশী জুয়েলার্স', '29 Shah Ali Shopping Complex, Mirpur-1, Dhaka.', '২৯ শাহআলী শপিং কমপ্লেক্স, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sankar Chandra Dhar', NULL, NULL, 'জনাব সংকর চন্দ্র ধর', 'Male', '01716123413', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(630, '00592', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Milon Jewellers', 'দি মিলন জুয়েলার্স', '153, 154, Mazar Co-perative Market, Mirpur-1, Dhaka.', '১৫৩, ১৫৪, মাজার কো-অপরেটিভ মার্কেট, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Milon Mia', NULL, NULL, 'জনাব মোঃ মিলন মিয়া', 'Male', '01727705878', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(631, '00593', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Ayub Jewellers', 'আইয়ুব জুয়েলার্স', '169, Mazar Co-operative Market, Mirpur-1, Dhaka.', '১৬৯, মাজার কো-অপরেটিভ মার্কেট, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Noor Nabi', NULL, NULL, 'জনাব মোঃ নুর নবী', 'Male', '01817014690', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(632, '00594', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Rahima Jewellers', 'রহিমা জুয়েলার্স', '171, Mazar Co-operative Market, Mirpur-1, Dhaka.', '১৭১, মাজার কো অপারেটিভ মার্কেট, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shamsul Haque', NULL, NULL, 'জনাব শামসুল হক', 'Male', '01933242528', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(633, '00595', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Shammi Jewellers', 'নিউ শাম্মী জুয়েলার্স', 'Mazar Co-operative Market, Mirpur-1, Dhaka.', 'মাজার কো অপারেটিভ মার্কেট, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, '8018105', NULL, NULL, NULL, 'Md. Kamal', NULL, NULL, 'জনাব মোঃ কামাল', 'Male', '01710284390', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(634, '00590', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Rony Jewellers', 'দি রনি জুয়েলার্স', '155, Mazar Co-operative Market, Mirpur, Dhaka.', '১৫৫, মাজার কো অপারেটিভ মার্কেট, মিরপুর, ঢাকা।', NULL, NULL, NULL, '9004884', NULL, NULL, NULL, 'Md. Selim Reza', NULL, NULL, 'জনাব মোঃ সেলিম রেজা', 'Male', '01711734884', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(635, '00591', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Hashi Jewellers', 'হাসি জুয়েলার্স', '152, Mazar Co-operative Market, Mirpur-1, Dhaka.', '১৫২, মাজার কো-অপরেটিভ মার্কেট, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, '9039093', NULL, NULL, NULL, 'Md. Delwar Hossain', NULL, NULL, 'জনাব মোঃ দেলোয়ার হোসেন', 'Male', '01712291155', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(636, '00796', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Shahid Jewellers', 'দি শহিদ জুয়েলার্স', '163, Mazar Co-operative Market, Mirpur-1, Dhaka.', '১৬৩, মাজার কো-অপারেটিভ মার্কেট, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Shahid', NULL, NULL, 'জনাব মোঃ শহিদ', 'Male', '01711132457', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(637, '00797', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Tayef Jewellers', 'তায়েফ জুয়েলার্স', '151, Mazar Co-operative Market, Mirpur-1, Dhaka.', '১৫১, মাজার কো-অপারেটিভ মার্কেট, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, '9023275', NULL, NULL, NULL, 'Md. Hanif', NULL, NULL, 'জনাব মোঃ হানিফ', 'Male', '01913588501', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(638, '00798', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Tisha Jewellers', 'নিউ তিশা জুয়েলার্স', '147, Mazar Co-operative Market, Mirpur-1, Dhaka.', '১৪৭, মাজার কো-অপারেটিভ মার্কেট, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Mainul Islam Liton', NULL, NULL, 'জনাব মোঃ মাইনুল ইসলাম লিটন', 'Male', '01712435246', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(639, '00799', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'A.D Jewellers', 'এ. ডি জুয়েলার্স', '161 / Kha, Mazar Co-operative Market, Mirpur-1, Dhaka.', '১৬১/খ, মাজার কো-অপারেটিভ মার্কেট, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Alauddin', NULL, NULL, 'জনাব মোঃ আলাউদ্দিন', 'Male', '01771255670', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(640, '00862', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Rumana Jewellers', 'রুমানা জুয়েলার্স', '168, Mazar Co-operative Market, Mirpur-1, Dhaka.', '১৬৮, মাজার কো-অপারেটিভ মার্কেট, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Saidur Rahman Idris', NULL, NULL, 'জনাব মোঃ সাইদুর রহমান ইদ্রিস', 'Male', '01722522096', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(641, '00928', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Navaratna Jewellers', 'দি নবরত্ম জুয়েলার্স', 'Shop No-162, Mazar Co-operative Market, Mirpur-1, Dhaka-1216', 'দোকান নং-১৬২, মাজার কো-অপারেটিভ মার্কেট, মিরপুর-১, ঢাকা-১২১৬', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Abdul Awal', NULL, NULL, 'জনাব মোঃ আবদুল আউয়াল', 'Male', '01716186673', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(642, '00759', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Malancha Jewellers', 'মালঞ্চ জুয়েলার্স', '25, Baghdad Shopping Complex, Mirpur-1, Dhaka.', '২৫, বাগদাদ শপিং কমপ্লেক্স, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Muktar Hossain', NULL, NULL, 'জনাব মোঃ মুকতার হোসেন', 'Male', '01866743176', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(643, '00773', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Amina Jewellers', 'নিউ আমিনা জুয়েলার্স', '1 / A / B Capital Tower, Shop-11, Mirpur-1, Dhaka.', '১/এ/বি ক্যাপিটাল টাওয়ার, দোকান-১১, মিরপুর-১, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Ujjal Hossain', NULL, NULL, 'জনাব মোঃ উজ্জল হোসেন', 'Male', '01719223385', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(644, '00596', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Diamond World', 'ডায়মন্ড ওয়ার্ল্ড', 'GBDL, Kazi Morning Garary, House No-15 (2nd Floor), Road No-3, Mirpur-11 / A, Dhaka.', 'হক-জিবিডিএল, কাজী মর্নিং গ্যারারী, বাড়ী নং-১৫ (৩য় তলা), রোড নং-৩, মিরপুর-১১/এ, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dilip Kumar Agarwala', NULL, NULL, 'জনাব দিলীপ কুমার আগরওয়ালা', 'Male', '01711549640', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(645, '00622', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Amin Jewellers', 'আমিন জুয়েলার্স', 'Zone-A, 29-30, Jamuna Future Park, Dhaka.', 'জোন-এ, ২৯-৩০, যমুনা ফিউচার পার্ক, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kazi Aminul Islam', NULL, NULL, 'জনাব কাজী আমিনুল ইসলাম', 'Male', '01713206247', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(646, '00633', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Venus Jewellers Ltd.', 'ভেনাস জুয়েলার্স লিঃ', 'Shop No-2-A / 001, Level-2, Zone-A, Jamuna Future Park, Dhaka.', 'দোকান নং-২-এ/০০১, লে-২, জোন-এ, যমুনা ফিউচারপার্ক, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Soma Malakar', NULL, NULL, 'মিসেস সোমা মালাকার', 'Female', '01711126377', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(647, '00643', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Kunja Jewellers', 'কুঞ্জ জুয়েলার্স', '2A-028 Jamuna Future Park, Dhaka.', '২্এ-০২৮ যমুনা ফিউচার পার্ক, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Sumon Chandra Dey', NULL, NULL, 'বাবু সুমন চন্দ্র দে', 'Male', '01727798099', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(648, '00644', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Angrupa Jewellers', 'অঙ্গরূপা জুয়েলার্স', 'Level-2, Block-A, 26, Jamuna Future Park, Dhaka.', 'লে-২, ব্লক-এ, ২৬, যমুনা ফিউচার পার্ক, ঢাকা।', NULL, NULL, NULL, '9823001', NULL, NULL, NULL, 'Babu Gopal Das', NULL, NULL, 'বাবু গোপাল দাস', 'Male', '01977538119', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(649, '00645', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'D. Gold Passion', 'ডি গোল্ড প্যাশন', '2A-005 / B, Jamuna Future Park, Dhaka.', '২এ-০০৫/বি, যমুনা ফিউচার পার্ক, ঢাকা।', NULL, NULL, NULL, '982327', NULL, NULL, NULL, 'Eng. M.A. Sobhan', NULL, NULL, 'ইঞ্জিঃ এম. এ. সোবহান', 'Male', '01785888877', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(650, '00646', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Fancy Jewellers', 'নিউ ফেন্সী জুয়েলার্স', '2B-002A, Jamuna Future Park, Dhaka.', '২বি-০০২এ, যমুনা ফিউচার পার্ক, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Amit Ghosh', NULL, NULL, 'বাবু অমিত ঘোষ', 'Male', '01746688525', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(651, '00647', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Muslim Jewellers', 'দি মুসলিম জুয়েলার্স', 'Level-2, Block-A, 004, Jamuna Future Park, Dhaka.', 'লে-২, ব্লক-এ, ০০৪, যমুনা ফিউচার পার্ক, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Sumon Poddar', NULL, NULL, 'বাবু সুমন পোদ্দার', 'Male', '01971534384', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(652, '00650', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sultana Jewellers (Pvt) Ltd.', 'সুলতানা জুয়েলার্স (প্রাঃ) লিঃ', 'Jamuna Future Park, Dhaka.', 'যমুনা ফিউচার পার্ক, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Babul Mia', NULL, NULL, 'জনাব মোঃ বাবুল মিয়া', 'Male', '01819241525', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(653, '00659', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Vinayek Gold & Diamond', 'ভিনায়েক গোল্ড এন্ড ডায়মন্ড', '2A-002, Jamuna Future Park, Dhaka.', '২এ-০০২, যমুনা ফিউচার পার্ক, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Sumon Karmakar', NULL, NULL, 'বাবু সুমন কর্মকার', 'Male', '01748000888', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(654, '00662', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Al-Hassan Diamond Gallery', 'আল-হাসান ডায়মন্ড গ্যালারী', 'Block-B, Level-2,006, Jamuna Future Park, Dhaka.', 'ব্লক-বি, লে-২,০০৬, যমুনা ফিউচার পার্ক, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mohammad Khairul Hasan', NULL, NULL, 'জনাব মোহাম্মদ খায়রুল হাসান', 'Male', '01922111999', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(655, '00663', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Golden World Jewellers', 'গোল্ডেন ওয়ার্ল্ড জুয়েলার্স', '2 / A-006, 2nd Floor, Jamuna Future Park, Dhaka.', '২/এ-০০৬, তৃতীয়তলা, যমুনা ফিউচার পার্ক, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Farida Hossain', NULL, NULL, 'মিসেস ফরিদা হোসেন', 'Female', '01729053222', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL);
INSERT INTO `members` (`id`, `number_id`, `member_since`, `central_committee_post`, `central_committee_order`, `district_committee_post`, `district`, `divisions`, `inst_name`, `inst_name_bn`, `inst_address`, `inst_address_bn`, `inst_trade_license`, `inst_bin`, `inst_tin`, `inst_telephone`, `inst_mobile`, `img`, `inst_img`, `name`, `email`, `blood_group`, `name_bn`, `gender`, `contact`, `home_address`, `standing_committee`, `m_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(656, '00664', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Eastern Jewellers', 'ইস্টার্ণ জুয়েলার্স', 'KA-244, Kuril, Jamuna Future Park, Dhaka.', 'ক-২৪৪, কুড়িল, যমুনা ফিউচার পার্ক, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Bimal Chandra Ghosh', NULL, NULL, 'বাবু বিমল চন্দ্র ঘোষ', 'Male', '01758939998', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(657, '00668', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Purobi Jewellers (Pvt) Ltd.', 'পূরবী জুয়েলার্স (প্রাঃ) লিঃ', '2A-0023, Level-2, Jamuna Future Park, Dhaka.', '২এ-০০২৩, লে-২, যমুনা ফিউচার পার্ক, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Jagannath Ghosh', NULL, NULL, 'বাবু জগন্নাথ ঘোষ', 'Male', '01713032982', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(658, '00670', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Alangkar Niketan (Pvt) Ltd.', 'অলংকার নিকেতন (প্রাঃ) লিঃ', 'Shop-2A-29, Jamuna Future Park, Dhaka.', 'দোকানং-২এ-২৯, যমুনা ফিউচার পার্ক, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M, A, Hannan Azad', NULL, NULL, 'জনাব এম, এ, হান্নান আজাদ', 'Male', '01822890873', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(659, '00683', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Al-Amin D Showroom', 'আল-আমিন ডি শোরুম', 'KA-244, Jamuna Future Park, Dhaka.', 'ক-২৪৪, যমুনা ফিউচার পার্ক, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Shah Kabir', NULL, NULL, 'জনাব মোঃ শাহ কবির', 'Male', '01917960305', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(660, '00745', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'L.K Jewellers', 'এল কে জুয়েলার্স', 'Shop No-2A-24C (2nd Floor) Jamuna Future Park, Dhaka.', 'দোকান নং-২এ-২৪সি (৩য় তলা) যমুনা ফিউচার পার্ক, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Liton Karmakar', NULL, NULL, 'বাবু লিটন কর্মকার', 'Male', '01706681344', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(661, '00784', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Gourab Jewellers', 'গৌরব জুয়েলার্স', 'KA-244, Kuril Jamuna Future Park, Dhaka.', 'ক-২৪৪, কুড়িল যমুনা ফিউচার পার্ক, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Ganesh Debnath', NULL, NULL, 'বাবু গনেশ দেবনাথ', 'Male', '01748317004', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(662, '00860', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Shilpi Diamond & Nosepin World', 'শিল্পী ডায়মন্ড এন্ড নোজপিন ওয়ার্ল্ড', 'KA-244, Kuril Jamuna Future Park, Shop-2A-049, Dhaka.', 'ক-২৪৪, কুড়িল যমুনা ফিউচার পার্ক, দো-২এ-০৪৯, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Shankar Ranjan Das', NULL, NULL, 'বাবু শংকর রঞ্জন দাস', 'Male', '01711531667', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(663, '00871', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Aftab Jewellers', 'আফতাব জুয়েলার্স', 'Shop No. 2-B-005 / A, Jamuna Future Park, Dhaka.', 'দোকান নং ২-বি-০০৫/এ, যমুনা ফিউচার পার্ক, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Uttam Ghosh', NULL, NULL, 'বাবু উত্তম ঘোষ', 'Male', '01711533609', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(664, '00368', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Mahua Jewellers', 'মহুয়া জুয়েলার্স', 'Jamuna Future Park, Dhaka.', 'যমুনা ফিউচার পার্ক, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Govinda Kumar Brahma', NULL, NULL, 'বাবু গোবিন্দ কুমার ব্রহ্ম', 'Male', '01713005414', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(665, '00598', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Arabians Gold', 'এ্যারাবিয়ানস্ গোল্ড', '118, Simanto Square, Dhanmondi, Dhaka.', '১১৮, সীমান্ত স্কয়ার, ধানমন্ডি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Alok Kumar Saha', NULL, NULL, 'বাবু অলোক কুমার সাহা', 'Male', '01715665294', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(666, '00713', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Karu Kanchan Jewellers', 'কারু কাঞ্চন জুয়েলার্স', '220, Simanto Square (2nd Floor) Dhanmondi, Dhaka.', '২২০, সীমান্ত স্কয়ার (৩য় তলা) ধানমন্ডি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Nemai Karmakar', NULL, NULL, 'বাবু নিমাই কর্মকার', 'Male', '01715382602', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(667, '00599', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Dhaka Pearl House', 'ঢাকা পার্ল হাউজ', '7, Paribagh Super Market, Dhaka.', '৭, পরিবাগ সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Khaja Rezaul Haque', NULL, NULL, 'জনাব খাজা রেজাউল হক', 'Male', '01713018128', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(668, '00600', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Dhaka Pearl House', 'নিউ ঢাকা পার্ল হাউস', '25, Paribagh Super Market, Dhaka.', '২৫, পরিবাগ সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, '9650848', NULL, NULL, NULL, 'Khaja Jamirul Haque', NULL, NULL, 'জনাব খাজা জামিরুল হক', 'Male', '01911362072', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(669, '00602', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Dhaka Gold House', 'ঢাকা গোল্ড হাউস', '464, Mollah Tower Shopping Complex, Rampura, Dhaka.', '৪৬৪, মোল্লা টাওয়ার শপিং কমঃ, রামপুরা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Jibon Majumdar', NULL, NULL, 'বাবু জীবন মজুমদার', 'Male', '01715663519', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(670, '00603', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Monica Jewellers', 'দি মনিকা জুয়েলার্স', '310, Mollah Tower Shopping Com: Rampura, Dhaka.', '৩১০, মোল্লা টাওয়ার শপিং কমঃ, রামপুরা, ঢাকা।', NULL, NULL, NULL, '9676618', NULL, NULL, NULL, 'Md.Jubayer Hossain Bhuiyan', NULL, NULL, 'জনাব মোঃ যোবায়ের হোসেন ভুইয়াঁ', 'Male', '01711397725', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(671, '00846', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'SS Jewellers', 'এস এস জুয়েলার্স', '464, Mollah Tower, Rampura, Dhaka.', '৪৬৪, মোল্লা টাওয়ার, রামপুরা, ঢাকা।', NULL, NULL, NULL, '8628992', NULL, NULL, NULL, 'Md. Salauddin Sohan', NULL, NULL, 'জনাব মোঃ সালাউদ্দিন সোহান', 'Male', '01673231173', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(672, '00847', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Al-Noor Jewellers', 'আল-নূর জুয়েলার্স', '464, Mollah Tower, Rampura, Dhaka.', '৪৬৪, মোল্লা টাওয়ার, রামপুরা, ঢাকা।', NULL, NULL, NULL, '7282098', NULL, NULL, NULL, 'Shawkat Hossain Shamim Patwari', NULL, NULL, 'জনাব শওকত হোসেন শামীম পাটোয়ারী', 'Male', '01717477426', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(673, '00854', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Ekanta Apan Jewellers', 'দি একান্ত আপন জুয়েলার্স', '304, Mollah Tower (2nd floor) Dhaka.', '৩০৪, মোল্লা টাওয়ার (৩য় তলা) ঢাকা।', NULL, NULL, NULL, '7282094', NULL, NULL, NULL, 'Anowar Hossain Kali', NULL, NULL, 'জনাব আনোয়ার হোসেন কলি', 'Male', '01712000965', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(674, '00627', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Diamond World', 'ডায়মন্ড ওয়ার্ল্ড', 'Gold Palace (2nd Floor) Siddhesari Circular Road (New Natak Swarani) Dhaka.', 'গোল্ড প্যালেস (৩য় তলা) সিদ্ধেশরী সার্কুলার রোড (নতুন নাটক স্বরণী) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dilip Kumar Agarwala', NULL, NULL, 'জনাব দিলীপ কুমার আগরওয়ালা', 'Male', '01711549640', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(675, '00606', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Apan Jewellers', 'আপন জুয়েলার্স', '2-4, Simanto Square, Dhanmondi, Dhaka.', '২-৪, সীমান্ত স্কোয়ার, ধানমন্ডি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dildar Ahmed', NULL, NULL, 'জনাব দিলদার আহমেদ', 'Male', '01714325895', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(676, '00607', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Queen Pearl House-2', 'কুইন পার্ল হাউজ-২', '222, Simanto Square (1st Floor), Dhanmondi, Dhaka.', '২২২, সীমান্ত স্কোয়ার(২য়তলা), ধানমন্ডি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sarwari Karmakar', NULL, NULL, 'মিসেস সর্বরী কর্মকার', 'Female', '01715016834', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(677, '00868', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Karbon Craft', 'কার্বন ক্রাফট', '310, Simanto Square (3rd floor) Dhaka.', '৩১০, সীমান্ত স্কয়ার (৪র্থ তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Amzad Hossain', NULL, NULL, 'জনাব মোঃ আমজাদ হোসেন', 'Male', '01716797079', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(678, '00608', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Panna Jewellers', 'পান্না জুয়েলার্স', '213, Shahid Syed Nazrul Islam Sarani', '২১৩, শাহীদ সৈয়দ নজরুল ইসলাম সরনি', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dilip Kumar', NULL, NULL, 'বাবু দিলীপ কুমার', 'Male', '01711549640', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(679, '00609', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Md. Saijuddin', 'মোঃ সাইজুদ্দিন', '57 / A, Becharam Deuri, Dhaka.', '৫৭/এ, বেচারাম দেউরী, ঢাকা।', NULL, NULL, NULL, '9677241', NULL, NULL, NULL, 'Haji Md. Saijuddin', NULL, NULL, 'হাজী মোঃ সাইজুদ্দিন', 'Male', '01557861819', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(680, '00610', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Saudia Jewellers', 'সৌদিয়া জুয়েলার্স', '43, Becharam Deuri, Dhaka.', '৪৩, বেচারাম দেউরী, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haji Md. Merajuddin', NULL, NULL, 'হাজী মোঃ মেরাজউদ্দিন', 'Male', NULL, NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(681, '00612', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Chalk Jewellers', 'চক জুয়েলার্স', '61, Chalk Circular Road, Dhaka.', '৭১, চক সার্কুলার রোড, ঢাকা।', NULL, NULL, NULL, '9570412', NULL, NULL, NULL, 'Haji Md. Sainuddin', NULL, NULL, 'হাজী মোঃ সাইনউদ্দিন', 'Male', '01817541940', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(682, '00614', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Games Heaven', 'জেমস হেভেন', '6, Paribagh Super Market, Dhaka.', '৬, পরিবাগ সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selima Akhter', NULL, NULL, 'মিসেস সেলিমা আক্তার', 'Female', '01712624372', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(683, '00615', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sunflower Jewellers', 'সানফ্লাওয়ার জুয়েলার্স', '1 / 62-63, Eastern Plus Shopping Complex, Dhaka', '১/৬২-৬৩, ইষ্টার্ণ প্লাস শপিং কমপ্লেক্স, ঢাকা', NULL, NULL, NULL, '57312692', NULL, NULL, NULL, 'Babu Soumen Nag', NULL, NULL, 'বাবু সৌমেন নাগ', 'Male', '01815846747', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(684, '00763', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Nag Jewellers', 'নাগ জুয়েলার্স', 'Do-1 / 23-24, Eastern Plus Shopping Complex, Shanti Nagar, Dhaka.', 'দো-১/২৩-২৪, ইস্টার্ণ প্লাস শপিং কমপ্লেক্স, শান্তি নগর, ঢাকা।', NULL, NULL, NULL, '7316684', NULL, NULL, NULL, 'Babu Shaon Nag Abir', NULL, NULL, 'বাবু শাওন নাগ আবির', 'Male', '01791554249', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(685, '00771', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Ansan Jewellers', 'অনসান জুয়েলার্স', '164, Eastern Plus (1st Floor) Shanti Nagar, Dhaka.', '১৬৪, ইষ্টার্ণ প্লাস (২য় তলা) শান্তি নগর, ঢাকা।', NULL, NULL, NULL, '8631557', NULL, NULL, NULL, 'Babu Haru Das', NULL, NULL, 'বাবু হারু দাস', 'Male', '01711357764', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(686, '00616', '', '', 99, '', 'Dhaka', 'Dhaka', 'Swarnali Jewellers', 'স্বর্ণালী জুয়েলার্স', 'Paka-20, Rajanigandha Super Market, Kachukhet, Dhaka.', 'পাকা-২০, রজনীগন্ধা সুপার মার্কেট, কচুক্ষেত, ঢাকা।', '', '', '', '8362386', '', '', NULL, 'Md. Samsul Haque Bhuiyan', '', '', 'জনাব মোঃ সামসুল হক ভূইয়া', 'Male', '01673900139', '', '{\"name\":[\"banking-and-financial-service\",null],\"post\":[\"member\",null]}', 1, 1, 2, '2022-05-14 10:13:30', '2022-05-16 15:34:50'),
(687, '00639', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Reliable Jewellers', 'রিলায়্যাবল জুয়েলার্স', 'Paka-41, Rajanigandha Super Market, Kachukhet, Dhaka.', 'পাকা-৪১, রজনীগন্ধা সুপার মার্কেট, কচুক্ষেত, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mohammad Sarwar', NULL, NULL, 'জনাব মোহাম্মদ সারোয়ার', 'Male', '01711459219', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(688, '00651', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Hajera Jewellers', 'হাজেরা জুয়েলার্স', 'Paka-45, Rajanigandha Super Market, Kachukhet, Dhaka.', 'পাকা-৪৫, রজনীগন্ধা সুঃ মার্কেট, কচুক্ষেত, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Nizam Uddin Bhaiyan', NULL, NULL, 'মোঃ নিজাম উদ্দিন ভ‚ইয়া', 'Male', '01732997806', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(689, '00658', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Mahi Jewellers (Pvt) Ltd.', 'মাহি জুয়েলার্স (প্রাঃ) লিঃ', 'Paka-24, Rajanigandha Super Market, Kachukhet, Dhaka.', 'পাকা-২৪, রজনীগন্ধা সুপার মার্কেট, কচুক্ষেত, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Mizanur Rahman Gazi', NULL, NULL, 'জনাব মোঃ মিজানুর রহমান গাজী', 'Male', '01712445010', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(690, '00735', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Shanto Jewellers', 'শান্ত জুয়েলার্স', 'D-65, Rajanigandha Super Market, Dhaka.', 'ডি-৬৫, রজনীগন্ধা সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kabir Ahmed', NULL, NULL, 'জনাব কবির আহমেদ', 'Male', '01835803675', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(691, '00736', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Popular Jewellers', 'পপুলার জুয়েলার্স', 'Paka-40, Rajanigandha Super Market, Dhaka.', 'পাকা-৪০, রজনীগন্ধা সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Shahid Ullah', NULL, NULL, 'জনাব মোঃ শহীদ উল্ল্যাহ', 'Male', '01731314759', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(692, '00737', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Badhua Jewellers', 'বধুয়া জুয়েলার্স', 'D-31, Rajanigandha Super Market, Dhaka.', 'ডি-৩১, রজনীগন্ধা সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Shahidullah', NULL, NULL, 'জনাব মোঃ শহিদউল্ল্যাহ্', 'Male', '01675347590', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(693, '00738', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Jannat Jewellers', 'জান্নাত জুয়েলার্স', 'D-64, Rajanigandha Super Market, Dhaka.', 'ডি-৬৪, রজনীগন্ধা সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mizanur Rahman', NULL, NULL, 'জনাব মিজানুর রহমান', 'Male', '01813936966', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(694, '00739', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Dola Jewellers', 'দোলা জুয়েলার্স', 'Paka-42, Rajanigandha Super Market, Dhaka.', 'পাকা-৪২, রজনীগন্ধা সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Abul Hasem Babul', NULL, NULL, 'জনাব মোঃ আবুল হাসেম বাবুল', 'Male', '01924784097', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(695, '00740', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Maa Jewellers', 'মা জুয়েলার্স', 'Paka-42, Rajanigandha Super Market, Dhaka.', 'পাকা-৪২, রজনীগন্ধা সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Mohin Uddin', NULL, NULL, 'জনাব মোঃ মহিন উদ্দিন', 'Male', '01676934502', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(696, '00741', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Manimukta Jewellers', 'মনিমুক্তা জুয়েলার্স', 'Paka-30, Rajanigandha Super Market, Dhaka.', 'পাকা-৩০, রজনীগন্ধা সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Shafiqul Islam', NULL, NULL, 'জনাব মোঃ শফিকুল ইসলাম', 'Male', '01929621172', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(697, '00805', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sugandha Jewellers', 'সুগন্ধা জুয়েলার্স', 'Paka-55, Rajanigandha Super Market, Dhaka.', 'পাকা-৫৫, রজনীগন্ধা সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rakibul Hasan', NULL, NULL, 'জনাব রাকিবুল হাসান', 'Male', '01684394947', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(698, '00806', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Nabila Jewellers', 'নাবিলা জুয়েলার্স', 'Paka-23, Rajanigandha Super Market, Dhaka.', 'পাকা-২৩, রজনীগন্ধা সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Omar Faruq', NULL, NULL, 'জনাব মোঃ ওমর ফারুক', 'Male', '01919783853', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(699, '00807', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Rangapari Jewellers', 'রাঙ্গাপরী জুয়েলার্স', '10, Rajanigandha Super Market, Dhaka.', '১০, রজনীগন্ধা সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Abul Kalam', NULL, NULL, 'জনাব মোঃ আবুল কালাম', 'Male', '01839393942', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(700, '00808', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Kanon Jewellers', 'কানন জুয়েলার্স', 'D-63, Rajanigandha Super Market, Dhaka.', 'ডি-৬৩, রজনীগন্ধা সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Motaleb Hossain', NULL, NULL, 'জনাব মোঃ মোতালেব হোসেন', 'Male', '01824233834', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(701, '00809', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Star Jewellers', 'স্টার জুয়েলার্স', 'D-62, Rajanigandha Super Market, Dhaka.', 'ডি-৬২, রজনীগন্ধা সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Kamal Ahmed', NULL, NULL, 'জনাব মোঃ কামাল আহম্মেদ', 'Male', '01774887488', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(702, '00810', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'M/s. Solid Gold Palace', 'মৌসুমী গোল্ড ম্যানুফ্যাকচারীং এন্ড জুয়েলার্স', 'Paka-31, Rajanigandha Super Market, Dhaka.', '৫৩, শনির আখড়া, শেখদী বটতলা, যাত্রাবাড়ী, ঢাকা।', NULL, NULL, NULL, '7550335', NULL, NULL, NULL, 'Md. Shahadat Hossain', NULL, NULL, 'বাবু বিজয় সাহা', 'Male', '01711880195', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(703, '00867', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'M/s. Gold Garden', 'মেসার্স গোল্ড গার্ডেন', 'Paka-43, Rajanigandha Super Market, Kachukhet, Dhaka.', 'পাকা-৪৩, রজনীগন্ধা সুঃ মার্কেট, কচুক্ষেত, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Nasir Uddin Ahmed', NULL, NULL, 'জনাব মোঃ নাসির উদ্দিন আহমেদ', 'Male', '01922591589', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(704, '00885', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sainik Jewellers', 'সৈনিক জুয়েলার্স', 'D-50, Rajanigandha Super Market, Dhaka.', 'ডি-৫০, রজনীগন্ধা সুপার মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Hanif', NULL, NULL, 'জনাব মোঃ হানিফ', 'Male', '01813636782', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(705, '00886', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Shahanara Jewellers', 'শাহানারা জুয়েলার্স', 'Shop No-9, Rajanigandha Super Market, Kachukhet, Dhaka.', 'দোকান নং-৯, রজনীগন্ধা সুপার মার্কেট, কচুক্ষেত, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Mojibur Rahman Bakaul', NULL, NULL, 'জনাব মোঃ মজিবুর রহমান বকাউল', 'Male', '01718651017', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(706, '00617', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Rajalaxmi Jewellers', 'রাজলক্ষী জুয়েলার্স', 'Rapa Plaza, Dhanmondi, Dhaka.', 'রাপা প্লাজা, ধানমন্ডি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Mahadev Karmakar', NULL, NULL, 'বাবু মহাদেব কর্মকার', 'Male', '01715434389', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(707, '00621', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Diamond World', 'ডায়মন্ড ওয়ার্ল্ড', 'House No-48, Road No-16, Rangs Nasim Square, Sheikh Kamal Smarani, Dhanmondi-27, Dhaka.', 'বাড়ী নং-৪৬, রোড নং-১৬, র‌্যাংগ নাসিম স্কায়ার, শেখ কামাল স্মরণী, ধানমন্ডি-২৭, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dilip Kumar Agarwala', NULL, NULL, 'বাবু দিলীপ কুমার আগরওয়ালা', 'Male', '01711549640', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(708, '00623', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Henna Jewellers', 'নিউ হেনা জুয়েলার্স', 'Mohammadpur, New Kacha Bazar, Dhaka.', 'মোহাম্মদপুর নতুন কাচা বাজার, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Delwar Hossain', NULL, NULL, 'জনাব মোঃ দেলোয়ার হোসেন', 'Male', '01715520918', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(709, '00624', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New City Jewellers', 'নিউ সিটি জুয়েলার্স', 'Tokyo Square Shopping Complex, Mohammadpur.', 'টোকিও স্কয়ার শপিং কমপ্লেক্স, মোহাম্মদপুর।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Sirajul Islam', NULL, NULL, 'জনাব মোঃ সিরাজুল ইসলাম', 'Male', '01716014417', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(710, '00661', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Chan Jewellers', 'চাঁন জুয়েলার্স', '451, Tokyo Square, Mohammadpur, Dhaka.', '৪৫১, টোকিও স্কয়ার, মোঃপুর, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Sukumar Paul', NULL, NULL, 'বাবু সুকুমার পাল', 'Male', '01976182222', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(711, '00625', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Diamond World', 'ডায়মন্ড ওয়ার্ল্ড', 'Level-4, Shop No-436, Tokyo Square, Mohammadpur, Dhaka.', 'লে-৪, দোকান নং-৪৩৬, টোকিও স্কয়ার, মোহাম্মদপুর, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dilip Kumar Agarwala', NULL, NULL, 'বাবু দিলীপ কুমার আগরওয়ালা', 'Male', '01711549640', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(712, '00626', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Singapore Jewellers', 'সিঙ্গাপুর জুয়েলার্স', 'Level-4, 437, Tokyo Square, Mohammadpur, Dhaka.', 'লে-৪, ৪৩৭, টোকিও স্কয়ার, মোহাম্মদপুর, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Abu Kausar', NULL, NULL, 'জনাব মোঃ আবু কাউছার', 'Male', '01724559572', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(713, '00690', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Gitanjali Jewellers', 'গীতাঞ্জলী জুয়েলার্স', 'Level-4, Shop No-442, Tokyo Square, Mohammadpur, Dhaka.', 'লে-৪, দোকান নং-৪৪২, টোকিও স্কয়ার, মোহাম্মদপুর, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kusum Agarwal', NULL, NULL, 'মিসেস কুসুম আগরওয়াল', 'Female', '01920485569', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(714, '00729', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Guinea Jewellers', 'নিউ গিনি জুয়েলার্স', '24 / A, Japan Garden City, Level-4, Shop-3A, Mohammadpur, Dhaka.', '২৪/এ, জাপান গার্ডেন সিটি, লে-৪, দোকান-৩এ, মোহাম্মদপুর, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Zahidul Islam Shekh', NULL, NULL, 'জনাব মোঃ জাহিদুল ইসলাম শেখ', 'Male', '01707960621', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(715, '00730', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Sonali Jewellers', 'নিউ সোনালী জুয়েলার্স', '24 / A, Japan Garden City, Level-4, Mohammadpur, Dhaka.', '২৪/এ, জাপান গার্ডেন সিটি, লে-৪, মোহাম্মদপুর, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bilkis Ara', NULL, NULL, 'মিসেস বিলকিস আরা', 'Female', '01711381413', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(716, '00786', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Shuvessa Jewellers', 'দি শুভেচ্ছা জুয়েলার্স', '24 / A, Japan Garden City, Shop-453, Level-3, Mohammadpur, Dhaka.', '২৪/এ, জাপান গার্ডেন সিটি, দোকান-৪৫৩, লে-৩, মোহাম্মদপুর, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Akhter Hossain', NULL, NULL, 'জনাব মোঃ আক্তার হোসেন', 'Male', '01712259457', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(717, '00834', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Alif Jewellers', 'আলিফ জুয়েলার্স', 'Ga / 7, Old Kacha Bazar (Kreshe Market) Mohammadpur, Dhaka.', 'গ/৭, পুরাতন কাঁচা বাজার (কৃষি মার্কেট) মোহাম্মদপুর, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Atiqur Rahman', NULL, NULL, 'জনাব মোঃ আতিকুর রহমান', 'Male', '01714296710', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(718, '00835', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'VIP Jewellers', 'ভিআইপি জুয়েলার্স', '438, Tokyo Square (3rd Floor) Mohammadpur, Dhaka.', '৪৩৮, টোকিও স্কয়ার (৪র্থ তলা) মোহাম্মদপুর, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Ananda Karmakar', NULL, NULL, 'বাবু আনন্দ কর্মকার', 'Male', '01913477694', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(719, '00836', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Amrita Jewellers', 'অমরিতা জুয়েলার্স', '455, Tokyo Square (3rd Floor) Mohammadpur, Dhaka.', '৪৫৫, টোকিও স্কয়ার (৪র্থ তলা) মোহাম্মদপুর, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Swapan Raj Bangshi', NULL, NULL, 'বাবু স্বপন রাজ বংশী', 'Male', '01912638835', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(720, '00837', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Maa Jewellers', 'মা জুয়েলার্স', 'Ga-1, New Raw Kacha Bazar (Kreshe Market) Mohammadpur, Dhaka.', 'গ-১, নতুন কাঁচা বাজার (কৃষি মার্কেট) মোহাম্মদপুর, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Munshur Ahmed', NULL, NULL, 'জনাব মুনছুর আহম্মদ', 'Male', '01685849230', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(721, '00838', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Haque Jewellers', 'হক জুয়েলার্স', 'Ga-77, New Raw Kacha Bazar (Kreshe Market) Mohammadpur, Dhaka.', 'গ/৭৭, নতুন কাঁচা বাজার (কৃষি মার্কেট) মোহাম্মদপুর, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mohammad Ali', NULL, NULL, 'জনাব মোহাম্মদ আলী', 'Male', '01767702491', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(722, '00839', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Riyad Jewellers', 'দি রিয়াদ জুয়েলার্স', 'Ga-3, New Raw Kacha Bazar (Kreshe Market) Mohammadpur, Dhaka.', 'গ/৩, নতুন কাঁচা বাজার (কৃষি মার্কেট) মোহাম্মদপুর, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Amir Hossain', NULL, NULL, 'জনাব মোঃ আমির হোসেন', 'Male', '01972950908', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(723, '00842', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Arisha Jewellers', 'আরিশা জুয়েলার্স', 'House-31, Road-4, Shaker Tech Adabar, Mohammadpur, Dhaka.', 'বাড়ী-৩১, রোড-৪, শেকের টেক আদাবর, মোহাম্মদপুর, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jahangir Hossain', NULL, NULL, 'জনাব জাহাঙ্গীর হোসেন', 'Male', '01918174692', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(724, '00843', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Nandan Jewellers', 'নন্দন জুয়েলার্স', 'Ga-69, New Raw Kacha Bazar (Kreshe Market) Mohammadpur, Dhaka.', 'গ-৬৯, নতুন কাঁচা বাজার (কৃষি মার্কেট) মোহাম্মদপুর, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Noor A Alam Khan', NULL, NULL, 'জনাব মোঃ নূরে আলম খান', 'Male', '01718157114', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(725, '00844', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Medina Jewellers', 'নিউ মদিনা জুয়েলার্স', '456, Tokyo Square (3rd Floor) Mohammadpur, Dhaka.', '৪৫৬, টোকিও স্কয়ার (৪র্থ তলা) মোহাম্মদপুর, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Hanif', NULL, NULL, 'জনাব মোঃ হানিফ', 'Male', '01716591683', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(726, '00839', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Viyena Jewellers', 'দি রিয়াদ জুয়েলার্স', 'Ga-74, New Raw Kacha Bazar (Kreshe Market) Mohammadpur, Dhaka.', 'গ/৩, নতুন কাঁচা বাজার (কৃষি মার্কেট) মোহাম্মদপুর, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Al Amin Sikder', NULL, NULL, 'জনাব মোঃ আমির হোসেন', 'Male', '01712291007', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(727, '00863', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Swaronika Jewellers', 'স্বরনিকা জুয়েলার্স', '440, Tokyo Square (3rd Floor) Mohammadpur, Dhaka.', '৪৪০, টোকিও স্কয়ার (৪র্থ তলা) মোহাম্মদপুর, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Abul Kalam Azad', NULL, NULL, 'জনাব আবুল কালাম আজাদ', 'Male', '01909279945', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(728, '00864', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Rajalaxmi Jewellers', 'রাজলক্ষী জুয়েলার্স', '443, Tokyo Square (3rd Floor) Mohammadpur, Dhaka.', '৪৪৩, টোকিও স্কয়ার (৪র্থ তলা) মোহাম্মদপুর, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Shuvrodev Karmakar', NULL, NULL, 'বাবু শুভ্রদেব কর্মকার', 'Male', '01746383088', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(729, '00710', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Diamond Plaza', 'ডায়মন্ড প্লাজা', 'Level-4, Shop No-411, Shyamoly Square, Shyamoly, Dhaka.', 'লে-৪, দোকান নং-৪১১, শ্যামলী স্কয়ার, শ্যমালী, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Abdur Rahman', NULL, NULL, 'জনাব আব্দুর রহমান', 'Male', '01909037055', NULL, '{\"name\":[\"research-and-development\"], \"post\":[\"member\"]}', 1, 1, 0, '2022-05-14 10:13:30', NULL),
(730, '00628', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Rupa Alangkar', 'রুপা অলংকার', '275,276, Motalib Plaza, Dhaka.', '২৭৫,২৭৬, মোতালিব প্লাজা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Abul Fayez (Fahad)', NULL, NULL, 'জনাব মোঃ আবুল ফয়েজ (ফাহাদ)', 'Male', '01771777742', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(731, '00724', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Jarwa House (Pvt) Ltd.', 'জড়োয়া হাউজ (প্রাঃ) লিঃ', 'House No-17, Road No-6, Saptak Mahbuba Grandeur, Dhanmondi, Dhaka.', 'বাড়ী নং-১৭, রোড নং-৬, সপ্তক মাহবুবা গ্রানডিউর, ধানমন্ডি, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Badal Chandra Roy', NULL, NULL, 'বাবু বাদল চন্দ্র রায়', 'Male', '01798833333', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(732, '00762', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Swarnamony Jewellers', 'নিউ স্বর্ণ মনি জুয়েলার্স', '18, Yakub Super Market, 2 / B Elephant Road, Dhaka.', '১৮, এয়াকুব সুপার মার্কেট, ২/বি এলিফেন্ট রোড, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Har Mohan Karmakar', NULL, NULL, 'বাবু হর মোহন কর্মকার', 'Male', '01779774975', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(733, '00780', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'M/s. Imperial Gems & Jewellery', 'মেসার্স ইমপেরিয়াল জেমস এন্ড জুয়েলারী', 'Shop No-S-7, A R A Center (2nd Floor) Road No-7, Dhanmondi, Dhaka.', 'দোকান নং- এস-৮, এ আর এ সেন্টার (৩য় তলা) রোড নং-৭, ধানমন্ডি, ঢাকা।', NULL, NULL, NULL, '8621925', NULL, NULL, NULL, 'Baharul Amin', NULL, NULL, 'জনাব বাহারুল আমিন', 'Male', '01727328963', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(734, '00613', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Munni Jewellers', 'মুন্নি জুয়েলার্স', '144, Taltala Market, Dhaka.', '১৪৪, তালতলা মার্কেট, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Hazrat Ali', NULL, NULL, 'জনাব মোঃ হজরত আলী', 'Male', '01711471899', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(735, '00785', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Reliable Commodities Exchange Co.', 'রিলায়েবল কমোডিটিজ এক্সচেঞ্জ কোং', '342, Tejgaon Industrial Area, Dhaka.', '৩৪২, তেজগাঁও শিল্প এলাকা, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mahmuda Ali Sikder', NULL, NULL, 'মিসেস মাহমুদা আলী সিকদার', 'Female', '01750000144', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(736, '00902', NULL, 'president', 99, NULL, 'Dhaka', 'Dhaka', 'Bashundhara Gold Refinery Limited', 'বসুন্ধরা গোল্ড রিফাইনারী লিমিটেড', 'Plot-125 / A, Block-A, Bashundhara R/A, Dhaka.', 'প্লট-১২৫/এ, ব্লক-এ, বসুন্ধরা আ/এ, ঢাকা।', NULL, NULL, NULL, NULL, NULL, 'https://www.bajus.org/storage/public/news_images/photo/shares/Executive Committee/Sayem Sobhan Anvir.jpeg', NULL, 'Sayem Sobhan Anvir', NULL, NULL, 'জনাব সায়েম সোবহান', NULL, '01937404475', NULL, '{\"name\":[null,null],\"post\":[null,null]}', 1, 1, 2, '2022-05-14 10:13:30', NULL),
(737, '00620', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Gayna Ghar', 'দি গয়না ঘর', '129, Simanto Square, Dhanmondi, Dhaka.', '১২৯, সীমান্ত স্কায়ার, ধানমন্ডি, ঢাকা।', NULL, NULL, NULL, '7216345', NULL, NULL, NULL, 'Md. Mamun Hossain', NULL, NULL, 'জনাব মোঃ মামুন হোসেন', 'Male', '01711933606', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(738, '00778', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'J. S Jewellers', 'জে. এস. জুয়েলার্স', 'Plot No-474 / 478 E, Road No-05, Block-D, Bashundhara R/A, Dhaka.', 'প্লট নং-৪৭৪/৪৭৮ ই, রোড নং-০৫, ব্লক -ডি, বসুন্ধরা আ/এ, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Rafiqul Islam', NULL, NULL, 'জনাব মোঃ রফিকুল ইসলাম', 'Male', '01713238717', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(739, '00788', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Subarna Jewellers', 'সুবর্ণা জুয়েলার্স', '49, Fartune Shopping Mall (1st Floor) Malibagh, Dhaka.', '৪৯, ফরচুল শপিংমল (২য় তলা) মালিবাগ, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sree Madhusudan Dey', NULL, NULL, 'শ্রী মধুসুদন দে', 'Male', '01817066898', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(740, '00790', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Sampa Jewellers', 'সম্পা জুয়েলার্স', '34, Fortune Shopping Mall (1st floor) Dhaka.', '৩৪, ফরচুন শপিংমল (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Achinto Kumar Biswas', NULL, NULL, 'বাবু অচিন্ত কুমার বিশ্বাস', 'Male', '01712584095', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(741, '00792', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'The Monica Jewellers', 'দি মনিকা জুয়েলার্স', '40, Fortune Shopping Mall (1st floor) Dhaka.', '৪০, ফরচুন শপিংমল (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shri Badal Chandra Sarkar', NULL, NULL, 'শ্রী বাদল চন্দ্র সরকার', 'Male', '01717080692', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(742, '00793', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'New Swarnadip Jewellers', 'নিউ স্বর্ণ দ্বীপ জুয়েলার্স', '41, Fortune Shopping Mall (2nd floor) Dhaka.', '৪১, ফরচুন শপিংমল (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Geri Dhari Ghosh', NULL, NULL, 'বাবু গিরি ধারী ঘোষ', 'Male', '01687299647', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(743, '00889', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Diamond Zone', 'ডায়মন্ড জোন', '49 / G, Fortune Shopping Mall (1st Floor) Dhaka.', '৪৯/জি, ফরচুন শপিং মল (২য় তলা) ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Saiful Islam', NULL, NULL, 'জনাব সাইফুল ইসলাম', 'Male', '01822869749', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(744, '00914', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Diamond Palace', 'ডায়মন্ড প্যালেস', '27/27 / 1-26 / 7, Chamelibagh, Shop No-133, Twin Towers Concord Shopping Complex, Ground Floor, Dhaka-1217', '২৭/২৭/১-২৭/৭, চামেলীবাগ, দোকান নং-১৩৩, টুইন টাওয়ার কনকর্ড শপিং কমপ্লেক্স, নীচতলা, ঢাকা-১২১৭', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rahul Saha', NULL, NULL, 'জনাব রাহুল সাহা', 'Male', '01711905407', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(745, '00925', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'Princess Gold & Diamond Cottage Ltd.', 'প্রিন্সেস গোল্ড এন্ড ডায়মন্ড কটেজ লিঃ', 'Room No-605, Shapla Bhaban (5th Floor) 49, Motijheel B / A, Dhaka-1000', 'রুম নং-৬০৫, শাপলা ভবন (৬ষ্ঠ তলা) ৪৯, মতিঝিল বা/এ, ঢাকা-১০০০', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Rafiqul Islam', NULL, NULL, 'জনাব মোঃ রফিকুল ইসলাম', 'Male', '01715428713', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(746, '00930', NULL, NULL, 99, NULL, 'Dhaka', 'Dhaka', 'BDX Gold & Diamond Limited', 'বিডিএক্স গোল্ড এন্ড ডায়মন্ড লিমিটেড', 'Flat No. 17 / C, Rupayan Karim Tower, Kakrail, Dhaka.', 'ফ্ল্যাট নং ১৭/সি, রূপায়ন করিম টাওয়ার, কাকরাইল, ঢাকা।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Hasanuzzaman', NULL, NULL, 'জনাব মোঃ হাসানুজ্জামান', 'Male', '01711991282', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(747, '10001', NULL, NULL, 99, 'president', 'Narayanganj', 'Dhaka', 'Naj Jewellers', NULL, '14 Mina Bazar, Narayanganj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haji Md. Shahabuddin', NULL, NULL, NULL, 'Male', NULL, NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(748, '10002', NULL, NULL, 99, 'general-secretary', 'Narayanganj', 'Dhaka', 'Selim Jewellers', NULL, '5/11 Selim Jewellery Bipony Bitan Tan Bazar, Narayanganj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haji Md. Hanif Uddin Selim', NULL, NULL, NULL, 'Male', '01712112202', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(749, '10003', NULL, NULL, 99, 'president', 'Gazipur', 'Dhaka', 'Anamika Jewellers', NULL, 'Shop-25, Bhawal Bipony Bitan, Tangi Bazar, Gazipur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Azhar Ali', NULL, NULL, NULL, 'Male', '01819247982', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(750, '10004', NULL, NULL, 99, 'general-secretary', 'Gazipur', 'Dhaka', 'New Maa Jewellers', NULL, 'Sonaly Arched (2nd Floor), Tangi Bazar, Gazipur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rabindra Chandra Dutta (Manik)', NULL, NULL, NULL, 'Male', '01720016230', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(751, '10005', NULL, NULL, 99, 'president', 'Tangail', 'Dhaka', 'K.P Bhowmik & Sons', NULL, 'Soyani Bazar, Tangail', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandan Kumar Bhowmik', NULL, NULL, NULL, 'Male', '01712807509', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(752, '10006', NULL, NULL, 99, 'general-secretary', 'Tangail', 'Dhaka', 'Sananda Jewellers', NULL, 'Pancharupa, Soyani Bazar, Tangail', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Prof. Bashudeb Karmakar', NULL, NULL, NULL, 'Male', '01715404785', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(753, '10007', NULL, NULL, 99, 'convener', 'Faridpur', 'Dhaka', 'Progoti Jewellers', NULL, 'Niltuly, Mujib Road,Faridpur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nanda Kumar Boral', NULL, NULL, NULL, 'Male', '01717607431', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(754, '10008', NULL, NULL, 99, 'president', 'Rajbari', 'Dhaka', 'Rajlaxmi Jewellers', NULL, 'Karim Manson, Kapar Bazar, Rajbari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jaydeb Karmakar', NULL, NULL, NULL, 'Male', '01711157642', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(755, '10009', NULL, NULL, 99, 'general-secretary', 'Rajbari', 'Dhaka', 'Muslim Guinea House', NULL, 'Main Road, Rajbari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shekh Abul Hossain', NULL, NULL, NULL, 'Male', '01712014500', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(756, '10010', NULL, NULL, 99, 'convener', 'Gopalganj', 'Dhaka', 'Tanmoye Jewellers', NULL, 'Chawrongy, Gopalganj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chawdhury Abul Kalam Azad', NULL, NULL, NULL, 'Male', '01711731610', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(757, '10011', NULL, NULL, 99, 'president', 'Madaripur', 'Dhaka', 'Protima Alanker Bhoban', NULL, 'Swarnakerpotty, Puran Bazar, Madaripur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sree Nani Gopal Karmakar (Nando)', NULL, NULL, NULL, 'Male', '01731359398', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(758, '10012', NULL, NULL, 99, 'general-secretary', 'Madaripur', 'Dhaka', 'Sikder Jewellers', NULL, 'New Swarnakerpotty, Puran Bazar, Madaripur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Harunur Rashid Sikder Kamal', NULL, NULL, NULL, 'Male', '01718129495', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(759, '10013', NULL, NULL, 99, 'president', 'Kishoreganj', 'Dhaka', 'Apan Jewellers', NULL, 'Boro Bazar, Kishorganj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gazi Jamal Uddin', NULL, NULL, NULL, 'Male', '01711675872', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(760, '10014', NULL, NULL, 99, 'general-secretary', 'Kishoreganj', 'Dhaka', 'Jaman Jewellers', NULL, 'Station road (Under the Gangchil Hotel), Kishorganj Sadar, Kishorganj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Masuduzzaman Masud', NULL, NULL, NULL, 'Male', '01718621118', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(761, '10015', NULL, NULL, 99, 'president', 'Manikganj', 'Dhaka', 'New Asha Jewellers', NULL, 'Swarnakarpotty, Manikganj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haji Abdus Salam', NULL, NULL, NULL, 'Male', '01613025536', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(762, '10016', NULL, NULL, 99, 'general-secretary', 'Manikganj', 'Dhaka', 'Aparupa Jewellers', NULL, 'Swarnakarpotty, Manikganj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Probir Sarkar', NULL, NULL, NULL, 'Male', '01716919311', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(763, '10017', NULL, NULL, 99, 'president', 'Narsingdi', 'Dhaka', 'Bhuiyan Jewellers', NULL, 'Narshindi Bazar, Narsingdi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Khalilur Rahman Bhuiyan', NULL, NULL, NULL, 'Male', '01759545332', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(764, '10018', NULL, NULL, 99, 'general-secretary', 'Narsingdi', 'Dhaka', 'A.S.L Jewellers', NULL, 'Bhuiyan Mansion (2nd Floor), Near The Narshindi Bazar Central Mosque, Narsingdi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Waliullah', NULL, NULL, NULL, 'Male', '01811463838', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(765, '10019', '', '', 99, 'president', 'Mymensingh', 'Mymensingh', 'New Kolkata Muslim Jewellers', '', '5 Rambabu Road, Mymensingh', '', '', '', '', '', '', '', NULL, 'Alhaj Malik Md. Hossain', '', '', '', 'Male', '01731262209', '', '{\"name\":[\"monitoring-of-districts-organization\",null],\"post\":[\"Member\",null]}', 1, 1, 2, '2022-05-14 10:13:30', '2022-05-16 15:19:42'),
(766, '10020', NULL, NULL, 99, 'general-secretary', 'Mymensingh', 'Mymensingh', 'Dilip Jewellers', NULL, '16 Madanbabu Road, 18 Bari Building, Mymensingh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandan Kumar Ghosh', NULL, NULL, NULL, 'Male', '01711632701', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(767, '10021', NULL, NULL, 99, 'president', 'Jamalpur', 'Mymensingh', 'Ahmed Jewellers', NULL, 'Hajipur Bazar, Jamalpur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Farruk Ahmed', NULL, NULL, NULL, 'Male', '01713035092', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(768, '10022', NULL, NULL, 99, 'general-secretary', 'Jamalpur', 'Mymensingh', 'Matre Smrity Jewellers', NULL, 'Hajipur Bazar, Jamalpur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Taposh Kumar Banik', NULL, NULL, NULL, 'Male', '01724417544', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(769, '10023', NULL, NULL, 99, 'president', 'Sherpur', 'Mymensingh', 'Dhaka Guinea House', NULL, 'Noyani Bazar, Sherpur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muhammad Ali Mia', NULL, NULL, NULL, 'Male', '01712237725', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(770, '10024', NULL, NULL, 99, 'general-secretary', 'Sherpur', 'Mymensingh', 'Suresh Chandra Malaker & Sons', NULL, 'Munshi Bazar, Sherpur Town, Sherpur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sushil Malakar', NULL, NULL, NULL, 'Male', '01711955558', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(771, '10025', NULL, NULL, 99, 'president', 'Netrokona', 'Mymensingh', 'Kalyanee Jewellers', NULL, '298/01 Renu Plaza, Choto Bazar, Netrokona', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chanchal Sarkar', NULL, NULL, NULL, 'Male', '01716344542', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(772, '10026', NULL, NULL, 99, 'general-secretary', 'Netrokona', 'Mymensingh', 'Moushumi Jewellers', NULL, 'Choto Bazar, Netrokona', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Binoy Bhushan Talukder', NULL, NULL, NULL, 'Male', '01961774300', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(773, '10027', '', '', 99, 'president', 'Chattogram', 'Chattogram', 'New Fency Jewellers', '', 'Moti Tower (1st Floor), Chalk Bazar, Chattogram', '', '', '', '', '', '', '', NULL, 'Sree Mrinal Kanty Dhor', '', '', '', 'Male', '01711749521', '', '{\"name\":[\"monitoring-of-districts-organization\",null],\"post\":[\"Member\",null]}', 1, 1, 2, '2022-05-14 10:13:30', '2022-05-16 15:18:32'),
(774, '10028', NULL, NULL, 99, 'general-secretary', 'Chattogram', 'Chattogram', 'B.L Jewellers', NULL, '112/A, Biponi Bitan (1st Floor), Chattogram', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pronob Shaha', NULL, NULL, NULL, 'Male', '01819637176', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(775, '10029', NULL, NULL, 99, 'president', 'Cumilla', 'Chattogram', 'Azam Khan Jewellers', NULL, 'Chatty Potty, Cumilla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Alhaj Shah Md. Alamgir Hossain', NULL, NULL, NULL, 'Male', '01711325238', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(776, '10030', NULL, NULL, 99, 'general-secretary', 'Cumilla', 'Chattogram', 'Taj Jewellers', NULL, 'Chatty Potty, Cumilla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Tazul Islam', NULL, NULL, NULL, 'Male', '01711375798', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(777, '10031', NULL, NULL, 99, 'president', 'Brahmanbaria', 'Chattogram', 'Sangkar Jewellers', NULL, 'Laki Bazar, Brahmanbaria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sangkar Banik', NULL, NULL, NULL, 'Male', '01711812465', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(778, '10032', NULL, NULL, 99, 'general-secretary', 'Brahmanbaria', 'Chattogram', 'Shubham Jewellers', NULL, 'Ananda Bazar New Market, Brahmanbaria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sunil Banik', NULL, NULL, NULL, 'Male', '01628076822', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(779, '10033', NULL, NULL, 99, 'president', 'Noakhali', 'Chattogram', 'Piyasha Jewellers', NULL, 'Chowmuhani, Noakhali', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Abul Hossain Bhulu', NULL, NULL, NULL, 'Male', '01760888999', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(780, '10034', NULL, NULL, 99, 'general-secretary', 'Noakhali', 'Chattogram', 'Swarna Niketan', NULL, 'Badamtola road, Chowmuhani, Noakhali', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sukhendu Kuri', NULL, NULL, NULL, 'Male', '01782778842', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(781, '10035', NULL, NULL, 99, 'president', 'Feni', 'Chattogram', 'Top Line Jewellers', NULL, 'Green Tower, Gopal Potty, Feni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Alhaj Md. Ismail Hossain Khokon', NULL, NULL, NULL, 'Male', '01712056773', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(782, '10036', NULL, NULL, 99, 'general-secretary', 'Feni', 'Chattogram', 'Muslim Jewellers', NULL, 'Gopal Potty, Feni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Golam Faruq Bacchu', NULL, NULL, NULL, 'Male', '01711341060', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(783, '10037', NULL, NULL, 99, 'president', 'Lakshmipur', 'Chattogram', 'Alanker', NULL, 'College Road, Lakshmipur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Horihor Poul', NULL, NULL, NULL, 'Male', '01715062456', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(784, '10038', NULL, NULL, 99, 'general-secretary', 'Lakshmipur', 'Chattogram', 'Janani Shilpaloy & Jewellers', NULL, 'Thana Road, Lakshmipur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ashok Shaha Manik', NULL, NULL, NULL, 'Male', '01711026703', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(785, '10039', NULL, NULL, 99, 'president', 'Coxsbazar', 'Chattogram', 'Rup Kusholi Jewellers', NULL, 'Salam Market (1st Floor), Boro Bazar Road, Cox’s Bazar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Subash Dhor', NULL, NULL, NULL, 'Male', '01819617715', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(786, '10040', NULL, NULL, 99, 'general-secretary', 'Coxsbazar', 'Chattogram', 'Haji Osman Gani Jewellers', NULL, 'Boro Bazar Road, Cox’s Bazar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haji Osman Gani', NULL, NULL, NULL, 'Male', '01816607121', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(787, '10041', NULL, NULL, 99, 'president', 'Chandpur', 'Chattogram', 'Nolok Jewellers', NULL, 'Cumilla Road, Chandpur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muhammad Mustofa (Ful Mia)', NULL, NULL, NULL, 'Male', '01712717629', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(788, '10042', NULL, NULL, 99, 'general-secretary', 'Chandpur', 'Chattogram', 'Manik Jewellers', NULL, 'Sonali Plaza, East Side of Hasan Ali High School, Cumilla Road, Chandpur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manik Podder', NULL, NULL, NULL, 'Male', '01712108049', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(789, '10043', '', '', 99, 'president', 'Rajshahi', 'Rajshahi', 'Aslam Jewellers', '', 'Saheb Bazar, Ghonok Para, Rajshahi', '', '', '', '', '', '', '', NULL, 'Md. Aslam Uddin Sarkar', '', '', '', 'Male', '01716884436', '', '{\"name\":[\"monitoring-of-districts-organization\",null],\"post\":[\"Member\",null]}', 1, 1, 2, '2022-05-14 10:13:30', '2022-05-16 15:20:13'),
(790, '10044', NULL, NULL, 99, 'general-secretary', 'Rajshahi', 'Rajshahi', 'Feroza Jewellers', NULL, 'Ghonok Para, Rajshahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Moklesur Rahman', NULL, NULL, NULL, 'Male', '01712943234', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(791, '10045', NULL, NULL, 99, 'president', 'Naogaon', 'Rajshahi', 'Promanik Jewellers', NULL, 'Hotelpotty Road, Sonapotty, Nagaon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Abu Sayed Raju', NULL, NULL, NULL, 'Male', '01711302581', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(792, '10046', NULL, NULL, 99, 'general-secretary', 'Naogaon', 'Rajshahi', 'New Bangladesh Jewellers', NULL, 'Thakur Mansion, Hotelpotty Road, Sonapotty, Nagaon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Shafiqul Islam Raju', NULL, NULL, NULL, 'Male', '01711406902', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(793, '10047', NULL, NULL, 99, 'president', 'Natore', 'Rajshahi', 'Maya Kanchan Jewellers', NULL, 'Pilkhana Road, Natore', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Swopon Kumar Podder', NULL, NULL, NULL, 'Male', '01715138123', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(794, '10048', NULL, NULL, 99, 'general-secretary', 'Natore', 'Rajshahi', 'Alanker Jewellers', NULL, 'Lal Bazar, Natore', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bhobesh Chandra Chakraborty', NULL, NULL, NULL, 'Male', '01740880060', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(795, '10049', NULL, NULL, 99, 'president', 'Bogura', 'Rajshahi', 'Swarnamohol Jewellers', NULL, 'Rafiq Khan New Market, Bogura', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Motlebur Rahman Ratul', NULL, NULL, NULL, 'Male', '01716503163', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(796, '10050', NULL, NULL, 99, 'general-secretary', 'Bogura', 'Rajshahi', 'The Al Amin Jewellers', NULL, 'Samir Uddin New Market, Bogura', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Firoz Ahmed (Babu)', NULL, NULL, NULL, 'Male', '01716508700', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(797, '10051', NULL, NULL, 99, 'president', 'Joypurhat', 'Rajshahi', 'Ruposhi Jewellers', NULL, 'Swarnapotty, Joypurhat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A.S. Nurun Nobi Dewan', NULL, NULL, NULL, 'Male', '01712765246', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL);
INSERT INTO `members` (`id`, `number_id`, `member_since`, `central_committee_post`, `central_committee_order`, `district_committee_post`, `district`, `divisions`, `inst_name`, `inst_name_bn`, `inst_address`, `inst_address_bn`, `inst_trade_license`, `inst_bin`, `inst_tin`, `inst_telephone`, `inst_mobile`, `img`, `inst_img`, `name`, `email`, `blood_group`, `name_bn`, `gender`, `contact`, `home_address`, `standing_committee`, `m_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(798, '10052', NULL, NULL, 99, 'general-secretary', 'Joypurhat', 'Rajshahi', 'Shaha Jewellers', NULL, 'Swarnapotty, Joypurhat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sree Ranjit Shaha', NULL, NULL, NULL, 'Male', '01911085581', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(799, '10053', NULL, NULL, 99, 'president', 'Pabna', 'Rajshahi', 'Chaity Gold Fashion', NULL, 'Tanti Somobay Bazar, Sonapotty, Pabna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Kamrul Anam (Ripon)', NULL, NULL, NULL, 'Male', '01711282711', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(800, '10054', NULL, NULL, 99, 'general-secretary', 'Pabna', 'Rajshahi', 'Gold Heaven Jewellers', NULL, 'Bismillah Matket, Sonapotty, Pabna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amzad Hossain', NULL, NULL, NULL, 'Male', '01713714430', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(801, '10055', NULL, NULL, 99, 'president', 'Sirajganj', 'Rajshahi', 'Kanu Jewellers', NULL, 'Marore Potty, Mujib Road, Sirajganj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Santosh Kumar Kanu', NULL, NULL, NULL, 'Male', '01711488533', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(802, '10056', NULL, NULL, 99, 'general-secretary', 'Sirajganj', 'Rajshahi', 'Swarnabithy Jewellers', NULL, 'Kapuriya Potty, Mujib Road, Sirajganj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gobinda Kumar Karmakar', NULL, NULL, NULL, 'Male', '01711111001', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(803, '10057', NULL, NULL, 99, 'president', 'Chapainawabganj', 'Rajshahi', 'Jony Jewellers', NULL, 'Bashunia Potty, Chapainawabganj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Mustakim', NULL, NULL, NULL, 'Male', '01716111912', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(804, '10058', NULL, NULL, 99, 'general-secretary', 'Chapainawabganj', 'Rajshahi', 'Rana Jewellers', NULL, 'Daudpur Road, Bashunia Potty, Chapainawabganj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Nazrul Islam', NULL, NULL, NULL, 'Male', '01716111912', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(805, '10059', '', '', 99, 'president', 'Rangpur', 'Rangpur', 'Modern Jewellers', '', 'Collector Shopping Complex, Ershad Sorony, Betpotty, Rangpur', '', '', '', '', '', '', '', NULL, 'Enamul Haque Sohel', '', '', '', 'Male', '01712080995', '', '{\"name\":[\"monitoring-of-districts-organization\",null],\"post\":[\"Member\",null]}', 1, 1, 2, '2022-05-14 10:13:30', '2022-05-16 15:20:49'),
(806, '10060', NULL, NULL, 99, 'general-secretary', 'Rangpur', 'Rangpur', 'Rinty Jewellers', NULL, 'Collector Shopping Complex, Dewan Bari Road, Betpotty, Rangpur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Aminul Islam Raju', NULL, NULL, NULL, 'Male', '01819830232', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(807, '10061', NULL, NULL, 99, 'president', 'Dinajpur', 'Rangpur', 'Moushumi Jewellers', NULL, 'Chalk Bazar (Nimtola), Dinajpur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Mofazzal Hossain', NULL, NULL, NULL, 'Male', '01727219880', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(808, '10062', NULL, NULL, 99, 'general-secretary', 'Dinajpur', 'Rangpur', 'Sarkar Jewellers', NULL, 'Chalk Bazar (Nimtola), Dinajpur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Moklesar Rahman', NULL, NULL, NULL, 'Male', '01718325537', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(809, '10063', NULL, NULL, 99, 'president', 'Nilphamari', 'Rangpur', 'Sumi Jewellers', NULL, 'Zila Porishad Market, Nilphamari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Alhaj Samsul Alam', NULL, NULL, NULL, 'Male', '01943322481', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(810, '10064', NULL, NULL, 99, 'general-secretary', 'Nilphamari', 'Rangpur', 'Alam Jewellers', NULL, 'Zila Porishad Market, Nilphamari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Abdul Karim', NULL, NULL, NULL, 'Male', '01913366842', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(811, '10065', NULL, NULL, 99, 'president', 'Lalmonirhat', 'Rangpur', 'Rupayan Jewellers', NULL, 'Thana Road, Lalmonirhat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Himangsu Sarkar', NULL, NULL, NULL, 'Male', '01715749522', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(812, '10066', NULL, NULL, 99, 'general-secretary', 'Lalmonirhat', 'Rangpur', 'Matre Jewellers', NULL, 'Thana Road, Lalmonirhat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sree Dulal Chandra Karmakar', NULL, NULL, NULL, 'Male', '01712808167', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(813, '10067', NULL, NULL, 99, 'convener', 'Thakurgaon', 'Rangpur', 'Amin Jewellers', NULL, 'Siraj Ud Daulah Road, Thakurgaon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ruhul Amin', NULL, NULL, NULL, 'Male', '01710868513', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(814, '10068', NULL, NULL, 99, 'president', 'Gaibandha', 'Rangpur', 'Rajlaxmi Jewellers', NULL, 'Gafur Market, East para, Gaibandha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Monindra Nath Mitre', NULL, NULL, NULL, 'Male', '01716212893', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(815, '10069', NULL, NULL, 99, 'general-secretary', 'Gaibandha', 'Rangpur', 'Amin Jewellers', NULL, 'Salimar Super Market, Gaibandha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Azharul Islam Sanzu', NULL, NULL, NULL, 'Male', '01713763457', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(816, '10070', NULL, NULL, 99, 'president', 'Kurigram', 'Rangpur', 'Jamuna Jewellers', NULL, 'Kalibari, Road, Kurigram', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dulal Chandra Roy', NULL, NULL, NULL, 'Male', '01721541957', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(817, '10071', NULL, NULL, 99, 'general-secretary', 'Kurigram', 'Rangpur', 'B M Gold House', NULL, 'Sabuj Para Road, Kurigram', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Badal Saha', NULL, NULL, NULL, 'Male', NULL, NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(818, '10072', NULL, NULL, 99, 'president', 'Panchagarh', 'Rangpur', 'Nabin Jewellers', NULL, 'Bania Para, Panchagarh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nabin Chandra Banik', NULL, NULL, NULL, 'Male', NULL, NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(819, '10073', NULL, NULL, 99, 'general-secretary', 'Panchagarh', 'Rangpur', 'Shamoly Jewellers', NULL, 'Bania Para, Panchagarh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rony Banik', NULL, NULL, NULL, 'Male', '01720803088', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(820, '10074', NULL, NULL, 99, 'president', 'Khulna', 'Khulna', 'Polash Jewellers', NULL, 'KDA New Market, Khulna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Somoresh Chanrda Shaha', NULL, NULL, NULL, 'Male', '01711339186', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(821, '10075', NULL, NULL, 99, 'general-secretary', 'Khulna', 'Khulna', 'Pushpo Jewellers', NULL, '15 Sir Iqbal Road, Khulna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sangkor Karmokar', NULL, NULL, NULL, 'Male', '01711829376', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(822, '10076', NULL, NULL, 99, 'president', 'Bagerhat', 'Khulna', 'Sarkar Jewellers', NULL, 'Karmokar Potty, Bagerhat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shamol Sarkar', NULL, NULL, NULL, 'Male', '01715167049', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(823, '10077', NULL, NULL, 99, 'general-secretary', 'Bagerhat', 'Khulna', 'New Matre Jewellery Works', NULL, 'Karmokar Potty, Bagerhat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Niloy Bhodro', NULL, NULL, NULL, 'Male', '01711965303', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(824, '10078', NULL, NULL, 99, 'president', 'Satkhira', 'Khulna', 'Dutta Jewellers', NULL, 'Post Office More, Shahid Nazmul Sarony, Kacharipara, Satkhira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sree Goura Chandra Dutta', NULL, NULL, NULL, 'Male', '01711866421', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(825, '10079', NULL, NULL, 99, 'general-secretary', 'Satkhira', 'Khulna', 'New Laxmi Narayan Jewellers', NULL, 'Shahid Nazmul Sarony, Satkhira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Monoranjon Karmakar', NULL, NULL, NULL, 'Male', '01716951443', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(826, '10080', '', '', 99, 'president', 'Jashore', 'Khulna', 'Chowdhury Gold', '', 'Kapuriya Potty Road, Jashore', '', '', '', '', '', '', '', NULL, 'Rakibul Islam Chowdhury', '', '', '', 'Male', '01731141675', '', '{\"name\":[\"monitoring-of-districts-organization\",null],\"post\":[\"Member\",null]}', 1, 1, 2, '2022-05-14 10:13:30', '2022-05-16 15:19:07'),
(827, '10081', NULL, NULL, 99, 'general-secretary', 'Jashore', 'Khulna', 'Bani Jewellery Works', NULL, 'Kapuriya Potty Road, Jashore', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Swapon Kumar Chandra', NULL, NULL, NULL, 'Male', '01711452136', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(828, '10082', NULL, NULL, 99, 'president', 'Narail', 'Khulna', 'Biswash Jewellers', NULL, 'Kalibari Road, Rupganj Bazar, Narail', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Swapon Kumar Biswash', NULL, NULL, NULL, 'Male', '01711117551', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(829, '10083', NULL, NULL, 99, 'general-secretary', 'Narail', 'Khulna', 'New Dilip Jewellers', NULL, 'Kalibari Road, Rupganj Bazar, Narail', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chanchal Kumar Roy', NULL, NULL, NULL, 'Male', '01611131184', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(830, '10084', NULL, NULL, 99, 'president', 'Kushtia', 'Khulna', 'Moon Jewellers', NULL, '44/2 NS Road, Kushtia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Abdul Goni', NULL, NULL, NULL, 'Male', '01766623157', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(831, '10085', NULL, NULL, 99, 'general-secretary', 'Kushtia', 'Khulna', 'New F.K Jewellers', NULL, '150 NS Road, Kushtia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kamal Ahmed Karim', NULL, NULL, NULL, 'Male', '01718221458', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(832, '10086', NULL, NULL, 99, 'president', 'Chuadanga', 'Khulna', 'Padma Jewellers', NULL, 'Boro Bazar, Chuadanga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Saiful Hasan Joarder', NULL, NULL, NULL, 'Male', '01711280346', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(833, '10087', NULL, NULL, 99, 'general-secretary', 'Chuadanga', 'Khulna', 'Gold King Jewellers', NULL, 'Thana Road, Chuadanga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shekh Sadi', NULL, NULL, NULL, 'Male', '01711040849', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(834, '10088', NULL, NULL, 99, 'president', 'Meherpur', 'Khulna', 'Patra Gold House', NULL, 'Kashari Bazar, Main Road, Meherpur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kishor Patra', NULL, NULL, NULL, 'Male', '01979162636', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(835, '10089', NULL, NULL, 99, 'general-secretary', 'Meherpur', 'Khulna', 'New Venus Jewellers', NULL, 'Kashari Bazar, Main Road, Meherpur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Mominul Islam', NULL, NULL, NULL, 'Male', '01716761662', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(836, '10090', NULL, NULL, 99, 'president', 'Jhenaidah', 'Khulna', 'Podder Jewellers', NULL, 'Gitanjali Road, Jhenaidah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Panchoresh Chanrda Podder', NULL, NULL, NULL, 'Male', '01718659245', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(837, '10091', NULL, NULL, 99, 'general-secretary', 'Jhenaidah', 'Khulna', 'Jit Gold House', NULL, 'KP Bashu Road, Jhenaidah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sadhan Sarkar', NULL, NULL, NULL, 'Male', '01716162640', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(838, '10092', NULL, NULL, 99, 'convener', 'Magura', 'Khulna', 'Boiddonath Jewellery', NULL, 'Puraton Bazar, Swarna potty, Magura', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bimol Kumar Biswas', NULL, NULL, NULL, 'Male', '01783397237', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(839, '10093', '', '', 99, 'president', 'Barishal', 'Barishal', 'Ratan Jewellers', '', 'Kathpotty Road, Barishal', '', '', '', '', '', '', '', NULL, 'Sree Sangkar Karmakar', '', '', '', 'Male', '01558367863', '', '{\"name\":[\"monitoring-of-districts-organization\",null],\"post\":[\"Member\",null]}', 1, 1, 2, '2022-05-14 10:13:30', '2022-05-16 15:17:25'),
(840, '10094', NULL, NULL, 99, 'general-secretary', 'Barishal', 'Barishal', 'Naj Jewellers', NULL, 'Birsreshtho Shahid Captain Mohiuddin Jahangir Road (Sadar Road), Barishal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mohammad Ali khan', NULL, NULL, NULL, 'Male', '01711150234', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(841, '10095', NULL, NULL, 99, 'president', 'Patuakhali', 'Barishal', 'Angosree Guinea House', NULL, 'Sadar Road, Natun Bazar, Patuakhali', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bipul Kanti Das', NULL, NULL, NULL, 'Male', '01715747015', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(842, '10096', NULL, NULL, 99, 'general-secretary', 'Patuakhali', 'Barishal', 'Subarna Jewellers', NULL, 'Sadar Road, Natun Bazar, Patuakhali', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Subal Karmakar', NULL, NULL, NULL, 'Male', '01715275548', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(843, '10097', NULL, NULL, 99, 'president', 'Barguna', 'Barishal', 'Gopal Bhandar', NULL, 'Bazar Road, Barguna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dilip Karmakar', NULL, NULL, NULL, 'Male', '01715033883', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(844, '10098', NULL, NULL, 99, 'general-secretary', 'Barguna', 'Barishal', 'Showkhin Guinea House', NULL, 'Sher-E-Bangla Road, Swarnakar Potty, Barguna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Samaresh Karmakar', NULL, NULL, NULL, 'Male', '01715586993', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(845, '10099', NULL, NULL, 99, 'president', 'Jhalakathi', 'Barishal', 'M/s Uzzal Guinea House', NULL, 'Doctor Potty, Jhalokati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babu Poran Karmakar', NULL, NULL, NULL, 'Male', '01712637742', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(846, '10100', NULL, NULL, 99, 'general-secretary', 'Jhalakathi', 'Barishal', 'Probhujit Jewellers', NULL, 'Sayed Tower, Doctor Potty, Jhalokati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Badhan Karmakar', NULL, NULL, NULL, 'Male', '01711958866', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(847, '10101', NULL, NULL, 99, 'convener', 'Pirojpur', 'Barishal', 'Amit Guinea House', NULL, 'Bazar Road, Pirojpur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ashoka Karmaker', NULL, NULL, NULL, 'Male', '01716195677', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(848, '10102', NULL, NULL, 99, 'president', 'Bhola', 'Barishal', 'Muslim Jewellers', NULL, 'Sadar Road, Bhola', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Jahangir Alam', NULL, NULL, NULL, 'Male', '01711269577', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(849, '10103', NULL, NULL, 99, 'general-secretary', 'Bhola', 'Barishal', 'Heera Jewellers', NULL, 'Sadar Road, Bhola', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Abilash Nandi', NULL, NULL, NULL, 'Male', '01712272749', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(850, '10104', '', '', 99, 'president', 'Sylhet', 'Sylhet', 'Ishak Jewellers', '', 'Churipotty, Bandar Bazar, Sylhet', '', '', '', '', '', '', '', NULL, 'Mahbubur Rahman Sawdagar', '', '', '', 'Male', '01711468972', '', '{\"name\":[\"monitoring-of-districts-organization\",null],\"post\":[\"Member\",null]}', 1, 1, 2, '2022-05-14 10:13:30', '2022-05-16 15:21:18'),
(851, '10105', NULL, NULL, 99, 'general-secretary', 'Sylhet', 'Sylhet', 'Alanker Niketan Jewellers', NULL, 'Laldeghir Par,3100, Sylhet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haji Babul Ahmed', NULL, NULL, NULL, 'Male', '01711185832', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(852, '10106', NULL, NULL, 99, 'president', 'Moulvibazar', 'Sylhet', 'Dhaka Jewellers', NULL, 'Old Hospital Road, Moulvibazar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S.M Idris', NULL, NULL, NULL, 'Male', '01717020355', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(853, '10107', NULL, NULL, 99, 'general-secretary', 'Moulvibazar', 'Sylhet', 'Sadhu Jewellery Works', NULL, 'Laik Road, Moulvibazar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bashudeb Roy', NULL, NULL, NULL, 'Male', '01712904733', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(854, '10108', NULL, NULL, 99, 'president', 'Sunamganj', 'Sylhet', 'Beauty Jewellers', NULL, '14 Kalibari Road, Sunamgonj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Montosh Roy', NULL, NULL, NULL, 'Male', '01712249438', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(855, '10109', NULL, NULL, 99, 'general-secretary', 'Sunamganj', 'Sylhet', 'Maa-Mony Jewellers', NULL, 'Kalibari Road, Sunamgonj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nelandu Karmakar Chandan', NULL, NULL, NULL, 'Male', '01712832970', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL),
(856, '10110', NULL, NULL, 99, 'convener', 'Habiganj', 'Sylhet', 'Banik Store', NULL, 'Bogla Bazar, Habiganj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bijoy Banik', NULL, NULL, NULL, 'Male', '01711932542', NULL, NULL, 1, 1, 0, '2022-05-14 10:13:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `m_id` bigint(20) UNSIGNED NOT NULL,
  `m_name` varchar(200) DEFAULT NULL,
  `slug` varchar(256) NOT NULL,
  `m_edition` varchar(80) DEFAULT NULL,
  `m_title` text NOT NULL,
  `m_keywords` text NOT NULL,
  `m_desc` text NOT NULL,
  `m_parent` int(11) DEFAULT '0',
  `m_order` int(11) DEFAULT NULL,
  `m_status` tinyint(1) DEFAULT NULL,
  `m_visible` int(11) DEFAULT NULL,
  `m_color` varchar(100) DEFAULT NULL,
  `m_bg` varchar(100) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_archives`
--

CREATE TABLE `news_archives` (
  `id` bigint(20) NOT NULL,
  `n_id` bigint(20) NOT NULL,
  `n_solder` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `n_head` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `n_subhead` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `news_tags` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `n_author` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `n_writer` int(11) DEFAULT NULL,
  `n_details` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `n_category` varchar(40) DEFAULT NULL,
  `main_image` text,
  `watermark` int(11) DEFAULT NULL,
  `n_caption` blob,
  `category_lead` tinyint(1) DEFAULT '0',
  `home_lead` tinyint(1) DEFAULT '0',
  `highlight_items` tinyint(1) DEFAULT '0',
  `instant_articles` tinyint(1) DEFAULT '0',
  `ticker_news` tinyint(1) DEFAULT '0',
  `home_category` tinyint(1) DEFAULT '0',
  `title_info` text,
  `meta_keyword` mediumblob,
  `meta_description` mediumblob,
  `embedded_code` longtext,
  `main_video` tinyint(1) NOT NULL DEFAULT '0',
  `most_read` int(11) DEFAULT NULL,
  `n_status` int(11) DEFAULT NULL,
  `n_order` int(11) DEFAULT NULL,
  `home_cat_order` bigint(20) DEFAULT NULL,
  `edition` enum('online','print','magazine') NOT NULL,
  `start_at` timestamp NULL DEFAULT NULL,
  `end_at` timestamp NULL DEFAULT NULL,
  `edit_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `restore_by` int(11) DEFAULT NULL,
  `edited_by` int(11) NOT NULL,
  `edited_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `status` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `amount`, `address`, `status`, `transaction_id`, `currency`) VALUES
(1, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '627666b289af1', 'BDT'),
(2, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '6278a5e7b059d', 'BDT'),
(3, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '6278dd5699c3a', 'BDT'),
(4, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '627b506d77305', 'BDT'),
(5, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '627cc559c00e6', 'BDT'),
(6, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '627cc5739a70d', 'BDT');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(11) NOT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: Inactive, 1: Active',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `caption`, `link`, `gallery_id`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'dsfsdfsdf', '1654750653-0d763d3b-7cf8-4e5e-946a-3ca0d25522c0.jpeg', 1, 1, 3, NULL, '2022-06-09 04:57:34', '2022-06-09 04:57:34'),
(2, 'dsfsdfsdf', '1654750654-0fed3b67-385f-4c58-9dae-87771af2feec.jpeg', 1, 1, 3, NULL, '2022-06-09 04:57:35', '2022-06-09 04:57:35'),
(3, 'dsfsdfsdf', '1654750655-2c6b209a-e336-4ba3-b40f-34be3d0c570b.jpeg', 1, 1, 3, NULL, '2022-06-09 04:57:36', '2022-06-09 04:57:36'),
(4, 'dsfsdfsdf', '1654750656-2ff1cdeb-9617-4ea3-baec-7b19ed20ee0c.jpeg', 1, 1, 3, NULL, '2022-06-09 04:57:37', '2022-06-09 04:57:37');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `nid` bigint(20) NOT NULL,
  `n_solder` tinytext,
  `n_head` tinytext NOT NULL,
  `n_subhead` tinytext,
  `title_info` varchar(256) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `source_id` int(5) NOT NULL,
  `news_link` tinytext,
  `bundle_id` int(5) NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: not , 1: yes',
  `meta_keyword` tinytext NOT NULL,
  `meta_description` tinytext NOT NULL,
  `home_lead` tinyint(4) NOT NULL,
  `n_details` longtext NOT NULL,
  `main_image` varchar(256) NOT NULL,
  `n_caption` tinytext,
  `main_video` tinyint(1) DEFAULT NULL,
  `embedded_code` tinytext,
  `n_status` int(11) NOT NULL,
  `most_read` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `n_date` date NOT NULL,
  `start_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `restore_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`nid`, `n_solder`, `n_head`, `n_subhead`, `title_info`, `slug`, `tags`, `source_id`, `news_link`, `bundle_id`, `is_primary`, `meta_keyword`, `meta_description`, `home_lead`, `n_details`, `main_image`, `n_caption`, `main_video`, `embedded_code`, `n_status`, `most_read`, `created_by`, `updated_by`, `n_date`, `start_at`, `created_at`, `updated_at`, `is_deleted`, `deleted_by`, `deleted_at`, `restore_by`) VALUES
(1, NULL, 'বায়তুল মোকাররমে বঙ্গবন্ধুর নামে হবে বিশ্বমানের লাইব্রেরি', NULL, '| Sayem Sobhan Anvir', NULL, '', 2, 'https://www.bd-pratidin.com/last-page/2022/06/05/775698', 1, 1, 'digital,library', 'digital library', 0, '&lt;p&gt;জাতীয় মসজিদ বায়তুল মোকাররমে জাতির জনক বঙ্গবন্ধু শেখ মুজিবুর রহমানের নামে বিশ্বমানের ডিজিটাল লাইব্রেরি করার ঘোষণা দিয়েছেন বসুন্ধরা গ্রুপের ব্যবস্থাপনা পরিচালক (এমডি) ও বায়তুল মোকাররম জাতীয় মসজিদ মুসল্লি কমিটির প্রধান উপদেষ্টা সায়েম সোবহান আনভীর। একই সঙ্গে মুসল্লি কমিটির সঙ্গে বসে পর্যায়ক্রমে মসজিদের বিভিন্ন সমস্যা সমাধানের আশ্বাস দিয়েছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;সম্প্রতি বসুন্ধরায় নিজ বাসভবনে মুসল্লি কমিটির সঙ্গে মতবিনিময় সভায় এ ঘোষণা দেন। এ বছর ১০০ সামর্থ্যহীন মানুষকে ওমরাহ হজে পাঠানোর কথাও জানান তিনি। সভায় একমাত্র ছেলে আহমেদ ওয়ালিদ সোবহানকে সবার সঙ্গে পরিচয় করিয়ে দিয়ে সায়েম সোবহান আনভীর বলেন, &amp;lsquo;আমার কাছে আজ পর্যন্ত মসজিদ-মাদরাসার জন্য কেউ এসে খালি হাতে ফিরে যায়নি। ইনশা আল্লাহ আগামীতেও যাবে না। বায়তুল মোকাররমে ইফতার দেওয়ার জন্য এবারই প্রথম মুসল্লি কমিটি আমার কাছে আসে। যতটুকু পেরেছি, করেছি। যত দিন বেঁচে থাকব, ইনশা আল্লাহ রমজান মাসে ইফতারের ব্যবস্থা করব। আমার ছেলেকে আজ ডেকে এনেছি, যাতে আমার অবর্তমানে সে এটা বহাল রাখে।&amp;rsquo; এর আগে বায়তুল মোকাররমের পেশ ইমামগণ ও মুসল্লি কমিটির সদস্যরা বক্তব্য দেন। জাতীয় মসজিদে একটি অত্যাধুনিক ডিজিটাল ইসলামিক লাইব্রেরি স্থাপনের দাবি ওঠে সভায়। বক্তারা বায়তুল মোকাররমের জেনারেটর, সাউন্ড সিস্টেম, শীতাতপ নিয়ন্ত্রণ ব্যবস্থা, অজুখানার সমস্যাসহ নানা সংকট তুলে ধরেন। জাতীয় মসজিদ মুসল্লি কমিটির সভাপতি হাজী মো. ইয়াকুব আলীর সঞ্চালনায় সভায় বক্তব্য দেন জাতীয় মসজিদ বায়তুল মোকাররমের পেশ ইমাম মুফতি এহসানুল হক, মাওলানা মহিউদ্দীন কাসেম, মুফতি মাওলানা মহিবুল্লাহিল বাকী, ইসলামিক রিসার্চ সেন্টার বাংলাদেশ, বসুন্ধরার মহাপরিচালক মুফতি আরশাদ রহমানী, প্রধান মুফতি এনামুল হক, জাতীয় মসজিদ মুসল্লি কমিটির সহসভাপতি ও আপন জুয়েলার্সের স্বত্বাধিকারী গুলজার আহম্মেদ, মুসল্লি কমিটির উপদেষ্টা মিনিস্টার গ্রুপের চেয়ারম্যান আবদুর রাজ্জাক খান, নিপ্পন গ্রুপের চেয়ারম্যান ইঞ্জিনিয়ার মহব্বত উল্লাহ, চুয়াডাঙ্গা-২ আসনের সংসদ সদস্য আলী আসগর টগর, জেসিএক্স গ্রুপের ব্যবস্থাপনা পরিচালক ইকবাল হোসেন চৌধুরী জুয়েল, বায়তুল মোকাররম মার্কেটের ব্যবসায়ী আবদুল খালেক মোল্লা প্রমুখ।&lt;/p&gt;\r\n\r\n&lt;p&gt;মুসল্লিদের বক্তব্যের পরিপ্রেক্ষিতে সায়েম সোবহান আনভীর বলেন, &amp;lsquo;ইসলামিক ফাউন্ডেশন অনুমতি দিলে বায়তুল মোকাররমে বিশ্বমানের শেখ মুজিবুর রহমান ডিজিটাল ইসলামিক লাইব্রেরি করতে যত ধরনের সহযোগিতা প্রয়োজন আমি করব। এজন্য কাউকে একটা টাকাও খরচ করতে হবে না। এ ছাড়া অন্য যেসব সমস্যার কথা বলেছেন, আমি সবার সঙ্গে বসে একটা একটা করে সমাধান করব। যেহেতু এটা সরকারি প্রতিষ্ঠান, আমরা ধর্ম মন্ত্রণালয়ে আবেদন করব। দেশের জাতীয় মসজিদের এমন অবস্থা থাকলে হবে না। জাতীয় মসজিদ থাকবে সুন্দর, যা দেখলেই মনটা ভরে যাবে।&amp;rsquo; তিনি বলেন, &amp;lsquo;বায়তুল মোকাররমের সঙ্গে আমি নতুন করে সংযুক্ত নই। আমাদের নিউজ টোয়েন্টিফোর টেলিভিশনে প্রতি শুক্রবার জুমার খুতবা লাইভ সম্প্রচার করি।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;বঙ্গবন্ধুর নামে ডিজিটাল লাইব্রেরি নির্মাণ করে দেওয়ার ঘোষণায় বসুন্ধরা এমডিকে ধন্যবাদ জানান মুসল্লিরা। এ সময় সায়েম সোবহান আনভীর ও তাঁর পরিবারের সুস্থতা কামনায় বিশেষ মোনাজাত করা হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;মুসল্লি কমিটির সভাপতি হাজী মো. ইয়াকুব আলী বলেন, &amp;lsquo;বায়তুল মোকাররম ষাটের দশকের মসজিদ। আগে ৩০ হাজার মানুষ একসঙ্গে নামাজ পড়তে পারত। এখন সক্ষমতা ৪০ হাজার করা হয়েছে। ২০১৪ সালে প্রধানমন্ত্রী শেখ হাসিনা এটাকে জাতীয় মসজিদ ঘোষণা করেন। মসজিদটির জন্য অনেক বাজেট থাকলেও আমলাতান্ত্রিক প্রক্রিয়ার কারণে কাক্সিক্ষত উন্নয়ন হয় না। অন্য দেশ থেকেও মুসল্লিরা এখানে এসে নামাজ পড়েন। কিন্তু মসজিদটির সে অনুযায়ী উন্নয়ন হয়নি। এজন্য আমরা মুসল্লি কমিটি করেছি। বসুন্ধরা গ্রুপের ব্যবস্থাপনা পরিচালককে উপদেষ্টা হওয়ার আমন্ত্রণ জানাতেই তিনি রাজি হয়ে যান। সব ধরনের উন্নয়নের প্রতিশ্রুতি দিয়েছেন। ইতোমধ্যে অনেক আশ্বাসের বাস্তবায়ন পেয়েছি।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;জাতীয় মসজিদের পেশ ইমাম মুফতি মাওলানা মহিবুল্লাহিল বাকী বলেন, &amp;lsquo;রসুলে পাক (সা.) ইরশাদ করেন, যে মানুষের কৃতজ্ঞতা আদায় করে না সে আল্লাহর প্রতিও কৃতজ্ঞতা প্রকাশ করে না। বসুন্ধরা গ্রুপের চেয়ারম্যানের সহযোগিতায় ৩০ বছর আগে বসুন্ধরায় গড়ে উঠেছে ইসলামিক রিসার্চ সেন্টার বাংলাদেশ। আজ আমরা তাঁর ছেলের সঙ্গে বসেছি জাতীয় মসজিদের সংস্কার নিয়ে। মুসল্লি পরিষদ এমন একজন ব্যক্তির ছেলেকে প্রধান উপদেষ্টা নির্বাচন করায় খুবই ভালো হয়েছে। সব সমিতিতে পার্থিব লাভের বিষয় আছে। জাতীয় মসজিদের মুসল্লি কমিটির প্রধান উপদেষ্টা হওয়ায় ত্যাগ ও বিসর্জন ছাড়া কিছু নেই। বিসর্জন দেওয়ার মানসিকতা নিয়েই তিনি এসেছেন। আল্লাহ তাঁর নেক বাসনা পূরণ করুন।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;পেশ ইমাম মুফতি এহসানুল হক বলেন, &amp;lsquo;বাংলাদেশের ইতিহাস-ঐতিহ্যের একটা অংশ জাতীয় মসজিদ বায়তুল মোকাররম। আমরা দুনিয়ায় যে ভালো কাজগুলো করব পরকালে আল্লাহ তার পুরস্কার দেবেন। বসুন্ধরা গ্রুপ দেশে-বিদেশে সব জায়গায় ধর্মীয় কাজে যে সহযোগিতা করে আসছে, দোয়া করি আল্লাহ যেন এ কাজের উত্তম প্রতিদান দেন।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;পেশ ইমাম মাওলানা মহিউদ্দীন কাসেম বলেন, &amp;lsquo;মসজিদ শুধু নামাজের জন্যই নয়, প্রতিটি মসজিদ হবে নামাজ ও আমলের কেন্দ্র। আমরা মসজিদে নববি দেখেছি। সেখানে নামাজ হয়, পাঠাগার আছে, মাদরাসা আছে। দীনি একটা পরিবেশ সেখানে আছে। সেখানে নামাজ পড়তে এসে দীনি জ্ঞান অর্জন করা যায়। বায়তুল মোকাররমেও এমন পরিবেশ সৃষ্টি হোক।&amp;rsquo;&lt;/p&gt;', '1654595208-BD-Pratidin_2022-06-05-08-463x260.jpeg', 'Sayem Sobhan Anvir', NULL, NULL, 3, 1, 3, 3, '2022-06-07', '2022-06-07 15:46:48', '2022-06-07 09:46:48', '2022-06-07 09:59:08', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `text` varchar(256) DEFAULT NULL,
  `link` tinytext,
  `img` tinytext NOT NULL,
  `start_date` datetime NOT NULL,
  `s_status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `text`, `link`, `img`, `start_date`, `s_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'আশা করি নতুন কমিটি ভবিষ্যতে জুয়েলারী শিল্পের উন্নয়নে কাজ করবে।', 'সায়েম সোবহান আনভীর', 'https://bajus.btechbd.xyz/post/16', 'https://bajus.btechbd.xyz/storage/public/news_images/photo/shares/BAJUS-president-Anvir-2202121156_ccexpress.jpeg', '2022-01-26 16:12:26', 1, 1, 2, '2022-01-26 10:12:26', '2022-03-21 16:25:46'),
(2, 'Testing link', '', '', 'http://local.bajus.com/storage/files/shares/MCML_Code_of_Conduct_Aug_2020 (1).pdf', '2022-05-18 10:48:16', 1, 3, NULL, '2022-05-18 04:48:16', '2022-05-18 04:48:16'),
(3, 'Testing', '', '', 'http://local.bajus.com/storage/files/shares/MCML_Code_of_Conduct_Aug_2020 (1).pdf', '2022-05-18 10:53:26', 1, 3, NULL, '2022-05-18 04:53:26', '2022-05-18 04:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `sources`
--

CREATE TABLE `sources` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `base_url` varchar(256) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sources`
--

INSERT INTO `sources` (`id`, `name`, `base_url`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'Daily Bangladesh Pratidin', 'https://www.bd-pratidin.com/', 1, 3, NULL, '2022-06-07 08:36:20', '2022-06-07 08:36:20');

-- --------------------------------------------------------

--
-- Table structure for table `stalls`
--

CREATE TABLE `stalls` (
  `id` bigint(20) NOT NULL,
  `f_name` varchar(256) NOT NULL,
  `l_name` varchar(256) NOT NULL,
  `mobile` varchar(256) NOT NULL,
  `organization` varchar(256) NOT NULL,
  `address` tinytext NOT NULL,
  `divisions` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `thana` varchar(100) NOT NULL,
  `stalls_number` varchar(100) NOT NULL,
  `tin_number` varchar(100) NOT NULL,
  `nid_number` varchar(100) NOT NULL,
  `email` varchar(256) NOT NULL,
  `s_year` year(4) DEFAULT NULL,
  `s_status` tinyint(1) NOT NULL,
  `send_at` datetime NOT NULL,
  `edit_at` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stalls`
--

INSERT INTO `stalls` (`id`, `f_name`, `l_name`, `mobile`, `organization`, `address`, `divisions`, `district`, `thana`, `stalls_number`, `tin_number`, `nid_number`, `email`, `s_year`, `s_status`, `send_at`, `edit_at`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Stall', 'Stall', '123456', 'Stall', 'Stall', 'Barishal', 'Bhola', 'Stall', '12345', '1234', '', 'bdrabin@gmail.com', 2022, 1, '2022-02-26 14:03:38', NULL, 2, '2022-02-26 08:03:38', '2022-03-05 18:59:25'),
(2, 'Stall', 'Stall', '234566544', 'rabin', 'sfds fasdf', 'Barishal', 'Barguna', 'rabin', '12', '12', '12', '12', 2022, 1, '2022-02-26 14:12:25', NULL, 1, '2022-02-26 08:12:25', '2022-02-26 08:42:39'),
(4, 'Stall', 'Stall', '12345', 'rabin', 'sd', 'Chattogram', 'Chandpur', 'rabin', '12', '12', '123', 'bdrabin@gmail.com', 2022, 1, '2022-02-26 14:17:08', NULL, 1, '2022-02-26 08:17:08', '2022-02-26 08:41:45');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `details` text NOT NULL,
  `img` varchar(256) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries`
--

CREATE TABLE `telescope_entries` (
  `sequence` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries_tags`
--

CREATE TABLE `telescope_entries_tags` (
  `entry_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telescope_monitoring`
--

CREATE TABLE `telescope_monitoring` (
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `useful_links`
--

CREATE TABLE `useful_links` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `url` tinytext,
  `img` tinytext NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `useful_links`
--

INSERT INTO `useful_links` (`id`, `name`, `url`, `img`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Ministry of Finance', 'https://mof.gov.bd/', 'https://www.bajus.org/storage/public/news_images/photo/shares/Usefull Links/Ministry of Finance.png', 1, 2, '2022-02-02 09:42:50', '2022-05-12 12:49:18'),
(2, 'Ministry of Commerce.', 'https://mincom.gov.bd', 'https://www.bajus.org/storage/public/news_images/photo/shares/Usefull Links/Ministry of Commerce.png', 1, 2, '2022-02-02 09:43:38', '2022-05-12 12:49:27'),
(3, 'Ministry of Industries', 'https://moind.gov.bd/', 'https://www.bajus.org/storage/public/news_images/photo/shares/Usefull Links/Ministry of Industries.png', 2, 2, '2022-02-24 13:18:32', '2022-05-12 12:49:35'),
(4, 'FBCCI', 'http://fbcci.org/', 'https://www.bajus.org/storage/public/news_images/photo/shares/Usefull Links/FBCCI.png', 2, 2, '2022-02-24 15:41:11', '2022-05-12 12:49:43'),
(5, 'BSTI', 'http://www.bsti.gov.bd/', 'https://www.bajus.org/storage/public/news_images/photo/shares/Usefull Links/BSTI.png', 2, 2, '2022-02-24 15:41:37', '2022-05-12 12:49:51'),
(6, 'Bangladesh Police', 'https://www.police.gov.bd/', 'https://www.bajus.org/storage/public/news_images/photo/shares/Usefull Links/Bangladesh Police.png', 2, 2, '2022-02-24 15:41:56', '2022-05-12 12:49:58'),
(7, 'International Gold Market', 'https://www.kitco.com/', 'https://www.bajus.org/storage/public/news_images/photo/shares/Usefull Links/International Gold Market.png', 2, 2, '2022-02-24 15:42:19', '2022-05-12 12:50:04'),
(8, 'International Diamond Market', 'https://rapaport.com/', 'https://www.bajus.org/storage/public/news_images/photo/shares/Usefull Links/International Diamond Market.png', 2, 2, '2022-02-24 15:42:39', '2022-05-12 12:50:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('developer','editor','contributor','subscriber') COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('all','online','print') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `img`, `designation`, `role`, `type`, `status`, `created_by`, `updated_by`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rabin', 'bdrabin@gmail.com', '$2y$10$E9mzhs3fT.lDhg9SBvTGcuo3rG0DrvLpZjq0bDILIXKtnZTYY6t8q', NULL, NULL, '1639306329-263769376_4456758671044788_518953091677462478_n.jpg', 'Developer', 'developer', 'all', 1, 1, NULL, '2021-05-22 22:59:30', '0ev5MWKE2oGmcrUvKu86Lhs8oIh0yccxznankYe8nik3KoJgADKmX6NWdjvr', '2021-05-22 22:59:30', '2021-12-12 04:52:12'),
(2, 'Tanvir', 'tanvialmahmud@gmail.com', '$2y$10$CBDIPD7tTnSmACwc8Jar6ukTmQ2r34p7j1v3Rnrk9DXuBH3KV/B3i', NULL, NULL, NULL, 'It Support', 'editor', 'online', 1, 1, NULL, NULL, 'DdVU5nIV13SmfsoP9JiqT9kei9rgjNN4zHUXbxZT6P6KIpAGk2fTkqaVLExL', '2022-02-24 12:34:25', '2022-02-24 12:34:25'),
(3, 'Enayet Ullah', 'enayet.btech@gmail.com', '$2y$10$EP90T57TapqXy0pM2qaQ0OHEKKOnYfMUp88yuZslfZX1.KpsDQmti', NULL, NULL, NULL, 'Online', 'developer', 'all', 1, 1, NULL, NULL, NULL, '2022-05-18 04:14:05', '2022-05-18 04:15:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads_positions`
--
ALTER TABLE `ads_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `become_a_members`
--
ALTER TABLE `become_a_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `breaking_news`
--
ALTER TABLE `breaking_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bundles`
--
ALTER TABLE `bundles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contributions`
--
ALTER TABLE `contributions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `category` (`status`,`created_at`) USING BTREE;

--
-- Indexes for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `g_status` (`g_status`);

--
-- Indexes for table `gold_silvers`
--
ALTER TABLE `gold_silvers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homenews`
--
ALTER TABLE `homenews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `value` (`value`);

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`m_id`),
  ADD KEY `m_order` (`m_order`,`m_status`,`is_deleted`) USING BTREE,
  ADD KEY `m_visible` (`m_visible`),
  ADD KEY `m_id` (`m_id`,`slug`),
  ADD KEY `slug` (`slug`),
  ADD KEY `m_name` (`m_name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_archives`
--
ALTER TABLE `news_archives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`nid`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sources`
--
ALTER TABLE `sources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stalls`
--
ALTER TABLE `stalls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  ADD PRIMARY KEY (`sequence`),
  ADD UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  ADD KEY `telescope_entries_batch_id_index` (`batch_id`),
  ADD KEY `telescope_entries_family_hash_index` (`family_hash`),
  ADD KEY `telescope_entries_created_at_index` (`created_at`),
  ADD KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`);

--
-- Indexes for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD KEY `telescope_entries_tags_entry_uuid_tag_index` (`entry_uuid`,`tag`),
  ADD KEY `telescope_entries_tags_tag_index` (`tag`);

--
-- Indexes for table `useful_links`
--
ALTER TABLE `useful_links`
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
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ads_positions`
--
ALTER TABLE `ads_positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `become_a_members`
--
ALTER TABLE `become_a_members`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `breaking_news`
--
ALTER TABLE `breaking_news`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bundles`
--
ALTER TABLE `bundles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contributions`
--
ALTER TABLE `contributions`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gold_silvers`
--
ALTER TABLE `gold_silvers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `homenews`
--
ALTER TABLE `homenews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mails`
--
ALTER TABLE `mails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=857;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `m_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news_archives`
--
ALTER TABLE `news_archives`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `nid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sources`
--
ALTER TABLE `sources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stalls`
--
ALTER TABLE `stalls`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  MODIFY `sequence` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `useful_links`
--
ALTER TABLE `useful_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD CONSTRAINT `telescope_entries_tags_entry_uuid_foreign` FOREIGN KEY (`entry_uuid`) REFERENCES `telescope_entries` (`uuid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
