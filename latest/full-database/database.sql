-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 10, 2023 at 10:26 PM
-- Server version: 5.7.40-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zainrajput_sofiaapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Brand 1', 'Whitelist', '2022-11-26 17:20:57', '2022-11-26 17:20:57'),
(3, 'Brand 2', 'blacklist', '2022-11-26 17:21:09', '2022-11-26 17:21:09'),
(4, 'Brand 3', 'blacklist', '2022-11-26 17:24:23', '2022-11-26 17:24:23'),
(5, 'Brand 4', 'whitelist', '2022-11-26 17:24:33', '2022-11-26 17:24:33'),
(7, 'Brand 5', 'Blacklist', NULL, NULL),
(8, 'Brand 6', 'Whitelist', NULL, NULL),
(9, 'Brand 7', 'Blacklist', NULL, NULL),
(12, 'Brand 8', 'Whitelist', NULL, NULL),
(14, 'Brand 9', 'Blacklist', NULL, NULL),
(15, 'Brand 10', 'whitelist', '2022-12-13 21:19:15', '2022-12-13 21:19:15');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_child` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `child_of` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `is_child`, `child_of`, `created_at`, `updated_at`) VALUES
(1, 'brand_name', '0', NULL, '2022-11-26 16:37:25', '2022-11-26 16:40:43'),
(3, 'checking', '1', '1', '2022-11-26 16:37:47', '2022-11-26 16:37:47'),
(4, 'checking', '1', '2', '2022-11-26 16:37:51', '2022-11-26 16:37:51'),
(5, 'checking', '1', '4', '2022-11-26 16:38:02', '2022-11-26 16:38:02'),
(6, 'Maincategory', 'Main', 'Select', NULL, NULL),
(7, 'MuhammadYousuf', 'Main', 'Select', NULL, NULL),
(8, '', 'Sub2', 'checking', NULL, NULL),
(9, 'ax', 'Main', 'brand_name', NULL, NULL),
(10, 'checking', '1', '4', '2022-11-29 17:55:34', '2022-11-29 17:55:34'),
(11, 'Watches', '1', '0', '2022-11-29 17:59:00', '2022-11-29 17:59:00'),
(12, 'Watches', '0', NULL, '2022-11-29 18:00:35', '2022-11-29 18:00:35'),
(13, 'Watches', '0', NULL, '2022-11-29 18:20:16', '2022-11-29 18:20:16'),
(14, 'Parent', '0', NULL, '2022-12-29 20:09:59', '2022-12-29 20:09:59'),
(15, 'Child', '1', '14', '2022-12-29 20:10:30', '2022-12-29 20:10:30'),
(16, 'subChild', '1', '15', '2022-12-29 20:56:38', '2022-12-29 20:56:38'),
(17, 'subChild2', '1', '15', '2022-12-29 20:56:57', '2022-12-29 20:56:57'),
(18, 'brand_name', '0', NULL, '2022-12-29 20:57:14', '2023-01-02 20:10:13'),
(19, 'brand_name', '0', NULL, '2022-12-29 20:57:53', '2023-01-02 20:10:18'),
(20, 'brand_name', '0', NULL, '2022-12-29 20:57:59', '2023-01-02 20:10:22'),
(21, 'brand_name', '0', NULL, '2022-12-29 20:58:33', '2023-01-02 20:10:26'),
(22, 'SubChild301', '0', '0', '2023-01-02 20:48:50', '2023-01-02 20:48:50'),
(23, 'SubChild301', '0', '0', '2023-01-02 21:12:12', '2023-01-02 21:12:12'),
(24, 'SubChild301', '0', '0', '2023-01-02 21:12:15', '2023-01-02 21:12:15'),
(25, 'SubChild301', '0', '0', '2023-01-02 21:12:19', '2023-01-02 21:12:19'),
(26, 'xasxsa', '0', NULL, '2023-01-02 21:15:03', '2023-01-02 21:15:03'),
(27, 'testparent', '0', NULL, '2023-01-02 21:16:09', '2023-01-02 21:16:09'),
(28, 'testchild1', '1', '27', '2023-01-02 21:19:17', '2023-01-02 21:19:17'),
(29, 'testchild1', '1', '27', '2023-01-02 21:20:55', '2023-01-02 21:20:55'),
(30, 'testsubchild1', '1', '28', '2023-01-02 21:21:27', '2023-01-02 21:21:27'),
(31, 'men', '0', NULL, '2023-01-03 21:44:28', '2023-01-03 21:44:28'),
(32, 'women', '0', NULL, '2023-01-03 21:44:37', '2023-01-03 21:44:37'),
(33, 'kid', '0', NULL, '2023-01-03 21:44:44', '2023-01-03 21:44:44'),
(34, 'kid', '0', NULL, '2023-01-03 21:44:51', '2023-01-03 21:44:51'),
(35, 'shoes', '1', '31', '2023-01-03 21:45:08', '2023-01-03 21:45:08'),
(36, 'formal shoes', '1', '35', '2023-01-03 21:45:59', '2023-01-03 21:45:59'),
(37, 'casual shoes', '1', '35', '2023-01-03 21:47:22', '2023-01-03 21:47:22');

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
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` tinyint(4) NOT NULL,
  `product_id` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(5, 30, 18, '2022-12-19 16:30:40', '2022-12-19 16:30:40'),
