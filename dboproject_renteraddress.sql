-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: dboproject
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `renteraddress`
--

DROP TABLE IF EXISTS `renteraddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `renteraddress` (
  `U_ID` varchar(50) DEFAULT NULL,
  `AddressID` int NOT NULL AUTO_INCREMENT,
  `line_1` varchar(250) DEFAULT NULL,
  `zipcode` decimal(5,0) DEFAULT NULL,
  `city` char(100) DEFAULT NULL,
  `state` char(100) DEFAULT NULL,
  `country` char(50) DEFAULT NULL,
  PRIMARY KEY (`AddressID`),
  UNIQUE KEY `AddressID` (`AddressID`),
  KEY `U_ID` (`U_ID`),
  CONSTRAINT `renteraddress_ibfk_1` FOREIGN KEY (`U_ID`) REFERENCES `perspectiverenters` (`U_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `renteraddress`
--

LOCK TABLES `renteraddress` WRITE;
/*!40000 ALTER TABLE `renteraddress` DISABLE KEYS */;
INSERT INTO `renteraddress` VALUES ('Anitraj07',101,'400 East 33rd street',60616,'Chicago','Illinois','USA'),('Badri01',102,'123 Main Street',60601,'Chicago','Illinois','USA'),('Bella09',103,'456 Elm Street',60602,'Chicago','Illinois','USA'),('Sandy30',104,'789 Oak Avenue',60603,'Chicago','Illinois','USA'),('Conrade134',105,'101 First Street',10001,'New York','New York','USA'),('Aryaan48',107,'303 Third Boulevard',94101,'San Francisco','California','USA'),('Virat_Kohli',108,'404 Fourth Lane',33101,'Miami','Florida','USA'),('Falguni05',113,'909 Ninth Avenue',33102,'Miami','Florida','USA'),('Dhaniya06',114,'1010 Tenth Way',60605,'Chicago','Illinois','USA'),('Puppy25',115,'1111 Eleventh Place',10003,'New York','New York','USA'),('Priya17',116,'1212 Twelfth Lane',90003,'Los Angeles','California','USA');
/*!40000 ALTER TABLE `renteraddress` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-27 10:19:00
