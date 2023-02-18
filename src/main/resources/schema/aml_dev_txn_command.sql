-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: aml_dev
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `txn_command`
--

DROP TABLE IF EXISTS `txn_command`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `txn_command` (
  `id` varchar(36) NOT NULL,
  `first_name_en` varchar(50) DEFAULT NULL,
  `middle_name_en` varchar(50) DEFAULT NULL,
  `last_name_en` varchar(50) DEFAULT NULL,
  `date_of_birth` varchar(45) DEFAULT NULL,
  `place_of_birth` varchar(5) DEFAULT NULL,
  `nationality` varchar(5) DEFAULT NULL,
  `contact_no` varchar(20) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `identification_type` varchar(45) DEFAULT NULL,
  `identification_no` varchar(45) DEFAULT NULL,
  `res_addr_room` varchar(45) DEFAULT NULL,
  `res_addr_floor` varchar(45) DEFAULT NULL,
  `res_addr_block` varchar(45) DEFAULT NULL,
  `res_addr_lot` varchar(45) DEFAULT NULL,
  `res_addr_building_name` varchar(45) DEFAULT NULL,
  `res_addr_street` varchar(36) DEFAULT NULL,
  `res_addr_village` varchar(45) DEFAULT NULL,
  `res_addr_housing_project` varchar(45) DEFAULT NULL,
  `res_addr_district` varchar(45) DEFAULT NULL,
  `res_addr_city` varchar(45) DEFAULT NULL,
  `res_addr_country_code` varchar(45) DEFAULT NULL,
  `company_name_en` varchar(45) DEFAULT NULL,
  `company_type` varchar(45) DEFAULT NULL,
  `company_tel_no` varchar(45) DEFAULT NULL,
  `company_primary_contact_no` varchar(45) DEFAULT NULL,
  `company_date_of_incorporation` varchar(45) DEFAULT NULL,
  `company_certification_type` varchar(45) DEFAULT NULL,
  `company_certification_no` varchar(45) DEFAULT NULL,
  `company_registration_type` varchar(45) DEFAULT NULL,
  `company_registration_no` varchar(45) DEFAULT NULL,
  `com_addr_room` varchar(45) DEFAULT NULL,
  `com_addr_floor` varchar(45) DEFAULT NULL,
  `com_addr_block` varchar(45) DEFAULT NULL,
  `com_addr_lot` varchar(45) DEFAULT NULL,
  `com_addr_building_name` varchar(45) DEFAULT NULL,
  `com_addr_street` varchar(45) DEFAULT NULL,
  `com_addr_village` varchar(45) DEFAULT NULL,
  `com_addr_housing_project` varchar(45) DEFAULT NULL,
  `com_addr_district` varchar(45) DEFAULT NULL,
  `com_addr_city` varchar(45) DEFAULT NULL,
  `com_addr_country_code` varchar(45) DEFAULT NULL,
  `country_code_incorporation` varchar(45) DEFAULT NULL,
  `country_code_operation` varchar(45) DEFAULT NULL,
  `authorized_signers` varchar(45) DEFAULT NULL,
  `legal` varchar(45) DEFAULT NULL,
  `management` varchar(45) DEFAULT NULL,
  `owner` varchar(45) DEFAULT NULL,
  `regulatory` varchar(45) DEFAULT NULL,
  `company_source_income` varchar(45) DEFAULT NULL,
  `nature_of_company` varchar(45) DEFAULT NULL,
  `individual_source_income` varchar(45) DEFAULT NULL,
  `nature_of_individual_source_income` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `client_id` varchar(36) DEFAULT NULL,
  `client_acct_id` varchar(45) DEFAULT NULL,
  `client_type` varchar(45) DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txn_command`
--

LOCK TABLES `txn_command` WRITE;
/*!40000 ALTER TABLE `txn_command` DISABLE KEYS */;
INSERT INTO `txn_command` VALUES ('8965bc97-ebde-4c9a-a68f-4d034786696f','Chrizzy','Poqui','Loco','2001-03-17','PH','PH','090101010101','F','sss','112313213','1','1','28','3','','','Escopa','Project 4','2','QC','PH',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'PH','PH','Y','Y','Y','Y','Y',NULL,'IT Industry','STAFF',NULL,NULL,'fa8c20e6-28e7-4dd0-a335-fd9e73a25950','edaae4bd-ea0c-4e9b-a673-155591e19e62','PERSON','2023-02-17 10:51:11'),('92a41420-0420-4756-9608-d46d298b0fc4','Chrizzy','Poqui','Loco','2001-03-17','PH','PH','090101010101','F','sss','112313213','1','1','28','3','','','Escopa','Project 4','2','QC','PH',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'PH','PH','Y','Y','Y','Y','Y',NULL,'IT Industry','STAFF',NULL,NULL,'fa8c20e6-28e7-4dd0-a335-fd9e73a25950','edaae4bd-ea0c-4e9b-a673-155591e19e62','PERSON','2023-02-17 14:12:08');
/*!40000 ALTER TABLE `txn_command` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-18 18:30:26
