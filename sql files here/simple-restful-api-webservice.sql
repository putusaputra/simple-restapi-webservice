/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.1.37-MariaDB : Database - simple-restful-api-webservice
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1);

/*Table structure for table `oauth_access_tokens` */

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_access_tokens` */

insert  into `oauth_access_tokens`(`id`,`user_id`,`client_id`,`name`,`scopes`,`revoked`,`created_at`,`updated_at`,`expires_at`) values ('1388306cc070ff6be282e6075dc33a1aa7e73b8e693dcdf9a56e392c2d5abc1582dd2e787c9695d4',2,1,'MyApp','[]',1,'2019-01-29 11:03:33','2019-01-29 11:03:33','2020-01-29 11:03:33'),('26086a3882a1472332d8689faadf7ea02bf3f3cc3d6ff4a712990785104dbba821a0490d2705387a',4,1,'MyApp','[]',1,'2019-01-29 13:12:47','2019-01-29 13:12:47','2020-01-29 13:12:47'),('30ad99d2aa78d96fcdde4614d2c6e5f745fe6373ae981c855a0f8882bae7163213e8a008ff330499',5,1,'MyApp','[]',1,'2019-01-29 21:55:55','2019-01-29 21:55:55','2020-01-29 21:55:55'),('5caa32ad57960ee3786b93cd5b73887ccf83dd05d1822a8fc5135d2163e8fde349168df0cf580ae6',2,1,'MyApp','[]',1,'2019-01-29 12:41:36','2019-01-29 12:41:36','2020-01-29 12:41:36'),('847c06f19153d8bd3723c3740809b08155fb22cf62f1f68cdc4349a15464b5a28254ddbf43568d88',6,1,'MyApp','[]',0,'2019-01-29 22:12:45','2019-01-29 22:12:45','2020-01-29 22:12:45'),('96b56ad55ec97f58d64d01da34c17c850ac795375799f504f126bdfe2000f18221e9c4d30391227a',2,1,'MyApp','[]',1,'2019-01-29 12:40:28','2019-01-29 12:40:28','2020-01-29 12:40:28'),('9730f46b63103f5ea97cfc277f8f14ea9bfb192740cb49681cbe1fb1e7c68c5b1e65f2ccfe7e073b',5,1,'MyApp','[]',1,'2019-01-29 22:00:45','2019-01-29 22:00:45','2020-01-29 22:00:45'),('9e41286a14e779d86c6c4fa036b127efa0a4f790a03632d3017c5f7692acb7b704435899395b41cb',5,1,'MyApp','[]',1,'2019-01-29 22:02:45','2019-01-29 22:02:45','2020-01-29 22:02:45'),('db14c3735c55a41463cdb7a95ed55ed48cd8de57d5427533a8b744339ce611c99c9829403961e046',3,1,'MyApp','[]',1,'2019-01-29 13:08:38','2019-01-29 13:08:38','2020-01-29 13:08:38'),('e842a4fca15c7851ba6f0677022df92bd118205275647290f8889d6af76a4aa088768c2867e22f63',5,1,'MyApp','[]',1,'2019-01-29 21:53:44','2019-01-29 21:53:44','2020-01-29 21:53:44'),('f6d53a3deb5016d3786a292dda8e97f72801bc6f01c932d3c893fdc5d9c96232c34dc1f5b2e3a66e',2,1,'MyApp','[]',1,'2019-01-29 10:59:19','2019-01-29 10:59:19','2020-01-29 10:59:19'),('f79cab9097c4f578027cd7bfff77dcea75873c4449f8e43bf429f3380a1bc7aad37dfa78d5472638',1,1,'MyApp','[]',0,'2019-01-29 10:58:02','2019-01-29 10:58:02','2020-01-29 10:58:02');

/*Table structure for table `oauth_auth_codes` */

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_auth_codes` */

/*Table structure for table `oauth_clients` */

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
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

insert  into `oauth_clients`(`id`,`user_id`,`name`,`secret`,`redirect`,`personal_access_client`,`password_client`,`revoked`,`created_at`,`updated_at`) values (1,NULL,'Simple Restful API Web Service Personal Access Client','sTxYw6rHAiynSp2IpcBKFdSY6656rzobeZtSJG8w','http://localhost',1,0,0,'2019-01-29 09:58:29','2019-01-29 09:58:29'),(2,NULL,'Simple Restful API Web Service Password Grant Client','b9keaYJMRuQjo9fJ7tt1vCSXUNgL98nle3Jk80XT','http://localhost',0,1,0,'2019-01-29 09:58:29','2019-01-29 09:58:29');

/*Table structure for table `oauth_personal_access_clients` */

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_personal_access_clients` */

insert  into `oauth_personal_access_clients`(`id`,`client_id`,`created_at`,`updated_at`) values (1,1,'2019-01-29 09:58:29','2019-01-29 09:58:29');

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
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) values (1,'pt','abc@gmail.com',NULL,'$2y$10$Nx4vb9YUnoo0Q8vUzMSmYeoRf4HPLmEXLhmLVsCtms0zFiaO4JOiS',NULL,'2019-01-29 10:58:01','2019-01-29 10:58:01'),(2,'kadekbaru','kadek@gmail.com',NULL,'$2y$10$1XJKxsneGGWMBbzYlNxpJO/Tk51/tm87dglAh5q63XRbYnxXz.aFm',NULL,'2019-01-29 10:59:18','2019-01-29 12:41:36'),(6,'putu3','pt3@gmail.com',NULL,'$2y$10$Lxre53Vqyj4CIV1eXCwppeg7qsX5LZDF03fdHRcPgHZxSNKyal2Dm',NULL,'2019-01-29 22:12:45','2019-01-29 22:12:45');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
