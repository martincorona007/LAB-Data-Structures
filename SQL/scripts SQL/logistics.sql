CREATE DATABASE logistics;
USE logistics;
CREATE TABLE Internal_transport(
	ID_Int_transp INT PRIMARY KEY  NOT NULL AUTO_INCREMENT,
	name  VARCHAR(30) NOT NULL,
	code VARCHAR(30) NOT NULL,
	entry_date VARCHAR(30) NOT NULL,
	available TINYINT(1) NOT NULL
);
CREATE TABLE External_transport(
	ID_Ext_transp INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	modality VARCHAR(30) NOT NULL,
	type VARCHAR(30) NOT NULL,
	capacity VARCHAR(30) NOT NULL,
	speed VARCHAR(30) NOT NULL,
	available TINYINT(1) NOT NULL
);

CREATE TABLE Warehouse(
	ID_wh INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	FK_ID_client INT NOT NULL,
	FK_ID_dt VARCHAR(30) NOT NULL,
	deliveryDate VARCHAR(30) NOT NULL,
	deliveryBy VARCHAR(30) NOT NULL,
	cost VARCHAR(30) NOT NULL,
	description TINYTEXT NOT NULL,
	shape TINYTEXT NOT NULL,
	size TINYTEXT NOT NULL,
	weight TINYTEXT NOT NULL,
	physical_features TINYTEXT NOT NULL,
	number_units INT NOT NULL,
	FK_ID_Int_transp  INT,
	FK_ID_Ext_transp INT,
	status TINYTEXT,
	FOREIGN KEY(FK_ID_Int_transp) REFERENCES Internal_transport(ID_Int_transp),
	FOREIGN KEY(FK_ID_Ext_transp) REFERENCES External_transport(ID_Ext_transp)


);

CREATE TABLE Client(
	ID_client INT PRIMARY KEY  NOT NULL AUTO_INCREMENT,
	name VARCHAR(30) NOT NULL,
	first_name TINYTEXT NOT NULL,
	last_name TINYTEXT NOT NULL,
	email TINYTEXT NOT NULL,
	country_Code VARCHAR(30) NOT NULL,
	phone_number VARCHAR(30) NOT NULL,
	address TINYTEXT NOT NULL,
	country VARCHAR(30) NOT NULL,
	city VARCHAR(30) NOT NULL

);
CREATE TABLE Deliver_To(
	ID_dt INT PRIMARY KEY  NOT NULL AUTO_INCREMENT,
	name VARCHAR(30) NOT NULL,
	email TINYTEXT NOT NULL,
	country_Code VARCHAR(30) NOT NULL,
	phone_number VARCHAR(30) NOT NULL,
	address TINYTEXT NOT NULL,
	country VARCHAR(30) NOT NULL,
	city VARCHAR(30) NOT NULL,
	state VARCHAR(30) NOT NULL
);



CREATE TABLE Product(
	ID_prod INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	FK_ID_client INT NOT NULL,
	FK_ID_dt INT NOT NULL,
	deliveryDate VARCHAR(30) NOT NULL,
	deliveryBy VARCHAR(30) NOT NULL,
	cost VARCHAR(30) NOT NULL,
	description TINYTEXT NOT NULL,
	shape TINYTEXT NOT NULL,
	size TINYTEXT NOT NULL,
	weight TINYTEXT NOT NULL,
	physical_features TINYTEXT NOT NULL,
	number_units INT NOT NULL,
	status TINYTEXT NOT NULL,
	FOREIGN KEY(FK_ID_client) REFERENCES  Client(ID_client),
	FOREIGN KEY(FK_ID_dt) REFERENCES Deliver_To(ID_dt)
);

CREATE TABLE History_Warehouse(
	ID_Hwh INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	ID_wh INT  NOT NULL,
	FK_ID_client INT NOT NULL,
	FK_ID_dt VARCHAR(30) NOT NULL,
	deliveryDate VARCHAR(30) NOT NULL,
	deliveryBy VARCHAR(30) NOT NULL,
	cost VARCHAR(30) NOT NULL,
	description TINYTEXT NOT NULL,
	shape TINYTEXT NOT NULL,
	size TINYTEXT NOT NULL,
	weight TINYTEXT NOT NULL,
	physical_features TINYTEXT NOT NULL,
	number_units INT NOT NULL,
	FK_ID_Int_transp  INT,
	FK_ID_Ext_transp INT,
	status TINYTEXT

);
CREATE TABLE Employees(
	ID_empl INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	name VARCHAR(30) NOT NULL,
	first_name TINYTEXT NOT NULL,
	last_name TINYTEXT NOT NULL,
	birth_date VARCHAR(30) NOT NULL,
	email TINYTEXT NOT NULL,
	country_Code VARCHAR(30) NOT NULL,
	phone_number VARCHAR(30) NOT NULL,
	hire_date VARCHAR(30) NOT NULL,
	address TINYTEXT NOT NULL,
	country VARCHAR(30) NOT NULL

);










/*
DDDD      D     DDDDDDDDD     D
D   D    D D        D        D  D
D   D   DDDDD       D       DDDDDD
DDDD   D     D      D      D      D
*/


INSERT INTO Internal_transport (name,code,entry_date,available) VALUES('spreader','SP_46131315','2005-11-22',1);
INSERT INTO Internal_transport (name,code,entry_date,available) VALUES('Montacargas','MO_61164154','2004-10-22',1);
INSERT INTO Internal_transport (name,code,entry_date,available) VALUES('palet','P_464646815','2010-08-22',0);
INSERT INTO Internal_transport (name,code,entry_date,available) VALUES('transpaletas manuales ','TP_CV4645VS5','2019-12-22',1);
INSERT INTO Internal_transport (name,code,entry_date,available) VALUES('transpaletas motorizadas','TP_46131315','2012-04-20',1);
INSERT INTO Internal_transport (name,code,entry_date,available) VALUES('apiladoras','A_46131315','2011-08-22',0);
INSERT INTO Internal_transport (name,code,entry_date,available) VALUES('palet','P_46131315','2001-07-04',0);
INSERT INTO Internal_transport (name,code,entry_date,available) VALUES('contenedor','CO_46131315','2003-03-03',1);
INSERT INTO Internal_transport (name,code,entry_date,available) VALUES('carretillas elevadoras','CAE_46131315','2008-08-07',0);
INSERT INTO Internal_transport (name,code,entry_date,available) VALUES('carretillas contrapesadas','CAC_46131315','2001-01-08',1);
INSERT INTO Internal_transport (name,code,entry_date,available) VALUES('carretilla retractil','CAR_46131315','2004-06-09',0);
INSERT INTO Internal_transport (name,code,entry_date,available) VALUES('recoge pedidos','RP_46131315','2009-02-22',1);
INSERT INTO Internal_transport (name,code,entry_date,available) VALUES('transelevadores','T_46131315','2006-01-12',1);
INSERT INTO Internal_transport (name,code,entry_date,available) VALUES('AGV','AGV_46131315','2004-09-22',0);
INSERT INTO Internal_transport (name,code,entry_date,available) VALUES('cintas transportadoras','CT_46131315','2008-04-22',1);
INSERT INTO Internal_transport (name,code,entry_date,available) VALUES('transportadores por rodillas','TR_46131315','2005-08-25',1);
INSERT INTO Internal_transport (name,code,entry_date,available) VALUES('puentes grua','PG_46131315','2007-04-28',0);
INSERT INTO Internal_transport (name,code,entry_date,available) VALUES('puente grua monorial','PGM_46131315','2015-05-24',1);
INSERT INTO Internal_transport (name,code,entry_date,available) VALUES('gruas portico','GP_46131315','2008-09-31',0);
INSERT INTO Internal_transport (name,code,entry_date,available) VALUES('chuponardias','C_46131315','2005-08-14',1);
INSERT INTO Internal_transport (name,code,entry_date,available) VALUES('transporte materiales cartucho','TMC_46131315','2018-07-29',0);

