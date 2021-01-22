-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: db_hotel
-- ------------------------------------------------------
-- Server version	5.6.39-log

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
-- Table structure for table `reserve`
--

DROP TABLE IF EXISTS `reserve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reserve` (
  `ID_reserve` int(11) NOT NULL AUTO_INCREMENT,
  `FK_ID_r` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `final_rate` float DEFAULT NULL,
  PRIMARY KEY (`ID_reserve`),
  KEY `FK_ID_r` (`FK_ID_r`),
  CONSTRAINT `reserve_ibfk_1` FOREIGN KEY (`FK_ID_r`) REFERENCES `rooms` (`ID_r`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserve`
--

LOCK TABLES `reserve` WRITE;
/*!40000 ALTER TABLE `reserve` DISABLE KEYS */;
INSERT INTO `reserve` VALUES (1,8,'2019-10-14 06:29:03',NULL,NULL),(2,10,'2019-10-14 06:29:56','2019-10-14 09:59:36',268),(3,6,'2019-10-14 08:59:03',NULL,NULL),(4,6,'2019-10-14 09:59:27',NULL,NULL),(5,1,'2019-11-24 08:34:25',NULL,NULL);
/*!40000 ALTER TABLE `reserve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `ID_r` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `description` varchar(80) DEFAULT NULL,
  `rate` float NOT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_r`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'Taylor Huels','Velit enim maxime ',850,'Busy'),(2,'Laney Durgan','Voluptatum dolores ',850,'Free'),(3,'Miss Treva McCullough','Vel amet excepturi aut.',250,'Maintenance'),(4,'Christy Wiegand','Tempora sit aut ipsa.',450,'Free'),(5,'Prof. Landen Pfeffer MD','Vel omnistio quisquam odit.',350,'Busy'),(6,'Olen Donnelly','Eum molestiam nihil eaque.',268,'Free'),(7,'Elwin Mann II','Occaecatiquod.',1682,'Maintenance'),(8,'Rebecca Connelly','Ipsam porerum.',1500,'Busy'),(9,'Kristin Ondricka','Qui dolores si corporis.',2500,'Cleaning'),(10,'Rosalind Von','Id itaque culpa ut beatae. Qdolor.',3093,'Busy'),(11,'Kay Bailey','Quia at nostrum voluptatibus bio.',1501,'Free'),(12,'Dr. Moriah Cronin II','Et possimus perspiciatis vusto.',10139,'Free'),(13,'Andreanne Schamberger II','Eum beatae nemo qui s ut.',6254,'Free'),(14,'Britney Jacobi','Repellendus fugiat utro.',4459,'Maintenance'),(15,'Jefferey Walter','Voluptas et repellat neca.',2800,'Free'),(16,'Ms. Albina Nader','Iusto dolorumo rerum e.',5540,'Free'),(17,'Everett Connelly','Quidem veli qui i.',2946,'Cleaning'),(18,'Finn Wiza','Voluptas sit voluptate i.',4800,'Free'),(19,'Kayleigh Okuneva','Consequatur sed ores.',7310,'Free'),(20,'Prof. Alaina Turcotte','Totam commodi animi ut eum.',5246,'Cleaning');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_hotel'
--

--
-- Dumping routines for database 'db_hotel'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-02 21:26:58
