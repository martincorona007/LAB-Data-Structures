-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: proyectatmx2
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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `ID_cat` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_cat`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Proyectos Agropecuarios'),(2,'Proyectos Industriales'),(3,'Proyectos Infraestructura social'),(4,'Proyectos Infraestructura economica'),(5,'Proyectos de construccion'),(6,'Proyectos de energia'),(7,'Proyectos de Mineria'),(8,'Proyectos de transformacion'),(9,'Proyectos de medioambiente'),(10,'Proyectos de banca o finanzas'),(11,'Proyectos de ingenieria'),(12,'Proyectos economicos'),(13,'Proyectos fiscales'),(14,'Proyectos legales'),(15,'Proyectos medicos'),(16,'Proyectos matematicos'),(17,'Proyectos artisticos'),(18,'Proyectos literarios'),(19,'Proyectos tecnologicos'),(20,'Proyectos informaticos'),(21,'Proyectos educativos'),(22,'Proyectos de investigacion');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_has_category`
--

DROP TABLE IF EXISTS `document_has_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_has_category` (
  `FK_ID_doc` int(11) NOT NULL,
  `FK_ID_cat` int(11) NOT NULL,
  PRIMARY KEY (`FK_ID_doc`,`FK_ID_cat`),
  KEY `FK_ID_doc` (`FK_ID_doc`),
  KEY `FK_ID_cat` (`FK_ID_cat`),
  CONSTRAINT `document_has_category_ibfk_1` FOREIGN KEY (`FK_ID_cat`) REFERENCES `category` (`ID_cat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `document_has_category_ibfk_2` FOREIGN KEY (`FK_ID_doc`) REFERENCES `documentation` (`ID_doc`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_has_category`
--

LOCK TABLES `document_has_category` WRITE;
/*!40000 ALTER TABLE `document_has_category` DISABLE KEYS */;
INSERT INTO `document_has_category` VALUES (10,16),(51,7),(65,19),(67,6),(74,15),(75,16),(77,4),(78,8);
/*!40000 ALTER TABLE `document_has_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentation`
--

DROP TABLE IF EXISTS `documentation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentation` (
  `ID_doc` int(11) NOT NULL AUTO_INCREMENT,
  `introduction` text NOT NULL,
  `scope` text NOT NULL,
  `antecedentes` text NOT NULL,
  `objetivo` text NOT NULL,
  `estudio_mercado` text NOT NULL,
  `estudio_tecnico` text NOT NULL,
  `estudio_financiero` text NOT NULL,
  `tiempo_desarrollo` int(11) NOT NULL,
  `riesgos_retos` text NOT NULL,
  `donde_nacio_el_project` text NOT NULL,
  PRIMARY KEY (`ID_doc`),
  KEY `ID_doc` (`ID_doc`),
  CONSTRAINT `documentation_ibfk_1` FOREIGN KEY (`ID_doc`) REFERENCES `projects` (`FK_ID_doc`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentation`
--

LOCK TABLES `documentation` WRITE;
/*!40000 ALTER TABLE `documentation` DISABLE KEYS */;
INSERT INTO `documentation` VALUES (10,'Dodo, \'the best way to hear the name again!\' \'I won\'t indeed!\' said the Dodo, \'the best way to change them--\' when she looked at Alice. \'I\'M not a mile high,\' said Alice. \'I\'ve read that in about.','Cat, as soon as the Lory positively refused to tell me your history, she do.\' \'I\'ll tell it her,\' said the Hatter, \'you wouldn\'t talk about wasting IT. It\'s HIM.\' \'I don\'t think--\' \'Then you.','Alice knew it was her turn or not. \'Oh, PLEASE mind what you\'re talking about,\' said Alice. \'Why not?\' said the Queen. \'It proves nothing of the doors of the table, but there were three little.','King, and the choking of the wood--(she considered him to you, Though they were trying to find it out, we should all have our heads cut off, you know. So you see, as she leant against a buttercup to.','English!\' said the Cat, as soon as she went to school in the sun. (IF you don\'t even know what to uglify is, you ARE a simpleton.\' Alice did not come the same words as before, \'It\'s all her.','So Alice got up this morning, but I think you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said very humbly; \'I won\'t interrupt again. I dare say you\'re wondering why I don\'t.','I am so VERY wide, but she saw them, they set to work at once set to work very diligently to write with one of them.\' In another moment down went Alice after it, never once considering how in the.',34,'Expedita quasi aut sapiente est et repudiandae cupiditate. Quis harum commodi aspernatur neque. Sint doloribus modi et modi. Nostrum at necessitatibus expedita officiis.','Fugit exercitationem in consequatur. Iste eaque et dicta at. Dolorem veritatis vel sit laudantium non suscipit omnis. Animi ex voluptatem quae rerum dignissimos.'),(51,'OURS they had to kneel down on their slates, and she went on, \'and most of \'em do.\' \'I don\'t even know what to uglify is, you know. Which shall sing?\' \'Oh, YOU sing,\' said the Rabbit asked. \'No, I.','Alice recognised the White Rabbit read out, at the Gryphon replied very politely, feeling quite pleased to find herself talking familiarly with them, as if he would deny it too: but the three.','NEVER come to the other two were using it as you are; secondly, because she was losing her temper. \'Are you content now?\' said the Dormouse, without considering at all the while, till at last she.','She was looking at it again: but he could think of any use, now,\' thought poor Alice, \'when one wasn\'t always growing larger and smaller, and being so many different sizes in a natural way. \'I.','Queen, and Alice could not be denied, so she set the little dears came jumping merrily along hand in her French lesson-book. The Mouse did not like to be patted on the OUTSIDE.\' He unfolded the.','March Hare meekly replied. \'Yes, but I shall have to fly; and the Gryphon remarked: \'because they lessen from day to such stuff? Be off, or I\'ll kick you down stairs!\' \'That is not said right,\' said.','The great question is, what did the Dormouse indignantly. However, he consented to go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first she thought of herself,.',41,'Consequuntur sint ullam eum accusamus vel iure aliquid. Temporibus autem error distinctio illo.','Qui quod nihil sit voluptatem molestiae veniam. Incidunt doloremque quia ad sit dolor dolores quia. Dolores ipsam aut est maxime maiores.'),(65,'And then, turning to the seaside once in her life before, and behind them a new kind of thing never happened, and now here I am to see its meaning. \'And just as she could, and waited to see that.','Number One,\' said Alice. \'Why not?\' said the Duchess. \'Everything\'s got a moral, if only you can have no idea what to beautify is, I suppose?\' \'Yes,\' said Alice more boldly: \'you know you\'re growing.','The poor little thing grunted in reply (it had left off when they liked, and left off quarrelling with the other side of the accident, all except the King, with an air of great dismay, and began.','The Hatter was the Duchess\'s knee, while plates and dishes crashed around it--once more the pig-baby was sneezing and howling alternately without a cat! It\'s the most curious thing I know. Silence.','Rabbit noticed Alice, as she remembered how small she was exactly the right word) \'--but I shall have to ask them what the name \'W. RABBIT\' engraved upon it. She went on saying to her full size by.','So she stood watching them, and all must have imitated somebody else\'s hand,\' said the King, and the jury eagerly wrote down on one knee. \'I\'m a poor man, your Majesty,\' said Alice a good.','Caterpillar, and the Panther were sharing a pie--\' [later editions continued as follows When the Mouse had changed his mind, and was going to begin with,\' the Mock Turtle with a kind of thing never.',32,'Eaque ut minima dignissimos accusantium nesciunt soluta sapiente. Odio qui sint atque placeat vel. Sunt est culpa et. Laboriosam voluptates nesciunt qui qui hic.','Minima aut enim autem sunt ex beatae. Et eum cupiditate voluptates voluptates expedita. Aut rem animi qui sunt.'),(67,'Alice cautiously replied, not feeling at all know whether it was a good deal until she had looked under it, and fortunately was just going to do it.\' (And, as you can--\' \'Swim after them!\' screamed.','Alice to herself. At this moment Alice felt dreadfully puzzled. The Hatter\'s remark seemed to be a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER WILLIAM,\"\' said the King. \'Shan\'t,\' said the.','So she began thinking over other children she knew that it made Alice quite jumped; but she stopped hastily, for the immediate adoption of more energetic remedies--\' \'Speak English!\' said the King.','There was no label this time she saw them, they set to work, and very angrily. \'A knot!\' said Alice, rather doubtfully, as she had quite forgotten the Duchess said after a few yards off. The Cat.','I grow at a reasonable pace,\' said the King. \'Nearly two miles high,\' added the Dormouse. \'Fourteenth of March, I think I can creep under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you were.','Alice had learnt several things of this rope--Will the roof bear?--Mind that loose slate--Oh, it\'s coming down! Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, the Lizard) could not.','Alice was too dark to see what was on the spot.\' This did not at all fairly,\' Alice began, in a sorrowful tone, \'I\'m afraid I am, sir,\' said Alice; not that she had expected: before she had grown so.',3,'Dolores quia expedita inventore optio cupiditate aliquid dolores. Consequatur facere delectus rem sit qui. Asperiores at laborum sit rerum et maiores pariatur molestiae.','Dolor ab facere aut repudiandae laudantium. Occaecati earum eum hic eum. Sunt voluptatem repellendus soluta ex voluptatum ea. Assumenda omnis in qui ut non.'),(74,'Dodo, \'the best way to hear the name again!\' \'I won\'t indeed!\' said the Dodo, \'the best way to change them--\' when she looked at Alice. \'I\'M not a mile high,\' said Alice. \'I\'ve read that in about.','Cat, as soon as the Lory positively refused to tell me your history, she do.\' \'I\'ll tell it her,\' said the Hatter, \'you wouldn\'t talk about wasting IT. It\'s HIM.\' \'I don\'t think--\' \'Then you.','Alice knew it was her turn or not. \'Oh, PLEASE mind what you\'re talking about,\' said Alice. \'Why not?\' said the Queen. \'It proves nothing of the doors of the table, but there were three little.','King, and the choking of the wood--(she considered him to you, Though they were trying to find it out, we should all have our heads cut off, you know. So you see, as she leant against a buttercup to.','English!\' said the Cat, as soon as she went to school in the sun. (IF you don\'t even know what to uglify is, you ARE a simpleton.\' Alice did not come the same words as before, \'It\'s all her.','So Alice got up this morning, but I think you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said very humbly; \'I won\'t interrupt again. I dare say you\'re wondering why I don\'t.','I am so VERY wide, but she saw them, they set to work at once set to work very diligently to write with one of them.\' In another moment down went Alice after it, never once considering how in the.',34,'Expedita quasi aut sapiente est et repudiandae cupiditate. Quis harum commodi aspernatur neque. Sint doloribus modi et modi. Nostrum at necessitatibus expedita officiis.','Fugit exercitationem in consequatur. Iste eaque et dicta at. Dolorem veritatis vel sit laudantium non suscipit omnis. Animi ex voluptatem quae rerum dignissimos.'),(75,'Dodo, \'the best way to hear the name again!\' \'I won\'t indeed!\' said the Dodo, \'the best way to change them--\' when she looked at Alice. \'I\'M not a mile high,\' said Alice. \'I\'ve read that in about.','Cat, as soon as the Lory positively refused to tell me your history, she do.\' \'I\'ll tell it her,\' said the Hatter, \'you wouldn\'t talk about wasting IT. It\'s HIM.\' \'I don\'t think--\' \'Then you.','Alice knew it was her turn or not. \'Oh, PLEASE mind what you\'re talking about,\' said Alice. \'Why not?\' said the Queen. \'It proves nothing of the doors of the table, but there were three little.','King, and the choking of the wood--(she considered him to you, Though they were trying to find it out, we should all have our heads cut off, you know. So you see, as she leant against a buttercup to.','English!\' said the Cat, as soon as she went to school in the sun. (IF you don\'t even know what to uglify is, you ARE a simpleton.\' Alice did not come the same words as before, \'It\'s all her.','So Alice got up this morning, but I think you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said very humbly; \'I won\'t interrupt again. I dare say you\'re wondering why I don\'t.','I am so VERY wide, but she saw them, they set to work at once set to work very diligently to write with one of them.\' In another moment down went Alice after it, never once considering how in the.',34,'Expedita quasi aut sapiente est et repudiandae cupiditate. Quis harum commodi aspernatur neque. Sint doloribus modi et modi. Nostrum at necessitatibus expedita officiis.','Fugit exercitationem in consequatur. Iste eaque et dicta at. Dolorem veritatis vel sit laudantium non suscipit omnis. Animi ex voluptatem quae rerum dignissimos.'),(77,'Eaglet, and several other curious creatures. Alice led the way, and then hurried on, Alice started to her ear. \'You\'re thinking about something, my dear, YOU must cross-examine THIS witness.\' \'Well,.','Soup! \'Beautiful Soup! Who cares for you?\' said the Footman, and began bowing to the Mock Turtle. So she set to partners--\' \'--change lobsters, and retire in same order,\' continued the King. On this.','VERY short remarks, and she tried her best to climb up one of the same thing as a lark, And will talk in contemptuous tones of the busy farm-yard--while the lowing of the deepest contempt. \'I\'ve.','Said his father; \'don\'t give yourself airs! Do you think you\'re changed, do you?\' \'I\'m afraid I\'ve offended it again!\' For the Mouse had changed his mind, and was just going to shrink any further:.','Queens, and among them Alice recognised the White Rabbit as he spoke, and then I\'ll tell him--it was for bringing the cook and the fall NEVER come to an end! \'I wonder how many miles I\'ve fallen by.','Alice soon came upon a heap of sticks and dry leaves, and the turtles all advance! They are waiting on the slate. \'Herald, read the accusation!\' said the Mouse to tell me the list of the baby, the.','THAT direction,\' waving the other side will make you grow taller, and the blades of grass, but she could see it again, but it said nothing. \'This here young lady,\' said the Cat, \'a dog\'s not mad..',37,'Tenetur architecto aut laboriosam animi. Et saepe iusto adipisci. Repudiandae et eveniet illo asperiores. Est non atque quis omnis temporibus soluta quae.','Excepturi inventore est qui voluptatem repellat nobis. Molestiae ut temporibus quisquam non quibusdam. Maxime eum sit eaque voluptatibus. Dolorum laboriosam corrupti amet voluptatem.'),(78,'So they got thrown out to be ashamed of yourself for asking such a dreadful time.\' So Alice began to feel very sleepy and stupid), whether the blows hurt it or not. \'Oh, PLEASE mind what you\'re.','It means much the most important piece of evidence we\'ve heard yet,\' said the Rabbit coming to look at a king,\' said Alice. \'Did you say things are worse than ever,\' thought the poor little feet, I.','Mock Turtle said with some difficulty, as it could go, and making quite a long sleep you\'ve had!\' \'Oh, I\'ve had such a very difficult game indeed. The players all played at once set to work, and.','King said, turning to Alice. \'What IS the same thing, you know.\' \'Who is this?\' She said this she looked down into its mouth again, and Alice thought this must ever be A secret, kept from all the.','WHAT things?\' said the King said to herself, \'Which way? Which way?\', holding her hand on the look-out for serpents night and day! Why, I wouldn\'t be so easily offended, you know!\' The Mouse did not.','She stretched herself up and repeat \"\'TIS THE VOICE OF THE SLUGGARD,\"\' said the Hatter: \'but you could draw treacle out of a muchness\"--did you ever saw. How she longed to change the subject,\' the.','Alice, always ready to agree to everything that Alice could only hear whispers now and then I\'ll tell him--it was for bringing the cook took the thimble, saying \'We beg your pardon!\' cried Alice.',26,'Aliquid laboriosam optio quia molestiae delectus enim. Nam eaque magnam deserunt placeat ducimus quia veritatis et. Sapiente est repellendus facere.','Ut sunt et vel earum. Expedita consequatur totam et corporis. Magnam alias eveniet et est hic et. Amet rerum ex eligendi quod et.');
/*!40000 ALTER TABLE `documentation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interes_area`
--

DROP TABLE IF EXISTS `interes_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interes_area` (
  `ID_area` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_area`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interes_area`
--

LOCK TABLES `interes_area` WRITE;
/*!40000 ALTER TABLE `interes_area` DISABLE KEYS */;
INSERT INTO `interes_area` VALUES (1,'Proyectos Agropecuarios'),(2,'Proyectos Industriales'),(3,'Proyectos Infraestructura social'),(4,'Proyectos Infraestructura economica'),(5,'Proyectos de construccion'),(6,'Proyectos de energia'),(7,'Proyectos de Mineria'),(8,'Proyectos de transformacion'),(9,'Proyectos de medioambiente'),(10,'Proyectos de banca o finanzas'),(11,'Proyectos de ingenieria'),(12,'Proyectos economicos'),(13,'Proyectos fiscales'),(14,'Proyectos legales'),(15,'Proyectos medicos'),(16,'Proyectos matematicos'),(17,'Proyectos artisticos'),(18,'Proyectos literarios'),(19,'Proyectos tecnologicos'),(20,'Proyectos informaticos'),(21,'Proyectos educativos'),(22,'Proyectos de investigacion');
/*!40000 ALTER TABLE `interes_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `ID_project` int(11) NOT NULL AUTO_INCREMENT,
  `FK_ID_doc` int(11) NOT NULL,
  `FK_ID_user` int(11) NOT NULL,
  `pago_publicidad` tinyint(1) NOT NULL,
  `pago_derechoAutor` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID_project`),
  KEY `FK_ID_doc` (`FK_ID_doc`),
  KEY `FK_ID_user` (`FK_ID_user`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,74,47,1,1),(2,15,72,1,0),(3,65,36,0,1),(4,89,79,0,1),(5,75,77,0,0),(6,10,36,1,1),(7,5,63,0,1),(8,72,90,0,0),(9,51,96,0,0),(10,3,59,1,1),(11,35,93,1,0),(12,79,70,1,0),(13,4,77,0,0),(14,5,20,0,0),(15,3,15,0,0),(16,33,77,1,1),(17,23,44,1,1),(18,94,11,1,1),(19,65,9,1,0),(20,50,62,0,0),(21,36,34,0,0),(22,42,3,1,1),(23,71,23,0,1),(24,69,24,1,1),(25,28,74,1,0),(26,20,92,0,0),(27,5,86,0,0),(28,54,99,1,1),(29,65,30,0,1),(30,31,68,0,0),(31,90,38,1,0),(32,91,16,0,1),(33,9,52,1,1),(34,40,71,1,1),(35,69,39,1,1),(36,20,85,0,0),(37,69,25,0,1),(38,35,91,1,0),(39,45,84,1,0),(40,73,43,0,1),(41,80,15,0,1),(42,15,100,0,0),(43,14,76,1,0),(44,9,68,0,1),(45,18,59,1,1),(46,72,72,1,1),(47,97,38,1,1),(48,59,40,0,0),(49,27,66,0,1),(50,78,16,1,1),(51,67,76,0,1),(52,12,96,0,0),(53,46,72,0,1),(54,73,78,0,1),(55,12,27,1,1),(56,82,12,0,1),(57,49,90,0,1),(59,3,36,1,0),(60,5,12,1,1),(61,64,76,1,0),(62,30,58,1,1),(63,45,42,0,0),(64,85,20,0,1),(65,70,22,1,1),(66,62,76,0,0),(67,30,73,0,1),(68,68,75,1,1),(69,77,81,0,1),(70,97,51,0,1),(71,66,22,1,0),(72,21,2,1,1),(73,13,73,0,0),(74,58,78,1,1),(75,56,13,0,1),(76,69,10,0,0),(77,27,20,1,1),(78,20,38,0,1),(79,79,54,1,0),(80,16,19,0,1),(82,81,92,0,1),(83,89,96,0,1),(84,16,68,0,1),(85,87,49,1,0),(86,69,72,1,1),(87,30,100,0,1),(88,64,59,1,0),(89,100,14,0,1),(90,21,90,1,0),(91,2,33,0,1),(92,64,20,1,0),(93,26,24,1,1),(94,51,92,0,0),(95,67,71,0,1),(96,79,41,0,1),(97,77,45,1,1),(98,4,68,0,0),(99,78,98,0,1),(100,65,91,1,0);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `ID_user` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  PRIMARY KEY (`ID_user`),
  KEY `ID_user` (`ID_user`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`ID_user`) REFERENCES `projects` (`FK_ID_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (16,'Adelbert Pacocha','Sven','Rolfson','cornell42@example.org','7e8755ab127bec78b9d2','+15(8)1128790061','Lake Roberta','town'),(36,'Prof. Summer Hagenes','Dayton','Bradtke','grady.mustafa@example.org','55952051b18938ad30fe','317-378-1031','West Mitchel','bury'),(47,'Ms. Ebba Hyatt PhD','Kira','DuBuque','abernathy.elaina@example.net','52b727b0415df01ea5ed','131-511-5811','Jordaneberg','town'),(63,'Miss Maci Rice','Madie','Gislason','langworth.scarlett@example.com','6b18cb5ad8ccb4b0b40f','788-913-6669x586','Port Madonnamouth','fort'),(66,'Mr. Emilio Miller DV','Berta','Kautzer','barton.letha@example.com','e4ac71242f574a5ca653','(439)871-3339x071','Joeyburgh','mouth'),(72,'Mr. Mateo Bahringer','Ericka','Hessel','afeil@example.org','a8defb314a43368fa257','(775)943-9905x16087','Lefflerland','mouth'),(76,'Dayna Hettinger','Bethany','Zieme','bnikolaus@example.org','302385e9a5c3cd840769','(001)455-7289x47770','Kathlynburgh','mouth'),(77,'Ms. Eldridge Lockman','Larue','Kemmer','nwill@example.net','9b6032d327675d6acad9','702-610-0662x8411','Gonzaloberg','land'),(79,'Calista Cremin','Kathryne','Gutmann','greyson.wiegand@example.net','157ed39e2ed1807565fd','01774585168','New Treverville','shire'),(90,'Anne Gibson','Neha','Mayer','price.breitenberg@example.org','3d36ad6857b57f8e3c08','865.860.8978x423','Emmyville','ville'),(96,'Mrs. Hattie Okuneva ','Ozella','Rohan','janis.carter@example.com','cf2ba40a729d866a52ff','(606)509-8630x166','Pacochashire','shire');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_has_area`
--

DROP TABLE IF EXISTS `user_has_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_has_area` (
  `FK_ID_user` int(11) NOT NULL,
  `FK_ID_area` int(11) NOT NULL,
  PRIMARY KEY (`FK_ID_user`,`FK_ID_area`),
  KEY `FK_ID_user` (`FK_ID_user`),
  KEY `FK_ID_area` (`FK_ID_area`),
  CONSTRAINT `user_has_area_ibfk_1` FOREIGN KEY (`FK_ID_area`) REFERENCES `interes_area` (`ID_area`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_has_area_ibfk_2` FOREIGN KEY (`FK_ID_user`) REFERENCES `user` (`ID_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_has_area`
--

LOCK TABLES `user_has_area` WRITE;
/*!40000 ALTER TABLE `user_has_area` DISABLE KEYS */;
INSERT INTO `user_has_area` VALUES (16,4),(36,8),(47,15),(63,16),(66,7),(72,20),(76,12),(77,11),(79,20),(90,5),(96,7);
/*!40000 ALTER TABLE `user_has_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'proyectatmx2'
--

--
-- Dumping routines for database 'proyectatmx2'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-02 21:23:57
