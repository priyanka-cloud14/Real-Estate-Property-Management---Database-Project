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
-- Table structure for table `propertyy`
--

DROP TABLE IF EXISTS `propertyy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `propertyy` (
  `E_ID` varchar(50) DEFAULT NULL,
  `propertyID` int NOT NULL AUTO_INCREMENT,
  `property_type` enum('house','apartment','commercial_building') NOT NULL,
  `city` char(35) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `availability` date DEFAULT NULL,
  PRIMARY KEY (`propertyID`),
  UNIQUE KEY `propertyID` (`propertyID`),
  UNIQUE KEY `E_ID` (`E_ID`),
  CONSTRAINT `propertyy_ibfk_1` FOREIGN KEY (`E_ID`) REFERENCES `employee` (`E_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertyy`
--

LOCK TABLES `propertyy` WRITE;
/*!40000 ALTER TABLE `propertyy` DISABLE KEYS */;
INSERT INTO `propertyy` VALUES ('E2000',100,'house','chicago','Michigan ave 4th street',5000.8,'A beautiful house in a quiet neighborhood.','2023-09-12'),('E2001',101,'house','chicago','Lake Shore Drive 6th street',60000.5,'Spacious house with a view.','2023-08-18'),('E2002',102,'apartment','chicago','State Street 16th street',40000.2,'Semi-furnished apartment with a view.','2023-08-10'),('E2003',103,'apartment','chicago','South Cicero Avenue 8th street',80001,'Fully-Furnished apartment','2023-08-13'),('E2004',104,'commercial_building','chicago','Devon Avenue 19th street',60000.1,'Prime location for businesses.','2023-08-21'),('E2005',105,'commercial_building','chicago','Clark Street 17th street',70000,'Modern commercial building with office spaces.','2023-08-26');
/*!40000 ALTER TABLE `propertyy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-27 10:19:01
