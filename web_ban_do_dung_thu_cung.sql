-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2024 at 05:55 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `log_login` text DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Vũ Thế Hùng', 'admin@gmail.com', '$2y$10$wkjMG/vGGEJ21wIARDJDiOZnBxO8p5eyDrc3gw.0E9.oKNKqp0QD.', '0343754517', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(255) NOT NULL,
  `a_slug` varchar(255) NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT 0,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_menu_id` int(11) NOT NULL DEFAULT 0,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `a_description` mediumtext DEFAULT NULL,
  `a_avatar` varchar(255) DEFAULT NULL,
  `a_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `a_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(1, 'Cá tháng tư, SALE THẬT, KHUYẾN MÃI THẬT', 'ca-thang-tu-sale-that-khuyen-mai-that', 1, 1, 1, 0, 'Chương trình khuyến mãi 1/4', '2024-06-07__pate-dog3.png', '<p>🔥 C&aacute; th&aacute;ng tư, SALE THẬT, KHUYẾN M&Atilde;I THẬT!!!</p>\r\n\r\n<p>💙 Nh&acirc;n dịp ra mắt sản phẩm Pate thịt hầm cao cấp Bonbon, K&uacute;n Miu xin d&agrave;nh tặng cho c&aacute;c bạn khuyến m&atilde;i si&ecirc;u hời:</p>\r\n\r\n<p>👉&nbsp;Mua 6 tặng 1&nbsp;Pate thịt hầm cao cấp Bonbon</p>\r\n\r\n<p>👉&nbsp;Tặng ngay 1 hộp Pate thịt hầm cao cấp Bonbon 75g cho ho&aacute; đơn 200k</p>\r\n\r\n<p>* Lưu &yacute;: &Aacute;p dụng khi mua h&agrave;ng trực tiếp</p>\r\n\r\n<p>👉&nbsp; Miễn ph&iacute; ship đơn h&agrave;ng&nbsp;Pate thịt hầm cao cấp Bonbon 150k cho b&aacute;n k&iacute;nh dưới 5km.</p>\r\n\r\n<p><strong>😋 C&oacute; Bonbon, Boss&nbsp;ăn ngon mỗi ng&agrave;y!</strong></p>', '2024-03-31 08:26:08', 1, 1, '2024-06-07 08:33:19'),
(2, 'SALE TRIỀN MIÊN - RẺ PHÁT ĐIÊN', 'sale-trien-mien-re-phat-dien', 1, 1, 1, 0, 'Săn Sale ngay nào', '2024-06-07__km4.png', '<p>😱 SALE TRIỀN MI&Ecirc;N - RẺ PH&Aacute;T ĐI&Ecirc;N&nbsp;</p>\r\n\r\n<p>✅ Deal thơm 15.3 c&ugrave;ng VOUCHER ĐỘC QUYỀN CỦA RI&Ecirc;NG SHOP chỉ c&oacute; tại:</p>\r\n\r\n<p><a href=\"https://shope.ee/2fllW9Q2YE\">https://shope.ee/2fllW9Q2YE</a>&nbsp;</p>\r\n\r\n<p><a href=\"https://shope.ee/1ftZTQFK3m\">https://shope.ee/1ftZTQFK3m</a>&nbsp;</p>\r\n\r\n<p><a href=\"https://shope.ee/1qCzfnHTKC\">https://shope.ee/1qCzfnHTKC</a>&nbsp;</p>\r\n\r\n<p>🎁 Nhanh tay nhập ngay m&atilde;:</p>\r\n\r\n<p>M&atilde; AFFKO - Giảm 25K đơn từ 68K</p>\r\n\r\n<p>M&atilde; AFFNOI - Giảm 25% tối đa 33K đơn từ 99K</p>\r\n\r\n<p>M&atilde; AFFNEO - Giảm 20% tối đa 88K đơn từ 350K</p>\r\n\r\n<p>M&atilde; AFFBUT - Giảm 15% tối đa 150K đơn từ 750K</p>\r\n\r\n<p>M&atilde; AFFGIA - Giảm 30K đơn từ 90K</p>\r\n\r\n<p>M&atilde; AFFNHU - Giảm 20% tối đa 100K đơn từ 499K</p>\r\n\r\n<p>M&atilde; AFFLAA - Giảm 50% tối đa 30K đơn từ 50K</p>\r\n\r\n<p>M&atilde; AFFF19 - Giảm 20% tối đa 99K đơn từ 350K</p>\r\n\r\n<p>M&atilde; AFFXIG - Giảm 40K đơn từ 149K</p>', '2024-06-07 08:28:21', 1, 1, '2024-06-07 08:28:21');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atb_name` varchar(255) NOT NULL,
  `atb_slug` varchar(255) NOT NULL,
  `atb_type_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type_id`, `created_at`, `updated_at`) VALUES
(1, 'Thịt gà', 'thit-ga', 1, '2024-06-07 19:43:41', '2024-06-07 19:43:41'),
(2, 'Cá hồi', 'ca-hoi', 1, '2024-06-07 19:44:02', '2024-06-07 19:44:02'),
(3, 'Bò', 'bo', 1, '2024-06-07 19:45:42', '2024-06-07 19:45:42'),
(4, 'Turkey', 'turkey', 1, '2024-06-07 19:46:37', '2024-06-07 19:46:37'),
(5, 'Pork', 'pork', 1, '2024-06-07 19:47:10', '2024-06-07 19:47:10'),
(6, 'Đỏ', 'do', 2, '2024-06-08 07:33:53', NULL),
(7, 'Xanh', 'xanh', 2, '2024-06-08 07:33:59', NULL),
(8, 'Vàng', 'vang', 2, '2024-06-08 07:34:05', NULL),
(9, 'Trắng', 'trang', 2, '2024-06-08 07:34:14', NULL),
(10, 'Xanh Rêu', 'xanh-reu', 2, '2024-06-09 06:35:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT 0,
  `c_slug` varchar(255) NOT NULL,
  `c_avatar` varchar(255) DEFAULT NULL,
  `c_banner` varchar(255) DEFAULT NULL,
  `c_description` varchar(255) DEFAULT NULL,
  `c_hot` tinyint(4) NOT NULL DEFAULT 0,
  `c_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_parent_id`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(1, 'Thức ăn cho Chó', 0, 'thuc-an-cho-cho', '2024-06-07__snack-dog2.png', NULL, NULL, 0, 1, '2024-06-07 01:44:16', '2024-06-07 08:15:44'),
(2, 'Thức ăn cho Mèo', 0, 'thuc-an-cho-meo', '2024-06-07__thucan2.png', NULL, NULL, 0, 1, '2024-06-07 01:48:34', '2024-06-07 08:16:00'),
(3, 'Sản phẩm dinh dưỡng', 0, 'san-pham-dinh-duong', '2024-06-07__sua-cho1.png', NULL, NULL, 0, 1, '2024-06-07 01:48:52', '2024-06-07 08:16:21'),
(4, 'Sữa tắm', 0, 'sua-tam', '2024-06-07__sua-tam-violet.png', NULL, NULL, 0, 1, '2024-06-07 01:49:07', '2024-06-07 08:16:37'),
(5, 'Dụng cụ làm đẹp', 0, 'dung-cu-lam-dep', '2024-06-07__luoc.png', NULL, NULL, 0, 1, '2024-06-07 01:49:31', '2024-06-07 08:18:12'),
(6, 'Vật dụng ăn uống', 0, 'vat-dung-an-uong', '2024-06-07__binhsua.png', NULL, NULL, 0, 1, '2024-06-07 01:49:50', '2024-06-07 08:18:37'),
(7, 'Đệm, lồng, túi vận chuyển', 0, 'dem-long-tui-van-chuyen', '2024-06-07__demtron.png', NULL, NULL, 0, 1, '2024-06-07 01:50:10', '2024-06-07 08:18:54'),
(8, 'Cát vệ sinh, dụng cụ vệ sinh', 0, 'cat-ve-sinh-dung-cu-ve-sinh', '2024-06-07__xeng.png', NULL, NULL, 0, 1, '2024-06-07 01:50:37', '2024-06-07 08:19:14'),
(9, 'Đồ chơi chó mèo', 0, 'do-choi-cho-meo', '2024-06-07__bongdochoi.png', NULL, NULL, 0, 1, '2024-06-07 01:50:54', '2024-06-07 08:19:33'),
(10, 'Quần áo chó mèo', 0, 'quan-ao-cho-meo', '2024-06-07__aobong.png', NULL, NULL, 0, 1, '2024-06-07 01:51:10', '2024-06-07 08:19:48');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmt_name` varchar(255) DEFAULT NULL,
  `cmt_email` varchar(255) DEFAULT NULL,
  `cmt_content` text DEFAULT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_product_id` int(11) NOT NULL DEFAULT 0,
  `cmt_admin_id` int(11) NOT NULL DEFAULT 0,
  `cmt_user_id` int(11) NOT NULL DEFAULT 0,
  `cmt_like` int(11) NOT NULL DEFAULT 0,
  `cmt_disk_like` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_code`
--

CREATE TABLE `discount_code` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `d_code` varchar(191) NOT NULL,
  `d_number_code` int(11) NOT NULL DEFAULT 0,
  `d_date_start` datetime DEFAULT NULL,
  `d_date_end` datetime DEFAULT NULL,
  `d_percentage` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_code`
--

INSERT INTO `discount_code` (`id`, `d_code`, `d_number_code`, `d_date_start`, `d_date_end`, `d_percentage`, `created_at`, `updated_at`) VALUES
(2, 'KM1', 6, '2024-06-07 22:12:00', '2024-06-17 22:12:00', 10, '2024-06-07 08:13:03', '2024-06-07 20:00:30');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `e_name` varchar(255) DEFAULT NULL,
  `e_banner` varchar(255) DEFAULT NULL,
  `e_link` varchar(255) DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_3` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_4` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `created_at`, `updated_at`) VALUES
(1, 'Event 1', '2024-06-07__km1.png', 'http', 1, 0, 0, 0, '2024-06-07 05:44:34', '2024-06-07 05:44:34'),
(2, 'Event 2', '2024-06-07__km2.png', 'http', 0, 1, 0, 0, '2024-06-07 05:45:06', '2024-06-07 05:45:06'),
(3, 'Event 3', '2024-06-07__km3.png', 'http', 0, 0, 1, 0, '2024-06-07 05:45:38', '2024-06-07 05:45:38');

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(255) NOT NULL,
  `k_slug` varchar(255) NOT NULL,
  `k_description` varchar(255) DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keywords`
--

INSERT INTO `keywords` (`id`, `k_name`, `k_slug`, `k_description`, `k_hot`, `created_at`, `updated_at`) VALUES
(1, 'Thức ăn', 'thuc-an', NULL, 0, '2024-06-07 05:59:23', '2024-06-07 05:59:23'),
(2, 'Chỗ ở', 'cho-o', NULL, 0, '2024-06-07 05:59:53', '2024-06-07 05:59:53'),
(3, 'Vệ sinh', 've-sinh', NULL, 0, '2024-06-07 06:00:15', '2024-06-07 06:00:15'),
(4, 'Đồ chơi', 'do-choi', NULL, 0, '2024-06-07 06:01:39', '2024-06-07 06:01:39'),
(5, 'Dụng cụ', 'dung-cu', NULL, 0, '2024-06-07 06:02:01', '2024-06-07 06:02:01'),
(6, 'Quần áo', 'quan-ao', NULL, 0, '2024-06-07 06:02:24', '2024-06-07 06:02:24');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mn_name` varchar(255) NOT NULL,
  `mn_slug` varchar(255) NOT NULL,
  `mn_avatar` varchar(255) DEFAULT NULL,
  `mn_banner` varchar(255) DEFAULT NULL,
  `mn_description` varchar(255) DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT 0,
  `mn_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(1, 'Tin khuyến mãi', 'tin-khuyen-mai', NULL, NULL, NULL, 0, 1, '2024-03-01 08:22:49', '2024-06-07 08:22:49');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` int(11) NOT NULL DEFAULT 0,
  `od_product_id` int(11) NOT NULL DEFAULT 0,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` tinyint(4) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(14, 10, 1, 0, 1, 55000, NULL, NULL),
(15, 11, 14, 0, 1, 170000, NULL, NULL),
(16, 12, 1, 0, 1, 55000, NULL, NULL),
(17, 13, 37, 0, 1, 30000, NULL, NULL),
(18, 13, 7, 0, 1, 50000, NULL, NULL),
(19, 14, 1, 0, 11, 55000, NULL, NULL),
(20, 15, 38, 0, 1, 30000, NULL, NULL),
(21, 16, 36, 20, 2, 72000, NULL, NULL),
(22, 17, 7, 0, 1, 50000, NULL, NULL),
(23, 18, 9, 0, 1, 38000, NULL, NULL),
(24, 18, 6, 0, 1, 85000, NULL, NULL);

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_transaction_id` int(11) DEFAULT NULL,
  `p_user_id` int(11) DEFAULT NULL,
  `p_money` double(8,2) DEFAULT NULL COMMENT 'Số tiền thanh toán',
  `p_note` varchar(191) DEFAULT NULL COMMENT 'Nội dung thanh toán',
  `p_transaction_code` varchar(191) NOT NULL,
  `p_vnp_response_code` varchar(255) DEFAULT NULL COMMENT 'Mã phản hồi',
  `p_code_vnpay` varchar(255) DEFAULT NULL COMMENT 'Mã giao dịch vnpay',
  `p_code_bank` varchar(255) DEFAULT NULL COMMENT 'Mã ngân hàng',
  `p_time` datetime DEFAULT NULL COMMENT 'Thời gian chuyển khoản',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `p_transaction_id`, `p_user_id`, `p_money`, `p_note`, `p_transaction_code`, `p_vnp_response_code`, `p_code_vnpay`, `p_code_bank`, `p_time`, `created_at`, `updated_at`) VALUES
(6, 9, 5, 451250.00, 'aaa', '1rZFy6G0Qfc5YyW', '00', '14447610', 'NCB', '2024-06-07 09:18:00', NULL, NULL),
(7, 13, 1, 72000.00, 'Hóa đơn', '8bpFGRO2Sb1nBBw', '00', '14449332', 'NCB', '2024-06-08 10:01:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `producer`
--

CREATE TABLE `producer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pdr_name` varchar(255) NOT NULL,
  `pdr_slug` varchar(255) NOT NULL,
  `pdr_email` varchar(100) NOT NULL,
  `pdr_phone` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `producer`
--

INSERT INTO `producer` (`id`, `pdr_name`, `pdr_slug`, `pdr_email`, `pdr_phone`, `created_at`, `updated_at`) VALUES
(1, 'Thức ăn Thú cưng', 'thuc-an-thu-cung', 'tatc@gmail.com', '0999999999', '2024-06-07 08:13:44', '2024-06-07 08:13:44'),
(2, 'Gia công chỗ ở', 'gia-cong-cho-o', 'choo@gmail.com', '0999999991', '2024-06-07 08:14:21', '2024-06-07 08:14:21'),
(3, 'Dụng cụ tiện ích', 'dung-cu-tien-ich', 'tienich@gmail.com', '0999999999', '2024-06-07 08:14:48', '2024-06-07 08:14:48');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(255) DEFAULT NULL,
  `pro_slug` varchar(255) NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_price_entry` int(11) NOT NULL DEFAULT 0 COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT 0,
  `pro_admin_id` int(11) NOT NULL DEFAULT 0,
  `pro_sale` tinyint(4) NOT NULL DEFAULT 0,
  `pro_avatar` varchar(255) DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_pay` int(11) NOT NULL DEFAULT 0,
  `pro_description` mediumtext DEFAULT NULL,
  `pro_content` text DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0,
  `pro_review_star` int(11) NOT NULL DEFAULT 0,
  `pro_age_review` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT 0,
  `pro_country` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_admin_id`, `pro_sale`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_country`, `updated_at`) VALUES
