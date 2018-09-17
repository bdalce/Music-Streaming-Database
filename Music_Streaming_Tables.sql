CREATE DATABASE  IF NOT EXISTS `music_streams` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `music_streams`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: music_streams
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `albums` (
  `Albums_id` int(11) NOT NULL,
  `Albums_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Albums_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (110,'Hi'),(111,'No Strings Attached'),(112,'1989'),(113,'Red'),(114,'Mathers Marsh'),(115,'LBJ'),(116,'The Garden'),(117,'The Massacre'),(118,'Born This Way'),(119,'Reputaiton'),(120,'Therefore'),(121,'Wonderful Times'),(122,'The Ally'),(123,'Rainstorm '),(124,'Big Baller Brand'),(125,'Black and Blue'),(126,'Confessions'),(127,'The Wild '),(128,'Never Stop'),(129,'Peppers Lonely Heart'),(130,'Lemonade Stand'),(131,'65 inches'),(132,'Respect it'),(133,'Gametime'),(134,'WolfPack'),(135,'Rubber Soul'),(136,'Highway 71'),(137,'Whats Going on'),(138,'London Calling'),(139,'New York City');
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artists` (
  `Artists_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Artists_name` varchar(45) NOT NULL,
  `Genres_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Artists_id`),
  KEY `fk_genres_artists_idx` (`Genres_id`),
  CONSTRAINT `fk_genres_artists` FOREIGN KEY (`Genres_id`) REFERENCES `genres` (`Genres_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (1,'Tucker Reed',2),(2,'Jonas Little',1),(3,'Odessa Dennis',4),(4,'Porter Wolf',5),(5,'Arden Brennan',3),(6,'Alice Shepard',3),(7,'Magee Luna',1),(8,'Boris Mcdaniel',5),(9,'Aurora Owens',1),(10,'Mira Collier',5),(11,'Noel Albert',4),(12,'Summer Stone',2),(13,'Oleg Burt',2),(14,'Fitzgerald Cash',1),(15,'Lesley Watson',4),(16,'Chancellor Ratliff',4),(17,'Chadwick Hooper',2),(18,'Chelsea Park',3),(19,'Scarlet Wong',1),(20,'Alyssa Higgins',5),(21,'Justin Crawford',1),(22,'Donovan Cameron',5),(23,'Dorothy Whitney',3),(24,'Fulton Joseph',3),(25,'Mallory Larson',5),(26,'Donovan Fry',4),(27,'Mariko Dennis',3),(28,'Liberty Chan',1),(29,'Uma Horton',4),(30,'Shellie Rowland',1);
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concerts`
--

DROP TABLE IF EXISTS `concerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `concerts` (
  `Concert_id` int(11) NOT NULL,
  `Artists_id` int(10) unsigned DEFAULT NULL,
  `Venues_name` varchar(45) DEFAULT NULL,
  `Locations` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Concert_id`),
  KEY `fk_artists_idx` (`Artists_id`),
  CONSTRAINT `fk_artists` FOREIGN KEY (`Artists_id`) REFERENCES `artists` (`Artists_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concerts`
--

LOCK TABLES `concerts` WRITE;
/*!40000 ALTER TABLE `concerts` DISABLE KEYS */;
INSERT INTO `concerts` VALUES (1,6,'The Little Amphitheater','Bolton'),(2,18,'The Transcendence Cinema','Duncan'),(3,21,'The Pluto Amphitheater','Vottem'),(4,7,'The Stellar Concert Hall','Kanpur'),(5,17,'The Citadel Opera House','Grosseto'),(6,17,'The Royal Opera House','Tulsa'),(7,30,'The Aura Amphitheater','Matagami'),(8,12,'The Monument Opera House','Malkajgiri'),(9,2,'The Rainbow Assembly Hall','Tufara'),(10,10,'The Little Assembly Hall','Hamme'),(11,25,'The Major Assembly Hall','Punta Arenas'),(12,17,'The Chimera Theater','Ramsey'),(13,16,'The Vertex Theatre','Grand Island'),(14,8,'The Lilypad Theatre','Ferness'),(15,14,'The Galaxy Theatre','Baie-Comeau'),(16,4,'The Alliance Opera House','Gifhorn'),(17,25,'The Victory Concert Hall','La Cruz'),(18,29,'The Classic Theater','Dumfries'),(19,1,'The Grand Theatre','Villa Alegre'),(20,19,'The Pluto Concert Hall','Alert Bay'),(21,22,'The Grand Centre Theater','Buren'),(22,16,'The Landmark Assembly Hall','Gloucester'),(23,4,'The Solaris Concert Hall','HavrŽ'),(24,11,'The Exalted Cinema','Cambridge'),(25,8,'The Spectacle Theatre','Vaughan'),(26,10,'The Vortex Concert Hall','Nevers'),(27,10,'The Summit Theater','Sommethonne'),(28,23,'The Epoch Theater','Sogliano Cavour'),(29,22,'The Songbird Cinema','Terragnolo'),(30,7,'3','Bad Nauheim');
/*!40000 ALTER TABLE `concerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres` (
  `Genres_id` int(11) NOT NULL AUTO_INCREMENT,
  `Genres_name` varchar(45) NOT NULL,
  PRIMARY KEY (`Genres_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Hip Hop'),(2,'Jazz'),(3,'Country'),(4,'Rock'),(5,'Rap');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `many_concerts`
--

DROP TABLE IF EXISTS `many_concerts`;
/*!50001 DROP VIEW IF EXISTS `many_concerts`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `many_concerts` AS SELECT 
 1 AS `Artists_name`,
 1 AS `Num_concerts`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `moods`
--

DROP TABLE IF EXISTS `moods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moods` (
  `Moods_id` int(11) NOT NULL,
  `Moods` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Moods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moods`
--

LOCK TABLES `moods` WRITE;
/*!40000 ALTER TABLE `moods` DISABLE KEYS */;
INSERT INTO `moods` VALUES (1,'Happy'),(2,'Energized'),(3,'Excited'),(4,'Sorrow'),(5,'Relax'),(6,'Sleep'),(7,'Party');
/*!40000 ALTER TABLE `moods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `most_songs`
--

DROP TABLE IF EXISTS `most_songs`;
/*!50001 DROP VIEW IF EXISTS `most_songs`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `most_songs` AS SELECT 
 1 AS `Artists_name`,
 1 AS `Songs_count`,
 1 AS `Albums_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `playlists`
--

DROP TABLE IF EXISTS `playlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playlists` (
  `Songs_id` int(11) NOT NULL,
  `Moods_id` int(11) NOT NULL,
  `Playlists_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Songs_id`,`Moods_id`),
  KEY `fk_songsfk_idx` (`Songs_id`),
  KEY `fk_mooods_idx` (`Moods_id`),
  CONSTRAINT `fk_moods` FOREIGN KEY (`Moods_id`) REFERENCES `moods` (`Moods_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_songs_pl` FOREIGN KEY (`Songs_id`) REFERENCES `songs` (`Songs_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlists`
--

LOCK TABLES `playlists` WRITE;
/*!40000 ALTER TABLE `playlists` DISABLE KEYS */;
INSERT INTO `playlists` VALUES (5,2,'Excited'),(9,6,'Cleaning'),(10,4,'Excited'),(10,5,'Excited'),(11,1,'Sleep'),(11,7,'Sleep'),(13,3,'Party'),(14,7,'Cooking'),(16,4,'Study'),(17,2,'Chill'),(18,1,'Workout'),(22,4,'Sleep'),(24,5,'Study'),(28,3,'Excited'),(30,7,'Study');
/*!40000 ALTER TABLE `playlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `prod_artists_song`
--

DROP TABLE IF EXISTS `prod_artists_song`;
/*!50001 DROP VIEW IF EXISTS `prod_artists_song`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `prod_artists_song` AS SELECT 
 1 AS `Artists_name`,
 1 AS `Songs_name`,
 1 AS `Producers_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `prodon_albums`
--

DROP TABLE IF EXISTS `prodon_albums`;
/*!50001 DROP VIEW IF EXISTS `prodon_albums`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `prodon_albums` AS SELECT 
 1 AS `Producers_name`,
 1 AS `Albums_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `producers`
--

DROP TABLE IF EXISTS `producers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producers` (
  `Producers_id` int(11) NOT NULL AUTO_INCREMENT,
  `Producers_name` varchar(45) NOT NULL,
  PRIMARY KEY (`Producers_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producers`
--

LOCK TABLES `producers` WRITE;
/*!40000 ALTER TABLE `producers` DISABLE KEYS */;
INSERT INTO `producers` VALUES (10,'Metro Bommin'),(11,'808 Mafia'),(12,'Keys'),(13,'Zaytoven'),(14,'Yeezy'),(15,'Pharrell Williams'),(16,'Jalil Beats'),(17,'Soul Jones'),(18,'Quincy Jones'),(19,'Dr Dre'),(20,'William K'),(21,'Invander Zim'),(22,'Mike Will'),(23,'Dr Dre'),(24,'J Cole');
/*!40000 ALTER TABLE `producers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `short_songs`
--

DROP TABLE IF EXISTS `short_songs`;
/*!50001 DROP VIEW IF EXISTS `short_songs`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `short_songs` AS SELECT 
 1 AS `Songs_name`,
 1 AS `Length`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `songs` (
  `Songs_id` int(11) NOT NULL AUTO_INCREMENT,
  `Songs_name` varchar(45) NOT NULL,
  `Length` decimal(4,2) DEFAULT NULL,
  `Artists_id` int(10) unsigned NOT NULL,
  `Albums_id` int(11) DEFAULT NULL,
  `Producers_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Songs_id`),
  UNIQUE KEY `Songs_id_UNIQUE` (`Songs_id`),
  KEY `fk_Songs_Artists_idx` (`Artists_id`),
  KEY `fk_albums_idx` (`Albums_id`),
  KEY `fk_prod_idx` (`Producers_id`),
  CONSTRAINT `fk_Songs_Artists` FOREIGN KEY (`Artists_id`) REFERENCES `artists` (`Artists_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_albums` FOREIGN KEY (`Albums_id`) REFERENCES `albums` (`Albums_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_prod` FOREIGN KEY (`Producers_id`) REFERENCES `producers` (`Producers_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,'mauris',3.05,1,110,10),(2,'Vestibulum',3.38,1,110,11),(3,'hendrerit',2.40,1,110,12),(4,'aliquet',3.74,4,113,13),(5,'leo,',2.57,5,114,14),(6,'facilisis',3.21,6,115,12),(7,'auctor',2.91,7,116,11),(8,'velit',4.08,8,117,17),(9,'dis',4.94,29,130,18),(10,'sagittis.',4.38,29,130,18),(11,'arcu',2.58,1,110,17),(12,'id,',2.37,12,121,15),(13,'Cras',2.80,1,110,16),(14,'Vestibulum',4.34,15,134,14),(15,'Morbi',4.04,15,134,19),(16,'vel',3.58,16,125,20),(17,'rutrum',4.06,17,126,16),(18,'et,',2.05,1,110,16),(19,'convallis',2.91,19,131,10),(20,'mauris',2.86,20,129,11),(21,'at,',3.73,15,134,13),(22,'ut',2.99,22,131,12),(23,'egestas',2.36,23,132,14),(24,'Nullam',2.24,24,121,15),(25,'tellus',3.06,24,121,19),(26,'rutrum',2.55,16,135,20),(27,'lacus',3.31,20,118,17),(28,'a',2.92,28,137,15),(29,'sit',3.77,29,118,11),(30,'lovely',4.70,30,139,10);
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'music_streams'
--

--
-- Dumping routines for database 'music_streams'
--

--
-- Final view structure for view `many_concerts`
--

/*!50001 DROP VIEW IF EXISTS `many_concerts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `many_concerts` AS select `artists`.`Artists_name` AS `Artists_name`,count(`artists`.`Artists_id`) AS `Num_concerts` from (`artists` join `concerts` on((`artists`.`Artists_id` = `concerts`.`Artists_id`))) group by `artists`.`Artists_name` having (`Num_concerts` > 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `most_songs`
--

/*!50001 DROP VIEW IF EXISTS `most_songs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `most_songs` AS select `an`.`Artists_name` AS `Artists_name`,count(`albums`.`Albums_name`) AS `Songs_count`,`albums`.`Albums_name` AS `Albums_name` from ((`artists` `an` join `songs` on((`an`.`Artists_id` = `songs`.`Artists_id`))) join `albums` on((`songs`.`Albums_id` = `albums`.`Albums_id`))) group by `albums`.`Albums_name` having (`Songs_count` > 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `prod_artists_song`
--

/*!50001 DROP VIEW IF EXISTS `prod_artists_song`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prod_artists_song` AS select `artists`.`Artists_name` AS `Artists_name`,`songs`.`Songs_name` AS `Songs_name`,`producers`.`Producers_name` AS `Producers_name` from ((`artists` join `songs` on((`artists`.`Artists_id` = `songs`.`Artists_id`))) join `producers` on((`songs`.`Producers_id` = `producers`.`Producers_id`))) where (`songs`.`Producers_id` = 15) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `prodon_albums`
--

/*!50001 DROP VIEW IF EXISTS `prodon_albums`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prodon_albums` AS select distinct `p`.`Producers_name` AS `Producers_name`,`k`.`Albums_id` AS `Albums_id` from ((`music_streams`.`producers` `p` join `music_streams`.`songs` `s`) join (select count(distinct `music_streams`.`producers`.`Producers_name`) AS `num_prod`,`music_streams`.`songs`.`Albums_id` AS `Albums_id` from (`music_streams`.`songs` join `music_streams`.`producers` on((`music_streams`.`songs`.`Producers_id` = `music_streams`.`producers`.`Producers_id`))) group by `music_streams`.`songs`.`Albums_id` having (`num_prod` > 1)) `k`) where ((`p`.`Producers_id` = `s`.`Producers_id`) and (`s`.`Albums_id` = `k`.`Albums_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `short_songs`
--

/*!50001 DROP VIEW IF EXISTS `short_songs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `short_songs` AS select `songs`.`Songs_name` AS `Songs_name`,`songs`.`Length` AS `Length` from `songs` having ((select avg(`songs`.`Length`) from `songs`) > `songs`.`Length`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-10 17:21:45
