-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: consumerdb
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `cabinets`
--

DROP TABLE IF EXISTS `cabinets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cabinets` (
  `cabinetID` int NOT NULL AUTO_INCREMENT,
  `Locationid` int NOT NULL,
  `CabinetNumber` int NOT NULL,
  `IsAvailable` tinyint DEFAULT '1',
  `cabinetstatus` varchar(45) DEFAULT 'Available',
  `Code` int DEFAULT NULL,
  `Locationname` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`cabinetID`),
  KEY `Locationid_idx` (`Locationid`),
  CONSTRAINT `Locationid` FOREIGN KEY (`Locationid`) REFERENCES `locations` (`locationid`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabinets`
--

LOCK TABLES `cabinets` WRITE;
/*!40000 ALTER TABLE `cabinets` DISABLE KEYS */;
INSERT INTO `cabinets` VALUES (1,1,1,1,'Available',NULL,'Prisma Linnanmaa Oulu'),(2,1,2,1,'Available',NULL,'Prisma Linnanmaa Oulu'),(3,1,3,1,'Available',NULL,'Prisma Linnanmaa Oulu'),(4,1,4,1,'Available',NULL,'Prisma Linnanmaa Oulu'),(5,1,5,1,'Available',NULL,'Prisma Linnanmaa Oulu'),(6,1,6,1,'Available',NULL,'Prisma Linnanmaa Oulu'),(7,1,7,1,'Available',NULL,'Prisma Linnanmaa Oulu'),(8,1,8,1,'Available',NULL,'Prisma Linnanmaa Oulu'),(9,1,9,1,'Available',NULL,'Prisma Linnanmaa Oulu'),(10,1,10,1,'Available',NULL,'Prisma Linnanmaa Oulu'),(11,1,11,1,'Available',NULL,'Prisma Linnanmaa Oulu'),(12,1,12,1,'Available',NULL,'Prisma Linnanmaa Oulu'),(13,1,13,1,'Available',NULL,'Prisma Linnanmaa Oulu'),(14,1,14,1,'Available',NULL,'Prisma Linnanmaa Oulu'),(15,1,15,1,'Available',NULL,'Prisma Linnanmaa Oulu'),(16,2,1,1,'Available',NULL,'Prisma Limingantulli Oulu'),(17,2,2,1,'Available',NULL,'Prisma Limingantulli Oulu'),(18,2,3,1,'Available',NULL,'Prisma Limingantulli Oulu'),(19,2,4,1,'Available',NULL,'Prisma Limingantulli Oulu'),(20,2,5,1,'Available',NULL,'Prisma Limingantulli Oulu'),(21,2,6,1,'Available',NULL,'Prisma Limingantulli Oulu'),(22,2,7,1,'Available',NULL,'Prisma Limingantulli Oulu'),(23,2,8,1,'Available',NULL,'Prisma Limingantulli Oulu'),(24,2,9,1,'Available',NULL,'Prisma Limingantulli Oulu'),(25,2,10,1,'Available',NULL,'Prisma Limingantulli Oulu'),(26,2,11,1,'Available',NULL,'Prisma Limingantulli Oulu'),(27,2,12,1,'Available',NULL,'Prisma Limingantulli Oulu'),(28,2,13,1,'Available',NULL,'Prisma Limingantulli Oulu'),(29,2,14,1,'Available',NULL,'Prisma Limingantulli Oulu'),(30,2,15,1,'Available',NULL,'Prisma Limingantulli Oulu'),(31,3,1,1,'Available',NULL,'Prisma Raksila Oulu'),(32,3,2,1,'Available',NULL,'Prisma Raksila Oulu'),(33,3,3,1,'Available',NULL,'Prisma Raksila Oulu'),(34,3,4,1,'Available',NULL,'Prisma Raksila Oulu'),(35,3,5,1,'Available',NULL,'Prisma Raksila Oulu'),(36,3,6,1,'Available',NULL,'Prisma Raksila Oulu'),(37,3,7,1,'Available',NULL,'Prisma Raksila Oulu'),(38,3,8,1,'Available',NULL,'Prisma Raksila Oulu'),(39,3,9,1,'Available',NULL,'Prisma Raksila Oulu'),(40,3,10,1,'Available',NULL,'Prisma Raksila Oulu'),(41,3,11,1,'Available',NULL,'Prisma Raksila Oulu'),(42,3,12,1,'Available',NULL,'Prisma Raksila Oulu'),(43,3,13,1,'Available',NULL,'Prisma Raksila Oulu'),(44,3,14,1,'Available',NULL,'Prisma Raksila Oulu'),(45,3,15,1,'Available',NULL,'Prisma Raksila Oulu'),(46,4,1,1,'Available',NULL,'K-Citymarket Oulu Rusko'),(47,4,2,1,'Available',NULL,'K-Citymarket Oulu Rusko'),(48,4,3,1,'Available',NULL,'K-Citymarket Oulu Rusko'),(49,4,4,1,'Available',NULL,'K-Citymarket Oulu Rusko'),(50,4,5,1,'Available',NULL,'K-Citymarket Oulu Rusko'),(51,4,6,1,'Available',NULL,'K-Citymarket Oulu Rusko'),(52,4,7,1,'Available',NULL,'K-Citymarket Oulu Rusko'),(53,4,8,1,'Available',NULL,'K-Citymarket Oulu Rusko'),(54,4,9,1,'Available',NULL,'K-Citymarket Oulu Rusko'),(55,4,10,1,'Available',NULL,'K-Citymarket Oulu Rusko'),(56,4,11,1,'Available',NULL,'K-Citymarket Oulu Rusko'),(57,4,12,1,'Available',NULL,'K-Citymarket Oulu Rusko'),(58,4,13,1,'Available',NULL,'K-Citymarket Oulu Rusko'),(59,4,14,1,'Available',NULL,'K-Citymarket Oulu Rusko'),(60,4,15,1,'Available',NULL,'K-Citymarket Oulu Rusko'),(61,5,1,1,'Available',NULL,'K-Citymarket Oulu Raksila'),(62,5,2,1,'Available',NULL,'K-Citymarket Oulu Raksila'),(63,5,3,1,'Available',NULL,'K-Citymarket Oulu Raksila'),(64,5,4,1,'Available',NULL,'K-Citymarket Oulu Raksila'),(65,5,5,1,'Available',NULL,'K-Citymarket Oulu Raksila'),(66,5,6,1,'Available',NULL,'K-Citymarket Oulu Raksila'),(67,5,7,1,'Available',NULL,'K-Citymarket Oulu Raksila'),(68,5,8,1,'Available',NULL,'K-Citymarket Oulu Raksila'),(69,5,9,1,'Available',NULL,'K-Citymarket Oulu Raksila'),(70,5,10,1,'Available',NULL,'K-Citymarket Oulu Raksila'),(71,5,11,1,'Available',NULL,'K-Citymarket Oulu Raksila'),(72,5,12,1,'Available',NULL,'K-Citymarket Oulu Raksila'),(73,5,13,1,'Available',NULL,'K-Citymarket Oulu Raksila'),(74,5,14,1,'Available',NULL,'K-Citymarket Oulu Raksila'),(75,5,15,1,'Available',NULL,'K-Citymarket Oulu Raksila');
/*!40000 ALTER TABLE `cabinets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `locationid` int NOT NULL AUTO_INCREMENT,
  `locationname` varchar(150) DEFAULT NULL,
  `locationaddress` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`locationid`),
  UNIQUE KEY `locationname_UNIQUE` (`locationname`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Prisma Linnanmaa Oulu','Kauppalinnankuja 1-3, 90570 Oulu'),(2,'Prisma Limingantulli Oulu','Nuottasaarentie 1, 90400 Oulu'),(3,'Prisma Raksila Oulu','Tehtaankatu 3, 90130 Oulu'),(4,'K-Citymarket Oulu Rusko','Laakeritie 4, 90630 Oulu'),(5,'K-Citymarket Oulu Raksila','Tehtaankatu 5, 90130 Oulu');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `notificationid` int NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `content` varchar(150) DEFAULT NULL,
  `userid` int DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`notificationid`),
  KEY `userid_idx` (`userid`),
  CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parcel`
--

DROP TABLE IF EXISTS `parcel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parcel` (
  `parcelid` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `userEmail` varchar(45) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `length` int DEFAULT NULL,
  `weight` int DEFAULT NULL,
  `sendername` varchar(45) DEFAULT NULL,
  `senderaddress` varchar(200) DEFAULT NULL,
  `senderPhoneNumber` varchar(20) DEFAULT NULL,
  `recipientname` varchar(45) DEFAULT NULL,
  `recipientaddress` varchar(200) DEFAULT NULL,
  `recipientPhoneNumber` varchar(20) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `dateReserved` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `reservationCode` int DEFAULT NULL,
  `IsCodeValid` tinyint DEFAULT '1',
  `PickupCode` varchar(45) DEFAULT NULL,
  `pickuplocation` varchar(45) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Parcel Not Delivered',
  `CabinetId` int DEFAULT NULL,
  PRIMARY KEY (`parcelid`),
  UNIQUE KEY `cabinetcode_UNIQUE` (`reservationCode`),
  UNIQUE KEY `PickupCode_UNIQUE` (`PickupCode`),
  KEY `email_idx` (`userId`),
  KEY `email_idx1` (`userEmail`),
  KEY `CabinetId_idx` (`CabinetId`),
  CONSTRAINT `CabinetId` FOREIGN KEY (`CabinetId`) REFERENCES `cabinets` (`cabinetID`),
  CONSTRAINT `email` FOREIGN KEY (`userEmail`) REFERENCES `user` (`email`) ON DELETE SET NULL,
  CONSTRAINT `id` FOREIGN KEY (`userId`) REFERENCES `user` (`userid`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parcel`