(1, 'Snack Hỗn Hợp Cho Chó Bowwow Hàn Quốc', 'snack-hon-hop-cho-cho-bowwow-han-quoc', 55000, 0, 1, 0, 0, '2024-06-07__snack-dog1.png', 7, 1, 1, 15, NULL, '<p><span style=\"font-size:12px\"><strong>M&Ocirc; TẢ SẢN PHẨM</strong></span></p>\r\n\r\n<h1><span style=\"font-size:12px\"><em><u><a href=\"http://kunmiu.vn/\"><strong>Snack hỗn hợp cho ch&oacute; Bowwow H&agrave;n Quốc</strong></a>&nbsp;</u></em>l&agrave; thức ăn cao cấp được chế biến từ nguy&ecirc;n liệu tươi ngon, đảm bảo sẽ khiến c&uacute;n y&ecirc;u th&iacute;ch m&ecirc;.</span></h1>\r\n\r\n<h2><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>Snack hỗn hợp cho ch&oacute; Bowwow H&agrave;n Quốc</strong></em></u></a>&nbsp;nổi tiếng gi&agrave;u&nbsp;vitamin A, B1, B2, C, E, canxi, phốt pho, sắt. Loại snack cung cấp đầy đủ protein, kho&aacute;ng chất cho c&uacute;n để ph&aacute;t triển thể trọng tối đa.&nbsp;Ph&ocirc; mai bổ sung canxi ch&oacute; con v&agrave; ch&oacute; mẹ bị biếng ăn sau khi sinh con. L&uacute;a m&igrave;, rau, tảo biển n&acirc;u, xơ đậu tương gi&agrave;u chất xơ tốt cho cơ thể.&nbsp;</span></h2>\r\n\r\n<h3><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>Snack hỗn hợp cho ch&oacute; Bowwow H&agrave;n Quốc</strong></em></u></a>&nbsp;l&agrave; thức ăn nhẹ l&yacute; tưởng cho mọi loại ch&oacute;, mang lại&nbsp;cảm gi&aacute;c ngon miệng, gi&uacute;p th&uacute; cưng hứng khởi hơn trong qu&aacute; tr&igrave;nh huấn luyện.</span></h3>', 0, 0, 0, '2024-06-07 06:50:14', 20, 1, '2024-06-08 00:52:20'),
(2, 'Bánh Thưởng Phô Mai Viên Mềm Bowwow (Hàn Quốc) Cho Chó 100g', 'banh-thuong-pho-mai-vien-mem-bowwow-han-quoc-cho-cho-100g', 70000, 0, 1, 0, 0, '2024-06-07__banh-dog1.png', 7, 1, 1, 4, NULL, '<p><span style=\"font-size:12px\"><strong>M&Ocirc; TẢ SẢN PHẨM</strong></span></p>\n\n<h1><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>B&aacute;nh Thưởng Ph&ocirc; Mai Vi&ecirc;n Mềm Bowwow (H&agrave;n Quốc) Cho Ch&oacute; 100g</strong></em></u></a>&nbsp;nổi tiếng thơm ngon tuyệt hảo,&nbsp;ph&ugrave;&nbsp;hợp cho tất cả c&aacute;c giống v&agrave; tuổi của con ch&oacute;.</span></h1>\n\n<h2><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>B&aacute;nh Thưởng Ph&ocirc; Mai Vi&ecirc;n Mềm Bowwow (H&agrave;n Quốc) Cho Ch&oacute; 100g</strong></em></u></a>&nbsp;được l&agrave;m từ protein thực vật v&agrave; c&aacute;c th&agrave;nh phần chất lượng cao. Sản phẩm đảm bảo mang đến một bữa ăn tuyệt vời cho th&uacute; cưng. Với kết cấu mềm, b&aacute;nh thưởng gi&uacute;p ch&oacute; c&oacute; thể nhai gặm dễ d&agrave;ng, từ đ&oacute; loại bỏ mảng b&aacute;m tối đa, giảm h&ocirc;i miệng ở c&uacute;n.</span></h2>\n\n<h3><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>B&aacute;nh Thưởng Ph&ocirc; Mai Vi&ecirc;n Mềm Bowwow (H&agrave;n Quốc) Cho Ch&oacute; 100g</strong></em></u></a>&nbsp;hiện c&oacute;&nbsp;2 hương vị l&agrave; ph&ocirc; mai v&agrave; c&agrave; rốt.</span></h3>', 0, 0, 5, '2024-06-07 06:56:03', 23, 1, '2024-06-07 20:03:44'),
(3, 'Pate Thịt Hầm Cao Cấp Bonbon', 'pate-thit-ham-cao-cap-bonbon', 50000, 0, 1, 0, 0, '2024-06-07__pate-dog1.png', 1, 0, 1, 0, NULL, '<p><span style=\"font-size:12px\"><strong>M&Ocirc; TẢ SẢN PHẨM</strong></span></p>\r\n\r\n<p><span style=\"font-size:12px\"><strong>C&oacute; Bonbon, Boss&nbsp;ăn ngon mỗi ng&agrave;y!</strong></span></p>\r\n\r\n<h1><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>Pate thịt hầm cao cấp Bonbon</strong></em></u></a>&nbsp;l&agrave; loại thức ăn cao cấp đặc biệt thơm ngon với c&ocirc;ng thức 90% từ thịt c&aacute; t&ocirc;m thật&nbsp;chất lượng v&agrave;&nbsp;10% rau củ gi&agrave;u dinh dưỡng.&nbsp;&nbsp;</span></h1>\r\n\r\n<h2><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>Pate thịt hầm cao cấp Bonbon</strong></em></u></a>&nbsp;được l&agrave;m với kĩ thuật hầm nhừ v&agrave; c&ocirc; đặc nước cốt thịt c&aacute;&nbsp;gi&uacute;p chất dinh dưỡng được giữ lại ho&agrave;n hảo. C&aacute;c loại rau củ như c&agrave; rố, b&iacute; đỏ, cỏ l&uacute;a mạch lại được nấu vừa đủ để giữ lại c&aacute;c loại vitamin v&agrave; kho&aacute;ng chất tối đa. Điều n&agrave;y gi&uacute;p Pate thịt hầm cao cấp Bonbon c&oacute; m&ugrave;i vị tuyệt hảo, đảm bảo c&aacute;c Boss th&iacute;ch m&ecirc;.</span></h2>\r\n\r\n<p><span style=\"font-size:12px\">Với tỉ lệ 90 - 10 (thịt c&aacute; t&ocirc;m - rau củ quả), loại Pate thịt hầm n&agrave;y sẽ bổ sung lượng Protein dồi d&agrave;o để th&uacute; cưng ph&aacute;t triển thể trọng to&agrave;n diện. Hệ miễn dịch của c&uacute;n miu cũng được tăng cường tối đa nhờ v&agrave;o c&aacute;c loại vitamin v&agrave; kho&aacute;ng chất c&oacute; trong rau củ quả tươi ngon. Đặc biệt, hệ ti&ecirc;u ho&aacute; của th&uacute; cưng cũng sẽ khoẻ mạnh hơn nhờ h&agrave;m lượng chất xơ cao.</span></p>\r\n\r\n<h3><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>Pate thịt hầm cao cấp Bonbon</strong></em></u></a>&nbsp;c&oacute; thể bảo quản ở ngăn m&aacute;t từ 3 - 4 ng&agrave;y v&agrave; 3 - 4 tuần ở ngăn đ&aacute;. K&uacute;n Miu c&oacute; rất nhiều hương vi đa dạng để c&aacute;c bạn lựa chọn:</span></h3>\r\n\r\n<p><span style=\"font-size:12px\">G&agrave; v&agrave; b&iacute; đỏ, G&agrave; v&agrave; c&agrave; rốt, G&agrave; v&agrave; c&aacute; nục, C&aacute; nục, C&aacute; + cỏ l&uacute;a mạch, G&agrave; + c&oacute; l&uacute;a mạch, G&agrave; + t&ocirc;m.</span></p>', 0, 0, 0, '2024-06-07 06:59:14', 22, 1, '2024-06-07 06:59:14'),
(4, 'Thịt Que Cho Chó Bow Wow 150g', 'thit-que-cho-cho-bow-wow-150g', 65000, 0, 1, 0, 0, '2024-06-07__thit-que1.png', 2, 0, 1, 1, NULL, '<p><span style=\"font-size:12px\"><strong>M&Ocirc; TẢ SẢN PHẨM</strong></span></p>\r\n\r\n<h1><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>C&aacute; hồi que cho ch&oacute; Bow wow 150g</strong></em></u></a>&nbsp;l&agrave; b&aacute;nh thưởng nổi tiếng với h&agrave;m lượng protein cao, hỗ trợ hệ ti&ecirc;u h&oacute;a v&agrave; khả năng hấp thụ dưỡng chất ở th&uacute; cưng.</span></h1>\r\n\r\n<h2><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>C&aacute; hồi que cho ch&oacute; Bow wow 150g</strong></em></u></a>&nbsp;chứa&nbsp;nhiều vitamin v&agrave; kho&aacute;ng chất gi&uacute;p th&uacute; cưng ti&ecirc;u ho&aacute; tốt. Kh&ocirc;ng những vậy, l&agrave;n da v&agrave; bộ l&ocirc;ng c&uacute;n miu cũng &oacute;ng ả, mượt m&agrave; hơn bao giờ hết. Với hương vị c&aacute; hồi thơm ngon thượng hạng, sản phẩm th&iacute;ch hợp trong việc huấn luyện&nbsp;v&agrave; khen thưởng cho ch&oacute;.</span></h2>\r\n\r\n<h3><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>C&aacute; hồi que cho ch&oacute; Bow wow 150g</strong></em></u></a>&nbsp;đảm bảo an to&agrave;n tuyệt đối, được sản xuất&nbsp;với những ti&ecirc;u chuẩn vệ sinh h&agrave;ng đầu,&nbsp;được tiệt tr&ugrave;ng ở nhiệt độ cao.</span></h3>\r\n\r\n<p>&nbsp;</p>', 0, 0, 0, '2024-06-07 07:01:15', 19, 1, '2024-06-07 07:01:15'),
(5, 'Phô Mai Cuộn Cho Chó Bow Wow Cheese Roll 120g', 'pho-mai-cuon-cho-cho-bow-wow-cheese-roll-120g', 60000, 0, 1, 0, 0, '2024-06-07__phomai-cuon1.png', 1, 0, 1, 0, NULL, '<p><span style=\"font-size:12px\"><strong>M&Ocirc; TẢ SẢN PHẨM</strong></span></p>\r\n\r\n<h1><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>Ph&ocirc; mai cuộn cho ch&oacute; Bow wow cheese roll 120g</strong></em></u></a>&nbsp;l&agrave; thức ăn&nbsp;bổ dưỡng cho ch&oacute; v&agrave; m&egrave;o, nhất l&agrave; ch&oacute; con v&agrave; ch&oacute; mẹ sau khi sinh.</span></h1>\r\n\r\n<h2><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><em><u><strong>Ph&ocirc; mai cuộn cho ch&oacute; Bow wow cheese roll 120g</strong></u></em></a>&nbsp;nổi tiếng gi&uacute;p giảm tỷ lệ cholesterol xấu trong huyết thanh, ngăn ngừa b&eacute;o ph&igrave; ở th&uacute; cưng. B&ecirc;n cạnh đ&oacute;, sản phẩm c&ograve;n gi&uacute;p cải thiện chức năng gan. Đặc biệt kh&ocirc;ng c&oacute; hại cho tim v&agrave; thận nhờ lượng muối thấp, từ đ&oacute; k&eacute;o d&agrave;i tuổi thọ của th&uacute; cưng.</span></h2>\r\n\r\n<h3><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>Ph&ocirc; mai cuộn cho ch&oacute; Bow wow cheese roll 120g</strong></em></u></a>&nbsp;rất th&iacute;ch hợp để l&agrave;m b&aacute;nh thưởng huấn luyện ch&oacute; m&egrave;o với 2 hương vị thơm ngon l&agrave; thịt g&agrave; v&agrave; c&aacute; hồi.</span></h3>\r\n\r\n<p>&nbsp;</p>', 0, 0, 0, '2024-06-07 07:03:38', 20, 1, '2024-06-07 07:03:38'),
(6, 'Thức Ăn Hạt Mềm Cho Chó Con Zenith Puppy 500g', 'thuc-an-hat-mem-cho-cho-con-zenith-puppy-500g', 85000, 0, 1, 0, 0, '2024-06-07__hat-mem2.png', 1, 1, 1, 1, NULL, '<p><span style=\"font-size:12px\"><strong>M&Ocirc; TẢ SẢN PHẨM</strong></span></p>\r\n\r\n<h1><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><em><u><strong>Thức ăn hạt mềm cho ch&oacute; con Zenith Puppy</strong></u></em></a>&nbsp;l&agrave; loại thức ăn mềm thơm ngon&nbsp;tuyệt vời d&agrave;nh cho ch&oacute; con, được bổ sung Beta-glucan gi&uacute;p tăng cường sức khoẻ ti&ecirc;u ho&aacute;&nbsp;v&agrave; hệ miễn dịch cho th&uacute;&nbsp;cưng.</span></h1>\r\n\r\n<h2><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>Thức ăn hạt mềm cho ch&oacute; con Zenith Puppy</strong></em></u></a>&nbsp;được chế biến từ thịt nạc g&agrave;&nbsp;thật&nbsp;tươi r&uacute;t xương gi&agrave;u dinh dưỡng. Hạt mềm&nbsp;cung cấp độ ẩm cao v&agrave; lượng muối thấp, thơm ngon, dễ nhai, dễ ti&ecirc;u h&oacute;a v&agrave; tốt cho sức khỏe ch&oacute; con. Đ&acirc;y ch&iacute;nh l&agrave;&nbsp;một b&iacute; quyết đặc biệt của c&aacute;c quốc gia ti&ecirc;n&nbsp;phong trong ng&agrave;nh c&ocirc;ng nghiệp thức ăn cao cấp.</span></h2>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:12px\"><strong>Grain-Free:&nbsp;</strong>ho&agrave;n to&agrave;n kh&ocirc;ng chứa ngũ cốc, l&uacute;a m&igrave;, gạo, gi&uacute;p cải thiện t&igrave;nh trạng dị ứng ở ch&oacute;.&nbsp;</span></li>\r\n	<li><span style=\"font-size:12px\">Chứa&nbsp;<strong>&beta;-glucan</strong>&nbsp;v&agrave;&nbsp;<strong>dừa</strong>&nbsp;gi&uacute;p hệ ti&ecirc;u ho&aacute; khoẻ mạnh, tăng khả năng hấp thụ dinh dưỡng v&agrave; cải thiện miễn dịch của ch&oacute;.&nbsp;</span></li>\r\n	<li><span style=\"font-size:12px\"><strong>Thịt g&agrave; r&uacute;t xương</strong>,&nbsp;<strong>Thịt cừu</strong>,&nbsp;<strong>Chondroitin</strong>&nbsp;v&agrave;&nbsp;<strong>Glucosamine</strong>&nbsp;gi&uacute;p cung cấp nguồn dinh dưỡng dồi d&agrave;o v&agrave; ph&aacute;t triển khung xương chắc khoẻ.</span></li>\r\n</ul>\r\n\r\n<h3><span style=\"font-size:12px\">Với&nbsp;<a href=\"http://kunmiu.vn/\"><u><em><strong>Thức ăn hạt mềm cho ch&oacute; con Zenith Puppy</strong></em></u></a>, bạn chỉ cần chia bữa ăn từ 2-3 lần trong ng&agrave;y, kh&ocirc;ng cần thiết phải bổ sung th&ecirc;m vitamin v&agrave; kho&aacute;ng chất kh&aacute;c.&nbsp;</span></h3>\r\n\r\n<p><span style=\"font-size:12px\">Sản phẩm c&oacute; th&agrave;nh phần ch&iacute;nh từ:</span></p>\r\n\r\n<p><span style=\"font-size:12px\">Thịt ức gà, bột gà, khoai tây, tinh bột mì, d&acirc;̀u gà, ch&acirc;́t nhũ hoá, d&acirc;̀u cá h&ocirc;̀i, beta glucan, bột dừa, canxi cacbonat, chondroitin, glucosamine, chi&ecirc;́t xu&acirc;́t Yuca, L-Carnitine, lysine, ch&acirc;́t xơ Levan, bột cà r&ocirc;́t, chlorella, h&ocirc;̃n hợp vitamin và khoáng ch&acirc;́t, kali sorbate, ch&acirc;́t đi&ecirc;̀u chỉnh độ axit, màu đỏ (màu tự nhiên).</span></p>', 0, 0, 0, '2024-06-07 07:19:02', 20, 1, '2024-06-10 05:35:20'),
(7, 'Xương Gặm Cho Chó 7Dental Effects 160g', 'xuong-gam-cho-cho-7dental-effects-160g', 50000, 0, 1, 0, 0, '2024-06-07__xuong-gam1.png', 2, 0, 1, 2, NULL, '<p><span style=\"font-size:12px\"><strong>M&Ocirc; TẢ SẢN PHẨM</strong></span></p>\r\n\r\n<h1><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>Xương gặm cho ch&oacute; 7Dental Effects 160g</strong></em></u></a>&nbsp;l&agrave; loại xương gặm nổi tiếng gi&uacute;p bổ sung canxi tối đa v&agrave; loại bỏ mảng b&aacute;m cực tốt.</span></h1>\r\n\r\n<h2><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>Xương gặm cho ch&oacute; 7Dental Effects 160g</strong></em></u></a>&nbsp;c&oacute; 7 c&ocirc;ng dụng vượt trội:</span></h2>\r\n\r\n<p><span style=\"font-size:12px\">1. Vệ sinh răng miệng to&agrave;n diện</span></p>\r\n\r\n<p><span style=\"font-size:12px\">2. Loại bỏ 99%&nbsp;cao răng</span></p>\r\n\r\n<p><span style=\"font-size:12px\">3. Ngăn chặn sự t&iacute;ch tụ cao răng</span></p>\r\n\r\n<p><span style=\"font-size:12px\">4. L&agrave;m&nbsp;hơi thở thơm m&aacute;t, giảm m&ugrave;i h&ocirc;i miệng của c&uacute;n&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:12px\">5. Tăng khả năng ti&ecirc;u h&oacute;a&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:12px\">6. Chống th&uacute; cưng cắn ph&aacute; đồ đạc bởi thiết kế xương cho&nbsp;thời gian nhai l&acirc;u d&agrave;i</span></p>\r\n\r\n<p><span style=\"font-size:12px\">7. Gi&uacute;p răng chắc khoẻ, s&aacute;ng b&oacute;ng</span></p>\r\n\r\n<h3><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>Xương gặm cho ch&oacute; 7Dental Effects 160g</strong></em></u></a>&nbsp;ch&iacute;nh l&agrave; lựa chọn số 1 cho c&uacute;n y&ecirc;u nh&agrave; bạn. Sản phẩm c&oacute; 4 hương vị: C&aacute; hồi, b&ograve; ph&ocirc; mai, quả bơ v&agrave; vị sữa để c&aacute;c bạn thoả sức lựa chọn.</span></h3>', 0, 0, 0, '2024-06-07 07:20:35', 20, 1, '2024-06-08 05:39:04'),
(8, 'Súp thưởng cho mèo Chupa Creamy 56g', 'sup-thuong-cho-meo-chupa-creamy-56g', 40000, 0, 2, 0, 0, '2024-06-07__sup1.png', 5, 1, 1, 3, NULL, '<p><span style=\"font-size:12px\"><strong>M&Ocirc; TẢ SẢN PHẨM</strong></span></p>\r\n\r\n<h1><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>S&uacute;p thưởng cho m&egrave;o Chupa Creamy 56g</strong></em></u></a>&nbsp;nổi tiếng tr&ecirc;n thị trường với 100% thịt thật cho m&egrave;o y&ecirc;u, bổ sung đầy đủ protein, vitamin v&agrave; kho&aacute;ng chất.</span></h1>\r\n\r\n<h2><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>S&uacute;p thưởng cho m&egrave;o Chupa Creamy 56g&nbsp;</strong></em></u></a>với dạng kem mềm mịn nhờ c&ocirc;ng nghệ xay hiện đại, đảm bảo khiến m&egrave;o dễ ăn cực k&igrave;. Với th&agrave;nh phần kh&ocirc;ng chứa ngũ cốc, kh&ocirc;ng chất bảo quản, kh&ocirc;ng phụ gia, đ&acirc;y l&agrave; s&uacute;p thưởng rất tốt cho hệ ti&ecirc;u ho&aacute;. B&ecirc;n cạnh đ&oacute;, lượng taurin dồi d&agrave;o sẽ khiến tr&iacute; n&atilde;o m&egrave;o ph&aacute;t triển tối đa.</span></h2>\r\n\r\n<h3><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>S&uacute;p thưởng cho m&egrave;o Chupa Creamy 56g</strong></em></u></a>&nbsp;hiện c&oacute; 8 hương vị để bạn thoả sức lựa chọn cho c&aacute;c Boss:&nbsp;C&aacute; Ngừ v&agrave; Mực, G&agrave; v&agrave; C&aacute; hồi, Cua v&agrave; C&aacute; ngừ, C&aacute; ngừ v&agrave; C&aacute; hồi, G&agrave; v&agrave; T&ocirc;m, C&aacute; hồi v&agrave; C&aacute; tr&aacute;p, C&aacute; ngừ, C&aacute; ngừ v&agrave; S&ograve;.&nbsp;</span></h3>', 0, 0, 0, '2024-06-07 07:22:56', 19, 1, '2024-06-07 07:22:56'),
(9, 'Pate Cho Mèo Snappy Tom Lon 400g', 'pate-cho-meo-snappy-tom-lon-400g', 38000, 0, 2, 0, 0, '2024-06-07__pate1.png', 1, 1, 1, 1, NULL, '<p><span style=\"font-size:12px\"><strong>M&Ocirc; TẢ SẢN PHẨM</strong></span></p>\r\n\r\n<h1><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>Pate cho m&egrave;o Snappy Tom Lon 400g</strong></em></u></a>&nbsp;l&agrave; thức ăn mềm ho&agrave;n chỉnh,&nbsp;thơm ngon d&agrave;nh cho m&egrave;o từ 6 th&aacute;ng tuổi với tới 10 hương vị đa dạng.</span></h1>\r\n\r\n<h2><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>Pate cho m&egrave;o Snappy Tom Lon 400g</strong></em></u></a>&nbsp;nổi tiếng với chất lượng vượt trội,&nbsp;nguy&ecirc;n liệu tươi ngon hảo hạng như c&aacute; hồi, c&aacute; ngừ, thịt cừu,... Loại pate n&agrave;y bổ sung lượng protein dồi d&agrave;o để m&egrave;o trưởng th&agrave;nh khoẻ mạnh. Lượng taurine, vitamin v&agrave; kho&aacute;ng chất gi&uacute;p m&egrave;o ph&aacute;t triển to&agrave;n diện về tr&iacute; n&atilde;o v&agrave; hệ miễn dịch để chống lại bệnh tật.</span></h2>\r\n\r\n<h3><span style=\"font-size:12px\">Hướng dẫn sử dụng&nbsp;<a href=\"http://kunmiu.vn/\"><u><em><strong>Pate cho m&egrave;o Snappy Tom Lon 400g</strong></em></u></a>:</span></h3>\r\n\r\n<p><span style=\"font-size:12px\">- D&ugrave;ng 1/2 lon 1 ng&agrave;y, chia đều mỗi bữa. Bạn c&oacute; thể điều chỉnh theo độ tuổi, c&acirc;n nặng của m&egrave;o</span></p>\r\n\r\n<p><span style=\"font-size:12px\">- N&ecirc;n d&ugrave;ng lu&ocirc;n sau khi mở nắp hoặc, bảo quản trong tủ lạnh tối đa 3 ng&agrave;y</span></p>\r\n\r\n<p><span style=\"font-size:12px\">Sản phẩm c&oacute; 10 hương vị để bạn thoả sức thay đổi bữa ăn cho m&egrave;o. Đảm bảo&nbsp;an to&agrave;n tuyệt đối,&nbsp;kh&ocirc;ng chứa&nbsp;gluten, phẩm m&agrave;u v&agrave; chất bảo quản.</span></p>', 0, 0, 0, '2024-06-07 07:24:47', 20, 1, '2024-06-10 05:35:20'),
(10, 'Thức Ăn Cho Mèo Puria Proplan Salmon', 'thuc-an-cho-meo-puria-proplan-salmon', 20000, 0, 2, 0, 0, '2024-06-07__thucan1.png', 2, 1, 1, 0, NULL, '<p><span style=\"font-size:12px\"><strong>M&Ocirc; TẢ SẢN PHẨM</strong></span></p>\r\n\r\n<h1><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>Thức ăn cho m&egrave;o Puria Proplan Salmon</strong></em></u></a>&nbsp;l&agrave; thức ăn với c&ocirc;ng thức dinh dưỡng d&agrave;nh cho m&egrave;o trưởng th&agrave;nh, với hương vị thơm ngon thuyết phục được cả những ch&uacute; m&egrave;o kh&oacute; t&iacute;nh nhất.</span></h1>\r\n\r\n<h2><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>Thức ăn cho m&egrave;o Puria Proplan Salmon</strong></em></u></a>&nbsp;nổi tiếng với c&ocirc;ng thức dinh dưỡng dồi d&agrave;o kho&aacute;ng chất v&agrave; vitamin gi&uacute;p tăng cường sức khoẻ hệ miễn dịch. B&ecirc;n cạnh đ&oacute;, lượng protein dồi d&agrave;o sẽ gi&uacute;p m&egrave;o y&ecirc;u ph&aacute;t triển c&acirc;n nặng tối đa. Sản phẩm bổ sung dưỡng chất gi&uacute;p da v&agrave; l&ocirc;ng của th&uacute; cưng&nbsp;lu&ocirc;n &oacute;ng ả v&agrave; mượt m&agrave;.</span></h2>\r\n\r\n<h3><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>Thức ăn cho m&egrave;o Puria Proplan Salmon</strong></em></u></a>&nbsp;n&ecirc;n<strong>&nbsp;</strong>được bảo&nbsp;quản ở nơi kh&ocirc; r&aacute;o v&agrave; tho&aacute;ng m&aacute;t.</span></h3>', 0, 0, 0, '2024-06-07 07:25:55', 23, 1, '2024-06-07 07:25:55'),
(11, 'Bánh Thưởng Cho Mèo USA Juicy Bites 11,3g', 'banh-thuong-cho-meo-usa-juicy-bites-113g', 45000, 0, 2, 0, 0, '2024-06-07__banh1.png', 0, 0, 1, 0, NULL, '<p><span style=\"font-size:12px\"><strong>M&Ocirc; TẢ SẢN PHẨM</strong></span></p>\r\n\r\n<h1><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>B&aacute;nh thưởng cho m&egrave;o USA Juicy Bites 11,3g</strong></em></u></a>&nbsp;nổi tiếng thơm ngon với những hương vị đặc biệt tươi sống từ s&ograve; điệp, mực, ngao, t&ocirc;m sẽ khiến m&egrave;o nh&agrave; bạn m&ecirc; mẩn.</span></h1>\r\n\r\n<h2><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>B&aacute;nh thưởng cho m&egrave;o USA Juicy Bites 11,3g</strong></em></u></a>&nbsp;l&agrave; thương hiệu đến từ Mỹ, nổi tiếng với chất lượng tuyệt vời v&agrave; c&ocirc;ng nghệ sản xuất hiện đại đem đến sự bảo to&agrave;n dinh dưỡng cho thức ăn m&egrave;o.</span></h2>\r\n\r\n<h3><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>B&aacute;nh thưởng cho m&egrave;o USA Juicy Bites 11,3g</strong></em></u></a>&nbsp;gi&uacute;p k&iacute;ch th&iacute;ch vị gi&aacute;c khiến m&egrave;o tiết ra nhiều dịch vị v&agrave; thấy ngon miệng hơn. B&ecirc;n cạnh đ&oacute;, lượng protein được bổ sung dồi d&agrave;o khiến m&egrave;o y&ecirc;u ph&aacute;t triển to&agrave;n diện.</span></h3>\r\n\r\n<p><span style=\"font-size:12px\">Sản phẩm c&oacute; tới&nbsp;5 hương vị đa dạng để bạn thoải sức lựa chọn: c&aacute; ngừ &amp; g&agrave;, c&aacute; &amp; ngao, s&ograve; điệp &amp; cua,&nbsp;t&ocirc;m &amp; hải sản,&nbsp;nước thịt &amp; mực.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">Chỉ ti&ecirc;u chất lượng:</span></p>\r\n\r\n<p><span style=\"font-size:12px\">Độ ẩm &le; 71%; Protein &ge; 24%; B&eacute;o th&ocirc; &ge; 2.5%; Xơ th&ocirc; &le; 0.5%.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">Hướng dẫn sử dụng: Cho ăn như b&aacute;nh thưởng, sản phẩm n&agrave;y kh&ocirc;ng d&ugrave;ng thay thế bữa ăn ch&iacute;nh.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">Bảo quản: Để&nbsp;v&agrave;o tủ lạnh sau khi mở g&oacute;i.</span></p>', 0, 0, 0, '2024-06-07 07:27:10', 15, 1, NULL),
(12, 'Xúc Xích Hun Khói Cho Mèo Bow Wow 70g', 'xuc-xich-hun-khoi-cho-meo-bow-wow-70g', 65000, 0, 2, 0, 0, '2024-06-07__xucxich1.png', 0, 0, 1, 0, NULL, '<p><span style=\"font-size:12px\"><strong>M&Ocirc; TẢ SẢN PHẨM</strong></span></p>\r\n\r\n<h1><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>X&uacute;c x&iacute;ch hun kh&oacute;i cho m&egrave;o Bow wow 70g</strong></em></u></a>&nbsp;thượng hạng, bổ dưỡng nổi tiếng tốt cho sức khoẻ của m&egrave;o y&ecirc;u.</span></h1>\r\n\r\n<h2><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>X&uacute;c x&iacute;ch hun kh&oacute;i cho m&egrave;o Bow wow 70g</strong></em></u></a>&nbsp;được l&agrave;m từ ph&ocirc; mai tươi, thịt tươi với ti&ecirc;u chuẩn như thức ăn của người. Với h&agrave;m lượng&nbsp;DHA v&agrave; omega-3 dồi d&agrave;o, tr&iacute; n&atilde;o m&egrave;o sẽ được ph&aacute;t triển to&agrave;n diện. Kh&ocirc;ng những vậy da v&agrave; l&ocirc;ng ch&uacute;ng cũng được nu&ocirc;i dưỡng mềm mượt, &oacute;ng ả. H&agrave;m lượng taurine cao v&ocirc; c&ugrave;ng tốt cho thị lực v&agrave; tim mạch.&nbsp;</span></h2>\r\n\r\n<h3><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>X&uacute;c x&iacute;ch hun kh&oacute;i cho m&egrave;o Bow wow 70g</strong></em></u></a>&nbsp;c&oacute; dạng mềm, ph&ugrave; hợp với mọi lứa tuổi. Sản phẩm c&oacute; 2 hương vị thơm ngon l&agrave; c&aacute; ngừ v&agrave; c&aacute; hồi.</span></h3>', 0, 0, 0, '2024-06-07 07:28:27', 30, 1, NULL),
(13, 'Súp Thưởng Cho Mèo Ciao 4 Thanh 14g*4', 'sup-thuong-cho-meo-ciao-4-thanh-14g4', 35000, 0, 2, 0, 0, '2024-06-07__supthuong1.png', 0, 0, 1, 0, NULL, '<h2><span style=\"font-size:12px\"><strong>M&ocirc; tả sản phẩm</strong></span></h2>\r\n\r\n<h2><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><em><strong>S&uacute;p thưởng cho m&egrave;o Ciao</strong></em></a>&nbsp;inaba l&agrave; d&ograve;ng sản phẩm s&uacute;p thưởng được ưa chuộng nhất tại Nhật Bản v&agrave; Singapore , do m&ugrave;i vị hấp dẫn, nguy&ecirc;n liệu tươi ngon hảo hạng c&ugrave;ng t&iacute;nh sử dụng tiện lợi..</span></h2>\r\n\r\n<p><span style=\"font-size:12px\">S&uacute;p thưởng cho m&egrave;o sẽ hỗ trợ hiệu quả vấn đề b&uacute;i l&ocirc;ng, giảm m&ugrave;i h&ocirc;i khi đi ngo&agrave;i, An to&agrave;n cho hệ ti&ecirc;u h&oacute;a nhạy cảm của m&egrave;o.</span></p>\r\n\r\n<h3><span style=\"font-size:12px\">Sản phẩm được chế biến theo dạng cream mềm để M&egrave;o c&oacute; thể hấp thụ nhanh hơn chất dinh dưỡng. Đặc biệt hơn,&nbsp;<a href=\"http://kunmiu.vn/\"><em><strong>S&uacute;p thưởng cho m&egrave;o Ciao</strong></em></a>&nbsp;với c&ocirc;ng thức gi&agrave;u độ ẩm cung cấp th&ecirc;m lượng nước dồi d&agrave;o sẽ gi&uacute;p hạn chế tối đa c&aacute;c bệnh về sỏi thận, tiết niệu&hellip;&nbsp;</span></h3>\r\n\r\n<p><span style=\"font-size:12px\">C&ocirc;ng thức Giầu tau rin v&agrave; chất dinh dưỡng kh&aacute;c gi&uacute;p mắt m&egrave;o s&aacute;ng hơn, l&ocirc;ng b&oacute;ng mượt hơn</span></p>\r\n\r\n<p><span style=\"font-size:12px\">Sản phẩm c&oacute; rất nhiều vị để bạn lựa chọn cho ch&uacute; m&egrave;o nh&agrave; bạn như vị c&aacute; ngừ, g&agrave;, s&ograve; điệp, c&aacute; hồi ...</span></p>', 0, 0, 0, '2024-06-07 07:30:00', 40, 1, '2024-06-07 07:30:56'),
(14, 'Sữa Bột Cho Chó Dr.Kyan Predogen (Sb) 400g', 'sua-bot-cho-cho-drkyan-predogen-sb-400g', 170000, 0, 3, 0, 0, '2024-06-07__sua-cho1.png', 1, 0, 1, 1, NULL, '<p><span style=\"font-size:12px\"><strong>M&Ocirc; TẢ SẢN PHẨM</strong></span></p>\r\n\r\n<p><span style=\"font-size:12px\">Đối với ch&oacute; y&ecirc;u sữa đ&oacute;ng một vai tr&ograve; rất quan trọng sau khi ch&agrave;o đời v&agrave; trong cả qu&aacute; tr&igrave;nh ph&aacute;t triển sau n&agrave;y, sữa c&oacute; thể cung cấp những dưỡng chất đặc biệt m&agrave; c&aacute;c thực phẩm kh&aacute;c kh&ocirc;ng c&oacute;.</span></p>\r\n\r\n<h1><span style=\"font-size:12px\"><a href=\"http://%08kunmiu.vn/\"><u><em><strong>Sữa bột cho ch&oacute; Dr.Kyan Predogen</strong></em></u></a>&nbsp;được sản xuất theo c&ocirc;ng thức của WONDERLIFE PHARMA (Mỹ) l&agrave; một thực phẩm bổ dưỡng cho ch&oacute; y&ecirc;u của bạn ngo&agrave;i những thức ăn th&ocirc;ng thường, gi&uacute;p ch&oacute; y&ecirc;u cảm thấy ngon miệng hơn, bồi bổ cơ thể v&agrave; cung cấp những thứ cần thiết để ph&aacute;t triển to&agrave;n diện.</span></h1>\r\n\r\n<h2><span style=\"font-size:12px\"><strong>Dinh dưỡng trong&nbsp;<a href=\"http://%08kunmiu.vn/\"><u><em>Sữa bột cho ch&oacute; Dr.Kyan Predogen</em></u></a></strong><br />\r\n- Canxi nano v&agrave; vitamin D : K&iacute;ch thước si&ecirc;u nhỏ&nbsp; gi&uacute;p hấp thụ tối ưu v&agrave;o xương, gi&uacute;p xương v&agrave; rang chắc khỏe, đặc biệt kh&ocirc;ng tạo ra sỏi thận như thức ăn th&ocirc;ng thường.<br />\r\n- Vitamin A : Tốt cho mắt v&agrave; ngăn biến chứng v&otilde;ng mạc.<br />\r\n-&nbsp;Biotine : Gi&uacute;p cho da khỏe mạnh v&agrave; bộ l&ocirc;ng b&oacute;ng mượt.<br />\r\n- Lnulin :chất xơ tự nhi&ecirc;n gi&uacute;p hệ ti&ecirc;u h&oacute;a khỏe mạnh.<br />\r\n- Lysine : K&iacute;ch th&iacute;ch th&egrave;m ăn<br />\r\n- Folic acid : Hỗ trợ ph&aacute;t triển tr&iacute; n&atilde;o.</span></h2>\r\n\r\n<h3><span style=\"font-size:12px\"><strong>Hướng dẫn sử dụng&nbsp;</strong><a href=\"http://kunmiu.vn/\"><em><strong>Sữa bột cho ch&oacute; Dr.Kyan Predogen</strong></em></a><strong>:</strong></span></h3>\r\n\r\n<p><span style=\"font-size:12px\"><em>*Pha với nước ấm khoảng 40 - 50&deg;C</em></span></p>\r\n\r\n<p><span style=\"font-size:12px\"><strong>Ch&oacute;&nbsp;con dưới 1 th&aacute;ng tuổi</strong>: H&ograve;a 1 muỗng sữa bột ( khoảng 5gr ) v&agrave;o 10ml nước ấm, chia th&agrave;nh 4-6 lần, dung b&igrave;nh cho b&uacute; hoặc để m&egrave;o tự ăn hết trong ng&agrave;y.<br />\r\n<strong>Ch&oacute; con từ 1 &ndash; 2&nbsp; th&aacute;ng tuổi:</strong>&nbsp;H&ograve;a&nbsp; 2&nbsp;muỗng sữa bột (khoảng 10gr) với 20ml nước ấm, chia th&agrave;nh 3- 4 lần ăn trong ng&agrave;y.<br />\r\n<strong>Ch&oacute;&nbsp;tr&ecirc;n 2 th&aacute;ng tuổi:&nbsp;</strong>Cho ăn khoảng 2-3 lần/ ng&agrave;y như bữa phụ xen kẽ với c&aacute;c bữa ch&iacute;nh, mỗi lần cho ăn bằng c&aacute;ch h&ograve;a 2 -3 muỗng sữa bột (khoảng 10 - 15gr) với 20ml - 30ml nước ấm để tự ăn.<br />\r\n<strong>Ch&oacute; đang ốm/ c&ograve;i/ đang mang thai</strong>: cho ăn khoảng 3 lần/ ng&agrave;y như bữa phụ xen kẽ với c&aacute;c bữa ch&iacute;nh, mỗi lần cho ăn bằng c&aacute;ch h&ograve;a 2- 3&nbsp;muỗng sữa bột (khoảng 10- 15gr) với 20- 30ml nước ấm để tự ăn.</span></p>\r\n\r\n<p><span style=\"font-size:12px\"><strong>Bảo quản:</strong></span></p>\r\n\r\n<p><span style=\"font-size:12px\">- Nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t.<br />\r\n- Sữa đ&atilde; pha, bảo quản trong tủ lạnh được 24h.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><span style=\"font-size:12px\"><strong>Th&agrave;nh Phần:</strong>&nbsp;<br />\r\nSữa bột nguy&ecirc;n kem, Sữa bột gầy,Nondairy creamer, Maltodextrin,Sucrose,Whey protein concentrate,Hương d&ugrave;ng trong thực phẩm,Chất xơ Inulin, Lysine, Nano - Precipitated Calcium Carbonate,Vitamin C, Vitamin K1, Vitamin B6, Vitamin B1, VitaminB2, Vitamin D3, Vitamin A, Vitamin&nbsp;B12, Vitamin Axit Pantothenic, Biotine, Axit Folic...</span></h2>', 0, 0, 0, '2024-06-07 07:33:13', 10, 1, '2024-06-07 19:30:51'),
(15, 'Sữa Bột Cho Mèo Dr.Kyan Precaten (Sbm) 400g', 'sua-bot-cho-meo-drkyan-precaten-sbm-400g', 170000, 0, 3, 0, 0, '2024-06-07__sua-meo1.png', 0, 0, 1, 0, NULL, '<p><span style=\"font-size:12px\"><strong>M&ocirc; tả sản phẩm</strong></span></p>\r\n\r\n<p><span style=\"font-size:12px\"><em><strong>Sữa bột cho m&egrave;o</strong></em>&nbsp;PREDOGEN được sản xuất theo c&ocirc;ng thức của WONDERLIFE PHARMA &nbsp;(mỹ) l&agrave; một thực phẩm bổ dưỡng cho m&egrave;o&nbsp;y&ecirc;u của bạn ngo&agrave;i những thức ăn th&ocirc;ng thường, gi&uacute;p m&egrave;o&nbsp;y&ecirc;u cảm thấy ngon miệng hơn, bồi bổ cơ thể v&agrave; cung cấp những thứ cần thiết để ph&aacute;t triển to&agrave;n diện..</span></p>\r\n\r\n<h2><span style=\"font-size:12px\"><strong>Th&agrave;nh Phần&nbsp;</strong><a href=\"http://kunmiu.vn/\"><em><strong>sữa bột cho m&egrave;o</strong></em></a><strong>:&nbsp;</strong></span></h2>\r\n\r\n<p><span style=\"font-size:12px\">Sữa bột nguy&ecirc;n kem, Sữa bột gầy, Nondairy creamer, Maltodextrin,Sucrose,Whey protein concentrate,Hương d&ugrave;ng trong thực phẩm,Chất xơ Inulin, Lysine, Nano - Precipitated Calcium Carbonate,Vitamin C, Vitamin K1, Vitamin B6, Vitamin B1, VitaminB2, Vitamin D3, Vitamin&nbsp;A, Vitamin&nbsp;B12, Vitamin Axit Pantothenic, Biotine, Axit Folic...</span></p>\r\n\r\n<p><span style=\"font-size:12px\"><strong>Dinh dưỡng&nbsp;</strong></span></p>\r\n\r\n<p><span style=\"font-size:12px\">- Canxi nano v&agrave; vitamin D : K&iacute;ch thước si&ecirc;u nhỏ&nbsp; gi&uacute; hấp thụ tối ưu v&agrave;o xương, gi&uacute;p xương v&agrave; rang chắc khỏe, đặc biệt kh&ocirc;ng tạo ra sỏi thận như thức ăn th&ocirc;ng thường.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">- Vitamin A : Tốt cho mắt v&agrave; ngăn biến chứng v&otilde;ng mạc.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">-&nbsp;Biotine : Gi&uacute;p cho da khỏe mạnh v&agrave; bộ l&ocirc;ng b&oacute;ng mượt.<br />\r\n- Lnulin :chất xơ tự nhi&ecirc;n gi&uacute;p hệ ti&ecirc;u h&oacute;a khỏe mạnh.<br />\r\n- Lysine : K&iacute;ch th&iacute;ch them ăn.<br />\r\n- Folic acid : Hỗ trợ ph&aacute;t triển tr&iacute; n&atilde;o.</span></p>\r\n\r\n<p><span style=\"font-size:12px\"><strong>Hướng dẫn sử dụng:</strong></span></p>\r\n\r\n<p><span style=\"font-size:12px\"><em>*Pha với nước ấm khoảng 40 - 50&deg;C</em></span></p>\r\n\r\n<h3><span style=\"font-size:12px\"><strong>- M&egrave;o con dưới 1 th&aacute;ng tuổi:</strong>&nbsp;H&ograve;a 3 muỗng&nbsp;<a href=\"http://kunmiu.vn/\"><em><strong>sữa bột cho m&egrave;o</strong></em></a>&nbsp;( khoảng 15gr ) v&agrave;o 30ml nước ấm, chia th&agrave;nh 4-6 lần, dung b&igrave;nh cho b&uacute; hoặc để m&egrave;o tự ăn hết trong ng&agrave;y<br />\r\n<strong>- M&egrave;o con từ 1 &ndash; 2&nbsp; th&aacute;ng tuổi:</strong>&nbsp;H&ograve;a&nbsp; 6 muỗng sữa bột (khoảng 30gr) với 60ml nước ấm, chia th&agrave;nh 3-3 lấn ăn trong ng&agrave;y .<br />\r\n<strong>- M&egrave;o tr&ecirc;n 2 th&aacute;ng tuổi:</strong>&nbsp;Cho ăn khoảng 2-3 lần/ ng&agrave;y như bữa phụ xen kẽ với c&aacute;c bữa ch&iacute;nh, mỗi lần cho ăn bằng c&aacute;ch h&ograve;a 2 muỗng sữa bột (khoảng 10gr) với 20ml nước ấm để tự ăn.<br />\r\n<strong>- M&egrave;o đang ốm/ c&ograve;i/ đang mang thai:</strong>&nbsp;cho ăn khoảng 3 lần/ ng&agrave;y như bữa phụ xen kẽ với c&aacute;c bữa ch&iacute;nh, mỗi lần cho ăn bằng c&aacute;ch h&ograve;a 2 muỗng sữa bột (khoảng 10gr) với</span></h3>\r\n\r\n<p><span style=\"font-size:12px\"><strong>Bảo quản:</strong></span></p>\r\n\r\n<p><span style=\"font-size:12px\">- Nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t.<br />\r\n- Sữa đ&atilde; pha, bảo quản trong tủ lạnh được 24h.</span></p>', 0, 0, 0, '2024-06-07 07:34:34', 10, 1, NULL),
(16, 'Súp Dinh Dưỡng Inaba Gói 30g', 'sup-dinh-duong-inaba-goi-30g', 10000, 0, 3, 0, 0, '2024-06-07__sup-dinduong1.png', 0, 0, 1, 0, NULL, '<p><span style=\"font-size:12px\"><strong>M&ocirc; tả sản phẩm</strong></span></p>\r\n\r\n<h1><span style=\"font-size:12px\"><a href=\"https://kunmiu.vn/banh-thuong-cho-meo\"><em><strong>S&uacute;p dinh dưỡng Inaba g&oacute;i 30g</strong></em></a>&nbsp;dạng cream - Lựa chọn l&agrave;nh mạnh cho M&egrave;o cưng của bạn..</span></h1>\r\n\r\n<h2><span style=\"font-size:12px\">Sử dụng&nbsp;<em><strong><a href=\"https://kunmiu.vn/banh-thuong-cho-meo\">S&uacute;p dinh dưỡng Inaba g&oacute;i 30g</a>&nbsp;</strong></em>sẽ hỗ trợ hiệu quả vấn đề rối l&ocirc;ng, giảm m&ugrave;i h&ocirc;i khi đi ngo&agrave;i.<br />\r\nAn to&agrave;n cho hệ ti&ecirc;u h&oacute;a nhạy cảm của m&egrave;o.<br />\r\nChế biến theo dạng cream mềm để M&egrave;o c&oacute; thể hấp thụ nhanh hơn chất dinh dưỡng.&nbsp;</span></h2>\r\n\r\n<h3><span style=\"font-size:12px\">Đặc biệt hơn,&nbsp;<em><strong><a href=\"https://kunmiu.vn/banh-thuong-cho-meo\">S&uacute;p dinh dưỡng Inaba g&oacute;i 30g</a>&nbsp;</strong></em>với c&ocirc;ng thức gi&agrave;u độ ẩm cung cấp th&ecirc;m lượng nước dồi d&agrave;o sẽ gi&uacute;p hạn chế tối đa c&aacute;c bệnh về sỏi thận, tiết niệu&hellip; thường gặp ở M&egrave;o (do M&egrave;o rất lười uống nước).</span></h3>\r\n\r\n<p><span style=\"font-size:12px\">Định lượng: 30gr &ndash; Dạng g&oacute;i ăn liền, sử dụng được ngay khi x&eacute; bao b&igrave;.</span></p>', 0, 0, 0, '2024-06-07 07:35:44', 50, 1, NULL),
(17, 'Canxi Cho Chó Mèo Calcium Phosphorus Petag', 'canxi-cho-cho-meo-calcium-phosphorus-petag', 250000, 0, 3, 0, 0, '2024-06-07__canxi1.png', 0, 0, 1, 0, NULL, '<p><span style=\"font-size:12px\"><strong>M&ocirc; tả sản phẩm</strong></span></p>\r\n\r\n<p><span style=\"font-size:12px\"><strong><a href=\"https://kunmiu.vn/san-pham-dinh-duong\">Canxi&nbsp;cho ch&oacute; m&egrave;o</a>&nbsp;</strong>của h&atilde;ng PetAg ( Mỹ ) l&agrave; canxi h&agrave;ng đầu trong việc điều trị bệnh li&ecirc;n quan đến hệ thống khung xương của ch&oacute; m&egrave;o như sập b&agrave;n, hạ b&agrave;n, thiếu canxi, c&ograve;i xương v...v....</span></p>\r\n\r\n<p><span style=\"font-size:12px\">- Với c&ocirc;ng thức c&acirc;n bằng kết hợp canxi h&agrave;m lượng cao với Phốt Pho v&agrave; Vitamin D trong c&ugrave;ng 1 vi&ecirc;n thuốc gi&uacute;p động vật c&oacute; thể hấp thụ canxi tối ưu để ph&aacute;t triển khung xương chắc khoẻ hoặc đ&aacute;p ứng nhu cầu canxi cho động vật đang trong thời k&igrave; sinh sản, mang thai.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">- Canxi Phốt pho dạng vi&ecirc;n n&eacute;n với m&ugrave;i vị hấp dẫn rất dễ sử dụng cho c&aacute;c loại động vật.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">Hướng dẫn sử dụng :</span></p>\r\n\r\n<p><span style=\"font-size:12px\"><strong>Cho ch&oacute; :</strong></span></p>\r\n\r\n<p><span style=\"font-size:12px\">+ Để bổ sung h&agrave;ng ng&agrave;y : d&ugrave;ng 1/2 vi&ecirc;n cho 10 kg trọng lượng cơ thể</span></p>\r\n\r\n<p><span style=\"font-size:12px\">+ Ch&oacute; điều trị hạ b&agrave;n, sập b&agrave;n, cong ch&acirc;n, ch&oacute; mẹ mang thai, ch&oacute; đang trong giai đoạn tăng trưởng : 1 vi&ecirc;n cho 10 kg trọng lượng cơ thể. Ch&uacute; &yacute; : kh&ocirc;ng được d&ugrave;ng qu&aacute; 3 vi&ecirc;n /ng&agrave;y</span></p>\r\n\r\n<p><span style=\"font-size:12px\"><strong>Cho m&egrave;o :</strong></span></p>\r\n\r\n<p><span style=\"font-size:12px\">+ Để bổ sung h&agrave;ng ng&agrave;y : d&ugrave;ng 1/4 vi&ecirc;n cho 2 kg trọng lượng cơ thể</span></p>\r\n\r\n<p><span style=\"font-size:12px\">+ M&egrave;o điều trị thiếu canxi, liệt ch&acirc;n,&nbsp;<a href=\"http://kunmiu.vn/\">m&egrave;o mẹ đang mang tha</a>i: 1/2 vi&ecirc;n cho 2 kg trọng lượng cơ thể. Ch&uacute; &yacute; : Kh&ocirc;ng được d&ugrave;ng qu&aacute; 1 vi&ecirc;n /ng&agrave;y</span></p>\r\n\r\n<p><span style=\"font-size:12px\">- Lưu &yacute; khi sử dụng :</span></p>\r\n\r\n<p><span style=\"font-size:12px\">+ Tất cả c&aacute;c thuốc Vitamin v&agrave; kho&aacute;ng chất chủ vật nu&ocirc;i n&ecirc;n cho uống trước 10g&igrave;ơ s&aacute;ng để cơ thể th&uacute; cưng hấp thụ được tốt nhiều nhất c&aacute;c chất dinh dưỡng.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">+ Vật nu&ocirc;i bắt buộc phải được tắm nắng h&agrave;ng ng&agrave;y hoặc nu&ocirc;i trong m&ocirc;i trường c&oacute; &aacute;nh s&aacute;ng mặt trời để cơ thể th&uacute; cưng tự tổng hợp được canxi, ph&aacute;t triển to&agrave;n diện.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">- Th&agrave;nh phần dinh dưỡng trong 1 vi&ecirc;n</span></p>\r\n\r\n<p><span style=\"font-size:12px\">+ Canxi .....360mg</span></p>\r\n\r\n<p><span style=\"font-size:12px\">+ Photpho... 250mg</span></p>\r\n\r\n<p><span style=\"font-size:12px\">+ Vitamin D3 .... 245IU</span></p>\r\n\r\n<p><span style=\"font-size:12px\">- Bảo quản : để sản phẩm nơi kh&ocirc; m&aacute;t, tr&aacute;nh &aacute;nh s&aacute;ng mặt trời.</span></p>', 0, 0, 0, '2024-06-07 07:36:45', 10, 1, NULL),
(18, 'Dầu Tắm Trị Bọ Chét, Ve, Ghẻ, Rận Chó Mèo Hanvet Hantox Hồng (200ml)', 'dau-tam-tri-bo-chet-ve-ghe-ran-cho-meo-hanvet-hantox-hong-200ml', 45000, 0, 4, 0, 0, '2024-06-07__dau-tam.png', 1, 0, 1, 0, NULL, '<p><span style=\"font-size:12px\"><strong>M&ocirc; tả sản phẩm</strong></span></p>\r\n\r\n<p><span style=\"font-size:12px\">TH&Agrave;NH PHẦN<br />\r\n<a href=\"https://kunmiu.vn/\"><em><strong>Sữa tắm trị ve, rận</strong></em></a>, bọ ch&eacute;t cho ch&oacute; m&egrave;o Hantox shampoo chứa Pyrethroid [(1R,3R)-3(2,2-dibromovinyl)-2,2-dimethylcyclorpropane carbocylate(S)-&alpha;-cyano-3-phenoxybenzyl] hoạt chất kh&ocirc;ng chứa l&acirc;n hữu cơ n&ecirc;n &iacute;t độc, t&aacute;c dụng k&eacute;o d&agrave;i, hiệu quả cao, an to&agrave;n cho người, vật nu&ocirc;i..</span></p>\r\n\r\n<p><span style=\"font-size:12px\">C&Ocirc;NG DỤNG<br />\r\n- Diệt v&agrave; ph&ograve;ng bọ ch&eacute;t, b&eacute;t, ve, chấy, rận, ghẻ ở ch&oacute;, m&egrave;o, th&uacute; nu&ocirc;i.<br />\r\n* M&agrave;u v&agrave;ng: Ko d&ugrave;ng cho ch&oacute; m&egrave;o con<br />\r\n* M&agrave;u xanh: D&ugrave;ng được cho ch&oacute; m&egrave;o con<br />\r\n* M&agrave;u hồng: D&ugrave;ng được cho ch&oacute; m&egrave;o con + Khử m&ugrave;i, dưỡng l&ocirc;ng</span></p>\r\n\r\n<p><span style=\"font-size:12px\">C&Aacute;CH D&Ugrave;NG<br />\r\n- Thấm ướt con vật, lấy lượng thuốc cần thiết, xoa nhẹ, c&agrave;o đều thuốc khắp m&igrave;nh con vật sao cho tạo nhũ bọt x&agrave; ph&ograve;ng để thuốc thấm v&agrave;o da, ch&acirc;n l&ocirc;ng. Tr&aacute;nh để thuốc d&acirc;y v&agrave;o mắt, miệng v&agrave; ni&ecirc;m mạc con vật.<br />\r\n- Để thuốc ngấm khoảng 5 ph&uacute;t rồi gội, tr&aacute;ng bằng nước sạch nhiều lần, sau đ&oacute; lau v&agrave; sấy kh&ocirc;, con vật sẽ c&oacute; bộ l&ocirc;ng &oacute;ng, b&ocirc;ng, mượt v&agrave; kh&ocirc;ng c&ograve;n bất kỳ loại k&yacute; sinh tr&ugrave;ng n&agrave;o nữa.<br />\r\n- Sau khi tắm, c&aacute;c chất x&agrave; ph&ograve;ng tr&ocirc;i đi nhưng hoạt chất Pyrethroid vẫn b&aacute;m lại được ở l&ocirc;ng v&agrave; m&ocirc; thượng b&igrave; n&ecirc;n thuốc c&oacute; t&aacute;c dụng l&acirc;u d&agrave;i diệt hay chống t&aacute;i nhiễm k&yacute; sinh tr&ugrave;ng.<br />\r\n- N&ecirc;n tắm cho vật nu&ocirc;i 15 ng&agrave;y/ lần đề ph&ograve;ng t&aacute;i nhiễm k&yacute; sinh tr&ugrave;ng.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">LIỀU D&Ugrave;NG<br />\r\nCh&oacute;, m&egrave;o dưới 5 kg: 10 ml<br />\r\n16-35 kg: 40 ml<br />\r\n5-8 kg: 20 ml<br />\r\n9-15 kg: 25 ml<br />\r\nTr&ecirc;n 40 kg: 50 ml</span></p>\r\n\r\n<p><span style=\"font-size:12px\">CH&Uacute; &Yacute;<br />\r\n- Chỉ d&ugrave;ng ngo&agrave;i cho gia s&uacute;c<br />\r\n- Kh&ocirc;ng để gần lửa, thức ăn.<br />\r\n- Rửa kỹ tay ch&acirc;n hay nơi bị thuốc bắn v&agrave;o.<br />\r\n- C&oacute; thể d&ugrave;ng cho gia s&uacute;c chửa.<br />\r\n- Để ngo&agrave;i tầm tay của trẻ em.<br />\r\nBQ: Nơi kh&ocirc;, m&aacute;t, tr&aacute;nh &aacute;nh sang.<br />\r\nHD: 24 th&aacute;ng kể từ ng&agrave;y sản xuất.<br />\r\nQuy c&aacute;ch: Lọ 200 ml.</span></p>', 0, 0, 0, '2024-06-07 07:38:57', 20, 3, NULL),
(19, 'Sữa Tắm Cho Chó Mèo Olive', 'sua-tam-cho-cho-meo-olive', 60000, 0, 4, 0, 0, '2024-06-07__sua-tam-olive.png', 0, 0, 1, 0, NULL, '<p><span style=\"font-size:12px\"><strong>M&Ocirc; TẢ SẢN PHẨM</strong></span></p>\r\n\r\n<h1><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>Sữa tắm cho ch&oacute; m&egrave;o Olive</strong></em></u></a>&nbsp;l&agrave; d&ograve;ng sản phẩm sữa tắm chuy&ecirc;n dụng cho th&uacute; cưng với c&ocirc;ng thức đặc biệt từ tinh dầu Olive Essence&nbsp;gi&uacute;p bộ l&ocirc;ng của th&uacute; cưng lu&ocirc;n b&oacute;ng mượt, sạch sẽ.</span></h1>\r\n\r\n<h2><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>Sữa tắm cho ch&oacute; m&egrave;o Olive</strong></em></u></a>&nbsp;với c&ocirc;ng thức m&ugrave;i hương dễ chịu, lưu hương l&acirc;u gồm 5 loại:</span></h2>\r\n\r\n<p><span style=\"font-size:12px\">1.&nbsp;Sữa tắm&nbsp;Olive&nbsp;cho&nbsp;m&egrave;o: Với c&ocirc;ng thức đặc biệt nu&ocirc;i dưỡng bộ l&ocirc;ng m&egrave;o ph&aacute;t triển khoẻ mạnh, mềm mượt</span></p>\r\n\r\n<p><span style=\"font-size:12px\">2.&nbsp;Sữa tắm&nbsp;Olive cho ch&oacute; l&ocirc;ng trắng v&agrave; s&aacute;ng m&agrave;u: Sữa tắm sẽ gi&uacute;p th&uacute; cưng sở hữu một bộ l&ocirc;ng m&agrave;u trắng tuyệt đẹp v&agrave; thơm tho</span></p>\r\n\r\n<p><span style=\"font-size:12px\">3.&nbsp;Sữa tắm&nbsp;Olive cho ch&oacute; l&ocirc;ng n&acirc;u đỏ v&agrave; sẫm m&agrave;u: Gi&uacute;p giữ sắc tố m&agrave;u&nbsp;tối đa,&nbsp;đồng thời gi&uacute;p l&agrave;m sạch v&agrave; mềm mượt.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">4.&nbsp;Sữa tắm&nbsp;Olive diệt ve v&agrave; bọ ch&eacute;t: Với c&ocirc;ng thức chuy&ecirc;n dụng&nbsp;trị tận gốc ve rận v&agrave; bọ ch&eacute;t m&agrave; vẫn bảo vệ l&agrave;n da v&agrave; bộ l&ocirc;ng của th&uacute; cưng khỏi sự kh&ocirc; cứng v&agrave; hư tổn</span></p>\r\n\r\n<p><span style=\"font-size:12px\">5.&nbsp;Sữa tắm&nbsp;Olive l&agrave;m đẹp, chống rụng l&ocirc;ng: Th&uacute; cưng c&oacute; bộ l&ocirc;ng xơ rối v&agrave; lu&ocirc;n bết d&iacute;nh. Sữa tắm n&agrave;y sẽ giải quyết t&igrave;nh trạng n&agrave;y, gi&uacute;p ch&uacute;ng&nbsp;bộ l&ocirc;ng s&aacute;ng b&oacute;ng, mượt m&agrave;.</span></p>\r\n\r\n<h3><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>Sữa tắm cho ch&oacute; m&egrave;o Olive</strong></em></u></a>&nbsp;với c&ocirc;ng dụng đa dạng sẽ l&agrave; một lựa chọn tuyệt vời cho c&aacute;c Boss để khiến ch&uacute;ng c&oacute; một bộ l&ocirc;ng b&oacute;ng mượt, khoẻ mạnh v&agrave; kh&ocirc;ng c&ograve;n&nbsp;ve rận.</span></h3>', 0, 0, 0, '2024-06-07 07:40:48', 15, 3, NULL),
(20, 'Dầu Tắm Và Xả Cao Cấp Nhật Bản JoyPet RINSE IN SHAMPOO 350ml', 'dau-tam-va-xa-cao-cap-nhat-ban-joypet-rinse-in-shampoo-350ml', 200000, 0, 4, 0, 0, '2024-06-07__dau-tam-xa.png', 0, 0, 1, 0, NULL, '<h1>&nbsp;</h1>\r\n\r\n<p><span style=\"font-size:12px\"><strong>M&Ocirc; TẢ SẢN PHẨM</strong></span></p>\r\n\r\n<h1><span style=\"font-size:12px\"><a href=\"http://%08kunmiu.vn/\"><u><em><strong>Dầu tắm v&agrave; xả cao cấp Nhật bản JoyPet RINSE IN&nbsp;SHAMPOO 350ml</strong></em></u></a>&nbsp;l&agrave; sản phẩm với c&ocirc;ng thức vượt trội 2 trong 1 kết hợp dầu xả v&agrave; gội cho th&uacute; cưng.&nbsp;</span></h1>\r\n\r\n<h2><span style=\"font-size:12px\"><a href=\"http://%08kunmiu.vn/\"><u><em><strong>Dầu tắm v&agrave; xả cao cấp Nhật bản JoyPet RINSE IN SHAMPOO 350ml</strong></em></u></a>&nbsp;với dưỡng chất Collagen gi&uacute;p cho da v&agrave; l&ocirc;ng th&uacute; cưng lu&ocirc;n b&oacute;ng mượt v&agrave; mềm mại. Tinh chất c&oacute; trong sản phẩm gi&uacute;p thẩm thấu s&acirc;u v&agrave; nu&ocirc;i dưỡng tận gốc l&ocirc;ng ch&oacute; m&egrave;o, gi&uacute;p sợi l&ocirc;ng ph&aacute;t triển khoẻ mạnh.&nbsp;</span></h2>\r\n\r\n<p><span style=\"font-size:12px\">Kh&ocirc;ng chỉ đem lại sự sạch s&acirc;u, dầu tắm v&agrave; xả Joypet Rinse c&ograve;n c&oacute; m&ugrave;i hương v&ocirc; c&ugrave;ng dễ chịu, khiến th&uacute; cưng lu&ocirc;n thơm tho suốt cả th&aacute;ng.</span></p>\r\n\r\n<h3><span style=\"font-size:12px\"><a href=\"http://%08kunmiu.vn/\"><u><em><strong>Dầu tắm v&agrave; xả cao cấp Nhật bản JoyPet RINSE IN&nbsp;SHAMPOO 350ml</strong></em></u></a>&nbsp;c&oacute; 3 loại:</span></h3>\r\n\r\n<p><span style=\"font-size:12px\">- Amino (Xanh dương)</span></p>\r\n\r\n<p><span style=\"font-size:12px\">- SOFT (Cam)</span></p>\r\n\r\n<p><span style=\"font-size:12px\">- Collagen (Hồng)</span></p>\r\n\r\n<p><span style=\"font-size:12px\">để c&aacute;c bạn thoải m&aacute;i lựa chọn. Đ&acirc;y l&agrave; sản phẩm với c&ocirc;ng thức cao cấp số 1 thị trường hiện nay, c&ograve;n chần chừ g&igrave; nữa, h&atilde;y lựa chọn cho c&aacute;c Boss ngay th&ocirc;i!</span></p>', 0, 0, 0, '2024-06-07 07:41:49', 15, 3, NULL),
(21, 'Sữa Tắm Cho Chó Mèo K PET 500ml', 'sua-tam-cho-cho-meo-k-pet-500ml', 120000, 0, 4, 0, 0, '2024-06-07__sua-tam-k.png', 0, 0, 1, 0, NULL, '<p><span style=\"font-size:12px\"><strong>M&Ocirc; TẢ SẢN PHẨM</strong></span></p>\r\n\r\n<h2><span style=\"font-size:12px\">🛁&nbsp;<a href=\"http://kunmiu.vn/\"><strong><em>Sữa tắm cho ch&oacute; m&egrave;o&nbsp;K PET</em></strong></a>&nbsp;500ml cho ch&oacute; m&egrave;o đang l&agrave;m mưa l&agrave;m gi&oacute; tr&ecirc;n thị trường bởi m&ugrave;i hương đặc biệt nhận được rất nhiều lời khen ngợi..</span></h2>\r\n\r\n<p><span style=\"font-size:12px\">💗&nbsp;Được c&aacute;c chuy&ecirc;n gia c&ocirc;ng nhận c&ocirc;ng thức lưu hương v&agrave; mềm mượt, sữa tắm K PET l&agrave; một lựa chọn h&agrave;ng đầu nếu c&aacute;c bạn quan t&acirc;m đến m&ugrave;i hương.&nbsp;</span></p>\r\n\r\n<h3><span style=\"font-size:12px\">Th&ocirc;ng thường, c&aacute;c loại sữa tắm kh&aacute;c sẽ chỉ lưu lại hương sau thi tắm từ 3- 5 ng&agrave;y, th&acirc;m ch&iacute; l&agrave; 1 ng&agrave;y, nhưng với&nbsp;<a href=\"http://kunmiu.vn/\"><strong><em>Sữa tắm cho ch&oacute; m&egrave;o&nbsp;K PET</em></strong></a>, hương thơm sẽ đi khắp nơi c&ugrave;ng Boss trong suốt nửa th&aacute;ng hoặc 1 th&aacute;ng.&nbsp;</span></h3>\r\n\r\n<p><span style=\"font-size:12px\">⭐&nbsp;Với hương thơm tư nhi&ecirc;n c&ugrave;ng tinh chất mềm mượt l&ocirc;ng, sản phẩm rất m&aacute;t, dịu nhẹ ph&ugrave; hợp với m&ugrave;a h&egrave; m&agrave; vẫn l&ocirc;i cuốn, khiến bạn cứ phải d&otilde;i theo Boss suốt th&ocirc;i.</span></p>', 0, 0, 0, '2024-06-07 07:43:48', 15, 3, NULL),
(22, 'Sữa Tắm Cho Chó Mèo Fruit Shampoo 500ml', 'sua-tam-cho-cho-meo-fruit-shampoo-500ml', 100000, 0, 4, 0, 20, '2024-06-07__sua-tam-fruit.png', 0, 0, 1, 0, NULL, '<p><span style=\"font-size:12px\"><strong>M&Ocirc; TẢ SẢN PHẨM</strong></span></p>\r\n\r\n<h2><span style=\"font-size:12px\"><strong><em><a href=\"https://kunmiu.vn/sua-tam-cho-cho-meo\">Sữa tắm cho ch&oacute; m&egrave;o</a>&nbsp;</em></strong>Fruit Shampoo 500ml<br />\r\nGỒM C&Oacute; 8 LOẠI&nbsp;<br />\r\n* Peach for cats: Hương Đ&agrave;o. Sữa tắm cho m&egrave;o.<br />\r\n* Bactericidal Lemon: Hương Chanh. C&ocirc;ng dụng trị nấm diệt khuẩn cho ch&oacute; m&egrave;o<br />\r\n* Smooth Passion fruit: Hương Chanh leo. C&ocirc;ng dụng sữa tắm l&agrave;m dịu nhẹ cho ch&oacute; m&egrave;o<br />\r\n* Fluffy Pomegranate: Hương Thạch Lựu. C&ocirc;ng dụng sữa tắm khử tr&ugrave;ng trị h&ocirc;i cho ch&oacute;<br />\r\n* Killing Mites Grapefuit: Hương Bưởi. C&ocirc;ng dụng sữa tắm diệt ve rận cho ch&oacute;<br />\r\n* Reddening Strawberry: Hương D&acirc;u. C&ocirc;ng dụng trị nấm diệt khuẩn cho ch&oacute; m&egrave;o<br />\r\n* Whitening Grape: Hương Nho Đen. C&ocirc;ng dụng d&agrave;nh cho ch&oacute; l&ocirc;ng trắng</span></h2>\r\n\r\n<h3><span style=\"font-size:12px\">+&nbsp;<strong><em><a href=\"https://kunmiu.vn/sua-tam-cho-cho-meo\">Sữa tắm cho ch&oacute; m&egrave;o</a>&nbsp;</em></strong>Fruit Shampoo 500ml&nbsp;nhập khẩu từ Brazil với chiết xuất quả d&acirc;u t&acirc;y c&oacute; nguồn gốc từ Anh, ch&iacute;nh v&igrave; vậy m&agrave; n&oacute; c&oacute; h&agrave;m lượng chất Pectin cao hơn so với mức b&igrave;nh thường gi&uacute;p nhanh ch&oacute;ng bổ sung th&ecirc;m dinh dưỡng cho tế b&agrave;o l&ocirc;ng, phục hồi hiệu quả sự đ&agrave;n hồi của l&ocirc;ng</span></h3>\r\n\r\n<p><span style=\"font-size:12px\">+ H&agrave;m lượng chất xơ Pectin c&oacute; hiệu quả tối đa bảo vệ bề mặt l&ocirc;ng của vật nu&ocirc;i, l&agrave;m cho l&ocirc;ng kh&ocirc;ng bị ảnh hưởng bởi những t&aacute;c động xấu từ m&ocirc;i trường b&ecirc;n ngo&agrave;i, gi&uacute;p cho l&ocirc;ng lu&ocirc;n giữ được m&agrave;u gốc v&agrave; s&aacute;ng b&oacute;ng.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">+ Sữa tắm cho ch&oacute; với th&agrave;nh phần triết xuất hoa quả, chất b&eacute;o Jojoba, vitamin C, A, B2, E v&agrave; rutin, axit amin tự do, Axit chlorogenic, dầu Glycine, mỡ l&ocirc;ng cừu, sợi th&ocirc; tế b&agrave;o dưa chuột, vitamin C, đường cam lộ&hellip; T&aacute;c dụng quan trọng: chống oxy h&oacute;a, bổ sung nước cho l&ocirc;ng nhanh ch&oacute;ng. Chiết xuất từ hoa quả nhập khấu Braxin, chống oxy h&oacute;a, chứa nhiều th&agrave;nh phần tự nhi&ecirc;n phenon, Axit tannic v&agrave; vitamin C, E, l&ocirc;ng hấp thụ nhanh nhất, bổ sung th&agrave;nh phần nước cho l&ocirc;ng nhanh nhất. Sau khi tắm l&ocirc;ng x&otilde;a b&ocirc;ng b&oacute;ng mượt c&oacute; t&iacute;nh đ&agrave;n hồi.</span></p>', 0, 0, 0, '2024-06-07 07:46:20', 10, 3, NULL);
INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_admin_id`, `pro_sale`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_country`, `updated_at`) VALUES
(23, 'Bàn Chải Lông Massage Cho Chó Mèo Groom Glider (BT)', 'ban-chai-long-massage-cho-cho-meo-groom-glider-bt', 60000, 0, 5, 0, 0, '2024-06-07__ban-chai-long.png', 0, 0, 1, 0, NULL, '<p><span style=\"font-size:12px\"><strong>M&Ocirc; TẢ SẢN PHẨM</strong></span></p>\r\n\r\n<p><span style=\"font-size:12px\">Việc l&ocirc;ng th&uacute; cưng, ch&oacute; m&egrave;o rụng vương v&atilde;i khắp nơi tr&ecirc;n quần &aacute;o, sofa, khắp nh&agrave; khiến bạn kh&oacute; chịu v&agrave; mất thời gian cho c&ocirc;ng việc dọn dẹp..</span></p>\r\n\r\n<p><span style=\"font-size:12px\">Nhưng đừng lo đ&atilde; c&oacute; B&agrave;i chải l&ocirc;ng massage cho ch&oacute; m&egrave;o Groom Glider</span></p>\r\n\r\n<p><span style=\"font-size:12px\">B&agrave;n chải c&oacute; 2 mặt được l&agrave;m bằng cao su tự nhi&ecirc;n, th&acirc;n thiện với m&ocirc;i trường.<br />\r\n- 1 mặt như những chiếc b&agrave;n chải b&igrave;nh thường c&oacute; c&ocirc;ng dụng gỡ rối v&agrave; lấy l&ocirc;ng rụng nhưng mềm mại hơn, gi&uacute;p cho th&uacute; cưng kh&ocirc;ng bị đau như những b&agrave;n chải kh&aacute;c.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">- 1 mặt c&ograve;n lại được thiết kế th&ocirc;ng minh để gi&uacute;p thu gom những chiếc l&ocirc;ng rụng c&ograve;n tr&ecirc;n người th&uacute; cưng hay quần &aacute;o, sofa ....</span></p>\r\n\r\n<p><span style=\"font-size:12px\">K&iacute;ch thước sản phẩm : 23*9cm</span></p>', 0, 0, 0, '2024-06-07 07:53:41', 40, 3, NULL),
(24, 'Máy Sấy Và Lược Chải Lông Chuyên Dụng PD-9800 Cho Spa Grooming (BT)', 'may-say-va-luoc-chai-long-chuyen-dung-pd-9800-cho-spa-grooming-bt', 380000, 0, 5, 0, 5, '2024-06-07__maysay-luoc.png', 0, 0, 1, 0, NULL, '<p><span style=\"font-size:12px\">M&Ocirc; TẢ SẢN PHẨM</span></p>\r\n\r\n<h2><span style=\"font-size:12px\">+<a href=\"https://kunmiu.vn/dung-cu-lam-dep\">&nbsp;</a><em><strong><a href=\"https://kunmiu.vn/dung-cu-lam-dep\">M&aacute;y sấy&nbsp;v&agrave; lược chải l&ocirc;ng chuy&ecirc;n dụng PD-9800</a></strong></em>&nbsp;cho spa grooming&nbsp;chuy&ecirc;n dụng kh&ocirc;ng thể thiếu d&agrave;nh cho c&aacute;c gia đ&igrave;nh nu&ocirc;i ch&oacute; m&egrave;o c&oacute; bộ l&ocirc;ng d&agrave;i, d&agrave;y v&agrave; l&acirc;u kh&ocirc;..</span></h2>\r\n\r\n<p><span style=\"font-size:12px\">+ C&oacute; khả năng l&agrave;m l&ocirc;ng của vật nu&ocirc;i tơi v&agrave; đẹp hơn, thời gian kh&ocirc; nhanh hơn v&agrave; đem lại vẻ đẹp cho vật nu&ocirc;i của bạn</span></p>\r\n\r\n<h3><span style=\"font-size:12px\">+ Sản phẩm&nbsp;<em><strong><a href=\"https://kunmiu.vn/dung-cu-lam-dep\">M&aacute;y sấy&nbsp;v&agrave; lược chải l&ocirc;ng chuy&ecirc;n dụng PD-9800</a></strong></em>&nbsp;c&oacute; chức năng kiểm so&aacute;t độ mạnh của thổi gi&oacute; , kiểm so&aacute;t nhiệt độ n&oacute;ng. C&oacute; thể thổi gi&oacute; hoặc thổi n&oacute;ng ri&ecirc;ng cũng như hoạt động song song 2 chức năng</span></h3>\r\n\r\n<p><span style=\"font-size:12px\">+ Sử dụng động cơ nhập khẩu từ Nhật bản c&oacute; tuổi thọ gấp 2 lần so với m&aacute;y sấy th&ocirc;ng thường kh&aacute;c</span></p>\r\n\r\n<p><span style=\"font-size:12px\">+ Độ rung thấp v&agrave; hạn chế tối đa tiếng ồn so với c&aacute;c m&aacute;y sấy l&ocirc;ng th&ocirc;ng thường</span></p>\r\n\r\n<p><span style=\"font-size:12px\">+&nbsp;<em><strong><a href=\"https://kunmiu.vn/dung-cu-lam-dep\">M&aacute;y sấy&nbsp;v&agrave; lược chải l&ocirc;ng chuy&ecirc;n dụng PD-9800</a>&nbsp;</strong></em>c&oacute; mặt lược được thiết kế chuy&ecirc;n nghiệp để gi&uacute;p loại bỏ l&ocirc;ng v&agrave; da chết, bụi bẩn v&agrave; l&agrave;m b&ocirc;ng l&ocirc;ng.</span></p>\r\n\r\n<p><span style=\"font-size:12px\"><strong>Lưu &yacute;: Đọc kỹ hướng dẫn trước khi sử dụng</strong></span></p>', 0, 0, 0, '2024-06-07 07:55:14', 5, 3, NULL),
(25, 'Găng Tay Tắm Và Chải Lông True Touch (BT) (Gtcl)', 'gang-tay-tam-va-chai-long-true-touch-bt-gtcl', 50000, 0, 5, 0, 0, '2024-06-07__gangtay.png', 0, 0, 1, 0, NULL, '<p><span style=\"font-size:12px\">Khi nu&ocirc;i ch&oacute; m&egrave;o, ai cũng phải gặp những con &aacute;c mộng về l&ocirc;ng khi đến m&ugrave;a thay l&ocirc;ng hay những khi ch&oacute; m&egrave;o đ&ugrave;a giỡn l&ocirc;ng bay lả tả h&agrave;ng ng&agrave;y b&aacute;m tr&ecirc;n giường, đệm, b&agrave;n ghế.&nbsp;Những sản phẩm&nbsp;lược chải l&ocirc;ng th&ocirc;ng&nbsp;thường kh&ocirc;ng thể giải quyết được vấn đề n&agrave;y v&igrave;&nbsp;sau khi chải&nbsp;vẫn sẽ&nbsp;thấy l&ocirc;ng rụng ra v&igrave; chưa loại bỏ hết..</span></p>\r\n\r\n<h1><span style=\"font-size:12px\"><u><a href=\"http://kunmiu.vn/\"><em><strong>Găng tay tắm v&agrave; chải l&ocirc;ng True touch</strong></em></a></u><a href=\"http://kunmiu.vn/\"><u>&nbsp;</u></a>cho ch&oacute; m&egrave;o được c&aacute;c chuy&ecirc;n gia chăm s&oacute;c ch&oacute; m&egrave;o tr&ecirc;n thế giới khuy&ecirc;n d&ugrave;ng sẽ loại bỏ tr&ecirc;n 90% l&ocirc;ng rụng tr&ecirc;n ch&oacute; m&egrave;o v&agrave; c&aacute;c đồ d&ugrave;ng trong nh&agrave;.</span></h1>\r\n\r\n<h2><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>Găng tay tắm v&agrave; chải l&ocirc;ng True touch &nbsp;</strong></em></u></a></span></h2>\r\n\r\n<h2><span style=\"font-size:12px\">- C&oacute; thiết kế h&igrave;nh b&agrave;n tay th&ocirc;ng minh, gi&uacute;p bạn loại bỏ l&ocirc;ng tr&ecirc;n người&nbsp;<a href=\"http://kunmiu.vn/\">c&uacute;n miu</a>&nbsp;dễ d&agrave;ng như khi vuốt ve ch&uacute;ng.<br />\r\n- Th&iacute;ch hợp d&ugrave;ng cho cả ch&oacute; m&egrave;o l&ocirc;ng ngắn hay d&agrave;i<br />\r\n- Loại bỏ l&ocirc;ng rụng tối đa nhưng ko l&agrave;m g&atilde;y rụng l&ocirc;ng khỏe b&ecirc;n ngo&agrave;i<br />\r\n- Mềm mại, dễ sử dụng, k&iacute;ch th&iacute;ch tuần ho&agrave;n m&aacute;u dưới da gi&uacute;p th&uacute; cưng vui khỏe hơn.</span></h2>\r\n\r\n<h3><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>Găng tay tắm v&agrave; chải l&ocirc;ng True touch</strong></em></u></a>&nbsp;đảm bảo sẽ mang đến cho bạn trải nghiệm tốt nhất.</span></h3>\r\n\r\n<h3><span style=\"font-size:12px\">Sản phẩm c&oacute; k&iacute;ch thước: 24x16cm</span></h3>', 0, 0, 0, '2024-06-07 07:56:11', 10, 3, NULL),
(26, 'Kéo Cắt Móng Cho Chó Mèo', 'keo-cat-mong-cho-cho-meo', 30000, 0, 5, 0, 0, '2024-06-07__keo-cat-mong.png', 0, 0, 1, 0, NULL, '<p><span style=\"font-size:12px\">+&nbsp;Việc&nbsp;<em><strong><a href=\"http://kunmiu.vn/dung-cu-lam-dep\">cắt m&oacute;ng cho ch&oacute; m&egrave;o</a>&nbsp;</strong></em>kh&ocirc;ng chỉ để trau chuốt ngoại h&igrave;nh cho n&oacute;, m&agrave; c&ograve;n l&agrave; một việc rất quan trọng trong việc chăm s&oacute;c sức khỏe của c&uacute;n.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">+ Những c&aacute;i m&oacute;ng kh&ocirc;ng được cắt tỉa c&oacute; thể l&agrave; nguy&ecirc;n nh&acirc;n của h&agrave;ng loạt vấn đề kh&aacute;c nhau, v&iacute; dụ như m&oacute;ng bị gẫy c&oacute; thể đau nhức v&agrave; mất m&aacute;u. Trong một số trường hợp, m&oacute;ng sẽ bị cong lại, mọc ngược v&agrave; đ&acirc;m v&agrave;o b&ecirc;n trong ch&acirc;n của c&uacute;n..</span></p>\r\n\r\n<p><span style=\"font-size:12px\">+ Sản phẩm&nbsp;<a href=\"http://kunmiu.vn/dung-cu-lam-dep\">k&eacute;o&nbsp;cắt m&oacute;ng</a>&nbsp;l&agrave; lựa chọn h&agrave;ng đầu m&agrave; bạn d&agrave;nh cho th&uacute; y&ecirc;u.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">Cắt được cho tất cả c&aacute;c loại m&oacute;ng của ch&oacute; m&egrave;o.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">- Sản phẩm được b&aacute;n tại hệ thống K&uacute;n Miu&nbsp;<a href=\"http://kunmiu.vn/\">pet shop</a></span></p>', 0, 0, 0, '2024-06-07 07:57:12', 14, 3, NULL),
(27, 'Bát Ăn Cho Chó Mèo Hình Trái Cây 0215', 'bat-an-cho-cho-meo-hinh-trai-cay-0215', 40000, 0, 6, 0, 0, '2024-06-07__batan-traicay.png', 0, 0, 1, 0, NULL, '<p><span style=\"font-size:12px\"><strong>M&Ocirc; TẢ SẢN PHẨM</strong></span></p>\r\n\r\n<h1><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>B&aacute;t ăn cho ch&oacute; m&egrave;o h&igrave;nh tr&aacute;i c&acirc;y 0215</strong></em></u></a>&nbsp;l&agrave; b&aacute;t ăn ngộ nghĩnh với thiết kế bắt mắt đang được ưa chuộng nhất tr&ecirc;n thị trường.</span></h1>\r\n\r\n<h2><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>B&aacute;t ăn cho ch&oacute; m&egrave;o h&igrave;nh tr&aacute;i c&acirc;y 0215</strong></em></u></a>&nbsp;được l&agrave;m từ nhựa chất lượng cao, đảm bảo an to&agrave;n cho th&uacute; cưng v&agrave; con người. Với kết cấu chắc chắn v&agrave; viền b&aacute;t d&agrave;y dặn, c&aacute;c bạn ho&agrave;n to&agrave;n sẽ h&agrave;i l&ograve;ng về độ bền của loại b&aacute;t ăn n&agrave;y. Sản phẩm c&ograve;n c&oacute; những chiếc ch&acirc;n cao su để ngăn chặn&nbsp;x&ecirc; dịch khi th&uacute; cưng va v&agrave;o, gi&uacute;p hạn chế đổ nước hoặc thức ăn ra ngo&agrave;i.</span></h2>\r\n\r\n<h3><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>B&aacute;t ăn cho ch&oacute; m&egrave;o h&igrave;nh tr&aacute;i c&acirc;y 0215</strong></em></u></a>&nbsp;hiện c&oacute; 3 m&agrave;u sắc pastel v&ocirc; c&ugrave;ng xinh xắn: m&agrave;u xanh dương, xanh l&aacute; c&acirc;y v&agrave; hồng.&nbsp;</span></h3>', 0, 0, 0, '2024-06-07 07:58:46', 20, 3, NULL),
(28, 'Bát Ăn Đơn Hình Mặt Mèo Ngộ Nghĩnh', 'bat-an-don-hinh-mat-meo-ngo-nghinh', 30000, 0, 6, 0, 0, '2024-06-07__batan-matmeo.png', 0, 0, 1, 0, NULL, '<p><span style=\"font-size:12px\"><strong>M&Ocirc; TẢ SẢN PHẨM</strong></span></p>\r\n\r\n<h1><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>B&aacute;t ăn đơn h&igrave;nh mặt m&egrave;o ngộ nghĩnh</strong></em></u></a>&nbsp;l&agrave; sản phẩm được y&ecirc;u th&iacute;ch bởi thiết kế ngộ nghĩnh, đem đến cho th&uacute; cưng&nbsp;những bữa ăn chất lượng.</span></h1>\r\n\r\n<h2><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>B&aacute;t ăn đơn h&igrave;nh mặt m&egrave;o ngộ nghĩnh</strong></em></u></a>&nbsp;được l&agrave;m từ nhựa cao cấp đảm bảo kh&ocirc;ng g&acirc;y hại cho người v&agrave; vật nu&ocirc;i. Với thiết kế h&igrave;nh mặt m&egrave;o đ&aacute;ng y&ecirc;u, b&aacute;t ăn c&oacute; hai chiếc tai ngộ nghĩnh v&agrave; về mặt l&ograve;ng b&aacute;t rộng để c&aacute;c boss tha hồ để hạt v&agrave; thức ăn cho m&egrave;o.</span></h2>\r\n\r\n<h3><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>B&aacute;t ăn đơn h&igrave;nh mặt m&egrave;o ngộ nghĩnh</strong></em></u></a>&nbsp;c&oacute; 3 m&agrave;u sắc sặc sỡ để c&aacute;c bạn thoả sức lựa chọn cho m&egrave;o nh&agrave; m&igrave;nh:</span></h3>\r\n\r\n<p><span style=\"font-size:12px\">- M&agrave;u hồng</span></p>\r\n\r\n<p><span style=\"font-size:12px\">- M&agrave;u v&agrave;ng</span></p>\r\n\r\n<p><span style=\"font-size:12px\">- M&agrave;u xanh dương.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">B&aacute;t ăn cho m&egrave;o c&oacute; k&iacute;ch thước: đường k&iacute;nh đ&aacute;y b&aacute;t: 12cm, đường kinh miệng b&aacute;t: 15cm, chiều cao b&aacute;t : 5cm.</span></p>', 0, 0, 0, '2024-06-07 07:59:31', 20, 3, NULL),
(29, 'Bộ Khay Bát Ăn Và Bình Nước Tự Động Cho Chó Mèo Diil LS122 (BT)', 'bo-khay-bat-an-va-binh-nuoc-tu-dong-cho-cho-meo-diil-ls122-bt', 200000, 0, 6, 0, 10, '2024-06-07__khaythucan.png', 0, 0, 1, 0, NULL, '<h2><span style=\"font-size:12px\">Bộ khay&nbsp;<a href=\"http://kunmiu.vn/\"><em><strong>b&aacute;t ăn v&agrave; b&igrave;nh nước tự động</strong></em></a>&nbsp;cho ch&oacute; m&egrave;o Diil LS122 được sản xuất từ chất liệu nhựa PP an to&agrave;n với người v&agrave; vật nu&ocirc;i, th&acirc;n thiện với m&ocirc;i trường.</span></h2>\r\n\r\n<h3><span style=\"font-size:12px\">Bộ khay&nbsp;<a href=\"http://kunmiu.vn/\"><em><strong>b&aacute;t ăn v&agrave; b&igrave;nh nước tự động</strong></em></a>&nbsp;cho ch&oacute; m&egrave;o Diil LS122 bao gồm 1 b&igrave;nh đựng thức ăn + 1 khay..</span></h3>\r\n\r\n<p><span style=\"font-size:12px\">Trong đ&oacute;, b&igrave;nh đựng thức ăn c&oacute; 1 n&uacute;t vặn để điều chỉnh cửa cho thức ăn rơi ra nhiều hay &iacute;t, b&ecirc;n khay c&ograve;n lại c&oacute; 1 n&uacute;t vặn để gắn vừa với c&aacute;c loại chai nước phổ biến như coca, pepsi, lavie ...</span></p>\r\n\r\n<p><span style=\"font-size:12px\">Sản phẩm c&oacute; thiết kế tiện &iacute;ch, dễ d&agrave;ng sử dụng,&nbsp;m&agrave;u sắc bắt mắt.&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:12px\">Việc ăn uống của th&uacute; cưng kể cả khi bạn vắng nh&agrave; chưa bao giờ dễ d&agrave;ng ,sạch sẽ hơn thế.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">K&iacute;ch thước : 37*33*30cm<br />\r\nTrọng lượng : 1kg</span></p>', 0, 0, 0, '2024-06-07 08:01:10', 5, 3, NULL),
(30, 'Bình Nước Du Lịch Cho Chó Mèo -Travel Waterer 500ml Diill LS161 (BT)', 'binh-nuoc-du-lich-cho-cho-meo-travel-waterer-500ml-diill-ls161-bt', 65000, 0, 6, 0, 0, '2024-06-07__binhnuoc.png', 0, 0, 1, 0, NULL, '<h2><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><em><strong>B&igrave;nh nước du lịch cho ch&oacute; m&egrave;o</strong></em></a>&nbsp;l&agrave; 1 trong những vật dụng kh&ocirc;ng thể thiếu khi đi dạo c&ugrave;ng c&uacute;n miu của bạn..</span></h2>\r\n\r\n<h3><span style=\"font-size:12px\"><em><strong><a href=\"http://kunmiu.vn/\">B&igrave;nh nước du lịch cho ch&oacute; m&egrave;o</a>&nbsp;Travel Waterer&nbsp;</strong></em>được sản xuất từ chất liệu nhựa cao cấp ăn to&agrave;n với người v&agrave; vật nu&ocirc;i. C&oacute; h&igrave;nh d&aacute;ng v&agrave; m&agrave;u sắc bắt mắt</span></h3>\r\n\r\n<p><span style=\"font-size:12px\">Sản phẩm c&oacute; m&aacute;ng đựng nước đi k&egrave;m v&ocirc; c&ugrave;ng thuận tiện gi&uacute;p&nbsp;<a href=\"http://kunmiu.vn/\"><em><strong>c&uacute;n miu</strong></em></a>&nbsp;của bạn dễ d&agrave;ng uống nước hơn.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">Tr&ecirc;n b&igrave;nh c&oacute; 1 m&oacute;c c&agrave;i để gi&uacute;p bạn c&oacute; thể treo v&agrave;o cạnh người hoặc bất kỳ đ&acirc;u&nbsp;bạn muốn m&agrave; kh&ocirc;ng phải cầm tay.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">Dắt th&uacute; cưng đi dạo mỗi ng&agrave;y sẽ gi&uacute;p tăng cường sức khỏe của bạn v&agrave; th&uacute; cưng, nhưng đừng qu&ecirc;n bổ sung nước uống cho ch&uacute;ng nh&eacute;.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">Dung t&iacute;ch : 500ml<br />\r\nK&iacute;ch thước :&nbsp;24*8.5*8cm</span></p>', 0, 0, 0, '2024-06-07 08:02:01', 10, 3, NULL),
(31, 'Đệm Chữ Nhật Cho Chó Mèo 2023', 'dem-chu-nhat-cho-cho-meo-2023', 170000, 0, 7, 0, 0, '2024-06-08__demchunhat.png', 0, 0, 1, 0, NULL, '<p><span style=\"font-size:12px\"><strong>M&Ocirc; TẢ SẢN PHẨM</strong></span></p>\r\n\r\n<h1><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>Đệm chữ nhật cho ch&oacute; m&egrave;o 2023 m&agrave;u ngẫu nhi&ecirc;n</strong></em></u></a>&nbsp;được l&agrave;m từ b&ocirc;ng cao cấp, mang đến cho c&uacute;n miu cảm gi&aacute;c mềm mại, &ecirc;m &aacute;i trong từng giấc ngủ.&nbsp;</span></h1>\r\n\r\n<h2><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>Đệm chữ nhật cho ch&oacute; m&egrave;o 2023 m&agrave;u ngẫu nhi&ecirc;n</strong></em></u></a>&nbsp;c&oacute; thiết kế h&igrave;nh chữ nhật&nbsp;vững ch&atilde;i c&ugrave;ng th&agrave;nh b&ocirc;ng cao&nbsp;qu&acirc;y quanh th&uacute; cưng, tạo n&ecirc;n sự ấm &aacute;p tuyệt vời. B&ecirc;n cạnh đ&oacute;, sợi b&ocirc;ng chất lượng được nhồi chặt sẽ l&agrave;m ch&oacute; m&egrave;o nh&agrave; bạn cảm thấy &ecirc;m &aacute;i v&agrave; thoải m&aacute;i.</span></h2>\r\n\r\n<h3><span style=\"font-size:12px\"><a href=\"http://kunmiu.vn/\"><u><em><strong>Đệm chữ nhật cho ch&oacute; m&egrave;o 2023 m&agrave;u ngẫu nhi&ecirc;n</strong></em></u></a>&nbsp;c&oacute; m&agrave;u sắc v&agrave; hoạ tiết&nbsp;ngộ nghĩnh, đ&aacute;ng y&ecirc;u. Chắc chắn bạn sẽ muốn mua ngay cho Boss ngay khi nh&igrave;n thấy sản phẩm n&agrave;y đ&oacute;!</span></h3>\r\n\r\n<p><span style=\"font-size:12px\">Sản phẩm c&oacute; 5 m&agrave;u sắc v&agrave; 2 size M v&agrave; L để bạn lựa chọn ph&ugrave; hợp với c&acirc;n nặng của th&uacute; cưng.</span></p>', 0, 0, 0, '2024-06-07 08:03:13', 10, 2, '2024-06-08 01:42:10'),
(32, 'Balo Bọ Rùa Trong Suốt Cho Chó Mèo', 'balo-bo-rua-trong-suot-cho-cho-meo', 450000, 0, 7, 0, 10, '2024-06-07__balo1.png', 1, 0, 1, 0, NULL, '<ul>\r\n	<li><span style=\"font-size:12px\"><a href=\"https://kunmiu.vn/balo-bo-rua-trong-suot-cho-cho-meo#product_tabs_description\">TH&Ocirc;NG TIN SẢN PHẨM</a></span></li>\r\n</ul>\r\n\r\n<h2><span style=\"font-size:12px\"><a href=\"https://kunmiu.vn/\"><em><strong>Balo bọ r&ugrave;a trong suốt cho ch&oacute; m&egrave;o</strong></em></a>&nbsp;l&agrave; phụ kiện kh&ocirc;ng thể thiếu nếu c&aacute;c bạn đang nu&ocirc;i boss m&egrave;o hoặc boss c&uacute;n nhỏ. Boss nh&agrave; m&igrave;nh xinh th&igrave; phải cho ra đường khoe với mọi người phải kh&ocirc;ng ạ..</span></h2>\r\n\r\n<p><span style=\"font-size:12px\">Th&ocirc;ng tin chung</span></p>\r\n\r\n<p><span style=\"font-size:12px\">️ K&iacute;ch thước (d&agrave;i x rộng x cao ): 46 x 37 x 40cm .</span></p>\r\n\r\n<p><span style=\"font-size:12px\">️ M&agrave;u sắc : M&agrave;u Kem Trắng Ng&agrave;, Hồng Nhạt, Xanh Pastel, X&aacute;m</span></p>\r\n\r\n<h3><span style=\"font-size:12px\">Đặc điểm&nbsp;<em><strong><a href=\"https://kunmiu.vn/\">Balo bọ r&ugrave;a trong suốt cho ch&oacute; m&egrave;o</a>&nbsp;:</strong></em></span></h3>\r\n\r\n<p><span style=\"font-size:12px\">️ Balo trong suốt h&igrave;nh con bọ cho th&uacute; cưng được l&agrave;m bằng vật liệu nhựa ABS , chất lượng cao, kh&ocirc;ng thấm nước v&agrave; dễ d&agrave;ng vệ sinh lau ch&ugrave;i.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">️ Chất liệu vải oxford s&aacute;ng m&agrave;u kh&ocirc;ng thấm nước. C&aacute;c lỗ ph&iacute;a ở hai b&ecirc;n được thiết kế để th&ocirc;ng gi&oacute; cho th&uacute; cưng thở.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">️ D&acirc;y đeo vai thoải m&aacute;i, thiết kế c&oacute; đai ngực, v&igrave; vậy người đeo sẽ cảm thấy thoải m&aacute;i khi vận chuyển th&uacute; cưng</span></p>\r\n\r\n<p><span style=\"font-size:12px\">️Sản phẩm c&oacute; thể được sử dụng l&agrave;m đẹm ngủ cho th&uacute; cưng.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">️Sản phẩm rất dễ d&agrave;ng th&aacute;o lắp, ch&ugrave;i rửa v&agrave; vệ sinh ️ Ph&ugrave; hợp với m&egrave;o v&agrave; ch&oacute; c&uacute;n cỡ nhỏ với trọng lượng dưới 5kg.</span></p>', 0, 0, 0, '2024-06-07 08:04:04', 5, 2, NULL),
(33, 'Lồng Sơn Tĩnh Điện Nan Dày Cho Thú Cưng', 'long-son-tinh-dien-nan-day-cho-thu-cung', 200000, 0, 7, 0, 10, '2024-06-07__long.png', 2, 0, 1, 0, NULL, '<h2 style=\"text-align:start\"><span style=\"font-size:12px\"><span style=\"font-family:Arial,&quot;sans-serif&quot;\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><em><strong><span style=\"font-family:Arimo,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Helvetica Neue,Helvetica,sans-serif\"><a href=\"https://kunmiu.vn/dem-long-tui-van-chuyen\" style=\"box-sizing:border-box; color:#064475; text-decoration:none; outline:0px\"><span style=\"color:#3498db\">Lồng sơn tĩnh điện nan d&agrave;y cho th&uacute; cưng</span></a></span></span></span></strong></em><span style=\"color:#000000\"><span style=\"font-family:Arimo,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Helvetica Neue,Helvetica,sans-serif\">&nbsp;nay d&agrave;y l&agrave;&nbsp;<a href=\"https://kunmiu.vn/dem-long-tui-van-chuyen\" style=\"box-sizing:border-box; color:#333333; text-decoration:none\">lồng cho ch&oacute; m&egrave;o</a></span><span style=\"color:#3e3e3e\">&nbsp;dễ d&agrave;ng th&aacute;o lắp v&agrave; di chuyển. Khay vệ sinh b&ecirc;n dưới ho&agrave;n to&agrave;n c&oacute; thể k&eacute;o ra để vệ sinh dễ d&agrave;ng hơn. Cấu tr&uacute;c chắc chắn, th&ocirc;ng tho&aacute;ng ph&ugrave; hợp cho tất cả c&aacute;c giống ch&oacute; v&agrave; m&egrave;o..</span></span></span></span></span></span></span></span></h2>\r\n\r\n<h3 style=\"text-align:start\"><span style=\"font-size:12px\"><span style=\"font-family:Arial,&quot;sans-serif&quot;\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-family:Arimo,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#3e3e3e\">K&iacute;ch cỡ&nbsp;</span></span></span></span><em><strong><span style=\"font-family:Arimo,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Helvetica Neue,Helvetica,sans-serif\"><a href=\"https://kunmiu.vn/dem-long-tui-van-chuyen\" style=\"box-sizing:border-box; color:#333333; text-decoration:none\"><span style=\"color:#3498db\">Lồng sơn tĩnh điện nan d&agrave;y cho th&uacute; cưng</span></a></span></span></span></strong></em><span style=\"color:#000000\"><span style=\"font-family:Arimo,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#3e3e3e\">&nbsp;:</span></span></span></span></span></span></span></span></h3>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-size:12px\"><span style=\"color:#333333\"><span style=\"font-family:Arial,&quot;sans-serif&quot;\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-family:Arimo,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#3e3e3e\">Tại sao bạn y&ecirc;n t&acirc;m khi chọn qu&acirc;y sơn tĩnh điện?<br />\r\n&diams; C&ocirc;ng nghệ sơn tĩnh điện: mang lại cho sản phẩm cực nhiều ưu điểm (l&agrave; c&ocirc;ng nghệ sơn ti&ecirc;n tiến dựa tr&ecirc;n nguy&ecirc;n l&yacute; 2 ion ngược dấu sẽ h&uacute;t nhau):<br />\r\n&nbsp; &nbsp; &nbsp;+ bột sơn kh&ocirc;ng c&oacute; dung m&ocirc;i =&gt; v&ocirc; c&ugrave;ng an to&agrave;n, kh&ocirc;ng sợ ch&aacute;y.<br />\r\n&nbsp; &nbsp; &nbsp;+ kh&ocirc;ng dẫn điện.<br />\r\n&nbsp; &nbsp; &nbsp;+ kh&ocirc;ng sợ kim loại bị ăn m&ograve;n, ion h&oacute;a khi sử dụng nhiều ở ngo&agrave;i trời, độ bền của sản phẩm cao hơn sơn thường rất nhiều.<br />\r\n&nbsp; &nbsp; &nbsp;+ khả năng chịu nhiệt cao, kh&ocirc;ng bị ảnh hưởng của m&ocirc;i trường n&oacute;ng hay lạnh, tăng tuổi thọ cho sản phẩm.<br />\r\n&nbsp; &nbsp; &nbsp;+ dễ d&agrave;ng lau ch&ugrave;i, vệ sinh.<br />\r\n&nbsp; &nbsp; &nbsp;+ th&acirc;n thiện với m&ocirc;i trường.</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-size:12px\"><span style=\"color:#333333\"><span style=\"font-family:Arial,&quot;sans-serif&quot;\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-family:Arimo,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#3e3e3e\">&nbsp;&diams; Thiết kế th&ocirc;ng tho&aacute;ng, kh&ocirc;ng gian rộng: Lồng sắt sơn tĩnh điện n&agrave;y sẽ tạo cho pet y&ecirc;u của bạn cảm gi&aacute;c thoải m&aacute;i, kh&ocirc;ng cảm thấy bức b&iacute;. Bạn cũng c&oacute; thể đặt th&ecirc;m c&aacute;c dụng cụ kh&aacute;c như đồ chơi để ch&uacute;ng chơi hay tấm l&oacute;t b&ecirc;n trong để c&oacute; thể ch&uacute;ng kh&ocirc;ng cảm thấy lạnh hoặc đơn giản cho sạch hơn, cũng sẽ rất tiện lợi. Sản phẩm n&agrave;y dường như l&agrave; đ&atilde; tạo l&ecirc;n một kh&ocirc;ng gian nhỏ cho Pet y&ecirc;u của bạn.</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-size:12px\"><span style=\"color:#333333\"><span style=\"font-family:Arial,&quot;sans-serif&quot;\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-family:Arimo,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#3e3e3e\">&nbsp;&diams; Linh động, dễ d&agrave;ng gấp gọn: Lồng ch&oacute; m&egrave;o được thiết kế c&oacute; thể gấp gọn được, bởi vậy khi kh&ocirc;ng cần sử dụng đến, hay khi di chuyển ch&uacute;ng ta c&oacute; thể gấp gọn g&agrave;ng lại được một c&aacute;ch rất dễ d&agrave;ng, vừa ngăn nắp, vừa tiện lợi phải kh&ocirc;ng ạ.</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-size:12px\"><span style=\"color:#333333\"><span style=\"font-family:Arial,&quot;sans-serif&quot;\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-family:Arimo,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#3e3e3e\">&diams; Thiết kế th&ocirc;ng minh 2 cửa gi&uacute;p thuận tiện khi sử dụng</span></span></span></span></span></span></span></span></p>', 0, 0, 0, '2024-06-07 08:04:54', 5, 2, NULL),
(34, 'Túi Vận Chuyển Chó Mèo (Tvc)', 'tui-van-chuyen-cho-meo-tvc', 130000, 0, 7, 0, 0, '2024-06-07__tuivanchuyen.png', 0, 0, 1, 0, NULL, '<p><span style=\"font-size:12px\"><strong>&Ocirc; TẢ SẢN PHẨM</strong></span></p>\r\n\r\n<h1><span style=\"font-size:12px\"><a href=\"https://kunmiu.vn/dem-long-tui-van-chuyen\"><strong><em>T&uacute;i vận chuyển ch&oacute; m&egrave;o</em></strong></a>&nbsp;kiểu d&aacute;ng v&agrave; m&agrave;u sắc đẹp, hấp dẫn th&uacute; cưng nh&agrave; bạn, chất liệu bền, chắc chắn, nhiều m&agrave;u sắc cho bạn lựa chọn</span></h1>\r\n\r\n<h2><span style=\"font-size:12px\"><strong><a href=\"https://kunmiu.vn/dem-long-tui-van-chuyen\"><em>T&uacute;i vận chuyển ch&oacute; m&egrave;o</em></a>&nbsp;</strong>C&oacute; tay cầm, c&oacute; kh&oacute;a k&eacute;o c&ugrave;ng lỗ tho&aacute;ng gi&oacute; rất tiện lợi cho cả bạn v&agrave; th&uacute; cưng mỗi khi di chuyển.</span></h2>\r\n\r\n<h3><span style=\"font-size:12px\"><strong><a href=\"https://kunmiu.vn/dem-long-tui-van-chuyen\"><em>T&uacute;i vận chuyển ch&oacute; m&egrave;o</em></a>&nbsp;</strong>dễ sử dụng, t&uacute;i cứng thoải m&aacute;i cho ch&oacute; m&egrave;o vận động b&ecirc;n trong m&agrave; kh&ocirc;ng sợ k&iacute;ch ứng</span></h3>', 0, 0, 0, '2024-06-07 08:05:44', 10, 2, NULL),
(35, 'Tấm Nhựa Dẻo Lót Sàn, Chuồng Cho Chó Mèo', 'tam-nhua-deo-lot-san-chuong-cho-cho-meo', 20000, 0, 7, 0, 0, '2024-06-07__nhualotsan.png', 0, 0, 1, 0, NULL, '<p><span style=\"font-size:12px\">Tấm nhựa dẻo l&oacute;t chuồng cho ch&oacute; m&egrave;o&nbsp;được l&agrave;m&nbsp;từ nhựa n&ecirc;n c&oacute; độ dẻo dai cao, th&acirc;n thiện với m&ocirc;i trường, c&aacute;ch nhiệt v&agrave; tho&aacute;ng kh&iacute; rất tốt, được đặt trong lồng, c&oacute; thể để l&agrave;m ch&acirc;n đế chuống của vật nu&ocirc;i nhỏ trong lồng để di chuyển thoải m&aacute;i hơn</span></p>\r\n\r\n<p><span style=\"font-size:12px\">Tấm nhựa dẻo l&oacute;t chuồng&nbsp;chịu được lực lớn, chống chịu được nhiệt độ m&ocirc;i trường khắc nhiệt m&agrave; ko l&agrave;m biếng dạng sản phẩm, c&aacute;c khớp nối lắp gh&eacute;p dễ d&agrave;ng..</span></p>\r\n\r\n<p><span style=\"font-size:12px\">Đường k&iacute;nh của lỗ l&agrave; 1.4cm, một tỉ lệ ph&ugrave; hợp để những vật nu&ocirc;i nhỏ kh&ocirc;ng bị thọt ch&acirc;n xuống chuồng khi mắt chuồng qu&aacute; to, m&ugrave;a h&egrave; c&aacute;ch nhiệt, m&ugrave;a đ&ocirc;ng giữ ấm, ph&ograve;ng chống&nbsp; m&oacute;ng vuốt của những vật nu&ocirc;i nhỏ biến dạng, ph&ograve;ng chống vi&ecirc;m da ch&acirc;n.</span></p>\r\n\r\n<p><span style=\"font-size:12px\"><strong>K&iacute;ch thước</strong>: 20x30cm.</span></p>', 0, 0, 0, '2024-06-07 08:06:33', 20, 2, NULL),
(36, 'Cát Vệ Sinh Kún Miu Hương Cà Phê 8L - Tinh Chất Than Hoạt Tính Và Zeolite Cao Cấp (8LCFKM)', 'cat-ve-sinh-kun-miu-huong-ca-phe-8l-tinh-chat-than-hoat-tinh-va-zeolite-cao-cap-8lcfkm', 90000, 0, 8, 0, 20, '2024-06-07__catvs1.png', 1, 0, 1, 2, NULL, '<h2><span style=\"font-size:12px\"><a href=\"https://kunmiu.vn/cat-ve-sinh-dung-cu-ve-sinh\"><em><strong>C&aacute;t vệ sinh cho m&egrave;o</strong></em></a><em><strong>&nbsp;K&uacute;n Miu hương C&agrave; Ph&ecirc; 8L</strong></em>&nbsp;được sản xuất ho&agrave;n to&agrave;n từ 100% đất sodium bentonite chất lượng cao theo quy tr&igrave;nh hiện đại, với c&aacute;c t&iacute;nh năng vượt trội sau:</span></h2>\r\n\r\n<p><span style=\"font-size:12px\">- Tinh chất than hoạt t&iacute;nh gi&uacute;p khử m&ugrave;i cực k&igrave; hiệu quả.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">- Tinh chất zeolite gi&uacute;p tăng độ v&oacute;n, thấm h&uacute;t cực nhanh v&agrave; hiệu quả. K&uacute;n Miu l&agrave; sản phẩm đầu ti&ecirc;n của VN &aacute;p dụng c&ocirc;ng nghệ n&agrave;y.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">&nbsp; &nbsp; - Kết d&iacute;nh nhanh, độ v&oacute;n tốt, dễ d&agrave;ng x&uacute;c bỏ.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">&nbsp; &nbsp; - Khử m&ugrave;i hiệu quả, chống ẩm, m&ugrave;i hương dễ chịu.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">&nbsp; &nbsp; - Giảm 99,9% bụi, an to&agrave;n sử dụng với người v&agrave; th&uacute; cưng.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">&nbsp; &nbsp; - Sản phẩm sạch c&oacute; nguồn gốc thi&ecirc;n nhi&ecirc;n, th&acirc;n thiện với m&ocirc;i trường.</span></p>\r\n\r\n<h3><span style=\"font-size:12px\">Ưu điểm của<strong>&nbsp;</strong><a href=\"https://kunmiu.vn/cat-ve-sinh-dung-cu-ve-sinh\"><em><strong>C&aacute;t vệ sinh cho m&egrave;o</strong></em></a><em><strong>&nbsp;K&uacute;n Miu hương C&agrave; Ph&ecirc; 8L</strong></em><strong>&nbsp;</strong>so với<strong>&nbsp;</strong>những sản phẩm c&aacute;t vệ sinh th&ocirc;ng thường kh&aacute;c:</span></h3>\r\n\r\n<p><span style=\"font-size:12px\">&nbsp; &nbsp; 1. Si&ecirc;u thấm h&uacute;t, sử dụng tiết kiệm</span></p>\r\n\r\n<p><span style=\"font-size:12px\">Được cấu tạo từ 100% nguy&ecirc;n liệu đất s&eacute;t sodium bentonite v&agrave; bằng việc sử dụng c&ocirc;ng nghệ hiện đại, c&aacute;c hạt c&aacute;t vệ sinh c&oacute; h&igrave;nh dạng tr&ograve;n nhờ đ&oacute; m&agrave; c&aacute;t kết d&iacute;nh cực nhanh với chất thải của m&egrave;o, thẩm thấu tốt, sử dụng tiết kiệm hơn rất nhiều so với những sản phẩm th&ocirc;ng thường kh&aacute;c.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">&nbsp; &nbsp; 2. &Iacute;t bụi, th&acirc;n thiện với m&ocirc;i trường</span></p>\r\n\r\n<p><span style=\"font-size:12px\">Sử dụng c&ocirc;ng nghệ ti&ecirc;n tiến tr&ecirc;n thế giới về khử bụi v&agrave; qu&aacute; tr&igrave;nh tiệt tr&ugrave;ng bằng nhiệt độ cao để chắt lọc th&agrave;nh phần đất s&eacute;t sodium bentonite tinh khiết nhất cho sản phẩm.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">&nbsp; &nbsp; 3. Hương thơm tự nhi&ecirc;n, khử m&ugrave;i hiệu quả</span></p>\r\n\r\n<p><span style=\"font-size:12px\"><a href=\"https://kunmiu.vn/cat-ve-sinh-dung-cu-ve-sinh\"><em><strong>C&aacute;t vệ sinh cho m&egrave;o</strong></em></a><em><strong>&nbsp;K&uacute;n Miu hương C&agrave; Ph&ecirc; 8L&nbsp;&aacute;</strong></em>p dụng c&ocirc;ng nghệ hiện đại gi&uacute;p hạt c&aacute;t&nbsp;với hương thơm dễ chịu, kh&ocirc;ng g&acirc;y k&iacute;ch ứng cho người v&agrave; vật nu&ocirc;i, đặc biệt c&oacute; khả năng khử m&ugrave;i cực k&igrave; hiệu quả v&agrave; lưu giữ hương thơm được d&agrave;i l&acirc;u.</span></p>\r\n\r\n<p><span style=\"font-size:12px\"><em><strong>+ Dung t&iacute;ch : 8L</strong></em></span></p>\r\n\r\n<p><span style=\"font-size:12px\"><em><strong>+ Quy c&aacute;ch đ&oacute;ng g&oacute;i : 4 t&uacute;i/ tải</strong></em></span></p>', 0, 0, 0, '2024-06-07 08:08:54', 10, 3, '2024-06-08 05:36:10'),
(37, 'Đồ Chơi Quả Tạ Gai Có Chuông', 'do-choi-qua-ta-gai-co-chuong', 30000, 0, 9, 0, 0, '2024-06-07__dochoi1.png', 1, 0, 1, 1, NULL, '<p><span style=\"font-size:12px\"><a href=\"https://kunmiu.vn/\" rel=\"nofollow\"><strong><em>Đồ chơi cho ch&oacute;</em></strong></a>&nbsp;h&igrave;nh quả tạ gai c&oacute; chu&ocirc;ng l&agrave; loại đồ chơi h&igrave;nh xương c&oacute; gai, chắc chắn gi&uacute;p th&uacute; cưng dễ vui chơi, vờn nghịch m&agrave; ko sợ trơn tuột mất..</span></p>\r\n\r\n<p><span style=\"font-size:12px\">+&nbsp;<a href=\"https://kunmiu.vn/\" rel=\"nofollow\"><strong><em>Đồ chơi cho ch&oacute;</em></strong></a>&nbsp;h&igrave;nh quả tạ gai c&oacute; chu&ocirc;ng l&agrave;m từ chất liệu an to&agrave;n, m&agrave;u sắc thu h&uacute;t, gi&uacute;p th&uacute; cưng hăng say chơi ch&uacute;ng, tạo sự vận động khỏe mạnh v&agrave; nhanh nhẹn<br />\r\n+ Kiểu d&aacute;ng v&agrave; m&agrave;u sắc đẹp, hấp dẫn th&uacute; cưng nh&agrave; bạn, chất liệu bền, chắc chắn<br />\r\nChất liệu: Cao su</span></p>\r\n\r\n<p><span style=\"font-size:12px\">Sản phẩm c&oacute; chiều d&agrave;i 14cm, độ d&agrave;y l&agrave; 4.5cm</span></p>\r\n\r\n<p><span style=\"font-size:12px\">Lưu &yacute;: Qu&yacute; kh&aacute;ch vui l&ograve;ng ghi ch&uacute; m&agrave;u sắc mong muốn. Ch&uacute;ng t&ocirc;i sẽ gửi m&agrave;u ngẫu nhi&ecirc;n nếu như đơn h&agrave;ng kh&ocirc;ng c&oacute; ghi ch&uacute; hoặc m&agrave;u sắc qu&yacute; kh&aacute;ch muốn</span></p>', 0, 0, 0, '2024-06-07 08:09:55', 20, 3, '2024-06-07 20:02:01'),
(38, 'Áo Thun Không Tay Cho Chó Mèo', 'ao-thun-khong-tay-cho-cho-meo', 30000, 0, 10, 0, 0, '2024-06-07__aothun1.png', 2, 0, 1, 1, NULL, '<h1><span style=\"font-size:12px\"><em><strong><a href=\"https://kunmiu.vn/quan-ao-cho-meo\">&Aacute;o nỉ kh&ocirc;ng tay cho ch&oacute; m&egrave;o</a>&nbsp;</strong></em>được l&agrave;m từ chất liệu mềm mại, &ecirc;m &aacute;i, 100% kh&ocirc;ng g&acirc;y k&iacute;ch ứng da, đảm bảo an to&agrave;n..</span></h1>\r\n\r\n<h2><span style=\"font-size:12px\">Sản phẩm&nbsp;<em><strong><a href=\"https://kunmiu.vn/quan-ao-cho-meo\">&Aacute;o nỉ kh&ocirc;ng tay cho ch&oacute; m&egrave;o</a></strong></em>&nbsp;được thiết kế ph&ugrave; hợp với mọi d&ograve;ng ch&oacute; m&egrave;o.</span></h2>\r\n\r\n<p><span style=\"font-size:12px\">● C&aacute;c&nbsp;<strong>họa tiết</strong>&nbsp;tinh tế, bắt mắt.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">● C&oacute; nhiều&nbsp;<strong>size</strong>&nbsp;lựa chọn.</span></p>\r\n\r\n<p><span style=\"font-size:12px\">●&nbsp;<strong>2 m&agrave;u</strong>: đen, x&aacute;m.</span></p>', 1, 4, 4, '2024-06-07 08:10:49', 9, 3, '2024-06-08 05:55:15');

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_product_id` int(11) NOT NULL DEFAULT 0,
  `pa_attribute_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`) VALUES
(65, 1, 1),
(66, 1, 14),
(68, 2, 9),
(70, 3, 9),
(71, 4, 10),
(72, 5, 9),
(73, 6, 7),
(74, 7, 14),
(75, 8, 5),
(76, 8, 9),
(77, 9, 1),
(78, 9, 11),
(79, 9, 7),
(80, 10, 5),
(81, 10, 14);

-- --------------------------------------------------------

--
-- Table structure for table `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` int(11) NOT NULL DEFAULT 0,
  `pk_keyword_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_keywords`
--

INSERT INTO `products_keywords` (`id`, `pk_product_id`, `pk_keyword_id`) VALUES
(17, 1, 1),
(19, 2, 1),
(21, 3, 1),
(22, 4, 1),
(23, 5, 1),
(24, 6, 1),
(25, 7, 1),
(26, 8, 1),
(27, 9, 1),
(28, 10, 1),
(29, 11, 1),
(30, 12, 1),
(34, 13, 1),
(35, 14, 1),
(36, 15, 1),
(37, 16, 1),
(38, 17, 1),
(39, 18, 3),
(40, 19, 3),
(41, 20, 3),
(42, 21, 3),
(43, 22, 3),
(44, 23, 3),
(45, 24, 3),
(46, 24, 5),
(47, 25, 3),
(48, 25, 5),
(49, 26, 3),
(50, 26, 5),
(51, 27, 5),
(52, 28, 5),
(53, 29, 5),
(54, 30, 5),
(56, 32, 2),
(57, 33, 2),
(58, 34, 2),
(59, 35, 2),
(60, 36, 3),
(63, 38, 6),
(64, 37, 4),
(65, 31, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` int(11) NOT NULL DEFAULT 0,
  `r_product_id` int(11) NOT NULL DEFAULT 0,
  `r_number` tinyint(4) NOT NULL DEFAULT 0,
  `r_status` tinyint(4) NOT NULL DEFAULT 0,
  `r_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`) VALUES
