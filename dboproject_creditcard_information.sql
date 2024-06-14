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
-- Table structure for table `creditcard_information`
--

DROP TABLE IF EXISTS `creditcard_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creditcard_information` (
  `U_ID` varchar(50) DEFAULT NULL,
  `email_ID` varchar(255) DEFAULT NULL,
  `Card_Number` decimal(16,0) NOT NULL,
  `cardExpiry` date NOT NULL,
  `Name` char(50) NOT NULL,
  `cvv` decimal(3,0) NOT NULL,
  PRIMARY KEY (`Card_Number`),
  KEY `U_ID` (`U_ID`),
  CONSTRAINT `creditcard_information_ibfk_1` FOREIGN KEY (`U_ID`) REFERENCES `perspectiverenters` (`U_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creditcard_information`
--

LOCK TABLES `creditcard_information` WRITE;
/*!40000 ALTER TABLE `creditcard_information` DISABLE KEYS */;
INSERT INTO `creditcard_information` VALUES ('Anitraj07','anitraj7@gmail.com',1234567887654321,'2030-09-01',' Anit Raj Kumar',873),('Badri01','badri01@gmail.com',2345678987654321,'2031-05-01','Badri Alasumali',752),('Bella09','bella09@gmail.com',3456789876543212,'2032-08-01','Bella Hadid',946),('Sandy30','sandy30@gmail.com',4567898765432123,'2033-10-01','Sandeep Preetham',629),('Conrade134','conrade134@gmail.com',5678987654321234,'2034-03-01','Conrad',518),('Falguni05','falguni05@gmail.com',5678987654322345,'2042-06-01','Falguni',654),('Dhaniya06','dhaniya06@gmail.com',6789876543223456,'2043-05-01','Dhaniya',987),('Aryaan48','aryaan48@gmail.com',7898765432123456,'2036-11-01','Arya',305),('Puppy25','puppy25@gmail.com',7898765432234567,'2044-04-01','Puppy',123),('Virat_Kohli','virat_kohli@gmail.com',8909876543212345,'2037-04-01','Virat',214),('Priya17','priya17@gmail.com',8909876543223456,'2045-03-01','Priya',456);
/*!40000 ALTER TABLE `creditcard_information` ENABLE KEYS */;
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