(26, 32, 18, '2022-12-29 18:03:55', '2022-12-29 18:03:55'),
(29, 33, 5, '2023-01-03 20:09:14', '2023-01-03 20:09:14'),
(30, 31, 5, '2023-01-04 16:22:39', '2023-01-04 16:22:39'),
(31, 31, 4, '2023-01-07 08:46:42', '2023-01-07 08:46:42'),
(32, 25, 24, '2023-01-09 20:36:27', '2023-01-09 20:36:27'),
(33, 25, 4, '2023-01-09 20:36:53', '2023-01-09 20:36:53'),
(34, 25, 5, '2023-01-09 20:37:12', '2023-01-09 20:37:12'),
(35, 35, 24, '2023-01-09 23:47:33', '2023-01-09 23:47:33'),
(36, 35, 18, '2023-01-09 23:47:46', '2023-01-09 23:47:46'),
(37, 35, 6, '2023-01-09 23:47:58', '2023-01-09 23:47:58'),
(38, 25, 29, '2023-01-09 23:56:02', '2023-01-09 23:56:02'),
(39, 30, 24, '2023-01-10 16:07:13', '2023-01-10 16:07:13');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_messages_id` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(144) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_messages_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 'Chcekinsajnan', '2022-12-16 19:28:25', '2022-12-16 19:28:25'),
(2, 2, 'sender sufiyan', '2022-12-16 19:28:25', '2022-12-16 19:28:25'),
(3, 3, 'Chcekinsajnan', '2023-01-03 20:17:50', '2023-01-03 20:17:50'),
(4, 4, 'Chcekinsajnan', '2023-01-03 20:38:31', '2023-01-03 20:38:31'),
(5, 5, 'Chcekinsajnan', '2023-01-03 20:38:55', '2023-01-03 20:38:55'),
(6, 6, 'Chcekinsajnan', '2023-01-06 13:25:15', '2023-01-06 13:25:15'),
(7, 7, 'Chcekinsajnan', '2023-01-07 10:07:18', '2023-01-07 10:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_09_06_182822_create_products_table', 1),
(11, '2022_11_16_124139_create_user_messages_table', 1),
(12, '2022_11_16_124226_create_messages_table', 1),
(13, '2022_11_19_185206_create_recommended_products_table', 1),
(14, '2022_11_22_064501_create_reviews_table', 1),
(15, '2022_11_22_085226_create_rented_products_table', 1),
(16, '2022_11_26_195348_create_favourites_table', 1),
(17, '2022_11_26_211951_create_categories_table', 1),
(18, '2022_11_26_214610_create_brands_table', 1),
(19, '2022_11_26_223023_add_coulmn_in_products_table', 1),
(20, '2022_11_27_173639_create_notifications_table', 1),
(21, '2022_12_04_071218_add_column_in_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rented_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `data`, `read_at`, `created_at`, `updated_at`, `rented_id`, `product_id`) VALUES
(1, 17, 'Request for product has been approved', NULL, '2022-12-15 08:42:30', '2022-12-15 08:42:30', 0, 0),
(2, 2, 'Request for product has been rejected', NULL, '2022-12-15 08:43:53', '2022-12-15 08:43:53', 0, 0),
(3, 5, 'Sufiyan wants to rent your product Dr. Alfredo Fisher IV', '2022-12-27 19:32:34', '2022-12-23 19:40:05', '2022-12-27 19:32:34', 0, 0),
(5, 13, 'Sufiyan wants to rent your product Annabell Ondricka', NULL, '2022-12-23 20:32:27', '2022-12-23 20:32:27', 0, 0),
(6, 25, 'Request sent: waiting for vendor for approval.', NULL, '2022-12-23 20:32:27', '2022-12-23 20:32:27', 0, 0),
(7, 14, 'Sufiyan wants to rent your product Kenny Kessler', NULL, '2022-12-26 18:33:29', '2022-12-26 18:33:29', 0, 0),
(8, 25, 'Request sent: waiting for vendor for approval.', NULL, '2022-12-26 18:33:29', '2022-12-26 18:33:29', 0, 0),
(10, 31, 'Taha87 wants to rent your product Laverne Will', NULL, '2022-12-30 15:54:18', '2022-12-30 15:54:18', 16, 4),
(11, 32, 'Request sent: waiting for vendor for approval.', NULL, '2022-12-30 15:54:18', '2023-01-03 19:11:07', 16, 2),
(12, 11, 'Taha wants to rent your product Mr. Arely Schimmel II', NULL, '2023-01-03 18:44:11', '2023-01-03 19:11:38', 18, 6),
(13, 33, 'Request sent: waiting for vendor for approval.', NULL, '2023-01-03 18:44:11', '2023-01-03 18:44:11', NULL, 6),
(14, 25, 'Request for product rent has been approved', NULL, '2023-01-03 19:06:38', '2023-01-03 19:06:38', NULL, NULL),
(15, 33, 'Request for product rent has been rejected', NULL, '2023-01-03 19:30:40', '2023-01-03 19:30:40', NULL, NULL),
(16, 33, 'Request for product rent has been rejected', NULL, '2023-01-03 19:36:30', '2023-01-03 19:36:30', NULL, NULL),
(17, 33, 'Request for product rent has been rejected', NULL, '2023-01-03 19:43:56', '2023-01-03 19:43:56', NULL, NULL),
(18, 33, 'Request for product rent has been approved', NULL, '2023-01-03 19:46:29', '2023-01-03 19:46:29', NULL, NULL),
(19, 31, 'Taha wants to rent your product Aliya Considine', NULL, '2023-01-03 21:33:55', '2023-01-03 21:33:55', 19, 24),
(20, 33, 'Request sent: waiting for vendor for approval.', NULL, '2023-01-03 21:33:55', '2023-01-03 21:33:55', NULL, 4),
(21, 33, 'Request for product rent has been approved', NULL, '2023-01-03 21:39:30', '2023-01-03 21:39:30', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('017da34e7b0c334f7fbe5f59442efc5d001b4ae785f6c27fc00f98678a508d18112a4a8b0451d96e', 25, 1, 'passport_token', '[]', 0, '2023-01-09 22:14:25', '2023-01-09 22:14:25', '2024-01-09 22:14:25'),
('02970e47c3bb9ddaa1b2a345eb660cdd48f208fd208e5ddf99926f0d812841d3d60cda39965f1084', 30, 1, 'passport_token', '[]', 1, '2022-12-29 14:16:28', '2022-12-29 14:16:39', '2023-12-29 14:16:28'),
('02c7e682138efd778171b36322cdcba51c7c89e2400e823728224f5591e7187ae79b150ab5cae101', 25, 1, 'passport_token', '[]', 0, '2022-12-18 13:28:14', '2022-12-18 13:28:14', '2023-12-18 13:28:14'),
('0346473743e016609b3ca4e39637b3a289a742b8c18b19c16fbcdae1b2e1ed5e1fba0b145a4c6522', 32, 1, 'passport_token', '[]', 1, '2022-12-29 18:03:39', '2022-12-29 18:04:12', '2023-12-29 18:03:39'),
('034b8106727adae99b422142d250875b7fcd96fcf19df317a85d3cbec202ceba03035d639864a970', 33, 1, 'passport_token', '[]', 1, '2023-01-03 18:11:19', '2023-01-03 18:59:56', '2024-01-03 18:11:19'),
('040ce8600d66c63bb44384b66e7a3d0e45edc9c553c4960fa849b0d38cd061bf8e570ebdde8588f2', 33, 1, 'passport_token', '[]', 0, '2023-01-03 21:04:34', '2023-01-03 21:04:34', '2024-01-03 21:04:34'),
('050938e17cd38aea0728115c071dbc58512d7fb2a9c9f5e8c821b95db0332e6e5ea6f3ef73a173bb', 25, 1, 'passport_token', '[]', 0, '2022-12-27 19:17:56', '2022-12-27 19:17:56', '2023-12-27 19:17:56'),
('053b16bed619a9d81b3ac17eb2d3e215534f27ce8d656243ad0a3215738a3066babfae9f84bf581d', 31, 1, 'passport_token', '[]', 0, '2023-01-04 16:33:58', '2023-01-04 16:33:58', '2024-01-04 16:33:58'),
('06558618979786b887bac820341b5291bdf6527203088edbbd13039e9a71d3795bed99e3b7d92027', 25, 1, 'passport_token', '[]', 1, '2022-12-27 19:02:57', '2022-12-27 19:15:53', '2023-12-27 19:02:57'),
('0668fc59b5de2b6ed137dc9d36cb1990fe1d758a4a6c13147ae1ea3dbc2cca10d9a7da5084624e23', 25, 1, 'passport_token', '[]', 0, '2022-12-29 03:33:55', '2022-12-29 03:33:55', '2023-12-29 03:33:55'),
('071948845816bbc30294b5f79575edaf5ff7771485a45c87a7c5d02ad4a6615b919256eb7295a6f5', 1, 1, 'passport_token', '[]', 0, '2022-12-25 09:27:58', '2022-12-25 09:27:58', '2023-12-25 09:27:58'),
('073a3b11d722c9a4c65cf82c250f499e096490c4180556ceb041d2e5d8c87f28d7548fb51584c3f8', 25, 1, 'passport_token', '[]', 0, '2022-12-20 15:29:21', '2022-12-20 15:29:21', '2023-12-20 15:29:21'),
('077fb920c3ae521209459ead79c6cc14cf045a32a8639588a9990dabe74a1e9fcbc563fa2de595cf', 33, 1, 'passport_token', '[]', 0, '2023-01-03 17:45:55', '2023-01-03 17:45:55', '2024-01-03 17:45:55'),
('07831a33d3b77385a3660fee75330f09fbb6ae267e0f8790ec543238fae051f01a0c4ee70c64dc1b', 25, 1, 'passport_token', '[]', 1, '2023-01-09 20:19:18', '2023-01-09 21:35:04', '2024-01-09 20:19:18'),
('07fb5962932549ec119098ceecd6cd01acdc34f815942f8e2774737e768960d2a287a96444b8bbb8', 33, 1, 'passport_token', '[]', 0, '2023-01-03 20:08:57', '2023-01-03 20:08:57', '2024-01-03 20:08:57'),
('0879b6d70403a4d4736db49cf9b3fba122eb71ab8461a265df4aa7e072dd43d5c41dc7f13e62edf0', 31, 1, 'passport_token', '[]', 1, '2023-01-03 17:45:04', '2023-01-03 17:45:13', '2024-01-03 17:45:04'),
('08eacca96129aa8f3719c671d592828d288c35888954e9985620b02407c9e5835ffb30785fd3297c', 25, 1, 'passport_token', '[]', 1, '2022-12-21 17:44:16', '2022-12-22 19:14:55', '2023-12-21 17:44:16'),
('0d54fa10c188e24c7c21f5def1df66aa7b59cc05439cde6abf763f2f4e964f56782e9bd6394c829d', 25, 1, 'passport_token', '[]', 0, '2022-12-25 10:49:49', '2022-12-25 10:49:49', '2023-12-25 10:49:49'),
('0d70d52fdb0005a3ab7de46d15467e7227427b0b5a773df174a242c1b2eea5a60b2fdca630af68c8', 25, 1, 'passport_token', '[]', 0, '2022-12-27 21:39:30', '2022-12-27 21:39:30', '2023-12-27 21:39:30'),
('0f23c51629eb6af6c1c172fe44ba9ef019784d74164896b955a0119ca87a2093c00fc21ed7eb4d90', 30, 1, 'passport_token', '[]', 0, '2023-01-06 16:48:26', '2023-01-06 16:48:26', '2024-01-06 16:48:26'),
('105d61775995e186adaebcd94f79885c89dedd5acd4db419b21c8289e53678bd1d6dc39deefa3b76', 25, 1, 'passport_token', '[]', 0, '2022-12-27 18:19:23', '2022-12-27 18:19:23', '2023-12-27 18:19:23'),
('12a53d559c32b8a47a1e8b1a55e7924960294d4fff058248d68b32ba385bec1cd831d36eae4f7076', 25, 1, 'passport_token', '[]', 0, '2022-12-26 18:48:21', '2022-12-26 18:48:21', '2023-12-26 18:48:21'),
('1396f08e0e415b6fb0e2c690bc5ef425d6e1cd942a4210846fbebf5f8faeee5724a1453a990da49f', 25, 1, 'passport_token', '[]', 1, '2022-12-27 18:54:43', '2022-12-27 18:55:10', '2023-12-27 18:54:43'),
('14d70db57e0df0cf35ef366aea371552f3438e8e05af1c0a14507cf96e5ce9a0a8a3e68c745e4f42', 33, 1, 'passport_token', '[]', 1, '2023-01-03 17:56:48', '2023-01-03 17:58:01', '2024-01-03 17:56:48'),
('155842876a9e5a55d1e1adca6f65ded8e4d3744fefa1919dfdcecf49ca1d516bddd0ea6174f36ebb', 35, 1, 'passport_token', '[]', 0, '2023-01-09 22:16:55', '2023-01-09 22:16:55', '2024-01-09 22:16:55'),
('161c834d30133bd3bc28ec20723f3dd33d2f5173a34c55da4ce2b13f11565328cb634226cb7b2459', 33, 1, 'passport_token', '[]', 1, '2023-01-03 17:58:11', '2023-01-03 18:00:37', '2024-01-03 17:58:11'),
('16a4826d2a3c20eb3d0b0c65ec285c11807b792f8c9b02cb95d3f32d287ccb9f2493e227574727ff', 31, 1, 'passport_token', '[]', 1, '2022-12-28 17:55:08', '2022-12-28 17:55:25', '2023-12-28 17:55:08'),
('16d86c08614db8ea19697aaaa86d336f58bca126c3bae79da21bc951752b390c6eb1bed0b4d8d751', 25, 1, 'passport_token', '[]', 0, '2022-12-17 01:05:33', '2022-12-17 01:05:33', '2023-12-17 01:05:33'),
('1a6502a602338708242475674d35b053db92aab5b38a5c3ee0f4a12f25c074492d938bcd7cc465c5', 25, 1, 'passport_token', '[]', 0, '2022-12-27 18:55:51', '2022-12-27 18:55:51', '2023-12-27 18:55:51'),
('1ad5bb9f9cccfe584dc7aa40ff5454e4ed4b0bac4a8eb102669e6518ea5eec4c63039c796b73fde1', 30, 1, 'passport_token', '[]', 1, '2022-12-29 18:25:37', '2022-12-29 18:41:48', '2023-12-29 18:25:37'),
('1b2f989a4e2fa20c61b945500a402b58e5361a00d6447ec9e93ea1e0bbf3b754d7120d1fc65ff881', 30, 1, 'passport_token', '[]', 0, '2022-12-29 14:17:07', '2022-12-29 14:17:07', '2023-12-29 14:17:07'),
('1cbbbd0b1a8c5e9a1352ef7c8fbb6c455b0545318c2eff5e51881e24aa5f7aba36f75ff889f42fb0', 33, 1, 'passport_token', '[]', 1, '2023-01-03 18:02:55', '2023-01-03 18:03:21', '2024-01-03 18:02:55'),
('1d563b141593d0aa63c3c44ccc2b7c84e8919652c91966b7b4a82c1de7bc00357ad1612b6bd49691', 30, 1, 'passport_token', '[]', 1, '2022-12-27 11:39:16', '2022-12-27 11:41:53', '2023-12-27 11:39:16'),
('1e4753ccabd2b028498e2aa774ddebc225a2785ec60ac4d6fd5fde4f9609817412e4878888538d40', 25, 1, 'passport_token', '[]', 0, '2022-12-24 13:31:18', '2022-12-24 13:31:18', '2023-12-24 13:31:18'),
('1e5abfe1f6e2d77f6bc413d0ce5fc782bb4d053c1822312c717be0b342952da815d31c268c9871d0', 25, 1, 'passport_token', '[]', 1, '2022-12-29 02:53:18', '2022-12-29 02:53:22', '2023-12-29 02:53:18'),
('20416960e7f4decffaaf91496ec7407aa5eaa09081e089f998167a91e9a7120506d172722f40eeb6', 25, 1, 'passport_token', '[]', 1, '2022-12-27 11:42:03', '2022-12-27 11:42:20', '2023-12-27 11:42:03'),
('228ddbab58e0bebf891630fbaa7520f349f5e1b2e626c1de34a2f4869a1dd2123dca1ae914bf3814', 25, 1, 'passport_token', '[]', 0, '2022-12-20 15:28:42', '2022-12-20 15:28:42', '2023-12-20 15:28:42'),
('239f2f14d66565ee3a49fe94c0961a910085be15dd7cd96dd801381f281f42b75d22a438e19da828', 25, 1, 'passport_token', '[]', 0, '2022-12-20 21:32:21', '2022-12-20 21:32:21', '2023-12-20 21:32:21'),
('241cc7cf8e082a3a344ba46d8992e3fe89cc3bbdf852f4812a0ff6f0ec2dfc903de0e7ae225f34e5', 25, 1, 'passport_token', '[]', 1, '2022-12-29 00:53:06', '2022-12-29 00:53:14', '2023-12-29 00:53:06'),
('244a78ddda49bbe23690f6b450859932bab453cea15f7f108e4028a84802ef792c49eb76ec06914d', 1, 1, 'passport_token', '[]', 0, '2022-12-25 08:38:04', '2022-12-25 08:38:04', '2023-12-25 08:38:04'),
('24ccbaa40c7d5856f42a3dbc1a1af7fe285f39c94a7763cb83227d65ef01b3ada37334c31d11e9aa', 25, 1, 'passport_token', '[]', 0, '2022-12-20 16:46:48', '2022-12-20 16:46:48', '2023-12-20 16:46:48'),
('287f998f74bfb2c53ecaf037d380573a1c43a72d0501fe25b0cdb6e864b88eb1e435152583b30866', 25, 1, 'passport_token', '[]', 0, '2022-12-28 01:31:04', '2022-12-28 01:31:04', '2023-12-28 01:31:04'),
('294c371ac6237d021bc7db3fa3e39692d47632815629f6a6eec1a9c0e55a6b5b2d61828fe51ec574', 31, 1, 'passport_token', '[]', 1, '2022-12-29 18:05:41', '2022-12-29 18:06:18', '2023-12-29 18:05:41'),
('2a2181be13c364f1726596800c90f25a6e80a533f8e4cc6da993174544d0adbb004c7df9aa9215e1', 25, 1, 'passport_token', '[]', 0, '2022-12-25 10:32:45', '2022-12-25 10:32:45', '2023-12-25 10:32:45'),
('2b1c001160b65677be2fc1184b8fa2b7185c3a53dd3ff3b3e9d3c629ef0b02be86d8fff83e61c2ba', 31, 1, 'passport_token', '[]', 0, '2022-12-28 17:54:29', '2022-12-28 17:54:29', '2023-12-28 17:54:29'),
('2d92eccdfeb2c1491a1a2aedc336146c935a9d2e42ab040a11db1ae590b0c75815fcb5f246c6452b', 25, 1, 'passport_token', '[]', 0, '2022-12-19 22:53:11', '2022-12-19 22:53:11', '2023-12-19 22:53:11'),
('2e5001a3a10cb015dab3d56e87e395f6df1bac66e457a4cc7406795a74b54392f92e3829d9cbcfad', 25, 1, 'passport_token', '[]', 0, '2022-12-27 00:24:28', '2022-12-27 00:24:28', '2023-12-27 00:24:28'),
('2f0ab9c361d847048ad5fe22baca027a8adf9e4de81572238a0157b7ce4b4065fb47735eac89a60f', 31, 1, 'passport_token', '[]', 1, '2022-12-30 12:22:39', '2022-12-30 15:24:38', '2023-12-30 12:22:39'),
('3019404ddf4967132b04d26c36e4e480d05e284643313606f19569629926aa06c84f296ff32ef2ef', 31, 1, 'passport_token', '[]', 0, '2023-01-04 17:17:46', '2023-01-04 17:17:46', '2024-01-04 17:17:46'),
('307d361d8c0f8afc00aaf01ca5b400e0f0d8474b7bef780b014067714dff3068b4b3d60bf991cd17', 30, 1, 'passport_token', '[]', 1, '2022-12-24 12:17:17', '2022-12-24 12:17:21', '2023-12-24 12:17:17'),
('310b3cd81ce7d7a6fddb740f5e945c9e46dcb133da00a28cfb6f79a0d7b9f5936afeb52ae79ff8d4', 25, 1, 'passport_token', '[]', 1, '2022-12-28 22:16:36', '2022-12-28 22:17:50', '2023-12-28 22:16:36'),
('31db95440b527763d59deef82f1d3d8403f633e005bffda8190667a1f61ec26df05212f66c4620cd', 30, 1, 'passport_token', '[]', 0, '2022-12-29 18:41:55', '2022-12-29 18:41:55', '2023-12-29 18:41:55'),
('32275003ec79e3626bc09bbaa20158d70d1228933b7041dae598363815305a912dfba9a0f22b6d67', 25, 1, 'passport_token', '[]', 0, '2022-12-27 18:12:28', '2022-12-27 18:12:28', '2023-12-27 18:12:28'),
('331108ea8c415f538f820fe0c3f4daa47b04e8cf68dda9deffebecb74ff112a1cf48e76a0f680d02', 25, 1, 'passport_token', '[]', 1, '2022-12-27 19:02:45', '2022-12-27 19:02:53', '2023-12-27 19:02:45'),
('334277257222fc4f81e15b2137750d90bcf91ede1801557480401543c797272d8ecf3c9d4e3e7538', 35, 1, 'passport_token', '[]', 0, '2023-01-09 22:18:24', '2023-01-09 22:18:24', '2024-01-09 22:18:24'),
('33675c866951fd735eccc03374f1b7717c099b1f40cb82c2dea5188ca71b6a5b1132db1c0058ebaa', 1, 1, 'passport_token', '[]', 0, '2022-12-25 10:11:35', '2022-12-25 10:11:35', '2023-12-25 10:11:35'),
('3790a2477295063f361d4383c30ba9d176d52a02d47349e006ecb682c6b285a6c84c0c49836b610e', 25, 1, 'passport_token', '[]', 1, '2022-12-28 19:01:17', '2022-12-28 19:23:09', '2023-12-28 19:01:17'),
('37f02925497223334c075e5ac7be7def6b0a80ddb10ce39abaaf803f59338b9b60eca625dfb37f46', 25, 1, 'passport_token', '[]', 0, '2022-12-28 22:17:53', '2022-12-28 22:17:53', '2023-12-28 22:17:53'),
('38bfd03f6919739254430839562c0877a355fe9043f992adbbddb609adf472ca593446552666c9b5', 31, 1, 'passport_token', '[]', 1, '2023-01-03 17:12:01', '2023-01-03 17:12:27', '2024-01-03 17:12:01'),
('3a63448393e1f90327364c55956d0a974a6daec6c31174b7c24bba83d6959d56b550c471e10879b5', 31, 1, 'passport_token', '[]', 1, '2023-01-05 19:44:57', '2023-01-05 20:12:05', '2024-01-05 19:44:57'),
('3a846d05e0df20ffc27e24834aba0c2c35a3dcdf69f4705c934f5aeef3c5dd5a70a21fffbfd0e4ae', 31, 1, 'passport_token', '[]', 0, '2023-01-04 17:05:54', '2023-01-04 17:05:54', '2024-01-04 17:05:54'),
('3c9f393a8f5c602887bfc314a1940e51c6ee29929bb7939cde9c7956b246230d01f15d25ea199e31', 30, 1, 'passport_token', '[]', 0, '2022-12-20 08:23:12', '2022-12-20 08:23:12', '2023-12-20 08:23:12'),
('3cda3e84f4868a3bc67344977776a9ff2592dbf684ba1e23fe2f6e85e0d2d7be75982a9e5e9d19a4', 25, 1, 'passport_token', '[]', 0, '2022-12-25 10:36:34', '2022-12-25 10:36:34', '2023-12-25 10:36:34'),
('3ddc0d0b5a7bdcb2c6169b9d480d0f30a8fb4e7eacae95ff8bd9583d5f06e7eaf65a0e91a8211880', 25, 1, 'passport_token', '[]', 1, '2023-01-09 23:04:13', '2023-01-09 23:13:11', '2024-01-09 23:04:13'),
('400a89866b9aeda553cd5ecd5c9638bec1d2b8902a7ae08b6b6d062fe09bab07261d4ea557738c23', 25, 1, 'passport_token', '[]', 0, '2022-12-27 16:41:43', '2022-12-27 16:41:43', '2023-12-27 16:41:43'),
('40804b573c4333755daa26d0a134b7fe2d191a74b290f009ee8121553131656354ae310c58ad63f5', 25, 1, 'passport_token', '[]', 1, '2022-12-26 18:04:39', '2022-12-26 20:23:08', '2023-12-26 18:04:39'),
('40d1cc3503ad4a9676679f60acc51416df5b3fea0ef131df30b06cd4712648e864c9eda662d0e64c', 25, 1, 'passport_token', '[]', 1, '2022-12-28 17:14:07', '2022-12-28 17:46:31', '2023-12-28 17:14:07'),
('42dfad9c0c5cbf3ff5bc6cd109271c8e7a0586b17124cc7a7996a380f71aed44f0adcd1530680530', 25, 1, 'passport_token', '[]', 0, '2022-12-30 01:04:36', '2022-12-30 01:04:36', '2023-12-30 01:04:36'),
('431d7b1bb7a8d8bf66d055080e4dbd37dc2784d93531c8a18a5529491240199342d27c3ae374ec41', 25, 1, 'passport_token', '[]', 0, '2022-12-29 23:34:30', '2022-12-29 23:34:30', '2023-12-29 23:34:30'),
('4463dcf61f5761ce169de176951b51903ccd56582230b0dbd58c66ba2a0425f568e6ff34f0c6d462', 30, 1, 'passport_token', '[]', 1, '2022-12-27 11:47:44', '2022-12-27 11:50:37', '2023-12-27 11:47:44'),
('44e7a10e02b92bb75fc8e5e81589b1dd0362866e94c4871ad13ea30db84e05fa9c02e59da32e5180', 25, 1, 'passport_token', '[]', 1, '2022-12-29 00:08:43', '2022-12-29 00:09:01', '2023-12-29 00:08:43'),
('4594d5a8c8f9a2598eb2946cd9d025cc53944f726e3267bd28fcaa7650b62b4db102ae71c75923dd', 1, 1, 'passport_token', '[]', 1, '2022-12-25 08:45:32', '2022-12-25 08:46:17', '2023-12-25 08:45:32'),
('45a62f1969e7919871a96bacb5b1e6c593527f528ac1cd7ff3a4b9ce67ede988536fa93fcf742c1f', 25, 1, 'passport_token', '[]', 1, '2022-12-21 01:29:00', '2022-12-21 01:29:57', '2023-12-21 01:29:00'),
('479a1a0ea0d85a2feda89b8cad8304593d2ddf90bc308ec7876268e84188a04127303cfccb3831c1', 35, 1, 'passport_token', '[]', 0, '2023-01-09 21:44:59', '2023-01-09 21:44:59', '2024-01-09 21:44:59'),
('48b5ca871a4390401ae40addff712891dd2369aa70d602f787065586a6b287dbddfe176472e0160e', 32, 1, 'passport_token', '[]', 1, '2022-12-30 20:37:46', '2022-12-30 21:05:25', '2023-12-30 20:37:46'),
('4916b3fea514d864f3a65696225e5d88637c65b963748ee01b2c8e3c76215b63551e2d98efcfc6db', 25, 1, 'passport_token', '[]', 1, '2022-12-21 22:45:42', '2022-12-22 00:25:28', '2023-12-21 22:45:42'),
('49356b7b83e6b0b159cfb9d0fcbbb4159b6444250c5cd43ba49553cdf6406af12c5c2a9d1897b709', 25, 1, 'passport_token', '[]', 0, '2022-12-27 00:25:17', '2022-12-27 00:25:17', '2023-12-27 00:25:17'),
('49f6aaf881b8cba6c41529fdae57d99f328aac2b210c266170224e19563ac711fdb65fe93b37afe9', 25, 1, 'passport_token', '[]', 1, '2022-12-28 23:38:10', '2022-12-28 23:44:40', '2023-12-28 23:38:10'),
('4a3721fb2dbf96d5ec8b04a7706e370a693e999f65ab291b7755c32ed79d900612ecbb3ca239a1d7', 31, 1, 'passport_token', '[]', 1, '2023-01-03 16:35:12', '2023-01-03 18:11:04', '2024-01-03 16:35:12'),
('4a7d08c03b003cf6b3979da470362ea0be4690a5ec2461b550e89fd75979c7e35384083e20920cae', 35, 1, 'passport_token', '[]', 1, '2023-01-09 23:13:23', '2023-01-09 23:55:30', '2024-01-09 23:13:23'),
('4bfb04561ca2d1da30b4f0d02228d07e3ebad5075171fbf7ac5b58590fd67aad9bddaa4621ae10a2', 25, 1, 'passport_token', '[]', 1, '2022-12-27 11:11:00', '2022-12-27 11:39:13', '2023-12-27 11:11:00'),
('4f6a905dd7f850ce970c6923a8bc99f415d9ddcd9cb27709c854a48b97173b358429382dc26a9fe8', 31, 1, 'passport_token', '[]', 1, '2023-01-02 17:59:31', '2023-01-02 18:01:44', '2024-01-02 17:59:31'),
('4f9a6d35fc8d15749d104cb41db011b5002cadb43a05a2715f4f5fde3a392428674a43453dfb664b', 25, 1, 'passport_token', '[]', 0, '2022-12-21 01:29:00', '2022-12-21 01:29:00', '2023-12-21 01:29:00'),
('512815382d8d25a16b34a5f9b7804bfe7c76d086927bb237a3f01e3a0b54aebbbef9f29647ee33bc', 25, 1, 'passport_token', '[]', 0, '2022-12-16 23:31:18', '2022-12-16 23:31:18', '2023-12-16 23:31:18'),
('51a66e911b3c215c172cd5d4de7bee3106d72da42d890ee85cd2f4976c959c2ac5433755dd8f0c29', 25, 1, 'passport_token', '[]', 1, '2022-12-28 18:05:22', '2022-12-28 20:02:28', '2023-12-28 18:05:22'),
('51f205acf6c20dfba11b9c1e73c81d479d2b89b00d31ff124a644908d6143a54ae3e7c525693c12a', 31, 1, 'passport_token', '[]', 0, '2023-01-01 21:43:38', '2023-01-01 21:43:38', '2024-01-01 21:43:38'),
('528c34b208f0cdf512d8ebef5aff9f6a01e9f811df948b5e039dac526011acad28f14506b23d4887', 30, 1, 'passport_token', '[]', 0, '2022-12-19 16:30:55', '2022-12-19 16:30:55', '2023-12-19 16:30:55'),
('52a6d86a472074bddd9125238383c51e00de616ec3719c03fe3ff777d828705ea0fbfcf22c4ac08b', 31, 1, 'passport_token', '[]', 1, '2023-01-05 20:16:39', '2023-01-05 21:00:57', '2024-01-05 20:16:39'),
('54078dc5a2e3bb38641f515051f9661292ef8f3924ebf7f866ecc3e3ab403fd5ad13e121a149ffe7', 31, 1, 'passport_token', '[]', 1, '2023-01-05 18:02:48', '2023-01-05 19:31:10', '2024-01-05 18:02:48'),
('541e69f801fe48dcc13acc67435eb794161e973ca31066982976dab745731e82b4b72783dec76c30', 31, 1, 'passport_token', '[]', 0, '2023-01-02 18:24:58', '2023-01-02 18:24:58', '2024-01-02 18:24:58'),
('548401fc8d98babecb28323e22849e55464513e9cc897ff2e907d996fb643c2b9cebb0352586842a', 1, 1, 'passport_token', '[]', 1, '2022-12-25 08:49:53', '2022-12-25 09:25:57', '2023-12-25 08:49:53'),
('5529e272121d1201b889cfb20084ef245fdc7278e3eda489d647140b220dc1f7338081961f500ef1', 11, 1, 'passport_token', '[]', 1, '2023-01-03 19:00:02', '2023-01-03 21:42:38', '2024-01-03 19:00:02'),
('558a2b3f799299e47d2283f2f64ef8dfb469afa1a7b155e60c50fcac999497ec7b80521aa9cf2227', 25, 1, 'passport_token', '[]', 0, '2023-01-06 17:45:34', '2023-01-06 17:45:34', '2024-01-06 17:45:34'),
('57f8dae0d5109154e4d1f9ca790cf1487690646b6fff6ff14b3bc0c975fdda7ddf777b6f7ce6f9fb', 25, 1, 'passport_token', '[]', 0, '2022-12-23 20:48:33', '2022-12-23 20:48:33', '2023-12-23 20:48:33'),
('590006e1aa98bf8f9663ac2c19ebeb36d2a3a62af6cb3756689aee7aee652963528c2d03227f25da', 25, 1, 'passport_token', '[]', 0, '2022-12-26 18:56:20', '2022-12-26 18:56:20', '2023-12-26 18:56:20'),
('5978fa75c4e7964b1c664dd61ac9ef945de6644d362c96ac8f34337fe0e7fb467c19d9c2acdf4327', 31, 1, 'passport_token', '[]', 1, '2022-12-28 17:54:09', '2022-12-28 17:54:58', '2023-12-28 17:54:09'),
('59a3b9826777db51905e6c9bdaa8ac6caabea72be879f0f49e847fca8a9a4d7d9de25c94f3c98947', 25, 1, 'passport_token', '[]', 1, '2022-12-23 17:04:31', '2022-12-23 20:39:47', '2023-12-23 17:04:31'),
('59abaa5524f3fdd1b241c9a2899b79367d194d359b8076fb2c516bd86d9998ab46e7a723175cc07d', 31, 1, 'passport_token', '[]', 0, '2023-01-02 17:46:27', '2023-01-02 17:46:27', '2024-01-02 17:46:27'),
('5aa20dd0492c47748537d4628d43e9288035034818cec6a6d17579d83713b5b289f88bcf77729c5c', 25, 1, 'passport_token', '[]', 0, '2022-12-27 18:17:04', '2022-12-27 18:17:04', '2023-12-27 18:17:04'),
('5b5eb976c0f57a69a81612192bd5704a8557315913ef945dfaf4528973e25237a2535cd16a603eaf', 31, 1, 'passport_token', '[]', 1, '2023-01-04 16:15:28', '2023-01-04 16:22:51', '2024-01-04 16:15:28'),
('5ba6a0d8b5b6384bd543b5b732cd819420049f4567e3ca39bfb050a623283e380811100ee4ae9da6', 32, 1, 'passport_token', '[]', 1, '2022-12-28 17:55:37', '2022-12-28 17:56:44', '2023-12-28 17:55:37'),
('5df19b24f3c9c6e186cef6da1d88177497f509bb1de424819e02eff4618713cd2e3c5f36c201d0ca', 25, 1, 'passport_token', '[]', 0, '2022-12-18 12:38:07', '2022-12-18 12:38:07', '2023-12-18 12:38:07'),
('5f72db0cedebd1a4698a5308ff8a830670e0f3a7934157d17ef2dca93c46803821a6cdb15032ab8d', 25, 1, 'passport_token', '[]', 0, '2023-01-08 15:24:48', '2023-01-08 15:24:48', '2024-01-08 15:24:48'),
('5ff914c614316d714f775e4742fcb17d71f12e747a8f324efef64be9cee6b7852eeb83d971bcd0eb', 25, 1, 'passport_token', '[]', 1, '2022-12-24 13:25:28', '2022-12-24 13:26:11', '2023-12-24 13:25:28'),
('607c95c53161535cc6330986b60fc7299a22825e2c1c8d0d914d013753d0691daf630e0337227318', 25, 1, 'passport_token', '[]', 0, '2022-12-27 00:30:12', '2022-12-27 00:30:12', '2023-12-27 00:30:12'),
('6215f366e3dad64c969d039c587cbd2b530f7e8f546fea980f5444671ffd0ebd9642bac2b815b00a', 25, 1, 'passport_token', '[]', 0, '2022-12-28 20:20:00', '2022-12-28 20:20:00', '2023-12-28 20:20:00'),
('63888640e9b2dffcc6caaa193908e28df253c7ea793fbd9f748820154f1e74eb78bc48ae85b7666e', 25, 1, 'passport_token', '[]', 0, '2022-12-19 22:34:27', '2022-12-19 22:34:27', '2023-12-19 22:34:27'),
('659b1a575b33c4596ce90654dff654a6aea2b916af74fec954f09a32ddee9288e7868daddba1391d', 25, 1, 'passport_token', '[]', 0, '2023-01-09 22:05:08', '2023-01-09 22:05:08', '2024-01-09 22:05:08'),
('65b4aaa829d05686fbdb9b2bba846232021176670d7e8ecac3611898de658521cb127fb7b8ff8492', 30, 1, 'passport_token', '[]', 1, '2022-12-27 11:42:27', '2022-12-27 11:46:24', '2023-12-27 11:42:27'),
('67374b2078a9c488c17ba29b6a8dafa6c627970fd619fb8d873a6f49dcadb0543498a171ced42fde', 25, 1, 'passport_token', '[]', 1, '2022-12-29 03:03:11', '2022-12-29 03:03:14', '2023-12-29 03:03:11'),
('67cc8d357ae8753109207d8861830ff81f645d272c73f1e9aa947ebba305ed4a0f3fb891a64359d2', 31, 1, 'passport_token', '[]', 1, '2022-12-28 17:57:01', '2022-12-28 18:05:19', '2023-12-28 17:57:01'),
('68af439ad9e734ecbf8259da8577a83de01f8f5ee674e985cd3860713d4f94ea81440e5e0eff8525', 31, 1, 'passport_token', '[]', 0, '2023-01-03 21:34:39', '2023-01-03 21:34:39', '2024-01-03 21:34:39'),
('69abfa5acf8d186d57f09fcacf6b3c0f6c3a1bdc01c406d89f7dc365b7e22b8b205985f98a1b8749', 33, 1, 'passport_token', '[]', 0, '2023-01-03 21:16:52', '2023-01-03 21:16:52', '2024-01-03 21:16:52'),
('69fa97e03b5653e68d8a01d02cdfc1932c1be648d9ef528d18db60a235691c0af3664165a1007c03', 25, 1, 'passport_token', '[]', 0, '2022-12-20 21:35:00', '2022-12-20 21:35:00', '2023-12-20 21:35:00'),
('6b404be7b7e28b8692600a9626d737585e9219b3d58ba3588a973ae809370b86eef84683a3959488', 25, 1, 'passport_token', '[]', 0, '2022-12-21 17:33:06', '2022-12-21 17:33:06', '2023-12-21 17:33:06'),
('6b99d99ac2a4d2a0af998cb0b0932abe6a75d8467dd7c48c2956f83f4f027d890c6866c7515483ae', 32, 1, 'passport_token', '[]', 0, '2022-12-30 15:28:39', '2022-12-30 15:28:39', '2023-12-30 15:28:39'),
('7173184c3dafa406cb973b4dd592e28f3a2cf9916db754b3f64b0d774da61a49df22ff2b30e79db6', 25, 1, 'passport_token', '[]', 0, '2022-12-17 01:02:22', '2022-12-17 01:02:22', '2023-12-17 01:02:22'),
('71ebf8ca3a59a3dd538860e949f59b9a97bed629ca52da5d24e048866352a4a47b74a678afb71c89', 30, 1, 'passport_token', '[]', 0, '2022-12-24 21:44:39', '2022-12-24 21:44:39', '2023-12-24 21:44:39'),
('7235a2f3ed17b138f070df6d756bd6c3f7772f91a74f526165f07fcc317376a42a001a0214c3b937', 25, 1, 'passport_token', '[]', 0, '2022-12-26 20:26:07', '2022-12-26 20:26:07', '2023-12-26 20:26:07'),
('72922647480c59c08f778cd814af60656a1d772371dfe96d951f45730b55a586946dd615ed6cd7fd', 25, 1, 'passport_token', '[]', 1, '2022-12-28 19:23:15', '2022-12-28 19:51:20', '2023-12-28 19:23:15'),
('72fbf0baf0ee95c5aa3a516d52cbb2209f960e6fbffe1de1bfe8ebff4991e52b97fa2f2726122c06', 25, 1, 'passport_token', '[]', 0, '2022-12-21 18:56:33', '2022-12-21 18:56:33', '2023-12-21 18:56:33'),
('7347a66bbd01bdde78b2238056d77e87e39a5996b66f612d2eee38cc89fd0a455342316c9d98e9c2', 35, 1, 'passport_token', '[]', 0, '2023-01-09 21:55:15', '2023-01-09 21:55:15', '2024-01-09 21:55:15'),
('738f926f7a5f3b1baf1bb8fb47bdf9518c77899b864d422992574c6692abea0e574fb855adc03c1e', 25, 1, 'passport_token', '[]', 1, '2022-12-21 01:38:16', '2022-12-21 01:46:53', '2023-12-21 01:38:16'),
('7570bb1701ace5c2eda2c928f0f1be882547b456c90063b344ecb07e9835e629672b753b11bc404d', 30, 1, 'passport_token', '[]', 0, '2022-12-29 14:44:28', '2022-12-29 14:44:28', '2023-12-29 14:44:28'),
('76b6669ec4e333e09557cacbdfe273dfc71fe9ef42d7479d71bd027d6d4688125d249a120c8ae1b7', 35, 1, 'passport_token', '[]', 1, '2023-01-09 22:26:05', '2023-01-09 23:03:04', '2024-01-09 22:26:05'),
('78f24d27963382ec2d6094e2d7a632b593b5749c10c67e1454424e3f8b8175c9020e5a108a6421b6', 25, 1, 'passport_token', '[]', 1, '2022-12-29 00:59:56', '2022-12-29 01:02:07', '2023-12-29 00:59:56'),
('7a4b4d9400f8fd75e0e24f16608ee9c2164837a316e1eedeeae15a37ae2dfaef5cfea22bb744295f', 33, 1, 'passport_token', '[]', 0, '2023-01-03 18:05:25', '2023-01-03 18:05:25', '2024-01-03 18:05:25'),
('7b3e4b238e84f1b6af7b449c9d8022a1feaac7e2ec01848c1b92c5ff62969091c81eac8c8a732c64', 35, 1, 'passport_token', '[]', 0, '2023-01-09 21:36:18', '2023-01-09 21:36:18', '2024-01-09 21:36:18'),
('7be6139732b034d5953959d6998771047b0725502ee9954f62ab71d39d53755e496693d37eeffebc', 31, 1, 'passport_token', '[]', 1, '2022-12-30 15:25:57', '2022-12-30 20:37:33', '2023-12-30 15:25:57'),
('7dc1a27823d3fe614d820bbf83dd0e128d2543e67e6b2bc2f9d11baa66a3cafc1e179ad1a831f05e', 25, 1, 'passport_token', '[]', 0, '2023-01-09 22:10:34', '2023-01-09 22:10:34', '2024-01-09 22:10:34'),
('7f0235a294f2796009c100c7e27eddcf9e570420571669567cfbb5a41df9e59e542be8613c86e0fd', 33, 1, 'passport_token', '[]', 1, '2023-01-03 18:01:29', '2023-01-03 18:02:42', '2024-01-03 18:01:29'),
('7fcd5d29dbb6fd5514a24e8b8c2fdcce1988ea3d9970d6c566791d932ede8999d0ff920184f0f314', 31, 1, 'passport_token', '[]', 0, '2023-01-04 20:52:24', '2023-01-04 20:52:24', '2024-01-04 20:52:24'),
('816696d8e2be3e7222ab5b7522649cfde6597d7a19c78c629b0f91b818c50fc26c243c309b5b538b', 31, 1, 'passport_token', '[]', 0, '2022-12-29 21:38:15', '2022-12-29 21:38:15', '2023-12-29 21:38:15'),
('82c9bd292f4a43c295e987b466e91dcc70d38c6a43bdc877011ee43d7463e2ce62e4e1e99134cfed', 25, 1, 'passport_token', '[]', 0, '2022-12-30 01:00:27', '2022-12-30 01:00:27', '2023-12-30 01:00:27'),
('8562dc03a663a1d7f5bd7aacc2d89095bd6a1f8b5bf7b7ec7487a406bf905b61d9b0336b8488c0e6', 31, 1, 'passport_token', '[]', 0, '2023-01-04 17:15:04', '2023-01-04 17:15:04', '2024-01-04 17:15:04'),
('874522633cbf9bd0d19cba99b0983ece86a7b464ca5eb33ec4831d0522623b7e9ae32e9bdb060620', 25, 1, 'passport_token', '[]', 0, '2022-12-16 19:26:13', '2022-12-16 19:26:13', '2023-12-16 19:26:13'),
('87d3084f8a255edeb1398431dd2f9e2496fd3d4b6a6e282663346380fd4f32d07d7d187878066a03', 25, 1, 'passport_token', '[]', 1, '2022-12-29 02:26:29', '2022-12-29 02:27:06', '2023-12-29 02:26:29'),
('87f2d4d7a070d08c84726c15b697c6227cf72e0239a12ccc7299d3cee40d80d5e2ce8dffdb5c93c2', 25, 1, 'passport_token', '[]', 0, '2022-12-28 20:58:58', '2022-12-28 20:58:58', '2023-12-28 20:58:58'),
('885d47c79b9fe1e5071c1feb159add315bceb64ac1f72267a39cee6b7b7e3764e721142d13ae721c', 30, 1, 'passport_token', '[]', 1, '2022-12-23 11:50:57', '2022-12-23 12:04:22', '2023-12-23 11:50:57'),
('8899246563d5f345abf69a3eaae6ee3ed074dcbd35df2d4d66aa415b826955f71415cee1463deb9a', 25, 1, 'passport_token', '[]', 1, '2022-12-25 11:13:44', '2022-12-25 17:38:21', '2023-12-25 11:13:44'),
('8db4be12d5c03b61caaa79dd128bf637382a8dff5fec656a328fc06c2664b1a1adc1711d7b5807b5', 25, 1, 'passport_token', '[]', 1, '2022-12-27 18:55:13', '2022-12-27 18:55:48', '2023-12-27 18:55:13'),
('904f57ffb7935f516316a7f23fe2f7580a93c9f9c95aff185bfa00321176c3a7a88b539191cacb10', 35, 1, 'passport_token', '[]', 0, '2023-01-09 22:11:33', '2023-01-09 22:11:33', '2024-01-09 22:11:33'),
('90b3207adc8f77d9903819990268d83571bde2e8fd0ef42cae99ee18f1c507736c387d78ce118c7e', 35, 1, 'passport_token', '[]', 0, '2023-01-09 22:25:13', '2023-01-09 22:25:13', '2024-01-09 22:25:13'),
('9339cf9073b72d6d38119d88d8835633f64acf53ab468a75d9fc14c3c252f448c061c4e2e1d4b514', 25, 1, 'passport_token', '[]', 1, '2022-12-28 22:19:27', '2022-12-28 23:24:04', '2023-12-28 22:19:27'),
('93b5b365bf53529708805f37c003ad00b124cb106402e9b1e5e7352b4015db5f0f3c612947e0bfba', 25, 1, 'passport_token', '[]', 0, '2022-12-27 00:33:22', '2022-12-27 00:33:22', '2023-12-27 00:33:22'),
('9425cb3c6da72176c5745fdf250c49d072f53887802487aa9db29ea7d5acccbaaaaaeccecb50de64', 30, 1, 'passport_token', '[]', 0, '2022-12-19 16:44:39', '2022-12-19 16:44:39', '2023-12-19 16:44:39'),
('94ac3c5ac81175cf6d4b303a6d69aae6d07c3dfda376b8ca08421738f55ecf5dabd56942773b5746', 31, 1, 'passport_token', '[]', 1, '2022-12-29 17:00:53', '2022-12-29 18:03:06', '2023-12-29 17:00:53'),
('94f9168775bdfe5a5575db315473407b9d98151f12ab43a393bda3905c0f4f3a16c9c22c422417e6', 30, 1, 'passport_token', '[]', 0, '2022-12-29 14:18:37', '2022-12-29 14:18:37', '2023-12-29 14:18:37'),
('963cb095db6470125936321ad3a2fe485ae36adde1064ed6db49b57309faef9892c6d999acf795bb', 25, 1, 'passport_token', '[]', 0, '2023-01-09 22:15:19', '2023-01-09 22:15:19', '2024-01-09 22:15:19'),
('96a498240fd2697a9b8c8f78a689fb83253a1ed2db4f3cc7ef04bae49ee3da155d89f711bb1745da', 30, 1, 'passport_token', '[]', 0, '2023-01-04 16:05:16', '2023-01-04 16:05:16', '2024-01-04 16:05:16'),
('978baa2feb01569594fdc045dd0df8470dedb3ce809faf4a513d921c46e6ccef19ca422104162417', 25, 1, 'passport_token', '[]', 0, '2022-12-25 10:26:54', '2022-12-25 10:26:54', '2023-12-25 10:26:54'),
('989dced4b26a913c5b949be7f7955b7b8681543a3734260a3be193ff20516af4ec3ec8207c305c28', 25, 1, 'passport_token', '[]', 0, '2022-12-28 17:13:34', '2022-12-28 17:13:34', '2023-12-28 17:13:34'),
('98ed8c447a5fba5c51252e7f061163b286a4c7d14b38331e474e16b5ce82879ae719f987f0784006', 25, 1, 'passport_token', '[]', 0, '2022-12-28 21:33:10', '2022-12-28 21:33:10', '2023-12-28 21:33:10'),
('98f3c5da2421bab83306c0053689400f7127d6a32ebdad0286a088d520bf8369290ac744d5742189', 35, 1, 'passport_token', '[]', 0, '2023-01-09 22:17:36', '2023-01-09 22:17:36', '2024-01-09 22:17:36'),
('997045db563f2d810169ae3974c6c303406447ca233a9895903019dfc1f2bcd634d0690c398ec667', 33, 1, 'passport_token', '[]', 1, '2023-01-03 17:52:57', '2023-01-03 17:56:34', '2024-01-03 17:52:57'),
('99d3becee91db1aa8ba14e0981db4780e5f21ecd5d5f352ccf6b16595077a2c707570a1111056f7d', 25, 1, 'passport_token', '[]', 0, '2022-12-28 22:02:54', '2022-12-28 22:02:54', '2023-12-28 22:02:54'),
('9a5f29b2908312bd6b516c3e955e73082d9fd5e77019ab1ee88fd9cdd2f20ae6a8da941d2ee0862f', 31, 1, 'passport_token', '[]', 0, '2022-12-29 19:59:00', '2022-12-29 19:59:00', '2023-12-29 19:59:00'),
('9aa02a503c871fa824137d938f42e9d51ad4a714cf798cd4df3c527294888190e7a885792415c7fc', 25, 1, 'passport_token', '[]', 0, '2022-12-24 01:33:12', '2022-12-24 01:33:12', '2023-12-24 01:33:12'),
('9c85ef6f9197da91ac625a91fd24dee8dc0a79caf6c6957ca6e16a6fc7f19d9ef7f3f69dab100c42', 25, 1, 'passport_token', '[]', 1, '2022-12-21 01:32:28', '2022-12-21 01:35:03', '2023-12-21 01:32:28'),
('9cd20daaf27d5f322a52199e564b0679f2ddd2e7da05579cfc4475ae4a597afbae736a12ca050bbc', 33, 1, 'passport_token', '[]', 0, '2023-01-03 18:03:34', '2023-01-03 18:03:34', '2024-01-03 18:03:34'),
('9f16a5b0c0d233942377f18f0bb3de065820adb228fa86e91b10bda10c1cd590c1a4e092fa3b2d99', 25, 1, 'passport_token', '[]', 0, '2022-12-17 22:02:13', '2022-12-17 22:02:13', '2023-12-17 22:02:13'),
('9f293e5f0b810ed9efb73628ae1927169bab3496b780b639db6d86e8680512673ac02c240f599f95', 30, 1, 'passport_token', '[]', 1, '2022-12-27 11:06:49', '2022-12-27 11:10:40', '2023-12-27 11:06:49'),
('a03fe25d6cd6b336dd58133d90e6d4857651f3a49af8d2686d000e817254ba859e00062724eaeb7b', 1, 1, 'passport_token', '[]', 0, '2022-12-25 08:32:37', '2022-12-25 08:32:38', '2023-12-25 08:32:37'),
('a0b213bfd31fc36aaadf05b7e9ff3441d73bd15a1749a5f412d1f1b10de470bc5d27c6264a265d17', 25, 1, 'passport_token', '[]', 0, '2022-12-29 00:55:47', '2022-12-29 00:55:47', '2023-12-29 00:55:47'),
('a0e907776c237b17bb2575aa7152e450bc5d90f45f11cdd196fd42e98bb3e4ac91869f32a2a35ed8', 2, 1, 'passport_token', '[]', 0, '2022-12-28 19:51:29', '2022-12-28 19:51:29', '2023-12-28 19:51:29'),
('a11ec9c9af85e8bd7424a96a845cd5eca4b15a19365ae8b7e491fbafd83b6f4692c782476af5e8eb', 25, 1, 'passport_token', '[]', 0, '2022-12-27 19:00:40', '2022-12-27 19:00:40', '2023-12-27 19:00:40'),
('a12d04985cba1a18547c6eec27610b3fc815fb703da0b4f5748505ca3632feffff57e8ddab4af9dd', 25, 1, 'passport_token', '[]', 1, '2022-12-26 20:24:33', '2022-12-26 20:25:49', '2023-12-26 20:24:33'),
('a32f1853d6e9e4db0d89185810ca198788117bb34c2ffb203aed7bdb5a612859532306bcd1c4bece', 30, 1, 'passport_token', '[]', 0, '2023-01-06 14:32:31', '2023-01-06 14:32:31', '2024-01-06 14:32:31'),
('a3343497d4f3944c53ee0391f23b7996dc0b8f98ab9c946899ba87359839c7ddeb00a8e123c456d0', 1, 1, 'passport_token', '[]', 0, '2022-12-24 21:00:55', '2022-12-24 21:00:55', '2023-12-24 21:00:55'),
('a443774be36486af524d9d6244ecf7b07b2fe49243f47ca8b0ea455ae391be68f87866784dd6d8e4', 1, 1, 'passport_token', '[]', 0, '2022-12-15 08:38:52', '2022-12-15 08:38:52', '2023-12-15 13:38:52'),
('a712614c19bae6d108ddcb4c9c780d824df038e95b0fe9e1b1c274640e5c7663e5d381a899edf09c', 33, 1, 'passport_token', '[]', 1, '2023-01-03 18:00:48', '2023-01-03 18:01:17', '2024-01-03 18:00:48'),
('a8b59d3def545110f4ce51eb322c1f3ec18fdf38c82af67591d047491a3e18c3891ab9981faee6e7', 25, 1, 'passport_token', '[]', 1, '2022-12-27 18:53:59', '2022-12-27 18:54:20', '2023-12-27 18:53:59'),
('aa32258b8184b859c78fcb3786e677128032faf6661fa5255c35acc9774a6f2ed220216028d2b31f', 30, 1, 'passport_token', '[]', 0, '2022-12-29 18:47:22', '2022-12-29 18:47:22', '2023-12-29 18:47:22'),
('aafb709b4df21ffaaab49d26452ce7902689abca59edcfeb46087e0d65fc60366d045fc172d173d6', 25, 1, 'passport_token', '[]', 1, '2022-12-28 20:29:25', '2022-12-28 20:35:08', '2023-12-28 20:29:25'),
('ad0e0e135f998f26e33f33a432a3bf9dababe76eb747405a868acbafca7cf15ae4a67b4a48119283', 35, 1, 'passport_token', '[]', 0, '2023-01-09 22:12:59', '2023-01-09 22:12:59', '2024-01-09 22:12:59'),
('ad2a288c76715f32d3bf31122c2811822129152f1050bd90658d09bf1669eee540c1464cc1712afd', 30, 1, 'passport_token', '[]', 0, '2022-12-21 08:34:34', '2022-12-21 08:34:34', '2023-12-21 08:34:34'),
('ade12b4066f0a3cf2e4551f3500a8eac8b961d931036d178e91ec41a277d97ffa33e0ca1b9d9230a', 25, 1, 'passport_token', '[]', 1, '2022-12-29 00:55:14', '2022-12-29 00:55:33', '2023-12-29 00:55:14'),
('adfaf560b3182ff751c5a731b6ac86766757c4ca8eabab77ac7fab12015b53ec09db778a44220c2d', 33, 1, 'passport_token', '[]', 0, '2023-01-03 19:47:42', '2023-01-03 19:47:42', '2024-01-03 19:47:42'),
('ae8ad0e43a902d667c0c4c0d0912f6cedb44902b4fc28244c86456d927be8095562e8b178792709e', 25, 1, 'passport_token', '[]', 1, '2022-12-27 18:37:00', '2022-12-27 18:39:13', '2023-12-27 18:37:00'),
('b36d4bd2746f4ccf4db21f2dcca0b38d23ef36b5b744e04f8c10a4ef765fb858fc56a120124261f8', 25, 1, 'passport_token', '[]', 1, '2022-12-20 21:32:41', '2022-12-20 22:42:03', '2023-12-20 21:32:41'),
('b47546ee08aa0df15097e59f3bef81e1810fc7fd39ca06ec5052f8f1f5a5aa224d4be1ea79c5fd21', 25, 1, 'passport_token', '[]', 0, '2023-01-06 18:24:24', '2023-01-06 18:24:24', '2024-01-06 18:24:24'),
('b486d25668a6779e0d60655095d6536d29c1bda63aaa57ed0cab97a6a750daa944987df36dbcb198', 25, 1, 'passport_token', '[]', 0, '2023-01-09 21:40:50', '2023-01-09 21:40:50', '2024-01-09 21:40:50'),
('b683391edbe79c782743e8b4dab59da0f76f29010a6625d76222f8bad2061841faac31c910770e11', 25, 1, 'passport_token', '[]', 1, '2022-12-29 03:21:17', '2022-12-29 03:21:22', '2023-12-29 03:21:17'),
('b6a2831001f788b16b93b2b02625c7a201f51063700f7864c00563ea27d919edb2c7a849e8c297ae', 30, 1, 'passport_token', '[]', 0, '2023-01-10 16:05:37', '2023-01-10 16:05:37', '2024-01-10 16:05:37'),
('b6bf55a1586ddd52d3c31d6ecb8276fb77e834c48f3c6f627824c04000326970e1ae8c61bd79b7d3', 25, 1, 'passport_token', '[]', 1, '2022-12-29 03:04:22', '2022-12-29 03:04:27', '2023-12-29 03:04:22'),
('b882b944c8758cb3bfa3024256747448b8b42acff40d9996f48ef8c254873cda7c54ac60e62ae798', 25, 1, 'passport_token', '[]', 0, '2022-12-19 22:34:00', '2022-12-19 22:34:00', '2023-12-19 22:34:00'),
('b8d2c51cf0f051810fe6405e7867abcf847268d84a0ec536f76b1ff855ff344d92f39f4cce770277', 25, 1, 'passport_token', '[]', 0, '2023-01-09 22:09:39', '2023-01-09 22:09:39', '2024-01-09 22:09:39'),
('b90ac04ad7d2946ae441b1e0f19e2600eb95e7bbf9a4b7cd503d80e0c5b911938c6fa240428d9436', 31, 1, 'passport_token', '[]', 1, '2023-01-02 17:48:50', '2023-01-02 17:58:17', '2024-01-02 17:48:50'),
('b9abfb419e70f6df360275a9b762648b5a2d5f0b6bc3adb76d92d97d2c2b4598c737ec4e5f427b13', 32, 1, 'passport_token', '[]', 1, '2022-12-28 17:59:56', '2022-12-28 19:01:06', '2023-12-28 17:59:56'),
('bc52a98379f1b225436e1c7250c62153c3963b5e2fff0569d4a5b82b983b0f9123d0f85f7ce8856f', 25, 1, 'passport_token', '[]', 0, '2022-12-17 16:29:52', '2022-12-17 16:29:52', '2023-12-17 16:29:52'),
('bce3d58bb185943a8d492e1c82b9ea912e7912402c6646c126d12f7e6a70342eadc074f084d21abc', 25, 1, 'passport_token', '[]', 0, '2022-12-27 19:01:36', '2022-12-27 19:01:36', '2023-12-27 19:01:36'),
('bda66c85d015541f22ec981e99591c87a6e52937334aec8e2a10e3dfcb365d1e180e5d995c05e020', 25, 1, 'passport_token', '[]', 0, '2023-01-09 22:06:44', '2023-01-09 22:06:44', '2024-01-09 22:06:44'),
('be4a8e1d3440d0b40a5108881e2e67ec8b31cd008d21b005062da3ad92569c9542e2291e42a0f4a2', 25, 1, 'passport_token', '[]', 1, '2022-12-27 18:54:29', '2022-12-27 18:54:40', '2023-12-27 18:54:29'),
('bebbd3fe1e3a872ba51973dfbf4b38381d4166ea20363163d5ff9dd245826c9e44befce9dedaf558', 25, 1, 'passport_token', '[]', 0, '2023-01-09 22:09:08', '2023-01-09 22:09:08', '2024-01-09 22:09:08'),
('c396e01bbb7c8af6a2e04ba2884003b9443b32224474297d9a476aa5dda48d7782b8c5630cc77e16', 25, 1, 'passport_token', '[]', 0, '2022-12-23 17:44:12', '2022-12-23 17:44:12', '2023-12-23 17:44:12'),
('c3c63b110d939b7981a3b1a8bf231c61ccc9661223505c9ad3091bcae72afe80affe66914f7ea5a8', 25, 1, 'passport_token', '[]', 1, '2022-12-17 22:01:53', '2022-12-17 22:02:07', '2023-12-17 22:01:53'),
('c612276538c3f0de2ddbf52cd93a950070390636bb77904f772764d5f722f8377eb95506dcf098eb', 30, 1, 'passport_token', '[]', 1, '2022-12-24 12:14:32', '2022-12-24 12:17:09', '2023-12-24 12:14:32'),
('c6b7669cc5ea4161f49ee6fe856b1a403476c1fe8aada2828c60b24a835e7d1cf4555057c4923b92', 31, 1, 'passport_token', '[]', 1, '2022-12-29 16:54:46', '2022-12-29 17:00:09', '2023-12-29 16:54:46'),
('c866b640fb7e95dd3b158dd92437cd48cb37917e57b469f3879609e212454af86c413ef848541c17', 30, 1, 'passport_token', '[]', 0, '2023-01-07 08:20:13', '2023-01-07 08:20:13', '2024-01-07 08:20:13'),
('c994b8f86e0df7d89c3846d540a4096c262860b1060bdcaa809cfcbb2a502c25250bc7df1da8dd5c', 25, 1, 'passport_token', '[]', 0, '2022-12-27 18:59:55', '2022-12-27 18:59:55', '2023-12-27 18:59:55'),
('ca7584698edfb564a61ecaa075bf7a98a9b1ee0f9822b26e39317015dc28eedb01a491da0f363835', 25, 1, 'passport_token', '[]', 0, '2022-12-28 17:54:18', '2022-12-28 17:54:18', '2023-12-28 17:54:18'),
('cabe17ca8da65f66825ff91fb0da969e1841646bff26903e5a25fe084bae5d6f73b64ae4f81e8919', 25, 1, 'passport_token', '[]', 0, '2022-12-28 22:13:52', '2022-12-28 22:13:52', '2023-12-28 22:13:52'),
('cc793dcb57b03880d0e2969f066e60b4e2cdcff151e8f9de51ddd73b9486ad6001add46852f09894', 25, 1, 'passport_token', '[]', 1, '2022-12-20 22:42:09', '2022-12-21 01:22:24', '2023-12-20 22:42:09'),
('ccdc88ce17b952f103f014092d5a98d58811fe76e26fd011c7a3ae8523976dc35ee4b69d102f1e12', 25, 1, 'passport_token', '[]', 0, '2022-12-25 10:21:23', '2022-12-25 10:21:23', '2023-12-25 10:21:23'),
('ccf14622f4f9a299ce2a08bd3ab1b8aa6da0c145a2850ee47004f2a4d5ffda8b1ab54c5e1202ec73', 30, 1, 'passport_token', '[]', 0, '2022-12-29 14:16:42', '2022-12-29 14:16:42', '2023-12-29 14:16:42'),
('cd3c37c6af65a6504a39fb3175a5856aaae7a23f3911a5ddf13df7936d0e166823d4a0284089e592', 30, 1, 'passport_token', '[]', 1, '2022-12-19 16:31:39', '2022-12-19 16:37:55', '2023-12-19 16:31:39'),
('cd7bc831a570c8f55896f5aac551b1e0dc91c1779d568c34c00ac6259f0f985e26b3d2c31d4c3518', 25, 1, 'passport_token', '[]', 1, '2022-12-26 18:03:03', '2022-12-26 18:04:25', '2023-12-26 18:03:03'),
('cf4a53f26e50a82897bad7650830e43b9f19ed020f3a7f910b899aa55e251cdea4011355558121b1', 25, 1, 'passport_token', '[]', 0, '2022-12-16 19:32:56', '2022-12-16 19:32:56', '2023-12-16 19:32:56'),
('cf53d977bd998d155e859057469c50d52b351e6aabdac05ed68067f9ce57288837781833f049eacf', 25, 1, 'passport_token', '[]', 0, '2022-12-27 19:01:10', '2022-12-27 19:01:10', '2023-12-27 19:01:10'),
('d01495e97face486d95e753e04e9cfd2602a789799a272d08f07ee2e2983f359b76c387a04e33aac', 25, 1, 'passport_token', '[]', 0, '2022-12-27 22:37:54', '2022-12-27 22:37:54', '2023-12-27 22:37:54'),
('d055ad0045b44649c16a2ca0061a8133cd2baa802d69c8a1b128f70038cbb18a75b1eda7b783467e', 25, 1, 'passport_token', '[]', 0, '2022-12-27 22:41:50', '2022-12-27 22:41:50', '2023-12-27 22:41:50'),
('d26688820a7a18ae53baa8ffc4232b5e6ee68f3001068c1a86f78dc991c4aba69361c81ebb5748f1', 32, 1, 'passport_token', '[]', 0, '2022-12-29 18:11:23', '2022-12-29 18:11:23', '2023-12-29 18:11:23'),
('d415fa0c826c9635340dd57917a9113050883b9652d27c1eb1549174877fab1e52738a00b2c79eb8', 30, 1, 'passport_token', '[]', 0, '2022-12-20 08:45:50', '2022-12-20 08:45:50', '2023-12-20 08:45:50'),
('d5f61e18d68aca62547582989bdc2d1c50fc836e90440204bbd2aab020cffc4b1e8bdc539e2c5f8c', 11, 1, 'passport_token', '[]', 0, '2023-01-03 18:58:47', '2023-01-03 18:58:47', '2024-01-03 18:58:47'),
('d617f6fe86fb3f46abb54f250f5d6183bf5c2f50f777fbdea779a6cd73c3d85277a8409fdb782326', 30, 1, 'passport_token', '[]', 1, '2023-01-06 16:41:53', '2023-01-06 16:48:08', '2024-01-06 16:41:53'),
('d65ebfba00136d670ccf3c768a3ac595c2e60daadb182f8b5fdeab160ee623a268cb38062bd47856', 25, 1, 'passport_token', '[]', 0, '2022-12-17 16:34:07', '2022-12-17 16:34:07', '2023-12-17 16:34:07'),
('d684731577687b993128ae262bbe787fb6df1eddb2af2c2fc6c59d961f6a2ce56b3c9124e76c420b', 30, 1, 'passport_token', '[]', 1, '2022-12-29 14:44:06', '2022-12-29 14:44:27', '2023-12-29 14:44:06'),
('d775164bd9f9fa94b1c19d07a8da1e986a8ca4678bf3fe38fc2349abb9eb6ff93fe5599f52808c2c', 25, 1, 'passport_token', '[]', 0, '2023-01-04 18:38:56', '2023-01-04 18:38:56', '2024-01-04 18:38:56'),
('d793a8caf12900b9e00c65f7693e49e42edeed35f8bca7b574c1f0ddb0f697cf49dc43c22fedde44', 33, 1, 'passport_token', '[]', 1, '2023-01-03 21:42:59', '2023-01-03 21:51:03', '2024-01-03 21:42:59'),
('d8e994d7f9bd7fb98b84a4bbc9c87524f874d854a840f230400c3b3f3c7f640254446be1b98c3a50', 30, 1, 'passport_token', '[]', 1, '2022-12-19 16:30:29', '2022-12-19 16:30:50', '2023-12-19 16:30:29'),
('d8fefb03438136ff5b346af021d48389235f76a5d3e06fada077798167639ee86ef88ccacbb3d40a', 25, 1, 'passport_token', '[]', 1, '2022-12-29 03:03:21', '2022-12-29 03:04:19', '2023-12-29 03:03:21'),
('d95649d6651c06a9cad02e590e22faf9952aed1fea0f108b333ceb3e99eacb4603b7125c3afe1eca', 25, 1, 'passport_token', '[]', 0, '2022-12-22 17:44:58', '2022-12-22 17:44:59', '2023-12-22 17:44:58'),
('dcea393dec9fd7245e11a3263eda86c5b89d0674d5179c8f60b7b0e3e97a2d9cfd3246aab2eae036', 1, 1, 'passport_token', '[]', 1, '2022-12-25 08:46:39', '2022-12-25 08:48:46', '2023-12-25 08:46:39'),
('dcfab521be5f3a892e22185bce39052e8382c531ea1719e0dde045632773b79ab895cf7c2023aa1e', 25, 1, 'passport_token', '[]', 0, '2022-12-22 20:23:53', '2022-12-22 20:23:53', '2023-12-22 20:23:53'),
('dd01df731de9a312fe7f2c8122fbb828f2d38721ee3f1966e17cf69df01ad20397480209087c1dad', 25, 1, 'passport_token', '[]', 0, '2022-12-27 19:02:14', '2022-12-27 19:02:14', '2023-12-27 19:02:14'),
('dd405570b4d4fd37ecd241c0174f6092eb67dbb82cdd0c5c4ff0afb33a41c0bfa69495ed77ba37c7', 35, 1, 'passport_token', '[]', 0, '2023-01-09 21:42:18', '2023-01-09 21:42:18', '2024-01-09 21:42:18'),
('dd95da76ac030499de02dc4622be2ef3edffc873cdfc0d88adb67f6d45bbed89a843d3099ff16401', 25, 1, 'passport_token', '[]', 0, '2022-12-27 00:35:30', '2022-12-27 00:35:30', '2023-12-27 00:35:30'),
('de307fd329d977a69e17aa56b44b7ba3794a537a017419c5b6ec2750204b9c6c719dd1b3d6d488dd', 25, 1, 'passport_token', '[]', 1, '2022-12-22 19:15:01', '2022-12-22 20:22:37', '2023-12-22 19:15:01'),
('df9a9b40a47786439b8a8a5ecc578c9ac177bea464911d5847b615d4d3296b6c9d306d94e80e306c', 33, 1, 'passport_token', '[]', 1, '2023-01-03 21:09:31', '2023-01-03 21:12:41', '2024-01-03 21:09:31'),
('e068b7dc6bdec3df9edbfcb8ba3f203816ba796401ee883c4788328a297ad56bed2c2962363d38b7', 31, 1, 'passport_token', '[]', 0, '2023-01-06 14:41:33', '2023-01-06 14:41:33', '2024-01-06 14:41:33'),
('e1125670d8be388a962db9c0e32e59fac50d1a79a20bb386c0e773c11ebddb34d96b95850ac36671', 33, 1, 'passport_token', '[]', 0, '2023-01-03 19:44:45', '2023-01-03 19:44:45', '2024-01-03 19:44:45'),
('e209306988d6cfd6d6142cd72c33a3b6ed550006b0b668062b2806cd69423a8eb849afd25b3e4c9f', 31, 1, 'passport_token', '[]', 0, '2023-01-07 08:33:28', '2023-01-07 08:33:28', '2024-01-07 08:33:28'),
('e220aecd9b50f582246e1f2911d46f60990634579296b3ce00539a1ed32c7128edc11b0c16e7210f', 25, 1, 'passport_token', '[]', 0, '2022-12-29 22:15:17', '2022-12-29 22:15:17', '2023-12-29 22:15:17'),
('e22a405be983464ca26cae950de7b0766750e7f61e863a1198dae5cc92c41a95e3b73f19f0a81b09', 1, 1, 'passport_token', '[]', 0, '2022-12-24 20:56:17', '2022-12-24 20:56:17', '2023-12-24 20:56:17'),
('e23af91d16a8dda1a66bb8caa60e485824b37f271822a1b5b399dabe6aefac213279d1f2948fe12c', 25, 1, 'passport_token', '[]', 1, '2022-12-23 20:48:07', '2022-12-23 20:48:16', '2023-12-23 20:48:07'),
('e295b17d60f6a07ac9e87f50d13626aa3df250705e9e848f68b9947febe1331e418dd1a4ef15e433', 25, 1, 'passport_token', '[]', 1, '2022-12-18 13:11:43', '2022-12-18 13:12:11', '2023-12-18 13:11:43'),
('e73bc6e9aa1d79f3183de5ce970fe5373c123f3c62dc3d173b81be5b990fcf77e09e79c97d5d46fd', 25, 1, 'passport_token', '[]', 1, '2023-01-09 20:13:19', '2023-01-09 20:13:59', '2024-01-09 20:13:19'),
('e9a1e1ecb8bc58dd407be8cf1ea7ec3f99292014304af2972c62f8be9d97d7f15eccb93d23be570a', 25, 1, 'passport_token', '[]', 0, '2022-12-27 19:00:03', '2022-12-27 19:00:03', '2023-12-27 19:00:03'),
('eacd883268542f12689ae406dbc9998177e37b06bf684b7d62ca65d43d3e4469a948dbc30203793c', 35, 1, 'passport_token', '[]', 0, '2023-01-09 21:53:12', '2023-01-09 21:53:12', '2024-01-09 21:53:12'),
('eaec1deb13eb59ed3f634df0279ca438310ed1fa4bd9fe74ebddda8b49c77cb56a8682b1b8302799', 25, 1, 'passport_token', '[]', 1, '2022-12-27 18:50:39', '2022-12-27 18:51:11', '2023-12-27 18:50:39'),
('eafe690754efc3e3cf8f1f863cad673928c8d963daa19e380d5ee98f5bb6ed76d3087a1bac0820bf', 34, 1, 'passport_token', '[]', 1, '2023-01-09 21:40:29', '2023-01-09 21:40:40', '2024-01-09 21:40:29'),
('ee3b9f821e462e38dd671e2f1200d7c646ab2ae4fb806168465d01cde6e70b8045b8e6277169ec5f', 25, 1, 'passport_token', '[]', 0, '2022-12-28 21:54:06', '2022-12-28 21:54:06', '2023-12-28 21:54:06'),
('efa162d8b0f5551d0d24f9a14fe795127e0cac8ebfa18a60a68d749d6a88af0412f0909d94f91338', 25, 1, 'passport_token', '[]', 0, '2023-01-09 23:55:37', '2023-01-09 23:55:37', '2024-01-09 23:55:37'),
('f4ba70852a6a745980e6d4b4d98731884dcce38da27a30d9f3bf5a08d56a03177cd2c6203737ec84', 25, 1, 'passport_token', '[]', 0, '2022-12-23 23:48:37', '2022-12-23 23:48:37', '2023-12-23 23:48:37'),
('f4e19c88eb9749329e7c5fa5708e99257aa785df840ae0d9098eb292dec97a72f7e334f30869037a', 34, 1, 'passport_token', '[]', 1, '2023-01-09 21:34:47', '2023-01-09 21:34:58', '2024-01-09 21:34:47'),
('f5a61a70c3d1097919baa5636ec3f45703b5a116ab349df6fbcc89425495df5be06c2eff9935e302', 25, 1, 'passport_token', '[]', 0, '2022-12-28 17:45:46', '2022-12-28 17:45:46', '2023-12-28 17:45:46'),
('f683f2ab9ecd2829a5d8cc80b2e61a83fa5983541fb42c7ff597365d921e47866909dd8edb711ff8', 25, 1, 'passport_token', '[]', 1, '2023-01-09 22:16:38', '2023-01-09 22:16:43', '2024-01-09 22:16:38'),
('f7b6a435027a5e7b00a18adbdd6f01e80cab36ff40e8d5c362e99de8c685b6c516c8ea1ccb2a613c', 31, 1, 'passport_token', '[]', 1, '2022-12-30 21:06:02', '2022-12-30 21:59:26', '2023-12-30 21:06:02'),
('f89dd6e8021d075eb813a7d39148fb5ae02861a34f83ae5399829ca91b18e48bea89c996c169ced0', 25, 1, 'passport_token', '[]', 1, '2022-12-27 11:46:30', '2022-12-27 11:47:27', '2023-12-27 11:46:30'),
('f8c7a69db7f6e35de8ffbb5dda74cd7eba65ff11f9ae1b1bfa64df3b5f70edb5e42ffa7ff4d9ae4c', 25, 1, 'passport_token', '[]', 0, '2022-12-18 13:14:34', '2022-12-18 13:14:34', '2023-12-18 13:14:34'),
('fab6c1f49dafc4a5a43619d0fd3e45d0350d7b29c4d0c0ab5fae34bb6824d8a6594c777053492c3e', 31, 1, 'passport_token', '[]', 1, '2023-01-05 21:07:33', '2023-01-07 08:24:57', '2024-01-05 21:07:33'),
('fae7dc94da85bb52c993accb4ee42ed863d145bd21f1e7672c48609f7147ef5080b4ab52fffc9118', 1, 1, 'passport_token', '[]', 0, '2022-12-25 09:26:17', '2022-12-25 09:26:17', '2023-12-25 09:26:17');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, NULL, 'Laravel Personal Access Client', 'bThPLN6CS7dKqQxbdkr6ImOiwZ90LSLvoIYTXxgF', NULL, 'http://localhost', 1, 0, 0, '2022-12-15 08:38:11', '2022-12-15 08:38:11'),
(2, NULL, 'Laravel Password Grant Client', 'xxAiMQB0iXAukjB8iWf1wbmEHZhUx3ZiOLHrm0f3', 'users', 'http://localhost', 0, 1, 0, '2022-12-15 08:38:11', '2022-12-15 08:38:11');

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
(1, 1, '2022-12-15 08:38:11', '2022-12-15 08:38:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('sufiyankhanzada125111111114@gmail.com', '5822', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Item_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Item_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Item_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` tinyint(4) NOT NULL,
  `rental_price_week` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rental_price_oneday` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `insuretype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_condition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `damageinfo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `damage_pic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchaseproof` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_rent_day` int(11) NOT NULL,
  `max_rent_day` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `Item_name`, `Item_price`, `brand_id`, `user_id`, `Item_mode`, `Item_image`, `views`, `rental_price_week`, `rental_price_oneday`, `category_id`, `size`, `color`, `insuretype`, `item_condition`, `description`, `tags`, `damageinfo`, `damage_pic`, `purchaseproof`, `is_featured`, `created_at`, `updated_at`, `featured_image`, `min_rent_day`, `max_rent_day`, `status`, `product_image`) VALUES
