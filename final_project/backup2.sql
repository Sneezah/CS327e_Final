-- MySQL dump 10.13  Distrib 5.7.15, for Win64 (x86_64)
--
-- Host: localhost    Database: crimecrash
-- ------------------------------------------------------
-- Server version	5.7.15-log

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
-- Table structure for table `crimes_x_crashes`
--

DROP TABLE IF EXISTS `crimes_x_crashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crimes_x_crashes` (
  `incident_number` varchar(20) NOT NULL,
  `case_number` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  PRIMARY KEY (`incident_number`,`case_number`),
  KEY `case_number` (`case_number`),
  KEY `address` (`address`),
  CONSTRAINT `crimes_x_crashes_ibfk_1` FOREIGN KEY (`incident_number`) REFERENCES `crimes` (`incident_number`),
  CONSTRAINT `crimes_x_crashes_ibfk_2` FOREIGN KEY (`case_number`) REFERENCES `fatal_crashes` (`case_number`),
  CONSTRAINT `crimes_x_crashes_ibfk_3` FOREIGN KEY (`address`) REFERENCES `fatal_crashes` (`address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crimes_x_crashes`
--

LOCK TABLES `crimes_x_crashes` WRITE;
/*!40000 ALTER TABLE `crimes_x_crashes` DISABLE KEYS */;
INSERT INTO `crimes_x_crashes` VALUES ('2016131443','530465','2100  W Parmer Ln'),('2016131690','530465','2100  W Parmer Ln'),('20161391855','530465','2100  W Parmer Ln'),('20162040051','530465','2100  W Parmer Ln'),('20162221604','530465','2100  W Parmer Ln'),('20165018159','530465','2100  W Parmer Ln'),('20165020870','530465','2100  W Parmer Ln'),('2016651780','530465','2100  W Parmer Ln'),('20168001147','530465','2100  W Parmer Ln'),('20168002507','3641425','2700  Steck Ave'),('20161180754','2220464','3400  W Slaughter Ln'),('2016140361','2220464','3400  W Slaughter Ln'),('20162170134','2220464','3400  W Slaughter Ln'),('2016230167','2220464','3400  W Slaughter Ln'),('2016320441','2220464','3400  W Slaughter Ln'),('2016471519','2220464','3400  W Slaughter Ln'),('20165008015','2220464','3400  W Slaughter Ln'),('20165025941','2220464','3400  W Slaughter Ln'),('2016530649','2220464','3400  W Slaughter Ln'),('2016811413','2220464','3400  W Slaughter Ln'),('20161880198','3500173','400  Tillery St'),('20161960594','3500173','400  Tillery St'),('20162160772','3500173','400  Tillery St'),('20165006278','3500173','400  Tillery St'),('20161020219','131517','4700  E Riverside Dr'),('20161021331','131517','4700  E Riverside Dr'),('20161071842','131517','4700  E Riverside Dr'),('2016111196','131517','4700  E Riverside Dr'),('20161140755','131517','4700  E Riverside Dr'),('20161160152','131517','4700  E Riverside Dr'),('20161191645','131517','4700  E Riverside Dr'),('20161231354','131517','4700  E Riverside Dr'),('20161250339','131517','4700  E Riverside Dr'),('2016130021','131517','4700  E Riverside Dr'),('2016130135','131517','4700  E Riverside Dr'),('20161321256','131517','4700  E Riverside Dr'),('20161360578','131517','4700  E Riverside Dr'),('20161370158','131517','4700  E Riverside Dr'),('20161371275','131517','4700  E Riverside Dr'),('20161391060','131517','4700  E Riverside Dr'),('20161400792','131517','4700  E Riverside Dr'),('20161430300','131517','4700  E Riverside Dr'),('20161521728','131517','4700  E Riverside Dr'),('20161561655','131517','4700  E Riverside Dr'),('20161570521','131517','4700  E Riverside Dr'),('20161601275','131517','4700  E Riverside Dr'),('2016161072','131517','4700  E Riverside Dr'),('20161700247','131517','4700  E Riverside Dr'),('2016170268','131517','4700  E Riverside Dr'),('20161711210','131517','4700  E Riverside Dr'),('20161721606','131517','4700  E Riverside Dr'),('20161730056','131517','4700  E Riverside Dr'),('20161730066','131517','4700  E Riverside Dr'),('20161730090','131517','4700  E Riverside Dr'),('20161731620','131517','4700  E Riverside Dr'),('20161731823','131517','4700  E Riverside Dr'),('20161781059','131517','4700  E Riverside Dr'),('20161781232','131517','4700  E Riverside Dr'),('2016180448','131517','4700  E Riverside Dr'),('20161871724','131517','4700  E Riverside Dr'),('20161900077','131517','4700  E Riverside Dr'),('20161910362','131517','4700  E Riverside Dr'),('20161910966','131517','4700  E Riverside Dr'),('20161930001','131517','4700  E Riverside Dr'),('20162010683','131517','4700  E Riverside Dr'),('20162080004','131517','4700  E Riverside Dr'),('20162081418','131517','4700  E Riverside Dr'),('20162090056','131517','4700  E Riverside Dr'),('20162090219','131517','4700  E Riverside Dr'),('20162110245','131517','4700  E Riverside Dr'),('20162111219','131517','4700  E Riverside Dr'),('20162139986','131517','4700  E Riverside Dr'),('20162191807','131517','4700  E Riverside Dr'),('2016241194','131517','4700  E Riverside Dr'),('2016260407','131517','4700  E Riverside Dr'),('2016260849','131517','4700  E Riverside Dr'),('2016300381','131517','4700  E Riverside Dr'),('201631418','131517','4700  E Riverside Dr'),('2016330148','131517','4700  E Riverside Dr'),('2016331127','131517','4700  E Riverside Dr'),('2016350047','131517','4700  E Riverside Dr'),('2016380498','131517','4700  E Riverside Dr'),('201641557','131517','4700  E Riverside Dr'),('2016421141','131517','4700  E Riverside Dr'),('2016440197','131517','4700  E Riverside Dr'),('2016450426','131517','4700  E Riverside Dr'),('2016450521','131517','4700  E Riverside Dr'),('2016471879','131517','4700  E Riverside Dr'),('20165000413','131517','4700  E Riverside Dr'),('20165000867','131517','4700  E Riverside Dr'),('20165001307','131517','4700  E Riverside Dr'),('20165001461','131517','4700  E Riverside Dr'),('20165002655','131517','4700  E Riverside Dr'),('20165004772','131517','4700  E Riverside Dr'),('20165006004','131517','4700  E Riverside Dr'),('20165006198','131517','4700  E Riverside Dr'),('20165006906','131517','4700  E Riverside Dr'),('20165007393','131517','4700  E Riverside Dr'),('20165008023','131517','4700  E Riverside Dr'),('20165008527','131517','4700  E Riverside Dr'),('20165010593','131517','4700  E Riverside Dr'),('20165012038','131517','4700  E Riverside Dr'),('20165012256','131517','4700  E Riverside Dr'),('20165012535','131517','4700  E Riverside Dr'),('20165013421','131517','4700  E Riverside Dr'),('20165015429','131517','4700  E Riverside Dr'),('20165015596','131517','4700  E Riverside Dr'),('20165016052','131517','4700  E Riverside Dr'),('20165019682','131517','4700  E Riverside Dr'),('20165019714','131517','4700  E Riverside Dr'),('20165019728','131517','4700  E Riverside Dr'),('20165022148','131517','4700  E Riverside Dr'),('20165022308','131517','4700  E Riverside Dr'),('20165022442','131517','4700  E Riverside Dr'),('20165023488','131517','4700  E Riverside Dr'),('20165023496','131517','4700  E Riverside Dr'),('20165023719','131517','4700  E Riverside Dr'),('20165025131','131517','4700  E Riverside Dr'),('20165025263','131517','4700  E Riverside Dr'),('20165025504','131517','4700  E Riverside Dr'),('20165025521','131517','4700  E Riverside Dr'),('20165025574','131517','4700  E Riverside Dr'),('20165027517','131517','4700  E Riverside Dr'),('20165028076','131517','4700  E Riverside Dr'),('20165029059','131517','4700  E Riverside Dr'),('20165029775','131517','4700  E Riverside Dr'),('20165030207','131517','4700  E Riverside Dr'),('20165030521','131517','4700  E Riverside Dr'),('20165030921','131517','4700  E Riverside Dr'),('20165031594','131517','4700  E Riverside Dr'),('20165032018','131517','4700  E Riverside Dr'),('20165032905','131517','4700  E Riverside Dr'),('20165033348','131517','4700  E Riverside Dr'),('20165033761','131517','4700  E Riverside Dr'),('2016511582','131517','4700  E Riverside Dr'),('201651517','131517','4700  E Riverside Dr'),('2016521089','131517','4700  E Riverside Dr'),('2016570111','131517','4700  E Riverside Dr'),('2016591406','131517','4700  E Riverside Dr'),('2016621915','131517','4700  E Riverside Dr'),('2016630133','131517','4700  E Riverside Dr'),('2016631279','131517','4700  E Riverside Dr'),('2016651329','131517','4700  E Riverside Dr'),('2016691635','131517','4700  E Riverside Dr'),('201670132','131517','4700  E Riverside Dr'),('2016701620','131517','4700  E Riverside Dr'),('2016711460','131517','4700  E Riverside Dr'),('2016711947','131517','4700  E Riverside Dr'),('2016721233','131517','4700  E Riverside Dr'),('2016751517','131517','4700  E Riverside Dr'),('2016781526','131517','4700  E Riverside Dr'),('2016792166','131517','4700  E Riverside Dr'),('20168001154','131517','4700  E Riverside Dr'),('20168001541','131517','4700  E Riverside Dr'),('20168002946','131517','4700  E Riverside Dr'),('20168002999','131517','4700  E Riverside Dr'),('20168003030','131517','4700  E Riverside Dr'),('20168003264','131517','4700  E Riverside Dr'),('2016831537','131517','4700  E Riverside Dr'),('2016840758','131517','4700  E Riverside Dr'),('201691107','131517','4700  E Riverside Dr'),('2016931614','131517','4700  E Riverside Dr'),('2016950478','131517','4700  E Riverside Dr'),('2016961723','131517','4700  E Riverside Dr'),('20162200533','1120238','5200  Burleson Rd'),('20165029525','1120238','5200  Burleson Rd'),('20161690721','2511796','6500  Manchaca Rd'),('20161810341','2511796','6500  Manchaca Rd'),('20165002768','2480466','7000  Thannas Way'),('20165022836','2480466','7000  Thannas Way'),('20165033809','2480466','7000  Thannas Way'),('20161080527','240366','7300  Burleson Rd'),('20165003687','240366','7300  Burleson Rd'),('2016930509','240366','7300  Burleson Rd'),('20161100349','861726','800  W Slaughter Ln'),('20161110822','861726','800  W Slaughter Ln'),('201611233','861726','800  W Slaughter Ln'),('20161182188','861726','800  W Slaughter Ln'),('20161271268','861726','800  W Slaughter Ln'),('20161280194','861726','800  W Slaughter Ln'),('20161281932','861726','800  W Slaughter Ln'),('20161400054','861726','800  W Slaughter Ln'),('20161590552','861726','800  W Slaughter Ln'),('20161710804','861726','800  W Slaughter Ln'),('20161810928','861726','800  W Slaughter Ln'),('20161850681','861726','800  W Slaughter Ln'),('20161862400','861726','800  W Slaughter Ln'),('20162070064','861726','800  W Slaughter Ln'),('20162090491','861726','800  W Slaughter Ln'),('20162120424','861726','800  W Slaughter Ln'),('20162121354','861726','800  W Slaughter Ln'),('20162170603','861726','800  W Slaughter Ln'),('20162241933','861726','800  W Slaughter Ln'),('20162280107','861726','800  W Slaughter Ln'),('2016380343','861726','800  W Slaughter Ln'),('2016390413','861726','800  W Slaughter Ln'),('2016440433','861726','800  W Slaughter Ln'),('2016440692','861726','800  W Slaughter Ln'),('2016461094','861726','800  W Slaughter Ln'),('2016470426','861726','800  W Slaughter Ln'),('20165002672','861726','800  W Slaughter Ln'),('20165004586','861726','800  W Slaughter Ln'),('20165008028','861726','800  W Slaughter Ln'),('20165009793','861726','800  W Slaughter Ln'),('20165012184','861726','800  W Slaughter Ln'),('20165013582','861726','800  W Slaughter Ln'),('20165017577','861726','800  W Slaughter Ln'),('20165018452','861726','800  W Slaughter Ln'),('20165018751','861726','800  W Slaughter Ln'),('20165019504','861726','800  W Slaughter Ln'),('20165022875','861726','800  W Slaughter Ln'),('20165031472','861726','800  W Slaughter Ln'),('20165031563','861726','800  W Slaughter Ln'),('20165032303','861726','800  W Slaughter Ln'),('20165032583','861726','800  W Slaughter Ln'),('20165032620','861726','800  W Slaughter Ln'),('2016650536','861726','800  W Slaughter Ln'),('2016660414','861726','800  W Slaughter Ln'),('201671269','861726','800  W Slaughter Ln'),('20168002896','861726','800  W Slaughter Ln'),('20168003233','861726','800  W Slaughter Ln'),('2016820460','861726','800  W Slaughter Ln'),('2016831229','861726','800  W Slaughter Ln'),('2016851306','861726','800  W Slaughter Ln'),('2016852040','861726','800  W Slaughter Ln'),('201690978','861726','800  W Slaughter Ln'),('2016910215','861726','800  W Slaughter Ln'),('2016910594','861726','800  W Slaughter Ln'),('2016980638','861726','800  W Slaughter Ln'),('20161010570','3130037','9000  Research Blvd SB'),('20161600028','3130037','9000  Research Blvd SB'),('20161611554','3130037','9000  Research Blvd SB'),('2016401445','3130037','9000  Research Blvd SB'),('201641573','3130037','9000  Research Blvd SB'),('20165010443','3130037','9000  Research Blvd SB'),('20165024798','3130037','9000  Research Blvd SB'),('20165031820','3130037','9000  Research Blvd SB'),('2016751489','3130037','9000  Research Blvd SB'),('2016980920','3130037','9000  Research Blvd SB'),('20161130445','2120938','9700  Manchaca Rd'),('20161190056','2120938','9700  Manchaca Rd'),('20161430738','2120938','9700  Manchaca Rd'),('20161471586','2120938','9700  Manchaca Rd'),('20161511390','2120938','9700  Manchaca Rd'),('20161571588','2120938','9700  Manchaca Rd'),('20161681175','2120938','9700  Manchaca Rd'),('20162011021','2120938','9700  Manchaca Rd'),('20162140860','2120938','9700  Manchaca Rd'),('20162210339','2120938','9700  Manchaca Rd'),('20165011135','2120938','9700  Manchaca Rd'),('20165019476','2120938','9700  Manchaca Rd'),('20165020411','2120938','9700  Manchaca Rd'),('20165026391','2120938','9700  Manchaca Rd'),('20165029690','2120938','9700  Manchaca Rd'),('2016842122','2120938','9700  Manchaca Rd');
/*!40000 ALTER TABLE `crimes_x_crashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motorcycle`
--

DROP TABLE IF EXISTS `motorcycle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `motorcycle` (
  `case_number` varchar(20) NOT NULL,
  `helmet` varchar(200) DEFAULT NULL,
  `mlicense_status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`case_number`),
  CONSTRAINT `motorcycle_ibfk_1` FOREIGN KEY (`case_number`) REFERENCES `fatal_crashes` (`case_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motorcycle`
--

LOCK TABLES `motorcycle` WRITE;
/*!40000 ALTER TABLE `motorcycle` DISABLE KEYS */;
INSERT INTO `motorcycle` VALUES ('1121615','helmet','no motorcycle license'),('1190387','helmet','no motorcycle license'),('131517','helmet','no motorcycle license'),('1360124','helmet','no motorcycle license'),('1591125','helmet','no motorcycle license'),('2210159','helmet','no DL'),('2281258','no helmet','okay  '),('2831615','no helmet','no DL'),('3221644','no helmet','no DL'),('3641425','helmet','no DL'),('3650652','helmet','no DL'),('821128','no helmet','no motorcycle license'),('871475','helmet','okay  '),('880163','helmet','okay  '),('890331','helmet','okay  ');
/*!40000 ALTER TABLE `motorcycle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motor_vehicle`
--

DROP TABLE IF EXISTS `motor_vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `motor_vehicle` (
  `case_number` varchar(20) NOT NULL,
  `restrainment` varchar(200) DEFAULT NULL,
  `dlicense_status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`case_number`),
  CONSTRAINT `motor_vehicle_ibfk_1` FOREIGN KEY (`case_number`) REFERENCES `fatal_crashes` (`case_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motor_vehicle`
--

LOCK TABLES `motor_vehicle` WRITE;
/*!40000 ALTER TABLE `motor_vehicle` DISABLE KEYS */;
INSERT INTO `motor_vehicle` VALUES ('1021773','seatbelt worn','okay  '),('1210550','unknown','okay  '),('1300319','no seatbelt/ 1 worn','no DL'),('1450562','seatbelt worn','okay  '),('1471857','seatbelt worn','suspended'),('150104','seatbelt worn','okay  '),('1521872','no seatbelt','okay  '),('1700080','seatbelt worn','okay  '),('1790220','seatbelt worn','no DL'),('181537','seatbelt worn','okay  '),('1831489','seatbelt worn','no DL'),('1841034','seatbelt worn','okay  '),('1921496','seatbelt worn','no DL'),('1961576','seatbelt worn','okay  '),('2050108','seatbelt worn','okay  '),('2110058','seatbelt worn','okay  '),('2120938','seatbelt worn','okay  '),('2220464','no seatbelt','okay  '),('2310184','no seatbelt/ 1 worn','okay  '),('2320928','no seatbelt/ 1 worn','no DL'),('240366','seatbelt worn','okay  '),('2420466','no seatbelt (passenger)/ 3 worn','suspended'),('2480466','no seatbelt','no DL'),('2570230','no seatbelt','okay  '),('2660066','unknown','okay  '),('2690383','seatbelt worn','okay  '),('271694','unknown','okay  '),('3041434','unknown','no DL'),('3070006','no seatbelt','okay  '),('3100135','no seatbelt','okay  '),('3130037','seatbelt worn','no DL'),('3180188','seatbelt worn','suspended'),('3181228','no seatbelt','no DL'),('3500173','no seatbelt','no DL'),('3601318','seatbelt worn','suspended'),('3640128','no seatbelt','suspended'),('3640244','seatbelt worn','okay  '),('430844','seatbelt worn','okay  '),('460146','no seatbelt','no DL'),('530465','seatbelt worn','okay  '),('540076','no seatbelt','suspended'),('61199','no seatbelt','okay  '),('770231','unknown','okay  '),('821761','no seatbelt','suspended'),('861726','seatbelt worn','okay  '),('870426','no seatbelt','okay  '),('90206','unknown','okay  ');
/*!40000 ALTER TABLE `motor_vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bicycle`
--

DROP TABLE IF EXISTS `bicycle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bicycle` (
  `case_number` varchar(20) NOT NULL,
  `helmet` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`case_number`),
  CONSTRAINT `bicycle_ibfk_1` FOREIGN KEY (`case_number`) REFERENCES `fatal_crashes` (`case_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bicycle`
--

LOCK TABLES `bicycle` WRITE;
/*!40000 ALTER TABLE `bicycle` DISABLE KEYS */;
INSERT INTO `bicycle` VALUES ('1571536','no helmet'),('3560291','no helmet (bike)');
/*!40000 ALTER TABLE `bicycle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crime_type`
--

DROP TABLE IF EXISTS `crime_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crime_type` (
  `type_of_crime` varchar(30) NOT NULL,
  PRIMARY KEY (`type_of_crime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crime_type`
--

LOCK TABLES `crime_type` WRITE;
/*!40000 ALTER TABLE `crime_type` DISABLE KEYS */;
INSERT INTO `crime_type` VALUES ('ABAND VEH  (STORAGE FACILITY)'),('ABANDONED BICYCLES/PARTS'),('ABANDONED PROP'),('ABANDONED VEH'),('ABANDONED VEH/GARAGEKEEPER'),('ACCIDENTAL DEATH'),('ACCIDENTAL DROWNING DEATH'),('ACCIDENTAL DRUG OVERDOSE'),('ACCIDENTAL INJURY'),('ACCIDENTAL SHOOTING INJURY'),('ACCIDENTAL SHOOTING NON-INJURY'),('AGG ASLT ENHANC STRANGL/SUFFOC'),('AGG ASLT STRANGLE/SUFFOCATE'),('AGG ASLT W/MOTOR VEH FAM/DAT V'),('AGG ASSAULT'),('AGG ASSAULT FAM/DATE VIOLENCE'),('AGG ASSAULT ON PUBLIC SERVANT'),('AGG ASSAULT WITH MOTOR VEH'),('AGG FORCED SODOMY'),('AGG KIDNAPPING'),('AGG KIDNAPPING FAM VIO'),('AGG PROMOTION OF PROSTITUTION'),('AGG RAPE'),('AGG ROBBERY BY ASSAULT'),('AGG ROBBERY/DEADLY WEAPON'),('AGG SEXUAL ASSAULT W OBJECT'),('AIRPLANE EMERGENCY'),('AIRPORT - BREACH OF SECURITY'),('AIRPORT - FEDERAL VIOL'),('AIRPORT INFORMATION'),('AIRPORT PLACES WEAPON PROHIBIT'),('AIRPORT-TSA ASSIST'),('ALCOHOL CONTROL TEAM'),('ANIMAL BITE'),('APPLIC TO REVOKE PROBATION'),('APPLICATION FOR PERMIT OR LIC'),('ARSON'),('ARSON INFORMATION'),('ASSAULT  CONTACT-SEXUAL NATURE'),('ASSAULT - SCHOOL PERSONNEL'),('ASSAULT BY CONTACT'),('ASSAULT BY CONTACT FAM/DATING'),('ASSAULT BY THREAT'),('ASSAULT BY THREAT FAM/DATING'),('ASSAULT INFO (FAMILY VIOLENCE'),('ASSAULT INFORMATION'),('ASSAULT ON PUBLIC SERVANT'),('ASSAULT W/INJURY-FAM/DATE VIOL'),('ASSAULT WITH INJURY'),('ASSIST CITY DEPT/OTHER'),('ASSIST COMPLAINANT'),('ASSIST EMS'),('ASSIST FIRE DEPT'),('ASSIST MOTORIST/PUBLIC'),('ASSIST OTHER POLICE AGENCY'),('AUTO SALVAGE DEALERS'),('AUTO THEFT'),('AUTO THEFT INFORMATION'),('BICYCLE REGISTRATION'),('BICYCLIST INJURED'),('BLOCKED DRIVE/ROADWAY'),('BOAT CRASH/ACCIDENT'),('BOATING WHILE INTOXICATED'),('BOMB THREAT'),('BREACH OF COMPUTER SECURITY'),('BRIBERY'),('BURG NON RESIDENCE SHEDS'),('BURG OF RES - FAM/DATING ASLT'),('BURG OF RES - SEXUAL NATURE'),('BURGLAR ALARM'),('BURGLARY INFORMATION'),('BURGLARY NON RESIDENCE'),('BURGLARY OF COIN-OP MACHINE'),('BURGLARY OF RESIDENCE'),('BURGLARY OF VEH INFORMATION'),('BURGLARY OF VEHICLE'),('CHILD ABUSE INFORMATION'),('CIVIL DISTURBANCE/DEMO'),('CIVILIAN INVOLVED INCIDENT'),('CLANDESTINE LAB RESPONSE'),('COMMUNITY POLICE'),('COMPELLING PROSTITUTION'),('CONT VIOL AGAINST FAMILY'),('CONTEMPT OF COURT'),('COUNTERFEITING'),('COUNTERFEITING INFORMATION'),('COURT LIAISON'),('CRASH/AUTO VS BICYCLE'),('CRASH/AUTO VS MOTORCYCLE'),('CRASH/AUTO VS PEDESTRIAN'),('CRASH/CITY VEHICLE'),('CRASH/EMS'),('CRASH/FAIL STOP AND RENDER AID'),('CRASH/FATALITY'),('CRASH/INJURY'),('CRASH/INTOX MANSLAUGHTER'),('CRASH/INTOXICATION ASSAULT'),('CRASH/LEAVING THE SCENE'),('CRASH/NO INJURY'),('CRASH/PRIVATE PROPERTY'),('CRASH/SERIOUS BODILY INJURY'),('CRED CARD ABUSE - EXPIR-CANCEL'),('CRED CARD ABUSE - OTHER'),('CRED CARD ABUSE BY FORGERY'),('CRIMES AGAINST ELDERLY'),('CRIMINAL CONSPIRACY'),('CRIMINAL MISCHIEF'),('CRIMINAL MISCHIEF BY ARSON'),('CRIMINAL MISCHIEF INFORMATION'),('CRIMINAL SOLICITATION'),('CRIMINAL TRESPASS'),('CRIMINAL TRESPASS NOTICE'),('CRIMINAL TRESPASS/HOTEL'),('CRIMINAL TRESPASS/IN VEHICLE'),('CRIMINAL TRESPASS/TRANSIENT'),('CRUELTY TO ANIMALS'),('CUSTODY ARREST TRAFFIC WARR'),('DAMAGE CITY PROP'),('DAMAGE CITY VEHICLE'),('DANGEROUS ANIMAL'),('DATING DISTURBANCE'),('DEADLY CONDUCT'),('DEADLY CONDUCT FAM/DATE VIOL'),('DEATH DUE TO NATURAL CAUSES'),('DEBIT CARD ABUSE'),('DECEASED PERSON'),('DEL CONTROLLED SUB/NARCOTIC'),('DEL CONTROLLED SUB/OTHER'),('DEL CONTROLLED SUB/SYN NARC'),('DEL MARIJUANA'),('DESECRATION VENERATED OBJECT'),('DEST OF IMPOUNDED PROP-EVIDEN'),('DIRECT TRAFFIC'),('DIRECTED PATROL'),('DISCLOS/PROMO INTIMATE VISUAL'),('DISPOSAL OF SOLID WASTE'),('DISTRICT REPRESENTATIVE'),('DISTURBANCE - OTHER'),('DOC ABUSE OR THREAT'),('DOC ABUSIVE LANGUAGE'),('DOC DISCHARGE GUN - PUB PLACE'),('DOC DISCHARGE GUN - PUB ROAD'),('DOC DISPLAY FIREARM-PUB PLACE'),('DOC EXPOSURE'),('DOC FIGHTING'),('DOC OFFENSIVE GESTURE'),('DOC UNREASONABLE NOISE'),('DOC WINDOW PEEPING - HOTEL'),('DOC WINDOW PEEPING - PUB AREA'),('DOC WINDOW PEEPING-RESIDENCE'),('DRIVERS LICENSE VIOL/OTHER'),('DRIVING WHILE INTOX / FELONY'),('DRIVING WHILE LICENSE INVALID'),('DRONE INVOLVED'),('DUI - AGE 17 TO 20'),('DUMPING REFUSE NEAR HIGHWAY'),('DWI'),('DWI  .15 BAC OR ABOVE'),('DWI - DRUG RECOGNITION EXPERT'),('DWI 2ND'),('ELUDING'),('EMERGENCY PROTECTIVE ORDER'),('ENGAGING IN ORGANIZED CRIME'),('EVADING / FOOT'),('EVADING / VEHICLE PURSUIT'),('EVADING VEHICLE'),('EXPIRED-AUTO THEFT-COMMERCIAL'),('EXPIRED-LOST LICENSE PLATE'),('EXPLOSIVE ORDNANCE DISPOSAL'),('FAILURE TO IDENTIFY'),('FAILURE TO REG AS SEX OFFENDER'),('FALSE ALARM OR REPORT'),('FALSE BURGLAR ALARM'),('FALSE REPORT TO PEACE OFFICER'),('FALSE ROBBERY ALARM'),('FALSE STATEMENT -OBTAIN CREDIT'),('FAMILY DISTURBANCE'),('FAMILY DISTURBANCE/PARENTAL'),('FEDERAL CASES'),('FEDERAL VIOL/OTHER'),('FELONY ENHANCEMENT/ASSLT W/INJ'),('FICTITIOUS DRIVERS LICENSE/ID'),('FICTITIOUS INSPECTION STICKER'),('FICTITIOUS LICENSE PLATE'),('FIELD OBSERVATION'),('FIREARMS'),('FORCED SODOMY'),('FORGERY - OTHER'),('FORGERY AND PASSING'),('FORGERY BY ALTERATION'),('FORGERY BY MAKING'),('FORGERY OF IDENTIFICATION'),('FORGERY- CERTIFICATE OF TITLE'),('FOUND ADULT'),('FOUND CONTROLLED SUBSTANCE'),('FOUND FIREARMS'),('FOUND LICENSE PLATE'),('FOUND PROPERTY'),('FRAUD - OTHER'),('FRAUD DESTRUCTION OF A WRITING'),('GAMBLING'),('GAMBLING PROMOTION'),('GRAFFITI'),('GUN REGISTRATION'),('HARASSMENT'),('HARASSMENT OF A PUBLIC SERVANT'),('HATE CRIME INFORMATION'),('HAZARDOUS TRAFFIC CITATION'),('HIGH SPEED ROADWAY HAZ/DEBRIS'),('HINDER SECURED CREDITORS'),('HINDERING APPREHENSION'),('HINDERING PROCEEDING'),('HOMICIDE INFORMATION'),('HUMAN TRAFFICKING INFORMATION'),('IDENTITY THEFT'),('IDENTITY THEFT-TAX RETURNS'),('ILLEGAL LABELLING OF RECORDING'),('ILLUMIN AIRCRAFT INTENSE LIGHT'),('IMMIGRATION/NAT. ACT'),('IMPERSONATING PUBLIC SERVANT'),('IMPOUNDED ANIMAL'),('IMPOUNDED VEH'),('IMPOUNDED/REPOSSED VEH NON-APD'),('INDECENT EXPOSURE'),('INHALANT ABUSE'),('INJ TO DISABLED  FAM/DATE VIOL'),('INJ TO ELDERLY   FAM/DATE VIOL'),('INJURED ANIMAL'),('INJURED ANIMAL-FIREARM USED'),('INJURY DISABLED INDIVIDUAL'),('INJURY TO ELDERLY PERSON'),('INSPECTION PROPERTY CRIMES'),('INTER EMERG PHONECALL FAM/DATE'),('INTERDIC FOR THE PROTEC CHILD'),('INTERFER PUBLIC DUTIES'),('INTERFER W/PO SERVICE ANIMALS'),('INTERFERING W/EMERG PHONE CALL'),('JUNKED/NUISANCE VEHICLE'),('KIDNAPPING'),('KIDNAPPING FAM VIO'),('LEVEL 3 RESPONSE TO RESISTANCE'),('LIQUOR LAW VIOLATION/OTHER'),('LITTERING'),('LOST PROP'),('MALFUNCTIONING RR SIGNAL'),('MANSLAUGHTER'),('METRO TAC REG 1'),('METRO TAC REG 4'),('MISAPPLY FIDUCIARY PROP'),('MISSING ADULT'),('MONEY LAUNDERING'),('MULTIPLE TRAFFIC VIOL'),('MURDER'),('NO DRIVERS LICENSE'),('NO LIABILITY INSURANCE 2ND'),('NON HAZ TRAFFIC CITATION'),('NUISANCE ABATEMENT'),('OBSTRUCTION HIGHWAY/PASSAGEWA'),('OBTAIN CONTROLLED SUB BY FRAUD'),('OFFICER INVOLVED INCIDENT'),('ONLINE IMPERSONATION'),('ONLINE SOLICITATION OF A MINOR'),('OPEN CARRY'),('OPEN DOOR/WINDOW'),('OTHER AGENCY INVOLVED INCIDENT'),('OTHER FIRE'),('OUT OF CITY AGG ASSAULT'),('OUT OF CITY AUTO THEFT'),('OUT OF CITY CREDIT CARD ABUSE'),('OUT OF CITY IDENTITY THEFT'),('OUT OF CITY MISSING PERSON'),('OUT OF CITY MURDER'),('OUT OF CITY OFFENSE'),('OUT OF CITY ROBBERY'),('OUT OF CITY SEXUAL ASSAULT'),('OUT OF CITY THEFT'),('OUTDOOR MUSIC VENUE PERMIT'),('PARKING CITATION'),('PARKING VIOLATION'),('PAROLE VIOL'),('PEDESTRIAN ON ROADWAY'),('PICK UP ITEM/EVIDENCE'),('PIGEON DROP'),('POCKET PICKING'),('POSS CONTROLLED SUB/NARCOTIC'),('POSS CONTROLLED SUB/OTHER'),('POSS CONTROLLED SUB/SYN NARC'),('POSS CRIMINAL INSTRUMENT'),('POSS DANG DRUG'),('POSS MARIJUANA'),('POSS OF ALCOHOL - AGE 17 TO 20'),('POSS OF DRUG PARAPHERNALIA'),('POSS OF FIREARM BY FELON'),('POSS OF PRESCRIPTION FORM'),('POSS OF PROHIBITED WEAPON'),('POSS SYNTHETIC MARIJUANA'),('POSSESSION OF FORGED WRITING'),('PROBATION VIOL'),('PROMOTION OF PROSTITUTION'),('PROSTITUTION'),('PROTECTIVE ORDER'),('PROWLER'),('PUBLIC INTOXICATION'),('PUBLIC LEWDNESS'),('PURSE SNATCHING'),('RAPE'),('RECKLESS CONDUCT'),('RECKLESS DAMAGE'),('RECKLESS DRIVING'),('REG. SEX OFFENDER INFORMATION'),('REGISTERED SEX OFFENDER'),('RENTAL CAR/FAIL TO RETURN'),('REQUEST TO APPREHEND'),('REQUEST TO LOCATE'),('RESISTING ARREST OR SEARCH'),('RESPONSE TO RESISTANCE REPORT'),('ROAD RAGE'),('ROBBERY BY ASSAULT'),('ROBBERY BY THREAT'),('ROBBERY INFORMATION'),('SALE OF LIQ WITHOUT PERMIT'),('SALVAGE INSPECTION'),('SEX OFFENDER COMPLIANCE CHECK'),('SEXTING DEPICTING A MINOR'),('SEXUAL ASSAULT INFORMATION'),('SEXUAL ASSAULT W/ OBJECT'),('SHOTS FIRED'),('SMUGGLING ILLEGAL ALIEN'),('SOLICITATION - BEGGING'),('SPEC ASSIGN/OTHER'),('STALKING'),('STALKING INFORMATION'),('STRUCTURE FIRE'),('SUICIDE'),('SURVEILLANCE ASSIGN'),('SUSPICIOUS PERSON'),('SUSPICIOUS VEH'),('TAKE WEAPON FRM POLICE OFFICER'),('TAMPERING WITH CONSUMER PROD'),('TAMPERING WITH EVIDENCE'),('TAMPERING WITH GOV RECORD'),('TAMPERING WITH ID NUMBER'),('TAMPERING WITH WITNESS'),('TELECOMMUNICATION CRIMES/OTHER'),('TEMP EX PARTE  ORDER'),('TERRORISTIC THREAT'),('TERRORISTIC THREAT-FAM/DAT VIO'),('THEFT'),('THEFT BY CHECK'),('THEFT BY EMBEZZLEMENT'),('THEFT BY EXTORTION'),('THEFT BY FALSE PRETEXT/BUNCO'),('THEFT BY SHOPLIFTING'),('THEFT CATALYTIC CONVERTER'),('THEFT FROM AUTO'),('THEFT FROM BUILDING'),('THEFT FROM PERSON'),('THEFT INFORMATION'),('THEFT OF AUTO PARTS'),('THEFT OF BICYCLE'),('THEFT OF HEAVY EQUIPMENT'),('THEFT OF LICENSE PLATE'),('THEFT OF METAL'),('THEFT OF SERVICE'),('THEFT OF TRAILER'),('THEFT- APPROPRIATE STOLEN PROP'),('THEFT/TILL TAPPING'),('TRADEMARK COUNTERFEITING'),('TRAFFIC HAZARD/DEBRIS'),('TRAFFIC VIOL/OTHER'),('TRANSPORT PRISONER'),('UCW LICENSE PREMISE'),('UNAUTHORIZED USE OF VEH'),('UNL CARRY HANDGUN-LICENSE HOLD'),('UNLAWFUL CARRYING WEAPON'),('UNLAWFUL RESTRAINT'),('UNLAWFUL RESTRAINT FAM/DAT VIO'),('UNREGISTERED MOTOR VEH'),('URINATING IN PUBLIC PLACE'),('VEH MOVED NOT IMPOUNDED'),('VEHICLE FIRE'),('VIOL CITY ORDINANCE -  GAME RM'),('VIOL CITY ORDINANCE - AIRPORT'),('VIOL CITY ORDINANCE - CURFEW'),('VIOL CITY ORDINANCE - DOG'),('VIOL CITY ORDINANCE - OTHER'),('VIOL CITY ORDINANCE - SMOKING'),('VIOL CITY ORDINANCE - SOUND'),('VIOL CITY ORDINANCE - TAXI'),('VIOL CITY ORDINANCE - WRECKER'),('VIOL CITY ORDINANCE -FIREWORK'),('VIOL GLASS CONTAINER'),('VIOL OCCUPATIONAL DRIV LICENSE'),('VIOL OF BOND CONDITIONS'),('VIOL OF CAMPING ORDINANCE'),('VIOL OF EMERG PROTECTIVE ORDER'),('VIOL OF PARK CURFEW'),('VIOL OF PROTECTIVE ORDER'),('VIOL STATE LAW - OTHER'),('VIOL STAY AWAY ORDER'),('VIOL TEMP EX PARTE  ORDER'),('VIOL VEH REGISTRATION - OTHER'),('VIOL WATER SAFETY ACT'),('VOCO - ALCOHOL  CONSUMPTION'),('VOCO AMPLIFIED MUSIC/VEHICLE'),('VOCO SIT/LIE/RIDE DTA WALKWAY'),('VOCO SOLICITATION PROHIBIT'),('WARRANT ARREST NON TRAFFIC'),('WEAPON VIOL - OTHER');
/*!40000 ALTER TABLE `crime_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-07  0:33:46