INSERT INTO External_transport(modality,type,capacity,speed,available) VALUES('carretera','forgoneta','??????','??????',1);
INSERT INTO External_transport(modality,type,capacity,speed,available) VALUES('carretera','camion','??????','??????',0);
INSERT INTO External_transport(modality,type,capacity,speed,available) VALUES('Aereo','avion','??????','??????',1);
INSERT INTO External_transport(modality,type,capacity,speed,available) VALUES('Aereo','helicoptero','??????','??????',1);
INSERT INTO External_transport(modality,type,capacity,speed,available) VALUES('Aereo','dirigible','??????','??????',0);
INSERT INTO External_transport(modality,type,capacity,speed,available) VALUES('Maritimo','barco','??????','??????',0);
INSERT INTO External_transport(modality,type,capacity,speed,available) VALUES('Maritimo','barcaza','??????','??????',1);
INSERT INTO External_transport(modality,type,capacity,speed,available) VALUES('Maritimo','gabarra','??????','??????',0);
INSERT INTO External_transport(modality,type,capacity,speed,available) VALUES('Fluvial','gabarra','??????','??????',1);
INSERT INTO External_transport(modality,type,capacity,speed,available) VALUES('Cintas-tubos','oleaductos','??????','??????',1);
INSERT INTO External_transport(modality,type,capacity,speed,available) VALUES('Cintas-tubos','tuberias','??????','??????',0);
INSERT INTO External_transport(modality,type,capacity,speed,available) VALUES('Cintas-tubos','cintas','??????','??????',0);
INSERT INTO External_transport(modality,type,capacity,speed,available) VALUES('Cintas-tubos','transportadores','??????','??????',1);
INSERT INTO External_transport(modality,type,capacity,speed,available) VALUES('Ferrocarril','??????','??????','??????',1);





INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (1, 'Miss Nadia Hane', 'Edna', 'Kuhlman', '2011-02-17', 'ivonrueden@example.net', 'wzjg', '(860)326-0271', '1988-02-01', '639 Kayli Bridge\nNorth Myra, OR 40681-5850', '703473');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (2, 'Sandra Lebsack', 'Noelia', 'Jaskolski', '2003-07-11', 'alysson.ledner@example.com', 'dcog', '(329)762-7844', '1981-01-07', '19103 Ardith Plain Suite 745\nSouth Kaliborough, LA 93120-1410', '21477267');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (3, 'Alvina Bernhard', 'Jesse', 'Hills', '2003-12-04', 'calista.nikolaus@example.com', 'jyez', '453-815-6662x11522', '2012-09-15', '035 Goyette Brook Apt. 495\nStanleyshire, MD 73508-2158', '4674990');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (4, 'Faustino Beier Sr.', 'Floy', 'Kris', '1989-08-22', 'edgar41@example.org', 'pzbt', '233-723-8023x5349', '2015-07-31', '9296 Raynor Inlet\nTurcottetown, MS 42136', '74352164');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (5, 'Dr. Warren Luettgen PhD', 'Justina', 'Daugherty', '1999-12-22', 'pansy.russel@example.net', 'ebkw', '820-653-6076x0794', '1986-08-31', '771 Torphy Springs Suite 483\nCarissaburgh, AR 86044', '476680');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (6, 'Aileen Trantow', 'Aidan', 'Nader', '1987-12-15', 'mitchell.viola@example.com', 'jxih', '1-713-795-1485x36958', '1986-01-29', '49400 Minnie Square\nConstanceside, SC 81611-0201', '304496139');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (7, 'Cicero Jacobi II', 'Raheem', 'Mayer', '1980-09-23', 'eladio21@example.com', 'mgwc', '+04(0)8698499375', '2011-11-05', '739 Frederik Loaf Suite 344\nSouth Bettefort, CT 08874-3195', '');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (8, 'Sarina Swaniawski', 'Al', 'Weimann', '1979-08-08', 'wcummerata@example.net', 'pfui', '361.317.4764', '2009-01-28', '514 Anissa Tunnel Suite 029\nWest Isom, DE 63538-7822', '498485561');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (9, 'Jonathon Johns', 'Layla', 'Moen', '1996-08-09', 'quentin54@example.com', 'dood', '777.676.7985x9605', '2017-04-21', '0642 Bogisich Crossroad\nRauland, OR 12972-4371', '86');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (10, 'Antonetta Fay', 'Joshua', 'Cummings', '1999-08-03', 'reinger.araceli@example.net', 'ivsa', '563.032.9776x8962', '1987-03-11', '85015 Gutkowski Plaza Apt. 649\nNew Ginatown, NH 11232-7432', '956725631');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (11, 'Penelope Hartmann Jr.', 'Deja', 'Reilly', '1997-01-11', 'kihn.zena@example.com', 'xndj', '221.583.5785x4027', '2006-06-01', '7344 Freddy Station\nPort Vincent, MI 90912', '50');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (12, 'Austyn Konopelski DVM', 'Bart', 'Altenwerth', '1979-07-08', 'marianne06@example.org', 'efqo', '626-952-9331', '2001-11-01', '05939 Ritchie Street\nNorth Monteview, CO 33278', '10702');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (13, 'Elian Hand PhD', 'Lauryn', 'Conroy', '1994-05-15', 'lourdes60@example.org', 'vcxs', '1-848-961-1078', '1982-08-08', '257 Dare Rest\nJuniusside, KY 79931', '');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (14, 'Dr. Rosemarie Goldner', 'Irma', 'Greenfelder', '2005-06-25', 'schroeder.davon@example.com', 'krxd', '1-809-189-1354x5591', '1977-04-01', '818 Kertzmann Mews Suite 791\nMurphychester, WI 74482-0536', '64339358');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (15, 'May McLaughlin', 'Ines', 'Barrows', '1974-01-16', 'qlangworth@example.com', 'pyqd', '07538664899', '2007-09-22', '042 Ankunding Camp\nLake Albertaville, UT 63790-6377', '176852');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (16, 'Dr. Napoleon Ritchie III', 'Viola', 'Treutel', '1983-05-29', 'deon17@example.net', 'frnc', '1-590-001-5903', '1989-04-11', '4318 Cartwright Turnpike\nRoobburgh, CO 13458-2772', '9');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (17, 'Ms. Anne Gutkowski', 'Nikko', 'Frami', '1973-10-07', 'adelle20@example.com', 'yqqa', '(043)783-3087x1770', '2014-09-12', '856 Satterfield Mountains Suite 865\nKemmerfurt, WY 28097-5094', '6804110');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (18, 'Fredrick Hegmann', 'Sarah', 'Jenkins', '2002-04-05', 'daniel.hermann@example.net', 'auoc', '462-210-3488x889', '1984-05-24', '839 Toy River Suite 717\nPourosview, OK 52495-1915', '422');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (19, 'Jeffrey Hoppe', 'Agnes', 'Block', '1995-12-12', 'xconn@example.net', 'kumr', '459.486.7681x396', '2003-03-04', '98775 Faustino Mill\nReynoldsbury, NY 52091-4378', '478');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (20, 'Prof. Darron Spencer V', 'Alysa', 'Smith', '1999-03-08', 'hbecker@example.org', 'jgnw', '878-654-4122x1055', '2010-05-07', '559 Corrine Ports Suite 230\nOthaborough, UT 33798-5648', '17571');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (21, 'Mabelle Littel DVM', 'Axel', 'Lynch', '1987-03-11', 'sauer.hilma@example.net', 'wzyg', '1-177-182-5288', '1976-01-11', '0206 Lexi Route\nPort Marcbury, NC 71664-0562', '');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (22, 'Lavina Hilpert', 'Alayna', 'Marks', '1991-04-12', 'qkoepp@example.com', 'egsb', '06195302359', '2011-02-01', '32338 Fadel Ramp\nPort Ahmadside, MN 77938-2476', '63622696');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (23, 'Mabelle Torp', 'Lavonne', 'Hansen', '2014-11-20', 'angeline57@example.org', 'ytab', '(013)030-6331', '2016-11-04', '085 Schuppe Walk Suite 098\nSatterfieldview, NJ 33383-7034', '');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (24, 'Kaitlin Turcotte III', 'Bert', 'Senger', '1971-11-19', 'eichmann.winona@example.com', 'mhhl', '1-745-630-5639', '1997-10-26', '1347 Karlie Mountains\nLake Daren, AK 50135-3126', '844713');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (25, 'Burdette Jacobson Jr.', 'Calista', 'Homenick', '1990-12-08', 'jace.bahringer@example.net', 'yysx', '118-474-9050x741', '2018-04-01', '6941 Moore River\nWest Makaylamouth, NM 81141', '109914939');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (26, 'Lea Schumm', 'Drake', 'Bahringer', '1988-08-15', 'harber.bo@example.org', 'pwzx', '734.876.7930', '1970-03-08', '5433 Spencer Meadows\nWest Sonny, PA 78694', '22350376');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (27, 'Prof. Wendell Homenick', 'Maxine', 'Upton', '1977-04-20', 'ckulas@example.org', 'jtjh', '+13(7)8838945746', '1994-10-23', '31119 Champlin Ridge Apt. 424\nSouth Kennethberg, OK 72982', '2');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (28, 'Michale Brakus', 'Sammie', 'Yundt', '2013-02-15', 'vcrist@example.org', 'jqwh', '(506)807-8801x3394', '2018-09-29', '0391 Rosina Avenue\nPort Leonard, WA 93314', '709674973');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (29, 'Prof. Lolita Reichel', 'Nickolas', 'Veum', '1971-12-20', 'fheidenreich@example.org', 'bvhl', '(661)000-4423x3954', '1998-05-11', '07083 Kirk Falls\nWest Jamarcus, AZ 23334-0575', '2');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (30, 'Shanel Fadel', 'Hilma', 'Kutch', '1981-03-28', 'rose.o\'kon@example.com', 'zend', '821.132.2639x372', '2005-11-17', '77495 Aron Divide\nEast Ferne, CO 99988-5985', '68962911');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (31, 'Mrs. Jaida Schoen V', 'Marion', 'Trantow', '2014-07-16', 'peyton.braun@example.com', 'tlsh', '+55(9)8556172443', '1996-11-13', '4888 King Fall Apt. 251\nTorphyton, NM 60168', '');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (32, 'Athena Lehner', 'Donnell', 'Satterfield', '1983-06-07', 'noble.welch@example.org', 'ldme', '(653)782-6463x57522', '1983-12-07', '061 Cleora Underpass\nNorth Freemanton, CO 05977-9497', '');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (33, 'Georgette Thompson', 'Dixie', 'Baumbach', '1971-11-11', 'rice.elias@example.com', 'lrqp', '(001)575-0387x0770', '1980-07-31', '720 Smitham Ville\nBlandamouth, KY 82473-9347', '684644376');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (34, 'Dave Kiehn', 'Herman', 'Schamberger', '1999-12-29', 'aleen89@example.org', 'bqnh', '02379628808', '1979-08-05', '489 Blick Cove Apt. 754\nWalkermouth, AR 66198-2680', '4');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (35, 'Alejandrin Robel', 'Jessica', 'Wunsch', '1976-04-14', 'johann61@example.net', 'zupg', '1-361-739-1475x0811', '1979-06-02', '0243 Itzel Fords\nNew Tyler, WV 79306', '5599');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (36, 'Jaren Quitzon', 'Foster', 'Hermiston', '1970-03-16', 'wkemmer@example.org', 'fhju', '00571348149', '1987-12-12', '2083 Hope Port\nVergiestad, OR 92903-5707', '720548990');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (37, 'Lane Eichmann', 'Abigail', 'Bogisich', '2015-04-25', 'emilia06@example.org', 'xvbg', '1-029-464-5173', '1976-01-01', '1709 Martine Skyway Apt. 858\nCatharineland, CT 31040', '603752');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (38, 'Roma Labadie', 'Joy', 'McGlynn', '2003-01-25', 'johnathon.tromp@example.com', 'vjge', '(451)898-1198x81097', '1978-10-28', '8806 Ebony Hill\nBrakusfurt, HI 49794', '7803199');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (39, 'London Gerhold', 'Stone', 'Murazik', '1982-06-15', 'ross.frami@example.net', 'mlwi', '(039)655-1819x98715', '2014-03-07', '1404 Grant Tunnel\nEast Hughport, HI 10680-1840', '');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (40, 'Modesto Windler', 'Jillian', 'Wilkinson', '1998-10-19', 'rau.cecil@example.org', 'oput', '1-919-268-8366', '1998-12-17', '59347 Alayna Tunnel Apt. 771\nNew Estel, WI 78085-8890', '17');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (41, 'Garett Pouros', 'Antonia', 'Anderson', '1970-02-04', 'linnie66@example.org', 'ohra', '709-780-0697x4248', '1987-07-07', '1398 Wyman Plaza Apt. 120\nClotildemouth, NH 94963-3369', '66811551');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (42, 'Dr. Kirsten Nolan DDS', 'Ezequiel', 'Turner', '2004-06-15', 'vrowe@example.net', 'smyf', '057.411.6541', '1989-10-05', '838 Lesch Fields\nChynaview, FL 00167', '');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (43, 'Mr. Jaylon Mills', 'Rosendo', 'Kirlin', '1990-01-27', 'kiel97@example.com', 'qpco', '1-815-986-9256', '1996-12-25', '81689 Floy Summit\nSouth Peggiehaven, AK 38651-0674', '34073791');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (44, 'Carolina Toy Jr.', 'Josh', 'Pouros', '1994-10-16', 'nbrown@example.net', 'uyjr', '031.030.5749', '2014-09-01', '045 Kessler Mountain Apt. 309\nNew Marcusport, WY 90555-3630', '865');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (45, 'Dawn Robel Sr.', 'Ian', 'Price', '1999-04-22', 'rlubowitz@example.net', 'asjt', '893-093-3900', '2018-04-14', '1621 Koepp Haven Suite 253\nWilliamberg, ME 68960', '92');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (46, 'Norma Emard', 'Maureen', 'Stroman', '1991-08-15', 'alessandra.reilly@example.com', 'snvu', '00835466000', '1989-03-15', '03086 Hand Skyway Suite 549\nNew Neal, IA 02675', '');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (47, 'Kelley Blick', 'Chanelle', 'Lowe', '1976-11-18', 'zackary.o\'keefe@example.net', 'umcr', '(248)265-7989', '1994-05-01', '6990 Schulist Island\nLake Marion, ME 23341', '');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (48, 'Roscoe Hintz', 'Vance', 'Little', '1982-05-22', 'ernestine.harber@example.org', 'yuew', '266.423.0499x16373', '1978-07-18', '6420 Jaylen Mountains\nHettingerfort, DE 58868-6724', '81126619');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (49, 'Gussie Boyer', 'Toney', 'Marks', '1976-03-11', 'jaylin24@example.com', 'dmdn', '1-422-556-3169x2421', '2016-08-09', '8670 Dickinson Hollow Apt. 824\nGeneville, AZ 75410-9326', '72');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (50, 'Mr. Roderick Mohr', 'Milford', 'Orn', '1986-11-13', 'ezra13@example.com', 'bzaa', '(953)278-9989x2463', '1970-02-16', '305 Howell Village\nBogisichfort, MD 71748', '870453');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (51, 'Alize Dickens', 'Alanis', 'Swaniawski', '1979-07-02', 'kovacek.bridgette@example.org', 'fvxn', '811.058.5967x778', '2002-11-15', '4302 Thompson Corners\nPearlinemouth, IN 52912-5316', '385');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (52, 'Prof. Priscilla Bednar', 'Emmy', 'Morar', '2002-09-02', 'bgreenholt@example.com', 'rovd', '705-793-3365', '1987-04-13', '160 Considine Garden\nBreitenbergton, VA 51618-0239', '7406');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (53, 'Jovan Denesik III', 'Brown', 'Spinka', '1985-03-15', 'kailyn.ward@example.org', 'tupq', '1-385-056-3144x963', '2010-07-06', '5123 Kassulke Harbors\nLake Eden, OK 78388', '98974630');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (54, 'Prof. Kay Casper II', 'Rebekah', 'Frami', '1974-09-30', 'io\'connell@example.net', 'hiew', '(032)915-8320', '2017-04-27', '3948 Emmett Loaf\nBraunside, ID 63045', '2984378');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (55, 'Arlene Balistreri MD', 'Kyler', 'Hyatt', '2012-07-20', 'ecollier@example.com', 'cfng', '1-532-156-7537', '1994-05-02', '67686 Davonte Way Apt. 355\nPort Guiseppefort, PA 24519', '');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (56, 'Stacy Wiza', 'Josiane', 'Schuster', '1975-03-01', 'prohaska.eryn@example.com', 'vgas', '664-448-3466', '1989-09-16', '767 Anderson Crossing Apt. 317\nBalistreriton, GA 41792', '371207617');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (57, 'Valentina Schultz Jr.', 'Savannah', 'Ratke', '2007-04-18', 'pturner@example.org', 'cwsy', '1-724-765-9147', '1989-04-11', '9849 Gutmann Lakes\nEast Estelle, NM 47854', '16');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (58, 'Arvilla Block', 'Bethany', 'Oberbrunner', '2007-02-24', 'eroob@example.net', 'mket', '06691483530', '1975-11-23', '9668 Kiehn Plaza Apt. 873\nHaileymouth, NJ 04064-3939', '1');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (59, 'Rhea Ritchie DDS', 'Macy', 'Klein', '1996-10-04', 'rex.steuber@example.com', 'qcze', '+31(1)9187981232', '1974-10-08', '9507 Powlowski Gateway Suite 755\nZboncakside, KY 63365-1293', '4426987');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (60, 'Mrs. Dessie Bartoletti', 'Bryon', 'Ward', '1972-07-09', 'kathryn.gleason@example.com', 'mslb', '(952)432-2252x75154', '1998-11-29', '309 Jaskolski Freeway Apt. 435\nNorth Rosa, FL 99075-9616', '601348');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (61, 'Efrain Bayer', 'Antonietta', 'Ratke', '2006-08-23', 'eziemann@example.net', 'kgbz', '873.747.1266x7589', '2013-12-14', '7283 Bella Flats Apt. 137\nNew Mitchel, DE 81351', '36');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (62, 'Beatrice Jacobs', 'Gilbert', 'Veum', '1970-10-21', 'winifred.ankunding@example.net', 'cbhj', '(603)958-6842x71020', '1971-10-13', '428 Hilll Forge Suite 621\nEast Frederickchester, AL 14501-0337', '80756');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (63, 'Chloe Hudson V', 'Kristofer', 'Ullrich', '1981-04-14', 'mathilde13@example.com', 'fymp', '01705502968', '1976-06-09', '83949 Weissnat Shore Suite 920\nPort Kayamouth, AZ 52468-5700', '5635252');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (64, 'Maggie Erdman Sr.', 'Paige', 'Gerlach', '1976-10-27', 'rogahn.lisandro@example.org', 'cxxj', '484-473-5292x71497', '1990-01-29', '54011 Carlotta Turnpike Suite 250\nLake Gilberto, CT 84109', '87299');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (65, 'Mr. Maximo Osinski DVM', 'Stewart', 'Watsica', '1998-09-07', 'konopelski.rodger@example.net', 'qwaz', '693-384-6677', '2015-09-19', '529 Freeman Plaza\nEast Asa, MT 46912', '75549279');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (66, 'Mr. Eldred Watsica', 'Rudy', 'Wolff', '2011-09-23', 'franecki.easter@example.org', 'mbfh', '347.462.4327x785', '1998-10-22', '62442 Haley Grove Apt. 160\nDawsonchester, SD 57594', '36733125');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (67, 'Eliane Bruen', 'Madge', 'Murazik', '1992-03-04', 'garland35@example.com', 'vbew', '493-863-7020x1397', '2001-04-28', '4655 Bruen Route\nTravonland, IL 95064-9524', '7474334');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (68, 'Prof. Cicero Kessler Sr.', 'Aimee', 'Wiegand', '2004-08-31', 'jaleel50@example.org', 'vnum', '(029)904-4733x006', '2007-12-03', '64651 Felix Field Suite 911\nLake Christopherbury, IN 78853-4251', '14448945');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (69, 'Sonny Rice', 'Zachariah', 'Denesik', '1980-11-13', 'jakob88@example.com', 'pjmi', '(549)180-7530x242', '1991-05-23', '82048 Shaniya Junction\nWalterborough, IA 54410-4727', '5393');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (70, 'Monty Robel', 'Barney', 'Crist', '1984-07-27', 'louisa00@example.org', 'dewj', '706-711-5345', '1975-11-07', '9880 Gibson Way Suite 797\nWest Jovanyborough, IN 17296-8058', '4733275');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (71, 'Barney Walsh', 'Gabrielle', 'Oberbrunner', '1992-04-20', 'ptreutel@example.net', 'gyhw', '(505)990-2452', '1972-10-16', '3057 Toby Canyon\nNew Dorothy, NV 84525', '28');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (72, 'Miss Lola Bednar V', 'Kasandra', 'McLaughlin', '2004-06-01', 'chyna47@example.com', 'ryzx', '662.381.5986x9517', '2019-03-10', '17459 Shields Estates\nZackeryville, OR 14069-1410', '90048332');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (73, 'Willow McCullough Jr.', 'Litzy', 'Farrell', '1993-07-01', 'nicolas45@example.net', 'dbwk', '1-682-807-9117', '2012-12-04', '5278 River Point Apt. 347\nGulgowskiburgh, AR 50493', '71897');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (74, 'Ciara Stamm', 'Lexus', 'Frami', '2017-04-04', 'brekke.sunny@example.com', 'rkyk', '(469)087-3781x8397', '1979-02-14', '17373 Asa Terrace\nDavisberg, NE 54628', '54677456');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (75, 'Jerad Hudson', 'Arno', 'Fisher', '2016-03-27', 'okoelpin@example.org', 'cygv', '674.416.8401x9327', '2010-05-31', '335 Merle Estates\nGreenholtland, ME 43808', '');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (76, 'Dr. Rachelle Swift', 'Helen', 'Boyer', '1998-10-18', 'xmayert@example.com', 'wwls', '930-338-4313x8841', '2010-07-13', '39603 Hand Orchard\nPort Salvatore, FL 91029', '32');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (77, 'Victoria Jacobi II', 'Maximus', 'Graham', '1993-04-28', 'imani58@example.net', 'jpes', '071.542.3442x67433', '1999-08-23', '2060 Lehner Prairie\nPort Irwin, CO 83426', '8');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (78, 'Roma Carroll', 'Kathleen', 'Gaylord', '1989-12-22', 'sawayn.janick@example.com', 'nofs', '(972)415-9335x45366', '1980-04-16', '20708 Ron Cape Apt. 994\nNew Callie, DC 74818', '23');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (79, 'Shea Streich', 'Santa', 'Durgan', '2002-02-19', 'emckenzie@example.org', 'toje', '1-655-509-7137', '1977-07-14', '070 Schuster Springs Apt. 183\nAdrielmouth, MN 99820', '6425');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (80, 'Mrs. Olga Herman Jr.', 'Kattie', 'Pacocha', '1983-08-06', 'dibbert.barton@example.com', 'axlo', '+07(9)7268087247', '2003-06-01', '65421 Leffler Forest\nNew Durwardborough, NY 44631-2614', '60082');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (81, 'Randal Mraz', 'Hallie', 'Mosciski', '1982-04-05', 'schmeler.nathan@example.com', 'ldgo', '572.962.0614', '2003-11-01', '5037 Walker Way Suite 064\nJermaineberg, CA 56016-6712', '1393412');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (82, 'Chanel Baumbach', 'Carlotta', 'Hessel', '2006-10-25', 'edgardo63@example.net', 'wkkp', '624.334.5302x4374', '1971-08-05', '37013 Raynor Greens\nMannside, NH 57912-7421', '36454');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (83, 'Prof. Pedro Tillman', 'Theron', 'Schmidt', '2005-03-01', 'christa07@example.org', 'tlib', '00011317296', '1976-02-08', '56880 Carol Islands Suite 930\nEdwardofort, CO 07372-5518', '');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (84, 'Alba Gusikowski', 'Myrna', 'Ziemann', '1995-02-05', 'qhomenick@example.org', 'blhl', '1-143-625-5396x181', '2018-04-09', '8800 Mills Way Apt. 764\nTremblaymouth, TX 83679-4787', '70948');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (85, 'Adolfo Lowe DDS', 'Chase', 'Hyatt', '2017-05-19', 'vbayer@example.net', 'sqgq', '115-386-3047', '1973-08-21', '055 Lew Forge Apt. 955\nEast Amelieside, DE 88633', '29');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (86, 'Mr. Santiago Gaylord', 'Yesenia', 'Gerhold', '2016-04-09', 'qwillms@example.org', 'hwgp', '651-093-3187x574', '1999-11-29', '740 Alexie Trafficway\nHerzogmouth, ME 22859', '');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (87, 'Dr. Mayra Hahn', 'Genoveva', 'Quitzon', '1984-04-10', 'eerdman@example.org', 'yczw', '342-107-1767', '1992-03-05', '4826 Albert Dale\nNorth Krista, SC 41177-0221', '766');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (88, 'Wyman Conn', 'Chelsie', 'Murazik', '2006-12-30', 'palma05@example.org', 'gazk', '375-802-8021x7865', '2017-12-03', '6726 Thiel Bypass Apt. 157\nDestiniview, ND 92128-1461', '');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (89, 'Ms. Palma Waelchi IV', 'Ansel', 'Lynch', '1971-10-27', 'yjones@example.net', 'aina', '1-151-451-1203', '2008-03-18', '8854 Dora Path Apt. 104\nNorth Viviane, IA 00992', '102761');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (90, 'Nathen Ortiz', 'Mathias', 'Mann', '2011-07-16', 'shields.prudence@example.net', 'emcq', '1-583-237-0739', '1994-12-04', '469 McClure River\nWest Harryport, CA 77712-2734', '61821439');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (91, 'Travon Streich Jr.', 'Kayli', 'Connelly', '1982-11-24', 'vturcotte@example.net', 'lzcr', '1-684-818-7723x02415', '1999-06-07', '08793 Juston Inlet Apt. 874\nPort Heatherville, NC 63083', '5368');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (92, 'Dr. Louvenia Nolan Sr.', 'Bridie', 'Schaden', '1991-01-28', 'ischaefer@example.net', 'andh', '(677)864-5876', '2012-01-06', '771 Marilou Shoals\nKaylietown, SD 01516', '940');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (93, 'Kariane Kuphal', 'Vergie', 'Adams', '2001-09-07', 'vhane@example.org', 'snau', '1-303-135-3408', '1996-06-03', '60750 Brad Row Suite 513\nNew Ashlee, MS 51487-9896', '4');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (94, 'Tre Lakin', 'Darien', 'Heidenreich', '2000-01-15', 'carter.anahi@example.org', 'vweq', '02849984790', '1971-02-27', '7543 Von Throughway Suite 298\nGradychester, MS 44822-9058', '');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (95, 'Kevin Roob', 'Cooper', 'Little', '1979-09-18', 'kaylee09@example.org', 'mqxw', '346-250-9568', '2009-06-13', '1394 Cole Plaza\nJalonfurt, NY 77676-7467', '58');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (96, 'Alda Von', 'Burnice', 'Schroeder', '2004-10-22', 'martine23@example.net', 'alrz', '612.386.6705', '2005-09-17', '230 Kris Village Apt. 488\nJackport, NJ 39630-6545', '7605');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (97, 'Dayna Kuhic', 'Reed', 'Muller', '2000-05-08', 'kaylie.bernier@example.org', 'muwt', '1-985-692-5416x9683', '1973-08-05', '979 Jacobs Parks Apt. 078\nNew Cristopher, MA 57546-9672', '48741');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (98, 'Mr. Osborne Reichel', 'Carrie', 'Kemmer', '2009-02-06', 'coty.cummerata@example.org', 'suvn', '532-899-7408x3299', '2004-12-14', '952 Gustave Stream Suite 688\nWest Demetris, MD 45655-8709', '14220');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (99, 'Prof. Geovany Renner', 'Lucy', 'Rice', '2016-07-13', 'darren.sauer@example.org', 'qwyq', '676.956.8357x27355', '1970-08-22', '9871 Halvorson Wall\nAnnetteburgh, OK 25253', '5635');
INSERT INTO `Employees` (`ID_empl`, `name`, `first_name`, `last_name`, `birth_date`, `email`, `country_Code`, `phone_number`, `hire_date`, `address`, `country`) VALUES (100, 'Mrs. Nannie Cruickshank II', 'Richard', 'Heller', '2000-09-10', 'zackery29@example.com', 'jmkj', '08015688589', '2002-02-26', '559 Brandt Estates Apt. 618\nNikkiland, LA 62529-6689', '');

