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
-- Table structure for table `sys_outbox`
--

DROP TABLE IF EXISTS `sys_outbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_outbox` (
  `id` varchar(36) NOT NULL,
  `event_type` varchar(50) NOT NULL,
  `command_id` varchar(36) DEFAULT NULL,
  `command_path` varchar(250) DEFAULT NULL,
  `data` blob,
  `reply_id` varchar(36) DEFAULT NULL,
  `reply_path` varchar(250) DEFAULT NULL,
  `request_id` varchar(36) DEFAULT NULL,
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_outbox`
--

LOCK TABLES `sys_outbox` WRITE;
/*!40000 ALTER TABLE `sys_outbox` DISABLE KEYS */;
INSERT INTO `sys_outbox` VALUES ('2c7ad5db-cc7b-4c19-8b98-dc3b6857f68a','cmd','ffd9b91d-a661-428f-9d4d-a0905babd429','/mas/aml-check/v1/external/rest/command',_binary '{\r\n  \"individualTag\" : \"Y\",\r\n  \"firstNameEn\" : \"Chrizzy\",\r\n  \"middleNameEn\" : \"Poqui\",\r\n  \"lastNameEn\" : \"Loco\",\r\n  \"dateOfBirth\" : \"2001-03-17\",\r\n  \"placeOfBirth\" : \"PH\",\r\n  \"nationality\" : \"Filipino\",\r\n  \"contactNo\" : \"090101010101\",\r\n  \"gender\" : \"F\",\r\n  \"identificationType\" : \"sss\",\r\n  \"identificationNo\" : \"112313213\",\r\n  \"resAddrRoom\" : \"1\",\r\n  \"resAddrFloor\" : \"1\",\r\n  \"resAddrBlock\" : \"28\",\r\n  \"resAddrLot\" : \"3\",\r\n  \"resAddrBuildingName\" : \"\",\r\n  \"resAddrStreet\" : \"PUD Site\",\r\n  \"resAddrVillage\" : \"Escopa\",\r\n  \"resAddrHousingProject\" : \"Project 4\",\r\n  \"resAddrDistrict\" : \"2\",\r\n  \"resAddrCity\" : \"QC\",\r\n  \"resAddrCountryCode\" : \"PH\",\r\n  \"companyNameEn\" : null,\r\n  \"companyType\" : null,\r\n  \"companyTelNo\" : null,\r\n  \"companyPrimaryContactNo\" : null,\r\n  \"companyDateOfIncorporation\" : null,\r\n  \"companyCertificationType\" : null,\r\n  \"companyCertificationNo\" : null,\r\n  \"companyRegistrationType\" : null,\r\n  \"companyRegistrationNo\" : null,\r\n  \"comAddrRoom\" : null,\r\n  \"comAddrFloor\" : null,\r\n  \"comAddrBlock\" : null,\r\n  \"comAddrLot\" : null,\r\n  \"comAddrBuildingName\" : null,\r\n  \"comAddrStreet\" : null,\r\n  \"comAddrVillage\" : null,\r\n  \"comAddrHousingProject\" : null,\r\n  \"comAddrDistrict\" : null,\r\n  \"comAddrCity\" : null,\r\n  \"comAddrCountryCode\" : null,\r\n  \"countryCodeIncorporation\" : \"PH\",\r\n  \"countryCodeOperation\" : \"PH\",\r\n  \"authorizedSigners\" : \"Y\",\r\n  \"legal\" : \"Y\",\r\n  \"management\" : \"Y\",\r\n  \"owner\" : \"Y\",\r\n  \"regulatory\" : \"Y\",\r\n  \"companySourceIncome\" : null,\r\n  \"natureOfCompany\" : \"IT Industry\",\r\n  \"individualSourceIncome\" : \"STAFF\",\r\n  \"natureOfIndividualSourceIncome\" : null,\r\n  \"role\" : null,\r\n  \"clientId\" : \"fa8c20e6-28e7-4dd0-a335-fd9e73a25950\",\r\n  \"clientAcctId\" : \"edaae4bd-ea0c-4e9b-a673-155591e19e62\",\r\n  \"clientType\" : \"PERSON\"\r\n}','be5beb6c-36b8-4d9c-a70f-3542026c2593','/mas/aml-check/v1/external/rest/command/reply','fa8c20e6-28e7-4dd0-a335-fd9e73a25950','2023-02-14 15:59:55'),('82028445-afc4-44ec-9d18-bd8a797cfb2b','rpy','3da92adb-007c-4ef5-bbe3-043c5f1a60ec','/mas/aml-check/v1/external/rest/command',_binary '{\r\n  \"screeningResult\" : {\r\n    \"customerNo\" : \"XS1969228119\",\r\n    \"hits\" : {\r\n      \"created\" : 1676800781060,\r\n      \"riskLevel\" : \"LOW\",\r\n      \"score\" : 44.0\r\n    },\r\n    \"id\" : \"d4ef7f49-572a-44f3-814c-b4e1a1065fab\",\r\n    \"input\" : {\r\n      \"entityType\" : \"PERSON\",\r\n      \"hitsTotal\" : 1.53,\r\n      \"result\" : null,\r\n      \"status\" : \"LOW\"\r\n    }\r\n  }\r\n}','6287db39-1e7e-41f8-aa1b-fd751b5f2fe4','/mas/aml-check/v1/external/rest/command/reply','fa8c20e6-28e7-4dd0-a335-fd9e73a25950','2023-02-19 17:51:58'),('a670cfef-a0a6-4544-9111-50ce054b06b0','rpy','b1c5dd22-d6a3-44a9-8416-de8e86833887','/mas/aml-check/v1/external/rest/command',_binary '{\r\n  \"screeningResult\" : {\r\n    \"id\" : \"ac29d0c4-afca-426f-8f6d-da7fa5dfcda8\",\r\n    \"customerNo\" : \"AB0819861151\",\r\n    \"input\" : {\r\n      \"entityType\" : \"PERSON\",\r\n      \"status\" : \"LOW\",\r\n      \"hitsTotal\" : 1.53,\r\n      \"result\" : null\r\n    },\r\n    \"hits\" : {\r\n      \"score\" : 44.0,\r\n      \"riskLevel\" : \"LOW\",\r\n      \"created\" : 1676357979021\r\n    }\r\n  }\r\n}','6a69cfea-d63a-4990-a07b-6b97c8f636b8','/mas/aml-check/v1/external/rest/command/reply','fa8c20e6-28e7-4dd0-a335-fd9e73a25950','2023-02-14 14:50:59'),('c3e03759-ebed-408f-8b09-eabe6e23e312','cmd','b1c5dd22-d6a3-44a9-8416-de8e86833887','/mas/aml-check/v1/external/rest/command',_binary '{\r\n  \"individualTag\" : \"Y\",\r\n  \"firstNameEn\" : \"Chrizzy\",\r\n  \"middleNameEn\" : \"Poqui\",\r\n  \"lastNameEn\" : \"Loco\",\r\n  \"dateOfBirth\" : \"2001-03-17\",\r\n  \"placeOfBirth\" : \"PH\",\r\n  \"nationality\" : \"Filipino\",\r\n  \"contactNo\" : \"090101010101\",\r\n  \"gender\" : \"F\",\r\n  \"identificationType\" : \"sss\",\r\n  \"identificationNo\" : \"112313213\",\r\n  \"resAddrRoom\" : \"1\",\r\n  \"resAddrFloor\" : \"1\",\r\n  \"resAddrBlock\" : \"28\",\r\n  \"resAddrLot\" : \"3\",\r\n  \"resAddrBuildingName\" : \"\",\r\n  \"resAddrStreet\" : \"PUD Site\",\r\n  \"resAddrVillage\" : \"Escopa\",\r\n  \"resAddrHousingProject\" : \"Project 4\",\r\n  \"resAddrDistrict\" : \"2\",\r\n  \"resAddrCity\" : \"QC\",\r\n  \"resAddrCountryCode\" : \"PH\",\r\n  \"companyNameEn\" : null,\r\n  \"companyType\" : null,\r\n  \"companyTelNo\" : null,\r\n  \"companyPrimaryContactNo\" : null,\r\n  \"companyDateOfIncorporation\" : null,\r\n  \"companyCertificationType\" : null,\r\n  \"companyCertificationNo\" : null,\r\n  \"companyRegistrationType\" : null,\r\n  \"companyRegistrationNo\" : null,\r\n  \"comAddrRoom\" : null,\r\n  \"comAddrFloor\" : null,\r\n  \"comAddrBlock\" : null,\r\n  \"comAddrLot\" : null,\r\n  \"comAddrBuildingName\" : null,\r\n  \"comAddrStreet\" : null,\r\n  \"comAddrVillage\" : null,\r\n  \"comAddrHousingProject\" : null,\r\n  \"comAddrDistrict\" : null,\r\n  \"comAddrCity\" : null,\r\n  \"comAddrCountryCode\" : null,\r\n  \"countryCodeIncorporation\" : \"PH\",\r\n  \"countryCodeOperation\" : \"PH\",\r\n  \"authorizedSigners\" : \"Y\",\r\n  \"legal\" : \"Y\",\r\n  \"management\" : \"Y\",\r\n  \"owner\" : \"Y\",\r\n  \"regulatory\" : \"Y\",\r\n  \"companySourceIncome\" : null,\r\n  \"natureOfCompany\" : \"IT Industry\",\r\n  \"individualSourceIncome\" : \"STAFF\",\r\n  \"natureOfIndividualSourceIncome\" : null,\r\n  \"role\" : null,\r\n  \"clientId\" : \"fa8c20e6-28e7-4dd0-a335-fd9e73a25950\",\r\n  \"clientAcctId\" : \"edaae4bd-ea0c-4e9b-a673-155591e19e62\",\r\n  \"clientType\" : \"PERSON\"\r\n}','6a69cfea-d63a-4990-a07b-6b97c8f636b8','/mas/aml-check/v1/external/rest/command/reply','fa8c20e6-28e7-4dd0-a335-fd9e73a25950','2023-02-14 14:50:59'),('dbb7b296-7361-4df4-9f92-84792623e301','rpy','ffd9b91d-a661-428f-9d4d-a0905babd429','/mas/aml-check/v1/external/rest/command',_binary '{\r\n  \"screeningResult\" : {\r\n    \"id\" : \"b2463ac2-952a-40f7-a1e9-12eecafea019\",\r\n    \"customerNo\" : \"CH5617884711\",\r\n    \"input\" : {\r\n      \"entityType\" : \"PERSON\",\r\n      \"status\" : \"LOW\",\r\n      \"hitsTotal\" : 1.53,\r\n      \"result\" : null\r\n    },\r\n    \"hits\" : {\r\n      \"score\" : 44.0,\r\n      \"riskLevel\" : \"LOW\",\r\n      \"created\" : 1676362060289\r\n    }\r\n  }\r\n}','be5beb6c-36b8-4d9c-a70f-3542026c2593','/mas/aml-check/v1/external/rest/command/reply','fa8c20e6-28e7-4dd0-a335-fd9e73a25950','2023-02-14 15:59:55'),('de7905b2-9871-4c52-8846-034ebe3179ff','cmd','3da92adb-007c-4ef5-bbe3-043c5f1a60ec','/mas/aml-check/v1/external/rest/command',_binary '{\r\n  \"individualTag\" : \"Y\",\r\n  \"firstNameEn\" : \"Chrizzy\",\r\n  \"middleNameEn\" : \"Poqui\",\r\n  \"lastNameEn\" : \"Loco\",\r\n  \"dateOfBirth\" : \"2001-03-17\",\r\n  \"placeOfBirth\" : \"PH\",\r\n  \"nationality\" : \"Filipino\",\r\n  \"contactNo\" : \"090101010101\",\r\n  \"gender\" : \"F\",\r\n  \"identificationType\" : \"sss\",\r\n  \"identificationNo\" : \"112313213\",\r\n  \"resAddrRoom\" : \"1\",\r\n  \"resAddrFloor\" : \"1\",\r\n  \"resAddrBlock\" : \"28\",\r\n  \"resAddrLot\" : \"3\",\r\n  \"resAddrBuildingName\" : \"null\",\r\n  \"resAddrStreet\" : \"PUD Site\",\r\n  \"resAddrVillage\" : \"Escopa\",\r\n  \"resAddrHousingProject\" : \"Project 4\",\r\n  \"resAddrDistrict\" : \"2\",\r\n  \"resAddrCity\" : \"QC\",\r\n  \"resAddrCountryCode\" : \"PH\",\r\n  \"companyNameEn\" : \"null\",\r\n  \"companyType\" : \"null\",\r\n  \"companyTelNo\" : \"null\",\r\n  \"companyPrimaryContactNo\" : \"null\",\r\n  \"companyDateOfIncorporation\" : \"null\",\r\n  \"companyCertificationType\" : \"null\",\r\n  \"companyCertificationNo\" : \"null\",\r\n  \"companyRegistrationType\" : \"null\",\r\n  \"companyRegistrationNo\" : \"null\",\r\n  \"comAddrRoom\" : \"null\",\r\n  \"comAddrFloor\" : \"null\",\r\n  \"comAddrBlock\" : \"null\",\r\n  \"comAddrLot\" : \"null\",\r\n  \"comAddrBuildingName\" : \"null\",\r\n  \"comAddrStreet\" : \"null\",\r\n  \"comAddrVillage\" : \"null\",\r\n  \"comAddrHousingProject\" : \"null\",\r\n  \"comAddrDistrict\" : \"null\",\r\n  \"comAddrCity\" : \"null\",\r\n  \"comAddrCountryCode\" : \"null\",\r\n  \"countryCodeIncorporation\" : \"PH\",\r\n  \"countryCodeOperation\" : \"PH\",\r\n  \"authorizedSigners\" : \"Y\",\r\n  \"legal\" : \"Y\",\r\n  \"management\" : \"Y\",\r\n  \"owner\" : \"Y\",\r\n  \"regulatory\" : \"Y\",\r\n  \"companySourceIncome\" : \"null\",\r\n  \"natureOfCompany\" : \"null\",\r\n  \"individualSourceIncome\" : \"STAFF\",\r\n  \"natureOfIndividualSourceIncome\" : \"IT Industry\",\r\n  \"role\" : \"STAFF\",\r\n  \"clientId\" : \"fa8c20e6-28e7-4dd0-a335-fd9e73a25950\",\r\n  \"clientAcctId\" : \"edaae4bd-ea0c-4e9b-a673-155591e19e62\",\r\n  \"clientType\" : \"PERSON\"\r\n}','6287db39-1e7e-41f8-aa1b-fd751b5f2fe4','/mas/aml-check/v1/external/rest/command/reply','fa8c20e6-28e7-4dd0-a335-fd9e73a25950','2023-02-19 17:51:58');
/*!40000 ALTER TABLE `sys_outbox` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-18 18:30:27
