-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: nabeel
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_child` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `child_of` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favourites`
--

DROP TABLE IF EXISTS `favourites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favourites` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` tinyint NOT NULL,
  `product_id` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favourites`
--

LOCK TABLES `favourites` WRITE;
/*!40000 ALTER TABLE `favourites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favourites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_messages_id` bigint unsigned NOT NULL,
  `message` varchar(144) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `messages_user_messages_id_foreign` (`user_messages_id`),
  CONSTRAINT `messages_user_messages_id_foreign` FOREIGN KEY (`user_messages_id`) REFERENCES `user_messages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2019_08_19_000000_create_failed_jobs_table',1),(9,'2019_12_14_000001_create_personal_access_tokens_table',1),(10,'2022_09_06_182822_create_products_table',1),(11,'2022_11_16_124139_create_user_messages_table',1),(12,'2022_11_16_124226_create_messages_table',1),(13,'2022_11_19_185206_create_recommended_products_table',1),(14,'2022_11_22_064501_create_reviews_table',1),(15,'2022_11_22_085226_create_rented_products_table',1),(16,'2022_11_26_195348_create_favourites_table',1),(17,'2022_11_26_211951_create_categories_table',1),(18,'2022_11_26_214610_create_brands_table',1),(19,'2022_11_26_223023_add_coulmn_in_products_table',1),(20,'2022_11_27_173639_create_notifications_table',1),(21,'2022_12_04_071218_add_column_in_users_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,17,'Request for product has been approved',NULL,'2022-12-15 08:42:30','2022-12-15 08:42:30'),(2,2,'Request for product has been rejected',NULL,'2022-12-15 08:43:53','2022-12-15 08:43:53');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('a443774be36486af524d9d6244ecf7b07b2fe49243f47ca8b0ea455ae391be68f87866784dd6d8e4',1,1,'passport_token','[]',0,'2022-12-15 08:38:52','2022-12-15 08:38:52','2023-12-15 13:38:52');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','bThPLN6CS7dKqQxbdkr6ImOiwZ90LSLvoIYTXxgF',NULL,'http://localhost',1,0,0,'2022-12-15 08:38:11','2022-12-15 08:38:11'),(2,NULL,'Laravel Password Grant Client','xxAiMQB0iXAukjB8iWf1wbmEHZhUx3ZiOLHrm0f3','users','http://localhost',0,1,0,'2022-12-15 08:38:11','2022-12-15 08:38:11');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2022-12-15 08:38:11','2022-12-15 08:38:11');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `Item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Item_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Item_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Item_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` tinyint NOT NULL,
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
  `min_rent_day` int NOT NULL,
  `max_rent_day` int NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Adeline Mertz','133','1','17','tKvl8FLSQz','oaLnoYnIrF',1,'2','4','15','1','mkEX6','YD2CEaWrSX','lnmpYXAkxr','Dolore molestias sed incidunt ut.','tags','bGO2Dtk5Qi','Lr7ZWZsaNT','M3LfpcVtSV','no','2022-12-15 08:38:03','2022-12-15 08:42:30','amxsh8Td5Z',5,10,'approved'),(2,'Laverne Will','532','1','2','CuodRrN7xT','6yZQv67VD5',1,'1','2','3','1','8lbeg','U85bp4hY9v','oE3gAT4tpX','Molestias reiciendis repellat harum itaque hic.','any','irVNI15Cjo','pnFKcpESjI','aTgc7raQs6','no','2022-12-15 08:38:03','2022-12-15 08:43:53','0zgf7sd5bp',1,14,'rejected'),(3,'Enrique Corwin','917','1','16','09hgaPNBXQ','M1abO6Hl6B',1,'2','4','20','1','D3WZn','WwzD8vv15V','MTjD3yw37e','Eaque fuga voluptatem nihil ipsam ipsum optio.','any','0YA6FF0oUb','E2WBCA2ju4','lnxige8ycG','no','2022-12-15 08:38:03','2022-12-15 08:38:03','Cm6jrSUmvv',6,16,'pending'),(4,'Aliya Considine','545','1','11','EtiS6tmc3Z','O4rJ4n7rin',1,'2','5','2','1','OyEIc','fM6iqHFkx4','jU5fxipA6e','Hic autem nihil cumque assumenda voluptatibus in.','text','1uqCgLcrwG','82vOqJ0CpE','FIEmlJlhrp','yes','2022-12-15 08:38:03','2022-12-15 08:38:03','aDk9a5wv5u',2,11,'pending'),(5,'Salma Wolff','4','1','14','6js2juncaM','EM8n3BNc9P',1,'1','3','12','1','unWUE','t4dxiwHOf3','McEWm3iL79','Autem culpa quidem voluptatibus in nisi sed voluptas ut.','tags','QyvPdMaqbW','3Pb64S6M6p','vw6aRZ8Mu9','yes','2022-12-15 08:38:03','2022-12-15 08:38:03','ILzPzNSJfP',5,22,'pending'),(6,'Mr. Arely Schimmel II','177','1','11','N4saPvYJO9','WEXaJ31owj',1,'2','3','4','1','qe4E9','lEqdYP7M9O','v54BurfARJ','Delectus exercitationem ducimus ratione harum similique sint modi.','any','kiZnAZ6i5m','geBsKIIzk1','ykFzThjGcD','no','2022-12-15 08:38:03','2022-12-15 08:38:03','02Bm1zBkV1',5,23,'pending'),(7,'Fermin Jenkins II','98','1','10','Np0P360ayU','w12o6PzmEt',1,'2','1','19','1','S7m96','gc4Qmn9YBu','mcDVHNCdZY','Optio blanditiis adipisci cumque id est suscipit.','tags','XgLdJRZ5uf','uswkeb75oY','8m7gq1PvaZ','yes','2022-12-15 08:38:03','2022-12-15 08:38:03','qwkxzRdgo4',3,24,'pending'),(8,'Cruz Hilpert','83','1','8','gKbQOi8Kdu','ctzZnrSw90',1,'2','3','5','1','66Vdk','3ltn5CXgv9','yLAa4iC7dn','Ut corporis velit et est accusantium sit.','tags','u9qhrBAUpD','tWHx05QFsp','yrJyNjXhcB','yes','2022-12-15 08:38:03','2022-12-15 08:38:03','OEXtsEXxLJ',2,9,'pending'),(9,'Turner Kovacek','474','1','7','0PYExuj896','K3rJzie43D',1,'3','5','18','1','jfSTY','yloDKp4RnJ','6rYoK8dutc','Est ut quasi et officiis illum voluptates.','tags','Npg644mLbS','gttgLcahyk','qzny7KbRMC','no','2022-12-15 08:38:03','2022-12-15 08:38:03','PSSP2DVdDi',2,18,'pending'),(10,'Valerie Conn','858','1','1','3wReEACFex','T5tfekO0Py',1,'2','1','18','1','OBusm','ArARhvyhTK','yrN3JYvigJ','Non quisquam reiciendis sunt quia officia tenetur similique.','tags','NNYaReYNYY','dTAqBWnWAX','nIlhBWu2lU','yes','2022-12-15 08:38:03','2022-12-15 08:38:03','vtCp4IXgtG',1,11,'pending'),(11,'Prof. Loraine Ullrich','917','1','2','rjeRYJTus4','dpGbfI6EGe',1,'3','1','1','1','r8G7y','jhScqAILae','GExAXlzRDJ','Similique sit corrupti dicta iusto facilis repellendus.','check','41jwp41vpI','Av8M6j90H6','BA8of7awLW','no','2022-12-15 08:38:03','2022-12-15 08:38:03','HHgWig422T',3,29,'pending'),(12,'Afton Wolf IV','737','1','1','U6HzDjRLq1','4NQcSCZox0',1,'3','1','18','1','i1nlO','tNphRcBS0V','lsYcYn4xZj','Voluptas enim dolorem blanditiis necessitatibus ut.','any','BzwF1VTBr0','KKTz10hvi8','CIAZTwzc7o','no','2022-12-15 08:38:03','2022-12-15 08:38:03','RDPaVFHmn0',1,27,'pending'),(13,'Elvera Fisher','587','1','8','wQOXfmHvba','KQOejfr4QB',1,'2','4','17','1','2r1Ov','niXAHXSIEh','gz1ACeT8gs','Iure ea magnam et.','text','TJSA3dilkp','0V4HgrLpHn','fnmSGwTWEa','yes','2022-12-15 08:38:03','2022-12-15 08:38:03','H9vnV4QbqL',6,10,'pending'),(14,'Dr. Alfredo Fisher IV','977','1','18','DXQVqVZdJf','cfPBZjVIxh',1,'3','4','17','1','6pQvs','obwXNbkU8W','Xr22qNKN6q','Voluptas architecto cumque omnis nemo ut minima.','text','XZHFdsPO4i','nipD4n0bT1','nWnIaUPHJm','yes','2022-12-15 08:38:03','2022-12-15 08:38:03','H7lFcsgvhJ',7,14,'pending'),(15,'Annabell Ondricka','910','1','13','GjOwc87otj','2jNriXdxrM',1,'2','2','18','1','REl95','lysNewGAKQ','0slrdQQnkP','Corrupti cum eligendi magni consequatur hic pariatur suscipit molestiae.','any','DG8C66spM3','tPgtxQBo5f','nvn6pYv3KB','no','2022-12-15 08:38:03','2022-12-15 08:38:03','nKo2srxW3K',6,17,'pending'),(16,'Mr. Jamey Weissnat','664','1','5','uJ1R0nIUVU','d1Ep4saPux',1,'1','1','1','1','Y87iI','mbwxnIMVQl','IG6TyhouTK','Et tempore praesentium voluptatem ipsam odit sint.','any','Nhj8hJyWU3','5BqV08LOza','dk88qPdhPm','yes','2022-12-15 08:38:03','2022-12-15 08:38:03','2GaYHQ0B4A',5,9,'pending'),(17,'Odessa Blick','294','1','19','y9fegQuuU8','ODvWAcVnb2',1,'3','2','18','1','Xv4gm','A1QujMr8xR','k6DOMKGc90','Harum labore magnam consequatur ut aliquid labore.','any','yq1d59rQgb','H2IUWMgnEk','1PISHOCdME','no','2022-12-15 08:38:03','2022-12-15 08:38:03','KmDtr86a7d',3,14,'pending'),(18,'Kenny Kessler','801','1','14','tuYX0j5vqm','iJJuLMMmC8',1,'3','5','14','1','snogM','fWjIsyLwjW','fp2z7pMdIf','Libero sapiente laboriosam deserunt laudantium aut odit.','text','x86b8BPa7k','lt3lCHulB0','W03cEyA6D0','yes','2022-12-15 08:38:03','2022-12-15 08:38:03','0GEoHHsKiW',4,14,'pending'),(19,'Dr. Jaqueline Ebert','352','1','2','X5CeiSiVnS','BfzBGdMHri',1,'3','4','4','1','9PlTt','eMzdIOBxjS','wNoLEZE847','Et rerum autem omnis provident et labore aspernatur.','any','VCyDzisQ1t','58RJfZyt8W','emBUJVb3rF','yes','2022-12-15 08:38:03','2022-12-15 08:38:03','cjfqf6bfy3',3,15,'pending'),(20,'Mekhi Mann','200','1','19','kUUaVwmaJU','orjnn4Wz6c',1,'2','2','11','1','FrHAG','qmNjRH8O6k','qHFGaHJJ6G','Voluptates autem ut quo optio eum sequi nobis.','text','5KqlvQLGQY','aCULcTASoo','VVFdmOCkmP','no','2022-12-15 08:38:03','2022-12-15 08:38:03','dWfJc3Jhut',4,26,'pending');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommended_products`
--

DROP TABLE IF EXISTS `recommended_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recommended_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `search_query` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommended_products`
--

LOCK TABLES `recommended_products` WRITE;
/*!40000 ALTER TABLE `recommended_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `recommended_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rented_products`
--

DROP TABLE IF EXISTS `rented_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rented_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `buyer_id` tinyint NOT NULL,
  `seller_id` tinyint NOT NULL,
  `product_id` tinyint NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipment_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL,
  `product_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rented_products`
--

LOCK TABLES `rented_products` WRITE;
/*!40000 ALTER TABLE `rented_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `rented_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` tinyint NOT NULL,
  `product_id` tinyint NOT NULL,
  `rating` tinyint NOT NULL,
  `reviews` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `review_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_messages`
--

DROP TABLE IF EXISTS `user_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` bigint NOT NULL,
  `receiver_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_messages`
--

LOCK TABLES `user_messages` WRITE;
/*!40000 ALTER TABLE `user_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postalcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnic_front` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnic_back` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `insuretype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpassword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proofid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirmpass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacypolicy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `termscondition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Bell Torphy','ludie.daugherty@example.net','2022-12-15 08:38:03','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','W4xppArKSJ','pqScnSCx8S','72WyELBa7G','O0fCSNXEqz','iV20TCaZ7Y','I7Jgw5VyxJ','y1FKKcUsRO','hRidDIEI9Z','v6BxmRX6ie','fd19KFSCiI','sspdHShw2d','zgwMHOEEFm','BXbdQRt87P','1ZaMsfmZ4l','zmeOPXGa2n','0J3NTzQia6','QC9uFFDWCS','wWKftg9vrL','GrI12M1BkO','mpm4BnV3qa','2022-12-15 08:38:03','2022-12-15 08:38:03',NULL),(2,'Prof. Bernadine O\'Connell','darrell.volkman@example.org','2022-12-15 08:38:03','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','DVZffoSVY5','LaHKPIef7x','b2UI5GBRnM','xoivpuSQxs','mp0ee8f2SX','44OaiLXCMr','9PaDg7Xo0k','Z8ehJh2lTG','3EAUsFHEZl','gA4gYsKV3H','ZA9WiaqaLX','nLDzZ6Jtzh','zzN5VU6coa','JeOvjlyFcm','8OHl7lz5Uo','vZCYOA8rdG','CSd9sy3M0g','umspOwpzcq','IG39Kp0PcN','A1BTwUgqHJ','2022-12-15 08:38:03','2022-12-15 08:38:03',NULL),(3,'Dr. Colten Glover','dicki.cristal@example.net','2022-12-15 08:38:03','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','kuYAIwXFVB','S4Pwaxhxxn','vh56m0D0Ea','JHJR1eZcuM','FpVpSYdScy','pgS9mTkDRl','WlQoCPLGSr','Xg8AW4hrna','ADfGjBszAJ','cCtpuMoVgT','SQODeXjKDI','ffrwVkOmU9','ckM4q6PoST','8Z1EE1GApy','xuTiCsGLVS','aq5jNPfNbX','KztbVDwfgL','MHikyK7h67','18cAPpxqlz','kkdGGz2j8d','2022-12-15 08:38:03','2022-12-15 08:38:03',NULL),(4,'Dr. Presley Adams','estella90@example.com','2022-12-15 08:38:03','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2ThnXUIiSi','Ln9jzxDguy','bsxH7e23wh','QdSeRPkTkA','LLAh71bdnq','26I4MXNhjy','C9tLEtVokL','l2mIWC2sm0','ftQmOGCurh','Ca3XvUPJTb','O5LhvBPuVZ','0gBwEYoVdH','YrgJ2DdZJL','uZMdeCusTO','J6tBRISxnC','cAVaCtX5AS','kpxaTAEkoy','c3yVuURmPN','htQVKswBR1','1mOy6VFcMA','2022-12-15 08:38:03','2022-12-15 08:38:03',NULL),(5,'Conrad Pollich DDS','velda62@example.org','2022-12-15 08:38:03','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','W6s8U78erI','EACfAklB63','gIGAg86QPh','kHiqxvGMEA','Dt7t4i0ity','U2wOeBs02Q','zZLLBk8JB9','7RE3LjA1mH','bkMN1kGI4h','AtRua0uZLb','1lwxWJ3y6y','1RpwQEDJhK','ImTRDG3E34','FeQZi9GW3T','J35loNg0vZ','Mj6LjLkFlv','BxUhRnGVMi','TRabHFLdPu','2TB3ZDmjRX','pTY2Sx8Bte','2022-12-15 08:38:03','2022-12-15 08:38:03',NULL),(6,'Mr. Sammy Wiza DVM','catharine65@example.com','2022-12-15 08:38:03','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','ovFwKUeLof','aLqJIqoIhP','1x8yuox2nN','CHdwWy2xGb','Fff2euw3zt','4btCXXfXkT','KSmI6vhjnK','2ZCNEWCFO7','FcILTptN6t','uDzBSbp8i0','OSVhLiwd1y','uSTcpj1DFH','CjK8dOC652','6gPMkRW8cA','mLXDD1YWqZ','gLECpg3rvP','l1REt4vkMI','LKnk7DNQzK','0OPwt0hOCD','7yCu282BLJ','2022-12-15 08:38:03','2022-12-15 08:38:03',NULL),(7,'Johathan Kautzer','abshire.destany@example.net','2022-12-15 08:38:03','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2EufeFw41L','QJdGAQy6pr','YT5hCxBs3c','GYnyVRshhp','Gi3QB7TVER','rEbbZoNLti','ZVOrsU0EWu','4owfwl7shg','453pjvac5o','MbSBsKfB1h','3hRFmINgF4','VKfuYpghA1','hnYThbI9mR','YQmuOAwUg6','a66gJIKj47','ccs3zmkygY','MvcdAdoIAi','vjUznG1OFw','EaLTqWrbLW','8Ky9DGtztq','2022-12-15 08:38:03','2022-12-15 08:38:03',NULL),(8,'Dr. Merlin Connelly','hharber@example.net','2022-12-15 08:38:03','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','rT7n6GLtAJ','Qi9OFTmupg','DjV761WdCr','sdZ5yyPNRG','TOqGNIgR50','1q8Kriqbt3','7Ts46QjZOB','CUYHFWmsru','L5bkZyZ25j','L8zsCCQCS3','CXZCy4kt9V','os3DF9deXE','4pI2CC3L2M','2ZIobrhcFl','9iXPkx22Rk','Y0YDaVq14q','HdDZZznZHi','XQf1LIKcpA','mdi5cnp7oC','cEsrAGoQyb','2022-12-15 08:38:03','2022-12-15 08:38:03',NULL),(9,'Waldo Kovacek','fhuels@example.com','2022-12-15 08:38:03','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','i6DUxgnLX9','bYLgu6S9Ln','BUHhFQ9j76','jSgxym9JjH','ygOPzRiyQz','qXT5eJ3Xup','R53iP5cWNf','K3nUhIes1A','vPWhkLdiNZ','CZlbfAHgg4','4ygy4xGS1X','aFnGjRm9pA','Lnd4QLINij','NX6BQpaNXg','R8roJUWS6O','bJvTiNC1lX','F0066Qq02Q','BCChaNshJt','mFPTVr2quE','DhUAdNVvqL','2022-12-15 08:38:03','2022-12-15 08:38:03',NULL),(10,'Elenora Bernier MD','rod.padberg@example.com','2022-12-15 08:38:03','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','PhgpgZDasb','NVn5PmSODH','WklHgfTJu7','T6WWhrAz8Q','dSJpakLFnv','zq0Y0AUElq','jukvW2oYY0','cfqnFqWGCb','moEPg3QMBQ','YFbt42IBRX','eUNbz9c5k5','aaFlXiWW12','wJfP93nybJ','WUu1D5xSDo','shwfJLb2Ga','CeNOYuKWLi','neCRACz36f','c1bB4UMfNU','QYGZZevvnc','INPbsgQBMb','2022-12-15 08:38:03','2022-12-15 08:38:03',NULL),(11,'Mercedes Simonis','jake.upton@example.com','2022-12-15 08:38:03','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','wAwfwgQ3sm','UNhCqXvdTn','TRxS7ykdTr','T0LwkLOsAc','h8yRY3okmf','hDoyTT90If','IeIrlFTluF','nGr4v5A8UN','kKYBtI75gS','X4tU8gGLta','kGwc9H2clA','jxMthLwBmO','Rf3ER5ryQK','QvMwKLrz6q','xhjdlKGKmN','W5dgiOlcn2','EzOIs1rvYi','oGb51eT3Sq','io93mPthg6','TLvfAib7a6','2022-12-15 08:38:03','2022-12-15 08:38:03',NULL),(12,'Lynn Mueller','kemmer.graciela@example.org','2022-12-15 08:38:03','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2JvVtwEZ3s','mSD7Qk4w4N','IWGxXuBeBG','MX8SbVT8iO','Fcke1G4D18','jFFSrpkHkV','INLPHtBvcH','BhvSZdurJu','mfRqvDzOTT','PKtZGGvvUn','edaKKBvoyV','L0fLaejamv','VAELqx9KsS','8J12PMa0G9','GQJBRFngnd','WYCeCUJ2wS','xAdlwiHMrk','quYnQfPGVI','aHTkcGNmtW','VQbwVaJXUb','2022-12-15 08:38:03','2022-12-15 08:38:03',NULL),(13,'Dr. Blaze Denesik Sr.','rosanna21@example.com','2022-12-15 08:38:03','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','3VzUBDwMvb','n950gkRZv0','EN8IUegb8n','0DFtZDQm9n','3qN8jqapPt','UrLsVHg737','RheIo6ciYk','NFnArJGK2Z','ld5PfIjpg2','cSUJolqFCU','ZqtNhMcT0p','dIY8QRP0cs','EsGFsapzbU','Ucoqn8Sk0j','2dAhk1PuGR','1KvcIeCO7P','oCU4UzyUR7','OTnAdWflAw','RGiPxZh6W0','nRiNwfwrdT','2022-12-15 08:38:03','2022-12-15 08:38:03',NULL),(14,'Miss Alaina Stokes PhD','kristy.haag@example.org','2022-12-15 08:38:03','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','XYTJ201m54','N9TMtgKlmy','6sYNiWckpy','v3rmOfoUZ1','bYKvoHw32t','vAdwNANyxe','extGyQRYlb','z96yio19KB','RFJRH5hyxl','mbBTwLJfbk','CjkXZU2sbr','XhUQyIpnag','mz2Nucg5x6','G4URJWGGC6','S44Ct0XXJf','zjHxkoTchO','GRAvILID7B','5fXGPygcfq','RPX5t6EF7j','hwWOz9KWq8','2022-12-15 08:38:03','2022-12-15 08:38:03',NULL),(15,'Mr. Everardo Wyman MD','oritchie@example.org','2022-12-15 08:38:03','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','qDoLPRX294','mvzvrtwCTV','QV5IrMuiZM','ZNMrndV7HI','KzqbBY6w2t','3zsm4DSxoo','llVxXRBine','a9QTP4vXl4','L6Wm82nEJd','NQ1s7N9JxQ','DsvOzjG6oe','UFr49cn3M8','XStnGmSIp6','3G302n80HU','v4eycS25zd','3sHzrDBUj3','2bthmxPfb2','fQJu3CDZyu','EDe58X6zxJ','AlwoNpQDow','2022-12-15 08:38:03','2022-12-15 08:38:03',NULL),(16,'Mr. Mackenzie Osinski I','braxton54@example.org','2022-12-15 08:38:03','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','YpENS0jnGb','QGadtTo0sa','x0QuUVXv8W','2wADTD1cbe','8Y98ufuSAt','mth85JtWB2','INOSmAq7LD','cMHSitdRbR','xVkAynVQz6','Uw6YOZETgH','mCRjoKqtL1','bhLLPZtIwp','M5yJzT3z7A','tpLSSM4CMN','xahosnuapR','Xd11FDVHag','wt5eG2fTdj','NfDjflbUOb','Xl3FI99uh6','6CE5qM0Y1n','2022-12-15 08:38:03','2022-12-15 08:38:03',NULL),(17,'Rodrick Rogahn','mohr.shaun@example.org','2022-12-15 08:38:03','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','gnrHLHsjfK','F0Hb3mMxL5','RJEEoUgmwD','dpXCVUe7QG','uMhNTXiIy9','10HqQnrdQa','jGy4PcgCeg','eqKxh5oKjv','nXE7Zwvw0Z','gbqo4PvkCx','EjSFTPr1Zg','RNoP7y9mVw','CAtqYYBqOM','nY7fUIVn2o','VlNz1foa4o','Q2RpU1oxO0','6iCnrTwSgm','8e9r6Ts5W6','l2Iq8I6aQM','xBTGW465hj','2022-12-15 08:38:03','2022-12-15 08:38:03',NULL),(18,'Brenden Dickens PhD','green.bashirian@example.net','2022-12-15 08:38:03','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','I2ZZ7GkQHj','vwDlejlGjp','locWGMQHFZ','j95c6aCrU9','Ni5YlIyQra','mKSb7rrU8o','YvLTkvy3ov','RQFon26fnK','SRK46rzjy9','gVLtwv2iiv','IpQWQuIuC2','63lt7XRuHi','TuGro5BxL9','2xXEKd819N','K9EAxj45me','9b41ycZKV9','FQuvPROyGJ','0Qy5xMos8I','GAZhQaLdmZ','7h2rlAwGqI','2022-12-15 08:38:03','2022-12-15 08:38:03',NULL),(19,'Prof. Cody Carroll','konopelski.christa@example.com','2022-12-15 08:38:03','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','8O1OYmezUN','xHi1HNfFBf','wAzApSVHxT','IMVOB6onk7','g4tpdVz7GM','nNHb39eZa4','s8u2hNUCUM','tQl5EDKzi7','hzF6q7hGGy','VMGtj3u8AL','eb5p4ZJtW9','NNtHpQ3XoH','UnA2m3zo8N','9RlmiGRlH0','TJ0nfli07x','oAVT04m49w','FzPEmHMjF3','5wZMi1UHo1','OPWpZAPhzx','iBV9TEO6LO','2022-12-15 08:38:03','2022-12-15 08:38:03',NULL),(20,'Ms. Myrtice Hoppe','lstehr@example.net','2022-12-15 08:38:03','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','VRAgq5nwii','NyCsVkRWlz','Mq4Gg6v7j6','1vYhfrbmSQ','2ECnXeTOfX','zbHWiytWgP','OsTB0bzl5y','xm4P5fKs3l','NbkcrrOkDi','anlCzqvDc3','527JbmHqSU','OFFQfJtovV','yKZyI3uVCe','2SGckKHjwf','yrPENRcW11','TTMGFV5y4S','ffVreTJEpM','cLLKSxoS2W','7UyOguUf4H','Icfu8Zkev2','2022-12-15 08:38:03','2022-12-15 08:38:03',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-15 18:46:51
