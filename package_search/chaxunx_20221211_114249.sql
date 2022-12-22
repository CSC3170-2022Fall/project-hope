-- MySQL dump 10.13  Distrib 5.6.50, for Linux (x86_64)
--
-- Host: localhost    Database: chaxunx
-- ------------------------------------------------------
-- Server version	5.6.50-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chip`
--

DROP TABLE IF EXISTS `chip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chip` (
  `CHIP_ID` int(11) NOT NULL,
  `PACKAGE_ID` int(11) DEFAULT NULL,
  `MACHINE_ID` int(11) DEFAULT NULL,
  `CHIP_TYPE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`CHIP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chip`
--

LOCK TABLES `chip` WRITE;
/*!40000 ALTER TABLE `chip` DISABLE KEYS */;
/*!40000 ALTER TABLE `chip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chip_operation`
--

DROP TABLE IF EXISTS `chip_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chip_operation` (
  `Chip_typer_id` int(11) NOT NULL,
  `operation_type_id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`Chip_typer_id`,`operation_type_id`,`order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chip_operation`
--

LOCK TABLES `chip_operation` WRITE;
/*!40000 ALTER TABLE `chip_operation` DISABLE KEYS */;
INSERT INTO `chip_operation` VALUES (0,4,4),(0,18,2),(0,19,1),(0,38,0),(0,45,3),(1,1,3),(1,6,2),(1,32,0),(1,46,1),(2,7,2),(2,11,3),(2,24,1),(2,46,0),(3,1,2),(3,10,0),(3,11,1),(4,0,0),(4,4,1),(4,9,3),(4,13,2),(4,31,5),(4,48,4),(5,17,2),(5,21,0),(5,28,1),(6,3,0),(6,20,2),(6,31,3),(6,33,4),(6,39,1),(7,9,1),(7,31,0),(8,27,2),(8,39,0),(8,42,1),(9,17,0),(9,32,1),(10,6,1),(10,46,0),(11,19,4),(11,28,2),(11,35,1),(11,36,3),(11,37,0),(12,18,0),(12,29,2),(12,32,1),(12,40,4),(12,41,5),(12,43,3),(13,4,0),(13,15,2),(13,20,3),(13,21,1),(14,20,1),(14,21,3),(14,23,2),(14,38,4),(14,39,0),(14,43,5),(15,7,0),(15,37,1),(16,12,3),(16,14,1),(16,20,2),(16,25,4),(16,35,5),(16,43,0),(17,5,2),(17,11,3),(17,16,0),(17,33,1),(18,21,0),(18,22,1),(18,36,2),(19,7,3),(19,16,1),(19,22,2),(19,41,0),(20,10,2),(20,12,0),(20,30,1),(20,39,4),(20,40,3),(21,5,2),(21,10,4),(21,14,5),(21,27,3),(21,35,0),(21,39,1),(22,3,2),(22,7,3),(22,24,0),(22,28,4),(22,39,1),(23,1,4),(23,19,1),(23,24,0),(23,30,3),(23,47,2),(24,9,1),(24,21,0),(24,27,2),(24,39,3),(25,23,1),(25,29,2),(25,43,3),(25,47,0),(26,6,2),(26,12,5),(26,19,1),(26,21,0),(26,26,3),(26,44,4),(27,16,0),(27,27,4),(27,28,1),(27,46,2),(27,48,3),(28,10,1),(28,22,0),(28,24,2),(29,4,4),(29,7,0),(29,22,2),(29,42,1),(29,47,3),(30,6,0),(30,7,1),(30,25,3),(30,28,2),(30,48,4),(31,15,0),(31,19,3),(31,22,1),(31,26,2),(32,13,2),(32,19,0),(32,29,3),(32,45,1),(33,2,4),(33,8,5),(33,16,3),(33,25,1),(33,38,0),(33,47,2),(34,10,0),(34,28,2),(34,44,1),(35,10,2),(35,29,1),(35,46,0),(36,13,0),(36,36,2),(36,46,1),(37,4,1),(37,21,4),(37,27,2),(37,31,0),(37,38,3),(38,1,5),(38,2,4),(38,10,3),(38,26,1),(38,31,0),(38,32,2),(39,4,2),(39,8,0),(39,37,1),(40,1,2),(40,30,3),(40,37,0),(40,47,1),(41,5,3),(41,21,4),(41,27,0),(41,43,1),(41,44,2),(42,12,1),(42,39,0),(43,20,0),(43,29,3),(43,35,2),(43,38,1),(43,49,4),(44,7,1),(44,29,0),(44,46,2),(45,10,2),(45,17,1),(45,28,0),(45,49,3),(46,12,2),(46,18,1),(46,23,0),(47,6,2),(47,9,3),(47,21,4),(47,24,0),(47,47,1),(48,0,4),(48,1,2),(48,9,1),(48,40,3),(48,48,0),(49,9,4),(49,30,5),(49,32,3),(49,35,0),(49,38,1),(49,44,2);
/*!40000 ALTER TABLE `chip_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chip_type`
--

DROP TABLE IF EXISTS `chip_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chip_type` (
  `CHIP_TYPE_ID` int(11) NOT NULL,
  `OPERATION_NUMBER` int(11) DEFAULT NULL,
  PRIMARY KEY (`CHIP_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chip_type`
--

LOCK TABLES `chip_type` WRITE;
/*!40000 ALTER TABLE `chip_type` DISABLE KEYS */;
INSERT INTO `chip_type` VALUES (0,5),(1,4),(2,4),(3,3),(4,6),(5,3),(6,5),(7,2),(8,3),(9,2),(10,2),(11,5),(12,6),(13,4),(14,6),(15,2),(16,6),(17,4),(18,3),(19,4),(20,5),(21,6),(22,5),(23,5),(24,4),(25,4),(26,6),(27,5),(28,3),(29,5),(30,5),(31,4),(32,4),(33,6),(34,3),(35,3),(36,3),(37,5),(38,6),(39,3),(40,4),(41,5),(42,2),(43,5),(44,3),(45,4),(46,3),(47,5),(48,5),(49,6);
/*!40000 ALTER TABLE `chip_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumer`
--

DROP TABLE IF EXISTS `consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumer` (
  `CONSUMER_ID` int(11) NOT NULL,
  `CONSUMER_NAME` varchar(25) DEFAULT NULL,
  `PERSON_OR_COMPANY` tinyint(1) DEFAULT NULL,
  `ADDRESS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CONSUMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer`
--

LOCK TABLES `consumer` WRITE;
/*!40000 ALTER TABLE `consumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machine`
--

DROP TABLE IF EXISTS `machine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `machine` (
  `MACHINE_ID` int(11) NOT NULL,
  `MACHINE_TYPE_ID` int(11) DEFAULT NULL,
  `PLANT_ID` int(11) DEFAULT NULL,
  `STATUS` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`MACHINE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machine`
--

LOCK TABLES `machine` WRITE;
/*!40000 ALTER TABLE `machine` DISABLE KEYS */;
/*!40000 ALTER TABLE `machine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machine_type`
--

DROP TABLE IF EXISTS `machine_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `machine_type` (
  `MACHINE_TYPE_ID` int(11) NOT NULL,
  `OPERATION_TYPE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`MACHINE_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machine_type`
--

LOCK TABLES `machine_type` WRITE;
/*!40000 ALTER TABLE `machine_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `machine_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation`
--

DROP TABLE IF EXISTS `operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation` (
  `OPERATION_ID` int(11) NOT NULL,
  `OPERATION_TYPE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`OPERATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation`
--

LOCK TABLES `operation` WRITE;
/*!40000 ALTER TABLE `operation` DISABLE KEYS */;
/*!40000 ALTER TABLE `operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_type`
--

DROP TABLE IF EXISTS `operation_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_type` (
  `OPERATION_TYPE_ID` int(11) NOT NULL,
  `FEASIBILITY` tinyint(1) DEFAULT NULL,
  `TIME_COST` int(11) DEFAULT NULL,
  `COST` int(11) DEFAULT NULL,
  PRIMARY KEY (`OPERATION_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_type`
--

LOCK TABLES `operation_type` WRITE;
/*!40000 ALTER TABLE `operation_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `operation_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package` (
  `PACKAGE_ID` int(11) NOT NULL,
  `CONSUMER_ID` int(11) DEFAULT NULL,
  `TIME` datetime DEFAULT NULL,
  `EXPENSE` int(11) DEFAULT NULL,
  PRIMARY KEY (`PACKAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT INTO `package` VALUES (13580000,108,'2035-07-25 00:36:09',142183),(13580001,413,'2035-07-24 04:25:48',164745),(13580002,362,'2035-02-21 07:55:51',143474),(13580003,352,'2035-03-03 08:20:31',124126),(13580004,41,'2035-10-26 03:02:38',133817),(13580005,83,'2035-09-23 01:54:40',157366),(13580006,439,'2035-04-16 05:08:43',164107),(13580007,431,'2035-06-24 00:45:47',157954),(13580008,423,'2035-09-21 21:01:14',132410),(13580009,463,'2035-10-25 06:29:09',136052),(13580010,152,'2035-07-27 13:50:58',160199),(13580011,47,'2035-08-21 20:40:08',152589),(13580012,85,'2035-06-04 06:49:39',151539),(13580013,18,'2035-06-05 11:55:13',152284),(13580014,93,'2035-03-04 08:01:29',163791),(13580015,237,'2035-04-28 20:54:52',158820),(13580016,308,'2035-11-01 20:17:07',146171),(13580017,462,'2035-05-25 09:55:58',156165),(13580018,266,'2035-07-22 21:48:41',133849),(13580019,94,'2035-11-19 09:15:05',147137),(13580020,122,'2035-09-10 17:41:59',146506),(13580021,425,'2035-11-24 06:38:09',155800),(13580022,159,'2035-05-01 04:20:55',186271),(13580023,352,'2035-05-28 18:38:44',124955),(13580024,240,'2035-08-09 13:18:11',136905),(13580025,285,'2035-07-14 05:47:26',145147),(13580026,245,'2035-03-09 05:52:26',151113),(13580027,233,'2035-02-21 15:08:29',133850),(13580028,90,'2035-03-08 06:16:42',128655),(13580029,372,'2035-06-28 19:39:57',143401),(13580030,406,'2035-10-10 01:41:09',138125),(13580031,171,'2035-01-20 09:40:04',122327),(13580032,49,'2035-12-01 06:58:54',127204),(13580033,228,'2035-08-20 10:14:18',176679),(13580034,279,'2035-10-09 15:19:55',139525),(13580035,320,'2035-07-19 07:43:40',141353),(13580036,243,'2035-09-19 05:49:33',183233),(13580037,79,'2035-09-15 01:47:08',152495),(13580038,181,'2035-03-04 08:01:13',143384),(13580039,10,'2035-05-13 01:04:35',163288),(13580040,214,'2035-03-13 01:20:32',173277),(13580041,400,'2035-04-13 16:19:37',140824),(13580042,178,'2035-12-08 02:19:35',143007),(13580043,59,'2035-05-10 16:20:47',170189),(13580044,484,'2035-06-17 20:04:19',161872),(13580045,346,'2035-11-27 00:21:03',125802),(13580046,252,'2035-11-22 23:47:17',158625),(13580047,266,'2035-07-18 18:35:13',161039),(13580048,295,'2035-02-02 21:24:26',122179),(13580049,59,'2035-08-03 08:10:15',144030);
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plant`
--

DROP TABLE IF EXISTS `plant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plant` (
  `PLANT_ID` int(11) NOT NULL,
  `MACHINE_TYPE_ID` int(11) DEFAULT NULL,
  `MACHINE_NUMBER` int(11) DEFAULT NULL,
  `ADDRESS` varchar(10) DEFAULT NULL,
  `NAME` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`PLANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plant`
--

LOCK TABLES `plant` WRITE;
/*!40000 ALTER TABLE `plant` DISABLE KEYS */;
/*!40000 ALTER TABLE `plant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processing_record`
--

DROP TABLE IF EXISTS `processing_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processing_record` (
  `PROCESSING_RECORD_ID` int(11) NOT NULL,
  `START_TIME` date DEFAULT NULL,
  `END_TIME` date DEFAULT NULL,
  `OPERATION_ID` int(11) DEFAULT NULL,
  `MACHINE_ID` int(11) DEFAULT NULL,
  `PLANNED_OR_ACTUAL` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`PROCESSING_RECORD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processing_record`
--

LOCK TABLES `processing_record` WRITE;
/*!40000 ALTER TABLE `processing_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `processing_record` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-11 11:42:49
