/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 10.4.24-MariaDB : Database - sofia-api
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sofia-api` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `sofia-api`;

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2019_08_19_000000_create_failed_jobs_table',1),(9,'2019_12_14_000001_create_personal_access_tokens_table',1),(10,'2022_09_06_182822_create_products_tabke',2),(11,'2022_09_06_201538_add_image_products_table',3),(12,'2022_09_07_223402_add_column_in_users_table',4),(13,'2022_09_08_184115_add_image_column_users_table',5);

/*Table structure for table `oauth_access_tokens` */

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_access_tokens` */

insert  into `oauth_access_tokens`(`id`,`user_id`,`client_id`,`name`,`scopes`,`revoked`,`created_at`,`updated_at`,`expires_at`) values ('e0e34a7aa7615f1f3555e9ac7e2d64a8c1820e733ca6292e8a112f6c874e6a03b283c1a867c9f2a5',1,1,'passport_token','[]',0,'2022-09-06 18:19:11','2022-09-06 18:19:11','2023-09-06 18:19:11');

/*Table structure for table `oauth_auth_codes` */

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_auth_codes` */

/*Table structure for table `oauth_clients` */

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_clients` */

insert  into `oauth_clients`(`id`,`user_id`,`name`,`secret`,`provider`,`redirect`,`personal_access_client`,`password_client`,`revoked`,`created_at`,`updated_at`) values (1,NULL,'Laravel Personal Access Client','p4N7hA7mazSuxvbXhIXHnWO9q8snKLA06IGAfxVb',NULL,'http://localhost',1,0,0,'2022-09-06 17:40:26','2022-09-06 17:40:26'),(2,NULL,'Laravel Password Grant Client','FmspxzjhXKbLoFpkuqGtNktBmHDzGW9nA6GySCdN','users','http://localhost',0,1,0,'2022-09-06 17:40:26','2022-09-06 17:40:26');

/*Table structure for table `oauth_personal_access_clients` */

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_personal_access_clients` */

insert  into `oauth_personal_access_clients`(`id`,`client_id`,`created_at`,`updated_at`) values (1,1,'2022-09-06 17:40:26','2022-09-06 17:40:26');

/*Table structure for table `oauth_refresh_tokens` */

DROP TABLE IF EXISTS `oauth_refresh_tokens`;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_refresh_tokens` */

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Item_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Item_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Item_brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Item_rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Item_mode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Item_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `products` */

insert  into `products`(`id`,`Item_name`,`Item_price`,`Item_brand`,`Item_rating`,`username`,`Item_mode`,`Item_image`,`created_at`,`updated_at`) values (5,'hello','545','hell','5','sufiyan','PerDay','https://testlinks.code7labs.com/Testing/storage/app/public/media_files/1408735754.jpeg','2022-09-06 20:46:31','2022-09-06 20:46:31');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `proofid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacypolicy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `termscondition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnic_front` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnic_back` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`password`,`lastname`,`username`,`city`,`postalcode`,`address`,`phone`,`insuretype`,`proofid`,`payement`,`privacypolicy`,`termscondition`,`remember_token`,`email_verified_at`,`image`,`cnic_front`,`cnic_back`,`created_at`,`updated_at`) values (14,'Sufiyan_kz','Sufiyankhanzada748221@gmail.com','$2y$10$b4efNr8iAxbRFktOYqwqJeiDuEZwfJxoXishpk5rLTVrLmqNAI/f.','khanzada','skz123@121','hyd','745244','Hyd','03151254484','etc','21554','paypal','accept','accept',NULL,NULL,'','','','2022-09-08 16:55:28','2022-09-08 16:55:28'),(16,'Sufiyan_kz','Sufiyankhanzada7482212@gmail.com','$2y$10$ILEDDoF2aH/XiPM8GfzcKuoHrJ732qDmshhgXvf.7/I2jfj2UL2U2','khanzada','skz123@121','hyd','745244','Hyd','03151254484','etc','21554','paypal','accept','accept',NULL,NULL,'','','','2022-09-08 17:12:01','2022-09-08 17:12:01'),(18,'Sufiyan_kz','Sufiyankhanzada74822152@gmail.com','$2y$10$vU8OcWDdR.MxwPQLr4zdceYGOL27VT7ZcanmFy2NRWSui/qoFJd9i','khanzada','skz123@121','hyd','745244','Hyd','03151254484','etc','21554','paypal','accept','accept',NULL,NULL,'','','','2022-09-08 17:12:50','2022-09-08 17:12:50'),(20,'Sufiyan_kz','Sufiyankhanzada4822152@gmail.com','$2y$10$b7XnrlQ/ox6O03grszNsS.Ru9dsbTZHeKgPeYCxXhOp7qKaICt7ie','khanzada','skz123@121','hyd','745244','Hyd',NULL,'etc','21554','paypal','accept','accept',NULL,NULL,'','','','2022-09-08 17:14:07','2022-09-08 17:14:07'),(22,'Sufiyan_kz','Sufiyankhanzada482152@gmail.com',NULL,'khanzada','skz123@121','hyd','745244','Hyd',NULL,'etc','21554','paypal','accept','accept',NULL,NULL,'','','','2022-09-08 17:38:54','2022-09-08 17:38:54'),(24,'Sufiyan_kz','Sufiyankhanzadaa482152@gmail.com','$2y$10$5hzghjNGYJQEKmoycRY5penJQQ1cfNallO5hZ3BAFMSZnIULGrQ0C','khanzada','skz123@121','hyd','745244','Hyd',NULL,'etc','21554','paypal','accept','accept',NULL,NULL,'','','','2022-09-08 17:39:59','2022-09-08 17:39:59'),(25,'Sufiyan_kz','Sufiyankhanzadaa482152@gmail.coma','$2y$10$4m8o5K44aQvh3qPqHzYJe.U8oCxrprS2Ag.OBEs12ZlmI42w9dlWW','khanzada','skz123@121','hyd','745244','Hyd',NULL,'etc','21554','paypal','accept','accept',NULL,NULL,'','','','2022-09-08 17:43:32','2022-09-08 17:43:32'),(27,'Sufiyan_kz','Sufiyankhanzadaaa482152@gmail.coma','$2y$10$bisUvk3TT3bDpphOLWXEUO4sagX0c97Tl8rqN0YK71pdxkcQp0bOm','khanzada','skz123@121','hyd','745244','Hyd',NULL,'etc','21554','paypal','accept','accept',NULL,NULL,'','','','2022-09-08 17:44:48','2022-09-08 17:44:48');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
