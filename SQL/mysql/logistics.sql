-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: logistics
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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `ID_client` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `first_name` tinytext NOT NULL,
  `last_name` tinytext NOT NULL,
  `email` tinytext NOT NULL,
  `country_Code` varchar(30) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `address` tinytext NOT NULL,
  `country` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_client`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'AGNES','Stephanie','Ramirez','bdow_hisqbjoszqi@mail.com','+1','59020735','????????','Iraq','?????????'),(2,'DAISY','Dennis','Clark','qpcge.usfxewwugwp@yahoo.com','+967','46814670','????????','Australia','?????????'),(3,'PHYLLIS','Peter','Griffin','juyv.gueovd@yahoo.com','+967','67579619','????????','Argentina','?????????'),(4,'HAROLD','Richard','Lee','uft.vlregboobq@google.com','+966','58658709','????????','South Korea','?????????'),(5,'JOSEPH','Christine','Alexander','fflrm_sikaiabikb@google.com','+966','40827889','????????','Argentina','?????????'),(6,'ORMAN','Martha','Ross','sfvjb.wugz@live.com','+260','39833300','????????','France','?????????'),(7,'HERBERT','Susan','Thompson','jge.tbawta@itszapopan.edu.mx','+994','17340832','????????','Russia','?????????'),(8,'WILLIAM','Sarah','Hall','yxqrw.rpaf@zapopan.tecmm.edu.mx','+376','13040892','????????','Greece','?????????'),(9,'PHYLLIS','George','Lee','hrmj.kzsqadokkwa@mail.com','+681','45511455','????????','Mexico','?????????'),(10,'RONALD','John','Flores','kjqbku.esdnj@yahoo.com','+54','46715061','????????','Spain','?????????'),(11,'ELLEN','Gregory','Sanders','onab.cgzcxqlga@yahoo.com','+1','80773698','????????','Switzerland','?????????'),(12,'MARY','Michelle','Kelly','kxe_lhbmza@google.com','+61','62384746','????????','Afghanistan','?????????'),(13,'FRANK','Patricia','Watson','mgu.knkngd@zapopan.tecmm.edu.mx','+297','79619449','????????','France','?????????'),(14,'WINIFRED','Roger','Hall','iuztd_lcgxgxtzsr@google.com','+994','03409586','????????','United Arab Emirates','?????????'),(15,'PHYLLIS','Scott','Perry','hzz.hgkg@itszapopan.edu.mx','+297','39998473','????????','United States','?????????'),(16,'HENRY','Stephanie','Rivera','obnx.fdasifa@mail.com','+43','61939623','????????','Yemen','?????????'),(17,'EDITH','Amanda','Morris','gqjsrh_dncxqj@zapopan.tecmm.edu.mx','+994','60412979','????????','South Korea','?????????'),(18,'RICHARD','Mark','Murphy','dzmu_oanmsaaabd@mail.com','+297','91890412','????????','Germany','?????????'),(19,'MARY','Elizabeth','Taylor','fszut.jynwfuihkd@mail.com','+244','44081077','????????','Switzerland','?????????'),(20,'IRENE','Betty','Powell','lpqof_umapblxiwlm@google.com','+374','33570013','????????','South Korea','?????????'),(21,'MAY','Catherine','Turner','kupvy.oyzciclx@yahoo.com','+374','71475448','????????','Brazil','?????????'),(22,'ALBERT','Ryan','Cooper','eaq.jqaddpnvp@mail.com','+967','79519364','????????','Argentina','?????????'),(23,'DORIS','Frances','Hernandez','pezz.usgbjkwe@yahoo.com','+297','11467805','????????','Taildan','?????????'),(24,'LEONARD','Pamela','Miller','cige_uxdacnlp@mail.com','+54','46166603','????????','Greece','?????????'),(25,'WINIFRED','George','Long','jfaz.rgfgjyqk@google.com','+967','33448716','????????','Iraq','?????????'),(26,'MARGARET','Peter','James','ztvhpa_trdpxybm@google.com','+1','85125073','????????','Egypt','?????????'),(27,'FRED','Deborah','Gonzalez','jsnv.zuzoqpbopg@live.com','+61','64286584','????????','Taildan','?????????'),(28,'GLADYS','Sarah','Rivera','rovh_jlbb@google.com','+1','03891058','????????','Switzerland','?????????'),(29,'DORIS','Larry','Gonzalez','eukev_spxqncz@mail.com','+1','61075455','????????','Argentina','?????????'),(30,'GEORGE','Anna','Walker','fkjyx.avarqe@zapopan.tecmm.edu.mx','+1','50565681','????????','Chile','?????????'),(31,'SIDNEY','Nancy','Mitchell','ilemo_ilen@google.com','+1','69709654','????????','Yemen','?????????'),(32,'GEORGE','Anthony','Taylor','eqrf.chduhxod@zapopan.tecmm.edu.mx','+966','00017154','????????','Greece','?????????'),(33,'SIDNEY','Joshua','Bryant','nuh_bawi@yahoo.com','+967','84766565','????????','Australia','?????????'),(34,'ALBERT','Cynthia','Rogers','alego.ygkg@itszapopan.edu.mx','+244','90496211','????????','Brazil','?????????'),(35,'RICHARD','Janet','Wood','eply.nulw@live.com','+1','86610621','????????','Spain','?????????'),(36,'EDNA','Christine','James','zttc.iiqdhfhtw@google.com','+263','61717474','????????','Brazil','?????????'),(37,'JOSEPH','George','Thompson','wyak.vmwzc@zapopan.tecmm.edu.mx','+263','39773756','????????','Russia','?????????'),(38,'EDNA','Steven','Anderson','mekx.sqcoolm@yahoo.com','+54','72036041','????????','Russia','?????????'),(39,'FRANK','Patrick','Ramirez','zwi_yiubjervdfp@live.com','+1','06167804','????????','Chile','?????????'),(40,'HORACE','Jerry','Sanders','lataf.juwancwz@yahoo.com','+374','54680957','????????','Germany','?????????'),(41,'HAROLD','Timothy','Clark','lrzmsf.ncasgxs@zapopan.tecmm.edu.mx','+54','53015518','????????','Australia','?????????'),(42,'WILFRED','Melissa','Moore','pub.hucfwegvk@mail.com','+43','31338244','????????','Iraq','?????????'),(43,'CECIL','Douglas','Edwards','tfwqf.ccdmebweekn@live.com','+213','75663939','????????','United States','?????????'),(44,'MARGARET','Frank','Edwards','qqk.ddhckngv@yahoo.com','+880','27166227','????????','Iraq','?????????'),(45,'CLIFFORD','Donald','Garcia','aot.fvogzhmp@mail.com','+355','57009506','????????','Australia','?????????'),(46,'MINNIE','Jerry','Miller','axko.ftbamqtutlx@yahoo.com','+213','21804165','????????','Yemen','?????????'),(47,'MAY','Patricia','Diaz','wgt.qjuyrn@mail.com','+244','39966020','????????','Colombia','?????????'),(48,'THOMAS','Ann','Watson','sjr.ddhbow@mail.com','+1','63957342','????????','United Arab Emirates','?????????'),(49,'MABEL','Timothy','Bell','htw_udlugtaw@yahoo.com','+681','32194354','????????','United States','?????????'),(50,'WILLIAM','Patricia','White','pms.okikj@mail.com','+213','56553286','????????','Switzerland','?????????'),(51,'HARRY','Linda','Brooks','mhxym_eicnyw@live.com','+994','16643363','????????','South Korea','?????????'),(52,'GRACE','Deborah','Diaz','lihf.fwpisriqcqy@itszapopan.edu.mx','+355','94410097','????????','Iraq','?????????'),(53,'RICHARD','Gary','Henderson','nfmlxe.jhkdnnz@live.com','+880','93950431','????????','Taildan','?????????'),(54,'EDITH','William','Gonzales','mqrd_yhpfe@live.com','+297','59189362','????????','Egypt','?????????'),(55,'WINIFRED','Ronald','Lopez','iuw_hzdsx@itszapopan.edu.mx','+54','75622774','????????','Argentina','?????????'),(56,'ELSIE','Joseph','Clark','nydcur.xpecqhkhdxc@itszapopan.edu.mx','+1','10786097','????????','Australia','?????????'),(57,'ELLEN','Daniel','Lewis','lnhrow_huccv@live.com','+54','13532057','????????','Argentina','?????????'),(58,'EDITH','Frances','Lee','jbh.vgrrvy@yahoo.com','+374','72910433','????????','United States','?????????'),(59,'RONALD','Frances','Sanchez','tgxofk_qdtkcnhvk@live.com','+260','42918695','????????','Iraq','?????????'),(60,'THOMAS','Brian','Jenkins','zmjd_juwwqnvncy@live.com','+213','69844282','????????','Yemen','?????????'),(61,'GLADYS','Lisa','Nelson','hgmgt.fjfzli@live.com','+355','09656617','????????','Russia','?????????'),(62,'MARGARET','Larry','Wright','ucayjb.eqrnllto@mail.com','+967','84620377','????????','United States','?????????'),(63,'LUCY','Debra','Jones','vbuoms.euhecrdsdnd@yahoo.com','+43','56643401','????????','Russia','?????????');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliver_to`
