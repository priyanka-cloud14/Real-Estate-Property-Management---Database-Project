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
-- Table structure for table `perspectiverenters`
--

DROP TABLE IF EXISTS `perspectiverenters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perspectiverenters` (
  `U_ID` varchar(50) NOT NULL,
  `name` char(255) DEFAULT NULL,
  `move_in_date` date NOT NULL,
  `location` varchar(255) NOT NULL,
  `budget` int NOT NULL,
  UNIQUE KEY `U_ID` (`U_ID`),
  CONSTRAINT `perspectiverenters_ibfk_1` FOREIGN KEY (`U_ID`) REFERENCES `users` (`U_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perspectiverenters`
--

LOCK TABLES `perspectiverenters` WRITE;
/*!40000 ALTER TABLE `perspectiverenters` DISABLE KEYS */;
INSERT INTO `perspectiverenters` VALUES ('Anitraj07',' Anit Raj Kumar','2023-01-09','chicago',25000),('Aryaan48','Aryaan Sharma','2023-03-20','Los Angeles',28000),('Badri01','Badri alasumali','2023-01-01','Boston',1230),('Bella09','Bella Hadid','2023-09-02','Chicago',45000),('Conrade134','Conrad Johnson','2023-05-15','New York',32000),('Dhaniya06','Dhaniya Kapoor','2023-06-12','Los Angeles',29000),('Falguni05','Falguni Patel','2023-04-25','Chicago',41000),('Priya17','Priya Sharma','2023-08-15','Mumbai',48000),('Puppy25','Puppy Singh','2023-05-08','New York',35000),('Sandy30','Sandeep Preetham','2023-08-01','Chicago',50000),('Virat_Kohli','Virat Kohli','2023-07-10','Mumbai',55000);
/*!40000 ALTER TABLE `perspectiverenters` ENABLE KEYS */;
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
