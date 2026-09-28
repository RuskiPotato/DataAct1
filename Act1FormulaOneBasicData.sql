CREATE DATABASE  IF NOT EXISTS `f1_analytics` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `f1_analytics`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: f1_analytics
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Dumping data for table `drivers`
--

LOCK TABLES `drivers` WRITE;
/*!40000 ALTER TABLE `drivers` DISABLE KEYS */;
INSERT INTO `drivers` VALUES (1,'Fernando','Alonso','Spanish'),(2,'Michael','Schumacher','German'),(3,'Felipe','Massa','Brazilian'),(4,'Kimi','Räikkönen','Finnish'),(5,'Lewis','Hamilton','British'),(6,'Jenson','Button','British'),(7,'Sebastian','Vettel','German'),(8,'Rubens','Barrichello','Brazilian'),(9,'Mark','Webber','Australian'),(10,'Nico','Rosberg','German'),(11,'Daniel','Ricciardo','Australian'),(12,'Valtteri','Bottas','Finnish'),(13,'Max','Verstappen','Dutch'),(14,'Charles','Leclerc','Monegasque'),(15,'Sergio','Pérez','Mexican'),(16,'Lando','Norris','British'),(17,'Oscar','Piastri','Australian');
/*!40000 ALTER TABLE `drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `season_podiums`
--

LOCK TABLES `season_podiums` WRITE;
/*!40000 ALTER TABLE `season_podiums` DISABLE KEYS */;
INSERT INTO `season_podiums` VALUES (2006,1,1),(2007,3,1),(2010,2,1),(2012,2,1),(2013,2,1),(2006,2,2),(2006,3,3),(2008,2,3),(2007,1,4),(2008,3,4),(2012,3,4),(2018,3,4),(2007,2,5),(2008,1,5),(2014,1,5),(2015,1,5),(2016,2,5),(2017,1,5),(2018,1,5),(2019,1,5),(2020,1,5),(2021,2,5),(2023,3,5),(2009,1,6),(2011,2,6),(2009,2,7),(2010,1,7),(2011,1,7),(2012,1,7),(2013,1,7),(2015,2,7),(2017,2,7),(2018,2,7),(2009,3,8),(2010,3,9),(2011,3,9),(2013,3,9),(2014,2,10),(2015,3,10),(2016,1,10),(2014,3,11),(2016,3,11),(2017,3,12),(2019,2,12),(2020,2,12),(2021,3,12),(2019,3,13),(2020,3,13),(2021,1,13),(2022,1,13),(2023,1,13),(2024,1,13),(2025,2,13),(2022,2,14),(2024,3,14),(2022,3,15),(2023,2,15),(2024,2,16),(2025,1,16),(2025,3,17);
/*!40000 ALTER TABLE `season_podiums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `seasons`
--

LOCK TABLES `seasons` WRITE;
/*!40000 ALTER TABLE `seasons` DISABLE KEYS */;
INSERT INTO `seasons` VALUES (2006,1),(2007,2),(2008,2),(2009,3),(2010,4),(2011,4),(2012,4),(2013,4),(2022,4),(2023,4),(2014,5),(2015,5),(2016,5),(2017,5),(2018,5),(2019,5),(2020,5),(2021,5),(2024,6),(2025,6);
/*!40000 ALTER TABLE `seasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Renault'),(2,'Ferrari'),(3,'Brawn GP'),(4,'Red Bull Racing'),(5,'Mercedes'),(6,'McLaren');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-29  3:22:31