(2, 6, 38, 4, 0, 'Sản phẩm ổn', '2024-06-08 05:55:15', '2024-06-08 05:55:15');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sd_title` varchar(255) DEFAULT NULL,
  `sd_link` varchar(255) DEFAULT NULL,
  `sd_image` varchar(255) DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT 1,
  `sd_active` tinyint(4) NOT NULL DEFAULT 1,
  `sd_sort` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, 'Slide 1', 'https://www.google.com/', '2024-06-07__baner1.png', 1, 1, 0, '2024-06-07 05:43:13', '2024-06-07 05:43:13'),
(2, 'Slide 2', 'https://www.google.com/', '2024-06-07__banner2.png', 1, 1, 0, '2024-06-07 05:43:33', '2024-06-07 05:43:33'),
(3, 'Slide 3', 'https://www.google.com/', '2024-06-07__banner3.png', 1, 1, 0, '2024-06-07 05:43:50', '2024-06-07 05:43:50');

-- --------------------------------------------------------

--
-- Table structure for table `statics`
--

CREATE TABLE `statics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_title` varchar(255) DEFAULT NULL,
  `s_slug` varchar(255) DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT 0,
  `s_md5` varchar(255) DEFAULT NULL,
  `s_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statics`
--

INSERT INTO `statics` (`id`, `s_title`, `s_slug`, `s_type`, `s_md5`, `s_content`, `created_at`, `updated_at`) VALUES
(1, 'Hướng Dẫn Thah Toán Và Mua Hàng', NULL, 1, NULL, '<p>AAAAAAAAAAAAAAAAAAAAAAAAAAAAA</p>', '2024-03-01 06:26:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` int(11) NOT NULL DEFAULT 0,
  `tst_total_money` int(11) NOT NULL DEFAULT 0,
  `tst_name` varchar(255) DEFAULT NULL,
  `tst_email` varchar(255) DEFAULT NULL,
  `tst_phone` varchar(255) DEFAULT NULL,
  `tst_address` varchar(255) DEFAULT NULL,
  `tst_note` varchar(255) DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT 1,
  `tst_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `tst_code` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `tst_code`, `created_at`, `updated_at`) VALUES
(1, 1, 49500, 'Vũ Thế Hùng', 'haihpv98@gmail.com', '0976543218', 'Hà Đông - Hà Nội', NULL, 3, 1, 'HkI83OI1dxC8yYe', '2024-06-07 19:22:33', '2024-06-07 19:24:16'),
(11, 1, 153000, 'Vũ Thế Hùng', 'haihpv98@gmail.com', '0976543218', 'Hà Đông - Hà Nội', NULL, 3, 1, '78n4aXGjFFlHxPO', '2024-06-07 19:30:51', '2024-06-07 19:33:32'),
(12, 1, 55000, 'Vũ Thế Hùng', 'haihpv98@gmail.com', '0976543218', 'Hà Đông - Hà Nội', NULL, 3, 1, 'ZkkWPqhJLq5ioTE', '2024-06-07 19:57:03', '2024-06-07 19:57:37'),
(13, 1, 72000, 'Vũ Thế Hùng', 'haihpv98@gmail.com', '0976543218', 'Hà Đông - Hà Nội', NULL, 3, 1, NULL, '2024-06-07 20:00:35', '2024-06-07 20:02:29'),
(14, 1, 605000, 'Vũ Thế Hùng', 'haihpv98@gmail.com', '0976543218', 'Hà Đông - Hà Nội', NULL, 1, 1, 'ahxKpO0IcVTBeTM', '2024-06-08 00:52:20', NULL),
(15, 6, 30000, 'Đào Quang Duy', 'hungvt280102@gmail.com', '0918818999', 'Nguyễn Xiển, Thanh Xuân, Hà Nội', NULL, 3, 1, 'yYC9iFxA9iu8HiI', '2024-06-08 01:45:34', '2024-06-08 05:40:24'),
(16, 6, 144000, 'Đào Quang Duy', 'hungvt280102@gmail.com', '0918818999', 'Nguyễn Xiển, Thanh Xuân, Hà Nội', NULL, 2, 1, 'zcitZXCNUOzMTiM', '2024-06-08 05:36:10', '2024-06-08 05:41:18'),
(17, 6, 50000, 'Đào Quang Duy', 'hungvt280102@gmail.com', '0918818999', 'Nguyễn Xiển, Thanh Xuân, Hà Nội', NULL, -1, 1, 'DAkWS7Eo0385Xf4', '2024-06-08 05:39:04', '2024-06-08 05:40:32'),
(18, 7, 123000, 'Nguyễn Minh Hiếu', 'hieunm@gmail.com', '0973647899', 'Nguyễn Trãi, Thanh Xuân, Hà Nội', NULL, 3, 1, 'UfIidGjYBwPlxcj', '2024-06-10 05:35:20', '2024-06-10 05:36:17');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `t_name` varchar(255) DEFAULT NULL,
  `t_slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `t_name`, `t_slug`, `created_at`, `updated_at`) VALUES