(4, 'Aliya Considine', '545', '2', '31', 'EtiS6tmc3Z', 'uploads/items/WhatsApp Image 2022-03-16 at 9.19.58 PM.jpeg', 19, '2', '5', '1', '1', 'blue', 'fM6iqHFkx4', 'jU5fxipA6e', 'Hic autem nihil cumque assumenda voluptatibus in.', 'text', '1uqCgLcrwG', '82vOqJ0CpE', 'FIEmlJlhrp', 'yes', '2022-12-15 08:38:03', '2023-01-07 09:31:40', 'uploads/cats-graphic.jpg', 2, 11, 'approved', NULL),
(5, 'Salma Wolff', '4', '7', '14', '6js2juncaM', 'uploads/items/WhatsApp Image 2022-03-16 at 9.19.58 PM.jpeg', 2, '1', '3', '12', '1', 'unWUE', 't4dxiwHOf3', 'McEWm3iL79', 'Autem culpa quidem voluptatibus in nisi sed voluptas ut.', 'tags', 'QyvPdMaqbW', '3Pb64S6M6p', 'vw6aRZ8Mu9', 'yes', '2022-12-15 08:38:03', '2023-01-07 08:25:59', 'ILzPzNSJfP', 5, 22, 'pending', NULL),
(6, 'Mr. Arely Schimmel II', '177', '3', '11', 'N4saPvYJO9', 'uploads/items/WhatsApp Image 2022-03-16 at 9.19.58 PM.jpeg', 1, '2', '3', '4', '1', 'qe4E9', 'lEqdYP7M9O', 'v54BurfARJ', 'Delectus exercitationem ducimus ratione harum similique sint modi.', 'any', 'kiZnAZ6i5m', 'geBsKIIzk1', 'ykFzThjGcD', 'no', '2022-12-15 08:38:03', '2022-12-15 08:38:03', '02Bm1zBkV1', 5, 23, 'pending', NULL),
(7, 'Fermin Jenkins II', '98', '2', '10', 'Np0P360ayU', 'w12o6PzmEt', 1, '2', '1', '19', '1', 'S7m96', 'gc4Qmn9YBu', 'mcDVHNCdZY', 'Optio blanditiis adipisci cumque id est suscipit.', 'tags', 'XgLdJRZ5uf', 'uswkeb75oY', '8m7gq1PvaZ', 'yes', '2022-12-15 08:38:03', '2022-12-15 08:38:03', 'qwkxzRdgo4', 3, 24, 'pending', NULL),
(8, 'Cruz Hilpert', '83', '3', '8', 'gKbQOi8Kdu', 'ctzZnrSw90', 1, '2', '3', '5', '1', '66Vdk', '3ltn5CXgv9', 'yLAa4iC7dn', 'Ut corporis velit et est accusantium sit.', 'tags', 'u9qhrBAUpD', 'tWHx05QFsp', 'yrJyNjXhcB', 'yes', '2022-12-15 08:38:03', '2022-12-15 08:38:03', 'OEXtsEXxLJ', 2, 9, 'pending', NULL),
(9, 'Turner Kovacek', '474', '3', '7', '0PYExuj896', 'K3rJzie43D', 1, '3', '5', '18', '1', 'jfSTY', 'yloDKp4RnJ', '6rYoK8dutc', 'Est ut quasi et officiis illum voluptates.', 'tags', 'Npg644mLbS', 'gttgLcahyk', 'qzny7KbRMC', 'no', '2022-12-15 08:38:03', '2022-12-15 08:38:03', 'PSSP2DVdDi', 2, 18, 'pending', NULL),
(10, 'Valerie Conn', '858', '4', '1', '3wReEACFex', 'T5tfekO0Py', 1, '2', '1', '18', '1', 'OBusm', 'ArARhvyhTK', 'yrN3JYvigJ', 'Non quisquam reiciendis sunt quia officia tenetur similique.', 'tags', 'NNYaReYNYY', 'dTAqBWnWAX', 'nIlhBWu2lU', 'yes', '2022-12-15 08:38:03', '2022-12-15 08:38:03', 'vtCp4IXgtG', 1, 11, 'pending', NULL),
(11, 'Prof. Loraine Ullrich', '917', '5', '2', 'rjeRYJTus4', 'dpGbfI6EGe', 1, '3', '1', '1', '1', 'r8G7y', 'jhScqAILae', 'GExAXlzRDJ', 'Similique sit corrupti dicta iusto facilis repellendus.', 'check', '41jwp41vpI', 'Av8M6j90H6', 'BA8of7awLW', 'no', '2022-12-15 08:38:03', '2022-12-15 08:38:03', 'HHgWig422T', 3, 29, 'pending', NULL),
(12, 'Afton Wolf IV', '737', '2', '1', 'U6HzDjRLq1', '4NQcSCZox0', 1, '3', '1', '18', '1', 'i1nlO', 'tNphRcBS0V', 'lsYcYn4xZj', 'Voluptas enim dolorem blanditiis necessitatibus ut.', 'any', 'BzwF1VTBr0', 'KKTz10hvi8', 'CIAZTwzc7o', 'no', '2022-12-15 08:38:03', '2022-12-15 08:38:03', 'RDPaVFHmn0', 1, 27, 'pending', NULL),
(13, 'Elvera Fisher', '587', '3', '8', 'wQOXfmHvba', 'KQOejfr4QB', 1, '2', '4', '17', '1', '2r1Ov', 'niXAHXSIEh', 'gz1ACeT8gs', 'Iure ea magnam et.', 'text', 'TJSA3dilkp', '0V4HgrLpHn', 'fnmSGwTWEa', 'yes', '2022-12-15 08:38:03', '2022-12-15 08:38:03', 'H9vnV4QbqL', 6, 10, 'pending', NULL),
(14, 'Dr. Alfredo Fisher IV', '977', '5', '18', 'DXQVqVZdJf', 'cfPBZjVIxh', 1, '3', '4', '17', '1', '6pQvs', 'obwXNbkU8W', 'Xr22qNKN6q', 'Voluptas architecto cumque omnis nemo ut minima.', 'text', 'XZHFdsPO4i', 'nipD4n0bT1', 'nWnIaUPHJm', 'yes', '2022-12-15 08:38:03', '2022-12-15 08:38:03', 'H7lFcsgvhJ', 7, 14, 'pending', NULL),
(15, 'Annabell Ondricka', '910', '4', '13', 'GjOwc87otj', '2jNriXdxrM', 1, '2', '2', '18', '1', 'REl95', 'lysNewGAKQ', '0slrdQQnkP', 'Corrupti cum eligendi magni consequatur hic pariatur suscipit molestiae.', 'any', 'DG8C66spM3', 'tPgtxQBo5f', 'nvn6pYv3KB', 'no', '2022-12-15 08:38:03', '2022-12-15 08:38:03', 'nKo2srxW3K', 6, 17, 'pending', NULL),
(16, 'Mr. Jamey Weissnat', '664', '3', '5', 'uJ1R0nIUVU', 'd1Ep4saPux', 1, '1', '1', '1', '1', 'Y87iI', 'mbwxnIMVQl', 'IG6TyhouTK', 'Et tempore praesentium voluptatem ipsam odit sint.', 'any', 'Nhj8hJyWU3', '5BqV08LOza', 'dk88qPdhPm', 'yes', '2022-12-15 08:38:03', '2022-12-15 08:38:03', '2GaYHQ0B4A', 5, 9, 'pending', NULL),
(17, 'Odessa Blick', '294', '2', '19', 'y9fegQuuU8', 'ODvWAcVnb2', 1, '3', '2', '18', '1', 'Xv4gm', 'A1QujMr8xR', 'k6DOMKGc90', 'Harum labore magnam consequatur ut aliquid labore.', 'any', 'yq1d59rQgb', 'H2IUWMgnEk', '1PISHOCdME', 'no', '2022-12-15 08:38:03', '2022-12-15 08:38:03', 'KmDtr86a7d', 3, 14, 'pending', NULL),
(18, 'Kenny Kessler', '801', '3', '14', 'tuYX0j5vqm', 'uploads/items/WhatsApp Image 2022-03-16 at 9.19.58 PM.jpeg', 21, '3', '5', '14', '1', 'snogM', 'fWjIsyLwjW', 'fp2z7pMdIf', 'Libero sapiente laboriosam deserunt laudantium aut odit.', 'text', 'x86b8BPa7k', 'lt3lCHulB0', 'W03cEyA6D0', 'yes', '2022-12-15 08:38:03', '2023-01-06 11:02:41', '0GEoHHsKiW', 4, 14, 'approved', NULL),
(19, 'Dr. Jaqueline Ebert', '352', '2', '2', 'X5CeiSiVnS', 'BfzBGdMHri', 1, '3', '4', '4', '1', '9PlTt', 'eMzdIOBxjS', 'wNoLEZE847', 'Et rerum autem omnis provident et labore aspernatur.', 'any', 'VCyDzisQ1t', '58RJfZyt8W', 'emBUJVb3rF', 'yes', '2022-12-15 08:38:03', '2022-12-15 08:38:03', 'cjfqf6bfy3', 3, 15, 'pending', NULL),
(20, 'Mekhi Mann', '200', '5', '19', 'kUUaVwmaJU', 'uploads/itemsWhatsApp Image 2022-03-16 at 9.19.59 PM (1).jpeg', 1, '2', '2', '11', '1', 'FrHAG', 'qmNjRH8O6k', 'qHFGaHJJ6G', 'Voluptates autem ut quo optio eum sequi nobis.', 'text', '5KqlvQLGQY', 'aCULcTASoo', 'VVFdmOCkmP', 'no', '2022-12-15 08:38:03', '2022-12-15 08:38:03', 'dWfJc3Jhut', 4, 26, 'pending', NULL),
(21, 'Germaine Travis', '49', '15', '25', 'Ex voluptates harum', 'uploads/itemsWhatsApp Image 2022-03-16 at 9.19.59 PM (1).jpeg', 0, '712', '775', '1', 'Scooter', 'Color', 'My insurance doesn\'t cover rentals or I don\'t have an insurance', 'Like new', 'Sint illo commodo ul', 'Dress,Beg,Watch', 'Facere labore incidi', 'uploads/damageWhatsApp Image 2022-03-16 at 9.20.00 PM (1).jpeg', 'uploads/proofWhatsApp Image 2022-03-16 at 9.19.59 PM (1).jpeg', 'no', '2022-12-28 00:30:48', '2022-12-28 00:30:48', 'uploads/featuredWhatsApp Image 2022-03-16 at 9.19.58 PM (1).jpeg', 3, 23, 'pending', NULL),
(23, 'Kirestin Farmer', '785', '15', '25', 'Pariatur Inventore', 'uploads/items/WhatsApp Image 2022-03-16 at 9.20.00 PM.jpeg', 0, '239', '622', '1', 'Bike', 'Beige', 'My insurance doesn\'t cover rentals or I don\'t have an insurance', 'Very good condition', 'Sint in recusandae', 'Dress,Beg,Watch', 'Velit error vel est', 'uploads/damage/', 'uploads/proof/WhatsApp Image 2022-03-16 at 9.20.00 PM.jpeg', 'no', '2022-12-28 00:42:50', '2022-12-28 00:42:50', 'uploads/featured/WhatsApp Image 2022-03-16 at 9.19.58 PM.jpeg', 21, 16, 'pending', NULL),
(24, 'Melodie Hess', '927', '15', '30', 'Voluptas est at vel', 'uploads/items/WhatsApp Image 2022-03-16 at 9.19.58 PM.jpeg', 26, '984', '633', '1', 'Car', 'red', 'My insurance doesn\'t cover rentals or I don\'t have an insurance', 'Very good condition', 'Quas minus rem facer', 'Dress,Beg,Watch', 'Incididunt impedit', 'uploads/damage/WhatsApp Image 2022-03-16 at 9.20.00 PM.jpeg', 'uploads/proof/WhatsApp Image 2022-03-16 at 9.19.59 PM (1).jpeg', 'no', '2022-12-28 00:59:01', '2023-01-07 08:27:31', 'uploads/featured/WhatsApp Image 2022-03-16 at 9.19.59 PM (1).jpeg', 26, 16, 'approved', NULL),
(25, 'Macy Dixon', '878', '15', '25', 'Sint sit id blandi', 'uploads/items/pizza-round.png', 0, '521', '148', '1', 'Car', 'grey', 'My insurance doesn\'t cover rentals or I don\'t have an insurance', 'Very good condition', 'Modi ratione neque u', 'Dress,Beg,Watch', 'Proident provident', 'uploads/damage/pizza-round.png', 'uploads/proof/heroimg.png', 'no', '2023-01-06 18:18:51', '2023-01-06 18:18:51', 'uploads/featured/heroimg.png', 4, 11, 'pending', NULL),
(26, 'Driscoll Dotson', '921', '15', '25', 'Accusamus nemo fugit', 'uploads/items/pizza-round.png', 0, '398', '665', '1', 'Scooter', 'red', 'My insurance doesn\'t cover rentals or I don\'t have an insurance', 'Very good condition', 'Incididunt id aliqu', 'Dress,Beg,Watch', 'Recusandae Earum so', 'uploads/damage/pizza-round.png', 'uploads/proof/heroimg.png', 'no', '2023-01-06 18:21:06', '2023-01-06 18:21:06', 'uploads/featured/heroimg.png', 21, 5, 'pending', NULL),
(27, 'Ryan Decker', '691', '15', '25', 'Ea ipsam doloribus a', 'uploads/items/pizza-round.png', 0, '180', '977', '1', 'Cycle', 'green', 'My insurance doesn\'t cover rentals or I don\'t have an insurance', 'Acceptable condition', 'Et magni dolorum ab', 'Dress,Beg,Watch', 'Incididunt quasi vol', 'uploads/damage/web_developer_cover_letter_example_1.jpg', 'uploads/proof/vecteezy_3d-rendering-concept-of-online-shopping-gift-boxes_6934882_645.jpg', 'no', '2023-01-06 18:26:04', '2023-01-06 18:26:04', 'uploads/featured/cats-web.jpg', 7, 27, 'pending', NULL),
(28, 'Driscoll Dotson', '921', '15', '25', 'Accusamus nemo fugit', 'uploads/items/pizza-round.png', 0, '398', '665', '1', 'Scooter', 'red', 'My insurance doesn\'t cover rentals or I don\'t have an insurance', 'Very good condition', 'Incididunt id aliqu', 'Dress,Beg,Watch', 'Recusandae Earum so', 'uploads/damage/pizza-round.png', 'uploads/proof/heroimg.png', 'no', '2023-01-06 18:29:04', '2023-01-06 18:29:04', 'uploads/featured/heroimg.png', 21, 5, 'pending', NULL),
(29, 'Zayn Prod 1', '100', '2', '35', 'Hello Test', 'uploads/items/cats.jpg', 0, '1', '1.2', '1', 'Cycle', 'black', 'My insurance covers rentals', 'Very good condition', 'Hello Very Good Description', 'NewShoes,SHoes,MensShoes', 'Hello Information Damage', 'uploads/damage/cats-web.jpg', 'uploads/proof/cats-seo.jpg', 'no', '2023-01-09 23:16:46', '2023-01-09 23:16:46', 'uploads/featured/Audi-Logo_2016.svg.png', 5, 10, 'approved', NULL),
(30, 'Testing Zain2', '23', '2', '35', 'display', 'uploads/items/cats.jpg', 0, '0.23', '0.276', '1', 'Bike', 'black', 'My insurance covers rentals', 'Very good condition', 'Hello Hello Hello Hello Hello Hello Hello Hello Hello', 'Beg,Watch,dsad,sfsd,sdfds,werwe,dvxcv,dfgdg', 'Hello Hello Hello Hello Hello Hello Hello', 'uploads/damage/298af776-fee2-40ba-a918-5fdcd4a57f43.jpg', 'uploads/proof/Audi-Logo_2016.svg.png', 'no', '2023-01-09 23:38:02', '2023-01-09 23:38:02', 'uploads/featured/Preview_main.jpg', 5, 10, 'pending', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recommended_products`
--

CREATE TABLE `recommended_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `search_query` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recommended_products`
--

INSERT INTO `recommended_products` (`id`, `user_id`, `search_query`, `created_at`, `updated_at`) VALUES
(1, '25', 'Kenny Kessler', '2022-12-17 16:35:45', '2023-01-10 00:00:00'),
(2, '30', 'Melodie Hess', '2022-12-19 16:34:19', '2023-01-06 16:45:46'),
(3, '1', 'brand_name', '2022-12-25 17:54:18', '2022-12-25 17:54:18'),
(4, '32', 'Laverne Will', '2022-12-28 18:05:39', '2022-12-30 15:29:19'),
(5, '31', 'Melodie Hess', '2022-12-29 17:05:49', '2023-01-05 18:03:38'),
(6, '33', 'Aliya Considine', '2023-01-03 18:14:01', '2023-01-03 21:32:18'),
(7, '35', 'Zayn Prod 1', '2023-01-09 23:24:19', '2023-01-09 23:55:15');

-- --------------------------------------------------------

--
-- Table structure for table `rented_products`
--

CREATE TABLE `rented_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `buyer_id` tinyint(4) NOT NULL,
  `seller_id` tinyint(4) NOT NULL,
  `product_id` tinyint(4) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipment_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL,
  `product_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rented_products`
--

INSERT INTO `rented_products` (`id`, `buyer_id`, `seller_id`, `product_id`, `price`, `shipment_address`, `request_status`, `from`, `to`, `product_status`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 1, '78', NULL, 'approved', '2022-11-01 13:31:36', '2022-11-29 00:00:00', 'available for rent', '2022-12-25 08:31:36', '2022-12-25 08:31:36'),
(2, 1, 16, 1, '78', NULL, 'pending', '2022-12-31 13:32:52', '2023-01-05 13:32:52', 'available for rent', '2022-12-25 08:32:52', '2022-12-25 08:32:52'),
(3, 32, 2, 2, '532', NULL, 'pending', '2022-12-30 18:45:28', '2023-01-05 18:45:28', 'available for rent', '2022-12-28 18:45:28', '2022-12-28 18:45:28'),
(4, 1, 16, 21, '78', NULL, 'pending', '2022-12-31 18:50:23', '2023-01-05 18:50:23', 'available for rent', '2022-12-28 18:50:23', '2022-12-28 18:50:23'),
(5, 25, 2, 2, '532', NULL, 'approved', '2022-12-30 19:15:12', '2023-01-05 19:15:12', 'waiting for shipment', '2022-12-28 19:15:12', '2023-01-03 19:06:38'),
(6, 1, 16, 2, '78', '10', 'pending', '2022-12-31 19:57:36', '2023-01-05 19:57:36', 'available for rent', '2022-12-28 19:57:36', '2022-12-28 19:57:36'),
(7, 1, 16, 16, '78', '10', 'pending', '2022-12-31 19:58:26', '2023-01-05 19:58:26', 'available for rent', '2022-12-28 19:58:26', '2022-12-28 19:58:26'),
(8, 25, 2, 2, '532', NULL, 'Approved', '2022-12-06 20:21:42', '2022-12-12 20:21:42', 'available for rent', '2022-12-28 20:21:42', '2022-12-28 20:21:42'),
(9, 30, 14, 18, '801', NULL, 'pending', '2023-01-01 14:34:50', '2023-01-10 14:34:50', 'available for rent', '2022-12-29 14:34:50', '2022-12-29 14:34:50'),
(10, 2, 25, 21, '532', NULL, 'Approved', '2022-12-06 20:21:42', '2022-12-12 20:21:42', 'available for rent', '2022-12-28 20:21:42', '2022-12-28 20:21:42'),
(11, 31, 31, 21, NULL, NULL, 'approved', '2022-12-31 23:58:59', '2023-01-05 23:58:59', 'not available', '2022-12-29 23:58:59', '2022-12-29 23:58:59'),
(12, 1, 16, 10, '78', '10', 'pending', '2022-12-31 15:12:48', '2023-01-05 15:12:48', 'available for rent', '2022-12-30 15:12:48', '2022-12-30 15:12:48'),
(16, 32, 31, 2, '532', NULL, 'pending', '2022-12-31 15:54:18', '2023-01-05 15:54:18', 'available for rent', '2022-12-30 15:54:18', '2022-12-30 15:54:18'),
(17, 31, 31, 4, NULL, NULL, 'approved', '2022-12-31 21:43:51', '2023-01-05 21:43:51', 'not available', '2022-12-30 21:43:51', '2022-12-30 21:43:51'),
(18, 33, 11, 6, '177', 'testing address', 'approved', '2023-01-04 18:44:11', '2023-01-10 18:44:11', 'waiting for shipment', '2023-01-03 18:44:11', '2023-01-03 19:46:29'),
(19, 33, 31, 4, '545', 'testing', 'approved', '2023-01-05 21:33:55', '2023-01-10 21:33:55', 'waiting for shipment', '2023-01-03 21:33:55', '2023-01-03 21:39:30'),
(20, 25, 25, 21, NULL, NULL, 'approved', '2023-01-16 20:31:18', '2023-01-18 20:31:18', 'not available', '2023-01-09 20:31:18', '2023-01-09 20:31:18');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` tinyint(4) NOT NULL,
  `product_id` tinyint(4) NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `reviews` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `rating`, `reviews`, `created_at`, `updated_at`) VALUES
(1, 1, 24, 3, 'anything here', '2022-12-25 09:53:39', '2022-12-25 09:53:39'),
(2, 25, 24, 3, 'anything here', '2022-12-25 09:53:39', '2022-12-25 09:53:39'),
(3, 25, 2, 5, 'hell', '2022-12-29 23:44:10', '2022-12-29 23:44:10'),
(4, 2, 21, 5, 'Test Review', '2022-12-29 23:44:10', '2022-12-29 23:44:10');

-- --------------------------------------------------------

--
-- Table structure for table `review_images`
--

CREATE TABLE `review_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `review_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postalcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnic_front` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnic_back` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insuretype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cpassword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proofid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmpass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacypolicy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `termscondition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `firstname`, `lastname`, `username`, `city`, `postalcode`, `country`, `address`, `state`, `phone`, `image`, `cnic_front`, `cnic_back`, `insuretype`, `cpassword`, `proofid`, `payment`, `confirmpass`, `privacypolicy`, `termscondition`, `is_featured`, `profile`, `description`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Leone', 'goodwin.lempi@example.net', '2022-11-26 16:36:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HmRJXwmCsA', 'RpAyIBoxWu', 'TyG4NolV7O', 'City', 'B0PPbRaCnH', 'Country', 'FDpMRMeEQi', 'State', 'B0PPbRaCnH', 'OTi6aZsmRR', 'fUu5xw4uE9', 'psauKkKxjx', 'wG7v2tevV4', '3mzvQ6QcdV', 'IuiUrhWb1W', NULL, 'UtAWnKigsO', NULL, NULL, '1', 'uploads/cats.jpg', NULL, '2pBLqeNHEz', '2022-11-26 16:36:50', '2023-01-09 23:53:48'),
(2, 'Chester Cole', 'ellen44@example.net', '2022-11-26 16:36:50', '$2y$10$oh7gGnBMthkV8iJTUoe4deeVoUc0pfH2X29X3eGlSY96dWWTcyaGu', 'Jiot8F6qEy', 'DZ7HdXzBDp', 'fF3ScwgSil', 'Y4Wi9ex2JH', '8IXrmtPHik', '23KzGYg9Rm', 'zS4HvfVzWs', '12fJ9nuTwy', '60LpJcYIgi', 'p6aEhsCot5', 'w5HpIP0jCc', 'eNJctogYkC', 'xUBJfMZUED', '8rZnXOQ538', 'gfpiay2BIf', 'EI10LYaiK3', 'fTsv9jRR0H', '2mjn9U5dGY', '95EHHaCRuL', '1', 'uploads/cats.jpg', NULL, 'tiZ3wqbIR4', '2022-11-26 16:36:50', '2023-01-09 23:51:41'),
(3, 'Lesly Keeling', 'uherzog@example.com', '2022-11-26 16:36:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Vfjvd6WZUo', 'BB4Vu2HoAr', 'Ho54ipJkzo', 'iWJpd9XWLp', 'tWGRy8ZJqI', 'dZzQW7fqHe', 'OHlq3ONjyf', 'KJ2vyB95MR', '41FVNNTcaQ', 'F77wcAeDOL', 'p9Oj9vgSMV', 'E7iuSJek3G', '0xefsSBwF7', 'aIFxXl5BUm', 'MSYeZfCO9d', 'ovINAyC6km', 'uaXrXOojby', 'w4f8E4Xdut', 'oyLFBjwM8Q', '', '', NULL, 'ETQU7XWrqv', '2022-11-26 16:36:50', '2022-11-26 16:36:50'),
(4, 'Gaston Mitchell', 'altenwerth.justen@example.com', '2022-11-26 16:36:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uMe0TbxVFr', 'UltumyuC8b', 'raKXfVHjUh', 'bbfrHCiQBM', 'EK4BobP8fh', 'Hv67lRUuOJ', 'RSh3F2eLfo', 'J9HtBi93Tg', 'I1sbpnbfx2', '7FyYyqHwSz', 'OC6iSRU00N', 'qFoXsnBMML', '6EQHKi8Iqf', 'ALsmtB62A2', '57hHenyw6C', 'Lp4vapLy1u', 'zMw1mvSQDW', 'kxwPcLBugb', 'rAGGlHcMUl', '', '', NULL, 'TZKhj3gClk', '2022-11-26 16:36:50', '2022-11-26 16:36:50'),
(5, 'Ms. Sister Rutherford', 'rlangworth@example.org', '2022-11-26 16:36:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mXJxwzKpxY', 'Hoj9XdNTow', 'kkDu46Si7c', 'ce1v12rwss', '8VlVDCMsNz', '5o4vLQqckN', 'RQmotPlwpp', '6Lnj8OTQ5i', 'n1bBmbaaru', '6c5KS3fI6g', '0ULfUzrI1B', 'QIzo77679k', 'E5ZieRZtOv', '8mPhnBRD1c', 'DetUU86GvD', 'JjAgwl4qHI', 'ilUNxZurPv', 'WNF1Pfz1ZJ', 'WrbGORfTsx', '', '', NULL, 'T1MHIUQNiw', '2022-11-26 16:36:50', '2022-11-26 16:36:50'),
(6, 'Eldridge Cronin', 'bergstrom.joany@example.org', '2022-11-26 16:36:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SbnmLXfQL0', 'cGKkdfGEy1', 'xLszvlJduA', 'mzu9VuScH4', 'qdXeepoTUZ', 'Xcm37Pn4G4', 'G7MN7hv76B', '6RcZZB4Wu5', '0xkXeonzJC', 'MQiJvptG3d', '2zfOt6dJXf', 'l00lLhL0LD', 'oFOJvo0Zy5', 'NhZpqfGFSM', '7kuIeZUqJ0', 'GuLJAv4UMq', '8xmjoTM3ni', 'R7wJ06Urnk', 'yUN1cvcoUX', '', '', NULL, 'zOzNqAAEMO', '2022-11-26 16:36:50', '2022-11-26 16:36:50'),
(7, 'Bridget Balistreri', 'roger.ankunding@example.org', '2022-11-26 16:36:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KydrbvKlm2', 'PXI51fCVgQ', 'K8aa5iVt0m', 'vlyeDpSFfy', 'wuNzN3urWB', 't0hHpU4nhb', 'VTu6FNj7xp', 'kfJ7OR7Lfn', 'dSNHSHobwd', 'nDjyXTfsxA', 'ZB1yxxYuM0', 'NB1lDJbBKc', 'bz8YYt5Xx8', 'HrXeeVBMXp', 'BUsXF7w4n4', 't5PfXiuG9z', 'OnNjCEj2LB', 'olrh3SHe8I', 'eNEcwvycPk', '', '', NULL, 'RTDPt4jM7O', '2022-11-26 16:36:51', '2022-11-26 16:36:51'),
(8, 'Collin Bailey I', 'clara01@example.net', '2022-11-26 16:36:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dFuzQ7c0tQ', 'PYQB5MBHp0', 'yk4VOgKfHJ', 'q32xC3TU4t', 'coaovyOClV', 'EDJqhULquw', '430U6RyOKp', 'Irz0BwYgAn', '7T5yBP0RxM', 'DBAHeG1l9d', 'z7NCXuIriX', 'bxRvq4v0aG', 'UmvgZo1bix', 'WPO9jCBfHZ', 'hKi7ii4snN', 'QGz7How5mv', 'o5wBZodTut', 'vV1C5014p3', 'cOsFGQhEnL', '', '', NULL, 'IsTfuhB7hk', '2022-11-26 16:36:51', '2022-11-26 16:36:51'),
(9, 'Elaina Hills', 'gleason.alaina@example.org', '2022-11-26 16:36:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AF54ajyl5m', 'eQYB4ZlGa5', 'iagb2BW4ci', 'Z6bT2hqNwx', 'eg94Jd7CzM', 'L04sCfcZQP', 'jjOBH7ofM9', 'hLgRds0Sbi', 'kukxk8xAkd', 'dan2aAD854', 'F5nYfNsSNG', 'MJEGWnsVh1', 'KpLxr6d1rk', 'plIvmTKrwO', 'Cq64wTi6qn', 'pXoYLpINz3', 'ncgnAlSMML', 'irpOLIzHq1', 'PfBat6sS5y', '', '', NULL, 'nCrTnS9ORi', '2022-11-26 16:36:51', '2022-11-26 16:36:51'),
(10, 'Miss Shemar Larson I', 'judson.runte@example.org', '2022-11-26 16:36:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EzGYMNEps8', 'v16hSmqroB', '53OaGUoqAM', 'CA6hxTovnm', 'XkLvtUAYHe', 'Ebk5NQUPPj', 'JCB6BIYJ20', 'ec9ApXVgs2', 'yPVBpqCS1c', 'OPZUiLpoys', 'gK8mI7vSxm', 'MKZvwwq48G', 'mHYpSu3Yk7', 'Z4sIEX6EZg', 's972Lqx2UY', 'v4QU2oFZ6s', 'twufWwQXhQ', 'vNoxfCjasd', '1ZGHhUP0F4', '', '', NULL, 'yzwTBOQ6Ic', '2022-11-26 16:36:51', '2022-11-26 16:36:51'),
(11, 'Verla Crist', 'connelly.bailey@example.org', '2022-11-26 16:36:50', '$2y$10$q2RkUBlUSdQWN2keUTkwseofoAUCmMI21RgWqxCPOEh/Y2Bww7k3u', 'fzLjuKZov1', 'yC3aNEAz7R', 'ICnepUr2v7', 'kc3nEsHJaE', 'K5XDJ27ziw', 'WIPNbU5CeG', '8UpMWfwCgw', 'wkxMmIkZVu', '54AMfSqy6t', 'XzKGxAfUG2', '6s1R5xH5dT', 'z9ic8VkttB', 'H88xkDg3Aw', 'NphKqME05o', 'e0tNJLC7gV', 'hcQy4VUqgA', 'hoRa4DImYw', '5pnAvsgUlU', 'twkfp8eSbw', '', '', NULL, 'DyJlNdOT7y', '2022-11-26 16:36:51', '2022-11-26 16:36:51'),
(12, 'Prof. Ryley Gorczany II', 'gonzalo.streich@example.org', '2022-11-26 16:36:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oESNem4vcE', 'VJdE0dpCPz', '5OXevR6K9s', 'zg3UQ2hvVJ', '2b6jYIXQKj', 'pexPHYgY9S', 'Gym1vqjEf7', 'Vn0I9uZQNX', 'jTJ5oe2wdl', 'ijfW2Ft5QZ', 'IPNYmiGbAg', 'BJ8mIjsrGN', '792UKDOQ8r', 'bWW32pysSl', 'xaqrSH3ufu', 'gIBgexgBu6', 'dIXlswpWCl', 'IY9RGiHjNO', 'urGA9H0cPk', '', '', NULL, 'QjSBPyOsUu', '2022-11-26 16:36:51', '2022-11-26 16:36:51'),
(13, 'Leonor Reichel MD', 'christina45@example.net', '2022-11-26 16:36:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WMyjQAhGRa', 'mhANk5VaW0', 'JnC4T6TKQf', 'AEE3GMLMdS', 'nk8pFmWl2A', 'YXqOgjSrep', 'gHDoFjHcZi', 'NByMdEVcII', 'yoUp3vgRDD', 'NDkKxwfPn9', 'q6Qr56XzTn', 'SXLof6qIaf', 'mRRajDIhiy', 'm06zHb6oQG', 'Kvz7vx2vxT', 'PGwEz9RllQ', 'dtBTEnUliJ', 'bf3Aao9K5l', 'JBNWRfPwLo', '', '', NULL, 'NpaT0V7fBX', '2022-11-26 16:36:51', '2022-11-26 16:36:51'),
(14, 'Jaclyn Gaylord II', 'katlynn81@example.org', '2022-11-26 16:36:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bzmkNjZeRk', 'GfwwmMtq0r', 'BIrdYBHp3c', 'voKQZ4Nj0J', 'MOWnmJ8XF6', 'wXvEFnSp19', 'CptgNeiwbw', 'GP2qI2UDgg', 'Hkapc1ovOc', 'uploads/cats-web-design.jpg', 'WcQQfUbKlW', 'toyUXpEyot', 'My insurance doesn\'t cover rentals or I don\'t have an insurance', 'tWKCkIuFTs', 'hH9y4QIVCJ', 'rJMxpD0ji7', 'PRgT8IMNNf', 'QNhCdlomvh', 'TkrG8Kz6mb', '1', 'uploads/cats-web-design.jpg', NULL, 'DP103KZT8C', '2022-11-26 16:36:51', '2023-01-09 23:54:27'),
(15, 'Mireille Towne', 'whayes@example.com', '2022-11-26 16:36:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'A6e0CjKj4w', 'b6vOlmUutL', 'KIvGzkbC23', 'd97gGU7Mbo', 'oCmjB0ccW7', 'I8gqnUbMzm', 'JDEZGxb9Z5', 'BFJkiK8kdg', 'pz3DJ1SaYO', '9UyLmhO0CE', 'FfTChVgtZL', 'RqZbhcidWB', 'PnKrQuK6Px', '8KuEwKIhWs', 'U7GKgX0hCu', 'lFdZh5gtXG', 'xnDt4pbO7T', 'GiDuO8Vs2m', 'ufzHzL1fBz', '', '', NULL, 'Aqd9D8iRTl', '2022-11-26 16:36:51', '2022-11-26 16:36:51'),
(16, 'Skye Jerde', 'chadrick04@example.org', '2022-11-26 16:36:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Mn99VrBlYo', '6bjhQNCfbt', 'mv6Y4915u7', 'eI1ABVccf2', 'XLkMnSffBw', 'UrqVQjiEr4', 'cLhweBdazN', 'VP8FLfcy96', '8lIYjDPhRb', 'nRqIa4Z3N6', 'sPV3ez0qlw', 'QXrQ39x3cY', 'gBjgLfSFxv', 'X8tMblSfak', 'NwAa6GcGLn', '1z4Cr4ZZrT', 'KruCpYna5b', 'szKL5SsdNx', 'lvnN4LgqKd', '', '', NULL, 'wvujFEgznc', '2022-11-26 16:36:51', '2022-11-26 16:36:51'),
(17, 'Dr. Timmy Witting III', 'xblock@example.com', '2022-11-26 16:36:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sIRpECbqSa', 'IPI5syC3iF', 'umzpm4pHlV', 'q3dm0Ts3n0', '5WsNOPzVqo', 'MRkX9gdhgE', 'hOwBf9fOvL', 'hwkp43JUpg', 'A7ulVaK1ur', 'iWQjUIc8Ac', 'ozCzjFNH5c', '9aOKzKzcUY', 'lkaB473DLi', 'tg7J55sUGH', 'tuCl25XWWc', 'z16zzfykE3', 'crgvvy98R7', 'ID8bpqS4BF', 'AMVTQ2RTcD', '', '', NULL, 'l336Lqsn44', '2022-11-26 16:36:51', '2022-11-26 16:36:51'),
(18, 'Okey Dietrich', 'mara.parisian@example.net', '2022-11-26 16:36:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'g8jUYNBV6x', 'nMYv96rQng', 'WeFCnWHa9q', '7qQnmxlaUY', 'Yp48BAFgbZ', 'DwABBUecPi', 'kcGuWrTM22', 'FSXdNFjLZx', 'q6d0mjGSfm', 'aLeZJO6d4y', 'kxNr891kzu', '7XLQMuN0DP', 'lmyF0SN41N', 'y7CxPgXq5T', 'wU7GZTSTV3', 'bnkhx9yWvw', 'w0WOTuVzAu', 'yOFNUZ7atT', 'FxrfFEg5ph', '', '', NULL, 'aqsX6PJLCh', '2022-11-26 16:36:51', '2022-11-26 16:36:51'),
(19, 'Berry Harber', 'olarkin@example.org', '2022-11-26 16:36:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Na6R527rwc', 'AAhe2R7qsv', '4UJtXavoJx', 'z9WajvEx2j', 'uUJH83fY3K', 'AbhkW09r8E', 'xs1RKj2kNe', 'JPgOpjrAJs', 'daBEWYyN3B', 'bIEYDuzlxI', '2Prau2oSxC', 'SBOsRfzSY5', 'VIZxIxsLmd', 'sWafg8MjjD', '8SrctBYB6H', 'll19XR7a3X', 'Hu1J8nR7fc', '4MltUFOssL', 'm7mHrap3fA', '', '', NULL, 'ZpoYn911IT', '2022-11-26 16:36:51', '2022-11-26 16:36:51'),
(20, 'Ms. Alisa Bauch', 'hollie.ankunding@example.com', '2022-11-26 16:36:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TfVqER3SLw', 'JUM2F38wz3', 'W8S9jceTEg', 'jMXEOHG2xd', 'APEhkW1At1', 'ISSfjMO8pE', 'V4Dc6lh5HB', 'fQXeSckE36', 'IwUH52Nlke', 'iENaQRUR87', 'L4Tak76sim', 'UqS09n8GvX', '0SKyHc6FDK', 'U3yfTBm6mp', 'zEaXvsnXcI', 'gPQdlC3tEg', 'Z6Ru6zhR1o', 'L2JHz0KZMx', 'Qg2yrYK5q2', '', '', NULL, 'NarFgIbiNO', '2022-11-26 16:36:51', '2022-11-26 16:36:51'),
(21, 'Sufiyan Khanzada', 'sufiyankhanzada12544@gmail.com', NULL, '$2y$10$yTF9W3/yn6VmHmZvMnNQIOluLEtuUJDdcdRh6pRJgx7KL2MZf9GTW', NULL, 'khanzada', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30 22:52:50', '2022-11-30 22:52:50'),
(22, 'Sufiyan', 'sufiyankhanzada1254@gmail.com', NULL, '$2y$10$dlufqAEKKzGqbZT7LiXqUOXrvS.XwR9nANXAkaTCsVmc/5ndQi5BG', NULL, 'khanzada', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30 22:54:15', '2022-11-30 22:54:15'),
(23, 'Sufiyan', 'sufiyankhanzada1254@gmail.com5366', NULL, '$2y$10$.V3NB8HLlktn1Ajd3x5m4OtY4WGVD7KTBbuk07C6vUQ1iDzwOZbfa', NULL, 'Ahmed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on', 'on', NULL, NULL, NULL, NULL, '2022-11-30 22:54:26', '2022-11-30 22:54:26'),
(24, 'Sufiyan', 'sufiyankhanzada12514@gmail.com', NULL, '$2y$10$JlIUC77P0RRm7mYQ1wlKVuUyGyJJZb3f8qRwVDNpy4G18Ex6z/58y', NULL, 'Ahmed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on', 'on', NULL, NULL, NULL, NULL, '2022-11-30 22:55:19', '2022-11-30 22:55:19'),
(25, 'Zain', 'sufiyankhanzada748@gmail.com', NULL, '$2y$10$3im7VEEX9599rqKtUWgVyeiqU0yimBvblqRgNR0/FLXzByfwE4jXS', NULL, 'Ahmed', NULL, 'City', '710000', 'Country', 'Hyderabad', 'State', '03461351500', NULL, NULL, NULL, 'My insurance doesn\'t cover rentals or I don\'t have an insurance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/WhatsApp Image 2022-10-01 at 7.23.25 PM.jpeg', 'Hello Dear ?????', NULL, '2022-11-30 22:57:10', '2023-01-09 22:15:14'),
(26, 'Sufiyan', 'exmaple@gmail.com', NULL, '$2y$10$/2.SabS.sRG2EbhBpe9EuOOA2HGCMgcwOQbUt6aK3quuJCX0mLk56', NULL, 'Ahmed', NULL, 'Hyderabad', '710000', 'Adilpur', 'Hyderabad', 'Bagarji', '710000', NULL, NULL, NULL, 'My insurance covers rentals', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cats-web-design.jpg', NULL, NULL, '2022-12-02 16:38:36', '2022-12-02 16:39:28'),
(27, 'Sufiyan', NULL, NULL, '$2y$10$CGnBaxdM049sMvV.QBPgbOdM1A2uW4vbw4X6wlGW2qXgu5g4OJB42', NULL, 'Ahmed', NULL, 'Hyderabad', '710000', NULL, 'Hyderabad', 'Bagarji', '03461351500', NULL, NULL, NULL, 'My insurance covers rentals', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/Audi-Logo_2016.svg.png', NULL, NULL, '2022-12-05 21:07:00', '2022-12-05 21:07:34'),
(28, 'Sufiyan', NULL, NULL, '$2y$10$t5NRs4/YIcukp.rUnwk9T.iIH/3Sn1xE9n1zKQHzHQpX62sUEwrVu', NULL, 'Ahmed', NULL, 'Hyderabad', '710000', NULL, 'Hyderabad', 'Badin', '03461351500', NULL, NULL, NULL, 'I have an insurance and don\'t know whether it covers rentals', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cats-web-design.jpg', NULL, NULL, '2022-12-05 21:07:53', '2022-12-05 21:08:52'),
(29, 'Sophia', 'mini.sophia.feilitzsch@web.de', NULL, '$2y$10$jmOzG/rbmQVuxqKJFp9ZJ.gAPmgGT8hvKAN58Hx1gdg021QCxA1z.', NULL, 'von Feilitzsch', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-06 21:01:42', '2022-12-06 21:01:42'),
(30, 'Sophia', 'sophia.vonfeilitzsch@gmail.com', NULL, '$2y$10$.UwgL/Jn8wEHiapt.CRNr.hG2smeiaUQeMKAmNsUM3Ya/A6eZU4U6', NULL, 'von', NULL, 'City', '701000', 'Country', '3522 Gray Ridge Ct, Houston, TX 77082, USA', 'State', NULL, NULL, NULL, NULL, 'My insurance covers rentals', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/', 'Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello', NULL, '2022-12-07 20:19:13', '2023-01-06 14:32:10'),
(31, 'Taha', 'Taha123@gmail.com', NULL, '$2y$10$oh7gGnBMthkV8iJTUoe4deeVoUc0pfH2X29X3eGlSY96dWWTcyaGu', NULL, 'Ahmed', NULL, 'Adilpur', '710000', 'Badin', 'Karachi', 'Bandhi', '710000', NULL, NULL, NULL, 'My insurance doesn\'t cover rentals or I don\'t have an insurance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/e6309c749864c1b2246bd7faf173258 拷贝.jpg', NULL, NULL, '2022-11-30 22:57:10', '2022-12-08 21:49:56'),
(32, 'Taha87', 'Taha1234@gmail.com', NULL, '$2y$10$oh7gGnBMthkV8iJTUoe4deeVoUc0pfH2X29X3eGlSY96dWWTcyaGu', NULL, 'Ahmed', NULL, 'Adilpur', '710000', 'Badin', 'Karachii', 'Bandhi', '710000', NULL, NULL, NULL, 'My insurance doesn\'t cover rentals or I don\'t have an insurance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/e6309c749864c1b2246bd7faf173258 拷贝.jpg', NULL, NULL, '2022-11-30 22:57:10', '2022-12-08 21:49:56'),
(33, 'Taha', 'tuaha.rafi@gmail.com', NULL, '$2y$10$q2RkUBlUSdQWN2keUTkwseofoAUCmMI21RgWqxCPOEh/Y2Bww7k3u', NULL, 'Rafi', NULL, 'City', '123', 'Country', 'address', 'State', '03174564', NULL, NULL, NULL, 'My insurance doesn\'t cover rentals or I don\'t have an insurance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/', 'dfdfdfdfsdfsdf', NULL, '2023-01-03 17:17:20', '2023-01-03 21:09:18'),
(34, 'Sufiyan', 'sufiyankhanzada1098@gmail.com', NULL, '$2y$10$S2k4xhyBJTlLWICqZFLdruVTLsndH2GII9w26t73pe.HtIwo4eCt6', NULL, 'Ahmed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on', 'on', NULL, NULL, NULL, NULL, '2023-01-09 21:34:40', '2023-01-09 21:34:40'),
(35, 'Zayn123', 'zayn111@gmail.com', NULL, '$2y$10$TOLMgHzYjZAd24jbjKbJgumwtF94H8cwJ83zaDwfcmFwh7YluRJGi', NULL, 'Ahmed', NULL, 'City', '710000', 'Country', 'Hyderabad', 'State', '03461351500', NULL, NULL, NULL, 'My insurance covers rentals', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cats-web-design.jpg', 'DUmmy Profile Description', NULL, '2023-01-09 21:35:45', '2023-01-09 22:25:49');

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

CREATE TABLE `user_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) NOT NULL,
  `receiver_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_messages`
--

INSERT INTO `user_messages` (`id`, `sender_id`, `receiver_id`, `created_at`, `updated_at`) VALUES
(1, 25, 1, '2022-12-16 19:28:25', '2022-12-16 19:28:25'),
(2, 1, 25, '2022-12-16 19:28:25', '2022-12-16 19:28:25'),
(3, 30, 1, '2023-01-03 20:17:50', '2023-01-03 20:17:50'),
(4, 30, 11, '2023-01-03 20:38:31', '2023-01-03 20:38:31'),
(5, 30, 10, '2023-01-03 20:38:55', '2023-01-03 20:38:55'),
(6, 25, 33, '2023-01-06 13:25:15', '2023-01-06 13:25:15'),
(7, 25, 32, '2023-01-07 10:07:18', '2023-01-07 10:07:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_user_messages_id_foreign` (`user_messages_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recommended_products`
--
ALTER TABLE `recommended_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rented_products`
--
ALTER TABLE `rented_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_messages`
--
ALTER TABLE `user_messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `recommended_products`
--
ALTER TABLE `recommended_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rented_products`
--
ALTER TABLE `rented_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user_messages`
--
ALTER TABLE `user_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_user_messages_id_foreign` FOREIGN KEY (`user_messages_id`) REFERENCES `user_messages` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
