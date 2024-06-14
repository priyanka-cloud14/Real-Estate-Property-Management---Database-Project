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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `U_ID` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `Role` enum('Agency','perspective_renter') NOT NULL,
  PRIMARY KEY (`U_ID`),
  KEY `idx_user_id` (`U_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('Addams3612','addamss3612@gmail.com','addams612','Agency'),('Anitraj07','anitari056@gmail.com','anit085','perspective_renter'),('Anushka18','anushka25@gmail.com','anush18','perspective_renter'),('Aryaan48','aryan89@gmail.com','arya27','perspective_renter'),('Badri01','Bchk@gmail.com','Adun0103','perspective_renter'),('Bella09','bella23@gmail.com','bella_03','perspective_renter'),('Bhuv07','bhuvana@gmail.com','Bhuvan08','perspective_renter'),('BP289','brideport289@gmail.com','bridge289','Agency'),('Conrade134','conrad345@gmail.com','conra234','perspective_renter'),('Deepika67','deepika85@gmail.com','deepu12','perspective_renter'),('Dhaniya06','dhani05@gmail.com','dhaniY056','perspective_renter'),('EC1400','eidencommans1400@gmail.com','Eiden8018','Agency'),('Falguni05','falguni045@gmail.com','Falgun97','perspective_renter'),('Ghani02','ghani06@gmail.com','ganik075','perspective_renter'),('Jeremai73','jerry567@gmail.com','jerry65','perspective_renter'),('LM100','2727 S Indiana','Lake100','Agency'),('Prabhas56','prabhas988@gmail.com','prabha23','perspective_renter'),('Priya17','priya134@gmail.com','yanka03','perspective_renter'),('PS2851','prarieshores2851@gmail.com','prarie2901','Agency'),('Puppy25','Puppy25@gmail.com','Dpup09','perspective_renter'),('Sandy30','sandy30@gmail.com','SandyP30','perspective_renter'),('Virat_Kohli','virat18@gmail.com','kohli18','perspective_renter');
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

-- Dump completed on 2023-10-27 10:19:00
