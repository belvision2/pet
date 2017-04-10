-- MySQL dump 10.13  Distrib 5.5.53, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: wikipet
-- ------------------------------------------------------
-- Server version	5.5.53-0+deb8u1

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
-- Table structure for table `dle_admin_logs`
--

DROP TABLE IF EXISTS `dle_admin_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_admin_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `action` int(11) NOT NULL DEFAULT '0',
  `extras` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`)
) ENGINE=MyISAM AUTO_INCREMENT=436 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_admin_logs`
--

LOCK TABLES `dle_admin_logs` WRITE;
/*!40000 ALTER TABLE `dle_admin_logs` DISABLE KEYS */;
INSERT INTO `dle_admin_logs` (`id`, `name`, `date`, `ip`, `action`, `extras`) VALUES (1,'admin',1484138854,'46.216.216.154',82,''),(2,'admin',1484138893,'46.216.216.154',48,''),(3,'admin',1484139629,'46.216.216.154',59,'index'),(4,'admin',1484139710,'46.216.216.154',4,'right-sidebar-2'),(5,'admin',1484139764,'46.216.216.154',4,'right-sidebar-1'),(6,'admin',1484139794,'46.216.216.154',5,'header'),(7,'admin',1484140764,'46.216.216.154',101,''),(8,'admin',1484148249,'46.216.216.154',82,''),(9,'admin',1484148387,'46.216.216.154',59,'blog'),(10,'admin',1484148581,'46.216.216.154',60,'blog'),(11,'admin',1484148986,'46.216.216.154',60,'blog'),(12,'admin',1484149106,'46.216.216.154',60,'blog'),(13,'admin',1484149231,'46.216.216.154',60,'blog'),(14,'admin',1484149634,'46.216.216.154',60,'blog'),(15,'admin',1484151425,'46.216.216.154',59,'obyavleniya'),(16,'admin',1484151588,'46.216.216.154',59,'wiki'),(17,'admin',1484151623,'46.216.216.154',59,'cat'),(18,'admin',1484151658,'46.216.216.154',59,'skidki'),(19,'admin',1484151688,'46.216.216.154',59,'ekspert'),(20,'admin',1484151714,'46.216.216.154',59,'afisha'),(21,'admin',1484213195,'93.85.189.213',91,''),(22,'admin',1484216768,'46.216.221.59',101,''),(23,'admin',1484216777,'46.216.221.59',86,'http://wikipet.by/'),(24,'admin',1484216825,'46.216.221.59',48,''),(25,'admin',1484219433,'46.216.221.59',82,''),(26,'admin',1484223267,'46.216.221.59',86,'http://wikipet.by/admin.php?mod=social'),(27,'admin',1484224167,'46.216.221.59',82,''),(28,'admin',1484234489,'46.216.221.59',101,''),(29,'admin',1484237283,'46.216.221.59',86,'http://wikipet.by/?do=search&amp;mode=advanced&amp;subaction=search&amp;story=%D0%B2%D0%B0%D0%BF%D0%B2%D0%B0%D0%BF%D1%84%D0%B2'),(30,'admin',1484237334,'46.216.221.59',59,'indexdosearch'),(31,'admin',1484237448,'46.216.221.59',60,'indexdosearch'),(32,'admin',1484237513,'46.216.221.59',60,'indexdosearch'),(33,'admin',1484237619,'46.216.221.59',40,''),(34,'admin',1484294036,'93.85.138.145',91,''),(35,'admin',1484305153,'93.85.138.145',101,''),(36,'admin',1484326476,'93.85.187.111',91,''),(37,'admin',1484326484,'93.85.187.111',91,''),(38,'admin',1484326488,'93.85.187.111',91,''),(39,'admin',1484326514,'93.85.187.111',101,''),(40,'admin',1484331073,'93.85.187.111',64,'admin'),(41,'admin',1484337111,'46.53.201.155',101,''),(42,'admin',1484337113,'46.53.201.155',86,'http://wikipet.by/positiv32.html'),(43,'admin',1484337294,'46.53.201.155',59,'positiv'),(44,'admin',1484337792,'46.53.201.155',60,'positiv'),(45,'admin',1484338712,'46.53.201.155',40,''),(46,'admin',1484338778,'46.53.201.155',59,'positiv'),(47,'admin',1484338839,'46.53.201.155',60,'positiv'),(48,'admin',1484338890,'46.53.201.155',60,'positiv'),(49,'admin',1484409285,'37.44.91.227',101,''),(50,'admin',1484409287,'37.44.91.227',86,'http://wikipet.by/'),(51,'admin',1484410272,'37.44.91.227',13,'8'),(52,'admin',1484410280,'37.44.91.227',13,'7'),(53,'admin',1484410284,'37.44.91.227',13,'6'),(54,'admin',1484410288,'37.44.91.227',13,'5'),(55,'admin',1484410293,'37.44.91.227',13,'4'),(56,'admin',1484410441,'37.44.91.227',12,'Слайдер на главной 1'),(57,'admin',1484410631,'37.44.91.227',1,'Собака 1'),(58,'admin',1484411312,'37.44.91.227',25,'Собака 1'),(59,'admin',1484415806,'46.53.201.155',86,'http://wikipet.by/admin.php?mod=editnews&amp;action=list'),(60,'admin',1484415807,'46.53.201.155',82,''),(61,'admin',1484416484,'46.53.201.155',25,'Собака 1'),(62,'admin',1484416573,'46.53.201.155',25,'Собака 1'),(63,'admin',1484416872,'46.53.201.155',25,'Собака 1'),(64,'admin',1484417609,'46.53.201.155',25,'Собака 1'),(65,'admin',1484417658,'46.53.201.155',25,'Собака 1'),(66,'admin',1484419009,'46.53.201.155',25,'Собака 1'),(67,'admin',1484419039,'46.53.201.155',25,'Собака 1'),(68,'admin',1484419420,'46.53.201.155',25,'Слайдер Собака 1'),(69,'admin',1484420045,'46.53.201.155',1,'Слайдер на главной 2 внизу'),(70,'admin',1484420081,'46.53.201.155',25,'Слайдер на главной 2 внизу'),(71,'admin',1484420106,'46.53.201.155',14,'Слайдеры'),(72,'admin',1484600056,'46.53.201.155',101,''),(73,'admin',1484600072,'46.53.201.155',101,''),(74,'admin',1484600089,'46.53.201.155',101,''),(75,'admin',1484646275,'46.216.216.29',101,''),(76,'admin',1484646280,'46.216.216.29',101,''),(77,'admin',1484646325,'46.216.216.29',101,''),(78,'admin',1484646372,'46.216.216.29',101,''),(79,'admin',1484646375,'46.216.216.29',101,''),(80,'admin',1484646390,'46.216.216.29',101,''),(81,'admin',1484646397,'46.216.216.29',101,''),(82,'admin',1484646448,'46.216.216.29',101,''),(83,'admin',1484646513,'46.216.216.29',101,''),(84,'admin',1484646531,'46.216.216.29',101,''),(85,'admin',1484646630,'46.216.216.29',101,''),(86,'admin',1484646634,'46.216.216.29',101,''),(87,'admin',1484647136,'46.216.216.29',101,''),(88,'admin',1484647384,'46.216.216.29',101,''),(89,'admin',1484648146,'46.216.216.29',101,''),(90,'admin',1484648318,'46.216.216.29',101,''),(91,'admin',1484676335,'46.53.201.155',101,''),(92,'admin',1484676593,'46.53.201.155',101,''),(93,'admin',1484688248,'46.53.201.155',101,''),(94,'admin',1484735425,'46.53.201.155',101,''),(95,'admin',1484744461,'46.53.201.155',64,'admin'),(96,'admin',1484744487,'46.53.201.155',64,'admin'),(97,'admin',1484744554,'46.53.201.155',64,'admin'),(98,'admin',1484745113,'46.53.201.155',64,'admin'),(99,'admin',1484745263,'46.53.201.155',64,'admin'),(100,'admin',1484745350,'46.53.201.155',64,'admin'),(101,'admin',1484745509,'46.53.201.155',64,'admin'),(102,'admin',1484745562,'46.53.201.155',64,'admin'),(103,'admin',1484745585,'46.53.201.155',64,'admin'),(104,'admin',1484745587,'46.53.201.155',64,'admin'),(105,'admin',1484745737,'46.53.201.155',64,'admin'),(106,'admin',1484746120,'46.53.201.155',64,'admin'),(107,'admin',1484746172,'46.53.201.155',64,'admin'),(108,'admin',1484746180,'46.53.201.155',64,'admin'),(109,'admin',1484746226,'46.53.201.155',64,'admin'),(110,'admin',1484746442,'46.53.201.155',64,'admin'),(111,'admin',1484746446,'46.53.201.155',64,'admin'),(112,'admin',1484746655,'46.53.201.155',64,'admin'),(113,'admin',1484746703,'46.53.201.155',64,'admin'),(114,'admin',1484747290,'46.53.201.155',64,'admin'),(115,'admin',1484761416,'93.84.9.209',101,''),(116,'admin',1484764998,'46.53.201.155',101,''),(117,'admin',1484765344,'46.53.201.155',101,''),(118,'admin',1484766084,'46.53.201.155',64,'admin'),(119,'admin',1484766130,'46.53.201.155',64,'admin'),(120,'admin',1484766136,'46.53.201.155',64,'admin'),(121,'admin',1484766240,'46.53.201.155',64,'admin'),(122,'admin',1484766385,'46.53.201.155',64,'admin'),(123,'admin',1484766542,'46.53.201.155',64,'admin'),(124,'admin',1484766630,'46.53.201.155',64,'admin'),(125,'admin',1484766635,'46.53.201.155',64,'admin'),(126,'admin',1484766659,'46.53.201.155',64,'admin'),(127,'admin',1484766711,'46.53.201.155',64,'admin'),(128,'admin',1484766721,'46.53.201.155',64,'admin'),(129,'admin',1484766754,'46.53.201.155',64,'admin'),(130,'admin',1484766907,'46.53.201.155',64,'admin'),(131,'admin',1484767191,'46.53.201.155',64,'admin'),(132,'admin',1484768153,'46.53.201.155',64,'admin'),(133,'admin',1484768178,'46.53.201.155',64,'admin'),(134,'admin',1484831033,'46.53.201.155',101,''),(135,'admin',1484834863,'46.53.201.155',101,''),(136,'admin',1484834887,'46.53.201.155',101,''),(137,'admin',1484834946,'46.53.201.155',101,''),(138,'admin',1484835075,'46.53.201.155',101,''),(139,'admin',1484835472,'46.53.201.155',101,''),(140,'admin',1484835722,'46.53.201.155',101,''),(141,'admin',1484835727,'46.53.201.155',101,''),(142,'admin',1484835771,'46.53.201.155',101,''),(143,'admin',1484835953,'46.53.201.155',101,''),(144,'admin',1484835961,'46.53.201.155',101,''),(145,'admin',1484835969,'46.53.201.155',101,''),(146,'admin',1484836041,'46.53.201.155',101,''),(147,'admin',1484836366,'46.53.201.155',101,''),(148,'admin',1484836437,'46.53.201.155',101,''),(149,'admin',1484836572,'46.53.201.155',101,''),(150,'admin',1484837949,'46.53.201.155',101,''),(151,'admin',1484838310,'46.53.201.155',101,''),(152,'admin',1484838535,'46.53.201.155',101,''),(153,'admin',1484838575,'46.53.201.155',101,''),(154,'admin',1484839257,'46.53.201.155',101,''),(155,'admin',1484839585,'46.53.201.155',101,''),(156,'admin',1484839598,'46.53.201.155',86,'http://wikipet.by/'),(157,'admin',1484839690,'46.53.201.155',1,'test10'),(158,'admin',1484903333,'93.85.55.107',91,''),(159,'admin',1484903342,'93.85.55.107',91,''),(160,'admin',1484903587,'93.85.55.107',101,''),(161,'admin',1484919889,'46.216.220.86',101,''),(162,'admin',1484919940,'46.216.220.86',101,''),(163,'admin',1484920527,'46.216.220.86',101,''),(164,'admin',1484920625,'46.216.220.86',101,''),(165,'admin',1484920680,'46.216.220.86',101,''),(166,'admin',1484920843,'46.216.220.86',101,''),(167,'admin',1484920917,'46.216.220.86',101,''),(168,'admin',1484920985,'46.216.220.86',101,''),(169,'admin',1484921078,'46.216.220.86',101,''),(170,'admin',1484921147,'46.216.220.86',101,''),(171,'admin',1484921336,'46.216.220.86',101,''),(172,'admin',1484921388,'46.216.220.86',101,''),(173,'admin',1484921645,'46.216.220.86',101,''),(174,'admin',1484921687,'46.216.220.86',101,''),(175,'admin',1484921727,'46.216.220.86',101,''),(176,'admin',1484921830,'46.216.220.86',101,''),(177,'admin',1484921878,'46.216.220.86',101,''),(178,'admin',1484921924,'46.216.220.86',101,''),(179,'admin',1484921967,'46.216.220.86',101,''),(180,'admin',1484922004,'46.216.220.86',101,''),(181,'admin',1484922358,'46.216.220.86',101,''),(182,'admin',1484922483,'46.216.220.86',101,''),(183,'admin',1484922579,'46.216.220.86',101,''),(184,'admin',1484922760,'46.216.220.86',101,''),(185,'admin',1484923209,'46.216.220.86',101,''),(186,'admin',1484923363,'46.216.220.86',101,''),(187,'admin',1484923485,'46.216.220.86',101,''),(188,'admin',1484923703,'46.216.220.86',101,''),(189,'admin',1484923719,'46.216.220.86',101,''),(190,'admin',1484923841,'46.216.220.86',101,''),(191,'admin',1484923847,'46.216.220.86',101,''),(192,'admin',1484923963,'46.216.220.86',101,''),(193,'admin',1484924039,'46.216.220.86',101,''),(194,'admin',1484924047,'46.216.220.86',101,''),(195,'admin',1484924164,'46.216.220.86',101,''),(196,'admin',1484924352,'46.216.220.86',101,''),(197,'admin',1484924359,'46.216.220.86',101,''),(198,'admin',1484924362,'46.216.220.86',101,''),(199,'admin',1484924393,'46.216.220.86',101,''),(200,'admin',1484924446,'46.216.220.86',101,''),(201,'admin',1484924634,'46.216.220.86',101,''),(202,'admin',1484924707,'46.216.220.86',101,''),(203,'admin',1484924765,'46.216.220.86',101,''),(204,'admin',1484924796,'46.216.220.86',101,''),(205,'admin',1484924867,'46.216.220.86',101,''),(206,'admin',1484924952,'46.216.220.86',101,''),(207,'admin',1484925093,'46.216.220.86',101,''),(208,'admin',1484925186,'46.216.220.86',101,''),(209,'admin',1484925231,'46.216.220.86',101,''),(210,'admin',1484925460,'46.216.220.86',101,''),(211,'admin',1484925474,'46.216.220.86',101,''),(212,'admin',1484925517,'46.216.220.86',101,''),(213,'admin',1484931927,'46.216.216.120',86,'http://wikipet.by/'),(214,'admin',1484932115,'46.216.216.120',59,'geroi-nashego-vremeni'),(215,'admin',1484932160,'46.216.216.120',60,'geroi-nashego-vremeni'),(216,'admin',1484932189,'46.216.216.120',60,'geroi-nashego-vremeni'),(217,'admin',1484933020,'46.216.216.120',60,'geroi-nashego-vremeni'),(218,'admin',1484933452,'46.216.216.120',12,'Это всё они'),(219,'admin',1484933502,'46.216.216.120',14,'Это всё они'),(220,'admin',1484933628,'46.216.216.120',25,'Приобретение и оплата скрипта'),(221,'admin',1484938603,'46.53.201.155',101,''),(222,'admin',1484993098,'93.85.26.12',101,''),(223,'admin',1484993457,'93.85.26.12',86,'http://wikipet.by/'),(224,'admin',1484997872,'93.85.26.12',86,'http://wikipet.by/'),(225,'admin',1485011323,'46.53.201.155',101,''),(226,'admin',1485011329,'46.53.201.155',86,'http://wikipet.by/'),(227,'admin',1485021034,'46.53.201.155',101,''),(228,'admin',1485021060,'46.53.201.155',86,'http://wikipet.by/'),(229,'admin',1485022477,'46.53.201.155',101,''),(230,'admin',1485022633,'46.53.201.155',101,''),(231,'admin',1485022645,'46.53.201.155',86,'http://wikipet.by/'),(232,'admin',1485079063,'46.53.201.155',86,'http://wikipet.by/admin.php?mod=main'),(233,'admin',1485080024,'46.53.201.155',86,'http://wikipet.by/post3.html'),(234,'admin',1485080176,'46.53.201.155',1,'Самые известные животные в соцсетях'),(235,'admin',1485080456,'46.53.201.155',25,'Самые известные животные в соцсетях'),(236,'admin',1485080623,'46.53.201.155',25,'Самые известные животные в соцсетях'),(237,'admin',1485081885,'46.53.201.155',25,'Самые известные животные в соцсетях'),(238,'admin',1485082533,'46.53.201.155',25,'Самые известные животные в соцсетях'),(239,'admin',1485099971,'46.53.201.155',36,'1485099972_lion.jpg'),(240,'admin',1485099976,'46.53.201.155',86,'http://wikipet.by/admin.php?mod=editnews&amp;action=editnews&amp;id=7'),(241,'admin',1485099976,'46.53.201.155',25,'Самые известные животные в соцсетях'),(242,'admin',1485100072,'46.53.201.155',25,'Самые известные животные в соцсетях'),(243,'admin',1485100174,'46.53.201.155',36,'1485100221_lion.jpg'),(244,'admin',1485100239,'46.53.201.155',25,'Самые известные животные в соцсетях'),(245,'admin',1485161218,'46.216.221.100',101,''),(246,'admin',1485164579,'46.53.201.155',101,''),(247,'admin',1485164694,'46.53.201.155',86,'http://wikipet.by/'),(248,'admin',1485164765,'46.53.201.155',25,'Самые известные животные в соцсетях'),(249,'admin',1485165020,'46.53.201.155',25,'Самые известные животные в соцсетях'),(250,'admin',1485165049,'46.53.201.155',25,'Самые известные животные в соцсетях'),(251,'admin',1485165060,'46.216.221.100',101,''),(252,'admin',1485165430,'46.216.221.100',101,''),(253,'admin',1485165763,'93.85.29.204',101,''),(254,'admin',1485175580,'46.53.201.155',82,''),(255,'admin',1485190533,'46.53.201.155',101,''),(256,'admin',1485196893,'46.53.201.155',86,'http://wikipet.by/cat.html'),(257,'admin',1485196976,'46.53.201.155',25,'Самые известные животные в соцсетях'),(258,'admin',1485197062,'46.53.201.155',25,'Самые известные животные в соцсетях'),(259,'admin',1485260025,'46.216.216.210',101,''),(260,'admin',1485260030,'46.216.216.210',86,'http://wikipet.by/'),(261,'admin',1485260483,'46.216.216.210',25,'Приобретение и оплата скрипта'),(262,'admin',1485260955,'46.216.216.210',14,'Это всё они'),(263,'admin',1485261126,'46.216.216.210',14,'Это всё они'),(264,'admin',1485261196,'46.216.216.210',14,'Это всё они'),(265,'admin',1485265460,'46.216.216.210',86,'http://wikipet.by/admin.php?mod=categories'),(266,'admin',1485273687,'46.53.201.155',82,''),(267,'admin',1485274045,'46.53.201.155',14,'Это всё они'),(268,'admin',1485281170,'46.53.201.155',101,''),(269,'admin',1485281284,'46.53.201.155',101,''),(270,'admin',1485281385,'46.53.201.155',101,''),(271,'admin',1485282767,'46.53.201.155',86,'http://wikipet.by/admin.php?mod=static'),(272,'admin',1485282865,'46.53.201.155',60,'index'),(273,'admin',1485284198,'46.53.201.155',101,''),(274,'admin',1485284206,'46.53.201.155',101,''),(275,'admin',1485284256,'46.53.201.155',101,''),(276,'admin',1485284327,'46.53.201.155',101,''),(277,'admin',1485284400,'46.53.201.155',101,''),(278,'admin',1485284407,'46.53.201.155',86,'http://wikipet.by/'),(279,'admin',1485284463,'46.53.201.155',25,'Самые известные животные в соцсетях'),(280,'admin',1485284469,'46.53.201.155',101,''),(281,'admin',1485284535,'46.53.201.155',25,'Самые известные животные в соцсетях'),(282,'admin',1485284554,'46.53.201.155',101,''),(283,'admin',1485284567,'46.53.201.155',101,''),(284,'admin',1485284701,'46.53.201.155',25,'Самые известные животные в соцсетях'),(285,'admin',1485284711,'46.53.201.155',101,''),(286,'admin',1485284719,'46.53.201.155',101,''),(287,'admin',1485284814,'46.53.201.155',101,''),(288,'admin',1485285029,'46.53.201.155',101,''),(289,'admin',1485285199,'46.53.201.155',25,'Самые известные животные в соцсетях'),(290,'admin',1485285236,'46.53.201.155',25,'Самые известные животные в соцсетях'),(291,'admin',1485285243,'46.53.201.155',101,''),(292,'admin',1485285975,'46.53.201.155',101,''),(293,'admin',1485286017,'46.53.201.155',101,''),(294,'admin',1485286083,'46.53.201.155',101,''),(295,'admin',1485286434,'46.53.201.155',101,''),(296,'admin',1485286550,'46.53.201.155',101,''),(297,'admin',1485286633,'46.53.201.155',101,''),(298,'admin',1485287059,'46.53.201.155',101,''),(299,'admin',1485287083,'46.53.201.155',101,''),(300,'admin',1485340803,'46.53.201.155',86,'http://wikipet.by/eto-vse-oni/7-post10.html'),(301,'admin',1485341211,'46.53.201.155',86,'http://wikipet.by/positiv.html'),(302,'admin',1485342403,'46.53.201.155',14,'Это всё они'),(303,'admin',1485344434,'46.53.201.155',13,'10'),(304,'admin',1485345643,'46.53.201.155',59,'eto-vse-oni'),(305,'admin',1485345761,'46.53.201.155',60,'eto-vse-oni'),(306,'admin',1485345838,'46.53.201.155',60,'eto-vse-oni'),(307,'admin',1485346233,'46.53.201.155',60,'eto-vse-oni'),(308,'admin',1485346388,'46.53.201.155',86,'http://wikipet.by/eto-vse-oni/7-post10.html'),(309,'admin',1485346526,'46.53.201.155',1,'Post 1'),(310,'admin',1485346553,'46.53.201.155',25,'Post 1'),(311,'admin',1485346581,'46.53.201.155',1,'Post 2'),(312,'admin',1485346605,'46.53.201.155',1,'Post 3'),(313,'admin',1485346661,'46.53.201.155',1,'Post 4'),(314,'admin',1485346693,'46.53.201.155',25,'Post 3'),(315,'admin',1485346723,'46.53.201.155',1,'Post 5'),(316,'admin',1485348198,'46.53.201.155',12,'Герои нашего времени'),(317,'admin',1485348410,'46.53.201.155',60,'eto-vse-oni'),(318,'admin',1485348963,'46.53.201.155',25,'Самые известные животные в соцсетях'),(319,'admin',1485348980,'46.53.201.155',25,'Post 1'),(320,'admin',1485348995,'46.53.201.155',25,'Post 2'),(321,'admin',1485349019,'46.53.201.155',25,'Post 3'),(322,'admin',1485349147,'46.53.201.155',14,'Экономика'),(323,'admin',1485349249,'46.53.201.155',25,'Приобретение и оплата скрипта'),(324,'admin',1485351908,'46.53.201.155',86,'http://wikipet.by/admin.php?mod=editnews&amp;action=editnews&amp;id=2'),(325,'admin',1485351921,'46.53.201.155',12,'test category'),(326,'admin',1485351939,'46.53.201.155',25,'Самые известные животные в соцсетях'),(327,'admin',1485351958,'46.53.201.155',25,'Post 1'),(328,'admin',1485352047,'46.53.201.155',1,'Собаки-спасатели'),(329,'admin',1485352109,'46.53.201.155',25,'Post 2'),(330,'admin',1485352124,'46.53.201.155',25,'Post 3'),(331,'admin',1485352158,'46.53.201.155',25,'Post 4'),(332,'admin',1485352182,'46.53.201.155',25,'Post 5'),(333,'admin',1485353141,'46.53.201.155',25,'Собаки-спасатели'),(334,'admin',1485353534,'46.53.201.155',25,'Приобретение и оплата скрипта'),(335,'admin',1485355990,'46.53.201.155',25,'Собаки-спасатели'),(336,'admin',1485356595,'46.53.201.155',25,'Собаки-поводыри - какие породы, как дрессируют, где можно купить, сколько стоит 1'),(337,'admin',1485356697,'46.53.201.155',25,'Собаки-поводыри - какие породы, как дрессируют, где можно купить, сколько стоит'),(338,'admin',1485356789,'46.53.201.155',25,'Собаки-поводыри - какие породы, как дрессируют, где можно купить, сколько стоит. Часть 2'),(339,'admin',1485356815,'46.53.201.155',25,'Собаки-поводыри - какие породы, как дрессируют, где можно купить, сколько стоит. Часть 1'),(340,'admin',1485356851,'46.53.201.155',25,'Собаки-поводыри - какие породы, как дрессируют, где можно купить, сколько стоит. Часть 3'),(341,'admin',1485356893,'46.53.201.155',25,'Собаки-поводыри - какие породы, как дрессируют, где можно купить, сколько стоит. Часть 4'),(342,'admin',1485356987,'46.53.201.155',25,'Собаки-поводыри - какие породы, как дрессируют, где можно купить, сколько стоит. Часть 5'),(343,'admin',1485360207,'46.53.201.155',74,'podzagolovok'),(344,'admin',1485360291,'46.53.201.155',25,'Собаки-спасатели'),(345,'admin',1485362282,'46.53.201.155',48,''),(346,'admin',1485362749,'46.53.201.155',36,'1485362802_232.jpg'),(347,'admin',1485362792,'46.53.201.155',25,'Собаки-спасатели'),(348,'admin',1485362927,'46.53.201.155',25,'Собаки-спасатели'),(349,'admin',1485364483,'46.53.201.155',25,'Самые известные животные в соцсетях'),(350,'admin',1485364748,'46.53.201.155',25,'Самые известные животные в соцсетях'),(351,'admin',1485364872,'46.53.201.155',36,'1485364921_232.jpg'),(352,'admin',1485365176,'46.53.201.155',48,''),(353,'admin',1485365209,'46.53.201.155',36,'1485365277_232.jpg'),(354,'admin',1485365214,'46.53.201.155',25,'Собаки-спасатели'),(355,'admin',1485365271,'46.53.201.155',36,'1485365312_232.jpg'),(356,'admin',1485365273,'46.53.201.155',25,'Собаки-спасатели'),(357,'admin',1485365434,'46.53.201.155',25,'Самые известные животные в соцсетях'),(358,'admin',1485365495,'46.53.201.155',36,'1485365579_1485100221_lion.jpg'),(359,'admin',1485365539,'46.53.201.155',36,'1485365608_1485100221_lion-1.jpg'),(360,'admin',1485365564,'46.53.201.155',25,'Самые известные животные в соцсетях'),(361,'admin',1485365804,'46.53.201.155',36,'1485365882_1485100221_lion-2.jpg'),(362,'admin',1485365809,'46.53.201.155',25,'Самые известные животные в соцсетях'),(363,'admin',1485368795,'46.53.201.155',74,'img-korotkie-novosti'),(364,'admin',1485368877,'46.53.201.155',36,'1485368932_232.jpg'),(365,'admin',1485368883,'46.53.201.155',25,'Самые известные животные в соцсетях'),(366,'admin',1485369112,'46.53.201.155',32,'7'),(367,'admin',1485369120,'46.53.201.155',36,'1485369146_1485100221_lion-2.jpg'),(368,'admin',1485369123,'46.53.201.155',25,'Самые известные животные в соцсетях'),(369,'admin',1485369163,'46.53.201.155',36,'1485369236_232.jpg'),(370,'admin',1485369166,'46.53.201.155',25,'Собаки-спасатели'),(371,'admin',1485369488,'46.53.201.155',25,'Самые известные животные в соцсетях'),(372,'admin',1485370157,'46.53.201.155',86,'http://wikipet.by/eto-vse-oni/7-post10.html'),(373,'admin',1485370196,'46.53.201.155',25,'Самые известные животные в соцсетях'),(374,'admin',1485370993,'46.53.201.155',25,'Собаки-спасатели'),(375,'admin',1485371033,'46.53.201.155',36,'1485371075_232.jpg'),(376,'admin',1485371036,'46.53.201.155',25,'Собаки-спасатели'),(377,'admin',1485422791,'46.53.201.155',86,'http://wikipet.by/admin.php?mod=editnews&amp;action=editnews&amp;id=7'),(378,'admin',1485422905,'46.53.201.155',12,'Animal fashion'),(379,'admin',1485422943,'46.53.201.155',14,'ANIMAL FASHION'),(380,'admin',1485423057,'46.53.201.155',12,'АКТУАЛЬНОЕ'),(381,'admin',1485423074,'46.53.201.155',12,'АНИМАЛИСТИКА'),(382,'admin',1485423094,'46.53.201.155',12,'МИФОЛОГИЯ И СИМВОЛИКА'),(383,'admin',1485423148,'46.53.201.155',12,'CELEBRITYS'),(384,'admin',1485423173,'46.53.201.155',12,'ЗАНИМАТЕЛЬНАЯ ПСИХОЛОГИЯ'),(385,'admin',1485423212,'46.53.201.155',14,'ГЕРОИ НАШЕГО ВРЕМЕНИ'),(386,'admin',1485423271,'46.53.201.155',12,'ЭТО ВСЕ ОНИ'),(387,'admin',1485423330,'46.53.201.155',14,'ЗАНИМАТЕЛЬНАЯ ПСИХОЛОГИЯ'),(388,'admin',1485423350,'46.53.201.155',14,'CELEBRITYS'),(389,'admin',1485423375,'46.53.201.155',14,'МИФОЛОГИЯ И СИМВОЛИКА'),(390,'admin',1485423393,'46.53.201.155',14,'АНИМАЛИСТИКА'),(391,'admin',1485423415,'46.53.201.155',14,'АКТУАЛЬНОЕ'),(392,'admin',1485423431,'46.53.201.155',14,'ANIMAL FASHION'),(393,'admin',1485423444,'46.53.201.155',14,'ГЕРОИ НАШЕГО ВРЕМЕНИ'),(394,'admin',1485429003,'46.53.201.155',48,''),(395,'admin',1485436410,'46.53.201.155',86,'http://wikipet.by/eto-vse-oni/geroi/13-sobaki-spasateli.html'),(396,'admin',1485437725,'46.53.201.155',12,'ПСИХОЛОГИЯ'),(397,'admin',1485439041,'46.53.201.155',36,'1485439095_blok1img.jpg'),(398,'admin',1485439050,'46.53.201.155',1,'ЛАБРАДОР'),(399,'admin',1485439101,'46.53.201.155',36,'1485439178_blok2img.jpg'),(400,'admin',1485439136,'46.53.201.155',1,'Анималотерапия'),(401,'admin',1485439450,'46.53.201.155',36,'1485439493_blok3img.jpg'),(402,'admin',1485439478,'46.53.201.155',1,'Питание'),(403,'admin',1485439542,'46.53.201.155',25,'Лабрадор'),(404,'admin',1485439781,'46.53.201.155',36,'1485439814_blok2img.jpg'),(405,'admin',1485439964,'46.53.201.155',1,'Анималотерапия 2'),(406,'admin',1485440051,'46.53.201.155',36,'1485440054_blok1img.jpg'),(407,'admin',1485440064,'46.53.201.155',1,'Лабрадор 2'),(408,'admin',1485440092,'46.53.201.155',36,'1485440172_blok3img.jpg'),(409,'admin',1485440116,'46.53.201.155',1,'Питание 2'),(410,'admin',1485440162,'46.53.201.155',86,'http://wikipet.by/eto-vse-oni/'),(411,'admin',1485443078,'46.53.201.155',14,'ГЕРОИ НАШЕГО ВРЕМЕНИ'),(412,'admin',1485443108,'46.53.201.155',14,'ЗАНИМАТЕЛЬНАЯ ПСИХОЛОГИЯ'),(413,'admin',1485443129,'46.53.201.155',14,'CELEBRITYS'),(414,'admin',1485443152,'46.53.201.155',14,'АНИМАЛИСТИКА'),(415,'admin',1485443179,'46.53.201.155',14,'ANIMAL FASHION'),(416,'admin',1485443211,'46.53.201.155',14,'АКТУАЛЬНОЕ'),(417,'admin',1485443256,'46.53.201.155',14,'МИФОЛОГИЯ И СИМВОЛИКА'),(418,'admin',1485443713,'46.53.201.155',13,'19'),(419,'admin',1485444344,'46.53.201.155',86,'Direct DLE Adminpanel'),(420,'admin',1485444746,'46.53.201.155',60,'eto-vse-oni'),(421,'admin',1485445144,'46.53.201.155',60,'eto-vse-oni'),(422,'admin',1485445755,'46.53.201.155',60,'eto-vse-oni'),(423,'admin',1485445845,'46.53.201.155',60,'eto-vse-oni'),(424,'admin',1485446045,'46.53.201.155',60,'eto-vse-oni'),(425,'admin',1485446079,'46.53.201.155',60,'eto-vse-oni'),(426,'admin',1485505924,'46.53.201.155',86,'http://wikipet.by/'),(427,'admin',1485505957,'46.53.201.155',48,''),(428,'admin',1485506118,'46.53.201.155',49,''),(429,'admin',1485508583,'46.53.201.155',86,'http://wikipet.by/admin.php?mod=options&amp;action=syscon'),(430,'admin',1485508597,'46.53.201.155',32,'19'),(431,'admin',1485508611,'46.53.201.155',36,'1485508680_blok1img.jpg'),(432,'admin',1485508615,'46.53.201.155',25,'Питание 2'),(433,'admin',1485510369,'46.53.201.155',32,'17'),(434,'admin',1485510375,'46.53.201.155',36,'1485510453_blok1img.jpg'),(435,'admin',1485510378,'46.53.201.155',25,'Анималотерапия 2');
/*!40000 ALTER TABLE `dle_admin_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_admin_sections`
--

DROP TABLE IF EXISTS `dle_admin_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_admin_sections` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `descr` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `allow_groups` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_admin_sections`
--

