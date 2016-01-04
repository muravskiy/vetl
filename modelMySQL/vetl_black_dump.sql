-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: vetl
-- ------------------------------------------------------
-- Server version	5.5.46-0+deb8u1-log

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
-- Table structure for table `brigada`
--

DROP TABLE IF EXISTS `brigada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brigada` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `room_brigade` varchar(45) NOT NULL,
  `last_name_SHNS` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brigada`
--

LOCK TABLES `brigada` WRITE;
/*!40000 ALTER TABLE `brigada` DISABLE KEYS */;
INSERT INTO `brigada` VALUES (4,'4','Покотило'),(5,'5','Заяц');
/*!40000 ALTER TABLE `brigada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificate`
--

DROP TABLE IF EXISTS `certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `certificate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issued` varchar(254) NOT NULL,
  `name_certificate` varchar(254) NOT NULL,
  `number_certificate` varchar(45) NOT NULL,
  `date_issue_certificate` date NOT NULL,
  `valid_to_certificate` date NOT NULL,
  `not_actual` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificate`
--

LOCK TABLES `certificate` WRITE;
/*!40000 ALTER TABLE `certificate` DISABLE KEYS */;
INSERT INTO `certificate` VALUES (1,'Державна служба гірничого нагляду та промислової безпеки','Дозвіл на виконання випробування електричного устаткування електричних мереж','1266.13.30','2013-11-29','2018-11-28',0),(2,'Базова організація метрології та стандартизації','Свідоцтво про атестацію Вимірювальної електротехнічної лабораторії','БОМС-9/13-2012','2012-11-22','2015-11-21',0),(3,'Територіальне управління державної служби гірничого нагляду та промислової безпеки України у Київський області та м.Києві','Дозвіл на виконання роботи в діючих електроустановках напругою понад 1000В (до 35кВ включно)','3045.13.32','2013-09-02','2018-09-01',0),(4,'Територіальне управління державної служби гірничого нагляду та промислової безпеки України у Київський області та м.Києві','Дозвіл на експлуатацію технологічного електрообладнання напругою понад 1000В (до 60 кВ включно)','3049.13.32','2013-09-02','2018-09-01',0),(15,'Територіальне управління державної служби гірничого нагляду та промислової безпеки України у Чернігівський області','Лист, що Територіальне управління у Чернігівській області не заперечує проти виконнаня робіт підвищенної небезпеки на теріторії Чернігівської області','204','2014-02-04','2018-11-28',0),(23,'test Державна служба гірничого нагляду та промислової безпеки','Дозвіл на виконання випробування електричного устаткування електричних мереж','1266.13.30','2013-11-29','2015-11-28',0);
/*!40000 ALTER TABLE `certificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facility`
--

DROP TABLE IF EXISTS `facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facility` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `facility` varchar(45) NOT NULL,
  `hazard_category_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tbl_facility_tbl_hazard_category_idx` (`hazard_category_id`),
  CONSTRAINT `fk_facility_hazardcategory` FOREIGN KEY (`hazard_category_id`) REFERENCES `hazardcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility`
--

LOCK TABLES `facility` WRITE;
/*!40000 ALTER TABLE `facility` DISABLE KEYS */;
INSERT INTO `facility` VALUES (1,'Р РµР»РµР№РЅРµ РїСЂРёРјС–С‰РµРЅРЅСЏ',1),(2,'РњР°РЅРµРІСЂРѕРІР° Р’РёС€РєР°',1),(3,'Р РµР»РµР№РЅРµ РїСЂРёРјС–С‰РµРЅРЅСЏ',1),(4,'РњР°РЅРµРІСЂРѕРІР° Р’РёС€РєР°',1),(5,'Р РµР»РµР№РЅРµ РїСЂРёРјС–С‰РµРЅРЅСЏ',1),(6,'РњР°РЅРµРІСЂРѕРІР° Р’РёС€РєР°',1),(7,'Р РµР»РµР№РЅРµ РїСЂРёРјС–С‰РµРЅРЅСЏ',1),(8,'РњР°РЅРµРІСЂРѕРІР° Р’РёС€РєР°',1);
/*!40000 ALTER TABLE `facility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hazardcategory`
--

DROP TABLE IF EXISTS `hazardcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hazardcategory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hazard_category` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hazardcategory`
--