(1, 'Hương vị', 'huong-vi', '2024-06-01 07:09:10', NULL),
(2, 'Màu sắc', 'mau-sac', '2024-06-01 17:28:58', NULL);

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
  `phone` varchar(255) NOT NULL,
  `log_login` text DEFAULT NULL,
  `count_comment` tinyint(4) NOT NULL DEFAULT 0,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `log_login`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Vũ Thế Hùng', 'haihpv98@gmail.com', NULL, '$2y$10$CDNGS5gixS5Lp0fQk1nyLOeitdtZNR4lbeOdNk08D5gdDDrOcWyI6', '0976543218', '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"125.0.0.0\",\"time\":\"2024-06-07T02:12:36.124382Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"125.0.0.0\",\"time\":\"2024-06-07T08:20:11.160904Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"125.0.0.0\",\"time\":\"2024-06-07T12:31:04.691924Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"125.0.0.0\",\"time\":\"2024-06-08T02:20:31.492519Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"125.0.0.0\",\"time\":\"2024-06-08T02:28:13.556284Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"125.0.0.0\",\"time\":\"2024-06-08T07:21:13.962831Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"125.0.0.0\",\"time\":\"2024-06-08T07:41:23.180886Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"125.0.0.0\",\"time\":\"2024-06-08T07:45:50.734207Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"125.0.0.0\",\"time\":\"2024-06-08T08:40:12.838652Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"125.0.0.0\",\"time\":\"2024-06-08T09:08:49.805339Z\"}]', 2, 'Hà Đông - Hà Nội', NULL, NULL, '2024-06-06 19:11:31', '2024-06-06 19:13:11'),