LOCK TABLES `dle_admin_sections` WRITE;
/*!40000 ALTER TABLE `dle_admin_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_admin_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_banned`
--

DROP TABLE IF EXISTS `dle_banned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_banned` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `descr` text NOT NULL,
  `date` varchar(15) NOT NULL DEFAULT '',
  `days` smallint(4) NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_banned`
--

LOCK TABLES `dle_banned` WRITE;
/*!40000 ALTER TABLE `dle_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_banned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_banners`
--

DROP TABLE IF EXISTS `dle_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_banners` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `banner_tag` varchar(40) NOT NULL DEFAULT '',
  `descr` varchar(200) NOT NULL DEFAULT '',
  `code` text NOT NULL,
  `approve` tinyint(1) NOT NULL DEFAULT '0',
  `short_place` tinyint(1) NOT NULL DEFAULT '0',
  `bstick` tinyint(1) NOT NULL DEFAULT '0',
  `main` tinyint(1) NOT NULL DEFAULT '0',
  `category` varchar(255) NOT NULL DEFAULT '',
  `grouplevel` varchar(100) NOT NULL DEFAULT 'all',
  `start` varchar(15) NOT NULL DEFAULT '',
  `end` varchar(15) NOT NULL DEFAULT '',
  `fpage` tinyint(1) NOT NULL DEFAULT '0',
  `innews` tinyint(1) NOT NULL DEFAULT '0',
  `devicelevel` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_banners`
--

LOCK TABLES `dle_banners` WRITE;
/*!40000 ALTER TABLE `dle_banners` DISABLE KEYS */;
INSERT INTO `dle_banners` (`id`, `banner_tag`, `descr`, `code`, `approve`, `short_place`, `bstick`, `main`, `category`, `grouplevel`, `start`, `end`, `fpage`, `innews`, `devicelevel`) VALUES (1,'header','Верхний баннер','<div class=\"reklama-header\"><!--<img src=\"{THEME}/img/reklama-top.jpg\" alt=\"\" />--></div>',1,0,0,0,'0','all','','',0,0,'all'),(2,'right-sidebar-2','верхний баннер в правой боковой колонке 2','<div class=\"reklama-aside2\"></div>',1,0,0,0,'0','all','','',0,0,'all'),(3,'right-sidebar-1','верхний баннер в правой боковой колонке','<div class=\"reklama-aside\"></div>',1,0,0,0,'0','all','','',0,0,'all');
/*!40000 ALTER TABLE `dle_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_category`
--

DROP TABLE IF EXISTS `dle_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_category` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `parentid` mediumint(8) NOT NULL DEFAULT '0',
  `posi` mediumint(8) NOT NULL DEFAULT '1',
  `name` varchar(50) NOT NULL DEFAULT '',
  `alt_name` varchar(50) NOT NULL DEFAULT '',
  `icon` varchar(200) NOT NULL DEFAULT '',
  `skin` varchar(50) NOT NULL DEFAULT '',
  `descr` varchar(200) NOT NULL DEFAULT '',
  `keywords` text NOT NULL,
  `news_sort` varchar(10) NOT NULL DEFAULT '',
  `news_msort` varchar(4) NOT NULL DEFAULT '',
  `news_number` smallint(5) NOT NULL DEFAULT '0',
  `short_tpl` varchar(40) NOT NULL DEFAULT '',
  `full_tpl` varchar(40) NOT NULL DEFAULT '',
  `metatitle` varchar(255) NOT NULL DEFAULT '',
  `show_sub` tinyint(1) NOT NULL DEFAULT '0',
  `allow_rss` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_category`
--

LOCK TABLES `dle_category` WRITE;
/*!40000 ALTER TABLE `dle_category` DISABLE KEYS */;
INSERT INTO `dle_category` (`id`, `parentid`, `posi`, `name`, `alt_name`, `icon`, `skin`, `descr`, `keywords`, `news_sort`, `news_msort`, `news_number`, `short_tpl`, `full_tpl`, `metatitle`, `show_sub`, `allow_rss`) VALUES (1,0,1,'О скрипте','o-skripte','','','','','','',0,'','','',0,1),(2,0,1,'В мире','v-mire','','','','','','',0,'','','',0,1),(3,0,1,'Экономика','ekonomika','','pet','','','','',0,'','','',0,1),(9,0,1,'Слайдеры','slayder-na-glavnoy-1','','','','','','',0,'','','',0,0),(11,0,1,'ГЕРОИ НАШЕГО ВРЕМЕНИ','geroi','','','','','','',0,'','','',0,1),(12,0,1,'test category','test-category','','','','','','',0,'','','',0,1),(13,0,1,'ANIMAL FASHION','animal-fashion','','','','','','',0,'','','',0,1),(14,0,1,'АКТУАЛЬНОЕ','aktualnoe','','','','','','',0,'','','',0,1),(15,0,1,'АНИМАЛИСТИКА','animalistika','','','','','','',0,'','','',0,1),(16,0,1,'МИФОЛОГИЯ И СИМВОЛИКА','mifologiya-i-simvolika','','','','','','',0,'','','',0,1),(17,0,1,'CELEBRITYS','celebritys','','','','','','',0,'','','',0,1),(18,0,1,'ЗАНИМАТЕЛЬНАЯ ПСИХОЛОГИЯ','zanimatelnaya-psihologiya','','','','','','',0,'','','',0,1),(20,0,1,'ПСИХОЛОГИЯ','psihologiya','','','','','','',0,'','','',0,1);
/*!40000 ALTER TABLE `dle_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_comment_rating_log`
--

DROP TABLE IF EXISTS `dle_comment_rating_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_comment_rating_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL DEFAULT '0',
  `member` varchar(40) NOT NULL DEFAULT '',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `rating` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `c_id` (`c_id`),
  KEY `member` (`member`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_comment_rating_log`
--

LOCK TABLES `dle_comment_rating_log` WRITE;
/*!40000 ALTER TABLE `dle_comment_rating_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_comment_rating_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_comments`
--

DROP TABLE IF EXISTS `dle_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `autor` varchar(40) NOT NULL DEFAULT '',
  `email` varchar(40) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `is_register` tinyint(1) NOT NULL DEFAULT '0',
  `approve` tinyint(1) NOT NULL DEFAULT '1',
  `rating` int(11) NOT NULL DEFAULT '0',
  `vote_num` int(11) NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  KEY `approve` (`approve`),
  KEY `parent` (`parent`),
  KEY `rating` (`rating`),
  FULLTEXT KEY `text` (`text`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_comments`
--

LOCK TABLES `dle_comments` WRITE;
/*!40000 ALTER TABLE `dle_comments` DISABLE KEYS */;
INSERT INTO `dle_comments` (`id`, `post_id`, `user_id`, `date`, `autor`, `email`, `text`, `ip`, `is_register`, `approve`, `rating`, `vote_num`, `parent`) VALUES (15,7,1,'2017-01-23 21:46:31','admin','vitaminiby@ya.ru','Я оставляю первый комментарий','46.53.201.155',1,1,0,0,0),(16,7,4,'2017-01-23 21:48:20','User 1','user1@gmail.com','Я оставляю второй комментарий','46.53.201.155',1,1,0,0,0),(18,7,8,'2017-01-23 21:53:40','User 5','user5@gmail.com','Я оставляю первый длинный комментарий<br><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ac nunc sodales, auctor libero ac, tempus dolor. Aenean id imperdiet leo, vitae accumsan tellus. In mauris leo, bibendum id turpis sed, finibus vehicula dui. Nam laoreet dictum pharetra. Vestibulum consequat erat ante, eu sodales dolor dictum sit amet. Etiam imperdiet blandit aliquam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam rutrum pharetra lacus eu pretium. In a mauris sit amet metus cursus lobortis. Praesent a enim lacinia, maximus lorem vel, egestas erat. Morbi in nisi eget sapien pellentesque tristique. Praesent sit amet ante nec diam vestibulum ultrices. Aliquam tristique et est in ultricies.</div><div>Proin eu ante turpis. Morbi sed lectus euismod, feugiat augue ut, dignissim risus. Pellentesque sagittis egestas velit ut rhoncus. Donec a felis et metus consequat dictum. Fusce tempus libero vitae metus euismod bibendum at eu tortor. Quisque vehicula pharetra enim vel vestibulum. Morbi sagittis id odio id porta. Vestibulum at feugiat felis. Aliquam finibus, nunc a euismod scelerisque, tellus turpis molestie nibh, in fermentum tortor lorem at nulla. Praesent malesuada dignissim libero eu mollis. Aenean eu massa sit amet augue dignissim interdum. Vestibulum mollis lectus mi, non efficitur magna luctus vitae. Cras rutrum vitae neque id suscipit. Maecenas orci enim, cursus vitae mattis non, vestibulum sit amet libero. Etiam quis nibh ipsum. Aenean et laoreet elit.</div><br>','46.53.201.155',1,1,0,0,0),(20,7,3,'2017-01-23 22:12:06','tglogin','tamaragrinevich@gmail.com','Я хочу процитировать первый длинный комментарий<!--QuoteBegin User 5 --><div class=\"title_quote\">Цитата: User 5</div><div class=\"quote\"><!--QuoteEBegin-->Я оставляю первый длинный комментарий<br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ac nunc sodales, auctor libero ac, tempus dolor. Aenean id imperdiet leo, vitae accumsan tellus. In mauris leo, bibendum id turpis sed, finibus vehicula dui. Nam laoreet dictum pharetra. Vestibulum consequat erat ante, eu sodales dolor dictum sit amet. Etiam imperdiet blandit aliquam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam rutrum pharetra lacus eu pretium. In a mauris sit amet metus cursus lobortis. Praesent a enim lacinia, maximus lorem vel, egestas erat. Morbi in nisi eget sapien pellentesque tristique. Praesent sit amet ante nec diam vestibulum ultrices. Aliquam tristique et est in ultricies.<br>Proin eu ante turpis. Morbi sed lectus euismod, feugiat augue ut, dignissim risus. Pellentesque sagittis egestas velit ut rhoncus. Donec a felis et metus consequat dictum. Fusce tempus libero vitae metus euismod bibendum at eu tortor. Quisque vehicula pharetra enim vel vestibulum. Morbi sagittis id odio id porta. Vestibulum at feugiat felis. Aliquam finibus, nunc a euismod scelerisque, tellus turpis molestie nibh, in fermentum tortor lorem at nulla. Praesent malesuada dignissim libero eu mollis. Aenean eu massa sit amet augue dignissim interdum. Vestibulum mollis lectus mi, non efficitur magna luctus vitae. Cras rutrum vitae neque id suscipit. Maecenas orci enim, cursus vitae mattis non, vestibulum sit amet libero. Etiam quis nibh ipsum. Aenean et laoreet elit.<br><br><!--QuoteEnd--></div><!--QuoteEEnd-->','46.53.201.155',1,1,0,0,0);
/*!40000 ALTER TABLE `dle_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_comments_files`
--

DROP TABLE IF EXISTS `dle_comments_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_comments_files` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `c_id` int(10) NOT NULL DEFAULT '0',
  `author` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(15) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `c_id` (`c_id`),
  KEY `author` (`author`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_comments_files`
--

LOCK TABLES `dle_comments_files` WRITE;
/*!40000 ALTER TABLE `dle_comments_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_comments_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_complaint`
--

DROP TABLE IF EXISTS `dle_complaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_complaint` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NOT NULL DEFAULT '0',
  `c_id` int(11) NOT NULL DEFAULT '0',
  `n_id` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `from` varchar(40) NOT NULL DEFAULT '',
  `to` varchar(255) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `c_id` (`c_id`),
  KEY `p_id` (`p_id`),
  KEY `n_id` (`n_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_complaint`
--

LOCK TABLES `dle_complaint` WRITE;
/*!40000 ALTER TABLE `dle_complaint` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_complaint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_email`
--

DROP TABLE IF EXISTS `dle_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_email` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `use_html` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_email`
--

LOCK TABLES `dle_email` WRITE;
/*!40000 ALTER TABLE `dle_email` DISABLE KEYS */;
INSERT INTO `dle_email` (`id`, `name`, `template`, `use_html`) VALUES (1,'reg_mail','{%username%},\r\n\r\nЭто письмо отправлено с сайта http://wikipet.by/\r\n\r\nВы получили это письмо, так как этот e-mail адрес был использован при регистрации на сайте. Если Вы не регистрировались на этом сайте, просто проигнорируйте это письмо и удалите его. Вы больше не получите такого письма.\r\n\r\n------------------------------------------------\r\nВаш логин и пароль на сайте:\r\n------------------------------------------------\r\n\r\nЛогин: {%username%}\r\nПароль: {%password%}\r\n\r\n------------------------------------------------\r\nИнструкция по активации\r\n------------------------------------------------\r\n\r\nБлагодарим Вас за регистрацию.\r\nМы требуем от Вас подтверждения Вашей регистрации, для проверки того, что введённый Вами e-mail адрес - реальный. Это требуется для защиты от нежелательных злоупотреблений и спама.\r\n\r\nДля активации Вашего аккаунта, зайдите по следующей ссылке:\r\n\r\n{%validationlink%}\r\n\r\nЕсли и при этих действиях ничего не получилось, возможно Ваш аккаунт удалён. В этом случае, обратитесь к Администратору, для разрешения проблемы.\r\n\r\nС уважением,\r\n\r\nАдминистрация http://wikipet.by/.',0),(2,'feed_mail','{%username_to%},\r\n\r\nДанное письмо вам отправил {%username_from%} с сайта http://wikipet.by/\r\n\r\n------------------------------------------------\r\nТекст сообщения\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\nIP адрес отправителя: {%ip%}\r\nГруппа: {%group%}\r\n\r\n------------------------------------------------\r\nПомните, что администрация сайта не несет ответственности за содержание данного письма\r\n\r\nС уважением,\r\n\r\nАдминистрация http://wikipet.by/',0),(3,'lost_mail','Уважаемый {%username%},\r\n\r\nВы сделали запрос на получение забытого пароля на сайте http://wikipet.by/ Однако в целях безопасности все пароли хранятся в зашифрованном виде, поэтому мы не можем сообщить вам ваш старый пароль, поэтому если вы хотите сгенерировать новый пароль, зайдите по следующей ссылке: \r\n\r\n{%lostlink%}\r\n\r\nЕсли вы не делали запроса для получения пароля, то просто удалите данное письмо, ваш пароль храниться в надежном месте, и недоступен посторонним лицам.\r\n\r\nIP адрес отправителя: {%ip%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://wikipet.by/',0),(4,'new_news','Уважаемый администратор,\r\n\r\nуведомляем вас о том, что на сайт  http://wikipet.by/ была добавлена новость, которая в данный момент ожидает модерации.\r\n\r\n------------------------------------------------\r\nКраткая информация о новости\r\n------------------------------------------------\r\n\r\nАвтор: {%username%}\r\nЗаголовок новости: {%title%}\r\nКатегория: {%category%}\r\nДата добавления: {%date%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://wikipet.by/',0),(5,'comments','Уважаемый {%username_to%},\r\n\r\nуведомляем вас о том, что на сайт  http://wikipet.by/ был добавлен комментарий к новости, на которую вы были подписаны.\r\n\r\n------------------------------------------------\r\nКраткая информация о комментарии\r\n------------------------------------------------\r\n\r\nАвтор: {%username%}\r\nДата добавления: {%date%}\r\nСсылка на новость: {%link%}\r\n\r\n------------------------------------------------\r\nТекст комментария\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\n------------------------------------------------\r\n\r\nЕсли вы не хотите больше получать уведомлений о новых комментариях к данной новости, то проследуйте по данной ссылке: {%unsubscribe%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://wikipet.by/',0),(6,'pm','Уважаемый {%username%},\r\n\r\nуведомляем вас о том, что на сайте  http://wikipet.by/ вам было отправлено персональное сообщение.\r\n\r\n------------------------------------------------\r\nКраткая информация о сообщении\r\n------------------------------------------------\r\n\r\nОтправитель: {%fromusername%}\r\nДата  получения: {%date%}\r\nЗаголовок: {%title%}\r\n\r\n------------------------------------------------\r\nТекст сообщения\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://wikipet.by/',0),(7,'wait_mail','Уважаемый {%username%},\r\n\r\nВы сделали запрос на обьединение  вашего аккаунта на сайте http://wikipet.by/ с аккаунтом в социальной сети {%network%}.  Однако в целях безопасности вам необходимо подтвердить данное действие по следующей ссылке: \r\n\r\n------------------------------------------------\r\n{%link%}\r\n------------------------------------------------\r\n\r\nВнимание, в случае объединения аккаунтов, ваш основной пароль на сайте будет сброшен, и если вы входили на сайт используя ваш логин и пароль, то ваш пароль будет больше не действителен.\r\n\r\nЕсли вы не делали данного запроса, то просто удалите это письмо, данные вашего аккаунта хранятся в надежном месте, и недоступны посторонним лицам.\r\n\r\nIP адрес отправителя: {%ip%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://wikipet.by/',0),(8,'newsletter','<html>\r\n<head>\r\n<title>{%title%}</title>\r\n<meta content=\"text/html; charset={%charset%}\" http-equiv=Content-Type>\r\n<style type=\"text/css\">\r\nhtml,body{\r\n    font-family: Verdana;\r\n    word-spacing: 0.1em;\r\n    letter-spacing: 0;\r\n    line-height: 1.5em;\r\n    font-size: 11px;\r\n}\r\n\r\np {\r\n	margin:0px;\r\n	padding: 0px;\r\n}\r\n\r\na:active,\r\na:visited,\r\na:link {\r\n	color: #4b719e;\r\n	text-decoration:none;\r\n}\r\n\r\na:hover {\r\n	color: #4b719e;\r\n	text-decoration: underline;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n{%content%}\r\n</body>\r\n</html>',0),(9,'twofactor','{%username%},\r\n\r\nЭто письмо отправлено с сайта http://wikipet.by/\r\n\r\nВы получили это письмо, так как для вашего аккаунта включена двухфакторная авторизация. Для авторизации на сайте вам необходимо ввести полученный вами пин-код.\r\n\r\n------------------------------------------------\r\nПин-код:\r\n------------------------------------------------\r\n\r\n{%pin%}\r\n\r\n------------------------------------------------\r\nЕсли Вы не авторизовывались на нашем сайте, то ваш пароль известен посторонним лицам. Вам нужно незамедлительно зайти на сайт под своим логином и паролем, и в своем профиле изменить свой пароль.\r\n\r\nIP пользователя который ввел пароль: {%ip%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://wikipet.by/',0);
/*!40000 ALTER TABLE `dle_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_files`
--

DROP TABLE IF EXISTS `dle_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(250) NOT NULL DEFAULT '',
  `onserver` varchar(250) NOT NULL DEFAULT '',
  `author` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(15) NOT NULL DEFAULT '',
  `dcount` int(11) NOT NULL DEFAULT '0',
  `size` bigint(20) NOT NULL DEFAULT '0',
  `checksum` char(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_files`
--

LOCK TABLES `dle_files` WRITE;
/*!40000 ALTER TABLE `dle_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_flood`
--

DROP TABLE IF EXISTS `dle_flood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_flood` (
  `f_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `id` varchar(20) NOT NULL DEFAULT '',
  `flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`f_id`),
  KEY `ip` (`ip`),
  KEY `id` (`id`),
  KEY `flag` (`flag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_flood`
--

LOCK TABLES `dle_flood` WRITE;
/*!40000 ALTER TABLE `dle_flood` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_flood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_ignore_list`
--

DROP TABLE IF EXISTS `dle_ignore_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_ignore_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL DEFAULT '0',
  `user_from` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `user_from` (`user_from`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_ignore_list`
--

LOCK TABLES `dle_ignore_list` WRITE;
/*!40000 ALTER TABLE `dle_ignore_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_ignore_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_images`
--

DROP TABLE IF EXISTS `dle_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `images` text NOT NULL,
  `news_id` int(10) NOT NULL DEFAULT '0',
  `author` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `author` (`author`),
  KEY `news_id` (`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_images`
--

LOCK TABLES `dle_images` WRITE;
/*!40000 ALTER TABLE `dle_images` DISABLE KEYS */;
INSERT INTO `dle_images` (`id`, `images`, `news_id`, `author`, `date`) VALUES (1,'2017-01/1485099972_lion.jpg|||2017-01/1485100221_lion.jpg|||2017-01/1485365579_1485100221_lion.jpg|||2017-01/1485365608_1485100221_lion-1.jpg|||2017-01/1485365882_1485100221_lion-2.jpg|||2017-01/1485369146_1485100221_lion-2.jpg',7,'admin','1485099971'),(2,'2017-01/1485362802_232.jpg|||2017-01/1485364921_232.jpg|||2017-01/1485365277_232.jpg|||2017-01/1485365312_232.jpg|||2017-01/1485369236_232.jpg|||2017-01/1485371075_232.jpg',13,'admin','1485362749'),(3,'2017-01/1485439095_blok1img.jpg',14,'admin','1485439041'),(4,'2017-01/1485439178_blok2img.jpg',15,'admin','1485439101'),(5,'2017-01/1485439493_blok3img.jpg',16,'admin','1485439450'),(6,'2017-01/1485510453_blok1img.jpg',17,'admin','1485439781'),(7,'2017-01/1485440054_blok1img.jpg',18,'admin','1485440051'),(8,'2017-01/1485508680_blok1img.jpg',19,'admin','1485440092');
/*!40000 ALTER TABLE `dle_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_links`
--

DROP TABLE IF EXISTS `dle_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_links` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `only_one` tinyint(1) NOT NULL DEFAULT '0',
  `replacearea` tinyint(1) NOT NULL DEFAULT '1',
  `rcount` tinyint(3) NOT NULL DEFAULT '0',
  `targetblank` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_links`
--

LOCK TABLES `dle_links` WRITE;
/*!40000 ALTER TABLE `dle_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_login_log`
--

DROP TABLE IF EXISTS `dle_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_login_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `count` smallint(6) NOT NULL DEFAULT '0',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip` (`ip`),
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_login_log`
--

LOCK TABLES `dle_login_log` WRITE;
/*!40000 ALTER TABLE `dle_login_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_logs`
--

DROP TABLE IF EXISTS `dle_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(10) NOT NULL DEFAULT '0',
  `member` varchar(40) NOT NULL DEFAULT '',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `rating` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`),
  KEY `member` (`member`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_logs`
--

LOCK TABLES `dle_logs` WRITE;
/*!40000 ALTER TABLE `dle_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_lostdb`
--

DROP TABLE IF EXISTS `dle_lostdb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_lostdb` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `lostname` mediumint(8) NOT NULL DEFAULT '0',
  `lostid` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `lostid` (`lostid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_lostdb`
--

LOCK TABLES `dle_lostdb` WRITE;
/*!40000 ALTER TABLE `dle_lostdb` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_lostdb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_mail_log`
--

DROP TABLE IF EXISTS `dle_mail_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_mail_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `mail` varchar(50) NOT NULL DEFAULT '',
  `hash` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_mail_log`
--

LOCK TABLES `dle_mail_log` WRITE;
/*!40000 ALTER TABLE `dle_mail_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_mail_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_notice`
--

DROP TABLE IF EXISTS `dle_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_notice` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `notice` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_notice`
--

LOCK TABLES `dle_notice` WRITE;
/*!40000 ALTER TABLE `dle_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_pm`
--

DROP TABLE IF EXISTS `dle_pm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_pm` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `subj` varchar(255) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `user` mediumint(8) NOT NULL DEFAULT '0',
  `user_from` varchar(40) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  `pm_read` tinyint(1) NOT NULL DEFAULT '0',
  `folder` varchar(10) NOT NULL DEFAULT '',
  `reply` tinyint(1) NOT NULL DEFAULT '0',
  `sendid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `folder` (`folder`),
  KEY `user` (`user`),
  KEY `user_from` (`user_from`),
  KEY `pm_read` (`pm_read`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_pm`
--

LOCK TABLES `dle_pm` WRITE;
/*!40000 ALTER TABLE `dle_pm` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_pm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_poll`
--

DROP TABLE IF EXISTS `dle_poll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_poll` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `frage` varchar(200) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `votes` mediumint(8) NOT NULL DEFAULT '0',
  `multiple` tinyint(1) NOT NULL DEFAULT '0',
  `answer` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_poll`
--

LOCK TABLES `dle_poll` WRITE;
/*!40000 ALTER TABLE `dle_poll` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_poll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_poll_log`
--

DROP TABLE IF EXISTS `dle_poll_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_poll_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(10) unsigned NOT NULL DEFAULT '0',
  `member` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`),
  KEY `member` (`member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_poll_log`
--

LOCK TABLES `dle_poll_log` WRITE;
/*!40000 ALTER TABLE `dle_poll_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_poll_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_post`
--

DROP TABLE IF EXISTS `dle_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `autor` varchar(40) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `short_story` mediumtext NOT NULL,
  `full_story` mediumtext NOT NULL,
  `xfields` mediumtext NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `descr` varchar(200) NOT NULL DEFAULT '',
  `keywords` text NOT NULL,
  `category` varchar(190) NOT NULL DEFAULT '0',
  `alt_name` varchar(190) NOT NULL DEFAULT '',
  `comm_num` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `allow_comm` tinyint(1) NOT NULL DEFAULT '1',
  `allow_main` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `approve` tinyint(1) NOT NULL DEFAULT '0',
  `fixed` tinyint(1) NOT NULL DEFAULT '0',
  `allow_br` tinyint(1) NOT NULL DEFAULT '1',
  `symbol` varchar(3) NOT NULL DEFAULT '',
  `tags` varchar(250) NOT NULL DEFAULT '',
  `metatitle` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `autor` (`autor`),
  KEY `alt_name` (`alt_name`),
  KEY `category` (`category`),
  KEY `approve` (`approve`),
  KEY `allow_main` (`allow_main`),
  KEY `date` (`date`),
  KEY `symbol` (`symbol`),
  KEY `comm_num` (`comm_num`),
  KEY `fixed` (`fixed`),
  FULLTEXT KEY `short_story` (`short_story`,`full_story`,`xfields`,`title`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_post`
--

LOCK TABLES `dle_post` WRITE;
/*!40000 ALTER TABLE `dle_post` DISABLE KEYS */;
INSERT INTO `dle_post` (`id`, `autor`, `date`, `short_story`, `full_story`, `xfields`, `title`, `descr`, `keywords`, `category`, `alt_name`, `comm_num`, `allow_comm`, `allow_main`, `approve`, `fixed`, `allow_br`, `symbol`, `tags`, `metatitle`) VALUES (1,'admin','2017-01-11 15:46:55','<div align=\"center\"><img src=\"http://wikipet.by/uploads/boxsmall.jpg\" alt=\"\" /></div>Добро пожаловать на демонстрационную страницу движка DataLife Engine. DataLife Engine это многопользовательский новостной движок, обладающий большими функциональными возможностями. Движок предназначен в первую очередь для создание новостных блогов и сайтов с большим информационным контекстом. Однако он имеет большое количество настроек, которые позволяют использовать его практически для любых целей. Движок может быть интегрирован практически в любой существующий дизайн, и не имеет никаких ограничений по созданию шаблонов для него. Еще одной ключевой особенностью DataLife Engine является низкая нагрузка на системные ресурсы, Даже при очень большой аудитории сайта нагрузка не сервер будет минимальной, и вы не будете испытывать каких-либо проблем с отображением информации. Движок оптимизирован под поисковые системы. Обо всех функциональных особенностях вы сможете прочитать на <a href=\"http://dle-news.ru/\" target=\"_blank\">нашей странице</a>.<br /><br />Обсуждение скрипта по всем вопросам ведется <a href=\"http://forum.dle-news.ru/index.php\" target=\"_blank\">здесь</a>. Так же там Вы сможете получить оперативную помощь.','','','Добро пожаловать','','','1','post1',0,1,1,1,0,1,'','по, новости',''),(2,'admin','2017-01-11 15:46:35','Уважаемые вебмастера хотим для вас сделать небольшое дополнение. Прежде чем обратиться с каким-либо вопросом в службу поддержки скрипта, убедитесь что вы тщательно прочитали документацию по скрипту и не нашли там для вас необходимого ответа. Мы оставляем за собой право игнорировать вопросы, поступившие к нам от пользователей, использующих некоммерческую версию скрипта или не оплативших лицензию, включающую в себя службу технической поддержки. Вы можете приобрести один из двух типов лицензии на DataLife Engine по вашему желанию:<br><br>- <b>Базовая лицензия.</b> При приобретении данной лицензии вы также получаете возможность получения бесплатно новых версий скрипта в течении <b>одного года</b>.<br><br>- <b>Расширенная лицензия.</b> При приобретении данной лицензии вы получаете все что входит в базовую лицензию, а также дополнительно входит служба технической поддержки скрипта и разрешение на снятие копирайтов на скрипт с пользовательской части (видимой для обычных посетителей сайта).<br><br><b>Срок действия лицензии</b> составляет <span style=\\\"color:#FF0000;\\\">1 год</span>, в течении которого вы бесплатно будете получать все последующие версии скрипта и обновления, а в случае приобретения расширенной лицензии, и тех. поддержку. После окончания срока лицензии вы можете ее продлить, либо использовать пожизненно бесплатно актуальную на тот момент времени версию скрипта.<br><br><b>Как оплатить скрипт вы можете прочитать на</b> <a href=\\\"http://dle-news.ru/price.html\\\" target=\\\"_blank\\\" rel=\\\"external noopener noreferrer\\\">http://dle-news.ru/price.html</a><br><br>Помните что лицензия выдается только на один домен (проект) и не может использоваться на других сайтах, а также запрещена передача вашего файла лицензии третьим лицам.<br><br><b>С уважением,<br><br>SoftNews Media Group</b>','Уважаемые вебмастера хотим для вас сделать небольшое дополнение. Прежде чем обратиться с каким-либо вопросом в службу поддержки скрипта, убедитесь что вы тщательно прочитали документацию по скрипту и не нашли там для вас необходимого ответа. Мы оставляем за собой право игнорировать вопросы, поступившие к нам от пользователей, использующих некоммерческую версию скрипта или не оплативших лицензию, включающую в себя службу технической поддержки. Вы можете приобрести один из двух типов лицензии на DataLife Engine по вашему желанию:<br><br>- <b>Базовая лицензия.</b> При приобретении данной лицензии вы также получаете возможность получения бесплатно новых версий скрипта в течении <b>одного года</b>.<br><br>- <b>Расширенная лицензия.</b> При приобретении данной лицензии вы получаете все что входит в базовую лицензию, а также дополнительно входит служба технической поддержки скрипта и разрешение на снятие копирайтов на скрипт с пользовательской части (видимой для обычных посетителей сайта).<br><br><b>Срок действия лицензии</b> составляет <span style=\\\"color:#FF0000;\\\">1 год</span>, в течении которого вы бесплатно будете получать все последующие версии скрипта и обновления, а в случае приобретения расширенной лицензии, и тех. поддержку. После окончания срока лицензии вы можете ее продлить, либо использовать пожизненно бесплатно актуальную на тот момент времени версию скрипта.<br><br><b>Как оплатить скрипт вы можете прочитать на</b> <a href=\\\"http://dle-news.ru/price.html\\\" target=\\\"_blank\\\" rel=\\\"external noopener noreferrer\\\">http://dle-news.ru/price.html</a><br><br>Помните что лицензия выдается только на один домен (проект) и не может использоваться на других сайтах, а также запрещена передача вашего файла лицензии третьим лицам.<br><br><b>С уважением,<br><br>SoftNews Media Group</b>','','Приобретение и оплата скрипта','Уважаемые вебмастера хотим для вас сделать небольшое дополнение. Прежде чем обратиться с каким-либо вопросом в службу поддержки скрипта, убедитесь что вы тщательно прочитали документацию по скрипту и','лицензии, скрипта, также, поддержки, бесплатно, можете, лицензия, технической, данной, входит, скрипт, течении, получаете, версию, приобретении, лицензию, службу, обновления, лицам, версии','3','post2',0,1,1,1,0,0,'','по, новости',''),(3,'admin','2017-01-11 15:46:05','<b>Техническая поддержка скрипта</b> осуществляется силами <a href=\"http://forum.dle-news.ru/index.php\" target=\"_blank\">форума поддержки</a>, а также по E-Mail. По мере поступления возникших у вас вопросов мы стараемся ответить на все ваши вопросы, но в связи с большим количеством посетителей, это не всегда является возможным. Поэтому гарантированная техническая поддержка предоставляется, только пользователям, которые прибрели расширенную лицензию на скрипт.<br /><br /><b>Услуги по технической поддержке скрипта включают в себя:</b><br /><br />1. Приоритетное получение ответа на вопросы, которые задают пользователи впервые столкнувшиеся со скриптом и естественно не знающие всех нюансов работы скрипта. В компетенции службы поддержки находится только помощь только по непосредственным сбоям самого скрипта, в случае если причиной некорректной работы скрипта явился ваш шаблон, не соответствующий требованиям скрипта, то в поддержке вам может быть отказано.<br /><br />2. Также вы получаете возможность одноразовой установки скрипта вам на сервер, включая настройку его до полной работоспособности с учетом текущих настроек сервера (иногда нужно верно отключить поддержку ЧПУ, включение специальных директив для Русского Апача, для верной загрузки картинок и прочее...).<br /><br />3. Вы получаете консультационную поддержку по работе со структурой скрипта, например у вас есть желание добавить небольшие изменения в скрипт для более удобной работы для вас, вы сможете сэкономить время на поиске нужного куска кода просто спросив у нас. Вам будет предоставлена консультация где это копать и как вообще лучше реализовать поставленную задачу. (Внимание мы не пишем за вас дополнительные модули, а только помогаем вам лучше разобраться со структурой скрипта, поэтому всегда задавайте вопросы по существу, вопросы типа: \"как мне сделать такую фишку\" могут быть проигнорированы службой поддержки).<br /><br />4. Еще одна из часто возникающих проблем это некорректное обновление скрипта, например во время обновления произошел сбой сервера, часть новых данных была внесена в базу и настройки, часть нет, в итоге вы получаете нерабочий скрипт, со всеми вытекающими последствиями. В данном случае для вас будет проведена ручная коррекция поврежденной структуры базы данных.<br /><br />В случае если вы не являетесь подписчиком дополнительной службы поддержки, ваши вопросы могут быть проигнорированы и оставлены без ответа.<br /><br /><b>С уважением,<br /><br />SoftNews Media Group</b>','','','Осуществление технической поддержки скрипта','','','1','post4',0,1,1,1,0,1,'','',''),(4,'admin','2017-01-14 19:17:11','<div class=\\\"top_slider\\\"><div id=\\\"slider-wrap\\\"><div id=\\\"slider\\\"><div class=\\\"slide\\\"><img src=\\\"http://wikipet.by/templates/pet/img/dog.jpg\\\" alt=\\\"\\\" height=\\\"260\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width:629px;\\\"></div><div class=\\\"slide\\\"><img src=\\\"http://wikipet.by/templates/pet/img/dog2.jpg\\\" alt=\\\"\\\" height=\\\"260\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width:629px;\\\"></div><div class=\\\"slide\\\"><img src=\\\"http://wikipet.by/templates/pet/img/dog3.jpg\\\" alt=\\\"\\\" height=\\\"260\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width:629px;\\\"></div><div class=\\\"slide\\\"><img src=\\\"http://wikipet.by/templates/pet/img/dog4.jpg\\\" alt=\\\"\\\" height=\\\"260\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width:629px;\\\"></div></div></div></div>','','','Слайдер Собака 1','custom id=4 category=9','category, custom','9','sobaka-1',0,0,1,1,0,0,'','',''),(5,'admin','2017-01-14 21:54:05','<div id=\\\"slider-wrap2\\\"><div id=\\\"slider2\\\"><div class=\\\"slide2\\\"><div class=\\\"img\\\"><img src=\\\"http://wikipet.by/templates/pet/img/dog-uz.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width:238px;\\\"><p class=\\\"name-animal1\\\">Собаки</p><br><p class=\\\"count1\\\">12 видов</p></div><div class=\\\"img\\\"><img src=\\\"http://wikipet.by/templates/pet/img/cat.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width:238px;\\\"><p class=\\\"name-animal1\\\">Коты</p><br><p class=\\\"count1\\\">12 видов</p></div><div class=\\\"img\\\"><img src=\\\"http://wikipet.by/templates/pet/img/fish.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width:238px;\\\"><p class=\\\"name-animal1\\\">Рыбы</p><br><p class=\\\"count1\\\">12 видов</p></div><div class=\\\"img\\\"><img src=\\\"http://wikipet.by/templates/pet/img/popug.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width:238px;\\\"><p class=\\\"name-animal1\\\">Птицы</p><br><p class=\\\"count1\\\">12 видов</p></div></div><div class=\\\"slide2\\\"><div class=\\\"img\\\"><img src=\\\"http://wikipet.by/templates/pet/img/popug.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width:238px;\\\"><p class=\\\"name-animal1\\\">Птицы</p><br><p class=\\\"count1\\\">12 видов</p></div><div class=\\\"img\\\"><img src=\\\"http://wikipet.by/templates/pet/img/dog-uz.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width:238px;\\\"><p class=\\\"name-animal1\\\">Собаки</p><br><p class=\\\"count1\\\">12 видов</p></div><div class=\\\"img\\\"><img src=\\\"http://wikipet.by/templates/pet/img/cat.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width:238px;\\\"><p class=\\\"name-animal1\\\">Коты</p><br><p class=\\\"count1\\\">12 видов</p></div><div class=\\\"img\\\"><img src=\\\"http://wikipet.by/templates/pet/img/fish.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width:238px;\\\"><p class=\\\"name-animal1\\\">Рыбы</p><br><p class=\\\"count1\\\">12 видов</p></div></div><div class=\\\"slide2\\\"><div class=\\\"img\\\"><img src=\\\"http://wikipet.by/templates/pet/img/fish.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width:238px;\\\"><p class=\\\"name-animal1\\\">Рыбы</p><br><p class=\\\"count1\\\">12 видов</p></div><div class=\\\"img\\\"><img src=\\\"http://wikipet.by/templates/pet/img/popug.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width:238px;\\\"><p class=\\\"name-animal1\\\">Птицы</p><br><p class=\\\"count1\\\">12 видов</p></div><div class=\\\"img\\\"><img src=\\\"http://wikipet.by/templates/pet/img/dog-uz.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width:238px;\\\"><p class=\\\"name-animal1\\\">Собаки</p><br><p class=\\\"count1\\\">12 видов</p></div><div class=\\\"img\\\"><img src=\\\"http://wikipet.by/templates/pet/img/cat.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width:238px;\\\"><p class=\\\"name-animal1\\\">Коты</p><br><p class=\\\"count1\\\">12 видов</p></div></div><div class=\\\"slide2\\\"><div class=\\\"img\\\"><img src=\\\"http://wikipet.by/templates/pet/img/cat.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width:238px;\\\"><p class=\\\"name-animal1\\\">Коты</p><br><p class=\\\"count1\\\">12 видов</p></div><div class=\\\"img\\\"><img src=\\\"http://wikipet.by/templates/pet/img/fish.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width:238px;\\\"><p class=\\\"name-animal1\\\">Рыбы</p><br><p class=\\\"count1\\\">12 видов</p></div><div class=\\\"img\\\"><img src=\\\"http://wikipet.by/templates/pet/img/popug.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width:238px;\\\"><p class=\\\"name-animal1\\\">Птицы</p><br><p class=\\\"count1\\\">12 видов</p></div><div class=\\\"img\\\"><img src=\\\"http://wikipet.by/templates/pet/img/dog-uz.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width:238px;\\\"><p class=\\\"name-animal1\\\">Собаки</p><br><p class=\\\"count1\\\">12 видов</p></div></div></div></div>','','','Слайдер на главной 2 внизу','Собаки 12 видовКоты 12 видовРыбы 12 видовПтицы 12 видовПтицы 12 видовСобаки 12 видовКоты 12 видовРыбы 12 видовРыбы 12 видовПтицы 12 видовСобаки 12 видовКоты 12 видовКоты 12 видовРыбы 12 видовПтицы 12','видовПтицы, видовРыбы, видовКоты, видовСобаки, видов, Собаки','9','slayder-na-glavnoy-2-vnizu',0,1,1,1,0,0,'','',''),(6,'admin','2017-01-19 18:28:10','Этих потомков тибетских собак выводили для охраны стад и отар в Средней Азии,<br>         также собаки помогали в охоте на кабана и барса. Благодаря этому среднеазиатские овчарки отлично<br>         переносят суровые климатические условия, нехватку воды и не нуждаются в нехватку вод нехватку вод комфорте.<br>         Выводилась порода спонтанно: люди просто отбирали особей с необходимыми им качествами. Важно','Этих потомков тибетских собак выводили для охраны стад и отар в Средней Азии,<br>         также собаки помогали в охоте на кабана и барса. Благодаря этому среднеазиатские овчарки отлично<br>         переносят суровые климатические условия, нехватку воды и не нуждаются в нехватку вод нехватку вод комфорте.<br>         Выводилась порода спонтанно: люди просто отбирали особей с необходимыми им качествами. Важно<br>Этих потомков тибетских собак выводили для охраны стад и отар в Средней Азии,<br>         также собаки помогали в охоте на кабана и барса. Благодаря этому среднеазиатские овчарки отлично<br>         переносят суровые климатические условия, нехватку воды и не нуждаются в нехватку вод нехватку вод комфорте.<br>         Выводилась порода спонтанно: люди просто отбирали особей с необходимыми им качествами. Важно<br><br>Этих потомков тибетских собак выводили для охраны стад и отар в Средней Азии,<br>         также собаки помогали в охоте на кабана и барса. Благодаря этому среднеазиатские овчарки отлично<br>         переносят суровые климатические условия, нехватку воды и не нуждаются в нехватку вод нехватку вод комфорте.<br>         Выводилась порода спонтанно: люди просто отбирали особей с необходимыми им качествами. Важно<br><br>','','test10','Этих потомков тибетских собак выводили для охраны стад и отар в Средней Азии,          также собаки помогали в охоте на кабана и барса. Благодаря этому среднеазиатские овчарки отлично        ','нехватку, нуждаются,  Выводилась, комфорте, условия, суровые, климатические, порода, спонтанно, качествами, Важно, необходимыми, особей, просто, отбирали,  переносят, отлично, Средней,  также, собаки','0','test10',0,1,1,1,0,0,'','',''),(7,'admin','2017-01-22 13:16:16','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure</p><br>','<p><i>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure</i></p><br><a class=\\\"highslide\\\" href=\\\"http://wikipet.by/uploads/posts/2017-01/1485100221_lion.jpg\\\"><img class=\\\"fr-dib fr-draggable\\\" src=\\\"http://wikipet.by/uploads/posts/2017-01/medium/1485100221_lion.jpg\\\" style=\\\"width:991px;height:619px;\\\" alt=\\\"\\\"></a><h3><br></h3><h3>Подзаголовок</h3><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque</p><ul><li>Список 1</li><li>Список 2</li><li>Список 3</li><li>Список 4</li></ul><h3>Подзаголовок</h3><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque</p><br><span class=\\\"fr-video fr-dvi fr-draggable\\\"><iframe src=\\\"https://www.youtube.com/embed/PvLQPG9NMBA\\\" allowfullscreen height=\\\"536\\\" frameborder=\\\"0\\\" width=\\\"954\\\"></iframe></span>','podzagolovok|ПОДЗАГОЛОВОК||img-korotkie-novosti|2017-01/1485369146_1485100221_lion-2.jpg','Самые известные животные в соцсетях','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation','dolor, voluptatem, dolore, exercitation, veniam, laboris, nostrud, commodo, irure, consequat, minim, aliquip, ullamco, adipisicing, consectetur, aliqua, ipsum, tempor, eiusmod, magna','11,12','post10',4,1,1,1,0,0,'','',''),(8,'admin','2017-01-25 15:15:26','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id elit eu arcu sollicitudin gravida sed ac est. Donec elementum pulvinar elit, at convallis nisl feugiat ut. Donec at risus erat. Integer dui libero, accumsan ac orci eu, pharetra varius nulla. Duis diam magna, bibendum a rutrum eu, congue in neque. In vestibulum ornare risus, a consectetur turpis dictum vel. Nullam hendrerit sagittis lectus, mattis feugiat sapien lobortis tempor. Pellentesque non neque a nisl aliquam sagittis et in turpis. Nulla finibus, lorem at sodales suscipit, metus diam gravida leo, et congue nisl magna non lectus. Suspendisse faucibus, erat ut vehicula placerat, magna sapien eleifend risus, pellentesque faucibus est ex vel nulla.</p><p>Sed ut neque posuere nunc feugiat rhoncus a et diam. Aliquam mattis laoreet accumsan. Nam molestie maximus nulla vel ornare. Nulla dapibus fringilla pulvinar. Phasellus at tellus tempus, commodo ligula eget, laoreet massa. Maecenas eleifend justo a lectus porta, et commodo mi rutrum. Nullam euismod, est in malesuada sollicitudin, erat felis lacinia nisi, eget faucibus tellus dolor imperdiet felis. Vivamus sit amet volutpat dolor. Sed feugiat velit vel lorem consectetur feugiat. Suspendisse quis mi lectus. Curabitur id ultrices lectus. Curabitur vehicula nec lectus id vehicula. Nullam ac lectus vel nisi commodo malesuada et id nisl.</p><p>Cras pulvinar pharetra dui ac aliquam. Suspendisse a massa lacinia, pulvinar massa vel, ullamcorper leo. Mauris vestibulum, eros in pharetra placerat, odio felis sollicitudin erat, vel iaculis risus odio vitae enim. Duis rutrum cursus est quis tincidunt. Quisque finibus elit sed sem semper, sed facilisis dolor molestie. Donec ultricies quis dui vitae finibus. Proin dolor lorem, tincidunt eu laoreet sed, porta in dolor. Aliquam eu quam sed metus consequat tempor. Aliquam libero neque, vestibulum sed neque sed, aliquam blandit ligula. Duis lacinia non risus non ullamcorper. Curabitur eu pulvinar ipsum. Nulla aliquam porta velit non sodales. Integer euismod tortor a leo fringilla tristique. Nullam faucibus lectus ligula, sit amet ultricies dui dictum sed. Mauris et tristique nisi.</p><p>Curabitur libero arcu, convallis ac dignissim eget, blandit nec leo. Aenean ut enim porttitor, mattis tortor vitae, auctor risus. Quisque ut urna tincidunt nibh gravida molestie. Duis vitae felis vitae elit hendrerit malesuada. Cras a est mattis sem volutpat laoreet. Donec eget urna dictum, consectetur odio ut, rhoncus sem. Nulla eu venenatis nibh, eget faucibus tortor. Nulla facilisi. Donec volutpat lacus eu nulla tristique, at sodales justo fringilla. Proin blandit ultricies diam, quis placerat nisl pharetra ut. Cras lectus libero, faucibus at tincidunt vel, dignissim a ligula.</p><p>Donec tristique tellus in sem interdum, et pulvinar purus ornare. Mauris id mi eu nulla ornare mollis vitae et lacus. Proin accumsan lacinia dolor, sit amet pulvinar tortor porta eu. Morbi id justo eget lorem facilisis maximus in ut mauris. Curabitur quis ante vel risus convallis facilisis. Aliquam fringilla massa non arcu efficitur tincidunt. In mollis turpis vel lorem eleifend ultrices. Suspendisse ipsum elit, tincidunt sed metus quis, finibus pharetra orci. Sed semper velit semper, aliquam mauris at, hendrerit diam. Mauris sit amet urna varius, luctus leo nec, scelerisque elit. Quisque gravida condimentum neque quis auctor. Mauris odio massa, rutrum a dictum nec, aliquam vitae velit.</p>','','Собаки-поводыри - какие породы, как дрессируют, где можно купить, сколько стоит. Часть 1','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id elit eu arcu sollicitudin gravida sed ac est. Donec elementum pulvinar elit, at convallis nisl feugiat ut. Donec at risus erat.','lectus, risus, vitae, pulvinar, dolor, tincidunt, faucibus, Donec, aliquam, neque, pharetra, nulla, massa, lorem, feugiat, Mauris, Curabitur, Nulla, Suspendisse, finibus','12','post-1',0,1,1,1,0,0,'','',''),(9,'admin','2017-01-25 15:16:21','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id elit eu arcu sollicitudin gravida sed ac est. Donec elementum pulvinar elit, at convallis nisl feugiat ut. Donec at risus erat. Integer dui libero, accumsan ac orci eu, pharetra varius nulla. Duis diam magna, bibendum a rutrum eu, congue in neque. In vestibulum ornare risus, a consectetur turpis dictum vel. Nullam hendrerit sagittis lectus, mattis feugiat sapien lobortis tempor. Pellentesque non neque a nisl aliquam sagittis et in turpis. Nulla finibus, lorem at sodales suscipit, metus diam gravida leo, et congue nisl magna non lectus. Suspendisse faucibus, erat ut vehicula placerat, magna sapien eleifend risus, pellentesque faucibus est ex vel nulla.</p><p>Sed ut neque posuere nunc feugiat rhoncus a et diam. Aliquam mattis laoreet accumsan. Nam molestie maximus nulla vel ornare. Nulla dapibus fringilla pulvinar. Phasellus at tellus tempus, commodo ligula eget, laoreet massa. Maecenas eleifend justo a lectus porta, et commodo mi rutrum. Nullam euismod, est in malesuada sollicitudin, erat felis lacinia nisi, eget faucibus tellus dolor imperdiet felis. Vivamus sit amet volutpat dolor. Sed feugiat velit vel lorem consectetur feugiat. Suspendisse quis mi lectus. Curabitur id ultrices lectus. Curabitur vehicula nec lectus id vehicula. Nullam ac lectus vel nisi commodo malesuada et id nisl.</p><p>Cras pulvinar pharetra dui ac aliquam. Suspendisse a massa lacinia, pulvinar massa vel, ullamcorper leo. Mauris vestibulum, eros in pharetra placerat, odio felis sollicitudin erat, vel iaculis risus odio vitae enim. Duis rutrum cursus est quis tincidunt. Quisque finibus elit sed sem semper, sed facilisis dolor molestie. Donec ultricies quis dui vitae finibus. Proin dolor lorem, tincidunt eu laoreet sed, porta in dolor. Aliquam eu quam sed metus consequat tempor. Aliquam libero neque, vestibulum sed neque sed, aliquam blandit ligula. Duis lacinia non risus non ullamcorper. Curabitur eu pulvinar ipsum. Nulla aliquam porta velit non sodales. Integer euismod tortor a leo fringilla tristique. Nullam faucibus lectus ligula, sit amet ultricies dui dictum sed. Mauris et tristique nisi.</p><p>Curabitur libero arcu, convallis ac dignissim eget, blandit nec leo. Aenean ut enim porttitor, mattis tortor vitae, auctor risus. Quisque ut urna tincidunt nibh gravida molestie. Duis vitae felis vitae elit hendrerit malesuada. Cras a est mattis sem volutpat laoreet. Donec eget urna dictum, consectetur odio ut, rhoncus sem. Nulla eu venenatis nibh, eget faucibus tortor. Nulla facilisi. Donec volutpat lacus eu nulla tristique, at sodales justo fringilla. Proin blandit ultricies diam, quis placerat nisl pharetra ut. Cras lectus libero, faucibus at tincidunt vel, dignissim a ligula.</p><p>Donec tristique tellus in sem interdum, et pulvinar purus ornare. Mauris id mi eu nulla ornare mollis vitae et lacus. Proin accumsan lacinia dolor, sit amet pulvinar tortor porta eu. Morbi id justo eget lorem facilisis maximus in ut mauris. Curabitur quis ante vel risus convallis facilisis. Aliquam fringilla massa non arcu efficitur tincidunt. In mollis turpis vel lorem eleifend ultrices. Suspendisse ipsum elit, tincidunt sed metus quis, finibus pharetra orci. Sed semper velit semper, aliquam mauris at, hendrerit diam. Mauris sit amet urna varius, luctus leo nec, scelerisque elit. Quisque gravida condimentum neque quis auctor. Mauris odio massa, rutrum a dictum nec, aliquam vitae velit.</p>','','Собаки-поводыри - какие породы, как дрессируют, где можно купить, сколько стоит. Часть 2','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id elit eu arcu sollicitudin gravida sed ac est. Donec elementum pulvinar elit, at convallis nisl feugiat ut. Donec at risus erat.','lectus, risus, vitae, pulvinar, dolor, tincidunt, faucibus, Donec, aliquam, neque, pharetra, nulla, massa, lorem, feugiat, Mauris, Curabitur, Nulla, Suspendisse, finibus','12','post-2',0,1,1,1,0,0,'','',''),(10,'admin','2017-01-25 15:16:45','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id elit eu arcu sollicitudin gravida sed ac est. Donec elementum pulvinar elit, at convallis nisl feugiat ut. Donec at risus erat. Integer dui libero, accumsan ac orci eu, pharetra varius nulla. Duis diam magna, bibendum a rutrum eu, congue in neque. In vestibulum ornare risus, a consectetur turpis dictum vel. Nullam hendrerit sagittis lectus, mattis feugiat sapien lobortis tempor. Pellentesque non neque a nisl aliquam sagittis et in turpis. Nulla finibus, lorem at sodales suscipit, metus diam gravida leo, et congue nisl magna non lectus. Suspendisse faucibus, erat ut vehicula placerat, magna sapien eleifend risus, pellentesque faucibus est ex vel nulla.</p><p>Sed ut neque posuere nunc feugiat rhoncus a et diam. Aliquam mattis laoreet accumsan. Nam molestie maximus nulla vel ornare. Nulla dapibus fringilla pulvinar. Phasellus at tellus tempus, commodo ligula eget, laoreet massa. Maecenas eleifend justo a lectus porta, et commodo mi rutrum. Nullam euismod, est in malesuada sollicitudin, erat felis lacinia nisi, eget faucibus tellus dolor imperdiet felis. Vivamus sit amet volutpat dolor. Sed feugiat velit vel lorem consectetur feugiat. Suspendisse quis mi lectus. Curabitur id ultrices lectus. Curabitur vehicula nec lectus id vehicula. Nullam ac lectus vel nisi commodo malesuada et id nisl.</p><p>Cras pulvinar pharetra dui ac aliquam. Suspendisse a massa lacinia, pulvinar massa vel, ullamcorper leo. Mauris vestibulum, eros in pharetra placerat, odio felis sollicitudin erat, vel iaculis risus odio vitae enim. Duis rutrum cursus est quis tincidunt. Quisque finibus elit sed sem semper, sed facilisis dolor molestie. Donec ultricies quis dui vitae finibus. Proin dolor lorem, tincidunt eu laoreet sed, porta in dolor. Aliquam eu quam sed metus consequat tempor. Aliquam libero neque, vestibulum sed neque sed, aliquam blandit ligula. Duis lacinia non risus non ullamcorper. Curabitur eu pulvinar ipsum. Nulla aliquam porta velit non sodales. Integer euismod tortor a leo fringilla tristique. Nullam faucibus lectus ligula, sit amet ultricies dui dictum sed. Mauris et tristique nisi.</p><p>Curabitur libero arcu, convallis ac dignissim eget, blandit nec leo. Aenean ut enim porttitor, mattis tortor vitae, auctor risus. Quisque ut urna tincidunt nibh gravida molestie. Duis vitae felis vitae elit hendrerit malesuada. Cras a est mattis sem volutpat laoreet. Donec eget urna dictum, consectetur odio ut, rhoncus sem. Nulla eu venenatis nibh, eget faucibus tortor. Nulla facilisi. Donec volutpat lacus eu nulla tristique, at sodales justo fringilla. Proin blandit ultricies diam, quis placerat nisl pharetra ut. Cras lectus libero, faucibus at tincidunt vel, dignissim a ligula.</p><p>Donec tristique tellus in sem interdum, et pulvinar purus ornare. Mauris id mi eu nulla ornare mollis vitae et lacus. Proin accumsan lacinia dolor, sit amet pulvinar tortor porta eu. Morbi id justo eget lorem facilisis maximus in ut mauris. Curabitur quis ante vel risus convallis facilisis. Aliquam fringilla massa non arcu efficitur tincidunt. In mollis turpis vel lorem eleifend ultrices. Suspendisse ipsum elit, tincidunt sed metus quis, finibus pharetra orci. Sed semper velit semper, aliquam mauris at, hendrerit diam. Mauris sit amet urna varius, luctus leo nec, scelerisque elit. Quisque gravida condimentum neque quis auctor. Mauris odio massa, rutrum a dictum nec, aliquam vitae velit.</p>','','Собаки-поводыри - какие породы, как дрессируют, где можно купить, сколько стоит. Часть 3','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id elit eu arcu sollicitudin gravida sed ac est. Donec elementum pulvinar elit, at convallis nisl feugiat ut. Donec at risus erat.','lectus, risus, vitae, pulvinar, dolor, tincidunt, faucibus, Donec, aliquam, neque, pharetra, nulla, massa, lorem, feugiat, Mauris, Curabitur, Nulla, Suspendisse, finibus','12','post-3',0,1,1,1,0,0,'','',''),(11,'admin','2017-01-25 15:17:41','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id elit eu arcu sollicitudin gravida sed ac est. Donec elementum pulvinar elit, at convallis nisl feugiat ut. Donec at risus erat. Integer dui libero, accumsan ac orci eu, pharetra varius nulla. Duis diam magna, bibendum a rutrum eu, congue in neque. In vestibulum ornare risus, a consectetur turpis dictum vel. Nullam hendrerit sagittis lectus, mattis feugiat sapien lobortis tempor. Pellentesque non neque a nisl aliquam sagittis et in turpis. Nulla finibus, lorem at sodales suscipit, metus diam gravida leo, et congue nisl magna non lectus. Suspendisse faucibus, erat ut vehicula placerat, magna sapien eleifend risus, pellentesque faucibus est ex vel nulla.</p><p>Sed ut neque posuere nunc feugiat rhoncus a et diam. Aliquam mattis laoreet accumsan. Nam molestie maximus nulla vel ornare. Nulla dapibus fringilla pulvinar. Phasellus at tellus tempus, commodo ligula eget, laoreet massa. Maecenas eleifend justo a lectus porta, et commodo mi rutrum. Nullam euismod, est in malesuada sollicitudin, erat felis lacinia nisi, eget faucibus tellus dolor imperdiet felis. Vivamus sit amet volutpat dolor. Sed feugiat velit vel lorem consectetur feugiat. Suspendisse quis mi lectus. Curabitur id ultrices lectus. Curabitur vehicula nec lectus id vehicula. Nullam ac lectus vel nisi commodo malesuada et id nisl.</p><p>Cras pulvinar pharetra dui ac aliquam. Suspendisse a massa lacinia, pulvinar massa vel, ullamcorper leo. Mauris vestibulum, eros in pharetra placerat, odio felis sollicitudin erat, vel iaculis risus odio vitae enim. Duis rutrum cursus est quis tincidunt. Quisque finibus elit sed sem semper, sed facilisis dolor molestie. Donec ultricies quis dui vitae finibus. Proin dolor lorem, tincidunt eu laoreet sed, porta in dolor. Aliquam eu quam sed metus consequat tempor. Aliquam libero neque, vestibulum sed neque sed, aliquam blandit ligula. Duis lacinia non risus non ullamcorper. Curabitur eu pulvinar ipsum. Nulla aliquam porta velit non sodales. Integer euismod tortor a leo fringilla tristique. Nullam faucibus lectus ligula, sit amet ultricies dui dictum sed. Mauris et tristique nisi.</p><p>Curabitur libero arcu, convallis ac dignissim eget, blandit nec leo. Aenean ut enim porttitor, mattis tortor vitae, auctor risus. Quisque ut urna tincidunt nibh gravida molestie. Duis vitae felis vitae elit hendrerit malesuada. Cras a est mattis sem volutpat laoreet. Donec eget urna dictum, consectetur odio ut, rhoncus sem. Nulla eu venenatis nibh, eget faucibus tortor. Nulla facilisi. Donec volutpat lacus eu nulla tristique, at sodales justo fringilla. Proin blandit ultricies diam, quis placerat nisl pharetra ut. Cras lectus libero, faucibus at tincidunt vel, dignissim a ligula.</p><p>Donec tristique tellus in sem interdum, et pulvinar purus ornare. Mauris id mi eu nulla ornare mollis vitae et lacus. Proin accumsan lacinia dolor, sit amet pulvinar tortor porta eu. Morbi id justo eget lorem facilisis maximus in ut mauris. Curabitur quis ante vel risus convallis facilisis. Aliquam fringilla massa non arcu efficitur tincidunt. In mollis turpis vel lorem eleifend ultrices. Suspendisse ipsum elit, tincidunt sed metus quis, finibus pharetra orci. Sed semper velit semper, aliquam mauris at, hendrerit diam. Mauris sit amet urna varius, luctus leo nec, scelerisque elit. Quisque gravida condimentum neque quis auctor. Mauris odio massa, rutrum a dictum nec, aliquam vitae velit.</p>','','Собаки-поводыри - какие породы, как дрессируют, где можно купить, сколько стоит. Часть 4','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id elit eu arcu sollicitudin gravida sed ac est. Donec elementum pulvinar elit, at convallis nisl feugiat ut. Donec at risus erat.','lectus, risus, vitae, pulvinar, dolor, tincidunt, faucibus, Donec, aliquam, neque, pharetra, nulla, massa, lorem, feugiat, Mauris, Curabitur, Nulla, Suspendisse, finibus','12','post-4',0,1,1,1,0,0,'','',''),(12,'admin','2017-01-25 15:18:43','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id elit eu arcu sollicitudin gravida sed ac est. Donec elementum pulvinar elit, at convallis nisl feugiat ut. Donec at risus erat. Integer dui libero, accumsan ac orci eu, pharetra varius nulla. Duis diam magna, bibendum a rutrum eu, congue in neque. In vestibulum ornare risus, a consectetur turpis dictum vel. Nullam hendrerit sagittis lectus, mattis feugiat sapien lobortis tempor. Pellentesque non neque a nisl aliquam sagittis et in turpis. Nulla finibus, lorem at sodales suscipit, metus diam gravida leo, et congue nisl magna non lectus. Suspendisse faucibus, erat ut vehicula placerat, magna sapien eleifend risus, pellentesque faucibus est ex vel nulla.</p><p>Sed ut neque posuere nunc feugiat rhoncus a et diam. Aliquam mattis laoreet accumsan. Nam molestie maximus nulla vel ornare. Nulla dapibus fringilla pulvinar. Phasellus at tellus tempus, commodo ligula eget, laoreet massa. Maecenas eleifend justo a lectus porta, et commodo mi rutrum. Nullam euismod, est in malesuada sollicitudin, erat felis lacinia nisi, eget faucibus tellus dolor imperdiet felis. Vivamus sit amet volutpat dolor. Sed feugiat velit vel lorem consectetur feugiat. Suspendisse quis mi lectus. Curabitur id ultrices lectus. Curabitur vehicula nec lectus id vehicula. Nullam ac lectus vel nisi commodo malesuada et id nisl.</p><p>Cras pulvinar pharetra dui ac aliquam. Suspendisse a massa lacinia, pulvinar massa vel, ullamcorper leo. Mauris vestibulum, eros in pharetra placerat, odio felis sollicitudin erat, vel iaculis risus odio vitae enim. Duis rutrum cursus est quis tincidunt. Quisque finibus elit sed sem semper, sed facilisis dolor molestie. Donec ultricies quis dui vitae finibus. Proin dolor lorem, tincidunt eu laoreet sed, porta in dolor. Aliquam eu quam sed metus consequat tempor. Aliquam libero neque, vestibulum sed neque sed, aliquam blandit ligula. Duis lacinia non risus non ullamcorper. Curabitur eu pulvinar ipsum. Nulla aliquam porta velit non sodales. Integer euismod tortor a leo fringilla tristique. Nullam faucibus lectus ligula, sit amet ultricies dui dictum sed. Mauris et tristique nisi.</p><p>Curabitur libero arcu, convallis ac dignissim eget, blandit nec leo. Aenean ut enim porttitor, mattis tortor vitae, auctor risus. Quisque ut urna tincidunt nibh gravida molestie. Duis vitae felis vitae elit hendrerit malesuada. Cras a est mattis sem volutpat laoreet. Donec eget urna dictum, consectetur odio ut, rhoncus sem. Nulla eu venenatis nibh, eget faucibus tortor. Nulla facilisi. Donec volutpat lacus eu nulla tristique, at sodales justo fringilla. Proin blandit ultricies diam, quis placerat nisl pharetra ut. Cras lectus libero, faucibus at tincidunt vel, dignissim a ligula.</p><p>Donec tristique tellus in sem interdum, et pulvinar purus ornare. Mauris id mi eu nulla ornare mollis vitae et lacus. Proin accumsan lacinia dolor, sit amet pulvinar tortor porta eu. Morbi id justo eget lorem facilisis maximus in ut mauris. Curabitur quis ante vel risus convallis facilisis. Aliquam fringilla massa non arcu efficitur tincidunt. In mollis turpis vel lorem eleifend ultrices. Suspendisse ipsum elit, tincidunt sed metus quis, finibus pharetra orci. Sed semper velit semper, aliquam mauris at, hendrerit diam. Mauris sit amet urna varius, luctus leo nec, scelerisque elit. Quisque gravida condimentum neque quis auctor. Mauris odio massa, rutrum a dictum nec, aliquam vitae velit.</p>','','Собаки-поводыри - какие породы, как дрессируют, где можно купить, сколько стоит. Часть 5','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id elit eu arcu sollicitudin gravida sed ac est. Donec elementum pulvinar elit, at convallis nisl feugiat ut. Donec at risus erat.','lectus, risus, vitae, pulvinar, dolor, tincidunt, faucibus, Donec, aliquam, neque, pharetra, nulla, massa, lorem, feugiat, Mauris, Curabitur, Nulla, Suspendisse, finibus','12','post-5',0,1,1,1,0,0,'','',''),(13,'admin','2017-01-25 16:47:27','Этих потомков тибетских собак выводили для охраны стад и отар в Средней Азии, также собаки помогали в охоте на кабана и барса. Благодаря этому среднеазиатские овчарки отлично переносят суровые климатические условия, нехватку воды и не нуждаются в нехватку вод нехватку вод комфорте. Выводилась порода спонтанно: люди просто отбирали особей с необходимыми им качествами. Важно','<img class=\\\"fr-dib fr-draggable\\\" src=\\\"http://wikipet.by/uploads/posts/2017-01/1485371075_232.jpg\\\" alt=\\\"\\\">Этих потомков тибетских собак выводили для охраны стад и отар в Средней Азии, также собаки помогали в охоте на кабана и барса. Благодаря этому среднеазиатские овчарки отлично переносят суровые климатические условия, нехватку воды и не нуждаются в нехватку вод нехватку вод комфорте. Выводилась порода спонтанно: люди просто отбирали особей с необходимыми им качествами. Важно','podzagolovok|особенности воспитания||img-korotkie-novosti|2017-01/1485369236_232.jpg','Собаки-спасатели','Собаки-спасатели особенности воспитанияЭтих потомков тибетских собак выводили для охраны стад и отар в Средней Азии, также собаки помогали в охоте на кабана и барса. Благодаря этому среднеазиатские','нехватку, нуждаются, комфорте, условия, климатические, отлично, переносят, суровые, Выводилась, порода, необходимыми, качествами, Важно, особей, отбирали, спонтанно, просто, овчарки, среднеазиатские, собак','11','sobaki-spasateli',0,1,1,1,0,0,'','',''),(14,'admin','2017-01-26 16:57:30','','','podzagolovok|Особенности воспитания||img-korotkie-novosti|2017-01/1485439095_blok1img.jpg','Лабрадор','','','20','labrador',0,1,1,1,0,0,'','',''),(15,'admin','2017-01-26 16:58:56','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in tincidunt lectus, sed accumsan turpis. Nunc dapibus laoreet ultricies. Mauris finibus pretium gravida. Quisque accumsan blandit quam porta luctus. Aenean sed tellus sagittis arcu tincidunt tempor vel sit amet nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Cras egestas felis ut ex gravida, vel sodales massa lobortis.</p><p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam erat volutpat. Duis risus ipsum, laoreet sit amet ipsum aliquam, pulvinar tempus ligula. Sed tincidunt mattis felis non placerat. Duis gravida neque eget sapien finibus dignissim. Fusce nec cursus metus, sed ultricies massa. Nulla nec odio et orci maximus hendrerit dignissim eget magna. Sed tincidunt erat sed nunc ultrices pretium sed et enim. Praesent nec mattis ligula. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi vestibulum gravida blandit. Sed cursus luctus metus et molestie. Phasellus varius ex et lacinia ultricies. Aliquam tempor tortor in lectus egestas, sit amet accumsan leo cursus. Aliquam malesuada mi a molestie malesuada. Ut vestibulum ornare molestie.</p>','img-korotkie-novosti|2017-01/1485439178_blok2img.jpg','Анималотерапия','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in tincidunt lectus, sed accumsan turpis. Nunc dapibus laoreet ultricies. Mauris finibus pretium gravida. Quisque accumsan blandit quam','tincidunt, gravida, ipsum, molestie, malesuada, cursus, ultricies, accumsan, Aliquam, mattis, ligula, luctus, egestas, felis, dignissim, massa, blandit, metus, tempor, finibus','20','animaloterapiya',0,1,1,1,0,0,'','',''),(16,'admin','2017-01-26 17:04:38','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in tincidunt lectus, sed accumsan turpis. Nunc dapibus laoreet ultricies. Mauris finibus pretium gravida. Quisque accumsan blandit quam porta luctus. Aenean sed tellus sagittis arcu tincidunt tempor vel sit amet nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Cras egestas felis ut ex gravida, vel sodales massa lobortis.</p><p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam erat volutpat. Duis risus ipsum, laoreet sit amet ipsum aliquam, pulvinar tempus ligula. Sed tincidunt mattis felis non placerat. Duis gravida neque eget sapien finibus dignissim. Fusce nec cursus metus, sed ultricies massa. Nulla nec odio et orci maximus hendrerit dignissim eget magna. Sed tincidunt erat sed nunc ultrices pretium sed et enim. Praesent nec mattis ligula. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi vestibulum gravida blandit. Sed cursus luctus metus et molestie. Phasellus varius ex et lacinia ultricies. Aliquam tempor tortor in lectus egestas, sit amet accumsan leo cursus. Aliquam malesuada mi a molestie malesuada. Ut vestibulum ornare molestie.</p>','podzagolovok|особенности воспитания||img-korotkie-novosti|2017-01/1485439493_blok3img.jpg','Питание','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in tincidunt lectus, sed accumsan turpis. Nunc dapibus laoreet ultricies. Mauris finibus pretium gravida. Quisque accumsan blandit quam','tincidunt, gravida, ipsum, molestie, malesuada, cursus, ultricies, accumsan, Aliquam, mattis, ligula, luctus, egestas, felis, dignissim, massa, blandit, metus, tempor, finibus','20','pitanie',0,1,1,1,0,0,'','',''),(17,'admin','2017-01-26 17:12:44','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in tincidunt lectus, sed accumsan turpis. Nunc dapibus laoreet ultricies. Mauris finibus pretium gravida. Quisque accumsan blandit quam porta luctus. Aenean sed tellus sagittis arcu tincidunt tempor vel sit amet nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Cras egestas felis ut ex gravida, vel sodales massa lobortis.</p><p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam erat volutpat. Duis risus ipsum, laoreet sit amet ipsum aliquam, pulvinar tempus ligula. Sed tincidunt mattis felis non placerat. Duis gravida neque eget sapien finibus dignissim. Fusce nec cursus metus, sed ultricies massa. Nulla nec odio et orci maximus hendrerit dignissim eget magna. Sed tincidunt erat sed nunc ultrices pretium sed et enim. Praesent nec mattis ligula. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi vestibulum gravida blandit. Sed cursus luctus metus et molestie. Phasellus varius ex et lacinia ultricies. Aliquam tempor tortor in lectus egestas, sit amet accumsan leo cursus. Aliquam malesuada mi a molestie malesuada. Ut vestibulum ornare molestie.</p>','img-korotkie-novosti|2017-01/1485510453_blok1img.jpg','Анималотерапия 2','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in tincidunt lectus, sed accumsan turpis. Nunc dapibus laoreet ultricies. Mauris finibus pretium gravida. Quisque accumsan blandit quam','tincidunt, gravida, ipsum, molestie, malesuada, cursus, ultricies, accumsan, Aliquam, mattis, ligula, luctus, egestas, felis, dignissim, massa, blandit, metus, tempor, finibus','20','animaloterapiya-2',0,1,1,1,0,0,'','',''),(18,'admin','2017-01-26 17:14:24','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in tincidunt lectus, sed accumsan turpis. Nunc dapibus laoreet ultricies. Mauris finibus pretium gravida. Quisque accumsan blandit quam porta luctus. Aenean sed tellus sagittis arcu tincidunt tempor vel sit amet nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Cras egestas felis ut ex gravida, vel sodales massa lobortis.</p><p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam erat volutpat. Duis risus ipsum, laoreet sit amet ipsum aliquam, pulvinar tempus ligula. Sed tincidunt mattis felis non placerat. Duis gravida neque eget sapien finibus dignissim. Fusce nec cursus metus, sed ultricies massa. Nulla nec odio et orci maximus hendrerit dignissim eget magna. Sed tincidunt erat sed nunc ultrices pretium sed et enim. Praesent nec mattis ligula. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi vestibulum gravida blandit. Sed cursus luctus metus et molestie. Phasellus varius ex et lacinia ultricies. Aliquam tempor tortor in lectus egestas, sit amet accumsan leo cursus. Aliquam malesuada mi a molestie malesuada. Ut vestibulum ornare molestie.</p>','podzagolovok|Особенности воспитания||img-korotkie-novosti|2017-01/1485440054_blok1img.jpg','Лабрадор 2','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in tincidunt lectus, sed accumsan turpis. Nunc dapibus laoreet ultricies. Mauris finibus pretium gravida. Quisque accumsan blandit quam','tincidunt, gravida, ipsum, molestie, malesuada, cursus, ultricies, accumsan, Aliquam, mattis, ligula, luctus, egestas, felis, dignissim, massa, blandit, metus, tempor, finibus','20','labrador-2',0,1,1,1,0,0,'','',''),(19,'admin','2017-01-26 17:15:16','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in tincidunt lectus, sed accumsan turpis. Nunc dapibus laoreet ultricies. Mauris finibus pretium gravida. Quisque accumsan blandit quam porta luctus. Aenean sed tellus sagittis arcu tincidunt tempor vel sit amet nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Cras egestas felis ut ex gravida, vel sodales massa lobortis.</p><p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam erat volutpat. Duis risus ipsum, laoreet sit amet ipsum aliquam, pulvinar tempus ligula. Sed tincidunt mattis felis non placerat. Duis gravida neque eget sapien finibus dignissim. Fusce nec cursus metus, sed ultricies massa. Nulla nec odio et orci maximus hendrerit dignissim eget magna. Sed tincidunt erat sed nunc ultrices pretium sed et enim. Praesent nec mattis ligula. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi vestibulum gravida blandit. Sed cursus luctus metus et molestie. Phasellus varius ex et lacinia ultricies. Aliquam tempor tortor in lectus egestas, sit amet accumsan leo cursus. Aliquam malesuada mi a molestie malesuada. Ut vestibulum ornare molestie.</p>','podzagolovok|Особенности воспитания||img-korotkie-novosti|2017-01/1485508680_blok1img.jpg','Питание 2','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in tincidunt lectus, sed accumsan turpis. Nunc dapibus laoreet ultricies. Mauris finibus pretium gravida. Quisque accumsan blandit quam','tincidunt, gravida, ipsum, molestie, malesuada, cursus, ultricies, accumsan, Aliquam, mattis, ligula, luctus, egestas, felis, dignissim, massa, blandit, metus, tempor, finibus','20','pitanie-2',0,1,1,1,0,0,'','','');
/*!40000 ALTER TABLE `dle_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_post_extras`
--

DROP TABLE IF EXISTS `dle_post_extras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_post_extras` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `news_read` int(11) NOT NULL DEFAULT '0',
  `allow_rate` tinyint(1) NOT NULL DEFAULT '1',
  `rating` int(11) NOT NULL DEFAULT '0',
  `vote_num` int(11) NOT NULL DEFAULT '0',
  `votes` tinyint(1) NOT NULL DEFAULT '0',
  `view_edit` tinyint(1) NOT NULL DEFAULT '0',
  `disable_index` tinyint(1) NOT NULL DEFAULT '0',
  `related_ids` varchar(255) NOT NULL DEFAULT '',
  `access` varchar(150) NOT NULL DEFAULT '',
  `editdate` int(11) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(40) NOT NULL DEFAULT '',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`eid`),
  KEY `news_id` (`news_id`),
  KEY `user_id` (`user_id`),
  KEY `rating` (`rating`),
  KEY `news_read` (`news_read`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_post_extras`
--

LOCK TABLES `dle_post_extras` WRITE;
/*!40000 ALTER TABLE `dle_post_extras` DISABLE KEYS */;
INSERT INTO `dle_post_extras` (`eid`, `news_id`, `news_read`, `allow_rate`, `rating`, `vote_num`, `votes`, `view_edit`, `disable_index`, `related_ids`, `access`, `editdate`, `editor`, `reason`, `user_id`) VALUES (1,1,3,1,0,0,0,0,0,'2,3','',0,'','',1),(2,2,7,1,0,0,0,0,0,'3,1,6','',1485353534,'admin','',1),(3,3,4,1,0,0,0,0,0,'2,1,6,13','',0,'','',1),(4,4,10,0,0,0,0,0,0,'5','',1484419420,'admin','',1),(5,5,2,1,0,0,0,0,0,'4','',1484420081,'admin','',1),(6,6,2,1,0,0,0,0,0,'13,3,2','',0,'','',1),(7,7,487,1,0,0,0,0,0,'8,9,10,11,12','',1485370196,'admin','',1),(8,8,6,1,0,0,0,0,0,'9,10,11,12','',1485356815,'admin','',1),(9,9,3,1,0,0,0,0,0,'8,10,11,12,7','',1485356789,'admin','',1),(10,10,1,1,0,0,0,0,0,'8,9,11,12,7','',1485356852,'admin','',1),(11,11,6,1,0,0,0,0,0,'8,9,10,12,7','',1485356893,'admin','',1),(12,12,10,1,0,0,0,0,0,'8,9,10,11,7','',1485356987,'admin','',1),(13,13,26,1,0,0,0,1,0,'6,5,3,2','',1485371036,'admin','',1),(14,14,0,1,0,0,0,0,0,'','',1485439542,'admin','',1),(15,15,0,1,0,0,0,0,0,'','',0,'','',1),(16,16,0,1,0,0,0,0,0,'','',0,'','',1),(17,17,0,1,0,0,0,0,0,'','',1485510378,'admin','',1),(18,18,0,1,0,0,0,0,0,'','',0,'','',1),(19,19,1,1,0,0,0,0,0,'16,17,15,18,5','',1485508615,'admin','',1);
/*!40000 ALTER TABLE `dle_post_extras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_post_log`
--

DROP TABLE IF EXISTS `dle_post_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_post_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `expires` varchar(15) NOT NULL DEFAULT '',
  `action` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_post_log`
--

LOCK TABLES `dle_post_log` WRITE;
/*!40000 ALTER TABLE `dle_post_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_post_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_question`
--

DROP TABLE IF EXISTS `dle_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_question`
--

LOCK TABLES `dle_question` WRITE;
/*!40000 ALTER TABLE `dle_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_read_log`
--

DROP TABLE IF EXISTS `dle_read_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_read_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_read_log`
--

LOCK TABLES `dle_read_log` WRITE;
/*!40000 ALTER TABLE `dle_read_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_read_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_rss`
--

DROP TABLE IF EXISTS `dle_rss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_rss` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `allow_main` tinyint(1) NOT NULL DEFAULT '0',
  `allow_rating` tinyint(1) NOT NULL DEFAULT '0',
  `allow_comm` tinyint(1) NOT NULL DEFAULT '0',
  `text_type` tinyint(1) NOT NULL DEFAULT '0',
  `date` tinyint(1) NOT NULL DEFAULT '0',
  `search` text NOT NULL,
  `max_news` tinyint(3) NOT NULL DEFAULT '0',
  `cookie` text NOT NULL,
  `category` smallint(5) NOT NULL DEFAULT '0',
  `lastdate` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_rss`
--

LOCK TABLES `dle_rss` WRITE;
/*!40000 ALTER TABLE `dle_rss` DISABLE KEYS */;
INSERT INTO `dle_rss` (`id`, `url`, `description`, `allow_main`, `allow_rating`, `allow_comm`, `text_type`, `date`, `search`, `max_news`, `cookie`, `category`, `lastdate`) VALUES (1,'http://dle-news.ru/rss.xml','Официальный сайт DataLife Engine',1,1,1,1,1,'<div class=\"full-post-content row\">{get}</div><div class=\"full-post-footer ignore-select\">',5,'',1,0);
/*!40000 ALTER TABLE `dle_rss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_rssinform`
--

DROP TABLE IF EXISTS `dle_rssinform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_rssinform` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `tag` varchar(40) NOT NULL DEFAULT '',
  `descr` varchar(255) NOT NULL DEFAULT '',
  `category` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `news_max` smallint(5) NOT NULL DEFAULT '0',
  `tmax` smallint(5) NOT NULL DEFAULT '0',
  `dmax` smallint(5) NOT NULL DEFAULT '0',
  `approve` tinyint(1) NOT NULL DEFAULT '1',
  `rss_date_format` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_rssinform`
--

LOCK TABLES `dle_rssinform` WRITE;
/*!40000 ALTER TABLE `dle_rssinform` DISABLE KEYS */;
INSERT INTO `dle_rssinform` (`id`, `tag`, `descr`, `category`, `url`, `template`, `news_max`, `tmax`, `dmax`, `approve`, `rss_date_format`) VALUES (1,'dle','Новости с Яндекса','0','https://news.yandex.ru/index.rss','informer',3,0,200,1,'j F Y H:i');
/*!40000 ALTER TABLE `dle_rssinform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_sendlog`
--

DROP TABLE IF EXISTS `dle_sendlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_sendlog` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(40) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  `flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `date` (`date`),
  KEY `flag` (`flag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_sendlog`
--

LOCK TABLES `dle_sendlog` WRITE;
/*!40000 ALTER TABLE `dle_sendlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_sendlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_social_login`
--

DROP TABLE IF EXISTS `dle_social_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_social_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` varchar(40) NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL DEFAULT '0',
  `password` varchar(32) NOT NULL DEFAULT '',
  `provider` varchar(15) NOT NULL DEFAULT '',
  `wait` tinyint(1) NOT NULL DEFAULT '0',
  `waitlogin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_social_login`
--

LOCK TABLES `dle_social_login` WRITE;
/*!40000 ALTER TABLE `dle_social_login` DISABLE KEYS */;
INSERT INTO `dle_social_login` (`id`, `sid`, `uid`, `password`, `provider`, `wait`, `waitlogin`) VALUES (1,'54f5392b534ef429d8bb207b276f5a05936d0d72',2,'2de34e55e0a2ba49c321652303362363','vkontakte',0,0);
/*!40000 ALTER TABLE `dle_social_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_spam_log`
--

DROP TABLE IF EXISTS `dle_spam_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_spam_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `is_spammer` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`),
  KEY `is_spammer` (`is_spammer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_spam_log`
--

LOCK TABLES `dle_spam_log` WRITE;
/*!40000 ALTER TABLE `dle_spam_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_spam_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_static`
--

DROP TABLE IF EXISTS `dle_static`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_static` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `descr` varchar(255) NOT NULL DEFAULT '',
  `template` mediumtext NOT NULL,
  `allow_br` tinyint(1) NOT NULL DEFAULT '0',
  `allow_template` tinyint(1) NOT NULL DEFAULT '0',
  `grouplevel` varchar(100) NOT NULL DEFAULT 'all',
  `tpl` varchar(40) NOT NULL DEFAULT '',
  `metadescr` varchar(200) NOT NULL DEFAULT '',
  `metakeys` text NOT NULL,
  `views` mediumint(8) NOT NULL DEFAULT '0',
  `template_folder` varchar(50) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  `metatitle` varchar(255) NOT NULL DEFAULT '',
  `allow_count` tinyint(1) NOT NULL DEFAULT '1',
  `sitemap` tinyint(1) NOT NULL DEFAULT '1',
  `disable_index` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  FULLTEXT KEY `template` (`template`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_static`
--

LOCK TABLES `dle_static` WRITE;
/*!40000 ALTER TABLE `dle_static` DISABLE KEYS */;
INSERT INTO `dle_static` (`id`, `name`, `descr`, `template`, `allow_br`, `allow_template`, `grouplevel`, `tpl`, `metadescr`, `metakeys`, `views`, `template_folder`, `date`, `metatitle`, `allow_count`, `sitemap`, `disable_index`) VALUES (1,'dle-rules-page','Общие правила на сайте','<b>Общие правила поведения на сайте:</b><br /><br />Начнем с того, что на сайте общаются сотни людей, разных религий и взглядов, и все они являются полноправными посетителями нашего сайта, поэтому если мы хотим чтобы это сообщество людей функционировало нам и необходимы правила. Мы настоятельно рекомендуем прочитать настоящие правила, это займет у вас всего минут пять, но сбережет нам и вам время и поможет сделать сайт более интересным и организованным.<br /><br />Начнем с того, что на нашем сайте нужно вести себя уважительно ко всем посетителям сайта. Не надо оскорблений по отношению к участникам, это всегда лишнее. Если есть претензии - обращайтесь к Админам или Модераторам (воспользуйтесь личными сообщениями). Оскорбление других посетителей считается у нас одним из самых тяжких нарушений и строго наказывается администрацией. <b>У нас строго запрещен расизм, религиозные и политические высказывания.</b> Заранее благодарим вас за понимание и за желание сделать наш сайт более вежливым и дружелюбным.<br /><br /><b>На сайте строго запрещено:</b> <br /><br />- сообщения, не относящиеся к содержанию статьи или к контексту обсуждения<br />- оскорбление и угрозы в адрес посетителей сайта<br />- в комментариях запрещаются выражения, содержащие ненормативную лексику, унижающие человеческое достоинство, разжигающие межнациональную рознь<br />- спам, а также реклама любых товаров и услуг, иных ресурсов, СМИ или событий, не относящихся к контексту обсуждения статьи<br /><br />Давайте будем уважать друг друга и сайт, на который Вы и другие читатели приходят пообщаться и высказать свои мысли. Администрация сайта оставляет за собой право удалять комментарии или часть комментариев, если они не соответствуют данным требованиям.<br /><br />При нарушении правил вам может быть дано <b>предупреждение</b>. В некоторых случаях может быть дан бан <b>без предупреждений</b>. По вопросам снятия бана писать администратору.<br /><br /><b>Оскорбление</b> администраторов или модераторов также караются <b>баном</b> - уважайте чужой труд.<br /><br /><div align=\"center\">{ACCEPT-DECLINE}</div>',1,1,'all','','Общие правила','Общие правила',59,'',1484138815,'',1,1,0),(2,'index','главная','<div class=\\\"top\\\"><div class=\\\"top_menu\\\"><div class=\\\"veterenar\\\"><p class=\\\"text-4\\\">Ветеринар<br>Онлайн</p></div><div class=\\\"pitanie-menu\\\"><p class=\\\"text-5\\\">Здоровье и питание</p></div><div class=\\\"psixologiya\\\"><p class=\\\"text-6\\\">Психология</p></div></div><div class=\\\"top_slider\\\"><div id=\\\"slider-wrap\\\"><div id=\\\"slider\\\"><div class=\\\"slide\\\"><img src=\\\"{THEME}/img/dog.jpg\\\" alt=\\\"\\\" height=\\\"260\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width: 629px;\\\"></div><div class=\\\"slide\\\"><img src=\\\"{THEME}/img/dog2.jpg\\\" alt=\\\"\\\" height=\\\"260\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width: 629px;\\\"></div><div class=\\\"slide\\\"><img src=\\\"{THEME}/img/dog3.jpg\\\" alt=\\\"\\\" height=\\\"260\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width: 629px;\\\"></div><div class=\\\"slide\\\"><img src=\\\"{THEME}/img/dog4.jpg\\\" alt=\\\"\\\" height=\\\"260\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width: 629px;\\\"></div></div></div></div></div><div class=\\\"vtoroe-menu\\\"><ul class=\\\"hr3\\\"><li><a href=\\\"#\\\">Ветаптеки</a></li><li><a href=\\\"#\\\">Клиники</a></li><li><a href=\\\"#\\\">Одежда-Мода</a></li><li><a href=\\\"#\\\">Красота</a></li><li><a href=\\\"#\\\">Дрессировка</a></li><li><a href=\\\"#\\\">Клубы</a></li></ul></div><div class=\\\"liniya3\\\"><br></div><div class=\\\"kollazh\\\"><div class=\\\"pozitiv-eto-vse-oni-govoryat-eksperty\\\"><p class=\\\"pozitiv\\\">ПОЗИТИВ</p><p class=\\\"text-eksperty\\\">ГОВОРЯТ ЭКСПЕРТЫ</p><p class=\\\"text-eksperty2\\\">ЭТО ВСЕ ОНИ</p></div><div class=\\\"row\\\"><div class=\\\"blok_1\\\"><div class=\\\"psihologiya-3\\\">ПСИХОЛОГИЯ</div><div class=\\\"title\\\"><p class=\\\"labrador\\\">ЛАБРАДОР</p><p class=\\\"text-vospitanie\\\">ОСОБЕННОСТИ ВОСПИТАНИЯ</p></div></div><div class=\\\"blok_2\\\"><div class=\\\"psihologiya-kopiya\\\">ПСИХОЛОГИЯ</div><div class=\\\"title-kopiya\\\"><p class=\\\"animaloterapiya\\\">АНИМАЛОТЕРАПИЯ</p></div></div><div class=\\\"blok_3\\\"><div class=\\\"title-kopiya-2\\\"><div class=\\\"psihologiya-kopiya-2\\\">ПСИХОЛОГИЯ</div><div class=\\\"nazvanie\\\"><p class=\\\"pitanie\\\">ПИТАНИЕ</p><p class=\\\"text-pitanie\\\">ОСОБЕННОСТИ ВОСПИТАНИЯ</p></div></div></div></div><div class=\\\"clear\\\"><br></div><div class=\\\"row-4\\\"><div class=\\\"col-15\\\"><div class=\\\"blok_4\\\"><div class=\\\"psihologiya-kopiya-3\\\">ПСИХОЛОГИЯ</div><div class=\\\"title-kopiya-3\\\"><p class=\\\"animaloterapiya-2\\\">АНИМАЛОТЕРАПИЯ</p></div></div><div class=\\\"blok_5\\\"><div class=\\\"psihologiya-kopiya-4\\\">ПСИХОЛОГИЯ</div><div class=\\\"nazvanie-kopiya\\\"><p class=\\\"pitanie-2\\\">ПИТАНИЕ</p><p class=\\\"text-pitanie2\\\">ОСОБЕННОСТИ ВОСПИТАНИЯ</p></div></div></div><div class=\\\"blok_6\\\"><div class=\\\"psihologiya-9\\\">ПСИХОЛОГИЯ</div><div class=\\\"title-2\\\"><img class=\\\"white-title fr-dii fr-draggable\\\" src=\\\"{THEME}/img/white_title_6.png\\\" alt=\\\"\\\" height=\\\"106\\\" style=\\\"width: 227px;\\\">&nbsp;<img class=\\\"white-title-kopiya-2 fr-dii fr-draggable\\\" src=\\\"{THEME}/img/white_title_kopiya_2.png\\\" alt=\\\"\\\" height=\\\"106\\\" style=\\\"width: 227px;\\\"><p class=\\\"text-labrador\\\">ОСОБЕННОСТИ ВОСПИТАНИЯ</p><p class=\\\"labrador-2\\\">ЛАБРАДОР</p></div></div><div class=\\\"blok_7\\\"><div class=\\\"psihologiya-kopiya-5\\\">ПСИХОЛОГИЯ</div><div class=\\\"title-kopiya-4\\\"><p class=\\\"animaloterapiya-3\\\">АНИМАЛОТЕРАПИЯ</p></div></div></div></div><div class=\\\"sliderfooter\\\"><div class=\\\"zagolovok-naidite\\\"><p class=\\\"text-naidite\\\">НАЙДИТЕ ВАШЕГО ПИТОМЦА</p><p class=\\\"text-uznaite\\\">И узнайте больше как ухаживать за ним</p></div><div id=\\\"slider-wrap2\\\"><div id=\\\"slider2\\\"><div class=\\\"slide2\\\"><div class=\\\"img\\\"><img src=\\\"{THEME}/img/dog-uz.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width: 238px;\\\"><p class=\\\"name-animal1\\\">Собаки</p><br><p class=\\\"count1\\\">12 видов</p></div><div class=\\\"img\\\"><img src=\\\"{THEME}/img/cat.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width: 238px;\\\"><p class=\\\"name-animal1\\\">Коты</p><br><p class=\\\"count1\\\">12 видов</p></div><div class=\\\"img\\\"><img src=\\\"{THEME}/img/fish.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width: 238px;\\\"><p class=\\\"name-animal1\\\">Рыбы</p><br><p class=\\\"count1\\\">12 видов</p></div><div class=\\\"img\\\"><img src=\\\"{THEME}/img/popug.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width: 238px;\\\"><p class=\\\"name-animal1\\\">Птицы</p><br><p class=\\\"count1\\\">12 видов</p></div></div><div class=\\\"slide2\\\"><div class=\\\"img\\\"><img src=\\\"{THEME}/img/popug.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width: 238px;\\\"><p class=\\\"name-animal1\\\">Птицы</p><br><p class=\\\"count1\\\">12 видов</p></div><div class=\\\"img\\\"><img src=\\\"{THEME}/img/dog-uz.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width: 238px;\\\"><p class=\\\"name-animal1\\\">Собаки</p><br><p class=\\\"count1\\\">12 видов</p></div><div class=\\\"img\\\"><img src=\\\"{THEME}/img/cat.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width: 238px;\\\"><p class=\\\"name-animal1\\\">Коты</p><br><p class=\\\"count1\\\">12 видов</p></div><div class=\\\"img\\\"><img src=\\\"{THEME}/img/fish.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width: 238px;\\\"><p class=\\\"name-animal1\\\">Рыбы</p><br><p class=\\\"count1\\\">12 видов</p></div></div><div class=\\\"slide2\\\"><div class=\\\"img\\\"><img src=\\\"{THEME}/img/fish.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width: 238px;\\\"><p class=\\\"name-animal1\\\">Рыбы</p><br><p class=\\\"count1\\\">12 видов</p></div><div class=\\\"img\\\"><img src=\\\"{THEME}/img/popug.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width: 238px;\\\"><p class=\\\"name-animal1\\\">Птицы</p><br><p class=\\\"count1\\\">12 видов</p></div><div class=\\\"img\\\"><img src=\\\"{THEME}/img/dog-uz.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width: 238px;\\\"><p class=\\\"name-animal1\\\">Собаки</p><br><p class=\\\"count1\\\">12 видов</p></div><div class=\\\"img\\\"><img src=\\\"{THEME}/img/cat.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width: 238px;\\\"><p class=\\\"name-animal1\\\">Коты</p><br><p class=\\\"count1\\\">12 видов</p></div></div><div class=\\\"slide2\\\"><div class=\\\"img\\\"><img src=\\\"{THEME}/img/cat.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width: 238px;\\\"><p class=\\\"name-animal1\\\">Коты</p><br><p class=\\\"count1\\\">12 видов</p></div><div class=\\\"img\\\"><img src=\\\"{THEME}/img/fish.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width: 238px;\\\"><p class=\\\"name-animal1\\\">Рыбы</p><br><p class=\\\"count1\\\">12 видов</p></div><div class=\\\"img\\\"><img src=\\\"{THEME}/img/popug.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width: 238px;\\\"><p class=\\\"name-animal1\\\">Птицы</p><br><p class=\\\"count1\\\">12 видов</p></div><div class=\\\"img\\\"><img src=\\\"{THEME}/img/dog-uz.jpg\\\" alt=\\\"\\\" height=\\\"250\\\" class=\\\"fr-dii fr-draggable\\\" style=\\\"width: 238px;\\\"><p class=\\\"name-animal1\\\">Собаки</p><br><p class=\\\"count1\\\">12 видов</p></div></div></div></div></div><section><article id=\\\"konkurs1\\\"><header class=\\\"konk\\\"><div class=\\\"cat\\\">конкурсы</div><div class=\\\"catm\\\">Чьё животное больше похоже на хозянина?</div></header><div class=\\\"foto-konkurs\\\"><img class=\\\"elips fr-dii fr-draggable\\\" src=\\\"{THEME}/img/elips.png\\\" alt=\\\"конкурс\\\" height=\\\"100\\\" title=\\\"конкурс\\\" style=\\\"width: 100px;\\\"><div class=\\\"foto-konkurs-1\\\"><br></div><div class=\\\"foto-konkurs-2\\\"><br></div></div></article><article id=\\\"konkurs2\\\"><header class=\\\"konk\\\"><div class=\\\"cat\\\">спецпроекты</div><div class=\\\"catm\\\">Чьё животное больше похоже на хозянина?</div></header><div class=\\\"foto-konkurs\\\"><img class=\\\"elips fr-dii fr-draggable\\\" src=\\\"{THEME}/img/elips.png\\\" alt=\\\"конкурс\\\" height=\\\"100\\\" title=\\\"конкурс\\\" style=\\\"width: 100px;\\\"><div class=\\\"foto-konkurs-1\\\"><br></div><div class=\\\"foto-konkurs-2\\\"><br></div></div></article></section><div class=\\\"more\\\"><section><div class=\\\"art1\\\"><article id=\\\"art1\\\"><p class=\\\"zag1\\\">Животные<br>в помощь<br>бизнесу</p></article></div><div class=\\\"art2\\\"><article id=\\\"art2\\\"><p class=\\\"zag2\\\">Легальные<br>вопросы</p></article></div><div class=\\\"art3\\\"><article id=\\\"art3\\\"><p class=\\\"zag3\\\">PetArt</p></article></div></section></div>',2,1,'all','index','конкурсы, информация, общение, советы','питомцы, животные',1218,'',1484139629,'Энциклопедия домашних животных',1,1,0),(3,'blog','Блог о домашних животных','<span style=\\\"font-size: 30px;\\\">Блог о домашних животных</span>',2,1,'all','','БОЛЬШЕ СТАТЕЙ ПО ТЕМЕПСИХОЛОГИЯЛАБРАДОРОСОБЕННОСТИ ВОСПИТАНИЯПСИХОЛОГИЯАНИМАЛОТЕРАПИЯПСИХОЛОГИЯПИТАНИЕОСОБЕННОСТИ ВОСПИТАНИЯПСИХОЛОГИЯАНИМАЛОТЕРАПИЯПСИХОЛОГИЯПИТАНИЕОСОБЕННОСТИ ВОСПИТАНИЯПСИХОЛОГИЯ','ВОСПИТАНИЯПСИХОЛОГИЯАНИМАЛОТЕРАПИЯПСИХОЛОГИЯПИТАНИЕОСОБЕННОСТИ, ОСОБЕННОСТИ, ВОСПИТАНИЯЛАБРАДОРПСИХОЛОГИЯАНИМАЛОТЕРАПИЯ, ВОСПИТАНИЯПСИХОЛОГИЯ, БОЛЬШЕ, ТЕМЕПСИХОЛОГИЯЛАБРАДОРОСОБЕННОСТИ, СТАТЕЙ',75,'',1484148387,'',1,1,0),(5,'wiki','Энциклопедия','<span style=\\\"font-size:30px;\\\">Энциклопедия</span>',0,1,'all','','Энциклопедия','Энциклопедия',19,'',1484151588,'',1,1,0),(6,'cat','Каталоги','<span style=\\\"font-size:30px;\\\">Каталоги</span>',0,1,'all','','Каталоги','Каталоги',27,'',1484151623,'',1,1,0),(7,'skidki','Акции и Скидки','<span style=\\\"font-size:30px;\\\">Акции и Скидки</span>',0,1,'all','','Акции и Скидки','Скидки, Акции',28,'',1484151658,'',1,1,0),(8,'ekspert','Экспертиза','<span style=\\\"font-size:30px;\\\">Экспертиза</span>',0,1,'all','','Экспертиза','Экспертиза',46,'',1484151688,'',1,1,0),(9,'afisha','Афиша','<span style=\\\"font-size:30px;\\\">Афиша</span>',0,1,'all','','Афиша','Афиша',15,'',1484151714,'',1,1,0),(4,'obyavleniya','Обьявления','<span style=\\\"font-size:30px;\\\">Обьявления</span>',0,1,'all','','Обьявления','Обьявления',47,'',1484151425,'',1,1,0),(13,'geroi-nashego-vremeni','ГЕРОИ НАШЕГО ВРЕМЕНИ','<div class=\\\"derevo\\\"><ul id=\\\"breadcrumbs-one\\\"><li><a href=\\\"#\\\">Главная /</a></li><li><a href=\\\"#\\\">Это все они /</a></li><li><a href=\\\"#\\\">Герои нашего времени</a></li></ul></div><input class=\\\"inside_article_search\\\" type=\\\"search\\\" name=\\\"q\\\" placeholder=\\\"Введите запрос\\\">&nbsp; <input class=\\\"inside_article_search_submit\\\" type=\\\"submit\\\" value=\\\"Найти\\\"><h1 class=\\\"one_column_article_header\\\">Герои нашего времени</h1>',2,1,'all','geroi','Главная /Это все они /Герои нашего времени  Герои нашего времени','времени, нашего, Герои, Главная',6,'',1484932115,'',1,1,0),(14,'eto-vse-oni','Это всё они','весь текст в шаблоне',2,1,'all','eto-vse-oni','Герои нашего времениСобаки-спасатели особенности воспитанияЭтих потомков тибетских собак выводили для охраны стад и отар в Средней Азии, также собаки помогали в охоте на кабана и барса. Благодаря','можно, купить, дрессируют, породы, поводыри, какие, сколько, стоит, 2016Собаки, особенности, воспитанияПсихологиялабрадор, нехватку, спасатели, воспитанияСобаки, воспитания, АктуальноеПсихологиялабрадор, нестерпимую, мороз, чтобы, Важно',64,'',1485345643,'',1,1,0),(12,'positiv','позитив','xcвыв',2,1,'all','positiv','xcвыв','xcвыв',77,'',1484338778,'',1,1,0);
/*!40000 ALTER TABLE `dle_static` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_static_files`
--

DROP TABLE IF EXISTS `dle_static_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_static_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `static_id` int(11) NOT NULL DEFAULT '0',
  `author` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(15) NOT NULL DEFAULT '',
  `name` varchar(200) NOT NULL DEFAULT '',
  `onserver` varchar(190) NOT NULL DEFAULT '',
  `dcount` int(11) NOT NULL DEFAULT '0',
  `size` bigint(20) NOT NULL DEFAULT '0',
  `checksum` char(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `static_id` (`static_id`),
  KEY `onserver` (`onserver`),
  KEY `author` (`author`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_static_files`
--

LOCK TABLES `dle_static_files` WRITE;
/*!40000 ALTER TABLE `dle_static_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_static_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_subscribe`
--

DROP TABLE IF EXISTS `dle_subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_subscribe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(40) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `news_id` int(11) NOT NULL DEFAULT '0',
  `hash` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_subscribe`
--

LOCK TABLES `dle_subscribe` WRITE;
/*!40000 ALTER TABLE `dle_subscribe` DISABLE KEYS */;
INSERT INTO `dle_subscribe` (`id`, `user_id`, `name`, `email`, `news_id`, `hash`) VALUES (1,3,'tglogin','tamaragrinevich@gmail.com',7,'a95ccfd5bb60cf74b1ae05a95ba92327');
/*!40000 ALTER TABLE `dle_subscribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_tags`
--

DROP TABLE IF EXISTS `dle_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `tag` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_tags`
--

LOCK TABLES `dle_tags` WRITE;
/*!40000 ALTER TABLE `dle_tags` DISABLE KEYS */;
INSERT INTO `dle_tags` (`id`, `news_id`, `tag`) VALUES (1,1,'по'),(2,2,'по'),(3,3,'по'),(4,1,'новости'),(5,2,'новости');
/*!40000 ALTER TABLE `dle_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_twofactor`
--

DROP TABLE IF EXISTS `dle_twofactor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_twofactor` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `pin` varchar(10) NOT NULL DEFAULT '',
  `attempt` tinyint(1) NOT NULL DEFAULT '0',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pin` (`pin`),
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_twofactor`
--

LOCK TABLES `dle_twofactor` WRITE;
/*!40000 ALTER TABLE `dle_twofactor` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_twofactor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_usergroups`
--

DROP TABLE IF EXISTS `dle_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_usergroups` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) NOT NULL DEFAULT '',
  `allow_cats` text NOT NULL,
  `allow_adds` tinyint(1) NOT NULL DEFAULT '1',
  `cat_add` text NOT NULL,
  `allow_admin` tinyint(1) NOT NULL DEFAULT '0',
  `allow_addc` tinyint(1) NOT NULL DEFAULT '0',
  `allow_editc` tinyint(1) NOT NULL DEFAULT '0',
  `allow_delc` tinyint(1) NOT NULL DEFAULT '0',
  `edit_allc` tinyint(1) NOT NULL DEFAULT '0',
  `del_allc` tinyint(1) NOT NULL DEFAULT '0',
  `moderation` tinyint(1) NOT NULL DEFAULT '0',
  `allow_all_edit` tinyint(1) NOT NULL DEFAULT '0',
  `allow_edit` tinyint(1) NOT NULL DEFAULT '0',
  `allow_pm` tinyint(1) NOT NULL DEFAULT '0',
  `max_pm` smallint(5) NOT NULL DEFAULT '0',
  `max_foto` varchar(10) NOT NULL DEFAULT '',
  `allow_files` tinyint(1) NOT NULL DEFAULT '0',
  `allow_hide` tinyint(1) NOT NULL DEFAULT '1',
  `allow_short` tinyint(1) NOT NULL DEFAULT '0',
  `time_limit` tinyint(1) NOT NULL DEFAULT '0',
  `rid` smallint(5) NOT NULL DEFAULT '0',
  `allow_fixed` tinyint(1) NOT NULL DEFAULT '0',
  `allow_feed` tinyint(1) NOT NULL DEFAULT '1',
  `allow_search` tinyint(1) NOT NULL DEFAULT '1',
  `allow_poll` tinyint(1) NOT NULL DEFAULT '1',
  `allow_main` tinyint(1) NOT NULL DEFAULT '1',
  `captcha` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(200) NOT NULL DEFAULT '',
  `allow_modc` tinyint(1) NOT NULL DEFAULT '0',
  `allow_rating` tinyint(1) NOT NULL DEFAULT '1',
  `allow_offline` tinyint(1) NOT NULL DEFAULT '0',
  `allow_image_upload` tinyint(1) NOT NULL DEFAULT '0',
  `allow_file_upload` tinyint(1) NOT NULL DEFAULT '0',
  `allow_signature` tinyint(1) NOT NULL DEFAULT '0',
  `allow_url` tinyint(1) NOT NULL DEFAULT '1',
  `news_sec_code` tinyint(1) NOT NULL DEFAULT '1',
  `allow_image` tinyint(1) NOT NULL DEFAULT '0',
  `max_signature` smallint(6) NOT NULL DEFAULT '0',
  `max_info` smallint(6) NOT NULL DEFAULT '0',
  `admin_addnews` tinyint(1) NOT NULL DEFAULT '0',
  `admin_editnews` tinyint(1) NOT NULL DEFAULT '0',
  `admin_comments` tinyint(1) NOT NULL DEFAULT '0',
  `admin_categories` tinyint(1) NOT NULL DEFAULT '0',
  `admin_editusers` tinyint(1) NOT NULL DEFAULT '0',
  `admin_wordfilter` tinyint(1) NOT NULL DEFAULT '0',
  `admin_xfields` tinyint(1) NOT NULL DEFAULT '0',
  `admin_userfields` tinyint(1) NOT NULL DEFAULT '0',
  `admin_static` tinyint(1) NOT NULL DEFAULT '0',
  `admin_editvote` tinyint(1) NOT NULL DEFAULT '0',
  `admin_newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `admin_blockip` tinyint(1) NOT NULL DEFAULT '0',
  `admin_banners` tinyint(1) NOT NULL DEFAULT '0',
  `admin_rss` tinyint(1) NOT NULL DEFAULT '0',
  `admin_iptools` tinyint(1) NOT NULL DEFAULT '0',
  `admin_rssinform` tinyint(1) NOT NULL DEFAULT '0',
  `admin_googlemap` tinyint(1) NOT NULL DEFAULT '0',
  `allow_html` tinyint(1) NOT NULL DEFAULT '1',
  `group_prefix` text NOT NULL,
  `group_suffix` text NOT NULL,
  `allow_subscribe` tinyint(1) NOT NULL DEFAULT '0',
  `allow_image_size` tinyint(1) NOT NULL DEFAULT '0',
  `cat_allow_addnews` text NOT NULL,
  `flood_news` smallint(6) NOT NULL DEFAULT '0',
  `max_day_news` smallint(6) NOT NULL DEFAULT '0',
  `force_leech` tinyint(1) NOT NULL DEFAULT '0',
  `edit_limit` smallint(6) NOT NULL DEFAULT '0',
  `captcha_pm` tinyint(1) NOT NULL DEFAULT '0',
  `max_pm_day` smallint(6) NOT NULL DEFAULT '0',
  `max_mail_day` smallint(6) NOT NULL DEFAULT '0',
  `admin_tagscloud` tinyint(1) NOT NULL DEFAULT '0',
  `allow_vote` tinyint(1) NOT NULL DEFAULT '0',
  `admin_complaint` tinyint(1) NOT NULL DEFAULT '0',
  `news_question` tinyint(1) NOT NULL DEFAULT '0',
  `comments_question` tinyint(1) NOT NULL DEFAULT '0',
  `max_comment_day` smallint(6) NOT NULL DEFAULT '0',
  `max_images` smallint(6) NOT NULL DEFAULT '0',
  `max_files` smallint(6) NOT NULL DEFAULT '0',
  `disable_news_captcha` smallint(6) NOT NULL DEFAULT '0',
  `disable_comments_captcha` smallint(6) NOT NULL DEFAULT '0',
  `pm_question` tinyint(1) NOT NULL DEFAULT '0',
  `captcha_feedback` tinyint(1) NOT NULL DEFAULT '1',
  `feedback_question` tinyint(1) NOT NULL DEFAULT '0',
  `files_type` varchar(255) NOT NULL DEFAULT '',
  `max_file_size` mediumint(9) NOT NULL DEFAULT '0',
  `files_max_speed` smallint(6) NOT NULL DEFAULT '0',
  `spamfilter` tinyint(1) NOT NULL DEFAULT '2',
  `allow_comments_rating` tinyint(1) NOT NULL DEFAULT '1',
  `max_edit_days` tinyint(1) NOT NULL DEFAULT '0',
  `spampmfilter` tinyint(1) NOT NULL DEFAULT '0',
  `force_reg` tinyint(1) NOT NULL DEFAULT '0',
  `force_reg_days` mediumint(9) NOT NULL DEFAULT '0',
  `force_reg_group` smallint(6) NOT NULL DEFAULT '4',
  `force_news` tinyint(1) NOT NULL DEFAULT '0',
  `force_news_count` mediumint(9) NOT NULL DEFAULT '0',
  `force_news_group` smallint(6) NOT NULL DEFAULT '4',
  `force_comments` tinyint(1) NOT NULL DEFAULT '0',
  `force_comments_count` mediumint(9) NOT NULL DEFAULT '0',
  `force_comments_group` smallint(6) NOT NULL DEFAULT '4',
  `force_rating` tinyint(1) NOT NULL DEFAULT '0',
  `force_rating_count` mediumint(9) NOT NULL DEFAULT '0',
  `force_rating_group` smallint(6) NOT NULL DEFAULT '4',
  `not_allow_cats` text NOT NULL,
  `allow_up_image` tinyint(1) NOT NULL DEFAULT '0',
  `allow_up_watermark` tinyint(1) NOT NULL DEFAULT '0',
  `allow_up_thumb` tinyint(1) NOT NULL DEFAULT '0',
  `up_count_image` smallint(6) NOT NULL DEFAULT '0',
  `up_image_side` varchar(20) NOT NULL DEFAULT '',
  `up_image_size` mediumint(9) NOT NULL DEFAULT '0',
  `up_thumb_size` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_usergroups`
--

LOCK TABLES `dle_usergroups` WRITE;
/*!40000 ALTER TABLE `dle_usergroups` DISABLE KEYS */;
INSERT INTO `dle_usergroups` (`id`, `group_name`, `allow_cats`, `allow_adds`, `cat_add`, `allow_admin`, `allow_addc`, `allow_editc`, `allow_delc`, `edit_allc`, `del_allc`, `moderation`, `allow_all_edit`, `allow_edit`, `allow_pm`, `max_pm`, `max_foto`, `allow_files`, `allow_hide`, `allow_short`, `time_limit`, `rid`, `allow_fixed`, `allow_feed`, `allow_search`, `allow_poll`, `allow_main`, `captcha`, `icon`, `allow_modc`, `allow_rating`, `allow_offline`, `allow_image_upload`, `allow_file_upload`, `allow_signature`, `allow_url`, `news_sec_code`, `allow_image`, `max_signature`, `max_info`, `admin_addnews`, `admin_editnews`, `admin_comments`, `admin_categories`, `admin_editusers`, `admin_wordfilter`, `admin_xfields`, `admin_userfields`, `admin_static`, `admin_editvote`, `admin_newsletter`, `admin_blockip`, `admin_banners`, `admin_rss`, `admin_iptools`, `admin_rssinform`, `admin_googlemap`, `allow_html`, `group_prefix`, `group_suffix`, `allow_subscribe`, `allow_image_size`, `cat_allow_addnews`, `flood_news`, `max_day_news`, `force_leech`, `edit_limit`, `captcha_pm`, `max_pm_day`, `max_mail_day`, `admin_tagscloud`, `allow_vote`, `admin_complaint`, `news_question`, `comments_question`, `max_comment_day`, `max_images`, `max_files`, `disable_news_captcha`, `disable_comments_captcha`, `pm_question`, `captcha_feedback`, `feedback_question`, `files_type`, `max_file_size`, `files_max_speed`, `spamfilter`, `allow_comments_rating`, `max_edit_days`, `spampmfilter`, `force_reg`, `force_reg_days`, `force_reg_group`, `force_news`, `force_news_count`, `force_news_group`, `force_comments`, `force_comments_count`, `force_comments_group`, `force_rating`, `force_rating_count`, `force_rating_group`, `not_allow_cats`, `allow_up_image`, `allow_up_watermark`, `allow_up_thumb`, `up_count_image`, `up_image_side`, `up_image_size`, `up_thumb_size`) VALUES (1,'Администраторы','all',1,'all',1,1,1,1,1,1,1,1,1,1,50,'101',1,1,1,0,1,1,1,1,1,1,0,'{THEME}/images/icon_1.gif',0,1,1,1,1,1,1,0,1,500,1000,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,'<b><span style=\"color:red\">','</span></b>',1,1,'all',0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,1,0,'zip,rar,exe,doc,pdf,swf',4096,0,2,1,0,0,0,0,1,0,0,1,0,0,1,0,0,1,'',1,1,1,3,'800x600',300,'200x150'),(2,'Главные редакторы','all',1,'all',1,1,1,1,1,0,1,1,1,1,50,'101',1,1,1,0,2,1,1,1,1,1,0,'{THEME}/images/icon_2.gif',0,1,0,1,1,1,1,0,1,500,1000,1,1,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,'','',1,1,'all',0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,'zip,rar,exe,doc,pdf,swf',4096,0,2,1,0,0,0,0,2,0,0,2,0,0,2,0,0,2,'',1,1,1,3,'800x600',300,'200x150'),(3,'Журналисты','all',1,'all',1,1,1,1,0,0,1,0,1,1,50,'101',1,1,1,0,3,0,1,1,1,1,0,'{THEME}/images/icon_3.gif',0,1,0,1,1,1,1,0,1,500,1000,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,'','',1,1,'all',0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,'zip,rar,exe,doc,pdf,swf',4096,0,2,1,0,0,0,0,3,0,0,3,0,0,3,0,0,3,'',1,1,1,3,'800x600',300,'200x150'),(4,'Посетители','all',1,'all',0,1,1,1,0,0,0,0,0,1,20,'101',1,1,1,0,4,0,1,1,1,1,0,'{THEME}/images/icon_4.gif',0,1,0,1,0,1,1,1,0,500,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,'','',1,0,'all',0,0,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,'zip,rar,exe,doc,pdf,swf',4096,0,2,1,0,2,0,0,4,0,0,4,0,0,4,0,0,4,'',0,0,0,1,'800x600',300,'200x150'),(5,'Гости','all',0,'all',0,1,0,0,0,0,0,0,0,0,0,'0',1,0,1,0,5,0,1,1,1,0,1,'{THEME}/images/icon_5.gif',0,1,0,0,0,0,1,1,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'all',0,0,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,'',0,0,2,1,0,2,0,0,5,0,0,5,0,0,5,0,0,5,'',0,0,0,1,'',0,'');
/*!40000 ALTER TABLE `dle_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_users`
--

DROP TABLE IF EXISTS `dle_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_users` (
  `email` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(40) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_num` mediumint(8) NOT NULL DEFAULT '0',
  `comm_num` mediumint(8) NOT NULL DEFAULT '0',
  `user_group` smallint(5) NOT NULL DEFAULT '4',
  `lastdate` varchar(20) NOT NULL DEFAULT '',
  `reg_date` varchar(20) NOT NULL DEFAULT '',
  `banned` varchar(5) NOT NULL DEFAULT '',
  `allow_mail` tinyint(1) NOT NULL DEFAULT '1',
  `info` text NOT NULL,
  `signature` text NOT NULL,
  `foto` varchar(255) NOT NULL DEFAULT '',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `land` varchar(100) NOT NULL DEFAULT '',
  `favorites` text NOT NULL,
  `pm_all` smallint(5) NOT NULL DEFAULT '0',
  `pm_unread` smallint(5) NOT NULL DEFAULT '0',
  `time_limit` varchar(20) NOT NULL DEFAULT '',
  `xfields` text NOT NULL,
  `allowed_ip` varchar(255) NOT NULL DEFAULT '',
  `hash` varchar(32) NOT NULL DEFAULT '',
  `logged_ip` varchar(40) NOT NULL DEFAULT '',
  `restricted` tinyint(1) NOT NULL DEFAULT '0',
  `restricted_days` smallint(4) NOT NULL DEFAULT '0',
  `restricted_date` varchar(15) NOT NULL DEFAULT '',
  `timezone` varchar(100) NOT NULL DEFAULT '',
  `news_subscribe` tinyint(1) NOT NULL DEFAULT '0',
  `comments_reply_subscribe` tinyint(1) NOT NULL DEFAULT '0',
  `twofactor_auth` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_users`
--

LOCK TABLES `dle_users` WRITE;
/*!40000 ALTER TABLE `dle_users` DISABLE KEYS */;
INSERT INTO `dle_users` (`email`, `password`, `name`, `user_id`, `news_num`, `comm_num`, `user_group`, `lastdate`, `reg_date`, `banned`, `allow_mail`, `info`, `signature`, `foto`, `fullname`, `land`, `favorites`, `pm_all`, `pm_unread`, `time_limit`, `xfields`, `allowed_ip`, `hash`, `logged_ip`, `restricted`, `restricted_days`, `restricted_date`, `timezone`, `news_subscribe`, `comments_reply_subscribe`, `twofactor_auth`) VALUES ('vitaminiby@ya.ru','$2y$10$jtxP35EhtC/BnnHpqQM19eDnMKUAa3Aaqh5u3GyEZZCmSBXgl36la','admin',1,19,1,1,'1485515213','1484138815','',1,'','','','Сергей Гаев','Минск','2,7',0,0,'','','','','46.53.201.155',0,0,'','',0,0,0),('chatoffon@ya.ru','$2y$10$ou2tTn5e2Ij5xbLzNTYwZO9v40CfZJbPgcKLs8JrlL5.mhI9I3C7C','Сергей Семенов',2,0,0,4,'1485496744','1484835147','',1,'','','//wikipet.by/uploads/fotos/foto_2.jpg','Сергей Семенов','','2',0,0,'','','','','46.53.201.155',0,0,'','',0,0,0),('tamaragrinevich@gmail.com','$2y$10$RMjqykfKvW.Ah.J5Qsgf2eZwigeWabzW1ymKUc4UNx5FI2uSq/IPq','tglogin',3,0,1,4,'1485279588','1485165353','',1,'','','//wikipet.by/uploads/fotos/foto_3.jpg','','','',0,0,'','','','','46.53.201.155',0,0,'','',0,0,0),('user1@gmail.com','$2y$10$iQiSTird0IzLtHVwtDshfObAZo3J4YjbD/ABnakQiWn3D5KsOAUgG','User 1',4,0,1,4,'1485284387','1485186418','',1,'','','//wikipet.by/uploads/fotos/foto_4.jpg','','','',0,0,'','','','','46.53.201.155',0,0,'','',0,0,0),('user2@gmail.com','$2y$10$Ma6Pq2zZ7Ojx7QWnBhDEuu.0bntUCQp6rHQY2JvBAX.fMt.4NaPHq','User2',5,0,0,4,'1485188448','1485186502','',1,'','','','','','',0,0,'','','','','46.53.201.155',0,0,'','',0,0,0),('user3@gmail.com','$2y$10$blZZjpi29jI3lMfmJVGgaeGIomu0Wv3wuZcxVc21tUKQ8uFduuXrS','User3',6,0,0,4,'1485186573','1485186573','',1,'','','','','','',0,0,'','','','','46.53.201.155',0,0,'','',0,0,0),('user4@gmail.com','$2y$10$fUFqZXl4Vg1s7.u2lo3z7.9Kr2cp7ueaIjAyD31/b9AwocXClnJKS','User4',7,0,0,4,'1485186629','1485186629','',1,'','','','','','',0,0,'','','','','46.53.201.155',0,0,'','',0,0,0),('user5@gmail.com','$2y$10$a7vwF1Ut6NjWqxWFZXKuweGWoCq9KcZmhv1Yk77daI/tPQc7Ndfsa','User 5',8,0,1,4,'1485197349','1485186697','',1,'','','//wikipet.by/uploads/fotos/foto_8.jpg','','','',0,0,'','','','','46.53.201.155',0,0,'','',0,0,0);
/*!40000 ALTER TABLE `dle_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_views`
--

DROP TABLE IF EXISTS `dle_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_views` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_views`
--

LOCK TABLES `dle_views` WRITE;
/*!40000 ALTER TABLE `dle_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_vote`
--

DROP TABLE IF EXISTS `dle_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_vote` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `category` text NOT NULL,
  `vote_num` mediumint(8) NOT NULL DEFAULT '0',
  `date` varchar(25) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `approve` tinyint(1) NOT NULL DEFAULT '1',
  `start` varchar(15) NOT NULL DEFAULT '',
  `end` varchar(15) NOT NULL DEFAULT '',
  `grouplevel` varchar(250) NOT NULL DEFAULT 'all',
  PRIMARY KEY (`id`),
  KEY `approve` (`approve`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_vote`
--

LOCK TABLES `dle_vote` WRITE;
/*!40000 ALTER TABLE `dle_vote` DISABLE KEYS */;
INSERT INTO `dle_vote` (`id`, `category`, `vote_num`, `date`, `title`, `body`, `approve`, `start`, `end`, `grouplevel`) VALUES (1,'all',0,'2017-01-11 15:46:55','Оцените работу движка','Лучший из новостных<br />Неплохой движок<br />Устраивает ... но ...<br />Встречал и получше<br />Совсем не понравился',1,'','','all');
/*!40000 ALTER TABLE `dle_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_vote_result`
--

DROP TABLE IF EXISTS `dle_vote_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_vote_result` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `name` varchar(40) NOT NULL DEFAULT '',
  `vote_id` mediumint(8) NOT NULL DEFAULT '0',
  `answer` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `answer` (`answer`),
  KEY `vote_id` (`vote_id`),
  KEY `ip` (`ip`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_vote_result`
--

LOCK TABLES `dle_vote_result` WRITE;
/*!40000 ALTER TABLE `dle_vote_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_vote_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dle_xfsearch`
--

DROP TABLE IF EXISTS `dle_xfsearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dle_xfsearch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `tagname` varchar(50) NOT NULL DEFAULT '',
  `tagvalue` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`),
  KEY `tagname` (`tagname`),
  KEY `tagvalue` (`tagvalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dle_xfsearch`
--

LOCK TABLES `dle_xfsearch` WRITE;
/*!40000 ALTER TABLE `dle_xfsearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `dle_xfsearch` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-27 14:15:05
