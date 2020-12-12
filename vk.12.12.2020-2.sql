-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: vk
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

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
-- Table structure for table `communites`
--

DROP TABLE IF EXISTS `communites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communites` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(145) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(245) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_communites_users1_idx` (`admin_id`),
  CONSTRAINT `fk_communites_users1` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communites`
--

LOCK TABLES `communites` WRITE;
/*!40000 ALTER TABLE `communites` DISABLE KEYS */;
INSERT INTO `communites` VALUES (1,'earum','Voluptatem aliquid iure non nesciunt.',5),(2,'odit','',23),(3,'ut','',64),(4,'modi','Sit similique hic earum rerum libero quia.',47),(5,'sed','',96),(6,'officiis','',48),(7,'et','Necessitatibus dignissimos architecto et.',6),(8,'ipsum','Ut at aut quaerat beatae dolorem debitis.',23),(9,'quos','',97),(10,'possimus','',80);
/*!40000 ALTER TABLE `communites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend_request`
--

DROP TABLE IF EXISTS `friend_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friend_request` (
  `from_users_id` int unsigned NOT NULL,
  `to_users_id` int unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '-1 - отклонен, 0 - запрос, 1 - принят',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`from_users_id`,`to_users_id`),
  KEY `fk_friend_request_users1_idx` (`from_users_id`),
  KEY `fk_friend_request_users2_idx` (`to_users_id`),
  CONSTRAINT `fk_friend_request_users1` FOREIGN KEY (`from_users_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_friend_request_users2` FOREIGN KEY (`to_users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend_request`
--

LOCK TABLES `friend_request` WRITE;
/*!40000 ALTER TABLE `friend_request` DISABLE KEYS */;
INSERT INTO `friend_request` VALUES (1,34,-1,'2020-12-12 18:13:18','1992-01-09 04:20:35'),(1,44,0,'1996-10-19 07:40:36',NULL),(3,42,1,'2020-12-12 18:13:18','1975-10-01 10:59:28'),(4,39,0,'2020-12-12 18:13:18',NULL),(4,98,-1,'2020-12-12 18:13:18','2012-04-23 11:00:46'),(6,71,0,'1994-11-21 12:57:39','1989-10-18 20:58:14'),(10,17,1,'1995-12-21 12:57:40',NULL),(10,77,0,'2020-12-12 18:13:18','1988-08-28 06:31:29'),(12,68,1,'2020-12-12 18:13:18','1988-11-08 01:12:22'),(13,19,0,'2016-04-28 23:51:21','2020-03-07 01:07:07'),(14,41,-1,'2020-12-12 18:13:18','1994-04-28 13:00:41'),(15,100,-1,'1978-08-24 04:03:37','2011-08-22 00:49:10'),(17,38,1,'2020-12-12 18:13:18','1984-04-23 00:51:37'),(19,12,1,'2020-12-12 18:13:18',NULL),(19,43,-1,'2020-12-12 18:13:18','2005-01-20 13:43:46'),(19,95,0,'2020-12-12 18:13:18','1984-04-13 16:50:01'),(20,97,-1,'2016-06-20 04:24:46',NULL),(24,69,-1,'1995-01-24 16:38:43','1979-12-03 03:36:58'),(24,97,1,'2020-12-12 18:13:18','2001-01-16 04:27:07'),(25,5,-1,'1978-04-03 11:30:29','1974-08-07 14:17:33'),(28,27,-1,'2008-06-17 17:21:28','2002-07-21 05:03:21'),(28,35,1,'2020-12-12 18:13:18','2017-01-17 04:22:27'),(30,46,0,'1977-11-23 01:00:13',NULL),(31,60,0,'1979-09-06 07:24:37','2005-02-14 02:18:18'),(31,79,-1,'1979-01-19 12:49:01',NULL),(32,15,-1,'2009-03-15 14:39:02','1994-10-16 00:26:44'),(32,18,1,'2007-09-28 16:50:41','1981-09-22 04:10:13'),(32,36,-1,'1992-11-11 00:20:47','2002-02-05 18:53:56'),(34,7,-1,'2020-12-12 18:13:18','1972-02-22 20:06:59'),(36,11,0,'2008-02-27 01:45:39','1991-02-13 15:56:20'),(36,61,-1,'1998-11-21 10:07:40',NULL),(37,90,-1,'1983-05-19 11:44:07',NULL),(38,67,-1,'1991-06-01 23:38:26','2009-06-06 05:45:29'),(38,77,-1,'2020-12-12 18:13:18',NULL),(38,98,-1,'1976-01-11 18:33:53',NULL),(39,60,1,'1973-03-27 07:02:10',NULL),(40,61,-1,'2020-06-26 20:18:24','1982-11-02 16:56:09'),(42,68,-1,'2008-07-21 21:11:07','1987-04-09 21:19:09'),(43,54,-1,'2020-12-12 18:13:18',NULL),(47,31,0,'2001-11-14 00:00:34',NULL),(47,32,0,'1975-12-01 19:03:02',NULL),(48,34,1,'2020-12-12 18:13:18','1980-01-09 05:53:37'),(48,80,0,'2020-12-12 18:13:18',NULL),(49,32,-1,'2020-12-12 18:13:18',NULL),(50,2,0,'2020-12-12 18:13:18','1986-09-28 12:46:25'),(52,9,0,'2010-05-19 02:46:47','2015-07-18 05:33:48'),(54,48,1,'2020-12-12 18:13:18',NULL),(55,61,0,'2020-06-11 04:15:49','1988-03-24 01:34:18'),(57,1,1,'2020-12-12 18:13:18','2014-07-23 06:49:50'),(57,11,1,'2020-12-12 18:13:18','1982-05-04 22:55:58'),(57,27,1,'2020-12-12 18:13:18',NULL),(57,87,1,'2020-12-12 18:13:18','1977-12-25 23:00:05'),(58,83,0,'2020-12-12 18:13:18','1994-05-12 13:05:10'),(58,92,0,'2002-07-02 13:44:35','1994-11-04 10:22:01'),(61,40,0,'1995-03-26 09:27:05',NULL),(61,97,0,'1997-01-02 19:20:44','1975-12-27 12:17:37'),(63,14,0,'1997-06-25 22:46:16',NULL),(63,20,-1,'2002-11-08 12:47:44',NULL),(64,29,0,'2020-12-12 18:13:18','1973-07-10 09:01:31'),(65,71,0,'2020-12-12 18:13:18',NULL),(65,80,0,'2020-12-12 18:13:18',NULL),(66,52,0,'2020-12-12 18:13:18','2008-02-05 11:13:15'),(66,63,1,'2020-12-12 18:13:18','1981-05-13 13:20:48'),(67,2,-1,'2020-12-12 18:13:18','1988-02-09 09:46:41'),(67,79,0,'1995-12-28 17:46:04','2008-04-02 08:27:57'),(69,36,1,'1981-11-30 15:28:05','1983-06-05 07:08:21'),(70,90,-1,'2020-12-12 18:13:18',NULL),(72,31,-1,'2020-12-12 18:13:18','2008-09-16 08:26:38'),(73,57,-1,'2003-02-24 05:09:48','1970-12-05 05:18:07'),(74,67,1,'1984-01-15 12:13:38','1976-10-21 07:32:10'),(75,37,0,'1992-10-05 21:17:48',NULL),(75,63,-1,'2020-12-12 18:13:18','1995-10-01 18:10:50'),(76,28,0,'2005-01-08 20:04:20','2011-12-13 06:40:42'),(77,7,-1,'2020-12-12 18:13:18',NULL),(77,11,0,'2005-01-02 07:44:09',NULL),(77,76,0,'2020-12-12 18:13:18',NULL),(79,60,1,'1987-01-16 00:23:44',NULL),(79,97,1,'2020-12-12 18:13:18',NULL),(82,70,1,'2020-11-15 23:07:22',NULL),(84,49,0,'1974-03-13 00:29:58',NULL),(84,66,1,'2016-02-03 18:37:01','2001-11-14 15:04:13'),(84,70,1,'1980-09-07 00:40:45','1983-04-22 23:36:03'),(85,88,0,'1978-06-24 14:08:31',NULL),(87,23,1,'1991-07-15 22:40:38','2001-07-02 20:31:54'),(88,55,-1,'2020-12-12 18:13:18',NULL),(88,78,-1,'1983-12-28 15:10:02','2014-11-22 10:58:30'),(90,96,1,'2015-05-27 07:16:04','1997-09-14 22:51:41'),(91,72,0,'2020-12-12 18:13:18','2005-11-24 12:22:24'),(92,13,0,'2019-10-17 22:05:56',NULL),(94,15,0,'1983-07-22 02:15:41','1991-05-20 21:30:37'),(94,55,-1,'2020-12-12 18:13:18','1986-08-19 02:46:30'),(94,76,0,'2016-02-15 07:19:05','1991-03-01 17:06:27'),(95,80,1,'2020-12-12 18:13:18','1979-09-22 22:05:30'),(96,19,0,'2020-12-12 18:13:18','1974-07-06 23:09:31'),(98,97,0,'2003-05-19 14:22:10','2018-06-09 00:39:50'),(99,43,1,'2019-11-23 07:55:40',NULL),(100,26,0,'2020-12-12 18:13:18','1972-09-21 03:28:24');
/*!40000 ALTER TABLE `friend_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `users_id` int unsigned NOT NULL,
  `media_id` int unsigned DEFAULT NULL,
  `posts_id` int unsigned DEFAULT NULL,
  `messages_id` int unsigned DEFAULT NULL,
  UNIQUE KEY `INDEX1` (`users_id`,`media_id`),
  UNIQUE KEY `INDEX2` (`users_id`,`posts_id`),
  UNIQUE KEY `INDEX3` (`messages_id`,`users_id`),
  KEY `fk_likes_users1_idx` (`users_id`),
  KEY `fk_likes_media1_idx` (`media_id`),
  KEY `fk_likes_posts1_idx` (`posts_id`),
  KEY `fk_likes_messages1_idx` (`messages_id`),
  CONSTRAINT `fk_likes_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_likes_messages1` FOREIGN KEY (`messages_id`) REFERENCES `messages` (`id`),
  CONSTRAINT `fk_likes_posts1` FOREIGN KEY (`posts_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `fk_likes_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (75,78,34,90),(100,26,24,15),(59,32,90,75),(96,13,55,53),(10,30,15,26),(71,68,47,66),(3,60,37,7),(89,57,84,64),(34,17,54,34),(42,77,48,100),(9,38,75,4),(51,30,57,60),(60,72,86,30),(39,32,96,41),(91,32,47,80),(88,31,43,22),(47,96,55,89),(73,3,89,81),(40,64,85,90),(94,42,50,53),(13,35,83,51),(66,78,91,57),(10,38,37,97),(68,80,19,15),(75,73,4,48),(76,92,29,15),(56,14,5,49),(55,54,2,67),(88,84,18,54),(62,8,10,71),(46,47,68,14),(26,86,28,1),(24,76,49,79),(90,54,27,44),(7,28,11,95),(12,28,48,73),(36,58,43,81),(4,11,94,29),(97,22,29,55),(53,77,89,76),(53,38,54,42),(92,81,86,99),(8,96,93,20),(23,41,92,58),(99,35,39,2),(46,32,31,42),(53,60,97,6),(37,86,81,89),(23,35,31,15),(15,16,13,23),(11,5,42,34),(46,34,92,44),(68,30,46,13),(62,76,55,15),(36,51,21,72),(36,1,60,59),(35,91,73,50),(6,86,73,17),(90,14,51,36),(48,42,79,16),(72,24,29,34),(100,83,49,36),(33,69,7,69),(70,67,28,5),(57,100,54,63),(86,26,80,75),(40,30,11,88),(72,90,3,44),(14,31,78,13),(13,26,49,46),(95,55,15,64),(22,42,68,79),(42,22,41,27),(48,21,2,87),(50,12,74,22),(1,77,66,15),(7,43,28,20),(69,76,66,63),(31,80,27,52),(22,95,30,63),(16,71,90,63),(91,91,50,41),(3,24,63,4),(1,29,18,7),(71,45,27,40),(20,93,3,50),(72,30,2,94),(24,32,56,39),(2,46,2,93),(36,52,34,39),(76,97,42,76),(25,60,83,96),(5,10,35,24),(2,38,74,74),(67,76,67,90),(7,23,29,8),(68,31,1,4),(83,34,43,58),(31,84,34,55);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int unsigned NOT NULL,
  `media_types_id` int unsigned NOT NULL,
  `likes_id` int unsigned NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `blob` blob,
  `size` bigint NOT NULL DEFAULT '0',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`id`),
  KEY `fk_media_users1_idx` (`users_id`),
  KEY `fk_media_media_types1_idx` (`media_types_id`),
  CONSTRAINT `fk_media_media_types1` FOREIGN KEY (`media_types_id`) REFERENCES `media_types` (`id`),
  CONSTRAINT `fk_media_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  CONSTRAINT `media_chk_1` CHECK (json_valid(`metadata`))
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,17,1,0,'7z',NULL,NULL,24335,NULL),(2,94,1,0,'mxs',NULL,NULL,20981469,NULL),(3,82,3,0,'uvvh',NULL,NULL,92,NULL),(4,86,1,0,'mpt',NULL,NULL,337,NULL),(5,23,1,0,'pot',NULL,NULL,21,NULL),(6,59,1,0,'mathml',NULL,NULL,2,NULL),(7,97,2,0,'rdf',NULL,NULL,98050,NULL),(8,57,1,0,'xvml',NULL,NULL,0,NULL),(9,74,1,0,'f4v',NULL,NULL,6,NULL),(10,88,3,0,'viv',NULL,NULL,3743,NULL),(11,41,2,0,'lbd',NULL,NULL,9173,NULL),(12,11,1,0,'ait',NULL,NULL,642,NULL),(13,15,1,0,'dfac',NULL,NULL,718,NULL),(14,48,2,0,'cpio',NULL,NULL,7104193,NULL),(15,26,2,0,'gv',NULL,NULL,772584,NULL),(16,84,2,0,'xlsm',NULL,NULL,340840891,NULL),(17,83,3,0,'install',NULL,NULL,0,NULL),(18,73,2,0,'nsc',NULL,NULL,0,NULL),(19,56,2,0,'vcs',NULL,NULL,0,NULL),(20,84,3,0,'fli',NULL,NULL,100,NULL),(21,76,2,0,'viv',NULL,NULL,3569,NULL),(22,83,3,0,'xps',NULL,NULL,0,NULL),(23,95,2,0,'wvx',NULL,NULL,32062,NULL),(24,5,3,0,'geo',NULL,NULL,0,NULL),(25,58,3,0,'g3',NULL,NULL,15203329,NULL),(26,40,3,0,'dd2',NULL,NULL,43566343,NULL),(27,26,2,0,'dae',NULL,NULL,0,NULL),(28,2,2,0,'mie',NULL,NULL,73224,NULL),(29,77,2,0,'fig',NULL,NULL,96753,NULL),(30,3,1,0,'tar',NULL,NULL,389760,NULL),(31,8,3,0,'shar',NULL,NULL,156576441,NULL),(32,45,3,0,'cab',NULL,NULL,0,NULL),(33,65,1,0,'m4u',NULL,NULL,0,NULL),(34,54,1,0,'otc',NULL,NULL,14727801,NULL),(35,76,2,0,'gtw',NULL,NULL,533261418,NULL),(36,98,2,0,'gramps',NULL,NULL,36312,NULL),(37,79,3,0,'odf',NULL,NULL,298,NULL),(38,22,3,0,'ttc',NULL,NULL,82,NULL),(39,20,1,0,'pgp',NULL,NULL,600,NULL),(40,43,3,0,'pcx',NULL,NULL,6,NULL),(41,18,3,0,'fdf',NULL,NULL,48569,NULL),(42,76,2,0,'avi',NULL,NULL,43811,NULL),(43,33,3,0,'webp',NULL,NULL,983,NULL),(44,83,1,0,'ahead',NULL,NULL,894,NULL),(45,26,3,0,'uoml',NULL,NULL,0,NULL),(46,11,1,0,'mts',NULL,NULL,5,NULL),(47,72,2,0,'sh',NULL,NULL,93344898,NULL),(48,22,2,0,'skm',NULL,NULL,820,NULL),(49,74,3,0,'sxc',NULL,NULL,4608,NULL),(50,56,2,0,'fvt',NULL,NULL,158661887,NULL),(51,13,2,0,'yin',NULL,NULL,76,NULL),(52,100,3,0,'3gp',NULL,NULL,3748,NULL),(53,35,1,0,'ief',NULL,NULL,53,NULL),(54,66,2,0,'wmd',NULL,NULL,43,NULL),(55,48,1,0,'mmr',NULL,NULL,0,NULL),(56,32,2,0,'ftc',NULL,NULL,374351,NULL),(57,90,1,0,'ods',NULL,NULL,786517,NULL),(58,8,1,0,'s',NULL,NULL,546716,NULL),(59,83,3,0,'man',NULL,NULL,9686,NULL),(60,31,1,0,'flac',NULL,NULL,6,NULL),(61,75,2,0,'apr',NULL,NULL,91843,NULL),(62,40,2,0,'uvi',NULL,NULL,22659,NULL),(63,98,2,0,'caf',NULL,NULL,782912,NULL),(64,82,3,0,'hdf',NULL,NULL,0,NULL),(65,38,2,0,'semf',NULL,NULL,966047,NULL),(66,20,2,0,'wmls',NULL,NULL,721,NULL),(67,92,1,0,'scurl',NULL,NULL,94791498,NULL),(68,43,1,0,'kia',NULL,NULL,552507115,NULL),(69,41,1,0,'fdf',NULL,NULL,8883419,NULL),(70,80,3,0,'dpg',NULL,NULL,357,NULL),(71,16,1,0,'hal',NULL,NULL,192477,NULL),(72,53,1,0,'dvb',NULL,NULL,1,NULL),(73,17,2,0,'pls',NULL,NULL,16576,NULL),(74,28,3,0,'jpm',NULL,NULL,2448,NULL),(75,49,2,0,'odt',NULL,NULL,0,NULL),(76,8,1,0,'class',NULL,NULL,71,NULL),(77,1,2,0,'flac',NULL,NULL,481718,NULL),(78,70,3,0,'asf',NULL,NULL,147,NULL),(79,9,2,0,'x3d',NULL,NULL,0,NULL),(80,69,2,0,'dart',NULL,NULL,9,NULL),(81,90,3,0,'vcx',NULL,NULL,5754511,NULL),(82,97,3,0,'wmz',NULL,NULL,6,NULL),(83,7,2,0,'ulx',NULL,NULL,3,NULL),(84,7,2,0,'wpd',NULL,NULL,7,NULL),(85,47,3,0,'mmr',NULL,NULL,29584596,NULL),(86,34,2,0,'x3db',NULL,NULL,0,NULL),(87,97,3,0,'stl',NULL,NULL,0,NULL),(88,67,1,0,'gca',NULL,NULL,166,NULL),(89,45,3,0,'nsc',NULL,NULL,2884,NULL),(90,13,3,0,'dna',NULL,NULL,63443051,NULL),(91,53,1,0,'texinfo',NULL,NULL,6811,NULL),(92,18,2,0,'pyv',NULL,NULL,0,NULL),(93,67,3,0,'xap',NULL,NULL,97330,NULL),(94,51,3,0,'fe_launch',NULL,NULL,0,NULL),(95,38,1,0,'pptm',NULL,NULL,394,NULL),(96,22,1,0,'cfs',NULL,NULL,6052,NULL),(97,7,1,0,'tra',NULL,NULL,22246,NULL),(98,8,1,0,'crd',NULL,NULL,61349822,NULL),(99,57,1,0,'sgi',NULL,NULL,0,NULL),(100,59,1,0,'skd',NULL,NULL,9328902,NULL);
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (1,'img'),(2,' audio'),(3,' video');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `from_users_id` int unsigned NOT NULL,
  `to_users_id` int unsigned NOT NULL,
  `media_id` int unsigned NOT NULL,
  `text` varchar(245) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_messages_users_idx_from` (`from_users_id`),
  KEY `fk_messages_users_idx_to` (`to_users_id`),
  KEY `fk_messages_media1_idx` (`media_id`),
  CONSTRAINT `fk_messages_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_messages_users` FOREIGN KEY (`from_users_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_messages_users1` FOREIGN KEY (`to_users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,44,88,62,'Ad error velit debitis eligendi voluptas quaerat.','1980-07-19 06:11:01','0000-00-00 00:00:00','2012-04-05 03:37:35'),(2,21,4,4,'Repellendus deleniti numquam et commodi.','1970-11-20 23:05:58','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,69,83,72,'Sequi doloremque qui odit tempore eligendi et saepe.','2003-04-05 23:39:25','0000-00-00 00:00:00','1989-08-18 05:34:00'),(4,96,27,82,'Nisi porro itaque inventore porro quas asperiores similique.','2005-11-21 16:50:16','0000-00-00 00:00:00','1976-03-05 09:29:58'),(5,1,87,79,'Enim laborum et minima vitae ut eos.','1979-03-14 20:06:31','1986-09-25 19:19:08','0000-00-00 00:00:00'),(6,56,4,71,'Doloremque sed esse rerum est eos ipsa ea.','2007-08-11 21:44:13','0000-00-00 00:00:00','2011-05-06 16:57:13'),(7,6,57,28,'Nobis id ipsa voluptate quae.','2015-05-15 05:49:26','0000-00-00 00:00:00','1978-03-20 05:06:52'),(8,42,82,25,'Laborum autem deserunt modi ea aut.','1978-07-13 11:14:06','0000-00-00 00:00:00','1982-01-24 04:01:15'),(9,51,19,88,'Iure vel ut sapiente velit odio.','1984-01-11 18:54:30','1987-07-18 08:19:38','2019-03-26 18:27:08'),(10,39,55,27,'Voluptates minus et occaecati distinctio qui quas.','1977-03-12 15:30:50','0000-00-00 00:00:00','2005-09-02 14:01:40'),(11,77,98,15,'Quae laboriosam et earum eos minus neque.','1973-03-25 06:03:08','0000-00-00 00:00:00','2001-09-23 20:09:51'),(12,38,19,18,'Laudantium quaerat quidem quod labore rerum iusto.','1971-01-26 00:00:29','1970-01-21 17:19:59','0000-00-00 00:00:00'),(13,41,87,1,'Alias pariatur eum ipsam et eligendi sint deleniti.','2002-02-04 09:08:25','0000-00-00 00:00:00','2010-01-25 22:41:36'),(14,13,82,27,'Illo deleniti porro sunt beatae ut et itaque.','2011-01-24 23:47:07','0000-00-00 00:00:00','2011-05-05 01:06:30'),(15,95,83,13,'Et assumenda et vero fugit dolore veniam.','1975-08-19 13:25:32','2014-08-28 14:21:45','0000-00-00 00:00:00'),(16,73,38,17,'Eum enim sequi nihil in doloribus saepe repellat eum.','1982-05-01 18:44:06','0000-00-00 00:00:00','2015-07-29 11:00:50'),(17,44,44,74,'Consectetur consequatur commodi cupiditate officiis.','2001-09-20 21:04:34','2015-02-14 17:57:48','0000-00-00 00:00:00'),(18,72,85,55,'Libero praesentium vel dicta libero doloribus nisi.','2010-08-19 17:30:21','0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,96,36,74,'Possimus earum eligendi voluptates qui non sunt.','1993-05-09 03:10:41','0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,84,75,29,'Eligendi voluptas numquam dolorem quia sit.','2008-11-16 14:18:12','0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,11,51,26,'Debitis qui nihil id quos.','1978-07-08 19:11:09','0000-00-00 00:00:00','1988-06-20 09:45:22'),(22,25,88,44,'Quia minus temporibus laboriosam sit quis.','2012-02-07 10:40:33','0000-00-00 00:00:00','2000-12-12 12:07:07'),(23,43,29,31,'Sed fugit harum aut sint quidem.','2015-06-22 19:41:34','0000-00-00 00:00:00','2004-11-16 03:38:13'),(24,44,41,13,'Consequuntur dolorem molestiae nihil ea quo unde officiis eos.','2001-03-26 22:35:14','2011-06-24 06:28:28','2015-05-27 20:18:21'),(25,71,35,95,'Et voluptate consequatur nihil.','1981-03-26 12:11:24','0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,83,8,33,'Aut ut corporis quasi id tempore sit.','1984-10-12 23:01:49','0000-00-00 00:00:00','1995-05-26 21:27:14'),(27,100,51,77,'Est maiores aut iure omnis pariatur.','1988-06-07 14:13:06','0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,74,22,61,'Sed dolores cupiditate praesentium.','2001-08-30 20:43:30','2011-12-22 11:45:56','0000-00-00 00:00:00'),(29,29,18,97,'Facere mollitia qui amet aut quis distinctio.','2017-06-08 21:17:38','0000-00-00 00:00:00','1981-05-26 18:30:02'),(30,2,2,71,'Eum iste beatae et et omnis tempore rem adipisci.','2007-08-06 14:13:05','0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,30,12,22,'Sed vel laboriosam a asperiores quia.','2008-12-31 22:19:36','2018-09-07 15:08:10','0000-00-00 00:00:00'),(32,56,37,9,'Cupiditate eius voluptatem sint.','2003-10-14 13:03:28','1987-07-14 14:35:45','0000-00-00 00:00:00'),(33,100,80,37,'Et exercitationem minima quisquam in voluptatem placeat quo.','2013-12-27 21:47:03','0000-00-00 00:00:00','2019-03-07 00:23:05'),(34,30,23,78,'Aliquam quia sed sit.','1980-08-15 17:00:09','0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,43,93,12,'Ipsa nostrum laboriosam ut distinctio eum omnis officia et.','1974-12-26 07:21:18','1975-03-05 15:26:11','2019-07-06 17:58:11'),(36,38,76,20,'Eaque aut doloribus deleniti quia minus.','1970-10-29 07:46:18','0000-00-00 00:00:00','2006-08-06 08:13:57'),(37,70,76,70,'Qui ipsam harum rerum est omnis.','1990-12-07 05:33:20','0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,46,49,92,'Maiores nemo neque enim et eos vel.','1988-06-04 15:49:46','1986-07-30 07:44:59','0000-00-00 00:00:00'),(39,7,77,10,'Aut temporibus reiciendis sint veritatis.','2014-11-27 15:53:57','2001-07-11 16:58:30','2001-04-01 05:25:02'),(40,4,79,11,'Dolorem assumenda rem praesentium ducimus explicabo provident.','1986-07-22 14:59:10','1986-05-20 13:50:02','0000-00-00 00:00:00'),(41,75,8,23,'Sequi debitis repellendus qui dolor est ratione.','2002-06-22 14:03:18','0000-00-00 00:00:00','2010-07-25 22:26:10'),(42,96,64,59,'Repellendus a necessitatibus aut consequuntur magnam sunt.','1986-05-11 19:28:51','1986-06-13 01:59:28','0000-00-00 00:00:00'),(43,4,63,39,'Qui magnam excepturi consequatur temporibus dolorem esse.','1996-10-15 11:52:54','0000-00-00 00:00:00','2001-07-15 11:47:05'),(44,41,93,62,'Qui nesciunt neque ut ea.','2009-10-09 00:13:42','2012-07-10 11:14:55','0000-00-00 00:00:00'),(45,18,35,55,'Ut quia consequatur voluptatibus pariatur quia quidem.','2003-11-23 19:19:10','2006-10-10 13:41:34','1998-07-08 12:19:58'),(46,30,72,31,'Natus et quisquam qui esse.','1982-08-15 08:47:31','0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,49,42,6,'Provident delectus debitis fugit asperiores sequi quae consequatur doloremque.','1995-01-14 08:37:50','1988-09-03 08:28:47','0000-00-00 00:00:00'),(48,19,87,55,'Accusamus fugiat dolor quis qui cupiditate at.','1985-03-01 05:28:01','0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,10,94,32,'Ut quidem et incidunt ut veritatis.','1993-02-08 06:18:49','0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,19,98,10,'Officiis eum qui voluptatem deserunt nam est.','1993-04-18 07:12:00','0000-00-00 00:00:00','2020-09-12 20:40:18'),(51,30,72,18,'Deserunt ratione occaecati repellendus quos distinctio.','2014-08-16 13:10:30','2012-01-27 04:59:52','2017-12-28 10:51:55'),(52,52,67,81,'Sunt qui nihil placeat impedit et et.','1994-03-17 15:56:43','0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,11,70,43,'Ut blanditiis alias voluptatum rerum ipsam.','2020-03-01 23:52:33','0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,49,11,35,'Blanditiis nam et corporis explicabo quisquam.','2010-11-20 07:18:42','1975-06-21 18:52:19','2009-02-28 19:38:20'),(55,11,28,70,'Tempore deleniti dolorum eos quos.','2017-06-08 15:59:46','0000-00-00 00:00:00','1997-12-14 22:42:00'),(56,65,57,41,'Quidem facere consequatur quia error.','1979-07-14 03:00:27','1973-04-24 02:31:27','2005-06-11 07:17:33'),(57,95,6,82,'Occaecati accusamus ea ut.','1980-05-05 05:31:21','0000-00-00 00:00:00','2001-06-27 04:27:10'),(58,1,24,69,'Voluptas odit dolorem sint minima a ad.','1999-01-15 12:37:48','1974-01-07 11:09:20','1984-09-30 23:15:02'),(59,55,34,63,'Nihil officiis quos voluptatum nostrum minima nulla.','2002-09-30 10:17:30','2017-08-06 06:00:03','0000-00-00 00:00:00'),(60,86,52,60,'Et fuga sint odit earum repellendus quas eligendi.','1975-04-25 00:13:53','1975-07-14 08:28:39','1979-01-14 10:20:45'),(61,96,81,31,'Aut voluptatem dolorem vel animi consequatur.','1992-05-22 18:30:22','2006-11-08 07:52:18','0000-00-00 00:00:00'),(62,13,33,97,'Facilis tempora magnam iste repudiandae est architecto qui ipsum.','1971-12-16 03:15:30','0000-00-00 00:00:00','0000-00-00 00:00:00'),(63,93,43,67,'Est inventore saepe vitae vel ut saepe ut.','1988-03-23 22:37:20','0000-00-00 00:00:00','0000-00-00 00:00:00'),(64,36,92,77,'Dolores qui sunt odit maiores reiciendis non nihil reprehenderit.','1971-05-31 12:32:01','1996-09-24 00:06:51','0000-00-00 00:00:00'),(65,71,2,4,'Incidunt est velit expedita labore labore ea praesentium.','2002-08-15 13:05:05','0000-00-00 00:00:00','2011-01-27 01:08:15'),(66,40,66,61,'Rerum qui repellendus sapiente repellat qui deleniti.','1988-05-26 16:01:58','2003-12-18 01:46:57','0000-00-00 00:00:00'),(67,80,61,66,'Quidem quam autem quia nostrum enim eos repudiandae.','1989-07-13 23:58:56','0000-00-00 00:00:00','0000-00-00 00:00:00'),(68,62,61,90,'Amet aliquam voluptate aut neque culpa totam.','1987-07-14 23:18:46','0000-00-00 00:00:00','0000-00-00 00:00:00'),(69,31,15,23,'Velit aut corrupti quo non harum veniam unde at.','2018-11-13 03:58:58','2007-09-25 17:21:38','1995-02-18 09:04:33'),(70,93,1,75,'Nulla aspernatur atque dolorem et similique in quos.','2020-07-23 10:57:54','1999-02-02 15:46:38','2006-05-02 22:02:46'),(71,52,96,56,'Est repudiandae similique neque consequatur facere commodi ex.','1989-10-18 00:07:58','0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,83,8,88,'Quos ullam sunt et quia qui accusantium rerum animi.','1990-11-16 11:42:39','2008-01-22 04:49:01','2004-11-23 18:54:44'),(73,79,1,30,'Qui aut consequatur soluta quis dolores.','2001-08-25 16:24:22','0000-00-00 00:00:00','2012-01-15 01:21:35'),(74,46,36,22,'Ad velit vel praesentium deleniti sint autem sit.','2010-05-08 19:50:14','2018-05-21 07:52:40','0000-00-00 00:00:00'),(75,22,6,23,'Dolorem eaque modi commodi sed iste molestias et.','1971-06-25 05:28:26','0000-00-00 00:00:00','1986-02-20 02:55:41'),(76,26,46,89,'Ipsa veniam ducimus beatae impedit expedita.','2014-06-26 08:17:14','1988-10-11 05:09:18','0000-00-00 00:00:00'),(77,87,25,49,'Amet est laudantium eligendi numquam tenetur.','2013-12-19 02:24:12','0000-00-00 00:00:00','1986-11-05 09:15:07'),(78,53,87,9,'Molestias totam itaque deleniti.','1999-02-26 01:04:49','0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,42,17,24,'Facilis ratione sint consequuntur voluptatem.','2015-12-02 05:22:33','0000-00-00 00:00:00','0000-00-00 00:00:00'),(80,64,9,24,'Amet ullam quisquam dolores exercitationem tempore dolore quas.','2016-06-21 04:43:00','2017-04-28 06:01:31','0000-00-00 00:00:00'),(81,38,61,20,'Autem sit aperiam sint neque placeat.','1993-02-21 16:50:45','0000-00-00 00:00:00','1980-01-26 16:24:51'),(82,93,44,28,'Optio qui assumenda illo quo.','1973-05-20 05:55:07','0000-00-00 00:00:00','0000-00-00 00:00:00'),(83,81,22,28,'Dolorum praesentium cupiditate reiciendis qui quos facilis.','2002-03-08 09:44:47','1984-11-17 03:15:03','0000-00-00 00:00:00'),(84,11,68,64,'Eum quas deleniti voluptas at.','2010-10-07 21:26:12','1975-09-08 05:59:01','2015-08-27 23:19:22'),(85,32,90,70,'Odit magnam reiciendis dolore similique.','1987-06-23 03:36:35','2008-07-20 20:45:20','0000-00-00 00:00:00'),(86,54,16,15,'Accusamus ipsa dolorum doloribus accusantium libero dolore.','2018-01-10 05:11:24','0000-00-00 00:00:00','0000-00-00 00:00:00'),(87,42,2,40,'Molestiae nam laborum debitis possimus.','2020-12-11 04:45:10','2003-10-02 18:19:31','0000-00-00 00:00:00'),(88,91,54,26,'Optio modi at error quaerat maxime expedita optio.','1978-09-17 20:23:32','0000-00-00 00:00:00','2011-12-16 03:11:01'),(89,99,95,43,'Quaerat animi sint voluptas labore nobis iusto.','1979-11-18 14:06:50','0000-00-00 00:00:00','0000-00-00 00:00:00'),(90,22,59,52,'Provident commodi explicabo sed occaecati et.','2009-05-01 14:11:27','1976-08-29 21:37:24','0000-00-00 00:00:00'),(91,46,97,13,'Natus velit repellendus at nostrum.','1992-10-24 18:50:04','2006-07-19 19:31:02','0000-00-00 00:00:00'),(92,66,89,56,'Et reprehenderit dolor cumque ea a.','2012-11-27 11:32:13','0000-00-00 00:00:00','2006-08-30 10:40:52'),(93,93,70,78,'Repellat sed laboriosam explicabo rerum rerum aut.','1989-12-12 21:20:00','0000-00-00 00:00:00','0000-00-00 00:00:00'),(94,21,80,45,'Voluptas voluptatum aspernatur temporibus tempore sed.','2011-11-27 12:09:06','1991-02-04 23:10:03','0000-00-00 00:00:00'),(95,84,11,34,'Dolores eum sunt quia.','1995-05-05 01:40:12','0000-00-00 00:00:00','2006-01-16 11:36:29'),(96,54,65,49,'Aliquid vel est qui.','1972-04-13 17:30:51','0000-00-00 00:00:00','1997-11-02 12:27:47'),(97,69,7,51,'Molestiae eos sunt id perspiciatis sint.','2014-10-24 11:43:36','1970-04-17 06:37:21','0000-00-00 00:00:00'),(98,8,97,4,'Id voluptas fugit unde tempora quae dolorem.','1992-03-02 19:24:26','0000-00-00 00:00:00','1982-04-12 16:27:55'),(99,34,96,99,'Recusandae quis quia illum similique.','1974-04-14 17:11:20','2014-11-21 07:20:55','0000-00-00 00:00:00'),(100,76,18,57,'Dolorem est suscipit quis aspernatur qui deleniti consequatur.','2020-07-10 02:35:24','0000-00-00 00:00:00','1990-10-15 00:30:32');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int unsigned NOT NULL,
  `communites_id` int unsigned DEFAULT NULL,
  `media_id` int unsigned NOT NULL,
  `likes_id` int unsigned NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_posts_users1_idx` (`users_id`),
  KEY `fk_posts_communites1_idx` (`communites_id`),
  KEY `fk_posts_media1_idx` (`media_id`),
  CONSTRAINT `fk_posts_communites1` FOREIGN KEY (`communites_id`) REFERENCES `communites` (`id`),
  CONSTRAINT `fk_posts_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_posts_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,80,1,36,0,'Velit dolores asperiores aspernatur ex.','1986-07-20 20:07:49'),(2,38,6,42,0,'Sunt aliquam voluptatibus sequi quod et quisquam.','1973-06-01 17:33:28'),(3,23,5,11,0,'Sunt vel autem reprehenderit.','2017-02-05 15:38:00'),(4,40,7,88,0,'Nihil sunt dolorum est sapiente provident culpa.','1988-03-10 20:16:52'),(5,90,9,42,0,'Sed quam voluptatem omnis.','1980-08-29 00:01:00'),(6,91,2,84,0,'Itaque velit illum asperiores inventore expedita sed odio odio.','1974-12-24 16:38:42'),(7,36,2,64,0,'Nisi doloremque incidunt est suscipit cupiditate.','1985-02-11 02:00:42'),(8,72,10,2,0,'Consequuntur culpa repudiandae sit.','2017-04-28 15:31:28'),(9,18,6,71,0,'Nulla mollitia possimus tempora aut voluptas sint quia.','2014-09-26 14:56:30'),(10,48,7,43,0,'Maxime aspernatur velit est occaecati eos ipsam quibusdam.','2001-02-25 10:07:51'),(11,100,5,43,0,'Velit autem excepturi aut quam nihil iure laborum delectus.','2019-12-03 10:19:32'),(12,36,9,95,0,'Et quo nesciunt dicta natus.','2011-10-21 19:56:48'),(13,77,1,39,0,'Nesciunt laudantium libero labore voluptatem aut.','2011-11-27 21:53:50'),(14,88,5,8,0,'Molestias aliquam non nisi dolorem nihil ut.','1981-03-21 21:13:38'),(15,75,4,89,0,'Recusandae blanditiis dolores voluptatibus.','1999-11-11 00:08:39'),(16,17,3,2,0,'Eos voluptatum rerum mollitia qui illo sed magnam.','1990-01-25 17:15:46'),(17,100,7,20,0,'Molestiae eos earum minus illum omnis ullam necessitatibus pariatur.','1997-01-11 13:37:43'),(18,63,4,11,0,'Et aperiam animi et et ullam dolorum commodi.','2015-05-06 21:10:48'),(19,65,5,62,0,'Modi laboriosam nobis labore esse.','2013-04-15 12:56:50'),(20,36,10,28,0,'Velit dolor laboriosam nemo tenetur ea mollitia.','1980-10-01 05:20:34'),(21,78,10,74,0,'Vel at enim velit quisquam sit pariatur quibusdam.','1975-01-31 13:42:15'),(22,21,4,57,0,'Sed eos exercitationem sunt.','2013-11-21 05:19:52'),(23,15,1,63,0,'Consequatur dolor quidem ad ut.','2006-09-04 18:11:18'),(24,54,10,8,0,'Voluptas et iure quo molestias.','1977-06-23 16:20:32'),(25,61,7,42,0,'Magnam magni aut sequi eos.','1989-09-30 18:27:32'),(26,49,9,67,0,'Reprehenderit deleniti distinctio sit porro consequatur doloribus aut.','2013-12-28 19:18:22'),(27,51,9,28,0,'At aut impedit laborum.','1972-11-24 10:22:41'),(28,70,5,60,0,'Ratione quo nobis labore aut.','1975-10-20 08:09:44'),(29,80,2,9,0,'Et aut nihil sed minima.','1990-07-18 03:12:39'),(30,42,5,6,0,'Ut minus eos dolores.','2016-11-06 15:36:52'),(31,69,3,2,0,'Quos rerum illo in.','2015-08-13 08:45:01'),(32,43,5,33,0,'Pariatur officiis dolor rerum impedit amet.','2009-09-24 01:37:04'),(33,100,7,40,0,'Sit ipsa incidunt ratione nemo.','2016-11-21 19:41:10'),(34,62,2,35,0,'Expedita ipsam eius tempore ut nulla reiciendis.','1980-01-03 03:34:25'),(35,70,8,5,0,'Cupiditate harum natus nam debitis velit cupiditate.','1991-02-08 21:17:38'),(36,11,3,91,0,'Suscipit sit explicabo cum cum nihil laborum.','1987-01-13 01:56:58'),(37,78,8,77,0,'Pariatur eum ut porro deserunt.','2000-09-29 19:17:33'),(38,5,5,26,0,'Omnis omnis est dolor ad sed error.','1970-07-22 02:40:19'),(39,64,3,39,0,'Veritatis ea a deleniti saepe quia.','2016-01-08 23:27:42'),(40,73,7,88,0,'Nostrum maiores nesciunt nam recusandae.','2011-08-28 20:57:25'),(41,79,4,13,0,'Qui eius at praesentium ea et.','1979-09-26 07:18:31'),(42,80,8,60,0,'Sed voluptatum non eum aliquam necessitatibus.','1970-11-28 09:48:48'),(43,13,8,21,0,'Sapiente voluptas vel incidunt illum.','1994-05-27 19:22:33'),(44,53,4,35,0,'Et mollitia distinctio provident quos ut.','1989-07-27 07:09:14'),(45,87,1,9,0,'Odio ut et totam culpa temporibus et.','2019-06-03 05:49:42'),(46,91,2,33,0,'Itaque aut iusto praesentium.','1979-04-25 10:37:13'),(47,82,10,7,0,'Velit tempora nobis sint rerum quod architecto.','2015-11-02 03:43:11'),(48,58,10,50,0,'Velit eos odio consequuntur architecto esse.','1983-05-01 03:38:36'),(49,84,7,74,0,'Ad voluptatum harum perferendis.','1988-04-28 23:29:54'),(50,22,4,38,0,'Et nulla ut distinctio omnis tempore.','2012-09-10 05:11:17'),(51,9,2,71,0,'Nihil blanditiis ullam quia temporibus in ducimus aut recusandae.','2004-02-14 02:17:46'),(52,22,10,46,0,'Culpa dolores voluptatem unde aut assumenda.','1996-01-11 00:16:54'),(53,81,1,20,0,'Atque id quis commodi unde omnis.','1970-02-06 06:43:19'),(54,1,6,57,0,'Incidunt aut voluptas architecto ea assumenda.','2019-05-10 13:39:33'),(55,36,5,62,0,'Est cupiditate quibusdam accusamus modi harum.','1989-11-12 12:10:58'),(56,45,4,78,0,'Illo sequi temporibus natus fugit ad nesciunt dolorem.','2004-03-04 12:52:02'),(57,77,2,71,0,'Ut odio dolores fuga minima eaque deserunt doloremque.','2016-12-11 01:39:48'),(58,84,8,69,0,'Qui est quibusdam nisi fugit rerum.','2003-10-07 21:58:26'),(59,34,6,31,0,'Officia laudantium odio delectus.','1974-08-05 14:28:17'),(60,7,8,66,0,'Incidunt eligendi voluptatem earum accusamus consequatur esse.','1978-06-03 03:15:30'),(61,44,9,78,0,'Consequatur numquam ratione accusamus explicabo facere.','2013-06-09 22:41:20'),(62,14,1,70,0,'Possimus quae at omnis.','1993-09-27 02:47:51'),(63,60,10,75,0,'Aut itaque ratione aut voluptatem est.','1992-06-01 16:44:50'),(64,80,10,32,0,'Earum quasi molestiae cumque aperiam.','2005-02-14 00:30:21'),(65,36,3,76,0,'Itaque quo quisquam quia tenetur saepe.','1979-08-12 18:40:35'),(66,97,8,11,0,'Ducimus deleniti quia omnis distinctio inventore.','2015-11-07 20:59:45'),(67,75,5,27,0,'Quidem vel dignissimos inventore porro.','2019-07-24 05:48:08'),(68,46,4,1,0,'Harum reiciendis illo id eaque sed molestiae.','1998-10-12 02:45:26'),(69,15,7,58,0,'Voluptas rem omnis maxime corporis.','2001-03-08 03:46:10'),(70,45,8,37,0,'Tenetur repellendus illo voluptatem dolorum asperiores.','2007-03-28 14:29:50'),(71,10,2,25,0,'Voluptatem vel expedita et sed qui.','1974-03-31 06:12:24'),(72,88,3,34,0,'Aspernatur dolores adipisci maiores molestias.','1984-11-22 11:38:15'),(73,58,9,24,0,'Aut ut et dolorem et doloribus amet omnis.','1990-07-15 20:38:19'),(74,33,7,16,0,'Neque eius vel magnam.','2019-09-02 15:20:19'),(75,64,1,42,0,'Veritatis assumenda in ut est et.','2019-02-09 09:43:07'),(76,40,10,13,0,'Rerum maxime itaque voluptatem enim ea laborum.','1992-09-26 08:40:35'),(77,50,8,60,0,'Vero sunt hic commodi et possimus necessitatibus et ea.','2018-02-27 11:11:23'),(78,77,2,91,0,'Omnis consequatur suscipit voluptatibus ipsam.','2013-06-11 04:18:14'),(79,78,4,55,0,'Aut accusantium maxime et alias sed neque.','2014-05-22 20:50:49'),(80,35,8,26,0,'Ipsam ut fuga praesentium ut eum.','2019-01-15 08:20:43'),(81,72,9,40,0,'Omnis cum beatae expedita iure non.','2015-06-09 04:48:27'),(82,96,8,68,0,'Doloremque a ducimus maxime facilis sint.','2000-09-16 02:35:09'),(83,30,4,55,0,'Nesciunt accusamus rerum laborum eum omnis qui.','1981-12-27 16:51:21'),(84,53,7,21,0,'Voluptas nisi ad eveniet sint.','2010-07-14 18:52:42'),(85,69,3,22,0,'At officia aut aut totam.','2005-03-28 19:14:32'),(86,10,7,20,0,'Et velit aliquam rerum consequatur dolor architecto corrupti.','1996-07-15 18:28:16'),(87,23,2,92,0,'Fugit voluptas fugit saepe molestiae id harum.','1993-12-08 23:06:28'),(88,82,10,9,0,'Tempora ut molestias quisquam autem laboriosam.','1987-10-10 08:16:44'),(89,73,8,41,0,'Cumque tempora porro unde et voluptates.','1995-04-19 01:05:34'),(90,28,1,17,0,'Optio officia eius eum rerum.','2019-02-12 15:18:17'),(91,53,8,3,0,'Incidunt quae odit iure vero rerum neque rerum.','2018-04-02 21:12:43'),(92,92,8,76,0,'Explicabo incidunt laborum sed eius aut molestias et.','1987-12-15 04:33:31'),(93,59,1,7,0,'Blanditiis est fuga repellendus dolore.','1979-06-10 23:55:25'),(94,13,6,71,0,'Et qui placeat earum.','2004-02-28 08:21:32'),(95,34,3,98,0,'Est laborum at mollitia a nam et amet.','1985-06-26 02:48:44'),(96,55,4,65,0,'Laboriosam fugit et vitae reiciendis voluptatem dolor commodi rem.','1994-10-22 23:14:46'),(97,75,6,82,0,'Odit tenetur totam reprehenderit dolores.','2005-01-05 04:28:18'),(98,67,4,76,0,'Sed ad itaque quisquam corporis maiores at.','2004-11-18 21:12:30'),(99,76,1,47,0,'Ipsa magnam assumenda totam nostrum aut.','1995-02-15 07:41:25'),(100,16,4,53,0,'Quia eligendi esse officiis numquam.','2018-06-29 14:46:23');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `users_id` int unsigned NOT NULL,
  `photo_id` int unsigned DEFAULT NULL,
  `gender` enum('m','f','x') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `adress` varchar(245) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`users_id`),
  KEY `fk_profiles_users_idx` (`users_id`),
  KEY `fk_profiles_media1_idx` (`photo_id`),
  CONSTRAINT `fk_profiles_media1` FOREIGN KEY (`photo_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_profiles_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,17,'f','2010-02-22','766 Jayde Views\nJuniusborough, AL 63273','1974-12-30 03:18:05'),(2,8,'f','1976-01-20','809 Fritsch Stravenue\nReingerfort, NJ 82617','1978-10-02 06:55:04'),(3,70,'m','2000-01-22','524 Vilma Field\nEast Jazmyneborough, VT 26793','1980-08-29 03:31:16'),(4,84,'f','1975-05-09','05110 Mariane Cliff Suite 123\nEast Letha, TN 44238','2010-10-23 07:49:12'),(5,96,'f','1997-12-25','1861 Lavon Highway\nNathanielland, WA 25628-9190','1999-04-18 04:51:08'),(6,65,'m','2018-05-23','235 Meggie Motorway Apt. 816\nSchulistside, ND 18607','1999-03-21 14:43:31'),(7,27,'f','2014-08-29','453 Goyette Court\nNorth Einoview, IL 67938','2014-02-26 02:57:02'),(8,26,'m','1994-12-18','3692 Green Road Apt. 826\nSouth Marisafurt, VA 93772','1981-11-06 06:19:46'),(9,56,'m','2020-08-24','298 Goodwin Corners Suite 387\nMaybelleborough, TX 67528','1988-07-01 14:15:44'),(10,1,'f','1974-03-26','74965 Twila Crescent Apt. 113\nGradyborough, NJ 29833-6421','1981-12-05 02:32:20'),(11,37,'m','2003-07-31','899 Kshlerin Forks Apt. 163\nSouth Concepciontown, NE 49799-1728','2019-09-30 21:33:06'),(12,96,'m','1978-08-11','628 Antonetta Gateway Apt. 828\nWizaview, WI 18248','2006-10-19 23:53:30'),(13,49,'f','1991-09-23','4225 Carolyn Mount\nSouth Audreanneland, KY 18659','1970-10-09 15:09:13'),(14,23,'m','1990-12-30','8825 Maddison Haven\nSammyview, AL 67528','1993-04-16 08:53:21'),(15,37,'f','1998-02-25','1940 Kenton Trace\nPort Jude, MA 91366','2013-08-16 14:41:35'),(16,12,'f','1980-02-29','369 Hayes Springs\nWittingport, OH 44608-7508','2015-10-01 14:47:19'),(18,72,'f','1973-03-12','88423 Koepp Village Suite 038\nNew Edmundside, SD 20438-4118','2010-06-13 21:23:14'),(19,8,'f','1992-01-13','93961 Elliot Summit Suite 918\nSouth Adriannaport, AZ 84383','2012-02-19 23:56:18'),(20,25,'m','1995-06-03','728 Brannon Forks Apt. 328\nSouth Thaddeuschester, AZ 30091','2005-12-08 10:31:09'),(21,36,'f','2006-01-14','19134 Darlene Mountains Suite 646\nNorth Rylanfort, MD 64659','1997-06-10 06:25:35'),(22,57,'f','2009-01-26','5598 Abby Ramp\nNew Jameyside, LA 61416-2157','1975-03-06 04:29:40'),(23,29,'m','1993-01-02','8611 Neil Stravenue\nLake Alexandro, MI 57707','2004-08-02 09:16:36'),(24,80,'f','2009-04-04','432 Jedidiah Underpass\nPort Juvenalport, PA 42843-1086','1998-10-11 15:52:12'),(25,98,'f','1977-12-14','17885 Eichmann Shores Suite 774\nYostshire, DC 65898-6946','1983-02-11 15:30:02'),(26,10,'m','1998-05-28','0413 Kunde Oval\nDeloreshaven, NY 24193','2014-06-28 20:02:42'),(27,13,'m','1973-04-28','564 Gulgowski Inlet Apt. 461\nDarianamouth, MD 95928','2010-03-25 15:52:43'),(28,49,'m','1974-12-25','7857 McDermott Walk\nSchoenberg, MI 93212-5463','2013-12-19 04:24:24'),(29,90,'m','1999-12-08','939 Mayert Meadows Apt. 121\nFaustoburgh, KY 92615-9277','2000-12-19 07:16:36'),(30,69,'f','1983-01-06','9511 Renner Route Suite 123\nHarberville, CA 98375-0379','1984-08-20 08:39:47'),(31,100,'f','1975-05-21','6911 Sipes Spurs Suite 518\nHeidenreichburgh, NY 92732-8623','1992-10-01 12:04:17'),(32,6,'m','2003-08-22','30689 Oberbrunner Port Suite 807\nGreenburgh, KS 91263','1997-04-20 10:44:55'),(33,76,'m','1989-05-30','717 Turcotte Forest Apt. 127\nNew Anjaliview, IN 33100-7957','2002-06-01 09:18:38'),(34,69,'m','1988-02-10','1745 Ferry Mall\nBaileeside, HI 33683-0592','1981-06-21 14:09:00'),(35,89,'m','2001-09-16','8578 Klocko Mountains Suite 320\nEast Keatonberg, AL 97127','2001-09-22 21:48:29'),(36,72,'f','1971-11-10','430 Jacobi Wells\nEast Lucienne, HI 54815-3605','1984-05-17 08:47:41'),(37,33,'f','1993-07-21','8362 Purdy Well Apt. 623\nStrosinmouth, SD 65910','1974-06-08 02:01:34'),(38,16,'f','1971-06-05','22517 Ella Mill Apt. 368\nEast Joyce, ID 40172','2002-12-15 19:51:01'),(39,97,'f','2015-12-20','6010 Little Roads\nBuckridgeton, MD 91754','1990-11-22 12:40:54'),(40,88,'m','2007-06-11','1173 Heller Freeway\nLake Dino, VA 11223-6218','1986-11-20 15:00:38'),(41,16,'m','2020-08-13','1203 Emily Route\nEast Oleburgh, WA 27600','1975-01-14 15:39:57'),(42,34,'m','1980-12-17','0160 Gutmann Crossing\nAbbottfort, MS 28867-1877','1990-11-09 06:23:57'),(43,84,'m','1973-05-31','0655 Cary Mission\nJosiemouth, NM 95440-2704','2006-04-20 06:38:18'),(44,64,'f','1990-06-14','6493 Reynolds Rest\nBruenmouth, WI 01159-2370','1975-02-24 01:26:22'),(45,56,'f','1977-10-18','04561 Hegmann Village\nShanahantown, AR 97765-8825','1992-01-26 03:08:12'),(46,20,'f','1990-05-25','05081 Beer Meadow Apt. 315\nGardnermouth, AZ 57160-4213','1984-06-16 05:57:14'),(47,75,'m','1983-09-15','3576 Franecki Highway\nWest Elmerberg, ID 60733','1984-09-09 04:32:56'),(48,55,'m','2000-11-17','1628 Hermann Vista Suite 498\nNew Gunnar, CO 08306-7961','1992-05-03 04:16:15'),(49,92,'m','1971-11-12','6765 Thompson Trail Apt. 136\nCarterfort, ND 44209-0721','1972-04-01 21:58:04'),(50,82,'f','2014-02-24','9098 Metz Tunnel\nLupechester, OH 95744-2639','1992-04-25 07:24:56'),(51,80,'f','1990-02-25','94240 Schmeler Summit Apt. 998\nSouth Arnulfo, OR 96408-9752','1979-03-07 06:04:34'),(52,28,'f','1976-03-22','9873 Norwood Views Suite 696\nKenyonland, KY 85740','1990-09-22 07:56:02'),(53,39,'f','1978-01-19','474 Kiehn Canyon Apt. 699\nNew Devinmouth, DE 77458','1996-04-20 11:30:19'),(54,9,'f','1995-05-09','61392 Runte Spur\nLake Marlinchester, LA 82585-4882','1997-10-09 02:53:00'),(55,7,'m','1998-08-02','799 Zulauf Plains Apt. 126\nWest Tyrese, PA 71021','2019-01-06 02:44:25'),(56,36,'m','1992-11-08','9784 Buddy Cape\nPort Alvaborough, WV 80876','2007-06-20 09:21:14'),(57,18,'f','2008-03-17','1521 Quinn Passage Suite 285\nOsinskiview, LA 98507-2832','1992-12-31 08:31:57'),(58,20,'f','1992-11-30','1216 Boris Rest\nO\'Haramouth, NV 37964','1983-10-26 08:00:16'),(59,84,'f','1986-07-22','403 Billie Meadows\nHeaneymouth, WV 74245-0760','2018-08-21 03:32:51'),(60,7,'m','1971-06-28','59608 Alaina Common\nPort Keith, NM 10933-9038','1997-07-07 03:42:52'),(61,88,'f','1983-02-03','8343 Yvette Vista Apt. 500\nDarrionborough, MT 80304-6228','2000-05-18 01:00:35'),(62,83,'f','1979-02-04','610 Sanford Loop Apt. 660\nCassinport, CA 90798-6280','1993-04-08 16:46:20'),(63,13,'f','2005-11-14','0158 Brown Spur\nNew Kaden, KY 18760','2003-02-22 04:57:50'),(64,64,'m','2015-06-06','94504 Schmitt Alley Apt. 228\nPort Royalmouth, IL 51243-3561','2004-02-09 14:22:59'),(65,52,'m','1985-10-28','327 Pacocha Square Suite 707\nLake Maryshire, RI 31316','2018-04-15 10:03:47'),(66,2,'f','2001-11-14','92769 McCullough Well Apt. 802\nPort Cathy, ID 08068-9977','1999-04-24 15:02:31'),(67,35,'m','2012-03-26','346 Stanton Shoals\nElyssaborough, AR 46115-4448','1991-05-25 05:38:11'),(68,84,'m','1986-01-31','064 Gusikowski Spring\nRunolfsdottirhaven, MA 10769-8460','1987-05-21 12:18:19'),(69,17,'m','2008-03-19','7860 Tia Circles Apt. 591\nAlexisshire, CT 28261-8887','2003-12-29 20:36:43'),(70,32,'f','1995-11-06','56445 Colten Highway\nDuBuqueton, TX 12214-2130','1976-04-06 15:49:42'),(71,72,'m','2011-12-12','799 Fredrick River Suite 915\nNew Opheliastad, WV 82050','1979-10-29 03:49:17'),(72,32,'f','1974-06-15','36585 Peter Overpass\nLake Nattown, NY 73965','1986-02-09 17:13:45'),(73,65,'f','1976-01-29','47907 Ressie Keys\nNew Dinaside, OK 59365-4490','1986-12-06 12:21:29'),(74,56,'m','2016-11-01','613 Tad Dam Apt. 319\nWunschburgh, NY 22650','2020-02-16 01:55:29'),(75,95,'m','1973-04-30','25891 Selena Fords Apt. 041\nJessycatown, OR 79884','1986-07-10 20:26:14'),(76,21,'m','2007-09-22','8565 Gerhold Drive\nEast Javon, ID 44215-6501','1980-08-07 02:08:36'),(77,76,'f','1984-09-17','358 Rolfson Estate Suite 964\nRiceshire, KS 26130','1980-09-04 17:45:15'),(78,70,'f','1999-03-20','6482 Sydnee Junction Suite 847\nMarvinmouth, MI 04575-3264','2014-11-01 08:41:01'),(79,75,'m','1997-06-29','9715 Payton Burg Suite 994\nNorth Luzmouth, OH 14255','1984-10-09 23:13:11'),(80,67,'m','1979-10-25','488 Heaney Fords\nRorymouth, AR 86209-3912','1986-01-18 00:59:51'),(81,52,'f','2020-02-22','098 Frederic Union Apt. 606\nSouth Josefaport, NC 37994-4944','2014-12-09 03:19:44'),(82,55,'f','2012-04-03','84399 Jarret Square\nProsaccobury, HI 87901','2009-11-07 15:20:40'),(83,94,'f','1981-09-09','4922 Brown Lane Apt. 290\nWebermouth, NJ 38429','1996-04-30 23:00:44'),(84,90,'m','1990-04-04','38513 Ratke Centers\nClementineside, TX 89080','2011-02-15 00:46:12'),(85,63,'m','1998-09-16','5770 Murray Radial\nWest Manuelview, AZ 18717-5405','1990-07-14 15:55:21'),(86,1,'f','2020-10-01','051 Champlin Avenue\nBeckerstad, VT 27517-0731','1992-08-22 13:38:53'),(87,25,'m','1985-01-15','9369 Ankunding Dam Apt. 647\nWest Allen, VA 53774','2002-03-21 12:01:50'),(88,81,'m','2010-10-29','428 D\'Amore Heights\nWisozkchester, MI 58574-3210','2018-12-06 19:47:17'),(89,20,'f','2014-03-05','119 Vita Point\nGlenshire, MS 27797-3795','1993-05-21 10:11:25'),(90,8,'m','1974-09-28','700 Reinhold Common\nBergstromtown, OR 91979','1970-04-22 08:02:26'),(91,87,'f','1974-01-25','92050 Wintheiser Fords\nNorth Revaton, PA 66582','1985-04-08 03:40:18'),(92,7,'m','1981-10-01','765 Eichmann Bridge Apt. 530\nJaskolskishire, NY 13378-4079','2009-08-29 08:02:24'),(93,91,'m','1975-08-09','71313 Feil Canyon Apt. 072\nLolashire, LA 46728','2007-03-31 18:43:02'),(94,100,'f','2016-04-19','98316 Raymundo Brook\nConroyborough, RI 98059-0445','1991-04-26 01:02:03'),(95,70,'f','1971-03-24','488 Heller Wells Suite 428\nPort Forrest, IL 76800-2507','1993-03-22 09:03:11'),(96,42,'f','2007-07-12','3489 Breitenberg Rest\nNew Madisynburgh, CA 92675','1997-05-29 18:49:59'),(97,1,'m','2013-05-17','666 Volkman Dale\nKirstenstad, WA 75893','2015-03-22 02:32:06'),(98,4,'f','2012-10-04','2187 Goldner Manors Suite 491\nLake Janelleside, OH 40061','2001-01-08 19:37:59'),(99,26,'f','1983-03-07','89644 Auer Crossing\nLake Jayme, LA 39279-4506','2019-06-22 05:00:58'),(100,17,'f','1973-09-07','6322 Asha Prairie Suite 126\nLake Melvin, VA 38022','2003-04-27 08:58:17');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(145) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Имя',
  `lastname` varchar(145) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Фамилия',
  `email` varchar(245) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` bigint NOT NULL,
  `password_hash` char(65) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Noemy','Ledner','davon.rowe@example.org',79782384745,'756ae5875f1842263eab2f92ac59ab65edab17ea'),(2,'Nichole','Bins','brianne.reilly@example.org',79919092955,'76e5fff8c200f518860fdab9f9887ad7bbcea7fd'),(3,'Deangelo','Beahan','golden.weber@example.org',79385203578,'95d2403c613a25c36d179b3027bf29a54f1504a5'),(4,'Cecelia','Schaefer','andres.dicki@example.net',79217149880,'415415e3ce078240a5cdfe72cb890982c06cad60'),(5,'Belle','Crooks','billy.medhurst@example.org',79215725853,'fa59ac4f929a8fa78109c2d624ef01d5638d1252'),(6,'Constantin','Brakus','leola12@example.org',79030885512,'e4d88d64d8a8f87e4ecbd6625de16fb9f225970b'),(7,'Stan','Schmeler','keebler.ambrose@example.com',79237426244,'dfc47f35e0691b7bfe73bfc1488dae0c0fa7c7eb'),(8,'Nathanael','Walsh','fwyman@example.com',79061770065,'52514b7afeda76b4fe61776f802e5f70e4b2234f'),(9,'Rodrigo','Schinner','brian.dietrich@example.net',79401149713,'36d244f99346702d4230e3e595a9fdfd75ab07ec'),(10,'Marion','Abshire','larue.lind@example.com',79048288245,'27f8da1b1c187a93bbc64a0f7537996de5a008a2'),(11,'Cruz','Herman','fanny.fadel@example.com',79338141116,'05ff134c598d44bced389c1e17149d44d541f85d'),(12,'Jocelyn','Moore','heathcote.laverna@example.com',79295364439,'35639c4976427ab341b0d4265cb58a0ca74bbc00'),(13,'August','Rosenbaum','camilla.stracke@example.net',79596466834,'4a44d278ad2b308ea3f1e96a0c9397b3035652fe'),(14,'Joan','Kuhic','lane50@example.net',79326675514,'5eaca7daf7ba2034beb068336a1dd10f152f0a4b'),(15,'Brian','Waelchi','vbrakus@example.com',79031140984,'d5f40fd0ac55f762bfb62e76933f84f0afd7b3e5'),(16,'Eldred','Frami','justyn.bashirian@example.com',79147398236,'c18369315482e425e1a0998ac2157bd1011ac4d5'),(17,'Lawson','Breitenberg','wschaefer@example.com',79018158631,'c9aade2a3a3fffafe37616d6f780bbc85cf27ddc'),(18,'Barbara','Rowe','dkoch@example.org',79935006178,'9b91560d9b96764d3339008e4ddc548272f30beb'),(19,'Dante','Champlin','jbarrows@example.org',79157401185,'4a1879c391b9071e76ad4a2c22a595613476d194'),(20,'Juanita','Weissnat','melyssa.bartell@example.org',79669543609,'44dd033e29eca5a00981222bcfd92df193d84151'),(21,'Glenna','Yost','chadrick15@example.com',79578676482,'0fda9c7c740453200e1c59dabe40814c02791e6e'),(22,'Lonnie','Goodwin','uritchie@example.net',79046893934,'cc47a3ba6b193c72445e4edb92e52293fa930412'),(23,'Elisa','Corwin','rmoore@example.net',79990763837,'6249e479dca88517bf798f59d03e923cb273147c'),(24,'Duncan','Krajcik','ryley.conroy@example.com',79810559013,'f9aeeb5087191f41e0c703b11eaea8735610f3fe'),(25,'Bruce','Koss','maya36@example.org',79733548258,'f02a3062b72f11164e327ed5cd4568121e37061e'),(26,'Hallie','Jaskolski','pascale.fisher@example.com',79274550250,'19b6c0aec0c6ccd3472577fbee726ca0d6569191'),(27,'Glenda','Nitzsche','ortiz.aubrey@example.net',79316992901,'14f5f8fcf2ec7f787983871bdd99b3ecd185a8f4'),(28,'Audie','Gleichner','hand.lois@example.com',79316354483,'4e26fe96f884df0b31bc8bba5b19c18ec8f5b4f9'),(29,'Makenna','Schumm','isom.hoppe@example.com',79165479794,'78c6366eee977f5bc60e43f1d1e3fd126a496149'),(30,'Claudie','Torp','bernier.watson@example.org',79083678364,'c574f18a816eb77b5068e2986331cf64e89e800a'),(31,'Yazmin','Schimmel','balistreri.leda@example.com',79183318447,'8a55e7296d875fe47fd829705a671a92d0207019'),(32,'Chet','Dickinson','magdalena21@example.com',79108988953,'7299df6281b1523d8d6ca7a74478ec683cbff9ca'),(33,'Wilfred','Huel','raynor.viviane@example.org',79782220814,'01d6e7179bbe8feeadcbdfa7881054f45c917174'),(34,'Gerda','Goodwin','rrunolfsson@example.org',79400725563,'606ce986f64ce449d7e43dfbea80962d6531f5a7'),(35,'Rahsaan','O\'Reilly','orn.alejandrin@example.org',79332532916,'efda0e1a26904b0f33b9d9f6dabc76c30615991b'),(36,'Rubie','Lesch','thelma17@example.org',79766724110,'93f130131417d1c1cc8dc8a25431b5da2ffd9533'),(37,'Gust','Erdman','gibson.glenda@example.com',79568550985,'fd90c1c37db2ba7f984c018287770ec706bc9513'),(38,'Xzavier','Schmitt','hbednar@example.org',79588883334,'90b644b39c34efd4854c01408515f9f6ba5bdf4d'),(39,'Solon','Hansen','kenton.graham@example.com',79057699687,'621bd9af8f663a57a103a8d2c1e31d254a4dc076'),(40,'Hester','Koss','phoebe19@example.org',79160393417,'80a2bb9eb83654a1b3bc34042242302177e58da8'),(41,'Jessie','Aufderhar','jdouglas@example.com',79979280171,'483e8122ebc42ac9e9c7b828b908afac06633c2b'),(42,'Frida','Ondricka','justine.shanahan@example.com',79178266101,'8a80c24de8d9985f5b78ab2395ad4205db2bf7f4'),(43,'Faye','Raynor','lward@example.org',79463243588,'001e9aeae7aa22295ab60601be93228d251441ed'),(44,'Jadon','Koch','pkoelpin@example.com',79574217045,'89b09b6e10a39904f9508b4823cec3d88762cef7'),(45,'Jon','Koss','audreanne.johns@example.org',79986240850,'c306260bb3c37703d1f45fb9b387d6956dbe9f69'),(46,'Robert','Graham','hoppe.dannie@example.org',79167203225,'9587139c70c76417da89d14d219b94926224628c'),(47,'Russel','Marvin','alene09@example.net',79076171255,'b97e897af78b520cf7766a739488e208f62811d3'),(48,'Kaycee','Abshire','huels.violet@example.net',79931220815,'93ea7acee768606763dafd6fef39037395ea2ba6'),(49,'Macy','Shields','zblock@example.org',79795319458,'912f45b6a5e860e5ad6e34bb09b4ffcb23c59c9b'),(50,'Josh','Berge','leffler.horace@example.org',79206893665,'ed9ec91e5ebcbeac47462228ef7d073afabf342a'),(51,'Francisca','Roob','levi05@example.net',79879634372,'e296df88811e947153849327d15c90b3df478be1'),(52,'Ena','Bruen','isaiah.white@example.org',79888552240,'708c137dc89695c0d6a3d6dc98bf4be656cff0ab'),(53,'Toney','Hansen','schumm.josh@example.org',79006969274,'f885e9bd3b1a0e01269af002d3d8ec386fe1e806'),(54,'Wilma','Schulist','janae08@example.org',79143033509,'a289fa017c86a4bc8be90ea0e5672fc95356d223'),(55,'Jaden','Abbott','maybelle64@example.org',79364611354,'29f083c57e2678d1f474c39071d37237bcaf9d56'),(56,'Sarina','Ledner','lessie80@example.net',79940418884,'f6a00b3beb9f05afe91769b01b319df43ef291c6'),(57,'Clementina','Maggio','gideon.mitchell@example.com',79239494458,'1ecf12ec093b40c5ba075a13a7c1aa40c1a0d235'),(58,'Autumn','Mertz','towne.noe@example.net',79721741983,'61b091353b87b00696dff39a64a0c9350605b0ba'),(59,'Dejah','Nitzsche','lance.dickinson@example.net',79103498031,'d8407a4640b3efac39f384a1aa0e228c86b44152'),(60,'Dannie','Walter','duncan37@example.org',79344416036,'646839408ff33250d42cbac3362246c8f5603d3f'),(61,'Bettye','Haley','qboehm@example.com',79868371979,'29c0d4fefb2def3b152ed9be18d3c749f4318960'),(62,'Terrell','Cole','rebecca37@example.com',79648739636,'5b2a2c1ec0263e60cd34ccea6390b3059daf57e5'),(63,'Macy','Heller','guiseppe29@example.org',79010269163,'e007a7e920dec8a7ee5fe71d5d2b1cf92ee4bb88'),(64,'Aisha','Prohaska','verna68@example.com',79506308247,'2214e3ca367d771468e81d8d48dc662cc99028ac'),(65,'Charlene','Kuphal','bertha96@example.net',79429230906,'cef834c4a2634ed237beb31fb879593256becc2d'),(66,'Aliyah','Kshlerin','andreane39@example.com',79278229048,'134da7610b78b524b2544176367d27c565aa3941'),(67,'Mohamed','Homenick','mcasper@example.org',79430611134,'fb6ed090b4ed9d78503e9754dd18c67cf2fdf4dc'),(68,'Hosea','Keebler','imelda.stracke@example.net',79480052222,'45a71b46727ca192abb62b148c0dbddafca67d6d'),(69,'Joshuah','Lesch','bertram64@example.com',79821457714,'ffcc259353839edf1b68d20d720458e6b841ec81'),(70,'Audrey','Torp','ratke.spencer@example.net',79865661716,'1c5b83fcaec31336c07b4997da475d197f50c8e8'),(71,'Rebeca','Lehner','conn.dion@example.com',79199459935,'d6739cad6564f96cafd9911f74b3e32a5bb5037f'),(72,'Walton','Klocko','alexandrine42@example.net',79044036862,'4f43428371d08a1ef6cdba17e62d78344664642f'),(73,'Zula','Leffler','roxanne.grady@example.com',79081145902,'47e23b6a4761a8460951e06db1f9f935e440588e'),(74,'Concepcion','Crona','nelda.reinger@example.org',79724151928,'a8579612511cb317c09672d2756b9eb751af1d03'),(75,'Elizabeth','Moen','odessa.o\'hara@example.com',79334462414,'a58c3dfa50230c4538f9e3e978578321d5070ae4'),(76,'Columbus','Cummerata','herman.cormier@example.org',79634748663,'7464288d750ed865027054c1ae3342179638f241'),(77,'Edison','Carter','gottlieb.athena@example.org',79319085577,'95d90c507637750217d2b012bcdb6f2064d31098'),(78,'Floyd','Blanda','gerry.gulgowski@example.net',79137789332,'7258fba1a3c040158911ecf10a3a7609788cfa69'),(79,'Jonathon','Langworth','oroob@example.net',79284503475,'ecffae2b0cbd44b87d60ee2f576ebf69463eb986'),(80,'Rosendo','Schmidt','robin.aufderhar@example.com',79209415916,'a523853b06a6f2fe1b625f2b822f1f3d59be5086'),(81,'Danial','Lesch','dudley.osinski@example.net',79257544813,'d007afe383fcd6ab96958c7fbbc20b5e4d3bbcb2'),(82,'Montana','Larson','bwiegand@example.org',79523397166,'7b53d5c78f3c28a4950edcbb470e21d09a8dad05'),(83,'Luis','Abernathy','cassin.ray@example.net',79339098658,'ea4ca8bde34d4f9b29789d28acf628381335befe'),(84,'Lydia','Barrows','june.mueller@example.org',79109826734,'87ea392ad213b0de8c301a27f97d3ed154b478ce'),(85,'Rebeka','Schowalter','libby15@example.net',79038588335,'1e62ed9060cc45c6c72d914cba174cce098f4924'),(86,'Vanessa','Cronin','xbins@example.com',79826195594,'2e3c6e18ad53d0821c09ae60a1a45c89b247acd3'),(87,'Demario','Feil','urutherford@example.com',79791428484,'9842fefd31aa429130081f1d8851e894298cb585'),(88,'Domenico','Rolfson','bosco.rico@example.org',79678070011,'ca692cd0f488e975f681bf49e06848f5d4092849'),(89,'Kailyn','Spencer','towne.jasen@example.com',79205349625,'c059542a660ab5980a78d50c1f9918de081bfba3'),(90,'Sigmund','Eichmann','eric82@example.net',79434968441,'ebbdf1e59eed7bdb3bc2173c77427950a45b6fa6'),(91,'Raegan','Wehner','gbeer@example.net',79122184937,'5afdf2ece5ba015260efb924daf841d8ce207dc9'),(92,'Jody','Buckridge','alden38@example.net',79414725611,'6cb89d2e36c864ea5505bae15439dec70fdef2bf'),(93,'Madisyn','Dicki','hvandervort@example.org',79967009283,'6ba9be6e80896e88f1127c175a8a316af0afe580'),(94,'Zena','Metz','reed.murphy@example.org',79922052984,'d269284a7eb121ec802460e85769fd235c20f9bb'),(95,'Kallie','Veum','bernier.rae@example.org',79564354869,'f78aa18901b123446738e20ec657b690476baf9d'),(96,'Krista','Konopelski','mose52@example.net',79464378489,'c0bc00f58b3919ee77bfce1129cbbc9151305842'),(97,'Britney','Streich','oquigley@example.org',79029681405,'be48357473ab9e97305e2527d1252c34d5c6d98b'),(98,'Amir','Hettinger','labadie.anibal@example.com',79934735820,'51fdd2a385bac9deff0f6da30464ada6960128b0'),(99,'Nova','Nader','brooks.barton@example.net',79661226402,'b4ab3dfc3584fb0e0b08479c3798c0ae0a7c37fc'),(100,'Vance','Ondricka','bernice62@example.net',79935718830,'8624a84ae5314f206153cc98964c54f4c8e6dc0b');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_communites`
--

DROP TABLE IF EXISTS `users_communites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_communites` (
  `communites_id` int unsigned NOT NULL,
  `users_id` int unsigned NOT NULL,
  PRIMARY KEY (`communites_id`,`users_id`),
  KEY `fk_users_communites_communites1_idx` (`communites_id`),
  KEY `fk_users_communites_users1_idx` (`users_id`),
  CONSTRAINT `fk_users_communites_communites1` FOREIGN KEY (`communites_id`) REFERENCES `communites` (`id`),
  CONSTRAINT `fk_users_communites_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_communites`
--

LOCK TABLES `users_communites` WRITE;
/*!40000 ALTER TABLE `users_communites` DISABLE KEYS */;
INSERT INTO `users_communites` VALUES (1,1),(1,2),(1,3),(1,4),(1,6),(1,7),(1,9),(1,10),(1,11),(1,13),(1,15),(1,17),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,30),(1,32),(1,33),(1,34),(1,36),(1,39),(1,40),(1,41),(1,42),(1,43),(1,44),(1,45),(1,46),(1,47),(1,48),(1,49),(1,50),(1,51),(1,52),(1,54),(1,55),(1,56),(1,57),(1,59),(1,64),(1,65),(1,68),(1,70),(1,71),(1,72),(1,74),(1,75),(1,77),(1,78),(1,80),(1,83),(1,84),(1,86),(1,87),(1,89),(1,90),(1,92),(1,93),(1,94),(1,95),(1,96),(1,97),(1,99),(1,100),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,9),(2,10),(2,11),(2,13),(2,14),(2,15),(2,16),(2,17),(2,18),(2,19),(2,20),(2,21),(2,22),(2,24),(2,25),(2,26),(2,28),(2,29),(2,30),(2,32),(2,37),(2,38),(2,39),(2,40),(2,41),(2,44),(2,45),(2,47),(2,48),(2,50),(2,51),(2,52),(2,53),(2,55),(2,57),(2,58),(2,59),(2,61),(2,62),(2,63),(2,64),(2,66),(2,72),(2,74),(2,75),(2,76),(2,81),(2,83),(2,85),(2,88),(2,90),(2,91),(2,92),(2,93),(2,94),(2,95),(2,96),(2,98),(2,99),(3,3),(3,4),(3,6),(3,7),(3,8),(3,11),(3,12),(3,14),(3,17),(3,18),(3,20),(3,21),(3,23),(3,24),(3,25),(3,27),(3,29),(3,30),(3,31),(3,32),(3,35),(3,36),(3,38),(3,40),(3,43),(3,44),(3,45),(3,46),(3,48),(3,49),(3,50),(3,51),(3,55),(3,57),(3,58),(3,60),(3,63),(3,64),(3,65),(3,66),(3,68),(3,70),(3,71),(3,72),(3,75),(3,76),(3,77),(3,79),(3,80),(3,81),(3,83),(3,84),(3,88),(3,91),(3,92),(3,96),(3,97),(3,98),(3,99),(4,1),(4,2),(4,3),(4,5),(4,6),(4,9),(4,10),(4,11),(4,12),(4,13),(4,14),(4,16),(4,18),(4,19),(4,22),(4,26),(4,27),(4,28),(4,29),(4,30),(4,33),(4,34),(4,35),(4,38),(4,39),(4,40),(4,42),(4,43),(4,48),(4,52),(4,54),(4,55),(4,57),(4,59),(4,60),(4,61),(4,64),(4,66),(4,67),(4,68),(4,69),(4,70),(4,75),(4,80),(4,81),(4,82),(4,83),(4,84),(4,87),(4,89),(4,95),(4,96),(4,97),(4,99),(4,100),(5,1),(5,5),(5,6),(5,7),(5,8),(5,11),(5,12),(5,14),(5,15),(5,16),(5,17),(5,19),(5,22),(5,26),(5,27),(5,28),(5,32),(5,33),(5,34),(5,36),(5,38),(5,41),(5,43),(5,47),(5,48),(5,49),(5,50),(5,51),(5,52),(5,54),(5,55),(5,58),(5,59),(5,62),(5,63),(5,64),(5,65),(5,67),(5,68),(5,70),(5,71),(5,73),(5,74),(5,77),(5,78),(5,80),(5,81),(5,87),(5,89),(5,91),(5,93),(5,94),(5,96),(5,97),(5,100),(6,1),(6,2),(6,4),(6,6),(6,7),(6,8),(6,10),(6,11),(6,12),(6,13),(6,14),(6,15),(6,16),(6,18),(6,19),(6,20),(6,21),(6,22),(6,23),(6,26),(6,28),(6,30),(6,32),(6,33),(6,36),(6,37),(6,40),(6,44),(6,45),(6,47),(6,49),(6,50),(6,51),(6,52),(6,53),(6,55),(6,56),(6,57),(6,60),(6,61),(6,63),(6,66),(6,67),(6,68),(6,70),(6,71),(6,72),(6,74),(6,76),(6,77),(6,78),(6,80),(6,83),(6,84),(6,86),(6,89),(6,90),(6,93),(6,94),(6,95),(6,97),(6,98),(7,1),(7,5),(7,7),(7,8),(7,9),(7,10),(7,13),(7,14),(7,16),(7,17),(7,18),(7,20),(7,21),(7,22),(7,23),(7,25),(7,26),(7,27),(7,31),(7,33),(7,35),(7,38),(7,39),(7,40),(7,43),(7,44),(7,45),(7,46),(7,47),(7,48),(7,49),(7,50),(7,51),(7,52),(7,53),(7,54),(7,55),(7,56),(7,57),(7,58),(7,60),(7,62),(7,63),(7,64),(7,67),(7,68),(7,70),(7,72),(7,73),(7,74),(7,75),(7,76),(7,77),(7,78),(7,80),(7,81),(7,82),(7,84),(7,86),(7,87),(7,88),(7,89),(7,90),(7,91),(7,93),(7,95),(7,96),(7,97),(7,98),(7,99),(8,1),(8,3),(8,4),(8,5),(8,6),(8,7),(8,8),(8,9),(8,10),(8,11),(8,12),(8,14),(8,16),(8,17),(8,19),(8,20),(8,21),(8,22),(8,23),(8,24),(8,26),(8,27),(8,30),(8,31),(8,33),(8,35),(8,36),(8,37),(8,38),(8,40),(8,42),(8,46),(8,47),(8,48),(8,49),(8,50),(8,51),(8,52),(8,53),(8,54),(8,55),(8,56),(8,59),(8,60),(8,61),(8,62),(8,63),(8,65),(8,66),(8,67),(8,68),(8,69),(8,70),(8,72),(8,73),(8,75),(8,76),(8,77),(8,78),(8,79),(8,84),(8,85),(8,86),(8,87),(8,89),(8,90),(8,91),(8,92),(8,93),(8,96),(8,97),(8,98),(9,2),(9,3),(9,4),(9,5),(9,6),(9,8),(9,9),(9,11),(9,12),(9,13),(9,14),(9,15),(9,17),(9,18),(9,20),(9,21),(9,22),(9,23),(9,25),(9,26),(9,27),(9,28),(9,30),(9,32),(9,33),(9,34),(9,35),(9,36),(9,39),(9,41),(9,42),(9,43),(9,44),(9,45),(9,48),(9,50),(9,51),(9,52),(9,54),(9,55),(9,57),(9,58),(9,60),(9,63),(9,65),(9,66),(9,67),(9,68),(9,69),(9,70),(9,72),(9,73),(9,75),(9,77),(9,78),(9,82),(9,84),(9,88),(9,90),(9,92),(9,94),(9,96),(9,97),(9,100),(10,1),(10,6),(10,7),(10,9),(10,11),(10,12),(10,13),(10,15),(10,16),(10,17),(10,18),(10,19),(10,20),(10,22),(10,23),(10,24),(10,26),(10,27),(10,29),(10,30),(10,33),(10,34),(10,37),(10,38),(10,40),(10,43),(10,44),(10,45),(10,46),(10,50),(10,52),(10,53),(10,54),(10,57),(10,60),(10,62),(10,66),(10,67),(10,70),(10,71),(10,74),(10,77),(10,78),(10,79),(10,83),(10,84),(10,85),(10,86),(10,87),(10,89),(10,90),(10,95),(10,97),(10,98),(10,99),(10,100);
/*!40000 ALTER TABLE `users_communites` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-12 21:18:13