INSERT INTO `client` VALUES (1,'AGNES','Stephanie','Ramirez','bdow_hisqbjoszqi@mail.com','+1','59020735','????????','Iraq','?????????'),(2,'DAISY','Dennis','Clark','qpcge.usfxewwugwp@yahoo.com','+967','46814670','????????','Australia','?????????'),(3,'PHYLLIS','Peter','Griffin','juyv.gueovd@yahoo.com','+967','67579619','????????','Argentina','?????????'),(4,'HAROLD','Richard','Lee','uft.vlregboobq@google.com','+966','58658709','????????','South Korea','?????????'),(5,'JOSEPH','Christine','Alexander','fflrm_sikaiabikb@google.com','+966','40827889','????????','Argentina','?????????'),(6,'ORMAN','Martha','Ross','sfvjb.wugz@live.com','+260','39833300','????????','France','?????????'),(7,'HERBERT','Susan','Thompson','jge.tbawta@itszapopan.edu.mx','+994','17340832','????????','Russia','?????????'),(8,'WILLIAM','Sarah','Hall','yxqrw.rpaf@zapopan.tecmm.edu.mx','+376','13040892','????????','Greece','?????????'),(9,'PHYLLIS','George','Lee','hrmj.kzsqadokkwa@mail.com','+681','45511455','????????','Mexico','?????????'),(10,'RONALD','John','Flores','kjqbku.esdnj@yahoo.com','+54','46715061','????????','Spain','?????????'),(11,'ELLEN','Gregory','Sanders','onab.cgzcxqlga@yahoo.com','+1','80773698','????????','Switzerland','?????????'),(12,'MARY','Michelle','Kelly','kxe_lhbmza@google.com','+61','62384746','????????','Afghanistan','?????????'),(13,'FRANK','Patricia','Watson','mgu.knkngd@zapopan.tecmm.edu.mx','+297','79619449','????????','France','?????????'),(14,'WINIFRED','Roger','Hall','iuztd_lcgxgxtzsr@google.com','+994','03409586','????????','United Arab Emirates','?????????'),(15,'PHYLLIS','Scott','Perry','hzz.hgkg@itszapopan.edu.mx','+297','39998473','????????','United States','?????????'),(16,'HENRY','Stephanie','Rivera','obnx.fdasifa@mail.com','+43','61939623','????????','Yemen','?????????'),(17,'EDITH','Amanda','Morris','gqjsrh_dncxqj@zapopan.tecmm.edu.mx','+994','60412979','????????','South Korea','?????????'),(18,'RICHARD','Mark','Murphy','dzmu_oanmsaaabd@mail.com','+297','91890412','????????','Germany','?????????'),(19,'MARY','Elizabeth','Taylor','fszut.jynwfuihkd@mail.com','+244','44081077','????????','Switzerland','?????????'),(20,'IRENE','Betty','Powell','lpqof_umapblxiwlm@google.com','+374','33570013','????????','South Korea','?????????'),(21,'MAY','Catherine','Turner','kupvy.oyzciclx@yahoo.com','+374','71475448','????????','Brazil','?????????'),(22,'ALBERT','Ryan','Cooper','eaq.jqaddpnvp@mail.com','+967','79519364','????????','Argentina','?????????'),(23,'DORIS','Frances','Hernandez','pezz.usgbjkwe@yahoo.com','+297','11467805','????????','Taildan','?????????'),(24,'LEONARD','Pamela','Miller','cige_uxdacnlp@mail.com','+54','46166603','????????','Greece','?????????'),(25,'WINIFRED','George','Long','jfaz.rgfgjyqk@google.com','+967','33448716','????????','Iraq','?????????'),(26,'MARGARET','Peter','James','ztvhpa_trdpxybm@google.com','+1','85125073','????????','Egypt','?????????'),(27,'FRED','Deborah','Gonzalez','jsnv.zuzoqpbopg@live.com','+61','64286584','????????','Taildan','?????????'),(28,'GLADYS','Sarah','Rivera','rovh_jlbb@google.com','+1','03891058','????????','Switzerland','?????????'),(29,'DORIS','Larry','Gonzalez','eukev_spxqncz@mail.com','+1','61075455','????????','Argentina','?????????'),(30,'GEORGE','Anna','Walker','fkjyx.avarqe@zapopan.tecmm.edu.mx','+1','50565681','????????','Chile','?????????'),(31,'SIDNEY','Nancy','Mitchell','ilemo_ilen@google.com','+1','69709654','????????','Yemen','?????????'),(32,'GEORGE','Anthony','Taylor','eqrf.chduhxod@zapopan.tecmm.edu.mx','+966','00017154','????????','Greece','?????????'),(33,'SIDNEY','Joshua','Bryant','nuh_bawi@yahoo.com','+967','84766565','????????','Australia','?????????'),(34,'ALBERT','Cynthia','Rogers','alego.ygkg@itszapopan.edu.mx','+244','90496211','????????','Brazil','?????????'),(35,'RICHARD','Janet','Wood','eply.nulw@live.com','+1','86610621','????????','Spain','?????????'),(36,'EDNA','Christine','James','zttc.iiqdhfhtw@google.com','+263','61717474','????????','Brazil','?????????'),(37,'JOSEPH','George','Thompson','wyak.vmwzc@zapopan.tecmm.edu.mx','+263','39773756','????????','Russia','?????????'),(38,'EDNA','Steven','Anderson','mekx.sqcoolm@yahoo.com','+54','72036041','????????','Russia','?????????'),(39,'FRANK','Patrick','Ramirez','zwi_yiubjervdfp@live.com','+1','06167804','????????','Chile','?????????'),(40,'HORACE','Jerry','Sanders','lataf.juwancwz@yahoo.com','+374','54680957','????????','Germany','?????????'),(41,'HAROLD','Timothy','Clark','lrzmsf.ncasgxs@zapopan.tecmm.edu.mx','+54','53015518','????????','Australia','?????????'),(42,'WILFRED','Melissa','Moore','pub.hucfwegvk@mail.com','+43','31338244','????????','Iraq','?????????'),(43,'CECIL','Douglas','Edwards','tfwqf.ccdmebweekn@live.com','+213','75663939','????????','United States','?????????'),(44,'MARGARET','Frank','Edwards','qqk.ddhckngv@yahoo.com','+880','27166227','????????','Iraq','?????????'),(45,'CLIFFORD','Donald','Garcia','aot.fvogzhmp@mail.com','+355','57009506','????????','Australia','?????????'),(46,'MINNIE','Jerry','Miller','axko.ftbamqtutlx@yahoo.com','+213','21804165','????????','Yemen','?????????'),(47,'MAY','Patricia','Diaz','wgt.qjuyrn@mail.com','+244','39966020','????????','Colombia','?????????'),(48,'THOMAS','Ann','Watson','sjr.ddhbow@mail.com','+1','63957342','????????','United Arab Emirates','?????????'),(49,'MABEL','Timothy','Bell','htw_udlugtaw@yahoo.com','+681','32194354','????????','United States','?????????'),(50,'WILLIAM','Patricia','White','pms.okikj@mail.com','+213','56553286','????????','Switzerland','?????????'),(51,'HARRY','Linda','Brooks','mhxym_eicnyw@live.com','+994','16643363','????????','South Korea','?????????'),(52,'GRACE','Deborah','Diaz','lihf.fwpisriqcqy@itszapopan.edu.mx','+355','94410097','????????','Iraq','?????????'),(53,'RICHARD','Gary','Henderson','nfmlxe.jhkdnnz@live.com','+880','93950431','????????','Taildan','?????????'),(54,'EDITH','William','Gonzales','mqrd_yhpfe@live.com','+297','59189362','????????','Egypt','?????????'),(55,'WINIFRED','Ronald','Lopez','iuw_hzdsx@itszapopan.edu.mx','+54','75622774','????????','Argentina','?????????'),(56,'ELSIE','Joseph','Clark','nydcur.xpecqhkhdxc@itszapopan.edu.mx','+1','10786097','????????','Australia','?????????'),(57,'ELLEN','Daniel','Lewis','lnhrow_huccv@live.com','+54','13532057','????????','Argentina','?????????'),(58,'EDITH','Frances','Lee','jbh.vgrrvy@yahoo.com','+374','72910433','????????','United States','?????????'),(59,'RONALD','Frances','Sanchez','tgxofk_qdtkcnhvk@live.com','+260','42918695','????????','Iraq','?????????'),(60,'THOMAS','Brian','Jenkins','zmjd_juwwqnvncy@live.com','+213','69844282','????????','Yemen','?????????'),(61,'GLADYS','Lisa','Nelson','hgmgt.fjfzli@live.com','+355','09656617','????????','Russia','?????????'),(62,'MARGARET','Larry','Wright','ucayjb.eqrnllto@mail.com','+967','84620377','????????','United States','?????????'),(63,'LUCY','Debra','Jones','vbuoms.euhecrdsdnd@yahoo.com','+43','56643401','????????','Russia','?????????');
INSERT INTO `deliver_to` VALUES (1,'CATHERINE','ojdqh_vojdczr@live.com','+681','12847343','????????','Chile','?????????','?????????'),(2,'PHYLLIS','tmdz.hhpbkkyl@yahoo.com','+1','44888532','????????','Spain','?????????','?????????'),(3,'ETHEL','kfydrz.kmdgfqnvmx@google.com','+880','71406172','????????','Germany','?????????','?????????'),(4,'WINIFRED','qouk.owterkyqg@yahoo.com','+880','08279579','????????','Spain','?????????','?????????'),(5,'LEONARD','oecrky_ebskhrnqnte@mail.com','+1','78244129','????????','Mexico','?????????','?????????'),(6,'CYRIL','ebsh.wnanamlt@live.com','+43','17480602','????????','Germany','?????????','?????????'),(7,'WINIFRED','swfk.cxhqtt@live.com','+1','79466415','????????','Germany','?????????','?????????'),(8,'OLIVE','puezi.rdsbbm@live.com','+244','91924325','????????','Yemen','?????????','?????????'),(9,'EVELYN','enew_uokiihj@zapopan.tecmm.edu.mx','+43','44899189','????????','Iraq','?????????','?????????'),(10,'EVA','ncumbw.cavdk@mail.com','+994','60241474','????????','Iraq','?????????','?????????'),(11,'WILFRED','uatik.bbetp@live.com','+966','43173258','????????','Egypt','?????????','?????????'),(12,'LUCY','iuahm_yitubfydt@live.com','+1','42675662','????????','Argentina','?????????','?????????'),(13,'HARRY','klzey.lmbw@zapopan.tecmm.edu.mx','+1','82523337','????????','Switzerland','?????????','?????????'),(14,'ALBERT','kwbprp.hjype@yahoo.com','+880','16448870','????????','Mexico','?????????','?????????'),(15,'VERA','ocwakw.xgpdbqbjsky@live.com','+374','51322266','????????','Argentina','?????????','?????????'),(16,'WILLIAM','len.yntgahhrlha@yahoo.com','+213','14919244','????????','Mexico','?????????','?????????'),(17,'OLIVE','qzb.zblzvmyi@zapopan.tecmm.edu.mx','+376','32924341','????????','Greece','?????????','?????????'),(18,'CHARLES','trzphp.ehwmimidv@itszapopan.edu.mx','+967','46996395','????????','Australia','?????????','?????????'),(19,'HENRY','yfgcv.thcojysq@google.com','+54','94545302','????????','Brazil','?????????','?????????'),(20,'FRANCES','ukqwoe.pgnxrrkayp@google.com','+681','71406243','????????','Greece','?????????','?????????'),(21,'ELIZABETH','cyhqb.liip@yahoo.com','+1','76970121','????????','Yemen','?????????','?????????'),(22,'LUCY','csfqso_nsbbu@live.com','+297','52441009','????????','Spain','?????????','?????????'),(23,'WALTER','lpqog_ebwd@google.com','+54','87166246','????????','South Korea','?????????','?????????'),(24,'JOHN','kyly.sqdrxoamkmg@itszapopan.edu.mx','+263','75793154','????????','Colombia','?????????','?????????'),(25,'EVELYN','prptch.jqcrxoannbt@mail.com','+213','52845643','????????','Greece','?????????','?????????'),(26,'WINIFRED','fkjfc.ydvvnsdl@zapopan.tecmm.edu.mx','+376','24601557','????????','Chile','?????????','?????????'),(27,'ANNIE','lra.niyvaf@google.com','+966','78917551','????????','Germany','?????????','?????????'),(28,'SIDNEY','jaa.iittlqtx@yahoo.com','+994','61679382','????????','Yemen','?????????','?????????'),(29,'DOROTHY','xya.grpywmwwrvb@itszapopan.edu.mx','+1','33839638','????????','Afghanistan','?????????','?????????'),(30,'SARAH','ovllxe.cdjmex@google.com','+213','97572676','????????','Brazil','?????????','?????????');


