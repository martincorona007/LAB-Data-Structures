-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: libraryt
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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `ID_book` int(11) NOT NULL AUTO_INCREMENT,
  `nameb` varchar(80) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `speciality` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_book`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Data structures','Aguilar','Systems'),(2,'Aprender a programar c++','Nath','Systems'),(3,'Programando con el chavo','chespirito','Systems'),(4,'Automatas','Luis Joyanes','Systems'),(5,'Database','Diana Mcain','Systems'),(6,'Circuitos Integrados','Israel Vallejo','Eletronics'),(7,'Circuitos Distribuidos','Gilberto Sandoval','Eletronics'),(8,'Ecuaciones diferenciales para circuitos','Mateo Silva','Eletronics'),(9,'Sistemas digitales','Diego Mendez','Eletronics'),(10,'Circuitos programables','Daniel Alcatar','Eletronics'),(11,'Becoming Michelle Obama','Michelle Obama','Law'),(12,'My Own Words','Ruth Bader Ginsburg','Law'),(13,'La dictadura','Ramon Valdez','Law'),(14,'La reforma energetica','Manuel Lopez','Law'),(15,'Leyes Constitucionales','Pablo Alfonso','Law'),(16,'Altlas de operatoria dental','Camila Florez','Odontologia'),(17,'Odontopediatra','Silvina G','Odontologia'),(18,'Fundamentos de Odontologia','Jannine Garcia','Odontologia'),(19,'Urgencias Odontologicas','Chavez Lamks','Odontologia'),(20,'Anatomia','Rob Mendez','Odontologia'),(21,'Business Insider','Mark Buffet','Business'),(22,'Aproach to Business','Martha Mug','Business'),(23,'Administration','Cassandra Beg','Business'),(24,'Parts of Business','Marie velez','Business'),(25,'Bitcoin,Blackchain','Marie velez','Business');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan`
--

DROP TABLE IF EXISTS `loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan` (
  `ID_loan` int(11) NOT NULL AUTO_INCREMENT,
  `ID_user` int(11) NOT NULL,
  `ID_book` int(11) NOT NULL,
  `dateLoan` date NOT NULL,
  `deadLine` date NOT NULL,
  PRIMARY KEY (`ID_loan`),
  KEY `ID_user` (`ID_user`),
  KEY `ID_book` (`ID_book`),
  CONSTRAINT `loan_ibfk_1` FOREIGN KEY (`ID_user`) REFERENCES `user` (`ID_user`),
  CONSTRAINT `loan_ibfk_2` FOREIGN KEY (`ID_book`) REFERENCES `books` (`ID_book`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan`
--

LOCK TABLES `loan` WRITE;
/*!40000 ALTER TABLE `loan` DISABLE KEYS */;
INSERT INTO `loan` VALUES (1,2,4,'2018-11-05','2018-11-07'),(2,6,4,'2018-11-07','2018-11-09'),(3,5,24,'2018-11-12','2018-11-14'),(4,4,24,'2018-11-16','2018-11-19'),(5,1,17,'2018-11-19','2018-11-21'),(6,2,8,'2018-11-20','2018-11-22'),(7,8,10,'2018-11-23','2018-11-26'),(8,10,14,'2018-11-27','2018-11-29');
/*!40000 ALTER TABLE `loan` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER beforeDelete AFTER DELETE ON loan 
FOR EACH ROW
INSERT INTO loanhistoryT(ID_loan,ID_user,ID_book,dateLoan,deadLine) VALUES(OLD.ID_loan,OLD.ID_user,OLD.ID_book,OLD.dateLoan,OLD.deadLine) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `loanhistoryt`
--

DROP TABLE IF EXISTS `loanhistoryt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loanhistoryt` (
  `ID_loanH` int(11) NOT NULL AUTO_INCREMENT,
  `ID_loan` int(11) NOT NULL,
  `ID_user` int(11) NOT NULL,
  `ID_book` int(11) NOT NULL,
  `dateLoan` date NOT NULL,
  `deadLine` date NOT NULL,
  PRIMARY KEY (`ID_loanH`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loanhistoryt`
--

LOCK TABLES `loanhistoryt` WRITE;
/*!40000 ALTER TABLE `loanhistoryt` DISABLE KEYS */;
INSERT INTO `loanhistoryt` VALUES (1,10,5,19,'2018-11-28','2018-11-30'),(2,9,7,10,'2018-11-28','2018-11-30');
/*!40000 ALTER TABLE `loanhistoryt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magazine`
--

DROP TABLE IF EXISTS `magazine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `magazine` (
  `ID_maga` int(11) NOT NULL AUTO_INCREMENT,
  `namema` varchar(50) NOT NULL,
  `editionDate` date NOT NULL,
  `totalVol` int(11) NOT NULL,
  PRIMARY KEY (`ID_maga`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magazine`
--

LOCK TABLES `magazine` WRITE;
/*!40000 ALTER TABLE `magazine` DISABLE KEYS */;
INSERT INTO `magazine` VALUES (1,'Altonivel','2017-02-01',4),(2,'ITProfessional','2017-08-05',19),(3,'Expansion','2017-07-01',8);
/*!40000 ALTER TABLE `magazine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newspaper`
--

DROP TABLE IF EXISTS `newspaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newspaper` (
  `ID_news` int(11) NOT NULL AUTO_INCREMENT,
  `nameNP` varchar(50) NOT NULL,
  `datenews` date NOT NULL,
  `statee` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_news`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newspaper`
--

LOCK TABLES `newspaper` WRITE;
/*!40000 ALTER TABLE `newspaper` DISABLE KEYS */;
INSERT INTO `newspaper` VALUES (1,'El mural','2018-11-08','Jalisco'),(2,'Solo ofertas','2017-09-20','Jalisco'),(3,'El Informador','2016-01-07','Monterrey');
/*!40000 ALTER TABLE `newspaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `ID_user` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `f_Name` varchar(50) NOT NULL,
  `l_Name` varchar(50) NOT NULL,
  `type_user` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_user`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Gido','Bugarin','Ramirez','Teacher'),(2,'Marie','Jimenez','Sanchez','Teacher'),(3,'Gilberto','Sandoval','Sanchez','Teacher'),(4,'Rogelio','Valadez','Aguilar','Student'),(5,'Cynthia','Garcia','Hernandez','Student'),(6,'Itzel','Martinez','Gonzalez','Student'),(7,'Jocelyn','Venegas','Lopez','Teacher'),(8,'Karen','Beltran','Sanchez','Teacher'),(9,'David','Inigez','Lopez','Student'),(10,'Isis','Garcia','Hernandez','Student');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'libraryt'
--

--
-- Dumping routines for database 'libraryt'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-02 21:26:43