--

DROP TABLE IF EXISTS `deliver_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deliver_to` (
  `ID_dt` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `email` tinytext NOT NULL,
  `country_Code` varchar(30) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `address` tinytext NOT NULL,
  `country` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_dt`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliver_to`
--

LOCK TABLES `deliver_to` WRITE;
/*!40000 ALTER TABLE `deliver_to` DISABLE KEYS */;
INSERT INTO `deliver_to` VALUES (1,'CATHERINE','ojdqh_vojdczr@live.com','+681','12847343','????????','Chile','?????????','?????????'),(2,'PHYLLIS','tmdz.hhpbkkyl@yahoo.com','+1','44888532','????????','Spain','?????????','?????????'),(3,'ETHEL','kfydrz.kmdgfqnvmx@google.com','+880','71406172','????????','Germany','?????????','?????????'),(4,'WINIFRED','qouk.owterkyqg@yahoo.com','+880','08279579','????????','Spain','?????????','?????????'),(5,'LEONARD','oecrky_ebskhrnqnte@mail.com','+1','78244129','????????','Mexico','?????????','?????????'),(6,'CYRIL','ebsh.wnanamlt@live.com','+43','17480602','????????','Germany','?????????','?????????'),(7,'WINIFRED','swfk.cxhqtt@live.com','+1','79466415','????????','Germany','?????????','?????????'),(8,'OLIVE','puezi.rdsbbm@live.com','+244','91924325','????????','Yemen','?????????','?????????'),(9,'EVELYN','enew_uokiihj@zapopan.tecmm.edu.mx','+43','44899189','????????','Iraq','?????????','?????????'),(10,'EVA','ncumbw.cavdk@mail.com','+994','60241474','????????','Iraq','?????????','?????????'),(11,'WILFRED','uatik.bbetp@live.com','+966','43173258','????????','Egypt','?????????','?????????'),(12,'LUCY','iuahm_yitubfydt@live.com','+1','42675662','????????','Argentina','?????????','?????????'),(13,'HARRY','klzey.lmbw@zapopan.tecmm.edu.mx','+1','82523337','????????','Switzerland','?????????','?????????'),(14,'ALBERT','kwbprp.hjype@yahoo.com','+880','16448870','????????','Mexico','?????????','?????????'),(15,'VERA','ocwakw.xgpdbqbjsky@live.com','+374','51322266','????????','Argentina','?????????','?????????'),(16,'WILLIAM','len.yntgahhrlha@yahoo.com','+213','14919244','????????','Mexico','?????????','?????????'),(17,'OLIVE','qzb.zblzvmyi@zapopan.tecmm.edu.mx','+376','32924341','????????','Greece','?????????','?????????'),(18,'CHARLES','trzphp.ehwmimidv@itszapopan.edu.mx','+967','46996395','????????','Australia','?????????','?????????'),(19,'HENRY','yfgcv.thcojysq@google.com','+54','94545302','????????','Brazil','?????????','?????????'),(20,'FRANCES','ukqwoe.pgnxrrkayp@google.com','+681','71406243','????????','Greece','?????????','?????????'),(21,'ELIZABETH','cyhqb.liip@yahoo.com','+1','76970121','????????','Yemen','?????????','?????????'),(22,'LUCY','csfqso_nsbbu@live.com','+297','52441009','????????','Spain','?????????','?????????'),(23,'WALTER','lpqog_ebwd@google.com','+54','87166246','????????','South Korea','?????????','?????????'),(24,'JOHN','kyly.sqdrxoamkmg@itszapopan.edu.mx','+263','75793154','????????','Colombia','?????????','?????????'),(25,'EVELYN','prptch.jqcrxoannbt@mail.com','+213','52845643','????????','Greece','?????????','?????????'),(26,'WINIFRED','fkjfc.ydvvnsdl@zapopan.tecmm.edu.mx','+376','24601557','????????','Chile','?????????','?????????'),(27,'ANNIE','lra.niyvaf@google.com','+966','78917551','????????','Germany','?????????','?????????'),(28,'SIDNEY','jaa.iittlqtx@yahoo.com','+994','61679382','????????','Yemen','?????????','?????????'),(29,'DOROTHY','xya.grpywmwwrvb@itszapopan.edu.mx','+1','33839638','????????','Afghanistan','?????????','?????????'),(30,'SARAH','ovllxe.cdjmex@google.com','+213','97572676','????????','Brazil','?????????','?????????');
/*!40000 ALTER TABLE `deliver_to` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `ID_empl` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `first_name` tinytext NOT NULL,
  `last_name` tinytext NOT NULL,
  `birth_date` varchar(30) NOT NULL,
  `email` tinytext NOT NULL,
  `country_Code` varchar(30) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `hire_date` varchar(30) NOT NULL,
  `address` tinytext NOT NULL,
  `country` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_empl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `external_transport`
--

DROP TABLE IF EXISTS `external_transport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `external_transport` (
  `ID_Ext_transp` int(11) NOT NULL AUTO_INCREMENT,
  `modality` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `capacity` varchar(30) NOT NULL,
  `speed` varchar(30) NOT NULL,
  `available` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID_Ext_transp`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `external_transport`
--

LOCK TABLES `external_transport` WRITE;
/*!40000 ALTER TABLE `external_transport` DISABLE KEYS */;
INSERT INTO `external_transport` VALUES (1,'carretera','forgoneta','??????','??????',1),(2,'carretera','camion','??????','??????',0),(3,'Aereo','avion','??????','??????',1),(4,'Aereo','helicoptero','??????','??????',1),(5,'Aereo','dirigible','??????','??????',0),(6,'Maritimo','barco','??????','??????',0),(7,'Maritimo','barcaza','??????','??????',1),(8,'Maritimo','gabarra','??????','??????',0),(9,'Fluvial','gabarra','??????','??????',1),(10,'Cintas-tubos','oleaductos','??????','??????',1),(11,'Cintas-tubos','tuberias','??????','??????',0),(12,'Cintas-tubos','cintas','??????','??????',0),(13,'Cintas-tubos','transportadores','??????','??????',1),(14,'Ferrocarril','??????','??????','??????',1);
/*!40000 ALTER TABLE `external_transport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history_warehouse`
--

DROP TABLE IF EXISTS `history_warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history_warehouse` (
  `ID_Hwh` int(11) NOT NULL AUTO_INCREMENT,
  `ID_wh` int(11) NOT NULL,
  `FK_ID_client` int(11) NOT NULL,
  `FK_ID_dt` varchar(30) NOT NULL,
  `deliveryDate` varchar(30) NOT NULL,
  `deliveryBy` varchar(30) NOT NULL,
  `cost` varchar(30) NOT NULL,
  `description` tinytext NOT NULL,
  `shape` tinytext NOT NULL,
  `size` tinytext NOT NULL,
  `weight` tinytext NOT NULL,
  `physical_features` tinytext NOT NULL,
  `number_units` int(11) NOT NULL,
  `FK_ID_Int_transp` int(11) DEFAULT NULL,
  `FK_ID_Ext_transp` int(11) DEFAULT NULL,
  `status` tinytext,
  PRIMARY KEY (`ID_Hwh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history_warehouse`
--

LOCK TABLES `history_warehouse` WRITE;
/*!40000 ALTER TABLE `history_warehouse` DISABLE KEYS */;
/*!40000 ALTER TABLE `history_warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internal_transport`
--

DROP TABLE IF EXISTS `internal_transport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `internal_transport` (
  `ID_Int_transp` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `code` varchar(30) NOT NULL,
  `entry_date` varchar(30) NOT NULL,
  `available` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID_Int_transp`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internal_transport`
--

LOCK TABLES `internal_transport` WRITE;
/*!40000 ALTER TABLE `internal_transport` DISABLE KEYS */;
INSERT INTO `internal_transport` VALUES (1,'spreader','SP_46131315','2005-11-22',1),(2,'Montacargas','MO_61164154','2004-10-22',1),(3,'palet','P_464646815','2010-08-22',0),(4,'transpaletas manuales ','TP_CV4645VS5','2019-12-22',1),(5,'transpaletas motorizadas','TP_46131315','2012-04-20',1),(6,'apiladoras','A_46131315','2011-08-22',0),(7,'palet','P_46131315','2001-07-04',0),(8,'contenedor','CO_46131315','2003-03-03',1),(9,'carretillas elevadoras','CAE_46131315','2008-08-07',0),(10,'carretillas contrapesadas','CAC_46131315','2001-01-08',1),(11,'carretilla retractil','CAR_46131315','2004-06-09',0),(12,'recoge pedidos','RP_46131315','2009-02-22',1),(13,'transelevadores','T_46131315','2006-01-12',1),(14,'AGV','AGV_46131315','2004-09-22',0),(15,'cintas transportadoras','CT_46131315','2008-04-22',1),(16,'transportadores por rodillas','TR_46131315','2005-08-25',1),(17,'puentes grua','PG_46131315','2007-04-28',0),(18,'puente grua monorial','PGM_46131315','2015-05-24',1),(19,'gruas portico','GP_46131315','2008-09-31',0),(20,'chuponardias','C_46131315','2005-08-14',1),(21,'transporte materiales cartucho','TMC_46131315','2018-07-29',0);
/*!40000 ALTER TABLE `internal_transport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `ID_prod` int(11) NOT NULL AUTO_INCREMENT,
  `FK_ID_client` int(11) NOT NULL,
  `FK_ID_dt` int(11) NOT NULL,
  `deliveryDate` varchar(30) NOT NULL,
  `deliveryBy` varchar(30) NOT NULL,
  `cost` varchar(30) NOT NULL,
  `description` tinytext NOT NULL,
  `shape` tinytext NOT NULL,
  `size` tinytext NOT NULL,
  `weight` tinytext NOT NULL,
  `physical_features` tinytext NOT NULL,
  `number_units` int(11) NOT NULL,
  `status` tinytext NOT NULL,
  PRIMARY KEY (`ID_prod`),
  KEY `FK_ID_client` (`FK_ID_client`),
  KEY `FK_ID_dt` (`FK_ID_dt`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`FK_ID_client`) REFERENCES `client` (`ID_client`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`FK_ID_dt`) REFERENCES `deliver_to` (`ID_dt`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,8,16,'1989-05-05','1973-01-13','551','Minus iste quasi ab sunt dolor. Tenetur doloribus ad nulla eum. Animi sed voluptatum voluptatem ea maxime. A voluptatem facere eum fuga eos et et et.','?????','51','C45D46','C44DS46',2,'reception'),(2,10,15,'1991-06-04','1972-08-30','4638','Autem sit possimus fuga vel amet ea sapiente. Placeat incidunt at saepe perspiciatis in eligendi. Reiciendis distinctio qui rerum molestias eaque dolores minima. Reiciendis ipsam officia qui ipsum quasi repellat quia et.','??????','13','CD54C5CD','4CD5D',5,'reception'),(4,4,9,'2013-10-14','1977-01-19','19502','Debitis voluptatibus sed nobis aperiam impedit. Et sit ullam autem quia vitae est. Eveniet nesciunt ipsum facere maiores.','???????','351','D4S4C4S','S54C45S',8,'reception'),(5,8,2,'1991-02-11','2018-12-11','20000','Aut expedita quos reiciendis vitae dolorem hic optio. Quo autem laborum aspernatur mollitia et animi debitis. Numquam quaerat ipsum ut sed.','5445D4D','5','C45S45C','S5C445S',2,'reception'),(6,13,6,'1974-06-04','1988-05-01','288','Sed quas est ea consectetur veniam. Possimus est et explicabo autem est vero quos. Delectus earum unde dolorum dolor voluptatem minima iusto dolorem. Voluptatem sequi ipsum dicta nulla.','???????','1323','CS54C5S','C4S55C',4,'reception'),(7,2,8,'2017-03-20','1990-05-18','256','Cupiditate asperiores velit earum repellendus ea dolor. Nemo rem laboriosam voluptatem. Numquam et quasi nostrum recusandae velit.','xxxxxxX','249780794','S54CX5C','44XXS4S',5,'reception'),(8,7,3,'2008-07-01','1987-09-11','52','Sapiente et est necessitatibus sed doloremque. Occaecati accusamus distinctio nemo libero ipsa et. Molestiae nostrum iusto qui autem natus voluptatem. Quam necessitatibus ex atque et doloribus consectetur.','X56454','846366','5S45C','CS45SC',5,'reception'),(9,6,9,'1977-02-17','1989-07-26','1550','Vel ex ipsa laborum. Eligendi a voluptates delectus temporibus omnis ipsam dolor. Ut minus beatae porro fuga aliquam. Qui facilis rerum sunt voluptatum in a.','X446SS4','956003','C4S54SC','CS545S',1,'reception'),(10,3,4,'1978-05-01','1991-01-19','248','Natus qui deserunt sit. Ipsum debitis tenetur fuga quisquam ut voluptas iste. Inventore laboriosam et esse culpa cumque ex dicta.','X4D454S','18','C4X5XS','4SC5S5S',2,'reception'),(11,9,1,'1973-11-14','1991-09-27','302','Aut aut eaque nemo saepe aperiam. Aut praesentium voluptates magni quibusdam magni pariatur. Sapiente sed nesciunt quaerat necessitatibus dolores.','X45S465S4D','5171','4D4D4S5X5S','C4S54S',9,'reception'),(12,19,18,'1981-12-21','2015-05-30','700','Fuga illo autem animi sit voluptas. Possimus voluptatibus animi modi dicta est id. Eius fugiat nesciunt non officia omnis.','VDS5D4V','9197','CXC5XC54','5C5S4C',4,'reception'),(13,16,12,'1986-11-11','1997-10-13','545','Vero omnis culpa ad voluptatem aut maxime. Rerum eligendi necessitatibus a voluptatem qui. Magnam et et error ipsa esse. Doloribus eos ipsa recusandae. Repellat tenetur asperiores sit.','CSD454454','83879677','C445CX5','C44SC5',5,'reception'),(14,20,5,'1998-06-19','2011-02-07','344','Veniam sint illo laboriosam a. Perferendis accusamus in magnam. Autem labore optio ipsum. Et expedita et aperiam.','XSNCJKSD','8','XCX54CX','X5X45S',13,'reception'),(15,21,15,'1990-03-12','2016-11-15','230','Qui odit accusantium eius perferendis eos. Nemo repellat voluptatem accusamus exercitationem adipisci. Ut consectetur ducimus quisquam fugiat. Pariatur officiis distinctio quo quisquam sed et. Minima modi facilis atque ducimus ab autem.','115D54D','958','C45CX45CX','CS54CX5S',2,'reception');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER beforeDeleteToWareHouse AFTER DELETE ON Product 
FOR EACH ROW
INSERT INTO Warehouse(FK_ID_client, FK_ID_dt, deliveryDate, deliveryBy, cost, description, shape, size, weight, physical_features, number_units,status) VALUES(OLD.FK_ID_client,OLD.FK_ID_dt,OLD.deliveryDate,OLD.deliveryBy,OLD.cost,OLD.description,OLD.shape,OLD.size,OLD.weight,OLD.physical_features,OLD.number_units,OLD.status) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouse` (
  `ID_wh` int(11) NOT NULL AUTO_INCREMENT,
  `FK_ID_client` int(11) NOT NULL,
  `FK_ID_dt` varchar(30) NOT NULL,
  `deliveryDate` varchar(30) NOT NULL,
  `deliveryBy` varchar(30) NOT NULL,
  `cost` varchar(30) NOT NULL,
  `description` tinytext NOT NULL,
  `shape` tinytext NOT NULL,
  `size` tinytext NOT NULL,
  `weight` tinytext NOT NULL,
  `physical_features` tinytext NOT NULL,
  `number_units` int(11) NOT NULL,
  `FK_ID_Int_transp` int(11) DEFAULT NULL,
  `FK_ID_Ext_transp` int(11) DEFAULT NULL,
  `status` tinytext,
  PRIMARY KEY (`ID_wh`),
  KEY `FK_ID_Int_transp` (`FK_ID_Int_transp`),
  KEY `FK_ID_Ext_transp` (`FK_ID_Ext_transp`),
  CONSTRAINT `warehouse_ibfk_1` FOREIGN KEY (`FK_ID_Int_transp`) REFERENCES `internal_transport` (`ID_Int_transp`),
  CONSTRAINT `warehouse_ibfk_2` FOREIGN KEY (`FK_ID_Ext_transp`) REFERENCES `external_transport` (`ID_Ext_transp`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT INTO `warehouse` VALUES (1,20,'7','2013-06-26','1992-06-17','551','Sequi et quo quidem aspernatur aut vel et. Sunt aut perspiciatis eveniet quis. Repellat corrupti porro corporis id et. Voluptatum explicabo voluptas qui tempora ut est facere.','???????','91','52S4SC','CD4CD',9,5,2,'delivered');
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER beforeDeleteToWareHauseBackup AFTER DELETE ON Warehouse
FOR EACH ROW
INSERT INTO History_Warehouse(FK_ID_client, FK_ID_dt, deliveryDate, deliveryBy, cost, description, shape, size, weight, physical_features, number_units,status) VALUES(OLD.FK_ID_client,OLD.FK_ID_dt,OLD.deliveryDate,OLD.deliveryBy,OLD.cost,OLD.description,OLD.shape,OLD.size,OLD.weight,OLD.physical_features,OLD.number_units,OLD.status) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'logistics'
--

--
-- Dumping routines for database 'logistics'
--
/*!50003 DROP FUNCTION IF EXISTS `contrys` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `contrys`() RETURNS varchar(255) CHARSET utf8
BEGIN
	RETURN ELT(FLOOR(1 + (RAND() * (21-1))),  "Mexico","Germany","Brazil","Argentina","Afghanistan","France","Russia","Chile","Colombia","Egypt","Greece","South Korea","Switzerland","United States","United Arab Emirates","Taildan","Spain","Yemen","Iraq","Australia");
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `generate_fname` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `generate_fname`() RETURNS varchar(255) CHARSET utf8
BEGIN
	RETURN ELT(FLOOR(1 + (RAND() * (100-1))), "James","Mary","John","Patricia","Robert","Linda","Michael","Barbara","William","Elizabeth","David","Jennifer","Richard","Maria","Charles","Susan","Joseph","Margaret","Thomas","Dorothy","Christopher","Lisa","Daniel","Nancy","Paul","Karen","Mark","Betty","Donald","Helen","George","Sandra","Kenneth","Donna","Steven","Carol","Edward","Ruth","Brian","Sharon","Ronald","Michelle","Anthony","Laura","Kevin","Sarah","Jason","Kimberly","Matthew","Deborah","Gary","Jessica","Timothy","Shirley","Jose","Cynthia","Larry","Angela","Jeffrey","Melissa","Frank","Brenda","Scott","Amy","Eric","Anna","Stephen","Rebecca","Andrew","Virginia","Raymond","Kathleen","Gregory","Pamela","Joshua","Martha","Jerry","Debra","Dennis","Amanda","Walter","Stephanie","Patrick","Carolyn","Peter","Christine","Harold","Marie","Douglas","Janet","Henry","Catherine","Carl","Frances","Arthur","Ann","Ryan","Joyce","Roger","Diane" );

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `generate_lname` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `generate_lname`() RETURNS varchar(255) CHARSET utf8
BEGIN
	RETURN ELT(FLOOR(1 + (RAND() * (100-1))), "Smith","Johnson","Williams","Jones","Brown","Davis","Miller","Wilson","Moore","Taylor","Anderson","Thomas","Jackson","White","Harris","Martin","Thompson","Garcia","Martinez","Robinson","Clark","Rodriguez","Lewis","Lee","Walker","Hall","Allen","Young","Hernandez","King","Wright","Lopez","Hill","Scott","Green","Adams","Baker","Gonzalez","Nelson","Carter","Mitchell","Perez","Roberts","Turner","Phillips","Campbell","Parker","Evans","Edwards","Collins","Stewart","Sanchez","Morris","Rogers","Reed","Cook","Morgan","Bell","Murphy","Bailey","Rivera","Cooper","Richardson","Cox","Howard","Ward","Torres","Peterson","Gray","Ramirez","James","Watson","Brooks","Kelly","Sanders","Price","Bennett","Wood","Barnes","Ross","Henderson","Coleman","Jenkins","Perry","Powell","Long","Patterson","Hughes","Flores","Washington","Butler","Simmons","Foster","Gonzales","Bryant","Alexander","Russell","Griffin","Diaz","Hayes");
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `generate_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `generate_name`() RETURNS varchar(255) CHARSET utf8
BEGIN
    RETURN ELT(FLOOR(1 + (RAND() * (100-1))), "WILLIAM","JOHN","GEORGE","THOMAS","ARTHUR","JAMES","CHARLES","FREDERICK","ALBERT","ERNEST","ALFRED","EDWARD","JOSEPH","HAROLD","ROBERT","FRANK","HENRY","HARRY","WALTER","REGINALD","HERBERT","LEONARD","STANLEY","LESLIE","RICHARD","CYRIL","SIDNEY","FRANCIS","PERCY","DAVID","WILFRED","SAMUEL","ORMAN","CECIL","ERIC","SYDNEY","HORACE","FRED","JACK","EDWIN","RONALD","ALEXANDER","CLIFFORD","PATRICK","BERNARD","MARY","FLORENCE","DORIS","EDITH","DOROTHY","ANNIE","MARGARET","ALICE","ELIZABETH","ELSIE","GLADYS","WINIFRED","ETHEL","HILDA","LILIAN","IVY","VIOLET","KATHLEEN","ELLEN","LILY","SARAH","NELLIE","EMILY","MABEL","ADA","BEATRICE","MARJORIE","MAY","ROSE","OLIVE","EVELYN","PHYLLIS","GERTRUDE","CATHERINE","AGNES","JESSIE","FRANCES","GRACE","IRENE","EVA","CONSTANCE","EDNA","JANE","AMY","VERA","MURIEL","DAISY","MINNIE","MAUD","LUCY");

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `str_random` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `str_random`(p_pattern VARCHAR(200)) RETURNS varchar(2000) CHARSET utf8
    NO SQL
BEGIN
    /**
    * String function. Returns a random string based on a mask
    * <br>
    * %author Ronald Speelman
    * %version 2.3
    * Example usage:
    * SELECT str_random('dddd CC') AS DutchZipCode;
    * SELECT str_random('d{4} C{2}') AS DutchZipCode;
    * SELECT str_random('*{5}*(4)') AS password;
    * select str_random('Cccc(4)') as name;
    * SELECT str_random('#X{6}') AS htmlColorCode;
    * See more complex examples and a description on www.moinne.com/blog/ronald
    *
    * %param p_pattern String: the pattern describing the random values
    *                          MASKS:
    *                          c returns lower-case character [a-z]
    *                          C returns upper-case character [A-Z]
    *                          A returns either upper or lower-case character [a-z A-Z]
    *                          d returns a digit [0-9]
    *                          D returns a digit without a zero [1-9]
    *                          b returns a bit [0-1]
    *                          X returns hexadecimal character [0-F]
    *                          * returns characters, decimals and special characters [a-z A-Z 0-9 !?-_@$#]
    *                          DIRECTIVES
    *                          "text"      : text is taken literally
    *                          {nn}        : repeat the last mask nn times
    *                          (nn)        : repeat random, but max nn times
    *                          [item|item] : pick a random item from this list, items are separated by a pipe symbol
    *                          All other characters are taken literally
    * %return String
    */

    DECLARE v_iter              SMALLINT DEFAULT 1;
    DECLARE v_char              VARCHAR(1) DEFAULT '';
    DECLARE v_next_char         VARCHAR(1) DEFAULT '';
    DECLARE v_list              VARCHAR(200) DEFAULT '';
    DECLARE v_text              VARCHAR(200) DEFAULT '';
    DECLARE v_result            VARCHAR(2000) DEFAULT '';
    DECLARE v_count             SMALLINT DEFAULT 0;
    DECLARE v_jump_characters   TINYINT DEFAULT 0;
    DECLARE v_end_position      SMALLINT DEFAULT 0;
    DECLARE v_list_count        TINYINT DEFAULT 0;
    DECLARE v_random_item       TINYINT DEFAULT 0;

    WHILE v_iter <= CHAR_LENGTH(p_pattern) DO

        SET v_char := BINARY SUBSTRING(p_pattern,v_iter,1);
        SET v_next_char := BINARY SUBSTRING(p_pattern,(v_iter + 1),1);

        -- check if text is a fixed text
        IF (v_char = '"') THEN
            -- get the text
            SET v_end_position := LOCATE('"', p_pattern, v_iter + 1);
            SET v_text := SUBSTRING(p_pattern,v_iter + 1,(v_end_position - v_iter) - 1);
            -- add the text to the result
            SET v_result := CONCAT(v_result, v_text);
            SET v_iter := v_iter + CHAR_LENGTH(v_text) + 2;
        -- if character has a count specified: repeat it
        ELSEIF (v_next_char = '{') OR (v_next_char = '(') THEN
            -- find out what the count is (max 999)...
            IF (SUBSTRING(p_pattern,(v_iter + 3),1) = '}') OR
               (SUBSTRING(p_pattern,(v_iter + 3),1) = ')') THEN
                SET v_count := SUBSTRING(p_pattern,(v_iter + 2),1);
                SET v_jump_characters := 4;
            ELSEIF (SUBSTRING(p_pattern,(v_iter + 4),1) = '}') OR
                   (SUBSTRING(p_pattern,(v_iter + 4),1) = ')')THEN
                SET v_count := SUBSTRING(p_pattern,(v_iter + 2),2);
                SET v_jump_characters := 5;
            ELSEIF (SUBSTRING(p_pattern,(v_iter + 5),1) = '}') OR
                   (SUBSTRING(p_pattern,(v_iter + 5),1) = ')')THEN
                SET v_count := SUBSTRING(p_pattern,(v_iter + 2),3);
                SET v_jump_characters := 6;
            ELSE
                SET v_count := 0;
                SET v_jump_characters := 3;
            END IF;
            -- if random count: make it random with a max of count
            IF (v_next_char = '(') THEN
                SET v_count := FLOOR((RAND() * v_count));
            END IF;
            -- repeat the characters
            WHILE v_count > 0 DO
                SET v_result := CONCAT(v_result,str_random_character(v_char));
                SET v_count := v_count - 1;
            END WHILE;
            SET v_iter := v_iter + v_jump_characters;
        -- check if there is a list in the pattern
        ELSEIF (v_char = '[') THEN
            -- get the list
            SET v_end_position := LOCATE(']', p_pattern, v_iter + 1);
            SET v_list := SUBSTRING(p_pattern,v_iter + 1,(v_end_position - v_iter) - 1);
            -- find out how many items are in the list, items are seperated by a pipe
            SET v_list_count := (LENGTH(v_list) - LENGTH(REPLACE(v_list, '|', '')) + 1);
            -- pick a random item from the list
            SET v_random_item := FLOOR(1 + (RAND() * v_list_count));
            -- add the item from the list
            SET v_result := CONCAT(v_result,
                                   REPLACE(SUBSTRING(SUBSTRING_INDEX(v_list, '|' ,v_random_item),
                                           CHAR_LENGTH(SUBSTRING_INDEX(v_list,'|', v_random_item -1)) + 1),
                                           '|', '')
                                  );
            SET v_iter := v_iter + CHAR_LENGTH(v_list) + 2;
        -- no directives: just get a random character
        ELSE
            SET v_result := CONCAT(v_result, str_random_character(v_char));
            SET v_iter := v_iter + 1;
        END IF;

   END WHILE;

   RETURN v_result;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `str_random_character` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `str_random_character`(p_char VARCHAR(1)) RETURNS varchar(1) CHARSET utf8
    NO SQL
BEGIN
    /**
    * String function. Returns random character based on a mask
    * <br>
    * %author Ronald Speelman
    * %version 1.5
    * Example usage:
    * SELECT str_random_character('d') AS digit;
    * SELECT str_random_character('C') AS UPPER;
    * See more examples and a description on www.moinne.com/blog/ronald
    *
    * %param p_pattern String: the pattern describing the random values
    *                          c returns lower-case character [a-z]
    *                          C returns upper-case character [A-Z]
    *                          A returns either upper or lower-case character [a-z A-Z]
    *                          d returns a digit [0-9]
    *                          D returns a digit without a zero [1-9]
    *                          b returns a bit [0-1]
    *                          X returns hexedecimal character [0-F]
    *                          * returns characters, decimals and special characters [a-z A-Z 0-9 !?-_@$#]
    *                          All other characters are taken literally
    * %return VARCHAR(1)
    */

    DECLARE v_result   VARCHAR(1) DEFAULT '';

        CASE p_char
            WHEN BINARY '*' THEN SET v_result := ELT(1 + FLOOR(RAND() * 69),'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
                                                                                 'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z',
                                                                                 '!','?','-','_','@','$','#',
                                                                                 0,1,2,3,4,5,6,7,8,9);
            WHEN BINARY 'A' THEN SET v_result := ELT(1 + FLOOR(RAND() * 52),'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
                                                                                 'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
            WHEN BINARY 'c' THEN SET v_result := ELT(1 + FLOOR(RAND() * 26),'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z');
            WHEN BINARY 'C' THEN SET v_result := ELT(1 + FLOOR(RAND() * 26),'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
            WHEN BINARY 'd' THEN SET v_result := ELT(1 + FLOOR(RAND() * 10), 0,1,2,3,4,5,6,7,8,9);
            WHEN BINARY 'D' THEN SET v_result := ELT(1 + FLOOR(RAND() * 9), 1,2,3,4,5,6,7,8,9);
            WHEN BINARY 'X' THEN SET v_result := ELT(1 + FLOOR(RAND() * 16), 0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F');
            WHEN BINARY 'b' THEN SET v_result := ELT(1 + FLOOR(RAND() * 2), 0,1);
            ELSE
                SET v_result := p_char;
        END CASE;

   RETURN v_result;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-02 21:26:14
