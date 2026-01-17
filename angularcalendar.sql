CREATE DATABASE  IF NOT EXISTS `angularcalendar` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `angularcalendar`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: angularcalendar
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `countryid` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'BE','Belgium',2),(2,'FR','France',1),(3,'LU','Luxembourg',3);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easter`
--

DROP TABLE IF EXISTS `easter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easter` (
  `id` bigint NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easter`
--

LOCK TABLES `easter` WRITE;
/*!40000 ALTER TABLE `easter` DISABLE KEYS */;
INSERT INTO `easter` VALUES (1,'2000-04-23'),(2,'2001-04-15'),(3,'2002-03-31'),(4,'2003-04-20'),(5,'2004-04-11'),(6,'2005-03-27'),(7,'2006-04-16'),(8,'2007-04-08'),(9,'2008-03-23'),(10,'2009-04-12'),(11,'2010-04-04'),(12,'2011-04-24'),(13,'2012-04-08'),(14,'2013-03-31'),(15,'2014-04-20'),(16,'2015-04-05'),(17,'2016-03-27'),(18,'2017-04-16'),(19,'2018-04-01'),(20,'2019-04-21'),(21,'2020-04-12'),(22,'2021-04-04'),(23,'2022-04-17'),(24,'2023-04-09'),(25,'2024-03-31'),(26,'2025-04-20'),(27,'2026-04-05'),(28,'2027-03-28'),(29,'2028-04-16'),(30,'2029-04-01'),(31,'2030-04-21'),(32,'2031-04-13'),(33,'2032-03-28'),(34,'2033-04-17'),(35,'2034-04-09'),(36,'2035-03-25'),(37,'2036-04-13'),(38,'2037-04-05'),(39,'2038-04-25'),(40,'2039-04-10'),(41,'2040-04-01'),(42,'2041-04-21'),(43,'2042-04-06'),(44,'2043-03-29'),(45,'2044-04-17'),(46,'2045-04-09'),(47,'2046-03-25'),(48,'2047-04-14'),(49,'2048-04-05'),(50,'2049-04-18'),(51,'2050-04-10'),(52,'2051-04-02'),(53,'2052-04-21'),(54,'2053-04-06'),(55,'2054-03-29'),(56,'2055-04-18'),(57,'2056-04-02'),(58,'2057-04-22'),(59,'2058-04-14'),(60,'2059-03-30'),(61,'2060-04-18'),(62,'2061-04-10'),(63,'2062-03-26'),(64,'2063-04-15'),(65,'2064-04-06'),(66,'2065-03-29'),(67,'2066-04-11'),(68,'2067-04-03'),(69,'2068-04-22'),(70,'2069-04-14'),(71,'2070-03-30'),(72,'2071-04-19'),(73,'2072-04-10'),(74,'2073-03-26'),(75,'2074-04-15'),(76,'2075-04-07'),(77,'2076-04-19'),(78,'2077-04-11'),(79,'2078-04-03'),(80,'2079-04-23'),(81,'2080-04-07'),(82,'2081-03-30'),(83,'2082-04-19'),(84,'2083-04-04'),(85,'2084-03-26'),(86,'2085-04-15'),(87,'2086-03-31'),(88,'2087-04-20'),(89,'2088-04-11'),(90,'2089-04-03'),(91,'2090-04-16'),(92,'2091-04-08'),(93,'2092-03-30'),(94,'2093-04-12'),(95,'2094-04-04'),(96,'2095-04-24'),(97,'2096-04-15'),(98,'2097-03-31'),(99,'2098-04-20'),(100,'2099-04-12');
/*!40000 ALTER TABLE `easter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `freedays`
--

DROP TABLE IF EXISTS `freedays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `freedays` (
  `id` bigint NOT NULL,
  `freedate` datetime(6) DEFAULT NULL,
  `freename` varchar(255) DEFAULT NULL,
  `country_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdm1yr5phj6mu64348j29valto` (`country_id`),
  CONSTRAINT `FKdm1yr5phj6mu64348j29valto` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `freedays`
--

LOCK TABLES `freedays` WRITE;
/*!40000 ALTER TABLE `freedays` DISABLE KEYS */;
INSERT INTO `freedays` VALUES (1,'0001-01-01 00:00:00.000000','Nieuwjaarsdag ',1),(2,'0001-05-01 00:00:00.000000','Feest van de Arbeid',1),(3,'0001-07-21 00:00:00.000000','Nationale Feestdag',1),(4,'0001-08-15 00:00:00.000000','Allerheiligen',1),(5,'0001-11-11 00:00:00.000000','Wapenstilstand',1),(6,'0001-12-25 00:00:00.000000','Kerstmis',1),(7,'0001-08-15 00:00:00.000000','O.L.V. hemelvaart',1),(8,'0001-01-01 00:00:00.000000','Jour de l\'an',2),(9,'0001-11-01 00:00:00.000000','Toussaint',2),(10,'0001-07-14 00:00:00.000000','Fête nationale',2),(11,'0001-12-25 00:00:00.000000','Noël',2),(12,'0001-05-08 00:00:00.000000','Victoire 45',2),(13,'0001-05-01 00:00:00.000000','Fête du travail',2),(14,'0001-11-11 00:00:00.000000','Armistice',2),(15,'0001-08-15 00:00:00.000000','Assomption',2),(16,'0001-01-01 00:00:00.000000','Nouvel An',3),(17,'0001-05-01 00:00:00.000000','Premier Mai',3),(18,'0001-05-09 00:00:00.000000','la Journée de l\'Europe',3),(19,'0001-06-23 00:00:00.000000','Fête nationale',3),(20,'0001-11-01 00:00:00.000000','Toussaint',3),(21,'0001-12-25 00:00:00.000000','Noël',3),(22,'0001-12-26 00:00:00.000000','Saint Étienne',3);
/*!40000 ALTER TABLE `freedays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (101);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translate`
--

DROP TABLE IF EXISTS `translate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translate` (
  `id` bigint NOT NULL,
  `codeid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translate`
--

LOCK TABLES `translate` WRITE;
/*!40000 ALTER TABLE `translate` DISABLE KEYS */;
INSERT INTO `translate` VALUES (1,'LU_M_1','januar'),(2,'BE_M_1','januari'),(3,'FR_M_1','janvier'),(4,'LU_M_2','februar'),(5,'BE_M_2','februari'),(6,'FR_M_2','février'),(7,'LU_M_3','mäerz'),(8,'BE_M_3','maart'),(9,'FR_M_3','mars'),(10,'LU_M_4','abrëll'),(11,'BE_M_4','april'),(12,'FR_M_4','avril'),(13,'LU_M_5','mee'),(14,'BE_M_5','mei'),(15,'FR_M_5','mai'),(16,'LU_M_6','juni'),(17,'BE_M_6','juni'),(18,'FR_M_6','juin'),(19,'LU_M_7','juli'),(20,'BE_M_7','juli'),(21,'FR_M_7','juillet'),(22,'LU_M_8','august'),(23,'BE_M_8','augustus'),(24,'FR_M_8','août'),(25,'LU_M_9','september'),(26,'BE_M_9','september'),(27,'FR_M_9','septembre'),(28,'LU_M_10','oktober'),(29,'BE_M_10','oktober'),(30,'FR_M_10','octobre'),(31,'LU_M_11','november'),(32,'BE_M_11','november'),(33,'FR_M_11','novembre'),(34,'LU_M_12','dezember'),(35,'BE_M_12','december'),(36,'FR_M_12','décembre'),(37,'LU_D_1','méindeg'),(38,'BE_D_1','maandag'),(39,'FR_D_1','lundi'),(40,'LU_D_2','dënschdeg'),(41,'BE_D_2','dinsdag'),(42,'FR_D_2','mardi'),(43,'LU_D_3','mëttwoch'),(44,'BE_D_3','woensdag'),(45,'FR_D_3','mercredi'),(46,'LU_D_4','donneschdeg'),(47,'BE_D_4','donderdag'),(48,'FR_D_4','jeudi'),(49,'LU_D_5','freideg'),(50,'BE_D_5','vrijdag'),(51,'FR_D_5','vendredi'),(52,'LU_D_6','samschdeg'),(53,'BE_D_6','zaterdag'),(54,'FR_D_6','samedi'),(55,'LU_D_7','sonndeg'),(56,'BE_D_7','zondag'),(57,'FR_D_7','dimanche'),(58,'BE_P_EAST1','Pasen'),(59,'BE_P_EAST2','Hemelvaart'),(60,'BE_P_EAST3','Pinksteren'),(61,'FR_P_EAST1','Pâques'),(62,'FR_P_EAST2','Jour de l\'Ascension'),(63,'FR_P_EAST3','Pentecôte'),(64,'LU_P_EAST1','Ouschteren'),(65,'LU_P_EAST2','Himmelfahrt'),(66,'LU_P_EAST3','Päischt');
/*!40000 ALTER TABLE `translate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-17 15:09:51
