-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: number_magics
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
-- Table structure for table `ctrl_user`
--

DROP TABLE IF EXISTS `ctrl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctrl_user` (
  `ID_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(70) NOT NULL,
  `password` varchar(70) NOT NULL,
  `FK_user_type` int(11) NOT NULL,
  `FK_permit_type` int(11) NOT NULL,
  PRIMARY KEY (`ID_user`),
  KEY `FK_user_type` (`FK_user_type`),
  KEY `FK_permit_type` (`FK_permit_type`),
  CONSTRAINT `ctrl_user_ibfk_1` FOREIGN KEY (`FK_user_type`) REFERENCES `user_type` (`ID_type`),
  CONSTRAINT `ctrl_user_ibfk_2` FOREIGN KEY (`FK_permit_type`) REFERENCES `permit_type` (`ID_permit`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctrl_user`
--

LOCK TABLES `ctrl_user` WRITE;
/*!40000 ALTER TABLE `ctrl_user` DISABLE KEYS */;
INSERT INTO `ctrl_user` VALUES (1,'donnadie','666',2,4),(2,'donnadie2','666',2,3),(3,'donnadie3','666',2,2),(4,'donnadie4','666',1,1),(5,'pedro','[C@70717f93',1,2),(6,'p1','[C@40c88aa0',2,3),(7,'p2','[C@52bfa75e',1,2),(8,'p3','123',2,4),(9,'p4','123',1,1);
/*!40000 ALTER TABLE `ctrl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info` (
  `ID_in` int(11) NOT NULL AUTO_INCREMENT,
  `data` longtext NOT NULL,
  PRIMARY KEY (`ID_in`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info`
--

LOCK TABLES `info` WRITE;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
INSERT INTO `info` VALUES (1,'1 (UNO)\n  El 1 está predestinado para ocupar el primer puesto... ì\no el último; ello depende de que pueda expresar todos los ì\naspectos de su profunda personalidad o de que se vea ì\nobligado a reprimirlos.\n  El 1 es el número más fuerte, pero también el más ì\ndifícil de llevar.\n  Es el número de la creación y de la invención. Pero, ì\nasí mismo, es el número que corresponde a una ì\npersonalidad que no se ata con los detalles.\n  El 1 es bastante solitario aun cuando, a veces, muestra ì\nuna apariencia de desenvoltura en sociedad. También es ì\nbastante atractivo y sensual, pero no pierde jamás su ì\npunto de mira. En realidad, no puede considerarsele \ninteresado, sino más bien oportunista.\n  El 1 está dotado de un temperamento nervioso, con el ì\nespíritu siempre al acecho. Es capaz de realizar ì\ngigantescos esfuerzos para alcanzar su meta.\n  Cuando ocupa el primer puesto, el 1 está temiendo ì\ncontinuamente perderlo. Y cuando no lo ocupa, puede ì\nsufrir y agriarse hasta el extremo de volverse celoso.\n\nNOMBRES MASCULINOS              NOMBRE FEMENIMOS\nALBERTO                         ADELINA\nALFONSO                         ALFONSINA\nCESAR                           AMALIA\nCOSME                           AMPARO\nDIMAS                           BERTA\nELIAS                           CAROLINA\nEVARISTO                        ELENA\nGIL                             ELISA\nISRAEL                          EVA\nIVAN                            FAUSTINA\nJACOBO                          GABRIELA\nJORGE                           GENOVEVA\nJUAN                            HORTENSIA\nLEON                            IRIS\nLEONCIO                         LUCIA\nNESTOR                          MARIA JOSE\nNICOLAS                         MATILDE\nPABLO                           MELANIA\nPASCUAL                         MONICA\nPATRICIO                        NIDIA\nSERGIO                          SABINA\nVALERIO                         SABRINA\nVICENTE                         SONSOLES'),(2,' 2 (DOS)\n  EL 2 está predestinado para tener contactos con los ì\ndemás seres humanos.\n  Sensible y emotivo, el 2 no puede quedarse impasible ì\nante el infortunio de otros ni ante la angustia humana.   ì\nTiene el gusto de lo social y no soporta ver el ì\nsufrimiento de los demás.\n  El 2 antepone el trabajo silicioso, pero eficaz, por el ì\nbienestar de sus semejantes, a la gloria y el triunfo ì\npersonal.\n  El 2 es amado por los jovenes por los infortunados y ì\npor los desdichados que son capaces de captar en él, a ì\nveces tras una apariencia de frialdad, toda la ì\nsensibilidad y la emotividad propia de este número.\n  El 2 debe cuidarse de caer en la sensiblería que le ì\nimpediría actuar. En general, el 2 sabe permanecer en ì\ncalma; es indulgente y generoso, a veces hipócrita y a ì\nmenudo terco. Asi mismo, es porfiado, sabe acometer una ì\nempresa con obstinación y, por consiguiente, la mayor ì\nparte de las veces logra llevar a buen fin lo que ha ì\ncomenzado.\n  Considerado a vecves como extravagante a causa de la ì\ncomplejidad de su temperamento apasionado, capaz de todos ì\nlos excesos en medio de la calma más aparente, el 2 ì\nraramente conoce una vida vulgar, a menos que le sea ì\ntotalmente imposible expresar todos sus recursos, siempre ì\nnumerosos.\n  El 2 a veces se protege adoptando una actitud de zumba ì\ny burla, que es más vehemente que dañina.\n\nNOMBRES MASCULINOS              NOMBRE FEMENIMOS\nADAN                            AMALIA\nADRIAN                          ANTONIA\nARNALDO                         AURORA\nBALTASAR                        BELEN\nBARTOLOME                       DIANA\nBERNABE                         ENRIQUETA\nCLAUDIO                         ESTRELLA\nFEDERICO                        FLORENCIA\nFELICIANO                       FRANCISCA\nFELIX                           INES\nFLAVIO                          JOSEFA\nFLORENTINO                      JUANA\nJAIME                           MARIA TERESA\nJAVIER                          MARINA\nJESUS                           PAULINA\nJOSE ANTONIO                    PILAR\nJUAN PABLO                      RAQUEL\nLUCAS                           SALOME\nMARIO                           URSULA\nMELCHOR\nOSCAR\nTEODORO'),(3,'3 (TRES)\n  El 3 es el número de la originalidad y de la creación.  ì\n  El 3 debe tratar de expresar su talento mediante un ì\narte gráfico, plástico o dramático, si ello le es ì\nposible.\n  El 3 tiene una naturaleza emocional muy fuerte que ì\npuede señalar con su impronta toda una vida y, en ì\nparticular, un trabajo.\n  Para realizar plenamente su obra, el 3 tiene necesidad ì\nde ser estimulado y elogiado con frecuencia. De lo que ì\npodemos deducir que es bastante sensible al halago.\n  El 3 se adapta fácilmente, comprende de prisa y puedeì\ntomar decisiones importantes instantáneamente. Posee un ì\nespíritu práctico y es inteligente, pero también astuto.\n  El 3 tiene un temperamento apasionado, animoso y ì\ncombativo. Es ambicioso y orgulloso, pero si exagera ì\nestas tendencias puede llegar a volverse vanidoso y ebrio ì\nde gloria.\n\nNOMBRES MASCULINOS          NOMBRE FEMENINOS\nCASTOR                      ANA MARIA\nCIRIACO                     ANGELA\nDAVID                       CORAL\nDIEGO                       ELVIRA\nEUGENIO                     EMILIA\nGERMAN                      JACINTA\nGREGORIO                    LOLA\nGUILLERMO                   LOURDES\nIGNACIO                     MANUELA\nJOSE                        MARIETA\nJUAN BAUTISTA               MARTINA\nJULIAN                      MARY SOL\nMARCELO                     MILAGROS\nMIGUEL                      NATALIA\nOCTAVIO                     PALOMA\nPEDRO                       SONIA\nREMIGIO\nRODOLFO\nROMULO'),(4,'4 (CUATRO)\n  El número 4 es de la organización (cuadrado = 4 ángulos ì\nrectos y 4 lados ), la estabilidad.\n  Por lo tanto, el 4 sabe emprender y organizar más que ì\nmandar o dirigir. \n  El 4 tiene una gran capacidad de trabajo; puede ì\napasionarse por él si concederse un momento de respiro ì\nhasta el cumplimiento final de su objetivo. Su ì\nencarnizado apasionamiento puede resultar a veces incluso ì\nembarazoso.\n  El 4 generalmente es bastante apreciado por sus jefes y ì\nsus patrones. No le gusta el desorden.\n  El 4 es un buen y leal ayudante que raramente busca los ì\npuestos de gran responsibilidad, y menos aún trata de ì\narrebatar lo primeros lugares a los demás.\n  De forma general, es 4 sabe compaginar la flexibilidad ì\ncon la prudencia.\n  Si el 4 parece a veces demasiado rutinario, e incluso ì\nmaniático, hay que poner ensu activo su agudo sentido de ì\nla justicia y su amor a la familia, bien equilibrada y ì\nrespetable.\n\nNOMBRES MASCULINOS          NOMBRE FEMENINOS\nCASTOR                      ANA MARIA\nCIRIACO                     ANGELA\nDAVID                       CORAL\nDIEGO                       ELVIRA\nEUGENIO                     EMILIA\nGERMAN                      JACINTA\nGREGORIO                    LOLA\nGUILLERMO                   LOURDES\nIGNACIO                     MANUELA\nJOSE                        MARIETA\nJUAN BAUTISTA               MARTINA\nJULIAN                      MARY SOL\nMARCELO                     MILAGROS\nMIGUEL                      NATALIA\nOCTAVIO                     PALOMA\nPEDRO                       SONIA\nREMIGIO\nRODOLFO\nROMULO'),(5,'5 (CINCO)\n  El número 5 es el del movimiento y la acción. Por ì\ntanto, está llamado a viajar, a cambiar de país, a ì\ncambiar de trabajo o de medio ambiente en uno o varios ì\nmomentos de su vida.\n  El 5 es curioso por naturaleza, ama las experiencias y ì\nse interesa por las novedades. Así mismo, se siente ì\natraído por las grandes causas humanas, nacionales o ì\ninternacionales.\n  Por lo general, el 5 tiene un temperamento tranquilo y ì\nreservado.\n  Posee sangre fría e intuición, es probo y recto y ì\napenas le atraen los compromisos; a menudo es incluso ì\nsectario y a veces muy tímido, lo que hace que, con ì\nfrecuencia, le resulte tan difícil entrar en una sociedad ì\ncomo salir de ella. Por otra parte, este es el motivo por ì\nel que está llamado a cambiar de sociedad varias veces a ì\nlo largo de su vida: no sabe observar de lejos, debe ì\npagar con su persona la satisfacción de su curiosidad, ì\nadaptandose por un tiempo, más o menos largo al entorno ì\nque le interesa.\n  Pese a su apariencia fría y reservada, el 5 sabe ì\ngeneralmente granjearse las simpatías. Está dotado para ì\nla comedia y se siente atraído por el mundo del ì\nespectáculo.\n\nNOMBRE MASCULINOS           NOMBRES FEMENINOS\nBERNARDO                    ADELA\nCANDIDO                     AMELIA\nCARLOS                      BRIGIDA\nCLEMENTE                    CONSUELO\nDOMINGO                     EMMA\nEDUARDO                     IDA\nFERNANDO                    IRMA\nGERARDO                     LUZ\nHELENIO                     MARIA DEL MAR\nISMAEL                      MARIA LUISA\nJUAN JOSE                   PATRICIA\nLAMBERTO                    ROSA MARIA\nMAURO                       ROSARIO\nPEDRO PABLO                 SOFIA\nRAIMUNDO                    TERESA\nRICARDO\nRODRIGO\nSANTIAGO\nTOMAS'),(6,'6 (SEIS)\nEl número 6 es el de la familia unida y feliz; ì\nconsiguientemente, está condicionado por la búsqueda de ì\nuna cierta armonía familiar, o de todo lo contrario si ì\nexiste un retroceso, en cuyo caso puede encerrarse en su ì\ntorre de marfil.\n  En general, el 6 es inteligente; comprende con rapidez ì\ny se adapta fácilmente al entorno.\n  El 6 posee a menudo un fondo sentimental y romántico ì\nque puede ocultar bajo una apariencia brusca, esnob, ì\nirónica y hasta cómica.\n  Igualmente, es capaz de vibrar profunda e intensamente, ì\npero conservando siempre un gran autocontrol.\n  Pero cuando el 6 se ve obligado a reprimir durante ì\ndemasiado tiempo su sensibilidad, corre el riesgo de ì\nhacerse realmente insensible y poco afectivo, así como ì\nque su fachada se convierta en su auténtico rostro.\n  Independientemente del de la familia, el 6 tiene por lo ì\ngeneral un sentido muy desarrollado  de la amistad y la ì\ncamaradería.\n\nNOMBRES MASCULINOS          NOMBRES FEMENINOS\nALVARO                      ASUNCION\nARCADIO                     BLANCA\nDAMIAN                      CECILIA\nERNESTO                     CLAUDIA\nFABIAN                      DELFINA\nGUSTAVO                     ELIANA\nHECTOR                      ESPERANZA\nHUGO                        FEDERICA\nISAAC                       FLOR\nJOAQUIN                     IRENE\nJUAN CARLOS                 JULIETA MARA\nMARCOS                      MARIA\nOLIVERIO                    MARIA FERNANDA\nREINALDO                    MARIBEL\nRUBEN                       PAULA\nSANCHO                      ROCIO\nVICTOR                      SAMANTA\n                            SILVANA\n                            SOLEDAD\n                            VERONICA\n'),(7,'\n\n                            6 (SEIS)\nEl número 6 es el de la familia unida y feliz; ì\nconsiguientemente, está condicionado por la búsqueda de ì\nuna cierta armonía familiar, o de todo lo contrario si ì\nexiste un retroceso, en cuyo caso puede encerrarse en su ì\ntorre de marfil.\n  En general, el 6 es inteligente; comprende con rapidez ì\ny se adapta fácilmente al entorno.\n  El 6 posee a menudo un fondo sentimental y romántico ì\nque puede ocultar bajo una apariencia brusca, esnob, ì\nirónica y hasta cómica.\n  Igualmente, es capaz de vibrar profunda e intensamente, ì\npero conservando siempre un gran autocontrol.\n  Pero cuando el 6 se ve obligado a reprimir durante ì\ndemasiado tiempo su sensibilidad, corre el riesgo de ì\nhacerse realmente insensible y poco afectivo, así como ì\nque su fachada se convierta en su auténtico rostro.\n  Independientemente del de la familia, el 6 tiene por lo ì\ngeneral un sentido muy desarrollado  de la amistad y la ì\ncamaradería.\n\nNOMBRES MASCULINOS          NOMBRES FEMENINOS\nALVARO                      ASUNCION\nARCADIO                     BLANCA\nDAMIAN                      CECILIA\nERNESTO                     CLAUDIA\nFABIAN                      DELFINA\nGUSTAVO                     ELIANA\nHECTOR                      ESPERANZA\nHUGO                        FEDERICA\nISAAC                       FLOR\nJOAQUIN                     IRENE\nJUAN CARLOS                 JULIETA MARA\nMARCOS                      MARIA\nOLIVERIO                    MARIA FERNANDA\nREINALDO                    MARIBEL\nRUBEN                       PAULA\nSANCHO                      ROCIO\nVICTOR                      SAMANTA\n                            SILVANA\n                            SOLEDAD\n                            VERONICA\n'),(8,'\n                         7 (SIETE)  \n  El 7, es el número del misterio y la moderación. Tiene ì\nun espíritu abierto; se siente atraído por aquello que ì\nestá inexplicado o es inexplicable. Se halla ì\nespecialmente dotado para comprender a los demás; es buen ì\npsicólogo y buen consejero.\n  El 7 es particularmente paciente; está provisto de un ì\nespíritu de análisis y de un sentido de la observación ì\nmuy agudos.\n  Pero a veces el 7 se muestra ensimismado, solitario y ì\nmelancólico.\n  Ello es debido a su concentración de espíritu, que se ì\ncristaliza sobre un pensamiento, un estudio o una ì\nbúsqueda, lo cual le hace olvidarse por completo del ì\nmundo exterior.\n  El 7 puede sentirse atraído por una religión, por el ì\nocultismo o por una forma noble de poesía; pero a menudo ì\ncarece de sentido práctico.\n  Con frecuencia, el 7 tiene un espíritu caballeresco. ì\nAsí, mismo, es un trabajador encarnizado que sabe lo que ì\nquiere y es capaz de todos los esfuerzos para llegar a ì\nconseguirlo.\n\nNOMBRES MASCULINOS          NOMBRES FEMENINOS\nALFREDO                     ALBA\nAMADOR                      AMANDA\nANDRES                      ANA\nANSELMO                     ANDREA\nANTONIO                     BARBARA\nBLAS                        CATALINA\nBRUNO                       DOLORES\nFRANCISCO                   ELOISA\nJOSE MANUEL                 FEDRA\nJUAN MARIA                  GUADALUPE\nJUAN PEDRO                  INMACULADA\nLUIS                        JIMENA\nMIGUEL ANGEL                JOSEFINA\nMILLAN                      LEONOR\nORLANDO                     MARGARITA\nOSVALDO                     MARISA\nRAFAEL                      PENELOPE\nRAMON                       REBECA\nROMAN                       REMEDIOS\nSEBASTIAN                   TRINIDAD\nSIMON                       VICTORIA\nVALENTIN\nVALERIANO'),(9,'\n8 (OCHO)\n  El 8 es el número de la autoridad y la obstinación. Le ì\ngusta ordenar, gobernar y dirigir a los hombres. Se sabe ì\nhacerse amar y estimar.\n  Si se lo propone seriamente, puede alcanzar una ì\nsituación muy elevada con relación a aquella de la cual ì\nproviene. Es capaz de procurarse un trabajo duro y penoso ì\npara conseguirlo.\n  El 8 está continuamente a la busca de lo que pueda ì\nelevarle sobre la escala social; es un ambicioso que, ì\nllegado el caso, puede sufrir un temor o pánico a perder ì\nlo que ya tiene adquirido.\n  El 8 es un hombre ( o una mujer ) de acción. ì\nGeneralmente es rudo y astuto, ero al mismo tiempo es ì\nbenevolente y afectuoso.\n  Al 8 le gusta discutir y correr riesgos. A veces oculta ì\nsu emoción y su afecto; es impulsivo y se deja arrastrar ì\nfácilmente por su primera intención.\n  Tambien puede ser egoista y egocéntrico y suele ì\nmostrarse testarudo con bastante facilidad.\n\nNOMBRES MASCULINOS              NOMBRES FEMENINOS\nABRAHAM                         ALICIA\nADOLFO                          CLARA\nALEJANDRO                       CLEOTILDE\nALIPIO                          CONCHA\nCAMILO                          ESTEFANIA\nENRIQUE                         FELICIDAD\nFELIPE                          FORTUNATA\nGASPAR                          GEMA\nJEREMIAS                        GISELA\nJUAN FRANCISCO                  GLORIA\nJUAN LUIS                       JANA\nMARIANO                         JULIA\nPACO                            LAURA\nSERVANDO                        LIDIA\n                                LUISA\n                                MARIA JESUS\n                                MARTA\n                                MICAELA\n                                OLGA\n                                ROSA\n                                SIMONA\n                                VALENTINA\n                                VANESA\n'),(10,'\n\n                              9 (NUEVE)\n  El 9 es el número del idealismo. El 9 es altruista; ì\ntiene la particularidad de vibrar intensamente por todo ì\naquello que concierne a la paz y a la armonía en el ì\nmundo. Ama el ordensobre todas las cosas.\n  El 9 es, por lo general, simpático y atractivo. Sabe ì\nhacerse estimar y es capaz de agitar montañas por una ì\ncausa que le conmueva. A cambio, cae fácilmente en la ì\nmelancolía y el fatalismo.\n  El 9 quisiera ver a todo el mundo feliz. Desearía la ì\npaz sobre la tierra y sufre enormemente cuando se ì\nencuentra ante situaciones turbias o no muy claras, que ì\nno quiere comprender. Suele estar a la defensiva.\n  Además de afectuoso, el 9 es muy emotivo, sensible y ì\nsentimental pero, a menudo, también timido. Sabe ì\ncomportarse en público y podría triunfar perfectamente en ì\nuna empresa en la que se precise un contacto con la ì\ngente. Sin embargo, esto le supone a veces un enorme ì\nesfuerzo, porque siente un gran temor a revelarse en ì\npúblico. Lo consigue más fácilmente cuando lo hace, no ì\npor él, sino por una empresa, una tercera persona o una ì\ngran causa.\n  Aunque curioso por naturaleza, el 9 huye de los chismes ì\ny de las habladurías. Es un amigo seguro, capaz de ì\nconsagrarse en cuerpo y alma a una amistad o a una causa ì\nnoble.\n  El 9 es un trabajador encarnizado y regular. Avanza ì\nlentamente, con orden y con eficacia.\n  Es sensual y aficionado a la buena mesa.\n\nNOMBRES MASCULINOS              NOMBRE FEMENINOS\nARSENIO                         ANGELES\nAURELIO                         ASCENSION\nCRISTOBAL                       BEATRIZ\nDANIEL                          CARMEN\nEMILIO                          DULCE\nFIDEL                           ELIA\nGABRIEL                         LINA\nGINES                           MERCEDES\nGONZALO                         NELIDA\nINDALECIO                       REGINA\nJERONIMO                        SILVIA\nMARCELINO                       TANIA\nMATEO                           YOLANDA\nROGELIO\nSEBASTIAN\nSEGISMUNDO\nSERAFIN\nTADEO\n');
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nummagic`
--

DROP TABLE IF EXISTS `nummagic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nummagic` (
  `ID_num` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `nombre_paterno` varchar(150) NOT NULL,
  `nombre_materno` varchar(150) NOT NULL,
  `Fechanacimiento` varchar(50) NOT NULL,
  `numero_personas` int(11) NOT NULL,
  `numero_hersec` int(11) NOT NULL,
  `numero_per` int(11) NOT NULL,
  `numero_des` int(11) NOT NULL,
  `numero_superper1` int(11) NOT NULL,
  `numero_superper2` int(11) NOT NULL,
  `numero_subben` int(11) NOT NULL,
  PRIMARY KEY (`ID_num`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nummagic`
--

LOCK TABLES `nummagic` WRITE;
/*!40000 ALTER TABLE `nummagic` DISABLE KEYS */;
INSERT INTO `nummagic` VALUES (2,'Timmy Feest Jr.','Jamir','Jared','2013-07-14',7,1,17,23,40,11,16),(3,'Chet Muller','Cordelia','Leonor','1999-07-10',27,11,9,20,4,3,29),(4,'Florida Bogisich','Vivien','Stacey','1997-09-03',34,41,1,36,48,37,38),(5,'Prof. Arne Bosco','Rubie','Jamel','2005-01-01',42,24,43,37,19,36,30),(6,'Prof. Alta Gislason','Alexzander','Darian','2008-07-02',13,37,10,14,41,8,42),(7,'Axel Koelpin','Bernard','Frida','2000-10-26',27,8,28,47,49,1,24),(8,'Prof. Dereck Labadie II','Demetris','Alvah','2007-07-17',20,40,21,40,22,25,47),(9,'Cristina Bednar','Roberto','Dusty','1972-04-30',46,31,22,2,27,14,3),(10,'Rosa Schmitt DDS','Donnie','Otilia','1987-10-06',31,46,34,48,44,46,14),(11,'Emmanuel Becker','Marcelina','Vladimir','1985-08-08',46,49,26,19,41,2,48),(12,'Maida Larson','Layne','Shane','1982-05-10',46,27,6,42,29,27,5),(13,'Ms. Sadie Rolfson I','Raina','Mabelle','1979-01-16',12,13,12,12,29,12,35),(14,'Reuben Goodwin','Kenyatta','Skylar','2006-05-10',31,38,31,46,10,26,29),(15,'Amanda Dooley','Uriah','Tad','2019-02-08',10,1,41,35,10,45,18),(16,'Mr. Jorge Dibbert Sr.','Maude','Claudia','2017-10-10',9,17,44,5,10,13,41),(17,'Keyon Howell Sr.','Anibal','Ryann','1986-05-11',39,25,29,45,36,48,28),(18,'Delores Wisozk II','Wilma','Emmy','1993-02-22',8,50,24,33,16,47,48),(19,'Luisa Moore','Hailie','Ryan','1993-11-10',4,8,6,47,8,3,35),(20,'Krista Sporer','Danika','Madelynn','1982-09-12',3,18,34,15,49,30,47),(21,'Jazmyn Lesch PhD','Linnie','Darius','2016-07-03',47,32,35,11,24,31,32),(22,'Mr. Marshall Kuvalis','Brigitte','Bernita','2003-11-27',23,10,21,31,35,12,33),(23,'Leanna Murray','Mathew','Domenick','1972-10-10',38,22,28,20,49,48,17),(24,'Wilson Okuneva','Joannie','Christopher','1977-05-31',13,10,29,14,2,12,19),(25,'Mr. Spencer Sanford Sr.','Orie','Kaya','1994-11-05',43,34,33,10,30,50,41),(26,'Mr. Lucious Waelchi PhD','Thurman','Xavier','2000-12-27',46,14,4,44,26,15,46),(27,'Dr. Helen Feest','Damon','Garland','1983-07-18',44,17,9,1,24,42,12),(28,'Janelle Koepp','Tracey','Candice','2007-02-02',44,28,26,26,22,32,33),(29,'Gennaro Walter','Anissa','May','1999-01-22',20,28,45,22,14,50,32),(30,'Marge Gutkowski','Rozella','Maida','1993-07-19',9,1,30,1,28,5,50),(31,'Alene Klocko','Misael','Muhammad','1995-05-28',15,32,7,9,13,24,41),(32,'Neal Emmerich','Sven','Dianna','1988-12-04',8,37,44,48,22,22,5),(33,'Emery Hirthe III','Stefanie','Forest','2012-05-12',20,45,36,10,5,1,1),(34,'Gilbert Berge','Lura','Thurman','1994-10-21',7,19,10,34,4,25,9),(35,'Ms. Aleen Bauch','Chasity','Oran','2004-09-30',38,49,11,32,35,30,35),(36,'Ryder Fritsch','Angelo','Nils','2017-05-20',13,32,21,9,47,19,7),(37,'Germaine Hamill','Aiyana','Amelia','1982-04-24',42,19,47,15,47,40,6),(38,'Prof. Presley Rau V','Jamar','Brent','1994-08-09',21,20,28,50,32,27,35),(39,'Stephania Schimmel','Melvin','Bailee','1993-04-03',26,31,1,3,48,30,5),(40,'Kennith Larkin','Elenora','Sam','1998-04-01',27,34,18,32,33,5,20),(41,'1e','fdk','cksdj','20/20/1985',1,1,5,1,2,5,4);
/*!40000 ALTER TABLE `nummagic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permit_type`
--

DROP TABLE IF EXISTS `permit_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permit_type` (
  `ID_permit` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_permit`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permit_type`
--

LOCK TABLES `permit_type` WRITE;
/*!40000 ALTER TABLE `permit_type` DISABLE KEYS */;
INSERT INTO `permit_type` VALUES (1,'search'),(2,'search/insert'),(3,'search/insert/delete'),(4,'search/insert/delete/update');
/*!40000 ALTER TABLE `permit_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_type`
--

DROP TABLE IF EXISTS `user_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_type` (
  `ID_type` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_type`
--

LOCK TABLES `user_type` WRITE;
/*!40000 ALTER TABLE `user_type` DISABLE KEYS */;
INSERT INTO `user_type` VALUES (1,'user'),(2,'admin');
/*!40000 ALTER TABLE `user_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'number_magics'
--

--
-- Dumping routines for database 'number_magics'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-02 21:25:56