--

LOCK TABLES `parcel` WRITE;
/*!40000 ALTER TABLE `parcel` DISABLE KEYS */;
INSERT INTO `parcel` VALUES (224,NULL,NULL,7,43,6,2,'Ramona Grady DVM','85625 Paolo Extension','3687234521','Dude','79787 Breanne Lane','6793200030','Prisma Raksila Oulu','2023-12-12 06:56:42',2307,0,NULL,NULL,'Parcel In Locker',NULL),(225,NULL,NULL,26,48,16,7,'Bryant Harris','077 Will Knolls','6748989983','Lea Lampinen','567 Stanton Islands','7588867696','Prisma Raksila Oulu','2023-12-12 08:46:28',3458,0,NULL,NULL,'Parcel In Locker',NULL),(226,NULL,NULL,34,29,16,6,'Shelley Fritsch','985 Maxime Greens','4122167582','','1734 Branson Way','9948743334','Prisma Raksila Oulu','2023-12-12 08:46:28',2116,0,NULL,NULL,'Parcel In Locker',NULL);
/*!40000 ALTER TABLE `parcel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(512) NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (59,'Saly','Saly123@gmail.com','$2b$10$0tZdMbMee7lRNBsz.Ma3wO/QPX2os4Hf4F8bnzS3lOTiAXdplB9/2'),(60,'Grace','Grace123@gmail.com','$2b$10$yujx7TlqJJHOKCNaW3BKBOK6Wwsl4hA/YV91WqmLfsSkjeDpSoh3O');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-12 19:09:56