LOCK TABLES `hazardcategory` WRITE;
/*!40000 ALTER TABLE `hazardcategory` DISABLE KEYS */;
INSERT INTO `hazardcategory` VALUES (1,'РќРµР±РµР·РїРµС‡РЅС–'),(2,'РџС–РґРІРёС‰РµРЅРЅРѕС— РЅРµР±РµР·РїРµРєРё'),(3,'РќРµР±РµР·РїРµС‡РЅС–'),(4,'РџС–РґРІРёС‰РµРЅРЅРѕС— РЅРµР±РµР·РїРµРєРё'),(5,'РќРµР±РµР·РїРµС‡РЅС–'),(6,'РџС–РґРІРёС‰РµРЅРЅРѕС— РЅРµР±РµР·РїРµРєРё'),(7,'РќРµР±РµР·РїРµС‡РЅС–'),(8,'РџС–РґРІРёС‰РµРЅРЅРѕС— РЅРµР±РµР·РїРµРєРё');
/*!40000 ALTER TABLE `hazardcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locality`
--

DROP TABLE IF EXISTS `locality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locality` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `locality` varchar(45) NOT NULL,
  `type_locality_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tbl_locality_tbl_type_locality_idx` (`type_locality_id`),
  CONSTRAINT `fk_locality_typelocality` FOREIGN KEY (`type_locality_id`) REFERENCES `typelocality` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locality`
--

LOCK TABLES `locality` WRITE;
/*!40000 ALTER TABLE `locality` DISABLE KEYS */;
INSERT INTO `locality` VALUES (1,'РќС–Р¶РёРЅ - РќРѕСЃС–РІРєР°',2),(2,'РќРѕСЃС–РІРєР°',1),(3,'РќС–Р¶РёРЅ',1);
/*!40000 ALTER TABLE `locality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measuringinstrument`
--

DROP TABLE IF EXISTS `measuringinstrument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measuringinstrument` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_measuring_instrument` varchar(45) NOT NULL,
  `serial_number` varchar(45) DEFAULT NULL,
  `inventory_number` varchar(45) DEFAULT NULL,
  `calibration_date` date NOT NULL,
  `number_certificate` varchar(45) NOT NULL,
  `calibration_interval` varchar(45) NOT NULL,
  `next_calibration` date NOT NULL,
  `notices` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measuringinstrument`
--

LOCK TABLES `measuringinstrument` WRITE;
/*!40000 ALTER TABLE `measuringinstrument` DISABLE KEYS */;
/*!40000 ALTER TABLE `measuringinstrument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nameobject`
--

DROP TABLE IF EXISTS `nameobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nameobject` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name_object` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nameobject`
--

LOCK TABLES `nameobject` WRITE;
/*!40000 ALTER TABLE `nameobject` DISABLE KEYS */;
INSERT INTO `nameobject` VALUES (1,'Р‘РѕРєРѕСЂС–Р·Рё'),(2,'Р’РёРєСЂСѓС‚РєР°');
/*!40000 ALTER TABLE `nameobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object`
--

DROP TABLE IF EXISTS `object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_object_id` int(10) unsigned NOT NULL,
  `tbl_name_object_id` int(10) unsigned NOT NULL,
  `tbl_brigada_id` int(10) unsigned NOT NULL,
  `inventory_number` varchar(45) DEFAULT NULL,
  `tbl_locality_id` int(10) unsigned NOT NULL,
  `facility_id` int(10) unsigned NOT NULL,
  `inspection_date` date NOT NULL,
  `inspection_interval` varchar(45) NOT NULL,
  `next_inspection` date NOT NULL,
  `protocol_number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tbl_object_tbl_type_object1_idx` (`type_object_id`),
  KEY `fk_tbl_object_tbl_facility1_idx` (`facility_id`),
  KEY `fk_tbl_object_tbl_locality1_idx` (`tbl_locality_id`),
  KEY `fk_tbl_object_tbl_brigada1_idx` (`tbl_brigada_id`),
  KEY `fk_tbl_object_tbl_name_object1_idx` (`tbl_name_object_id`),
  CONSTRAINT `fk_object_brigada` FOREIGN KEY (`tbl_brigada_id`) REFERENCES `brigada` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_object_facility` FOREIGN KEY (`facility_id`) REFERENCES `facility` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_object_locality` FOREIGN KEY (`tbl_locality_id`) REFERENCES `locality` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_object_nameobject` FOREIGN KEY (`tbl_name_object_id`) REFERENCES `nameobject` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_object_type_object` FOREIGN KEY (`type_object_id`) REFERENCES `typeobject` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object`
--

LOCK TABLES `object` WRITE;
/*!40000 ALTER TABLE `object` DISABLE KEYS */;
/*!40000 ALTER TABLE `object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stampdate`
--

DROP TABLE IF EXISTS `stampdate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stampdate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(225) DEFAULT NULL,
  `int_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stampdate`
--

LOCK TABLES `stampdate` WRITE;
/*!40000 ALTER TABLE `stampdate` DISABLE KEYS */;
INSERT INTO `stampdate` VALUES (3,'пасатижы',1451135307),(13,'пасатижы',1451136709),(23,'пасатижы',1451157731),(33,'пасатижы',11111111),(43,'пасатижы',1111111155),(53,'пасатижы',111155555),(63,'пасатижы',11115566);
/*!40000 ALTER TABLE `stampdate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typelocality`
--

DROP TABLE IF EXISTS `typelocality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typelocality` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_locality` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typelocality`
--

LOCK TABLES `typelocality` WRITE;
/*!40000 ALTER TABLE `typelocality` DISABLE KEYS */;
INSERT INTO `typelocality` VALUES (1,'РЎС‚Р°РЅС†С–СЏ'),(2,'РџРµСЂРµРіС–РЅ');
/*!40000 ALTER TABLE `typelocality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typeobject`
--

DROP TABLE IF EXISTS `typeobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typeobject` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_object` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typeobject`
--

LOCK TABLES `typeobject` WRITE;
/*!40000 ALTER TABLE `typeobject` DISABLE KEYS */;
INSERT INTO `typeobject` VALUES (1,'Р—Р°СЃС–Р± Р·Р°С…РёСЃС‚Сѓ'),(2,'Р†РЅСЃС‚СЂСѓРјРµРЅС‚ Р· С–Р·РѕР»СЊРѕРІР°РЅРёР'),(3,'Р—Р°СЃС–Р± Р·Р°С…РёСЃС‚Сѓ'),(4,'Р†РЅСЃС‚СЂСѓРјРµРЅС‚ Р· С–Р·РѕР»СЊРѕРІР°РЅРёР');
/*!40000 ALTER TABLE `typeobject` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-04 13:36:48
