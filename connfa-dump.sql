CREATE DATABASE  IF NOT EXISTS `homestead` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `homestead`;
-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: localhost    Database: homestead
-- ------------------------------------------------------
-- Server version	5.6.25

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
-- Table structure for table `event_levels`
--

DROP TABLE IF EXISTS `event_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_levels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` double(8,2) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_levels`
--

LOCK TABLES `event_levels` WRITE;
/*!40000 ALTER TABLE `event_levels` DISABLE KEYS */;
INSERT INTO `event_levels` VALUES (1,'Beginner',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(2,'Intermediate',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(3,'Advanced',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27');
/*!40000 ALTER TABLE `event_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_speaker`
--

DROP TABLE IF EXISTS `event_speaker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_speaker` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` int(10) unsigned NOT NULL,
  `speaker_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_id` (`event_id`),
  KEY `speaker_id` (`speaker_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_speaker`
--

LOCK TABLES `event_speaker` WRITE;
/*!40000 ALTER TABLE `event_speaker` DISABLE KEYS */;
INSERT INTO `event_speaker` VALUES (1,1,40,NULL,NULL),(2,2,23,NULL,NULL),(3,3,15,NULL,NULL),(4,4,38,NULL,NULL),(5,5,48,NULL,NULL),(6,6,26,NULL,NULL),(7,7,33,NULL,NULL),(8,8,41,NULL,NULL),(9,9,47,NULL,NULL),(10,10,34,NULL,NULL),(11,11,21,NULL,NULL),(12,12,11,NULL,NULL),(13,13,46,NULL,NULL),(14,14,34,NULL,NULL),(15,15,43,NULL,NULL),(16,16,26,NULL,NULL),(17,17,2,NULL,NULL),(18,18,33,NULL,NULL),(19,19,40,NULL,NULL),(20,20,21,NULL,NULL),(21,21,3,NULL,NULL),(22,22,38,NULL,NULL),(23,23,15,NULL,NULL),(24,24,13,NULL,NULL),(25,25,19,NULL,NULL),(26,26,3,NULL,NULL),(27,27,45,NULL,NULL),(28,28,12,NULL,NULL),(29,29,41,NULL,NULL),(30,30,48,NULL,NULL),(31,31,12,NULL,NULL),(32,32,21,NULL,NULL),(33,33,24,NULL,NULL),(34,34,15,NULL,NULL),(35,35,27,NULL,NULL),(36,36,17,NULL,NULL),(37,37,10,NULL,NULL),(38,38,26,NULL,NULL),(39,39,30,NULL,NULL),(40,40,2,NULL,NULL),(41,41,11,NULL,NULL),(42,42,27,NULL,NULL),(43,43,27,NULL,NULL),(44,44,34,NULL,NULL),(45,45,15,NULL,NULL),(46,46,18,NULL,NULL),(47,47,37,NULL,NULL),(48,48,38,NULL,NULL),(49,49,36,NULL,NULL),(50,50,39,NULL,NULL),(51,53,1,NULL,NULL),(52,54,50,NULL,NULL),(53,55,49,NULL,NULL),(54,58,33,NULL,NULL),(55,59,20,NULL,NULL),(56,60,19,NULL,NULL),(57,63,20,NULL,NULL),(58,64,19,NULL,NULL),(59,65,19,NULL,NULL);
/*!40000 ALTER TABLE `event_speaker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_tracks`
--

DROP TABLE IF EXISTS `event_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_tracks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` double(8,2) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_tracks`
--

LOCK TABLES `event_tracks` WRITE;
/*!40000 ALTER TABLE `event_tracks` DISABLE KEYS */;
INSERT INTO `event_tracks` VALUES (1,'Business',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(2,'Drupal Showcase',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(3,'Coding and Development',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(4,'Community Keynote',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(5,'Core Conversations',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(6,'DevOps',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(7,'Drupal.org',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(8,'Front End',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(9,'Horizons',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(10,'PHP',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(11,'Project Management',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(12,'Site Building',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(13,'Symfony',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(14,'UX',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27');
/*!40000 ALTER TABLE `event_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_types`
--

DROP TABLE IF EXISTS `event_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` double(8,2) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_types`
--

LOCK TABLES `event_types` WRITE;
/*!40000 ALTER TABLE `event_types` DISABLE KEYS */;
INSERT INTO `event_types` VALUES (1,'Speech','',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(2,'Speech of day','',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(3,'Coffee break','',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(4,'Lunch','',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(5,'24h','',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(6,'Group','',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(7,'Walking','',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(8,'Registration','',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(9,'Free slot','',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(10,'None','',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27');
/*!40000 ALTER TABLE `event_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `start_at` datetime NOT NULL,
  `end_at` datetime NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `place` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level_id` int(10) unsigned DEFAULT NULL,
  `type_id` int(10) unsigned DEFAULT NULL,
  `track_id` int(10) unsigned DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `event_type` enum('session','bof','social') COLLATE utf8_unicode_ci NOT NULL,
  `order` double(8,2) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (3,'2016-07-20 19:58:38','2016-07-20 20:52:45','Possimus reprehenderit dolores consequuntur dignissimos recusandae ut. Est maiores laborum aut excepturi vel. Quis sed aut ullam aut. Ut expedita praesentium omnis tenetur occaecati voluptas quo.','Ratione non magnam.','8847 Nina Trace\nWaltonbury, AK 80188','33892',3,6,1,'https://www.metz.biz/qui-quia-pariatur-est-quaerat','social',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(4,'2016-07-20 06:28:43','2016-07-20 10:55:06','Est et ut aliquam exercitationem aut culpa corrupti. Quia nihil ab omnis rem. Cupiditate commodi voluptates voluptatum mollitia.','Quis totam molestias blanditiis.','144 Beatty Roads Apt. 591\nEliseochester, KS 47005-5264',NULL,2,5,10,'http://www.lynch.com/sint-nihil-repudiandae-eum-dignissimos-nam.html','social',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(5,'2016-07-21 21:19:32','2016-07-21 23:11:41','Sunt unde occaecati quis deleniti aut delectus corrupti ut. Sint dolores dicta voluptatum nesciunt dolores ipsa culpa. Quaerat minima ea eligendi quia.','Molestiae dolore ducimus omnis.','250 Herzog Bypass Apt. 941\nKarellemouth, KY 89395-8371',NULL,3,10,8,'http://glover.biz/quidem-consectetur-est-et.html','bof',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(7,'2016-07-21 19:12:13','2016-07-21 20:32:07','Dolores commodi corrupti ut est et. Itaque et voluptas eveniet iure voluptatibus et dolorem unde. Modi vel aut dolor suscipit error.','Optio esse.','13404 Nyasia Green Apt. 439\nLake Coraborough, MN 83874',NULL,3,2,10,'http://www.gerlach.org/alias-et-officiis-nihil-beatae-atque-amet-provident','social',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(8,'2016-07-21 16:45:53','2016-07-21 21:45:23','Ipsum minus nemo modi similique qui et. Nihil neque et quia ipsam. Enim odit eveniet cum earum optio reiciendis dolores.','Deserunt ipsa dolor.','873 Caden Coves\nWest Bonnie, IA 79705','858583',2,10,14,'http://www.anderson.info/maxime-eligendi-sed-qui-temporibus-tempora.html','bof',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(10,'2016-07-22 01:31:37','2016-07-22 06:55:31','Aspernatur atque est saepe. Nemo qui aliquam cupiditate asperiores rerum. Sed illum dolorem placeat rem earum eos. Et possimus expedita et eum cupiditate at.','Fuga iste aperiam vel.','223 Janae Lock Apt. 070\nEast Evanton, DE 16764',NULL,2,2,12,'http://jacobs.com/','social',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(11,'2016-07-20 00:34:13','2016-07-20 07:47:59','Sunt quis facilis quos beatae. Voluptas fuga dolor eos qui. Perspiciatis vel omnis pariatur nemo. Voluptas vel amet pariatur dolor ut sint.','Officiis eum.','510 Goyette Viaduct Apt. 941\nHauckchester, GA 04633-2759','86',2,1,14,'http://www.koch.com/rerum-explicabo-id-debitis-est-est-ipsa-quo','social',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(12,'2016-07-21 14:04:35','2016-07-21 16:55:55','Et consectetur quos voluptas laudantium porro quasi. Quo quisquam eum corrupti eveniet quo et laboriosam. Itaque temporibus excepturi quae deserunt velit consequatur.','Repellendus blanditiis rerum ipsa.','414 Hettinger Inlet\nWest Bessiefurt, IA 48373','3386',3,3,1,'http://hoeger.com/autem-alias-consequatur-dolor-maxime','bof',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(14,'2016-07-20 04:51:32','2016-07-20 06:59:14','Dolores illo in quidem excepturi nobis. Necessitatibus laudantium consequuntur animi sit porro similique. Sed exercitationem rem et quisquam.','Nemo reiciendis nobis.','194 River Streets Suite 746\nNorth Marielle, DC 85940','4287',3,4,6,'http://goldner.com/','social',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(15,'2016-07-22 06:31:00','2016-07-22 12:47:28','Atque qui accusamus ullam magni optio. Accusantium officiis minima deserunt. Eveniet provident vel amet.','Rerum iste omnis.','15025 Schuster Square Apt. 901\nEast Rachellefort, MT 26888',NULL,1,1,7,'https://gibson.com/modi-itaque-consequatur-quaerat-saepe-sunt.html','bof',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(16,'2016-07-20 23:01:08','2016-07-21 00:24:09','Odit atque voluptatibus ex eius quidem minus. Ipsum at vero autem dolores quae. Sit soluta aliquid voluptate.','Quia repudiandae doloribus accusantium.','7926 Weber Creek Apt. 816\nSouth Eloy, WI 63555-9848',NULL,1,9,11,'http://yundt.com/fugiat-eaque-soluta-voluptas-explicabo-aut-quasi-facilis-perspiciatis.html','social',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(17,'2016-07-19 22:23:39','2016-07-20 00:57:17','Fugit quos quidem sed et quisquam laborum sit fugiat. Et architecto dolor asperiores ipsum ea. Et sed tempore in.','Consequatur non tempora.','515 Collier Gardens Suite 002\nLaurencefurt, MO 86600-2712',NULL,2,5,1,'http://daugherty.info/molestias-quis-laudantium-ex-quaerat-quaerat-consequatur-quia','bof',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(18,'2016-07-21 19:57:51','2016-07-22 02:21:59','Et sit quia voluptate voluptatum. Tempora fuga asperiores dolor est qui aut. Perferendis in perspiciatis nam illo a.','Consequatur aspernatur alias.','841 Chelsea Corner\nInesstad, CT 27554-4529',NULL,3,4,13,'http://boyer.org/quia-odio-placeat-ad.html','social',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(19,'2016-07-22 02:14:21','2016-07-22 04:12:21','Sunt quam et odio sapiente. Ipsam commodi repudiandae hic voluptas autem ullam quo.','Nihil sit qui.','4699 Runte Lock\nLolaland, KY 29139',NULL,2,10,2,'http://www.hickle.org/iure-incidunt-asperiores-id-et-aut','bof',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(21,'2016-07-20 15:47:57','2016-07-20 20:06:33','Impedit reiciendis est aut cupiditate consectetur. Nobis suscipit exercitationem dolor autem eos fuga voluptatem est. Dolores blanditiis et dolor iste quia eos ipsum quidem.','Doloremque laudantium commodi.','1847 Gordon Burg\nBoydview, GA 04672','55359',3,3,8,'http://jacobson.org/','bof',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(23,'2016-07-19 14:32:13','2016-07-19 21:25:12','Recusandae suscipit sed nemo sit voluptatibus nisi est ipsum. Eaque autem fugit earum. Ullam et fuga officia numquam qui itaque est. Nostrum hic repellat aut alias vel mollitia voluptas magni.','Incidunt et ea suscipit.','1144 Fay Isle Suite 012\nNew Khalidview, KS 34573-1564',NULL,2,5,4,'https://rogahn.com/quos-sunt-sint-voluptatibus-numquam-asperiores.html','social',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(24,'2016-07-20 21:26:42','2016-07-21 04:01:23','Ad reprehenderit distinctio nihil error in velit accusantium. Itaque dolorum consequatur ipsum quisquam perspiciatis. Illum consequatur ullam distinctio nihil quisquam earum.','Totam vero placeat id.','1109 Bogisich Gateway\nLuisstad, KY 80853',NULL,3,2,8,'https://www.becker.com/officia-rerum-qui-blanditiis-nostrum-sit','social',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(25,'2016-07-20 17:09:29','2016-07-20 17:49:03','Eligendi recusandae dolorum odit iure eos. Totam quidem porro accusamus repellat ex et. Consequatur quas dolores tempore vel sint vitae nesciunt.','Alias eligendi aliquam occaecati.','7819 Madaline Island Apt. 439\nSouth Claud, VT 48651-2707',NULL,1,3,12,'http://www.turcotte.net/consequatur-quis-dignissimos-id-sit.html','bof',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(26,'2016-07-21 14:23:03','2016-07-21 16:31:34','Architecto amet quam sint est ut. Occaecati et sint ab est. Asperiores quia quasi quidem fuga iusto. Voluptas suscipit eum at.','Eum aspernatur quibusdam alias nulla.','815 Conn Land Apt. 217\nCummingsport, WY 26602','5',1,2,8,'http://barrows.com/','social',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(28,'2016-07-19 22:33:56','2016-07-19 23:11:59','Ab cupiditate quia quis eaque in et aut. Non quia reprehenderit rerum temporibus illo ipsa quas. Ducimus sit iste aspernatur sequi. Autem aut doloribus et ea vel commodi dolor.','Provident possimus veniam.','482 Gaylord Turnpike Suite 399\nRobertton, IA 96716',NULL,1,6,4,'https://farrell.net/amet-mollitia-laborum-magnam-quibusdam-voluptate.html','bof',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(29,'2016-07-19 23:03:39','2016-07-20 03:30:42','Ut impedit et distinctio molestiae veritatis. Nisi perferendis doloribus sequi praesentium. Quia quasi vel enim dolorem.','Assumenda hic corrupti rerum.','316 Cleo Skyway Suite 120\nBreitenbergton, NE 70100-7490','311',2,10,7,'http://beier.com/quasi-veniam-nam-qui-eaque-quasi.html','bof',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(32,'2016-07-21 17:38:45','2016-07-22 01:35:13','Sunt non officia illo. Et perspiciatis voluptatem voluptates. Quia laborum sint quaerat cumque consequatur. Facilis omnis asperiores temporibus enim distinctio quo.','Et architecto.','91597 Stark Trail\nPort Jaiden, WI 58918','42746826',3,1,4,'https://schneider.com/tempora-consequuntur-minus-sit-et-temporibus.html','bof',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(33,'2016-07-19 15:00:14','2016-07-19 16:57:19','Aperiam ut perspiciatis laudantium neque et sed vel. Quo recusandae quidem consequatur sapiente. Vel et debitis quaerat rerum eaque.','Perspiciatis deleniti similique.','889 Boyer Summit Suite 078\nSouth Milanhaven, NY 37029','92131704',2,2,6,'http://www.ullrich.com/','bof',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(34,'2016-07-21 03:31:28','2016-07-21 08:17:25','Aut et laboriosam neque ut tempora rerum. Sed consequatur et similique enim veritatis. Dolore doloribus in nam quia distinctio dolor. Odit provident odit quod doloribus. Et possimus quisquam veniam.','In natus et itaque.','3988 Andres Alley Suite 068\nEast Brennan, SC 70683-6677','3534728',3,5,10,'http://schowalter.org/consectetur-debitis-fugit-id-mollitia-sed-tempore-sit.html','bof',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(35,'2016-07-21 10:31:58','2016-07-21 11:20:07','Dicta maxime culpa saepe qui ab. Explicabo alias est et non. Dicta corrupti molestias voluptatibus omnis. Et in magni sed incidunt rem sed. Optio sed quam a quidem quos.','Aut saepe dicta voluptate.','756 Zena Meadows Suite 334\nLueilwitzmouth, NH 43564',NULL,3,9,7,'http://mcclure.com/','bof',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(37,'2016-07-19 11:48:32','2016-07-19 18:34:02','Ex aut hic dignissimos ipsa. Et sed voluptas beatae.','Illo ipsa officia delectus.','193 Rosalyn Haven\nRauport, SC 40868-0909',NULL,1,6,9,'https://www.waters.biz/cum-animi-est-odit-voluptate','bof',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(39,'2016-07-21 11:24:43','2016-07-21 17:27:13','Quidem cupiditate numquam doloribus explicabo itaque est. Et voluptatem consequuntur aperiam iste voluptas nostrum. Veritatis ipsa hic iusto pariatur quis quasi sed dolores.','Sit animi est.','868 Huels Squares Apt. 403\nPort Elmoland, NH 55780-2596',NULL,2,5,8,'http://www.streich.com/doloribus-excepturi-magnam-perspiciatis-sunt-rerum-in','social',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(41,'2016-07-20 08:14:46','2016-07-20 11:03:15','Voluptas est et voluptates culpa expedita aperiam. Totam aliquam quaerat ut. Odit perspiciatis quia voluptas iure facere.','Et labore ab provident.','8605 Mayert Vista\nSouth Nicolamouth, NY 27286-3686','1',2,3,3,'http://www.gottlieb.net/','bof',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(42,'2016-07-21 10:29:18','2016-07-21 12:24:42','Quaerat molestiae occaecati voluptatem voluptas quis cumque rem. Vitae consequatur et aperiam et omnis optio soluta.','Suscipit voluptatem dolor ipsum repellat.','69980 Mayra Center Suite 744\nPort Amiestad, ND 28319-3119',NULL,1,7,3,'http://green.net/eum-alias-illum-quo','bof',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:27'),(45,'2016-07-19 16:40:49','2016-07-19 23:33:59','Vitae non eum excepturi non. Veniam expedita vitae impedit suscipit eum ut. Temporibus aperiam reiciendis animi rerum. Quia rerum quisquam officiis explicabo. Quo velit facilis enim.','Unde qui minus ex blanditiis.','1893 Mireya Cliff\nSchummfort, IN 97129',NULL,3,7,3,'http://www.grady.com/laudantium-nemo-quasi-iure-est-consequatur.html','bof',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:28'),(46,'2016-07-19 08:02:38','2016-07-19 11:18:35','Error modi rerum saepe provident delectus. Similique repellat labore iure vitae. Quia repellat dolor quaerat illo facere. Atque maxime eaque maiores itaque qui omnis voluptas.','Sed voluptatem iure officia.','21206 Lang Radial Apt. 017\nNorth Andrechester, IN 05133-7795','404027',3,6,1,'http://crist.com/quam-ea-saepe-odio-et.html','social',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:28'),(48,'2016-07-19 12:02:03','2016-07-19 12:41:07','Iste a voluptatem quia adipisci illo. Eveniet qui quaerat voluptatem rerum facere distinctio consequatur. Perspiciatis suscipit sint quam.','Occaecati ipsum consequatur.','64039 Evelyn Trace\nKeeblermouth, MN 16393',NULL,2,6,6,'http://www.bruen.com/','social',NULL,NULL,'2016-07-13 23:42:27','2016-07-13 23:42:28'),(52,'2016-07-22 08:30:00','2016-07-22 09:00:00','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','Registration','10 Bayfront Ave, Marina Bay Sands Conference Hall, 018956',NULL,NULL,8,NULL,'https://www.dbs.com.sg/','session',NULL,NULL,NULL,NULL),(53,'2016-07-22 09:00:00','2016-07-22 09:30:00','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','Conference Opening by CEO','10 Bayfront Ave, Marina Bay Sands Conference Hall, 018956',NULL,NULL,1,NULL,'https://www.dbs.com.sg/','session',NULL,NULL,NULL,NULL),(54,'2016-07-22 09:30:00','2016-07-22 11:00:00','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','DBS Journey 2016 & KPI Review','10 Bayfront Ave, Marina Bay Sands Conference Hall, 018956',NULL,NULL,1,NULL,'https://www.dbs.com.sg/','session',NULL,NULL,NULL,NULL),(55,'2016-07-22 11:00:00','2016-07-22 12:00:00','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','Future of Work by HR','10 Bayfront Ave, Marina Bay Sands Conference Hall, 018956',NULL,NULL,1,NULL,'https://www.dbs.com.sg/','session',NULL,NULL,NULL,NULL),(56,'2016-07-22 12:00:00','2016-07-22 13:30:00','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','Lunch','10 Bayfront Ave, Marina Bay Sands Conference Hall, 018956',NULL,NULL,4,NULL,'https://www.dbs.com.sg/','session',NULL,NULL,NULL,NULL),(57,'2016-07-23 08:30:00','2016-07-23 09:00:00','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','Registration','2 Changi Business Park Cres DBS Asia Hub Annex L4, 486029',NULL,NULL,8,NULL,'https://www.dbs.com.sg/','session',NULL,NULL,NULL,NULL),(58,'2016-07-23 09:00:00','2016-07-23 09:30:00','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','Conference Opening by CEO','2 Changi Business Park Cres DBS Asia Hub Annex L4, 486029',NULL,NULL,1,NULL,'https://www.dbs.com.sg/','session',NULL,NULL,NULL,NULL),(59,'2016-07-23 09:30:00','2016-07-23 11:00:00','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','DBS Journey 2016 & KPI Review','2 Changi Business Park Cres DBS Asia Hub Annex L4, 486029',NULL,NULL,1,NULL,'https://www.dbs.com.sg/','session',NULL,NULL,NULL,NULL),(60,'2016-07-23 11:00:00','2016-07-23 12:00:00','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','Future of Work by HR','2 Changi Business Park Cres DBS Asia Hub Annex L4, 486029',NULL,NULL,1,NULL,'https://www.dbs.com.sg/','session',NULL,NULL,NULL,NULL),(61,'2016-07-23 12:00:00','2016-07-23 13:30:00','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','Lunch','2 Changi Business Park Cres DBS Asia Hub Annex L4, 486029',NULL,NULL,4,NULL,'https://www.dbs.com.sg/','session',NULL,NULL,NULL,NULL),(62,'2016-07-24 08:30:00','2016-07-24 09:00:00','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','Registration','2 Changi Business Park Cres DBS Asia Hub Annex L4, 486029',NULL,NULL,8,NULL,'https://www.dbs.com.sg/','session',NULL,NULL,NULL,NULL),(63,'2016-07-24 09:00:00','2016-07-24 09:30:00','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','Conference Opening by CEO','2 Changi Business Park Cres DBS Asia Hub Annex L4, 486029',NULL,NULL,1,NULL,'https://www.dbs.com.sg/','session',NULL,NULL,NULL,NULL),(64,'2016-07-24 09:30:00','2016-07-24 11:00:00','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','DBS Journey 2016 & KPI Review','2 Changi Business Park Cres DBS Asia Hub Annex L4, 486029',NULL,NULL,1,NULL,'https://www.dbs.com.sg/','session',NULL,NULL,NULL,NULL),(65,'2016-07-24 11:00:00','2016-07-24 12:00:00','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','Future of Work by HR','2 Changi Business Park Cres DBS Asia Hub Annex L4, 486029',NULL,NULL,1,NULL,'https://www.dbs.com.sg/','session',NULL,NULL,NULL,NULL),(66,'2016-07-24 12:00:00','2016-07-24 13:30:00','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','Lunch','2 Changi Business Park Cres DBS Asia Hub Annex L4, 486029',NULL,NULL,4,NULL,'https://www.dbs.com.sg/','session',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `floors`
--

DROP TABLE IF EXISTS `floors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `floors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `floors`
--

LOCK TABLES `floors` WRITE;
/*!40000 ALTER TABLE `floors` DISABLE KEYS */;
INSERT INTO `floors` VALUES (1,'dolores','http://lorempixel.com/640/480/?16159',NULL,'2016-07-13 23:42:28','2016-07-13 23:42:28',NULL),(2,'officiis','http://lorempixel.com/640/480/?96763',NULL,'2016-07-13 23:42:28','2016-07-13 23:42:28',NULL),(3,'itaque','http://lorempixel.com/640/480/?65134',NULL,'2016-07-13 23:42:28','2016-07-13 23:42:28',NULL);
/*!40000 ALTER TABLE `floors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` double(8,2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'DBS Asia Hub','1.3338','103.9655','2 Changi Business Park Cres, 486029',2.77,NULL,'2016-07-13 23:42:28','2016-07-13 23:42:28');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2015_08_29-192817_create_settings_table',1),('2016_05_10_121655_create_speakers_table',1),('2016_05_11_084328_create_event_types_table',1),('2016_05_11_112518_create_event_levels_table',1),('2016_05_11_121504_create_event_tracks_table',1),('2016_05_11_125741_create_events_table',1),('2016_05_13_112900_create_plans_table',1),('2016_05_13_125313_create_pages_table',1),('2016_05_13_133912_create_locations_table',1),('2016_05_13_140920_create_points_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `order` double(8,2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'et-sapiente-earum-minima-delectus-quia-laboriosam','temporibus','Cum laborum cumque aut cupiditate ut ullam qui. Quidem quia eos in odio aut. Labore voluptas accusamus voluptatibus minus. Officia quia qui quia sit nulla nihil.',6.40,NULL,'2016-07-13 23:42:28','2016-07-13 23:42:28'),(2,'sed-id-quo-esse','aut','Tempore quis ut delectus occaecati illum et aut. Id fuga et nihil. Rem aliquam quasi adipisci repellendus nihil dolorem. Autem vel nemo rerum.',9140.64,NULL,'2016-07-13 23:42:28','2016-07-13 23:42:28'),(3,'quis-earum-et-aliquam-soluta-quisquam-mollitia-ea','qui','Natus in ut a repellat saepe et libero quas. Quibusdam aut reiciendis eum non. Tempora veniam ducimus et molestias non facere repellat.',331.00,NULL,'2016-07-13 23:42:28','2016-07-13 23:42:28');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `points`
--

DROP TABLE IF EXISTS `points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `points` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` double(8,2) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `points`
--

LOCK TABLES `points` WRITE;
/*!40000 ALTER TABLE `points` DISABLE KEYS */;
INSERT INTO `points` VALUES (1,'modi','Voluptas nam exercitationem tempora maiores soluta. Voluptate commodi velit possimus aperiam accusamus quia enim. Nesciunt aperiam deleniti hic voluptas eveniet. Et nulla perspiciatis et voluptatum.','http://lorempixel.com/640/480/?37613','http://www.cassin.com/ut-rerum-dolorem-at-natus-officiis-magnam-ipsum-tenetur',NULL,NULL,'2016-07-13 23:42:28','2016-07-13 23:42:28'),(2,'reiciendis','Et asperiores molestiae eius corrupti. Eos consequatur aut nihil tempore iste doloremque alias. Reiciendis tempora voluptas eius nam saepe.','http://lorempixel.com/640/480/?53081','http://www.ziemann.org/velit-ab-vitae-quam-nobis-similique-dolor',NULL,NULL,'2016-07-13 23:42:28','2016-07-13 23:42:28'),(3,'exercitationem','Perferendis ullam sint est quae. Iusto natus quibusdam tenetur inventore sint. Eum dolore occaecati aut vero pariatur occaecati. Molestiae et at voluptatem ut veniam.','http://lorempixel.com/640/480/?15912','http://thompson.com/sunt-quis-pariatur-officiis-et.html',NULL,NULL,'2016-07-13 23:42:28','2016-07-13 23:42:28'),(4,'quos','Ratione nihil sit omnis ipsa omnis perferendis dicta. Dolore cum voluptatum sint. Similique soluta magnam sit architecto.','http://lorempixel.com/640/480/?74761','https://www.grimes.com/facere-id-nisi-est-voluptatem-id-et-vero',NULL,NULL,'2016-07-13 23:42:28','2016-07-13 23:42:28'),(5,'architecto','Voluptas dolores aliquid cumque eaque nobis. Est magni laudantium similique illo voluptas quia porro. Veniam quod in quia nisi.','http://lorempixel.com/640/480/?71186','http://www.hahn.com/doloremque-qui-architecto-non-in-voluptatum-qui.html',NULL,NULL,'2016-07-13 23:42:28','2016-07-13 23:42:28');
/*!40000 ALTER TABLE `points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,NULL,'titleMajor','Leadership',NULL,'2016-07-13 23:42:28','2016-07-13 23:42:28'),(2,NULL,'titleMinor','Conference 2016',NULL,'2016-07-13 23:42:28','2016-07-13 23:42:28'),(3,NULL,'twitterWidget','<!DOCTYPE html>\n<html lang=\"en\">\n\n<meta charset=\"UTF-8\">\n\n\n\n<a class=\"twitter-timeline\" href=\"https://twitter.com/hashtag/drupalcon\" data-widget-id=\"545145564770615297\">#drupalcon Tweets\n\n\n',NULL,'2016-07-13 23:42:28','2016-07-13 23:42:28'),(4,NULL,'twitterSearchQuery','#drupalcon',NULL,'2016-07-13 23:42:28','2016-07-13 23:42:28'),(5,NULL,'timezone','Asia/Singapore',NULL,'2016-07-13 23:42:28','2016-07-13 23:42:28');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speakers`
--

DROP TABLE IF EXISTS `speakers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `speakers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `characteristic` text COLLATE utf8_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speakers`
--

LOCK TABLES `speakers` WRITE;
/*!40000 ALTER TABLE `speakers` DISABLE KEYS */;
INSERT INTO `speakers` VALUES (1,'Reilly','Wyman','Iste modi mollitia excepturi error qui repellendus eius. Possimus sunt blanditiis nostrum. Quibusdam quo voluptatem enim officia.','Engine Assembler','Jacobs-Haley','@ethyl41','http://wiza.net/aspernatur-quaerat-consectetur-quidem-corporis','http://lorempixel.com/640/480/?34787','ruecker.marianna@example.com',264.91,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(2,'Mollie','Greenholt','Iusto natus nemo ullam at. Ex optio adipisci molestiae magnam vel illum. Aut quam corporis ad accusamus molestiae rerum ducimus. Perspiciatis dolorem natus dolor et esse neque.','Detective','Skiles-Jenkins','@ottilie07','http://www.roberts.com/','http://lorempixel.com/640/480/?46524','cheyenne99@example.org',2.62,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(3,'Colin','Orn','Est ut ut iure culpa non cum accusantium est. Aut molestias sunt iusto sequi nemo. Et distinctio ullam libero nostrum est.','Substance Abuse Social Worker','Botsford, Murray and Morar','@yvette75','http://www.medhurst.com/','http://lorempixel.com/640/480/?83500','giles.rath@example.org',0.91,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(4,'Hunter','Daniel','Eos et voluptatem quia est. Nam a qui dolores ut consequatur sint eum. Perferendis voluptatem architecto voluptatum modi aperiam ea placeat ut.','Storage Manager OR Distribution Manager','Dickinson, Reichel and Hartmann','@kstracke','http://quitzon.com/excepturi-consequatur-et-amet-nam','http://lorempixel.com/640/480/?42425','hodkiewicz.carter@example.com',999999.99,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(5,'Patience','Bernier','Laboriosam sunt quis pariatur in autem quos ad iusto. Sit repellendus et similique molestias dolor. Autem molestiae fugiat porro earum numquam enim.','Personal Service Worker','Klocko Group','@abbigail.hauck','http://wyman.com/alias-dolorem-eligendi-ipsum-nihil-et','http://lorempixel.com/640/480/?52046','ebert.gunner@example.com',1.37,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(6,'Lillian','Schumm','Enim odio ex veniam. Sapiente est et omnis autem fugit. Aut saepe sit est voluptatem voluptatem molestiae illum.','Material Movers','Goldner and Sons','@streich.barrett','http://stanton.com/at-praesentium-ipsum-minus-voluptatem-consequatur.html','http://lorempixel.com/640/480/?95367','talon73@example.net',999999.99,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(7,'Loraine','Bednar','Sit aut tenetur est et delectus magnam inventore ut. Saepe nihil nihil sint officia est omnis qui. Aut aut rerum reprehenderit delectus.','Agricultural Equipment Operator','Murazik PLC','@arnaldo06','http://balistreri.com/','http://lorempixel.com/640/480/?92755','alanis52@example.org',79.87,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(8,'Fermin','Wiza','Ratione vitae et consequatur consequatur sint. Velit accusantium quisquam provident sunt error labore soluta. Delectus minima nihil quo molestiae accusamus rerum.','Social Work Teacher','Aufderhar, Marvin and Fadel','@cornelius23','http://murazik.info/sunt-debitis-tenetur-illo-animi-sed','http://lorempixel.com/640/480/?16235','edwardo62@example.com',999999.99,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(9,'Perry','Dickens','Est tenetur tenetur qui ullam. Explicabo nobis asperiores repellat deleniti iste. Nemo suscipit non officiis. Sapiente fugit assumenda et ratione odit.','Elementary School Teacher','Bergnaum, Borer and Effertz','@abernathy.gregg','http://www.kreiger.info/eligendi-doloremque-voluptate-ullam-aut-quis','http://lorempixel.com/640/480/?28241','brisa80@example.net',999999.99,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(10,'Callie','Ward','Dolores voluptas repellat ea inventore est. Et et similique nam natus eaque.','Mechanical Engineering Technician','Wiza, Hauck and Gerhold','@patience.thiel','http://kreiger.com/quas-possimus-rem-voluptatem-voluptatum','http://lorempixel.com/640/480/?92922','orlo37@example.net',0.40,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(11,'Herminio','Sauer','Saepe maiores quam eos qui. Quia nisi quia delectus. Esse nisi est ipsum vitae enim rerum nihil rerum.','Transportation Inspector','Veum, Purdy and Pfannerstill','@quitzon.kaia','http://flatley.com/quisquam-rerum-et-veniam-vero.html','http://lorempixel.com/640/480/?68445','schimmel.etha@example.net',329367.35,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(12,'Tressa','Bins','Labore sed neque eum nulla. At eaque voluptatum quam voluptatem. Excepturi non doloribus quos aut molestiae.','Segmental Paver','Willms LLC','@lilyan21','http://green.com/cumque-numquam-aut-aut-vero','http://lorempixel.com/640/480/?45616','khayes@example.net',2.20,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(13,'Myrl','Pagac','Dignissimos consequatur praesentium quas impedit et voluptatem sed. Aliquam laborum ea eaque. Sunt qui id voluptatem error voluptatem deleniti sint.','System Administrator','Moore-Weber','@ycrona','http://www.ryan.biz/deserunt-quidem-in-ea-dolor','http://lorempixel.com/640/480/?84303','magnus39@example.com',2.00,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(14,'Mekhi','Prosacco','Ut et et tempora cum repellat illo. Occaecati cum qui esse rem sit. Dolor eius modi ut aut et eum et. Iste aliquid corporis veritatis veritatis quisquam fuga sit.','Agricultural Science Technician','Thompson, Herman and Boyle','@lee45','http://www.boehm.com/qui-consequuntur-voluptatum-consequatur-ipsum-ducimus-ex-rerum','http://lorempixel.com/640/480/?45654','veronica23@example.org',999999.99,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(15,'Annabel','Gulgowski','Omnis nostrum soluta et voluptatem. Laborum ullam perspiciatis animi accusantium animi sed. Voluptatem rerum inventore ut quisquam.','Pharmacy Aide','Hansen Group','@karine84','http://www.cartwright.com/rerum-esse-quia-assumenda-enim','http://lorempixel.com/640/480/?32004','xrohan@example.com',992539.51,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(16,'Glen','Volkman','Illum ducimus itaque soluta sint temporibus id. Porro vel eos dolore tempora corporis expedita maxime. Aut sit distinctio unde ipsum sed.','Motor Vehicle Inspector','Marquardt and Sons','@wvolkman','http://schmeler.com/voluptatem-itaque-officia-maiores-fugiat-aliquid','http://lorempixel.com/640/480/?60271','marques06@example.org',549.26,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(17,'Janet','Fay','Qui voluptatem et consequatur quo. Hic itaque accusantium consequatur.\nEnim voluptates vitae est consequatur nostrum. Eligendi tempore quia ea. Enim est sed voluptas enim eius distinctio.','Food Batchmaker','Breitenberg, Gleason and Trantow','@asia10','http://www.mitchell.org/aspernatur-facere-voluptate-excepturi-quas-harum-sunt-iusto','http://lorempixel.com/640/480/?95735','yhilll@example.org',25.56,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(18,'Arne','Fritsch','Voluptatibus deleniti aut maxime non sapiente distinctio qui error. Maiores aut ea qui repellat ipsam. Voluptatem sint provident aut vel quo id. Amet saepe dolore aliquam sapiente.','Silversmith','Block-Prohaska','@gutkowski.corbin','http://bartell.org/cumque-voluptatem-repellendus-eveniet-sit','http://lorempixel.com/640/480/?78859','rocky.cummings@example.org',999999.99,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(19,'Newell','Hackett','Voluptatem aut velit possimus omnis aut. Reprehenderit aut voluptatibus ab dolor pariatur libero ullam. Sunt accusantium voluptate error omnis officiis voluptatum.','Lodging Manager','Rice-Feest','@preinger','http://www.hermann.com/laboriosam-odio-et-et.html','http://lorempixel.com/640/480/?90671','plowe@example.org',27.50,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(20,'Terrill','Keebler','Aut corporis quia ea ut quis sapiente commodi. Similique ut odit eos tempore. Impedit ea ratione nisi velit facilis. Aspernatur illo est dicta.','Police Identification OR Records Officer','Boyer-Quigley','@waelchi.murl','https://www.daniel.com/nihil-sunt-eum-fuga-cumque-qui','http://lorempixel.com/640/480/?59070','little.keenan@example.net',1705.31,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(21,'Deion','Kutch','Consequatur dolores rem enim laudantium. Omnis et deserunt sunt natus. Eius voluptas veritatis qui non voluptatum tenetur accusantium.','Oil and gas Operator','Hoeger Group','@cemmerich','http://schaefer.com/hic-autem-perspiciatis-veritatis-iusto','http://lorempixel.com/640/480/?35432','ihyatt@example.com',65897.50,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(22,'Chauncey','Hamill','Et sed exercitationem aspernatur vero est id repellendus nihil. Qui ut voluptas et quis. Modi est temporibus voluptatum voluptas enim.','Production Laborer','Ward, Olson and Schaden','@ankunding.timothy','http://www.lesch.com/est-quae-qui-quam-debitis-accusamus','http://lorempixel.com/640/480/?62541','rcummerata@example.com',2.23,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(23,'Jovany','Bogan','Nihil dolor aperiam harum quas eos perferendis error. Atque labore dignissimos in assumenda. Veniam quia maxime cumque distinctio.','Roofer','Harris PLC','@dooley.bridie','http://www.roob.net/','http://lorempixel.com/640/480/?24579','travis.gerhold@example.net',999999.99,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(24,'Estrella','Ortiz','Ducimus reiciendis enim itaque rem. Modi deserunt minima possimus perferendis. Explicabo est minus mollitia placeat autem sed voluptate. Voluptatem assumenda aut vel et velit.','Drilling and Boring Machine Tool Setter','Aufderhar-Quigley','@wiza.avis','http://www.hills.com/sit-porro-cupiditate-unde-sint-hic','http://lorempixel.com/640/480/?14758','olen01@example.net',999999.99,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(25,'Judy','Rempel','Vitae corrupti rerum quam et. Impedit reiciendis dolores eos hic ut quaerat. Unde autem inventore suscipit et. Voluptas iusto deserunt quod accusamus saepe ut.','Industrial Engineer','Bayer Inc','@alia21','http://kub.com/','http://lorempixel.com/640/480/?35551','darrion.wilkinson@example.net',999999.99,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(26,'Heber','Powlowski','Quis voluptatem consequatur autem qui aut architecto nobis. Minima amet quis sapiente. Illo velit ipsa consectetur cupiditate magni. Ea deleniti iusto et dolore fugit pariatur.','Potter','Bartoletti PLC','@audie.mcdermott','http://tremblay.com/sit-asperiores-inventore-nulla-nostrum','http://lorempixel.com/640/480/?27041','marvin.beryl@example.com',7774.21,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(27,'Johnathon','Berge','Et esse id voluptatem dolor quia sunt sapiente. Quod id doloremque unde nostrum voluptatem rerum. Accusamus suscipit cupiditate nam dolores autem esse nihil. Unde dolor ut blanditiis omnis.','Naval Architects','Crona, Ritchie and Witting','@anais60','http://www.waelchi.info/consequuntur-quae-est-expedita','http://lorempixel.com/640/480/?81382','antonetta.hartmann@example.com',37152.26,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(28,'Loma','Denesik','Optio ducimus impedit eligendi. Consequatur accusantium veniam amet vitae quo voluptas. Omnis tempore quisquam sapiente natus optio quas ut. Commodi et suscipit delectus laudantium.','Driver-Sales Worker','Stark and Sons','@shaag','https://kilback.info/maxime-omnis-qui-dolores-quam-occaecati-aliquid.html','http://lorempixel.com/640/480/?42168','garry.wisozk@example.net',479243.17,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(29,'Hortense','Walsh','Eveniet quibusdam repudiandae cumque aut itaque tempora. Et aliquid eos voluptatem quas. Odit et ipsum nulla placeat. Et ipsa maxime id doloremque. Magni numquam qui laboriosam enim.','Roof Bolters Mining','Wiegand, Durgan and Pouros','@angelica95','http://www.hansen.biz/','http://lorempixel.com/640/480/?12147','grady.maya@example.net',305.00,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(30,'Norene','Lindgren','Ad sint at delectus dolorem voluptatem incidunt autem. Esse qui incidunt voluptatum. Et adipisci neque dignissimos velit ullam.','System Administrator','Lemke Group','@kelli38','http://www.bernhard.com/debitis-rem-non-aut-dolore-doloribus-quis','http://lorempixel.com/640/480/?43039','ustiedemann@example.org',999999.99,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(31,'Adelle','Stroman','Laboriosam id rerum eos excepturi. Rem illum ipsa quas.','Brake Machine Setter','Kessler-Ratke','@hkertzmann','http://www.eichmann.org/id-quia-sit-asperiores','http://lorempixel.com/640/480/?30329','lorena.bosco@example.org',1.00,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(32,'Emmet','Rau','Perferendis hic suscipit nemo harum voluptate cumque. Odio beatae debitis est. Quia non veritatis ea eum optio. Commodi iure possimus sint laudantium ut reprehenderit.','Supervisor of Customer Service','Ritchie-Pfannerstill','@zwatsica','http://corkery.com/qui-rerum-facilis-odit-aliquid-ducimus-doloremque','http://lorempixel.com/640/480/?58493','ferry.jasen@example.com',999999.99,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(33,'Kayla','Runolfsdottir','Sequi veritatis sunt quia quisquam. Earum labore vel accusamus iusto rerum. Delectus qui quo iste nemo quia inventore culpa magni. Qui soluta quas iste tempora blanditiis et ipsa.','Chef','D\'Amore, Osinski and Corkery','@kschiller','http://www.mayer.biz/distinctio-molestias-est-iste','http://lorempixel.com/640/480/?54405','jessy.volkman@example.com',3.60,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(34,'Kenny','Tillman','Itaque sed repellat ducimus ipsum. Cupiditate eligendi numquam omnis quae culpa sit qui. Molestiae omnis laboriosam velit alias quis.','Microbiologist','Oberbrunner-Reinger','@stiedemann.melyssa','https://nikolaus.com/qui-rerum-et-a-est-aut-quaerat-perferendis.html','http://lorempixel.com/640/480/?36272','alexandre84@example.net',197713.29,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(35,'Emiliano','Pfannerstill','Nemo sit eaque nostrum accusamus rerum. Nihil enim rerum rerum modi voluptatem quibusdam. Expedita assumenda numquam facere fugiat et necessitatibus harum. Ut ut ab aliquam distinctio.','Health Practitioner','Welch-Hirthe','@stokes.javier','http://stehr.com/illum-voluptates-eos-accusantium-natus-ut','http://lorempixel.com/640/480/?79535','stoltenberg.viva@example.com',1996.50,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(36,'Camryn','Moore','Nemo veritatis vero dignissimos ut. Omnis enim quod in quam assumenda doloribus quis.\nDolores similique id non nesciunt quibusdam maxime. Fuga architecto consequatur aspernatur facere qui ea.','Landscape Artist','Borer, Stiedemann and Schinner','@dkonopelski','http://bahringer.com/expedita-delectus-quisquam-doloribus-dolorem-repudiandae-pariatur.html','http://lorempixel.com/640/480/?34747','fritz62@example.net',2.30,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(37,'Abe','Leuschke','Est vel voluptas quia in. Laborum ducimus sint eos sed minima porro nostrum. Minus esse natus delectus doloremque in. Repellat ut alias et voluptatibus.','Animal Care Workers','Dare-Murazik','@rodriguez.francis','https://homenick.com/facilis-voluptatibus-omnis-perferendis-et-earum.html','http://lorempixel.com/640/480/?42571','helena90@example.com',55522.86,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(38,'Bobby','Zemlak','Consequatur suscipit beatae eligendi dolores culpa. Dolor laboriosam et est est. Natus impedit omnis enim est. Molestias facere dolores iusto quasi.','Office Machine Operator','Turner, Wisozk and Monahan','@heidi27','http://www.anderson.info/totam-quis-est-et-consequatur-illo-temporibus-officia.html','http://lorempixel.com/640/480/?16060','amclaughlin@example.net',21052.27,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(39,'Gwendolyn','Collier','Autem consequatur sapiente non rerum itaque. Porro dolorem minus distinctio nihil blanditiis soluta odit. Voluptatum suscipit omnis fugit vel. Occaecati animi rerum aut minima quasi non eos.','Automotive Master Mechanic','Cummerata, Schowalter and Haley','@davion12','https://www.bednar.com/error-dolores-aut-eum-ut-deleniti','http://lorempixel.com/640/480/?92348','casey.mraz@example.org',50.08,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(40,'Leila','Kohler','Vitae magnam et occaecati sint. Aperiam molestiae error placeat atque. Est culpa est perspiciatis doloremque.','Bartender Helper','Mertz-Hickle','@fritsch.ted','http://www.emmerich.com/aliquid-consequatur-dolores-dolor-voluptas-dignissimos-eligendi-dolore','http://lorempixel.com/640/480/?16864','floy.kuvalis@example.org',46.19,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(41,'Francisco','Parisian','Atque officiis ut placeat unde nostrum. Non quam reprehenderit perferendis ea laudantium earum expedita. Repellendus sit natus eum dolorem. Asperiores soluta vitae vel mollitia.','Roofer','Treutel-Kertzmann','@mckenna69','http://collier.com/qui-laborum-eos-veritatis-a-molestiae-aliquam-quos','http://lorempixel.com/640/480/?54468','keagan.leannon@example.org',21579.86,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(42,'Jayson','Bayer','Neque amet delectus sint nulla dolorem ratione. Tenetur fugit expedita odio nesciunt nam. Odio quas quia eum dolor sed ab est magni. Et accusamus soluta animi explicabo nihil non ut.','Veterinary Assistant OR Laboratory Animal Caretaker','Rutherford, Johnston and Gerhold','@avolkman','http://www.hartmann.com/nisi-rerum-porro-omnis-quibusdam','http://lorempixel.com/640/480/?24371','broderick.torp@example.net',999999.99,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(43,'Karolann','Grant','Voluptates illo provident consequatur odit aut autem sapiente. Maxime in quis soluta modi. Dolores sunt consequuntur atque perspiciatis dolor.','MARCOM Manager','Walter-Mante','@ledner.catalina','http://www.fritsch.net/facere-sit-quia-voluptatibus','http://lorempixel.com/640/480/?50743','margarette20@example.net',2894.82,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(44,'Billy','Brekke','Aut nulla officia consequatur. Ut consequuntur aut autem id. Ducimus eligendi id praesentium quos reprehenderit vero et. Explicabo dolorum id eveniet inventore repudiandae.','Preschool Education Administrators','Toy-Hagenes','@rosalinda69','http://rogahn.com/quia-cumque-pariatur-numquam-eum-consequatur-aut','http://lorempixel.com/640/480/?21064','heber.satterfield@example.net',2.00,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(45,'Lew','Connelly','Et tenetur iusto temporibus natus pariatur ducimus et sunt. Aperiam et rem magnam quis placeat voluptatem accusantium. At nesciunt fugiat non neque.','Loan Interviewer','Schneider Ltd','@zkirlin','http://www.langosh.com/','http://lorempixel.com/640/480/?56331','wolff.dora@example.org',622089.60,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(46,'Brooklyn','Hansen','Minus dolorem qui commodi ratione. Dolores qui libero accusamus reprehenderit temporibus. Explicabo facilis animi unde aperiam dolor.','Printing Machine Operator','Huels-Weber','@qpollich','http://kub.com/quam-quia-ea-recusandae-veniam-qui-excepturi.html','http://lorempixel.com/640/480/?88110','mgerlach@example.org',81.00,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(47,'Gordon','Wilkinson','Harum beatae atque cupiditate harum recusandae expedita. Quas dolor et et tempora. Cupiditate non ut tempora accusantium aut officiis porro. Vero rem debitis et occaecati libero voluptate est.','Architect','Wilderman, Schmeler and Little','@wilber.hane','https://www.kertzmann.info/nesciunt-qui-quibusdam-sed','http://lorempixel.com/640/480/?78617','gwyman@example.com',999999.99,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(48,'Gracie','Fadel','Nihil eaque nobis voluptas magni quis molestias. Aspernatur doloribus vel omnis. Architecto quasi doloribus ratione est et quo et quo. Et quisquam delectus cum quas et vel.','Production Planner','Hoeger, Murazik and Satterfield','@daisha91','http://emard.com/cumque-in-occaecati-sint-rerum','http://lorempixel.com/640/480/?12076','fabernathy@example.org',86781.05,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(49,'Ebba','Will','Voluptate assumenda omnis et. Amet unde hic et earum ut qui praesentium. Dolor id dolore quidem alias nobis quia consequuntur.','Radio and Television Announcer','Littel, Glover and Kshlerin','@wkuphal','http://stoltenberg.info/quis-ipsum-sit-corporis-cupiditate-voluptatem-maxime.html','http://lorempixel.com/640/480/?80192','bartholome77@example.org',999999.99,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL),(50,'Janiya','Kuvalis','Omnis voluptate ab qui et fuga. Totam asperiores animi dicta et. Repudiandae qui itaque odio provident reprehenderit recusandae vero. Veniam optio at officiis.','Paste-Up Worker','Boyle-Pollich','@fschowalter','http://www.simonis.biz/in-enim-dolores-autem-vel-consequuntur-modi-quia.html','http://lorempixel.com/640/480/?70598','rosie71@example.com',999999.99,'2016-07-13 23:42:27','2016-07-13 23:42:27',NULL);
/*!40000 ALTER TABLE `speakers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@test.com','$2y$10$AtLWgzrjKX/gdxlYGfeVtuy10FMqyKBQXpuPnXgpQIa7JylOXmct6','9ParqXta57','2016-07-13 23:42:28','2016-07-13 23:42:28');
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

-- Dump completed on 2016-08-02 16:17:41
