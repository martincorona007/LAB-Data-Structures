-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: p1
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
-- Table structure for table `academic background`
--

DROP TABLE IF EXISTS `academic background`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `academic background` (
  `ID_ab` int(11) NOT NULL AUTO_INCREMENT,
  `FK_ID_student` int(11) NOT NULL,
  `school_type` varchar(30) DEFAULT NULL,
  `other_school_type` varchar(30) NOT NULL,
  `score_highschool` varchar(5) NOT NULL,
  PRIMARY KEY (`ID_ab`),
  KEY `FK_ID_student` (`FK_ID_student`),
  CONSTRAINT `academic background_ibfk_1` FOREIGN KEY (`FK_ID_student`) REFERENCES `student` (`ID_student`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic background`
--

LOCK TABLES `academic background` WRITE;
/*!40000 ALTER TABLE `academic background` DISABLE KEYS */;
/*!40000 ALTER TABLE `academic background` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_student`
--

DROP TABLE IF EXISTS `address_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_student` (
  `ID_address` int(11) NOT NULL AUTO_INCREMENT,
  `FK_ID_student` int(11) NOT NULL,
  `township` varchar(30) NOT NULL,
  `colony` varchar(60) NOT NULL,
  `street` varchar(60) NOT NULL,
  `cell_phone` varchar(30) NOT NULL,
  `num_ext` varchar(30) NOT NULL,
  `num_int` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_address`),
  KEY `FK_ID_student` (`FK_ID_student`),
  CONSTRAINT `address_student_ibfk_1` FOREIGN KEY (`FK_ID_student`) REFERENCES `student` (`ID_student`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_student`
--

LOCK TABLES `address_student` WRITE;
/*!40000 ALTER TABLE `address_student` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_tutor`
--

DROP TABLE IF EXISTS `address_tutor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_tutor` (
  `ID_address` int(11) NOT NULL AUTO_INCREMENT,
  `FK_ID_tutor` int(11) NOT NULL,
  `township` varchar(30) NOT NULL,
  `colony` varchar(60) NOT NULL,
  `street` varchar(60) NOT NULL,
  `cell_phone` varchar(30) NOT NULL,
  `num_ext` varchar(30) NOT NULL,
  `num_int` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_address`),
  KEY `FK_ID_tutor` (`FK_ID_tutor`),
  CONSTRAINT `address_tutor_ibfk_1` FOREIGN KEY (`FK_ID_tutor`) REFERENCES `tutor` (`ID_tutor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_tutor`
--

LOCK TABLES `address_tutor` WRITE;
/*!40000 ALTER TABLE `address_tutor` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_tutor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `birth_data`
--

DROP TABLE IF EXISTS `birth_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `birth_data` (
  `ID_bd` int(11) NOT NULL AUTO_INCREMENT,
  `FK_ID_student` int(11) NOT NULL,
  `state_birth` varchar(30) NOT NULL,
  `township_birth` varchar(30) NOT NULL,
  `date_birth` varchar(10) NOT NULL,
  `curp` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_bd`),
  KEY `FK_ID_student` (`FK_ID_student`),
  CONSTRAINT `birth_data_ibfk_1` FOREIGN KEY (`FK_ID_student`) REFERENCES `student` (`ID_student`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birth_data`
--

LOCK TABLES `birth_data` WRITE;
/*!40000 ALTER TABLE `birth_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `birth_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview`
--

DROP TABLE IF EXISTS `interview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interview` (
  `ID_inter` int(11) NOT NULL AUTO_INCREMENT,
  `FK_ID_student` int(11) NOT NULL,
  `Q1` text NOT NULL,
  `Q2` text NOT NULL,
  `Q3` text NOT NULL,
  `Q4` text NOT NULL,
  `Q5` text NOT NULL,
  `Q6` text NOT NULL,
  `Q7` text NOT NULL,
  `Q8` text NOT NULL,
  `Q9` text NOT NULL,
  `Q10` text NOT NULL,
  `Q11` text NOT NULL,
  `Q12` text NOT NULL,
  `Q13` text NOT NULL,
  `Q14` text NOT NULL,
  `Q15` text NOT NULL,
  `Q16` text NOT NULL,
  `Q17` text NOT NULL,
  `Q18` text NOT NULL,
  `Q19` text NOT NULL,
  `Q20` text NOT NULL,
  `Q21` text NOT NULL,
  `Q22` text NOT NULL,
  `Q23` text NOT NULL,
  `Q24` text NOT NULL,
  `Q25` text NOT NULL,
  `Q26` text NOT NULL,
  `Q27` text NOT NULL,
  PRIMARY KEY (`ID_inter`),
  KEY `FK_ID_student` (`FK_ID_student`),
  CONSTRAINT `interview_ibfk_1` FOREIGN KEY (`FK_ID_student`) REFERENCES `student` (`ID_student`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview`
--

LOCK TABLES `interview` WRITE;
/*!40000 ALTER TABLE `interview` DISABLE KEYS */;
/*!40000 ALTER TABLE `interview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `ID_student` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(40) NOT NULL,
  `m_name` varchar(40) NOT NULL,
  `l_name` varchar(40) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(20) NOT NULL,
  `blood_type` varchar(40) NOT NULL,
  `IMSS_number` varchar(40) NOT NULL,
  `civil_status` varchar(10) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `occupation` varchar(40) NOT NULL,
  PRIMARY KEY (`ID_student`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutor`
--

DROP TABLE IF EXISTS `tutor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tutor` (
  `ID_tutor` int(11) NOT NULL AUTO_INCREMENT,
  `FK_ID_student` int(11) NOT NULL,
  `f_name` varchar(40) NOT NULL,
  `m_name` varchar(40) NOT NULL,
  `l_name` varchar(40) NOT NULL,
  `civil_status` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  PRIMARY KEY (`ID_tutor`),
  KEY `FK_ID_student` (`FK_ID_student`),
  CONSTRAINT `tutor_ibfk_1` FOREIGN KEY (`FK_ID_student`) REFERENCES `student` (`ID_student`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutor`
--

LOCK TABLES `tutor` WRITE;
/*!40000 ALTER TABLE `tutor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tutor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'p1'
--

--
-- Dumping routines for database 'p1'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-02 21:25:33