(6, 'Đào Quang Duy', 'hungvt280102@gmail.com', NULL, '$2y$10$NRRT32OeNjE3FD/IenPEBuIleUhsWFNcK8EAvKiLzUnYX8Xu7RRSW', '0918818999', '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"125.0.0.0\",\"time\":\"2024-06-08T08:44:49.913087Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"125.0.0.0\",\"time\":\"2024-06-08T12:35:15.872790Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"125.0.0.0\",\"time\":\"2024-06-08T12:53:51.678899Z\"}]', 0, NULL, NULL, NULL, '2024-06-08 01:43:05', NULL),
(7, 'Nguyễn Minh Hiếu', 'hieunm@gmail.com', NULL, '$2y$10$1dgjmXYrRSLdfYlUQA.DxuQs0HX.r/SGkNFOTb8vyFkiFhiOnm/Ym', '0973647899', '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"125.0.0.0\",\"time\":\"2024-06-10T12:33:52.227401Z\"}]', 0, NULL, NULL, NULL, '2024-06-10 05:33:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` int(11) NOT NULL DEFAULT 0,
  `uf_user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_type_id_index` (`atb_type_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Indexes for table `discount_code`
--
ALTER TABLE `discount_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `discount_code_d_code_unique` (`d_code`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_k_slug_unique` (`k_slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

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
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `producer_pdr_slug_unique` (`pdr_slug`),
  ADD UNIQUE KEY `producer_pdr_email_unique` (`pdr_email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Indexes for table `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  ADD KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `types_t_name_unique` (`t_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `discount_code`
--
ALTER TABLE `discount_code`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `producer`
--
ALTER TABLE `producer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