INSERT INTO Product (ID_prod, FK_ID_client, FK_ID_dt, deliveryDate, deliveryBy, cost, description, shape, size, weight, physical_features, number_units,status) VALUES (1, 8, 16, '1989-05-05', '1973-01-13', '551', 'Minus iste quasi ab sunt dolor. Tenetur doloribus ad nulla eum. Animi sed voluptatum voluptatem ea maxime. A voluptatem facere eum fuga eos et et et.', '?????', '51', 'C45D46', 'C44DS46', 2,'reception');
INSERT INTO Product (ID_prod, FK_ID_client, FK_ID_dt, deliveryDate, deliveryBy, cost, description, shape, size, weight, physical_features, number_units,status) VALUES (2, 10, 15, '1991-06-04', '1972-08-30', '4638', 'Autem sit possimus fuga vel amet ea sapiente. Placeat incidunt at saepe perspiciatis in eligendi. Reiciendis distinctio qui rerum molestias eaque dolores minima. Reiciendis ipsam officia qui ipsum quasi repellat quia et.', '??????', '13', 'CD54C5CD', '4CD5D', 5,'reception');
INSERT INTO Product (ID_prod, FK_ID_client, FK_ID_dt, deliveryDate, deliveryBy, cost, description, shape, size, weight, physical_features, number_units,status) VALUES (3, 20, 7, '2013-06-26', '1992-06-17', '551', 'Sequi et quo quidem aspernatur aut vel et. Sunt aut perspiciatis eveniet quis. Repellat corrupti porro corporis id et. Voluptatum explicabo voluptas qui tempora ut est facere.', '???????', '91', '52S4SC', 'CD4CD', 9,'reception');
INSERT INTO Product (ID_prod, FK_ID_client, FK_ID_dt, deliveryDate, deliveryBy, cost, description, shape, size, weight, physical_features, number_units,status) VALUES (4, 4, 9, '2013-10-14', '1977-01-19', '19502', 'Debitis voluptatibus sed nobis aperiam impedit. Et sit ullam autem quia vitae est. Eveniet nesciunt ipsum facere maiores.', '???????', '351', 'D4S4C4S', 'S54C45S', 8,'reception');
INSERT INTO Product (ID_prod, FK_ID_client, FK_ID_dt, deliveryDate, deliveryBy, cost, description, shape, size, weight, physical_features, number_units,status) VALUES (5, 8, 2, '1991-02-11', '2018-12-11', '20000', 'Aut expedita quos reiciendis vitae dolorem hic optio. Quo autem laborum aspernatur mollitia et animi debitis. Numquam quaerat ipsum ut sed.', '5445D4D', '5', 'C45S45C', 'S5C445S', 2,'reception');
INSERT INTO Product (ID_prod, FK_ID_client, FK_ID_dt, deliveryDate, deliveryBy, cost, description, shape, size, weight, physical_features, number_units,status) VALUES (6, 13, 6, '1974-06-04', '1988-05-01', '288', 'Sed quas est ea consectetur veniam. Possimus est et explicabo autem est vero quos. Delectus earum unde dolorum dolor voluptatem minima iusto dolorem. Voluptatem sequi ipsum dicta nulla.', '???????', '1323', 'CS54C5S', 'C4S55C', 4,'reception');
INSERT INTO Product (ID_prod, FK_ID_client, FK_ID_dt, deliveryDate, deliveryBy, cost, description, shape, size, weight, physical_features, number_units,status) VALUES (7, 2, 8, '2017-03-20', '1990-05-18', '256', 'Cupiditate asperiores velit earum repellendus ea dolor. Nemo rem laboriosam voluptatem. Numquam et quasi nostrum recusandae velit.', 'xxxxxxX', '249780794', 'S54CX5C', '44XXS4S', 5,'reception');
INSERT INTO Product (ID_prod, FK_ID_client, FK_ID_dt, deliveryDate, deliveryBy, cost, description, shape, size, weight, physical_features, number_units,status) VALUES (8, 7, 3, '2008-07-01', '1987-09-11', '52', 'Sapiente et est necessitatibus sed doloremque. Occaecati accusamus distinctio nemo libero ipsa et. Molestiae nostrum iusto qui autem natus voluptatem. Quam necessitatibus ex atque et doloribus consectetur.', 'X56454', '846366', '5S45C', 'CS45SC', 5,'reception');
INSERT INTO Product (ID_prod, FK_ID_client, FK_ID_dt, deliveryDate, deliveryBy, cost, description, shape, size, weight, physical_features, number_units,status) VALUES (9, 6, 9, '1977-02-17', '1989-07-26', '1550', 'Vel ex ipsa laborum. Eligendi a voluptates delectus temporibus omnis ipsam dolor. Ut minus beatae porro fuga aliquam. Qui facilis rerum sunt voluptatum in a.', 'X446SS4', '956003', 'C4S54SC', 'CS545S', 1,'reception');
INSERT INTO Product (ID_prod, FK_ID_client, FK_ID_dt, deliveryDate, deliveryBy, cost, description, shape, size, weight, physical_features, number_units,status) VALUES (10, 3, 4, '1978-05-01', '1991-01-19', '248', 'Natus qui deserunt sit. Ipsum debitis tenetur fuga quisquam ut voluptas iste. Inventore laboriosam et esse culpa cumque ex dicta.', 'X4D454S', '18', 'C4X5XS', '4SC5S5S', 2,'reception');
INSERT INTO Product (ID_prod, FK_ID_client, FK_ID_dt, deliveryDate, deliveryBy, cost, description, shape, size, weight, physical_features, number_units,status) VALUES (11, 9, 1, '1973-11-14', '1991-09-27', '302', 'Aut aut eaque nemo saepe aperiam. Aut praesentium voluptates magni quibusdam magni pariatur. Sapiente sed nesciunt quaerat necessitatibus dolores.', 'X45S465S4D', '5171', '4D4D4S5X5S', 'C4S54S', 9,'reception');
INSERT INTO Product (ID_prod, FK_ID_client, FK_ID_dt, deliveryDate, deliveryBy, cost, description, shape, size, weight, physical_features, number_units,status) VALUES (12, 19, 18, '1981-12-21', '2015-05-30', '700', 'Fuga illo autem animi sit voluptas. Possimus voluptatibus animi modi dicta est id. Eius fugiat nesciunt non officia omnis.', 'VDS5D4V', '9197', 'CXC5XC54', '5C5S4C', 4,'reception');
INSERT INTO Product (ID_prod, FK_ID_client, FK_ID_dt, deliveryDate, deliveryBy, cost, description, shape, size, weight, physical_features, number_units,status) VALUES (13, 16, 12, '1986-11-11', '1997-10-13', '545', 'Vero omnis culpa ad voluptatem aut maxime. Rerum eligendi necessitatibus a voluptatem qui. Magnam et et error ipsa esse. Doloribus eos ipsa recusandae. Repellat tenetur asperiores sit.', 'CSD454454', '83879677', 'C445CX5', 'C44SC5', 5,'reception');
INSERT INTO Product (ID_prod, FK_ID_client, FK_ID_dt, deliveryDate, deliveryBy, cost, description, shape, size, weight, physical_features, number_units,status) VALUES (14,20, 5, '1998-06-19', '2011-02-07', '344', 'Veniam sint illo laboriosam a. Perferendis accusamus in magnam. Autem labore optio ipsum. Et expedita et aperiam.', 'XSNCJKSD', '8', 'XCX54CX', 'X5X45S', 13,'reception');
INSERT INTO Product (ID_prod, FK_ID_client, FK_ID_dt, deliveryDate, deliveryBy, cost, description, shape, size, weight, physical_features, number_units,status) VALUES (15, 21, 15, '1990-03-12', '2016-11-15', '230', 'Qui odit accusantium eius perferendis eos. Nemo repellat voluptatem accusamus exercitationem adipisci. Ut consectetur ducimus quisquam fugiat. Pariatur officiis distinctio quo quisquam sed et. Minima modi facilis atque ducimus ab autem.', '115D54D', '958', 'C45CX45CX', 'CS54CX5S', 2,'reception');


