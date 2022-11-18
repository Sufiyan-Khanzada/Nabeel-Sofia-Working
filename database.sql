-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 18, 2022 at 08:48 PM
-- Server version: 5.7.39-cll-lve
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
-- Database: `zainrajput_sofiaapi`
--

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
(10, '2022_09_06_182822_create_products_tabke', 2),
(11, '2022_09_06_201538_add_image_products_table', 3),
(12, '2022_09_07_223402_add_column_in_users_table', 4),
(13, '2022_09_08_184115_add_image_column_users_table', 5);

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
('004950b65f8efd60f23d39786472743eb46c9e2085d8c2ec9f1cb79b70aaabcfc4a6a11b9acab86c', 38, 1, 'passport_token', '[]', 0, '2022-11-08 16:57:31', '2022-11-08 16:57:31', '2023-11-08 16:57:31'),
('0196d2c4eea2c51b1e4bcdcbc1867c68746771ba4e3e7f017f07617d338655df0d2765110294b92b', 31, 1, 'passport_token', '[]', 0, '2022-11-09 22:59:08', '2022-11-09 22:59:08', '2023-11-09 22:59:08'),
('02063f1770f045b3cd3a5bcb178d1b00a9d3142fb9390cf1729e0778c885e76efa1e67caceed7abd', 31, 1, 'passport_token', '[]', 0, '2022-11-09 23:09:14', '2022-11-09 23:09:14', '2023-11-09 23:09:14'),
('0265787038a605b776da926502c96e62e389ca24d33c17d2d94568a81b4dc0923b5203062c24eb81', 31, 1, 'passport_token', '[]', 0, '2022-11-17 16:45:48', '2022-11-17 16:45:48', '2023-11-17 16:45:48'),
('0319d9993618e7f2a9e583fa57f17cf70ad2e345ea55ec4d987bf7bd555c27a09fc744c138439b90', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:54:01', '2022-11-05 00:54:01', '2023-11-05 00:54:01'),
('03b67091494c50892af1d22cfdda2fd4e8a91d35e51c918aea72e71ec53e518755ef7a3d88459f21', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:27:14', '2022-11-05 00:27:14', '2023-11-05 00:27:14'),
('06b14d97d504f54ae89d03282c43bdf40c7825ccec1ca24b4484c5f852f8cf59f82431b007f6b531', 31, 1, 'passport_token', '[]', 0, '2022-11-11 00:40:39', '2022-11-11 00:40:39', '2023-11-11 00:40:39'),
('099202149a35826df9c14a9b2a8bfcaa174fb4ce009f67886d571903325ede7f7380bc76a4b407d9', 31, 1, 'passport_token', '[]', 0, '2022-11-16 22:25:20', '2022-11-16 22:25:20', '2023-11-16 22:25:20'),
('0b3174277a8363f32e3642d55abd90671ab5b92c3aecd84312598199fe4e01e808048a970a52eb39', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:34:56', '2022-11-05 00:34:56', '2023-11-05 00:34:56'),
('0b798e6cc07c8e7d488063bb5c4dfd7bb8e857f10e6d8a2215ee7eb751c6c7a1bd2bf06645197f2e', 31, 1, 'passport_token', '[]', 0, '2022-11-04 17:29:05', '2022-11-04 17:29:05', '2023-11-04 17:29:05'),
('0b841c4db6a002aaf9f6f07da3458047f66fb3eb1c430c8fdb304bd1264b34caf69a63958f306d3a', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:59:58', '2022-11-05 00:59:58', '2023-11-05 00:59:58'),
('0c3961342f1aade92302d9d7552278bbbcea5e3fab3c26fa9539825c5996a68b3009f13745c15fcf', 31, 1, 'passport_token', '[]', 0, '2022-11-03 02:25:40', '2022-11-03 02:25:40', '2023-11-03 02:25:40'),
('0d16667988a29eb45498f87b1431d9007d8b4798b52184c7940050e42f54ed61a7d11b9820d54714', 31, 1, 'passport_token', '[]', 0, '2022-11-10 23:17:16', '2022-11-10 23:17:16', '2023-11-10 23:17:16'),
('0ee6c46780e9d7e61388501c8b146e481082332d70171e98b0a2596607535adcdcc01492f849081e', 40, 1, 'passport_token', '[]', 0, '2022-11-08 17:12:15', '2022-11-08 17:12:15', '2023-11-08 17:12:15'),
('1064ea85ac2e67aaf797c90a70fc2fec21f5a25e3fe190b671e751ef6b00d458856f31967af301fa', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:24:19', '2022-11-05 00:24:19', '2023-11-05 00:24:19'),
('10839a8b5b804232597a9b9fdc96df45531bbc14c0b22a5004bcc91f51e6c7fc4efa4af73c971cc1', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:34:48', '2022-11-05 00:34:48', '2023-11-05 00:34:48'),
('10b124b12a4cc59e890b848eaf9d41c7a6a59424d6af2e5651523bc20ac9b0abe0cdf319641360ba', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:56:55', '2022-11-05 00:56:55', '2023-11-05 00:56:55'),
('12bb481eb61f6f0cba66e103179fd8850de4e4faf32568821873ce7fafa9c9d16470d146dc029c72', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:55:58', '2022-11-05 00:55:58', '2023-11-05 00:55:58'),
('132267bff264c3e44c7b353c05af715b41b40826a954b37b5710b4b6b83eae94600f267c1500dbeb', 31, 1, 'passport_token', '[]', 0, '2022-11-07 13:29:40', '2022-11-07 13:29:40', '2023-11-07 13:29:40'),
('13fe2bab0c27cabbb3b107c881777780abb6c1106e0187e94639fac8a9a782a2dc1fd4f78b5eeeaf', 31, 1, 'passport_token', '[]', 0, '2022-11-09 23:23:53', '2022-11-09 23:23:53', '2023-11-09 23:23:53'),
('17da4d5f7af6552778700110dd9cfbe5ad66f531f694e630329ac86ecb0097a68eedd93011025a2c', 31, 1, 'passport_token', '[]', 0, '2022-11-05 01:01:33', '2022-11-05 01:01:33', '2023-11-05 01:01:33'),
('18913a8ee45dc6f2139560f219a8efe3a61b0ce2d841838dc85b6c0e0c374f689072d18624c3aab3', 31, 1, 'passport_token', '[]', 0, '2022-11-10 02:32:40', '2022-11-10 02:32:40', '2023-11-10 02:32:40'),
('22fcef829a146dea36353fa5328439715fd2cb6dec690989afb017a7fdd618830b48c5b509238913', 31, 1, 'passport_token', '[]', 0, '2022-11-07 13:49:17', '2022-11-07 13:49:17', '2023-11-07 13:49:17'),
('24c90ede5b340beb49d6020b7369b281a3e5e9d15a7441ed09541a188a08f5cfee74765925cc7656', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:32:03', '2022-11-05 00:32:03', '2023-11-05 00:32:03'),
('2a44bc526c7b4680834efd6e150215aad0ed7f6d49ac2dcb045ed47a854f10f9fce9414e7c14b733', 40, 1, 'passport_token', '[]', 0, '2022-11-08 17:11:33', '2022-11-08 17:11:33', '2023-11-08 17:11:33'),
('2b555d5b80ec21311715a845535cf8d92094fa19c5e1f6314448f061ae1c55276957afe2fb284b70', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:34:26', '2022-11-05 00:34:26', '2023-11-05 00:34:26'),
('2d683bfebd970cb6bb6b89a7ae817a9b21a725faf3b2e40ea1577db6cad5abd236625c00381ef9d2', 31, 1, 'passport_token', '[]', 0, '2022-11-17 16:51:05', '2022-11-17 16:51:05', '2023-11-17 16:51:05'),
('3491495e3bc44fcbc9033306b445fb9d3df2b11107f53bceea00e945414a43edc62ee259688a102f', 31, 1, 'passport_token', '[]', 0, '2022-11-04 19:54:01', '2022-11-04 19:54:01', '2023-11-04 19:54:01'),
('34fa1a5818036a482bd8a1199e5c4322e4c06291d55e69474a5b95372e51288f07ce7fd105875104', 31, 1, 'passport_token', '[]', 0, '2022-11-07 14:25:54', '2022-11-07 14:25:54', '2023-11-07 14:25:54'),
('37fe649fe7f6da11e203a9ba31d62a5880daa3658aedab2e815a1541d6d9609b705975cafc008d6f', 31, 1, 'passport_token', '[]', 0, '2022-11-09 23:13:54', '2022-11-09 23:13:54', '2023-11-09 23:13:54'),
('3955cf3c086e2b8f6fc56b0ef4f3eb5fc60bff0ce07b3d29a1b6d5685a2c50c3ab2dddd3c9e5b7b1', 31, 1, 'passport_token', '[]', 0, '2022-11-11 16:22:19', '2022-11-11 16:22:19', '2023-11-11 16:22:19'),
('3ad6cb287d3a41f0a4ab43cee44d744264d080dad19c0815c8a9e1b93e2a0eb6b70305b5ceea011c', 31, 1, 'passport_token', '[]', 0, '2022-11-03 02:27:18', '2022-11-03 02:27:18', '2023-11-03 02:27:18'),
('3b6a1e89aefef530886381df9b1b081dc3a13f7274dd887f75b32ea2cad4f271ba4955adfb41dd13', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:29:13', '2022-11-05 00:29:13', '2023-11-05 00:29:13'),
('3ee4c40b0600dcddc838766866f6c6aaee95478e8009cf452127c5c0cd8aa55b1b05e6484573e217', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:25:08', '2022-11-05 00:25:08', '2023-11-05 00:25:08'),
('4032f63bf89b6ec4395b17c5b113410e0ae5316d403ae93f9b4c97cd3de5ed7f5cfa7bcb40fe0e97', 31, 1, 'passport_token', '[]', 0, '2022-11-16 17:15:29', '2022-11-16 17:15:29', '2023-11-16 17:15:29'),
('4421419076e9b3dc7640ed40710703a512b4b13c89c96255d2410eebc7fd305cb00b4ea94c87fe24', 31, 1, 'passport_token', '[]', 0, '2022-11-05 01:13:24', '2022-11-05 01:13:24', '2023-11-05 01:13:24'),
('4513c462ecb0d18ee3fdaaaf184a5960eaba74b9e6fff111bbea3e880b423314bc91d4d45bea2d91', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:28:21', '2022-11-05 00:28:21', '2023-11-05 00:28:21'),
('45304df2e4645b3c7d2855fa0fdc1375a4b9fba5922701c4d289518056f64de1c191ff9767a238c0', 31, 1, 'passport_token', '[]', 0, '2022-11-16 23:00:31', '2022-11-16 23:00:31', '2023-11-16 23:00:31'),
('47c3bdfd1d230643e76015331b5be2356242b693d38f87fc3484778008c322b3193601a8b754e9c5', 31, 1, 'passport_token', '[]', 0, '2022-11-04 16:40:47', '2022-11-04 16:40:47', '2023-11-04 16:40:47'),
('49065a1a6c6ea808d6c7cdc62a4fc1b5297a3fe1e0a0cdb1a85881bf84abb01afcf5b2c8387dc5dd', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:57:46', '2022-11-05 00:57:46', '2023-11-05 00:57:46'),
('4c7c97a0da93043d0bb8fa68948d1da490ba8063dd43320c33f55ebe9cce52d94422b17eb01717f1', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:37:17', '2022-11-05 00:37:17', '2023-11-05 00:37:17'),
('50f314eb0b79bbdd0d2d26a56fd698cc9a5b0c0d31495cf90315c761d25cc7c850a1d208511f0937', 31, 1, 'passport_token', '[]', 0, '2022-11-03 02:30:01', '2022-11-03 02:30:01', '2023-11-03 02:30:01'),
('510cf952c2bcbeae3d72f0ad4cc20ebc3f909ab4c370535c13ca144d2a883ee98e96b5faccacffcf', 31, 1, 'passport_token', '[]', 0, '2022-11-17 16:57:55', '2022-11-17 16:57:55', '2023-11-17 16:57:55'),
('55754fbf3a40696dc6af25ac54325e9beb512fd8420c1212bb0a8360e082c5da09367e23b4b891de', 38, 1, 'passport_token', '[]', 0, '2022-11-08 17:41:58', '2022-11-08 17:41:58', '2023-11-08 17:41:58'),
('577c10500514f7bb99fc0ed3a4343f026b1d02e703386219226386ea53511f59208b5b541396848f', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:58:00', '2022-11-05 00:58:00', '2023-11-05 00:58:00'),
('5baee9efac1b13efb85226d4a3beffd2931483482a7584fd1b133ac8c032280b41723a630f1dd6e9', 31, 1, 'passport_token', '[]', 0, '2022-11-17 16:44:47', '2022-11-17 16:44:47', '2023-11-17 16:44:47'),
('5e1ebc17bcc0c9302c6b6b09331472d4f6c3375a6f23dbfd05ba33e1ade42fde82961e0a04214695', 31, 1, 'passport_token', '[]', 0, '2022-11-04 23:42:58', '2022-11-04 23:42:58', '2023-11-04 23:42:58'),
('5e4654d1657fcd9507bd88e7f83f59f30ebd31bd1b36aacfe86f938b6c5135c3ec91609f9ea2f7c8', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:27:37', '2022-11-05 00:27:37', '2023-11-05 00:27:37'),
('609dda37bc77a93370d642862f8f5622d6601620fc6718401dbaf6384a278d3dc7ccbba6e77ea609', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:30:35', '2022-11-05 00:30:35', '2023-11-05 00:30:35'),
('60dda6d47b0ecbc10bab6be1e4a7c12239ac93011cf2b9d068475ce39dbb79c1b912f3c5362db844', 31, 1, 'passport_token', '[]', 0, '2022-11-05 01:01:07', '2022-11-05 01:01:07', '2023-11-05 01:01:07'),
('6a039805a32cab98d5bd0189e7d31120e1fb4b943f75893b5fd16ee9f1750abc868f5529c781baba', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:38:10', '2022-11-05 00:38:10', '2023-11-05 00:38:10'),
('6a4b331f4819582243b0a4c75d8cf63343d2b252a8bcec691f685f819270be540acd77dfa69a99be', 31, 1, 'passport_token', '[]', 0, '2022-11-10 23:17:37', '2022-11-10 23:17:37', '2023-11-10 23:17:37'),
('6c023df298e640ee2e4e43cad7aacce2b5874a6334d687ac48ab81f11de67ca75aa789cc810d8f41', 31, 1, 'passport_token', '[]', 0, '2022-11-11 17:50:49', '2022-11-11 17:50:49', '2023-11-11 17:50:49'),
('6d8e8616f109b87d80aead4032794549889bcc45cdd4af4981de786a2c79286961a3e351d8714f87', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:55:15', '2022-11-05 00:55:15', '2023-11-05 00:55:15'),
('6ec39448582d3845e45e7329b830038f2f4c050a4e382a80162c93701186add03f1aecd36c2e0966', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:34:07', '2022-11-05 00:34:07', '2023-11-05 00:34:07'),
('6ffbe378ebc3dce3afc14e103795b4835e03201c0fe10c438b5322721538a6a8bd6fa61d2dd2b302', 38, 1, 'passport_token', '[]', 0, '2022-11-08 17:08:44', '2022-11-08 17:08:44', '2023-11-08 17:08:44'),
('720c70929d323533fb5a6a31680bd4bb0803296f72503b4dd20230f2fb356bdb3ee7983f73cca250', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:58:35', '2022-11-05 00:58:35', '2023-11-05 00:58:35'),
('730c9251e155b67373771e64ff5f053b28bab4524da48bc7e662818c434497716bf23c12e6e051bb', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:54:37', '2022-11-05 00:54:37', '2023-11-05 00:54:37'),
('73202c5cdece78b6e4409a69f93cc79c8420f95605313a1ae99c5fb04c4e4178e86545702713bac8', 31, 1, 'passport_token', '[]', 0, '2022-11-09 23:06:53', '2022-11-09 23:06:53', '2023-11-09 23:06:53'),
('74c074557106ec1ab8bde429ab3a139ec21901bd2b3cf36d3a62ae152285db0cb596e8bf226e9973', 31, 1, 'passport_token', '[]', 0, '2022-11-17 17:02:38', '2022-11-17 17:02:38', '2023-11-17 17:02:38'),
('768d0500908a72d72f5d3e6a88cb957e23843794d727a6de99539f8d4e9abb85f4b2f9a3e9f45ef9', 31, 1, 'passport_token', '[]', 0, '2022-11-09 23:24:47', '2022-11-09 23:24:47', '2023-11-09 23:24:47'),
('7be5170bc9535208ee9b024e65fedc4421113d0a9f42d7d795cffa7bf9d54b61cb70af03fbb7738f', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:27:53', '2022-11-05 00:27:53', '2023-11-05 00:27:53'),
('7c49486bfec2c8db5e3493ff479c59625e6876e2ba65d26c2ddac94afd66310f4fa3068ecf379cf9', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:31:16', '2022-11-05 00:31:16', '2023-11-05 00:31:16'),
('803271f4e7fc28b7f90c7c84e59955e2b5f8c72aa444b7ad7806d5e84cd0643c0dd1e37211ee7330', 31, 1, 'passport_token', '[]', 0, '2022-11-10 23:16:30', '2022-11-10 23:16:30', '2023-11-10 23:16:30'),
('8122b8bd1f9998d1a86b993a54eea701cb326fdc4deb2cd42d9aa65e762ae5d2c2fe60dcdec74154', 31, 1, 'passport_token', '[]', 0, '2022-11-07 13:30:02', '2022-11-07 13:30:02', '2023-11-07 13:30:02'),
('81eed25321b79777d1621ea838075b80a506904add0f717324b677495d712a958e5a879076952685', 31, 1, 'passport_token', '[]', 0, '2022-11-04 20:25:41', '2022-11-04 20:25:41', '2023-11-04 20:25:41'),
('83c8fa887b3e03726ba95ea7be57825a32b638f72f46cb35458339c6910335e301f3c4dd620f4c57', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:36:49', '2022-11-05 00:36:49', '2023-11-05 00:36:49'),
('84d56eaad0b30029fc05365a10e62f5b85bd0e32efafd8af314fbc91be9921694db53949995172c7', 31, 1, 'passport_token', '[]', 0, '2022-11-05 01:01:19', '2022-11-05 01:01:19', '2023-11-05 01:01:19'),
('8aa96c65660e0a7df4b18f5bb26ddedba6477f8157104c36a79fc605598677b113210bc8d4131e6f', 31, 1, 'passport_token', '[]', 0, '2022-11-03 02:27:01', '2022-11-03 02:27:01', '2023-11-03 02:27:01'),
('8b0f375b0c5e8b9b58b1536d72416252952309a211f0f96656f47c7aed9ac9d4bc4a8da5f111145a', 31, 1, 'passport_token', '[]', 0, '2022-11-17 16:46:13', '2022-11-17 16:46:13', '2023-11-17 16:46:13'),
('8b1add0fcab2c42de3361e3319359867f4c414868b38beca94ed48fffcc05570aed3d407e2de3bc2', 31, 1, 'passport_token', '[]', 0, '2022-11-05 01:00:24', '2022-11-05 01:00:24', '2023-11-05 01:00:24'),
('8ba41a912ef2bd085b54e6dea6d173e9487c324b380fdc65a0e5cb36f92974d484dfbd839516a5fd', 31, 1, 'passport_token', '[]', 0, '2022-11-17 16:51:28', '2022-11-17 16:51:28', '2023-11-17 16:51:28'),
('8de196e2424ae1c55f3ac1c7628a376286bdeeaf02289d8e9fb243590123533cb1db0cf61164960a', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:33:35', '2022-11-05 00:33:35', '2023-11-05 00:33:35'),
('8fcaefcbb5aaab8c535226b4545e1d887656e64fbf75443bf2974c3a5d7c7ceabe1157ade3fea558', 31, 1, 'passport_token', '[]', 0, '2022-11-07 13:31:47', '2022-11-07 13:31:47', '2023-11-07 13:31:47'),
('900562ddc71f2067660530ace27a4356508f5d6ea6eb56b5f326833114e04dbddb71c73d8e61b6d6', 31, 1, 'passport_token', '[]', 0, '2022-11-09 22:55:44', '2022-11-09 22:55:44', '2023-11-09 22:55:44'),
('90c42caeb529907fc2449c0eb1411541e883e6f0975ce589c7d63fb2174ece4626b51feec88abe02', 31, 1, 'passport_token', '[]', 0, '2022-11-05 01:13:05', '2022-11-05 01:13:05', '2023-11-05 01:13:05'),
('9179247b15969789d1e2b5b3873eed02a2d4d06814737f3d91086794a1a49d503d2f15148fe175ab', 31, 1, 'passport_token', '[]', 0, '2022-11-05 01:12:08', '2022-11-05 01:12:08', '2023-11-05 01:12:08'),
('9336dc69bc09066d70ba4787fe991462b343af7d13f91b69654810d11546967dfd16ff302e5665a4', 31, 1, 'passport_token', '[]', 0, '2022-11-16 19:09:22', '2022-11-16 19:09:22', '2023-11-16 19:09:22'),
('995cd406aaa746172d2d1b8d444b2c57015c8baa60e0cce42b4acb1c0325fe270fd08a78581ffa42', 31, 1, 'passport_token', '[]', 0, '2022-11-03 02:27:46', '2022-11-03 02:27:46', '2023-11-03 02:27:46'),
('9a3e0114e8316d7528d1585d2c445fde49ee4a35f761693c81d85fb0c087c6a7e6fd8086f450e737', 31, 1, 'passport_token', '[]', 0, '2022-11-07 13:28:09', '2022-11-07 13:28:09', '2023-11-07 13:28:09'),
('9bb4239f15d7c29d912d4870553aec37f64a86c3dd168d4ccb136b7e7bca516826fcf7cb24fc00fa', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:29:37', '2022-11-05 00:29:37', '2023-11-05 00:29:37'),
('9c5af1024c9905585bec453f994157e19fc326d5802700443c71521065318e6fd47eaff86db7cd70', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:26:23', '2022-11-05 00:26:23', '2023-11-05 00:26:23'),
('9e2ded7341c79a5b663120847911924db7bf8c0cf46c687365d5d5fb5af6d4fb94941d78b15e83e3', 31, 1, 'passport_token', '[]', 0, '2022-11-17 16:57:19', '2022-11-17 16:57:19', '2023-11-17 16:57:19'),
('9f72d4144ce7251f232fdacc2cf9de4e5508c99e4596bda6d871aaf946757bf91282e1307760b38b', 38, 1, 'passport_token', '[]', 0, '2022-11-08 17:41:37', '2022-11-08 17:41:37', '2023-11-08 17:41:37'),
('9f756d16ed33e8e72b8f82ad0ef1af44be7e5f12ad3fd6e9624f299e60f45135a542508e43a4965c', 28, 1, 'passport_token', '[]', 0, '2022-10-26 01:05:23', '2022-10-26 01:05:23', '2023-10-26 01:05:23'),
('a975acc0a634e526e1b99a5b26f8cded8780dc66ca7e7c6060d1cea723a882d25746dc0dc12fbff1', 31, 1, 'passport_token', '[]', 0, '2022-11-16 23:00:46', '2022-11-16 23:00:46', '2023-11-16 23:00:46'),
('ab1ae7ad8970ccb77d631b2fa123f1c0b359af45e43b8215a0b61863a8aa544d92097852d3f18963', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:31:35', '2022-11-05 00:31:35', '2023-11-05 00:31:35'),
('aea8f4505205437500f545b1943248e2eef7ae5c992eb3c6c9877c5c377aa12284ff0a9574a0fde0', 31, 1, 'passport_token', '[]', 0, '2022-11-17 16:49:50', '2022-11-17 16:49:50', '2023-11-17 16:49:50'),
('b0c498748a399f822f8a9afc6ab07c8591b8ec8253a4fee79bb99a3d7f88654c8b0971b65163b36c', 31, 1, 'passport_token', '[]', 0, '2022-11-17 16:56:20', '2022-11-17 16:56:20', '2023-11-17 16:56:20'),
('b20a5fed3891fedd9136a80df297b440bddfecf033d95d056db1eec8bee94e76e27a8709bdc7644d', 38, 1, 'passport_token', '[]', 0, '2022-11-08 17:07:59', '2022-11-08 17:07:59', '2023-11-08 17:07:59'),
('b7fc491583ff76c4a49096259afacce20c60a5098d25e064448be8b5680b3e3d41456f960aa7f87d', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:53:34', '2022-11-05 00:53:34', '2023-11-05 00:53:34'),
('b80b57a539170b62c0f59c7198be27725a170a6b3fde4b26dc9ec3d384ca192c14120149d53e1e70', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:55:47', '2022-11-05 00:55:47', '2023-11-05 00:55:47'),
('bc9b06cbe29103e94d759e17c7ce7580d89f4bdede93e5820d2beaae1f808eacab676779bc738078', 42, 1, 'passport_token', '[]', 0, '2022-11-08 17:14:36', '2022-11-08 17:14:36', '2023-11-08 17:14:36'),
('bd70c8762654bc4b53d37b14f672525eccace93a136f3c9455997d678a3e429ac47f6373fc582075', 31, 1, 'passport_token', '[]', 0, '2022-11-03 02:25:28', '2022-11-03 02:25:28', '2023-11-03 02:25:28'),
('bdc4681b4ae4226b7ee25d732fe1d0ea44d4ac0528f47829dfbf31f435d22a51158d718b15670014', 31, 1, 'passport_token', '[]', 0, '2022-10-26 01:08:33', '2022-10-26 01:08:33', '2023-10-26 01:08:33'),
('c151102fc50b22318b80baf107989685ca16e198346e223be8de1c48f01f485ad1d71cf27bb932f9', 31, 1, 'passport_token', '[]', 0, '2022-11-16 22:15:05', '2022-11-16 22:15:05', '2023-11-16 22:15:05'),
('c3a14c703f85cf15f720eb87c9eb14e8dd5776906be4a63be8b9ca48bef65e6c578035b023279ed8', 31, 1, 'passport_token', '[]', 0, '2022-11-04 22:23:02', '2022-11-04 22:23:02', '2023-11-04 22:23:02'),
('c5cfd6e48037f2aaf61bc15f96414ebb6880784e79f99926ef563eb2c126af299565a200c9b6e0b9', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:32:11', '2022-11-05 00:32:11', '2023-11-05 00:32:11'),
('caf8dc7cd403790383da3f6ee07ede4926501191d63ac8214f7ee1f7123da8eaf99a005659294a2f', 31, 1, 'passport_token', '[]', 0, '2022-11-09 23:51:35', '2022-11-09 23:51:35', '2023-11-09 23:51:35'),
('cb3fd760b3f572af5644a5cb5157dfca84076305dccaf29e570b317503c576f9386028affa579485', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:31:03', '2022-11-05 00:31:03', '2023-11-05 00:31:03'),
('cc26af6a1c2f4caae4491ad5050b80f26e6e34599c03faaeaed6633948fbb7f7f6f6c871350c0f91', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:56:44', '2022-11-05 00:56:44', '2023-11-05 00:56:44'),
('cc6a06c6ece836515213c0bbaea66fd6c82fde3f8ce26ca7ca67511471797910a79b72ec681b078c', 31, 1, 'passport_token', '[]', 0, '2022-11-17 16:50:36', '2022-11-17 16:50:36', '2023-11-17 16:50:36'),
('cd50551efb2c127644bc267a18f3e9e5bcce5c354cfe243d4fd20a41400d88998840bc0589a69415', 31, 1, 'passport_token', '[]', 0, '2022-11-08 15:33:59', '2022-11-08 15:33:59', '2023-11-08 15:33:59'),
('cf91390dccbf2090473696205b02dc6cff984c0b051635e91269ac06be420c690af5fed22a93a64c', 31, 1, 'passport_token', '[]', 0, '2022-11-04 23:24:56', '2022-11-04 23:24:56', '2023-11-04 23:24:56'),
('d016755909211373cf4500d16c29e556710e2d4f36755657f403462fd1b46ebfbbf3aea2cab5c3a5', 31, 1, 'passport_token', '[]', 0, '2022-11-17 16:56:52', '2022-11-17 16:56:52', '2023-11-17 16:56:52'),
('d3a499574277fb2cac0f5c8c33409aa4f3e8ec3364769545a2c9da06d31ade5f1c75cbf49631e13f', 31, 1, 'passport_token', '[]', 0, '2022-11-10 16:55:02', '2022-11-10 16:55:02', '2023-11-10 16:55:02'),
('d3e37bceffe57215013c7a8ca357ed40e91459b3d9f4bdd6b700c0fae9faf1bc94defb627266e5da', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:33:14', '2022-11-05 00:33:14', '2023-11-05 00:33:14'),
('d5948e50f31e75bbbdeaa345fc881118d4ef2c0205677806753514da7143ae46c8e51521eb044bbc', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:08:58', '2022-11-05 00:08:58', '2023-11-05 00:08:58'),
('d5e4d37bff5ffcffb4696efdf6ae1f719ecbf453666ccd7f41d7e444ac6d2b6a9d2f703d477b9206', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:57:34', '2022-11-05 00:57:34', '2023-11-05 00:57:34'),
('d8d39ff3b479922e1a33ba87a8d0471e19a2b6793a67072f5af2cede5b79aa5a23825f0753a6373d', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:32:49', '2022-11-05 00:32:49', '2023-11-05 00:32:49'),
('dc4e12fa75aecd98c2b2a0504fbec56321159083679a99c545982ee49027f8e28b0745741465e794', 31, 1, 'passport_token', '[]', 0, '2022-11-09 23:00:27', '2022-11-09 23:00:27', '2023-11-09 23:00:27'),
('dc8cab26c49d66bfa3caa4e281ad8098ce6307093b90d7670dde1573fe09e5c0fc195f46c9afa642', 31, 1, 'passport_token', '[]', 0, '2022-11-04 19:54:58', '2022-11-04 19:54:58', '2023-11-04 19:54:58'),
('dce576cb3883c5fdb03c726dde1b14fe90a421b3863bba7e7b3db227015e0f7949e1b29dc20f94e3', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:29:01', '2022-11-05 00:29:01', '2023-11-05 00:29:01'),
('de8a313fe93fe115123693c6ae18d74510c3344d41853d9513bf12bfe10be524db5e7baa88b2a9d4', 31, 1, 'passport_token', '[]', 0, '2022-11-07 13:29:23', '2022-11-07 13:29:23', '2023-11-07 13:29:23'),
('dec9f9b4b05c42ea5849a3cbb547ae3e7b995fc651bbadd74adcf48f05c798e01aeb9ed0d2948939', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:33:26', '2022-11-05 00:33:26', '2023-11-05 00:33:26'),
('e0e34a7aa7615f1f3555e9ac7e2d64a8c1820e733ca6292e8a112f6c874e6a03b283c1a867c9f2a5', 1, 1, 'passport_token', '[]', 0, '2022-09-06 18:19:11', '2022-09-06 18:19:11', '2023-09-06 18:19:11'),
('e1748fbca0849d064c4386d6336bcd3dba8b9927edc7c4c395d682e63938e8146d1d8994d3c788ab', 31, 1, 'passport_token', '[]', 0, '2022-11-03 02:29:28', '2022-11-03 02:29:28', '2023-11-03 02:29:28'),
('e3fc6ca73cbff881b5cf93d1cb8e6b87a9f1e2b981340e758c8e041448c7ac2af16cb79262b19f63', 31, 1, 'passport_token', '[]', 0, '2022-11-07 14:26:32', '2022-11-07 14:26:32', '2023-11-07 14:26:32'),
('e424132be8e9123fbcb820016be18c7a524f45c38a1b47e46b7771d15face731f0112ffe1a2fa053', 31, 1, 'passport_token', '[]', 0, '2022-11-09 22:56:32', '2022-11-09 22:56:32', '2023-11-09 22:56:32'),
('e96c1d4ae4c782528efbf6905b7196b96d2785357ea4a15d89a6d4b18e96416213fa69ad20f7146b', 31, 1, 'passport_token', '[]', 0, '2022-11-07 13:30:25', '2022-11-07 13:30:25', '2023-11-07 13:30:25'),
('eadcb57a6c58acc6ccc68f7817fa0f9831b26277e07b01fc106b169b97c1750dfdd14aacb58e3ffb', 31, 1, 'passport_token', '[]', 0, '2022-11-11 00:13:52', '2022-11-11 00:13:52', '2023-11-11 00:13:52'),
('eebb916e6e19b3e9c43e8ec0c2be9421533bc533130ba816dcc589adb1172565d9afdfcac573af69', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:59:36', '2022-11-05 00:59:36', '2023-11-05 00:59:36'),
('f3232b49971f59c06c13066e23d862b1f0a00bd4594f893b76047e168b0451c18dc2141c3130de37', 31, 1, 'passport_token', '[]', 0, '2022-11-11 17:48:16', '2022-11-11 17:48:16', '2023-11-11 17:48:16'),
('fe60949345c47f22c7bc086c03e08f0dd6f6dd3fe312e57ccfc0b4182809a1f703833abff96373aa', 31, 1, 'passport_token', '[]', 0, '2022-11-05 00:57:20', '2022-11-05 00:57:20', '2023-11-05 00:57:20');

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
(1, NULL, 'Laravel Personal Access Client', 'p4N7hA7mazSuxvbXhIXHnWO9q8snKLA06IGAfxVb', NULL, 'http://localhost', 1, 0, 0, '2022-09-06 17:40:26', '2022-09-06 17:40:26'),
(2, NULL, 'Laravel Password Grant Client', 'FmspxzjhXKbLoFpkuqGtNktBmHDzGW9nA6GySCdN', 'users', 'http://localhost', 0, 1, 0, '2022-09-06 17:40:26', '2022-09-06 17:40:26');

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
(1, 1, '2022-09-06 17:40:26', '2022-09-06 17:40:26');

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
  `Item_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Item_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Item_brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Item_rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Item_mode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Item_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rental_price_week` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rental_price_oneday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subcategory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insuretype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Item_condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `damageinfo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `damage_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchaseproof` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trending` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `Item_name`, `Item_price`, `Item_brand`, `Item_rating`, `username`, `Item_mode`, `Item_image`, `rental_price_week`, `rental_price_oneday`, `category`, `subcategory`, `size`, `color`, `insuretype`, `Item_condition`, `description`, `tags`, `damageinfo`, `damage_pic`, `purchaseproof`, `trending`, `created_at`, `updated_at`) VALUES
(21, 'dsfsdf', '45', 'sdfsdf', NULL, 'sufiyan11133', '/sdfsdf', 'uploads/313263100_1858280104549890_6702418916194515223_n (1).mp4', '22', '44', 'bags', 'Sub Category', 'Size', 'black', 'I have an insurance and don\'t know whether it covers rentals', NULL, 'sdfdsf', 'Dress,Beg,Watch', 'asdsad', NULL, NULL, 'yes', '2022-11-11 14:31:38', '2022-11-11 17:14:32'),
(22, 'Test666', '10000', 'Test', NULL, 'yousuf', 'Test', 'uploads/Folie5.PNG', '1', '1', 'Category', 'Sub Category', 'Size', 'Color', 'Insurance Type', NULL, NULL, 'Dress,Beg,Watch,dress,test', 'jjkljk', NULL, NULL, 'yes', '2022-11-11 17:30:03', '2022-11-11 17:32:33'),
(23, NULL, '400', NULL, NULL, 'zain', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-17 19:41:31', '2022-11-17 19:41:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postalcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insuretype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacypolicy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `termscondition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnic_front` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnic_back` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `County` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `State` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `lastname`, `username`, `city`, `postalcode`, `address`, `phone`, `insuretype`, `payement`, `privacypolicy`, `termscondition`, `remember_token`, `email_verified_at`, `profile`, `cnic_front`, `cnic_back`, `featured`, `County`, `State`, `created_at`, `updated_at`) VALUES
(31, 'sufiyan10', 'sufiyankhanzada12544@gmail.com', '$2y$10$QMnc286PeYMzhyQm3dTJIu6NLhdBbddd7qyvMOX/qUWQ/cgsRj4ui', 'ahmed', NULL, 'City', '451121', 'sdfdsf', '451121', 'My insurance covers rentals', NULL, NULL, NULL, NULL, NULL, 'uploads/', 'https://testlinks.code7labs.com/storage/app/public/uploads/cars/1711538640.jpeg', 'https://testlinks.code7labs.com/storage/app/public/uploads/cars/645456049.jpeg', 'yes', 'Country', 'State', '2022-10-26 01:08:26', '2022-11-17 17:06:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
