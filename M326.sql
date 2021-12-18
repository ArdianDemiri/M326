-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: localhost    Database: M326_DB
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `Account`
--

DROP TABLE IF EXISTS `Account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Account` (
  `ID` int NOT NULL,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Account`
--

LOCK TABLES `Account` WRITE;
/*!40000 ALTER TABLE `Account` DISABLE KEYS */;
INSERT INTO `Account` VALUES (1,'adworks','397ffc303f01d371d1d77dae9b28eb63ef61a6ed75696b1ec4cd1a55a29a5044');
/*!40000 ALTER TABLE `Account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hardware`
--

DROP TABLE IF EXISTS `Hardware`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hardware` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Job_ID` int NOT NULL,
  `processor_core_count` int DEFAULT NULL,
  `processor_frequency_mhz` int DEFAULT NULL,
  `memory_mb` int DEFAULT NULL,
  `storage_capacity_mb` int DEFAULT NULL,
  `storage_type` varchar(10) DEFAULT NULL,
  `display_size_inch` double DEFAULT NULL,
  `usb_c` tinyint DEFAULT NULL,
  `touchscreen` tinyint DEFAULT NULL,
  `pen` tinyint DEFAULT NULL,
  `specs_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hardware`
--

LOCK TABLES `Hardware` WRITE;
/*!40000 ALTER TABLE `Hardware` DISABLE KEYS */;
INSERT INTO `Hardware` VALUES (21,1,4,1500,8000,250000,'SSD',13,0,1,0,'REC'),(22,1,2,800,4000,120000,'SSD',8,1,0,1,'REQ'),(41,2,4,2000,12000,500000,'SSD',12,1,0,0,'REC'),(42,2,1,800,1000,64000,'SSD',8,0,0,0,'REQ');
/*!40000 ALTER TABLE `Hardware` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Job`
--

DROP TABLE IF EXISTS `Job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Job` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `JobName` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Job`
--

LOCK TABLES `Job` WRITE;
/*!40000 ALTER TABLE `Job` DISABLE KEYS */;
INSERT INTO `Job` VALUES (1,'Informatiker Applikationsentwicklung EFZ'),(2,'Coiffeure EFZ'),(3,'Mechaniker EFZ'),(5,'FaBe EFZ');
/*!40000 ALTER TABLE `Job` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-18  1:23:01