CREATE TRIGGER before_Delete_To_WareHouse AFTER DELETE ON Product 
FOR EACH ROW
INSERT INTO Warehouse(FK_ID_client, FK_ID_dt, deliveryDate, deliveryBy, cost, description, shape, size, weight, physical_features, number_units,status) VALUES(OLD.FK_ID_client,OLD.FK_ID_dt,OLD.deliveryDate,OLD.deliveryBy,OLD.cost,OLD.description,OLD.shape,OLD.size,OLD.weight,OLD.physical_features,OLD.number_units,OLD.status);


CREATE TRIGGER before_Delete_To_WareHouse_Backup AFTER DELETE ON Warehouse
FOR EACH ROW
INSERT INTO History_Warehouse(ID_wh,FK_ID_client, FK_ID_dt, deliveryDate, deliveryBy, cost, description, shape, size, weight, physical_features, number_units,status) VALUES(OLD.ID_wh,OLD.FK_ID_client,OLD.FK_ID_dt,OLD.deliveryDate,OLD.deliveryBy,OLD.cost,OLD.description,OLD.shape,OLD.size,OLD.weight,OLD.physical_features,OLD.number_units,OLD.status);


DELETE FROM Product WHERE ID_prod="3";



UPDATE Warehouse SET FK_ID_Int_transp="5",FK_ID_Ext_transp="2",status="warehause" WHERE ID_wh="1";

UPDATE Warehouse SET status="delivered" WHERE ID_wh="1";


DELETE FROM Warehouse WHERE ID_wh="1";
