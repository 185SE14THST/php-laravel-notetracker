-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: notes
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2018_01_06_050508_add_notes',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shared_key` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shared_key_UNIQUE` (`shared_key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,1,'Hello Mundo','Helo World! SOmetimes when you look outside of your self you will find yourself starring right back at you. How far can the bourdaries of berries go when it comes to loving the true and living water that cooks the food we eat on occasion?','{}','2018-01-06 10:42:41','2018-01-06 10:42:41','5a52ceb552fee',0),(2,1,'We Are the Wolf','DId you realize that in 819 BS there were only 767 horses called Wolfensteins in the germanic period of the Egyptian penensula. I didnt know that. Yeah, its kinda true. Neat huh?','{\"country\": \"IT\", \"referrer\": \"http://notes.demo.dev/\", \"entryPage\": \"notes.demo.dev/\", \"ip_address\": \"192.168.56.1\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0\", \"client_application\": \"Unknown\"}','2018-01-09 05:30:55','2018-01-09 05:30:55','15a540d3f2e557',1),(3,1,'Carlsbad Cookies Can Actually Kick It!!','I usually though that when we made a baker into a plumber that his profession would suffer. Not it is only more delicious in the fact that we eact the moon pies daily. Am I right?','{\"country\": \"IT\", \"referrer\": \"http://notes.demo.dev/\", \"entryPage\": \"notes.demo.dev/\", \"ip_address\": \"192.168.56.1\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0\", \"client_application\": \"Unknown\"}','2018-01-09 06:42:25','2018-01-09 11:24:13','15a541e0106c54',1),(4,1,'Spirit Fingers Abound In The Land of Rextrati','I though that when you ear it will only get better. But when you are too full there is no telling how worse you can get. Try thinking of it in a different light.','{\"country\": \"IT\", \"referrer\": \"http://notes.demo.dev/\", \"entryPage\": \"notes.demo.dev/\", \"ip_address\": \"192.168.56.1\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0\", \"client_application\": \"Unknown\"}','2018-01-09 11:28:15','2018-01-09 11:28:15','15a5460ff6f89c',1),(5,1,'Can you really Fix me?','No, but you can be the best!  <strong>I AM HE-MAN</strong>. I dont think its fair to block progress. What do you think?','{\"country\": \"IT\", \"referrer\": \"http://notes.demo.dev/\", \"entryPage\": \"notes.demo.dev/\", \"ip_address\": \"192.168.56.1\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0\", \"client_application\": \"Unknown\"}','2018-01-09 11:28:35','2018-01-09 12:50:47','15a546113520fb',1),(7,3,'Casual as they will ever be','Yes, it is a note about things and thinking and more things that can not be returned to the library of congress. Do you think they make these in blue. Where can I call for a pizza when the ship is out to sea? Seats are free!','{\"country\": \"IT\", \"referrer\": \"http://notes.demo.dev/home\", \"entryPage\": \"notes.demo.dev/\", \"ip_address\": \"192.168.56.1\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0\", \"client_application\": \"Unknown\"}','2018-01-09 12:52:20','2018-01-09 12:53:51','35a5474b409a41',1),(8,3,'Are you for real','Can the past cut the butter in the orange dress when cats call out for milk in the alley ways?','{\"country\": \"IT\", \"referrer\": \"http://notes.demo.dev/\", \"entryPage\": \"notes.demo.dev/\", \"ip_address\": \"192.168.56.1\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0\", \"client_application\": \"Unknown\"}','2018-01-09 12:54:31','2018-01-09 12:54:31','35a547537e5f1e',1),(9,2,'Squirells Are Conspiring To Do Something','What it is, I do not know.','{\"country\": \"IT\", \"referrer\": \"http://notes.demo.dev/\", \"entryPage\": \"notes.demo.dev/\", \"ip_address\": \"192.168.56.1\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0\", \"client_application\": \"Unknown\"}','2018-01-09 12:56:17','2018-01-09 12:56:17','25a5475a142ea7',1),(10,2,'Team work makes thedream work!','Interactions with notes can be managed via a small API (Ajax) or if you prefer,\r\nyou can set up individual controller methods/views or use modal windows, etc. The implementation is up to you. Go with whatever strategy you think makes the mos','{\"country\": \"IT\", \"referrer\": \"http://notes.demo.dev/\", \"entryPage\": \"notes.demo.dev/\", \"ip_address\": \"192.168.56.1\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0\", \"client_application\": \"Unknown\"}','1995-02-19 12:56:52','1995-02-19 12:56:00','25a5475c4ae883',1);
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `metadata` json DEFAULT NULL,
  `shared_key` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `shared_key_UNIQUE` (`shared_key`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Sean Price','spam@spam.spam','$2y$10$35iUMS9tjBkh4Q3PP5S.FuncPUMLS3A5Yj26NStomEQFjcQt3HQPK','NSylQRr4SMaoeYMt61ZRuUvbwnyS7ZpcuCYPAkCJxSjEFwRlsVmMsQvxpFJU','2018-01-09 03:06:30','2018-01-09 03:06:30','null',''),(2,'test','test@test.com','$2y$10$rAxRi/0nRPQrpGoUQyIui.NwgjfGcXg9w8fFXuO3uyVWw2SjP8vzS','m8GjiWWPTmyctLIJk28wPg6gJ6D6j27yyLoHFdgHY0z0vF92dbnsT5hBgn9C','2018-01-09 12:44:33','2018-01-09 12:44:33',NULL,NULL),(3,'Dane Kazwell','dkaz69@thunderglove.net','$2y$10$P.47B6uXB/t91TJTu/JV0.TUa4qW9.aYktyFJ5GVnS4xJdrsi7O1G','iQzeRhDdRN3w0eqhwiO6L5sBX1da6raxl6Qwfhb6okXKy1dGaqYPACws454e','2018-01-09 12:47:35','2018-01-09 12:47:35','{\"country\": \"IT\", \"referrer\": \"http://notes.demo.dev/register\", \"entryPage\": \"notes.demo.dev/register\", \"ip_address\": \"192.168.56.1\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0\", \"client_application\": \"Unknown\"}','Dd5a5473973e3f5');
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

-- Dump completed on 2018-01-09  3:48:16
