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
-- Temporary view structure for view `propertytransactionview`
--

DROP TABLE IF EXISTS `propertytransactionview`;
/*!50001 DROP VIEW IF EXISTS `propertytransactionview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `propertytransactionview` AS SELECT 
 1 AS `BookingID`,
 1 AS `AgencyEmployeeID`,
 1 AS `PropertyType`,
 1 AS `PropertyCity`,
 1 AS `PropertyAddress`,
 1 AS `PropertyPrice`,
 1 AS `PropertyDescription`,
 1 AS `PropertyAvailability`,
 1 AS `PropertyID`,
 1 AS `PerspectiveRenterName`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `propertytransactionview`
--

/*!50001 DROP VIEW IF EXISTS `propertytransactionview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `propertytransactionview` AS select `br`.`BookingID` AS `BookingID`,`p`.`E_ID` AS `AgencyEmployeeID`,`p`.`property_type` AS `PropertyType`,`p`.`city` AS `PropertyCity`,`p`.`address` AS `PropertyAddress`,`p`.`price` AS `PropertyPrice`,`p`.`description` AS `PropertyDescription`,`p`.`availability` AS `PropertyAvailability`,`p`.`propertyID` AS `PropertyID`,`pr`.`name` AS `PerspectiveRenterName` from ((`property` `p` join `booking_records` `br` on((`br`.`propertyID` = `p`.`propertyID`))) join `perspectiverenters` `pr` on((`pr`.`U_ID` = `br`.`U_ID`))) */;
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

-- Dump completed on 2023-10-27 10:19:02
