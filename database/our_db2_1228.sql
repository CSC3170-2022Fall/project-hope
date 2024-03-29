-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: our_db2
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chip` (
  `CHIP_ID` int NOT NULL,
  `PACKAGE_ID` int DEFAULT NULL,
  `MACHINE_ID` int DEFAULT NULL,
  `CHIP_TYPE_ID` int DEFAULT NULL,
  PRIMARY KEY (`CHIP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chip`
--

LOCK TABLES `chip` WRITE;
/*!40000 ALTER TABLE `chip` DISABLE KEYS */;
INSERT INTO `chip` VALUES (18997001,13579970,0,3),(24997901,13579979,0,4),(30997901,13579979,0,5),(36995201,13579952,0,6),(42994301,13579943,0,7),(48999701,13579997,0,8),(54997001,13579970,0,9),(66995201,13579952,0,11),(66996101,13579961,0,11),(66997901,13579979,0,11),(72995201,13579952,0,12),(84994301,13579943,0,14),(84994302,13579943,0,14),(84996101,13579961,0,14),(84996102,13579961,0,14),(90996101,13579961,0,15),(102996101,13579961,0,17),(120996101,13579961,0,20),(120996102,13579961,0,20),(126997001,13579970,0,21),(132994301,13579943,0,22),(132997001,13579970,0,22),(138998801,13579988,0,23),(144995201,13579952,0,24),(156997901,13579979,0,26),(162998801,13579988,0,27),(180998801,13579988,0,30),(192995201,13579952,0,32),(192997901,13579979,0,32),(198997001,13579970,0,33),(204994301,13579943,0,34),(210994301,13579943,0,35),(210995201,13579952,0,35),(210998801,13579988,0,35),(228997901,13579979,0,38),(228998801,13579988,0,38),(240994301,13579943,0,40),(240997901,13579979,0,40),(246996101,13579961,0,41),(246998801,13579988,0,41),(252998801,13579988,0,42),(258995201,13579952,0,43),(258996101,13579961,0,43),(264998801,13579988,0,44),(270994301,13579943,0,45),(282997001,13579970,0,47),(282997002,13579970,0,47),(288994301,13579943,0,48),(294997001,13579970,0,49),(294997901,13579979,0,49);
/*!40000 ALTER TABLE `chip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chip_operation`
--

DROP TABLE IF EXISTS `chip_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chip_operation` (
  `Chip_type_id` int NOT NULL,
  `operation_type_id` int NOT NULL,
  `order_number` int NOT NULL,
  PRIMARY KEY (`Chip_type_id`,`operation_type_id`,`order_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chip_type` (
  `CHIP_TYPE_ID` int NOT NULL,
  `OPERATION_NUMBER` int DEFAULT NULL,
  PRIMARY KEY (`CHIP_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumer` (
  `CONSUMER_ID` int NOT NULL,
  `CONSUMER_NAME` varchar(25) DEFAULT NULL,
  `PERSON_OR_COMPANY` tinyint(1) DEFAULT NULL,
  `ADDRESS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CONSUMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer`
--

LOCK TABLES `consumer` WRITE;
/*!40000 ALTER TABLE `consumer` DISABLE KEYS */;
INSERT INTO `consumer` VALUES (0,'hope',1,'China'),(1,'csc3170',0,'China'),(2,'KFC',1,'France'),(3,'vivo50',1,'Canada'),(4,'PGgxrnvs',1,'Australia'),(5,'csyq',1,'China'),(6,'Ikefmnm',0,'China'),(7,'SVwsrnkc',1,'China'),(8,'Tlsg7fd',1,'France'),(9,'EFxzbo1v',1,'Britain'),(10,'BOygpe7p',1,'Canada'),(11,'LJVrviyme',1,'Mexico'),(12,'nr9x',0,'Brazil'),(13,'lo1o6',1,'Australia'),(14,'Msncxo8',1,'Brazil'),(15,'vatd7y',1,'Mexico'),(16,'FIXjswkun',0,'America'),(17,'zrbng',0,'Canada'),(18,'ktyn',0,'Brazil'),(19,'UGzqrd8t',0,'Japan'),(20,'jway3s',0,'Britain'),(21,'SAJlfvufa',0,'America'),(22,'zyn3d',0,'Australia'),(23,'SRteswdz',0,'Canada'),(24,'ZCNfwl8td',0,'Japan'),(25,'hrbdg',0,'Mexico'),(26,'gbubbr',1,'Canada'),(27,'Hcsm3hm',0,'Canada'),(28,'EUfdx3gg',1,'France'),(29,'yaneck',0,'Australia'),(30,'SHKljugej',1,'Mexico'),(31,'JENpevg23',1,'China'),(32,'dzaul',1,'Japan'),(33,'Hbfqkm7',0,'Japan'),(34,'wybd6f',0,'Australia'),(35,'rsr6md',0,'China'),(36,'Jeeum76',0,'Brazil'),(37,'JIpfine7',1,'Mexico'),(38,'Rnav2tt',1,'Britain'),(39,'QSOemunps',0,'Canada'),(40,'bazx3c',1,'Britain'),(41,'EGRpundbp',0,'Mexico'),(42,'tj1r',0,'China'),(43,'ZDqyoyjb',1,'Japan'),(44,'dydpjx',1,'America'),(45,'OHpkwyhq',1,'Vietnam'),(46,'BNFuvqqlz',1,'Mexico'),(47,'IOGvlixzz',0,'Canada'),(48,'krsob',1,'America'),(49,'wzpwjl',0,'Canada'),(50,'AAMdig9uh',0,'Australia'),(51,'Qnjwma9',0,'Mexico'),(52,'NHhlqrul',1,'Canada'),(53,'OTCjtnxgs',1,'France'),(54,'ZCnoc7af',1,'China'),(55,'OTHowkjwc',0,'America'),(56,'frmmh',0,'Canada'),(57,'RIWkbaxg0',1,'Australia'),(58,'YHjugx3v',1,'Brazil'),(59,'hbbpib',1,'Mexico'),(60,'Bcgk1cc',0,'Australia'),(61,'Gkubj68',1,'Vietnam'),(62,'SHfrofsr',1,'Vietnam'),(63,'gu4pw',0,'France'),(64,'QUrpi6fd',0,'Brazil'),(65,'EOOwqcd11',1,'America'),(66,'Aimuzsu',0,'France'),(67,'brst',1,'Australia'),(68,'CUyka1vd',1,'Vietnam'),(69,'Toidkhz',0,'Japan'),(70,'zz1q',1,'Vietnam'),(71,'zikoud',1,'Australia'),(72,'Xdjg1l5',1,'Australia'),(73,'Amce0w5',1,'China'),(74,'pclfe',1,'France'),(75,'t3ca',0,'Australia'),(76,'efnvz',0,'France'),(77,'ynyd',1,'Vietnam'),(78,'Mphmcor',0,'Brazil'),(79,'POfgh2ql',0,'China'),(80,'Wwkmxyg',0,'Australia'),(81,'ASzsgvok',1,'Vietnam'),(82,'CWMbmxmuf',0,'Britain'),(83,'AJqkcl7y',1,'America'),(84,'qoywy5',1,'Brazil'),(85,'Cpkhtyz',0,'Japan'),(86,'UYpur2ig',0,'Vietnam'),(87,'rgz5h8',0,'America'),(88,'AFYrarskt',0,'China'),(89,'HErsibz7',0,'Mexico'),(90,'mmsnr',0,'Mexico'),(91,'kgcv',1,'Britain'),(92,'Jvbj65o',0,'France'),(93,'p5py',0,'Australia'),(94,'Ieowr2p',1,'Brazil'),(95,'MEtogppn',1,'Britain'),(96,'uayn',0,'Canada'),(97,'nvls',0,'Japan'),(98,'WRAcgfzgp',1,'America'),(99,'dkjjwq',1,'Australia'),(100,'q4vv',0,'Japan'),(101,'yigu',1,'Mexico'),(102,'jdu88b',1,'Mexico'),(103,'mqmj',1,'France'),(104,'HHSsqcyt2',0,'Canada'),(105,'jphn',0,'France'),(106,'ix8w',1,'China'),(107,'sm2aw',1,'China'),(108,'sjaij',1,'Mexico'),(109,'YPNvruh0k',0,'America'),(110,'gtyhcy',1,'Australia'),(111,'ewztoz',1,'Britain'),(112,'Hgaunhe',0,'Canada'),(113,'FWKjsmp3e',1,'China'),(114,'Aaul95c',0,'Japan'),(115,'rfvr7y',0,'Vietnam'),(116,'fvry',0,'Japan'),(117,'qdeau',1,'Brazil'),(118,'Guprqlb',0,'Vietnam'),(119,'XKzmasg7',0,'America'),(120,'gdm16',0,'China'),(121,'hur7f8',0,'Brazil'),(122,'grkla',0,'Australia'),(123,'tejmn',1,'Canada'),(124,'yzir',1,'Vietnam'),(125,'waxad',1,'Vietnam'),(126,'d5fs',0,'Britain'),(127,'Tboxyf4',0,'China'),(128,'eamd',1,'Mexico'),(129,'DMVzcatck',1,'Canada'),(130,'YDzsxtbg',0,'Brazil'),(131,'VVpjgjgm',0,'France'),(132,'BFcpycq1',1,'Australia'),(133,'ZWRxbzqlv',0,'Vietnam'),(134,'WHXgingrc',1,'Australia'),(135,'NMJugwbqc',0,'China'),(136,'BSjol6qg',1,'Vietnam'),(137,'p6s1',1,'Brazil'),(138,'gsncz',0,'Canada'),(139,'phn7',1,'Mexico'),(140,'QUGriwixf',1,'Britain'),(141,'pflp',1,'Australia'),(142,'e5mk',0,'Australia'),(143,'zo8lb',0,'America'),(144,'KTlptdp4',0,'Vietnam'),(145,'g5ee',0,'Canada'),(146,'Orifuhe',0,'Japan'),(147,'KHssmn5a',1,'China'),(148,'hgbbbq',0,'Canada'),(149,'fvus',0,'Canada');
/*!40000 ALTER TABLE `consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machine`
--

DROP TABLE IF EXISTS `machine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `machine` (
  `MACHINE_ID` int NOT NULL,
  `MACHINE_TYPE_ID` int DEFAULT NULL,
  `PLANT_ID` int DEFAULT NULL,
  `STATUS` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`MACHINE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machine`
--

LOCK TABLES `machine` WRITE;
/*!40000 ALTER TABLE `machine` DISABLE KEYS */;
INSERT INTO `machine` VALUES (0,30,0,1),(1,30,0,1),(2,30,0,0),(3,30,0,0),(1000,53,1,1),(1001,53,1,0),(1002,53,1,0),(1003,53,1,0),(1004,53,1,0),(2000,89,2,0),(2001,89,2,1),(2002,89,2,1),(2003,89,2,1),(2004,89,2,1),(3000,22,3,1),(3001,22,3,1),(3002,22,3,1),(3003,22,3,0),(3004,22,3,1),(4000,15,4,0),(4001,15,4,1),(4002,15,4,0),(4003,15,4,0),(4004,15,4,1),(4005,15,4,0),(5000,51,5,0),(5001,51,5,1),(5002,51,5,0),(5003,51,5,0),(5004,51,5,1),(6000,11,6,1),(6001,11,6,0),(6002,11,6,1),(6003,11,6,0),(6004,11,6,1),(6005,11,6,0),(6006,11,6,1),(7000,57,7,1),(7001,57,7,1),(7002,57,7,0),(7003,57,7,1),(7004,57,7,1),(7005,57,7,0),(7006,57,7,1),(8000,3,8,1),(8001,3,8,0),(8002,3,8,1),(8003,3,8,1),(8004,3,8,1),(9000,98,9,0),(9001,98,9,1),(9002,98,9,0),(9003,98,9,0),(10000,22,10,1),(10001,22,10,1),(10002,22,10,1),(11000,11,11,1),(11001,11,11,1),(11002,11,11,1),(11003,11,11,0),(11004,11,11,0),(12000,4,12,1),(12001,4,12,0),(12002,4,12,0),(13000,35,13,0),(13001,35,13,0),(13002,35,13,0),(13003,35,13,0),(13004,35,13,0),(13005,35,13,0),(14000,50,14,0),(14001,50,14,1),(14002,50,14,0),(14003,50,14,1),(14004,50,14,0),(14005,50,14,0),(15000,68,15,0),(15001,68,15,1),(15002,68,15,1),(15003,68,15,0),(15004,68,15,1),(16000,31,16,1),(16001,31,16,0),(16002,31,16,0),(16003,31,16,0),(17000,10,17,0),(17001,10,17,0),(17002,10,17,0),(17003,10,17,1),(17004,10,17,0),(17005,10,17,0),(18000,5,18,1),(18001,5,18,0),(18002,5,18,1),(18003,5,18,1),(19000,7,19,0),(19001,7,19,0),(19002,7,19,0),(19003,7,19,1),(19004,7,19,1),(20000,100,20,1),(20001,100,20,1),(20002,100,20,1),(20003,100,20,0),(21000,53,21,0),(21001,53,21,0),(21002,53,21,1),(21003,53,21,0),(22000,42,22,1),(22001,42,22,0),(22002,42,22,1),(22003,42,22,1),(22004,42,22,0),(22005,42,22,0),(23000,31,23,0),(23001,31,23,1),(23002,31,23,1),(23003,31,23,1),(23004,31,23,1),(23005,31,23,0),(24000,97,24,0),(24001,97,24,0),(24002,97,24,1),(24003,97,24,0),(24004,97,24,1),(24005,97,24,1),(24006,97,24,1),(25000,35,25,0),(25001,35,25,1),(25002,35,25,0),(25003,35,25,0),(26000,91,26,0),(26001,91,26,1),(26002,91,26,0),(27000,32,27,0),(27001,32,27,0),(27002,32,27,1),(27003,32,27,1),(27004,32,27,1),(27005,32,27,1),(28000,37,28,1),(28001,37,28,1),(28002,37,28,1),(28003,37,28,1),(28004,37,28,1),(28005,37,28,1),(29000,64,29,1),(29001,64,29,0),(29002,64,29,1),(29003,64,29,0),(29004,64,29,0),(30000,101,30,0),(30001,101,30,0),(30002,101,30,0),(30003,101,30,1),(30004,101,30,0),(30005,101,30,0),(31000,45,31,1),(31001,45,31,0),(31002,45,31,1),(31003,45,31,0),(31004,45,31,1),(32000,22,32,0),(32001,22,32,1),(32002,22,32,0),(32003,22,32,1),(32004,22,32,1),(32005,22,32,1),(33000,28,33,0),(33001,28,33,0),(33002,28,33,1),(33003,28,33,0),(33004,28,33,0),(33005,28,33,0),(33006,28,33,0),(34000,4,34,1),(34001,4,34,0),(34002,4,34,1),(34003,4,34,0),(35000,11,35,0),(35001,11,35,1),(35002,11,35,0),(35003,11,35,1),(35004,11,35,1),(35005,11,35,0),(36000,74,36,0),(36001,74,36,0),(36002,74,36,0),(36003,74,36,1),(36004,74,36,1),(36005,74,36,0),(36006,74,36,1),(37000,69,37,0),(37001,69,37,1),(37002,69,37,1),(37003,69,37,1),(37004,69,37,0),(37005,69,37,1),(37006,69,37,1),(38000,5,38,0),(38001,5,38,1),(38002,5,38,0),(38003,5,38,1),(38004,5,38,1),(38005,5,38,0),(39000,90,39,1),(39001,90,39,1),(39002,90,39,0),(39003,90,39,0),(39004,90,39,1),(39005,90,39,0),(39006,90,39,0),(40000,8,40,0),(40001,8,40,1),(40002,8,40,1),(40003,8,40,0),(40004,8,40,1),(40005,8,40,1),(41000,18,41,1),(41001,18,41,1),(41002,18,41,1),(41003,18,41,1),(42000,36,42,0),(42001,36,42,1),(42002,36,42,0),(42003,36,42,0),(42004,36,42,0),(43000,69,43,0),(43001,69,43,0),(43002,69,43,0),(43003,69,43,0),(43004,69,43,1),(44000,56,44,1),(44001,56,44,0),(44002,56,44,1),(45000,95,45,1),(45001,95,45,0),(45002,95,45,0),(45003,95,45,0),(45004,95,45,0),(45005,95,45,0),(45006,95,45,1),(46000,10,46,0),(46001,10,46,1),(46002,10,46,0),(46003,10,46,1),(46004,10,46,1),(46005,10,46,0),(47000,44,47,0),(47001,44,47,1),(47002,44,47,0),(47003,44,47,0),(47004,44,47,0),(47005,44,47,1),(47006,44,47,0),(48000,54,48,0),(48001,54,48,0),(48002,54,48,0),(48003,54,48,1),(48004,54,48,1),(48005,54,48,1),(49000,93,49,0),(49001,93,49,0),(49002,93,49,0),(49003,93,49,1),(49004,93,49,0),(49005,93,49,0),(50000,39,50,1),(50001,39,50,1),(50002,39,50,1),(50003,39,50,1),(50004,39,50,0),(50005,39,50,0),(50006,39,50,1),(51000,0,51,1),(51001,0,51,0),(51002,0,51,0),(51003,0,51,0),(52000,39,52,1),(52001,39,52,1),(52002,39,52,1),(52003,39,52,0),(52004,39,52,1),(53000,56,53,1),(53001,56,53,1),(53002,56,53,1),(53003,56,53,0),(53004,56,53,1),(53005,56,53,0),(53006,56,53,1),(54000,75,54,0),(54001,75,54,0),(54002,75,54,1),(54003,75,54,1),(54004,75,54,0),(55000,64,55,0),(55001,64,55,1),(55002,64,55,0),(55003,64,55,1),(56000,43,56,1),(56001,43,56,0),(56002,43,56,1),(56003,43,56,0),(57000,57,57,0),(57001,57,57,1),(57002,57,57,1),(57003,57,57,0),(57004,57,57,1),(58000,95,58,1),(58001,95,58,0),(58002,95,58,1),(58003,95,58,0),(58004,95,58,0),(59000,88,59,1),(59001,88,59,1),(59002,88,59,1),(60000,1,60,1),(60001,1,60,0),(60002,1,60,1),(61000,80,61,1),(61001,80,61,1),(61002,80,61,1),(62000,77,62,0),(62001,77,62,1),(62002,77,62,1),(62003,77,62,1),(63000,99,63,1),(63001,99,63,0),(63002,99,63,0),(63003,99,63,1),(63004,99,63,0),(63005,99,63,0),(64000,29,64,1),(64001,29,64,0),(64002,29,64,0),(65000,96,65,1),(65001,96,65,0),(65002,96,65,1),(66000,87,66,0),(66001,87,66,1),(66002,87,66,1),(66003,87,66,1),(67000,5,67,1),(67001,5,67,1),(67002,5,67,0),(68000,59,68,0),(68001,59,68,0),(68002,59,68,1),(69000,96,69,1),(69001,96,69,0),(69002,96,69,1),(69003,96,69,0),(69004,96,69,0),(70000,48,70,0),(70001,48,70,1),(70002,48,70,0),(70003,48,70,0),(70004,48,70,0),(71000,74,71,1),(71001,74,71,1),(71002,74,71,1),(71003,74,71,0),(71004,74,71,1),(71005,74,71,0),(71006,74,71,0),(72000,33,72,1),(72001,33,72,0),(72002,33,72,1),(72003,33,72,1),(72004,33,72,0),(73000,85,73,0),(73001,85,73,0),(73002,85,73,1),(73003,85,73,1),(73004,85,73,0),(74000,35,74,1),(74001,35,74,0),(74002,35,74,0),(75000,94,75,0),(75001,94,75,0),(75002,94,75,1),(76000,97,76,1),(76001,97,76,0),(76002,97,76,1),(76003,97,76,0),(76004,97,76,1),(76005,97,76,1),(76006,97,76,0),(77000,94,77,0),(77001,94,77,0),(77002,94,77,0),(77003,94,77,0),(78000,7,78,0),(78001,7,78,1),(78002,7,78,1),(78003,7,78,0),(78004,7,78,1),(79000,4,79,1),(79001,4,79,0),(79002,4,79,1),(79003,4,79,1),(80000,100,80,0),(80001,100,80,1),(80002,100,80,0),(80003,100,80,0),(80004,100,80,1),(81000,30,81,0),(81001,30,81,0),(81002,30,81,1),(82000,2,82,1),(82001,2,82,0),(82002,2,82,1),(83000,18,83,1),(83001,18,83,1),(83002,18,83,1),(83003,18,83,0),(83004,18,83,1),(83005,18,83,0),(84000,6,84,1),(84001,6,84,1),(84002,6,84,1),(84003,6,84,0),(85000,1,85,1),(85001,1,85,1),(85002,1,85,1),(85003,1,85,1),(85004,1,85,0),(85005,1,85,0),(85006,1,85,0),(86000,11,86,0),(86001,11,86,0),(86002,11,86,0),(86003,11,86,1),(87000,40,87,0),(87001,40,87,1),(87002,40,87,0),(88000,3,88,0),(88001,3,88,0),(88002,3,88,1),(88003,3,88,1),(89000,100,89,1),(89001,100,89,0),(89002,100,89,0),(89003,100,89,1),(89004,100,89,1),(90000,31,90,0),(90001,31,90,0),(90002,31,90,0),(91000,52,91,1),(91001,52,91,0),(91002,52,91,1),(91003,52,91,1),(91004,52,91,0),(91005,52,91,0),(91006,52,91,0),(92000,18,92,0),(92001,18,92,1),(92002,18,92,0),(92003,18,92,0),(92004,18,92,1),(92005,18,92,1),(93000,67,93,0),(93001,67,93,0),(93002,67,93,0),(94000,63,94,1),(94001,63,94,0),(94002,63,94,0),(94003,63,94,1),(94004,63,94,0),(95000,64,95,0),(95001,64,95,0),(95002,64,95,1),(95003,64,95,0),(95004,64,95,1),(96000,71,96,0),(96001,71,96,1),(96002,71,96,1),(96003,71,96,0),(96004,71,96,0),(96005,71,96,1),(97000,93,97,0),(97001,93,97,0),(97002,93,97,1),(97003,93,97,1),(97004,93,97,1),(98000,71,98,0),(98001,71,98,1),(98002,71,98,1),(98003,71,98,1),(98004,71,98,0),(98005,71,98,1),(98006,71,98,0),(99000,10,99,0),(99001,10,99,0),(99002,10,99,1),(99003,10,99,0),(99004,10,99,1),(99005,10,99,1),(100000,63,100,1),(100001,63,100,1),(100002,63,100,0),(100003,63,100,0),(100004,63,100,0),(100005,63,100,0),(101000,13,101,0),(101001,13,101,0),(101002,13,101,1),(101003,13,101,1),(102000,41,102,1),(102001,41,102,1),(102002,41,102,1),(102003,41,102,0),(102004,41,102,0),(103000,18,103,0),(103001,18,103,0),(103002,18,103,1),(103003,18,103,0),(103004,18,103,1),(103005,18,103,0),(104000,85,104,1),(104001,85,104,0),(104002,85,104,1),(104003,85,104,0),(104004,85,104,0),(104005,85,104,1),(105000,60,105,1),(105001,60,105,1),(105002,60,105,0),(105003,60,105,0),(106000,22,106,1),(106001,22,106,1),(106002,22,106,0),(107000,4,107,1),(107001,4,107,0),(107002,4,107,1),(107003,4,107,0),(107004,4,107,1),(108000,88,108,1),(108001,88,108,1),(108002,88,108,0),(108003,88,108,0),(108004,88,108,0),(109000,60,109,1),(109001,60,109,0),(109002,60,109,1),(109003,60,109,0),(109004,60,109,1),(109005,60,109,0),(109006,60,109,1),(110000,51,110,0),(110001,51,110,0),(110002,51,110,0),(110003,51,110,1),(110004,51,110,1),(110005,51,110,0),(111000,59,111,0),(111001,59,111,0),(111002,59,111,1),(111003,59,111,0),(111004,59,111,1),(112000,46,112,1),(112001,46,112,1),(112002,46,112,1),(113000,62,113,1),(113001,62,113,0),(113002,62,113,0),(113003,62,113,1),(113004,62,113,0),(113005,62,113,1),(114000,34,114,0),(114001,34,114,1),(114002,34,114,1),(114003,34,114,1),(114004,34,114,1),(115000,54,115,1),(115001,54,115,1),(115002,54,115,1),(115003,54,115,0),(116000,29,116,0),(116001,29,116,1),(116002,29,116,1),(116003,29,116,0),(116004,29,116,0),(117000,41,117,0),(117001,41,117,0),(117002,41,117,0),(118000,100,118,1),(118001,100,118,1),(118002,100,118,0),(118003,100,118,1),(118004,100,118,1),(119000,52,119,1),(119001,52,119,1),(119002,52,119,1),(119003,52,119,1),(120000,86,120,0),(120001,86,120,1),(120002,86,120,0),(120003,86,120,1),(120004,86,120,0),(121000,28,121,0),(121001,28,121,1),(121002,28,121,1),(121003,28,121,1),(121004,28,121,1),(121005,28,121,1),(122000,3,122,1),(122001,3,122,0),(122002,3,122,0),(122003,3,122,0),(123000,23,123,1),(123001,23,123,1),(123002,23,123,0),(124000,86,124,0),(124001,86,124,1),(124002,86,124,1),(124003,86,124,1),(124004,86,124,0),(125000,19,125,1),(125001,19,125,0),(125002,19,125,0),(125003,19,125,1),(126000,95,126,0),(126001,95,126,1),(126002,95,126,0),(126003,95,126,0),(126004,95,126,1),(127000,38,127,0),(127001,38,127,1),(127002,38,127,1),(128000,80,128,1),(128001,80,128,1),(128002,80,128,0),(128003,80,128,0),(128004,80,128,1),(129000,29,129,1),(129001,29,129,0),(129002,29,129,0),(129003,29,129,0),(129004,29,129,1),(129005,29,129,0),(129006,29,129,1),(130000,24,130,0),(130001,24,130,1),(130002,24,130,1),(130003,24,130,0),(130004,24,130,0),(131000,27,131,0),(131001,27,131,1),(131002,27,131,0),(131003,27,131,0),(131004,27,131,1),(131005,27,131,1),(131006,27,131,1),(132000,55,132,0),(132001,55,132,0),(132002,55,132,1),(132003,55,132,0),(132004,55,132,1),(132005,55,132,1),(133000,46,133,0),(133001,46,133,1),(133002,46,133,1),(133003,46,133,0),(134000,0,134,1),(134001,0,134,0),(134002,0,134,0),(134003,0,134,0),(134004,0,134,1),(135000,68,135,1),(135001,68,135,0),(135002,68,135,1),(136000,7,136,0),(136001,7,136,1),(136002,7,136,1),(137000,36,137,1),(137001,36,137,1),(137002,36,137,0),(137003,36,137,0),(138000,22,138,1),(138001,22,138,1),(138002,22,138,0),(139000,10,139,1),(139001,10,139,1),(139002,10,139,1),(139003,10,139,1),(139004,10,139,1),(140000,102,140,0),(140001,102,140,1),(140002,102,140,0),(140003,102,140,1),(140004,102,140,1),(140005,102,140,1),(141000,62,141,1),(141001,62,141,1),(141002,62,141,0),(142000,50,142,0),(142001,50,142,1),(142002,50,142,0),(142003,50,142,1),(142004,50,142,0),(143000,16,143,0),(143001,16,143,1),(143002,16,143,0),(144000,20,144,1),(144001,20,144,0),(144002,20,144,0),(144003,20,144,0),(145000,63,145,1),(145001,63,145,1),(145002,63,145,0),(145003,63,145,1),(145004,63,145,1),(145005,63,145,1),(145006,63,145,0),(146000,39,146,1),(146001,39,146,0),(146002,39,146,1),(146003,39,146,1),(146004,39,146,0),(147000,14,147,0),(147001,14,147,0),(147002,14,147,1),(147003,14,147,1),(147004,14,147,1),(147005,14,147,0),(147006,14,147,0),(148000,76,148,0),(148001,76,148,0),(148002,76,148,1),(148003,76,148,1),(148004,76,148,1),(148005,76,148,1),(148006,76,148,0),(149000,43,149,0),(149001,43,149,1),(149002,43,149,0),(149003,43,149,0),(149004,43,149,1),(149005,43,149,0),(149006,43,149,1),(150000,97,150,1),(150001,97,150,1),(150002,97,150,0),(151000,3,151,0),(151001,3,151,0),(151002,3,151,1),(151003,3,151,0),(152000,62,152,1),(152001,62,152,1),(152002,62,152,1),(152003,62,152,0),(152004,62,152,1),(153000,33,153,0),(153001,33,153,1),(153002,33,153,0),(153003,33,153,0),(153004,33,153,0),(154000,50,154,1),(154001,50,154,1),(154002,50,154,0),(154003,50,154,0),(154004,50,154,0),(155000,33,155,1),(155001,33,155,0),(155002,33,155,1),(155003,33,155,1),(155004,33,155,1),(155005,33,155,1),(156000,96,156,1),(156001,96,156,0),(156002,96,156,1),(156003,96,156,1),(156004,96,156,1),(157000,96,157,0),(157001,96,157,1),(157002,96,157,1),(157003,96,157,0),(158000,1,158,1),(158001,1,158,1),(158002,1,158,1),(158003,1,158,1),(158004,1,158,1),(159000,52,159,1),(159001,52,159,0),(159002,52,159,0),(159003,52,159,0),(160000,5,160,0),(160001,5,160,1),(160002,5,160,0),(161000,4,161,0),(161001,4,161,0),(161002,4,161,0),(161003,4,161,0),(162000,52,162,1),(162001,52,162,1),(162002,52,162,0),(162003,52,162,0),(162004,52,162,0),(162005,52,162,1),(163000,102,163,0),(163001,102,163,1),(163002,102,163,1),(163003,102,163,0),(163004,102,163,1),(164000,75,164,0),(164001,75,164,1),(164002,75,164,1),(164003,75,164,0),(164004,75,164,0),(165000,68,165,1),(165001,68,165,1),(165002,68,165,1),(165003,68,165,0),(165004,68,165,0),(165005,68,165,1),(165006,68,165,0),(166000,31,166,0),(166001,31,166,1),(166002,31,166,1),(166003,31,166,1),(166004,31,166,1),(166005,31,166,1),(166006,31,166,0),(167000,20,167,0),(167001,20,167,1),(167002,20,167,0),(167003,20,167,0),(167004,20,167,1),(168000,92,168,1),(168001,92,168,0),(168002,92,168,0),(168003,92,168,0),(168004,92,168,0),(169000,98,169,0),(169001,98,169,0),(169002,98,169,1),(169003,98,169,1),(169004,98,169,0),(169005,98,169,1),(170000,68,170,0),(170001,68,170,0),(170002,68,170,1),(170003,68,170,1),(170004,68,170,1),(170005,68,170,0);
/*!40000 ALTER TABLE `machine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machine_type`
--

DROP TABLE IF EXISTS `machine_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `machine_type` (
  `MACHINE_TYPE_ID` int NOT NULL,
  `OPERATION_TYPE_ID` int DEFAULT NULL,
  PRIMARY KEY (`MACHINE_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machine_type`
--

LOCK TABLES `machine_type` WRITE;
/*!40000 ALTER TABLE `machine_type` DISABLE KEYS */;
INSERT INTO `machine_type` VALUES (0,38),(1,9),(2,35),(3,40),(4,24),(5,46),(6,28),(7,43),(8,4),(9,47),(10,13),(11,12),(12,7),(13,46),(14,11),(15,36),(16,37),(17,18),(18,17),(19,14),(20,1),(21,46),(22,13),(23,27),(24,42),(25,35),(26,39),(27,25),(28,13),(29,10),(30,27),(31,21),(32,24),(33,47),(34,5),(35,12),(36,9),(37,48),(38,32),(39,13),(40,32),(41,6),(42,29),(43,34),(44,22),(45,45),(46,19),(47,1),(48,10),(49,11),(50,20),(51,44),(52,19),(53,38),(54,40),(55,5),(56,26),(57,9),(58,48),(59,35),(60,1),(61,9),(62,44),(63,41),(64,38),(65,49),(66,2),(67,20),(68,48),(69,47),(70,0),(71,42),(72,13),(73,49),(74,21),(75,2),(76,26),(77,33),(78,3),(79,4),(80,27),(81,18),(82,49),(83,9),(84,41),(85,9),(86,9),(87,16),(88,21),(89,27),(90,8),(91,45),(92,33),(93,31),(94,7),(95,16),(96,21),(97,37),(98,20),(99,48),(100,15),(101,23),(102,30);
/*!40000 ALTER TABLE `machine_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation`
--

DROP TABLE IF EXISTS `operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operation` (
  `OPERATION_ID` int NOT NULL,
  `OPERATION_TYPE_ID` int DEFAULT NULL,
  PRIMARY KEY (`OPERATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operation_type` (
  `OPERATION_TYPE_ID` int NOT NULL,
  `FEASIBILITY` tinyint(1) DEFAULT NULL,
  `TIME_COST` int DEFAULT NULL,
  `COST` int DEFAULT NULL,
  PRIMARY KEY (`OPERATION_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_type`
--

LOCK TABLES `operation_type` WRITE;
/*!40000 ALTER TABLE `operation_type` DISABLE KEYS */;
INSERT INTO `operation_type` VALUES (0,1,25,9),(1,1,21,6),(2,1,8,6),(3,1,20,4),(4,1,15,7),(5,1,11,10),(6,1,14,10),(7,1,29,3),(8,1,9,11),(9,1,28,4),(10,1,6,10),(11,1,18,14),(12,1,5,14),(13,1,14,9),(14,1,9,13),(15,1,12,8),(16,1,22,9),(17,1,29,11),(18,1,21,11),(19,1,21,3),(20,1,13,5),(21,1,24,6),(22,1,13,5),(23,1,8,7),(24,1,24,4),(25,1,8,14),(26,1,6,9),(27,1,8,6),(28,1,15,10),(29,1,9,10),(30,1,11,3),(31,1,27,3),(32,1,13,13),(33,1,12,8),(34,1,9,5),(35,1,5,7),(36,1,22,10),(37,1,19,3),(38,1,18,8),(39,1,20,9),(40,1,5,14),(41,1,12,4),(42,1,11,5),(43,1,9,12),(44,1,26,13),(45,1,18,9),(46,1,8,13),(47,1,25,3),(48,1,10,6),(49,1,24,5);
/*!40000 ALTER TABLE `operation_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package` (
  `PACKAGE_ID` int NOT NULL,
  `CONSUMER_ID` int DEFAULT NULL,
  `TIME` datetime DEFAULT NULL,
  `EXPENSE` int DEFAULT NULL,
  PRIMARY KEY (`PACKAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT INTO `package` VALUES (13579943,0,'2035-03-21 03:46:15',20239),(13579952,1,'2035-01-08 20:20:21',20250),(13579961,0,'2035-08-06 20:20:56',40247),(13579970,1,'2035-06-12 11:20:33',40259),(13579979,0,'2035-09-08 04:24:11',30299),(13579988,1,'2035-10-20 20:58:07',40291),(13579997,0,'2035-06-27 11:44:15',263),(13580000,108,'2035-07-25 00:36:09',142183),(13580001,413,'2035-07-24 04:25:48',164745),(13580002,362,'2035-02-21 07:55:51',143474),(13580003,352,'2035-03-03 08:20:31',124126),(13580004,41,'2035-10-26 03:02:38',133817),(13580005,83,'2035-09-23 01:54:40',157366),(13580006,439,'2035-04-16 05:08:43',164107),(13580007,431,'2035-06-24 00:45:47',157954),(13580008,423,'2035-09-21 21:01:14',132410),(13580009,463,'2035-10-25 06:29:09',136052),(13580010,152,'2035-07-27 13:50:58',160199),(13580011,47,'2035-08-21 20:40:08',152589),(13580012,85,'2035-06-04 06:49:39',151539),(13580013,18,'2035-06-05 11:55:13',152284),(13580014,93,'2035-03-04 08:01:29',163791),(13580015,237,'2035-04-28 20:54:52',158820),(13580016,308,'2035-11-01 20:17:07',146171),(13580017,462,'2035-05-25 09:55:58',156165),(13580018,266,'2035-07-22 21:48:41',133849),(13580019,94,'2035-11-19 09:15:05',147137),(13580020,122,'2035-09-10 17:41:59',146506),(13580021,425,'2035-11-24 06:38:09',155800),(13580022,159,'2035-05-01 04:20:55',186271),(13580023,352,'2035-05-28 18:38:44',124955),(13580024,240,'2035-08-09 13:18:11',136905),(13580025,285,'2035-07-14 05:47:26',145147),(13580026,245,'2035-03-09 05:52:26',151113),(13580027,233,'2035-02-21 15:08:29',133850),(13580028,90,'2035-03-08 06:16:42',128655),(13580029,372,'2035-06-28 19:39:57',143401),(13580030,406,'2035-10-10 01:41:09',138125),(13580031,171,'2035-01-20 09:40:04',122327),(13580032,49,'2035-12-01 06:58:54',127204),(13580033,228,'2035-08-20 10:14:18',176679),(13580034,279,'2035-10-09 15:19:55',139525),(13580035,320,'2035-07-19 07:43:40',141353),(13580036,243,'2035-09-19 05:49:33',183233),(13580037,79,'2035-09-15 01:47:08',152495),(13580038,181,'2035-03-04 08:01:13',143384),(13580039,10,'2035-05-13 01:04:35',163288),(13580040,214,'2035-03-13 01:20:32',173277),(13580041,400,'2035-04-13 16:19:37',140824),(13580042,178,'2035-12-08 02:19:35',143007),(13580043,59,'2035-05-10 16:20:47',170189),(13580044,484,'2035-06-17 20:04:19',161872),(13580045,346,'2035-11-27 00:21:03',125802),(13580046,252,'2035-11-22 23:47:17',158625),(13580047,266,'2035-07-18 18:35:13',161039),(13580048,295,'2035-02-02 21:24:26',122179),(13580049,59,'2035-08-03 08:10:15',144030);
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plant`
--

DROP TABLE IF EXISTS `plant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plant` (
  `PLANT_ID` int NOT NULL,
  `MACHINE_TYPE_ID` int DEFAULT NULL,
  `MACHINE_NUMBER` int DEFAULT NULL,
  `ADDRESS` varchar(10) DEFAULT NULL,
  `NAME` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`PLANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plant`
--

LOCK TABLES `plant` WRITE;
/*!40000 ALTER TABLE `plant` DISABLE KEYS */;
INSERT INTO `plant` VALUES (0,30,4,'Britain','HUMCompany'),(1,53,5,'Canada','LFDXFactory'),(2,89,5,'America','SCCompany'),(3,22,5,'France','KFNQGroup'),(4,15,6,'Japan','NFOZCompany'),(5,51,5,'Australia','JPREGroup'),(6,11,7,'Mexico','PNCompany'),(7,57,7,'America','MWCYFactory'),(8,3,5,'Brazil','PEVIGroup'),(9,98,4,'Australia','ZNIMCompany'),(10,22,3,'America','WSREFactory'),(11,11,5,'Brazil','XFCompany'),(13,35,6,'France','OOEFGroup'),(14,50,6,'Japan','EJUGroup'),(15,68,5,'Britain','OYGPFactory'),(16,31,4,'Mexico','PBNPCompany'),(18,5,4,'China','WQGroup'),(19,7,5,'China','MXUJFactory'),(20,100,4,'China','AOWCompany'),(21,53,4,'Vietnam','SNCompany'),(22,42,6,'Brazil','KSFZGroup'),(23,31,6,'Australia','DKNLFactory'),(25,35,4,'Australia','KUFNGroup'),(26,91,3,'Australia','ZBFactory'),(27,32,6,'China','OOGroup'),(28,37,6,'Vietnam','HNKOFactory'),(29,64,5,'Vietnam','RCDCompany'),(30,101,6,'France','IOJWGroup'),(31,45,5,'Canada','VSCMGroup'),(32,22,6,'France','FVGFactory'),(33,28,7,'Japan','OVLZCompany'),(34,4,4,'Canada','KDCFactory'),(36,74,7,'Vietnam','ZCOBFactory'),(37,69,7,'France','LQIJGroup'),(38,5,6,'America','XHRCompany'),(39,90,7,'Canada','GYFactory'),(41,18,4,'Australia','TLHCGroup'),(42,36,5,'Australia','HGCompany'),(43,69,5,'Britain','UFFactory'),(44,56,3,'Australia','GBGXCompany'),(45,95,7,'China','FETCGroup'),(46,10,6,'Mexico','SHKLGroup'),(48,54,6,'Mexico','ENPGroup'),(49,93,6,'Japan','IEPJGroup'),(50,39,7,'Canada','AZUGroup'),(52,39,5,'Japan','MWZOCompany'),(53,56,7,'China','XDUGroup'),(54,75,5,'China','SRSRFactory'),(55,64,4,'Brazil','DCYCompany'),(56,43,4,'Brazil','HMFactory'),(57,57,5,'America','ZIJCompany'),(58,95,5,'Brazil','NEFactory'),(59,88,3,'Mexico','ZRNAFactory'),(60,1,3,'Japan','ATFactory'),(61,80,3,'Britain','OEMFactory'),(62,77,4,'France','PSUAGroup'),(63,99,6,'France','XMHEFactory'),(65,96,3,'Britain','MBFactory'),(66,87,4,'China','TGFactory'),(67,5,3,'Britain','MOWFactory'),(68,59,3,'America','XYFactory'),(69,96,5,'Vietnam','AWFactory'),(70,48,5,'America','RJBXGroup'),(71,74,7,'America','PKWQCompany'),(72,33,5,'Vietnam','ZHNBFactory'),(73,85,5,'Canada','NQQLFactory'),(74,35,3,'Canada','IOGVFactory'),(76,97,7,'Australia','RUCompany'),(79,4,4,'China','RAAFactory'),(80,100,5,'Japan','NPUUGroup'),(81,30,3,'Vietnam','NJWCompany'),(82,2,3,'Brazil','XMNSFactory'),(83,18,6,'Canada','QRZCompany'),(84,6,4,'Mexico','ZOCompany'),(85,1,7,'Mexico','ZXUCompany'),(86,11,4,'Vietnam','MZFactory'),(87,40,3,'Brazil','VFAGroup'),(88,3,4,'America','OTHOGroup'),(89,100,5,'Australia','WUCCompany'),(90,31,3,'Vietnam','IMCompany'),(91,52,7,'France','HZRIGroup'),(92,18,6,'Japan','XBGFCompany'),(93,67,3,'Brazil','HJCompany'),(94,63,5,'Mexico','TBVGroup'),(95,64,5,'Vietnam','BCPXCompany'),(96,71,6,'Vietnam','FBFactory'),(97,93,5,'China','QCKCCompany'),(98,71,7,'China','UBCompany'),(99,10,6,'America','SZTSFactory'),(100,63,6,'Mexico','EFWGroup'),(101,13,4,'Canada','HGUZCompany'),(102,41,5,'Australia','WEIQGroup'),(104,85,6,'America','VECompany'),(105,60,4,'America','UDHCompany'),(106,22,3,'Canada','HAICompany'),(107,4,5,'Australia','SKFactory'),(108,88,5,'Britain','URIFactory'),(109,60,7,'Australia','ECUCompany'),(110,51,6,'Canada','CVKDGroup'),(112,46,3,'Australia','ZECompany'),(114,34,5,'Australia','ZIKFGroup'),(115,54,4,'Brazil','HTHCompany'),(116,29,5,'Brazil','JECompany'),(118,100,5,'Canada','SWIFactory'),(119,52,4,'Canada','CCLIFactory'),(120,86,5,'Vietnam','YTIFactory'),(121,28,6,'Britain','YBNGroup'),(122,3,4,'Mexico','VGZEGroup'),(123,23,3,'Vietnam','GYCCompany'),(124,86,5,'Vietnam','PHMCompany'),(125,19,4,'America','RWOSCompany'),(126,95,5,'Britain','FOZQFactory'),(127,38,3,'Australia','WWCompany'),(130,24,5,'Canada','ODKJCompany'),(131,27,7,'Japan','BMXCompany'),(133,46,4,'Australia','KCKLFactory'),(134,0,5,'Japan','QKCompany'),(135,68,3,'Vietnam','MYUFactory'),(136,7,3,'Mexico','PKHFactory'),(139,10,5,'Britain','GECompany'),(140,102,6,'Brazil','VXFactory'),(141,62,3,'Brazil','MVACompany'),(142,50,5,'Britain','XSCompany'),(143,16,3,'Canada','DIHECompany'),(144,20,4,'Britain','HZJGroup'),(145,63,7,'Australia','MYSPGroup'),(146,39,5,'Japan','WKECompany'),(147,14,7,'Britain','HHCompany'),(148,76,7,'Canada','TSQFactory'),(149,43,7,'America','GPCompany'),(150,97,3,'Vietnam','YCFactory'),(151,3,4,'America','WQRFactory'),(153,33,5,'China','EPFactory'),(154,50,5,'Vietnam','JICompany'),(155,33,6,'France','YNMGroup'),(156,96,5,'Brazil','KLHSGroup'),(157,96,4,'Brazil','ACGFFactory'),(158,1,5,'America','PDFOCompany'),(159,52,4,'Brazil','QWFactory'),(160,5,3,'Japan','QHFactory'),(161,4,4,'Vietnam','UZCompany'),(162,52,6,'America','GFUFactory'),(163,102,5,'Australia','UHSJFactory'),(164,75,5,'Australia','KMFFactory'),(165,68,7,'Britain','FJNHGroup'),(167,20,5,'Japan','DCCompany'),(168,92,5,'Vietnam','TNEGCompany'),(169,98,6,'Mexico','CJWLGroup');
/*!40000 ALTER TABLE `plant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processing_record`
--

DROP TABLE IF EXISTS `processing_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `processing_record` (
  `PROCESSING_RECORD_ID` int NOT NULL,
  `START_TIME` date DEFAULT NULL,
  `END_TIME` date DEFAULT NULL,
  `OPERATION_ID` int DEFAULT NULL,
  `MACHINE_ID` int DEFAULT NULL,
  `PLANNED_OR_ACTUAL` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`PROCESSING_RECORD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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

-- Dump completed on 2022-12-28 10:30:52
