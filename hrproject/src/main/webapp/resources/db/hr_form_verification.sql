-- MySQL dump 10.13  Distrib 5.6.24, for Win32 (x86)
--
-- Host: localhost    Database: hr_form_verification
-- ------------------------------------------------------
-- Server version	5.6.24

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
-- Table structure for table `general_settings`
--

DROP TABLE IF EXISTS `general_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_settings` (
  `general_settings_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`general_settings_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_settings`
--

LOCK TABLES `general_settings` WRITE;
/*!40000 ALTER TABLE `general_settings` DISABLE KEYS */;
INSERT INTO `general_settings` VALUES (1,'image_upload_location','localhost:8080/hr_images');
/*!40000 ALTER TABLE `general_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertbl`
--

DROP TABLE IF EXISTS `usertbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usertbl` (
  `userid` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(21844) NOT NULL,
  `Name1` varchar(35) NOT NULL,
  `father` varchar(35) NOT NULL,
  `mother` varchar(35) NOT NULL,
  `spouse` varchar(35) NOT NULL,
  `permanentaddress` varchar(35) NOT NULL,
  `tempaddress` varchar(35) NOT NULL,
  `citizenshipno` varchar(100) NOT NULL,
  `phonenumber` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `ageyr` varchar(3) NOT NULL,
  `agemth` varchar(2) NOT NULL,
  `ageday` varchar(2) NOT NULL,
  `lastpassedexam` varchar(35) NOT NULL,
  `passeddatebs` varchar(10) NOT NULL,
  `passeddatead` varchar(10) NOT NULL,
  `advertiseno` varchar(25) DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT '1',
  `res3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertbl`
--

LOCK TABLES `usertbl` WRITE;
/*!40000 ALTER TABLE `usertbl` DISABLE KEYS */;
INSERT INTO `usertbl` VALUES (1,'admin','admin','&#2361;&#2352;&#2367;&#2350;&#2366;&#2344; &#2358;&#2381;&#2352;&#2375;&#2359;&#2381;&#2336;','','Shankar','Sima','Sunita','','','123456','1234567891','admin@admin.com','2020-02-15','45','02','25','Bachlor','20450215','20180515','2/2075-2076','1',NULL),(15,'gagan','gagan','uugdfg','Gagan','','','','','','','','','','','','','','','','2/2075-2076','1',NULL),(16,'hariman','hariman','&#2361;&#2352;&#2367;&#2350;&#2366;&#2344; &#2358;&#2381;&#2352;&#2375;&#2359;&#2381;&#2336;','hariman Shrestha','','','','','','','','','','','','','','','','1/2075-2076','1',NULL),(17,'sunil','sunil','uug','Sunil','','','','','','','','','','','','','','','','1/2075-2076','1',NULL),(18,'abc','abc','z`lgn sfsL{','abc','','','','','','','','','','','','','','','','1/2075-2076','1',NULL),(19,'sun','sun','&#2358;&#2369;&#2344;&#2367;&#2354; &#2325;&#2369;&#2350;&#2366;&#2352; &#2325;&#2366;&#2352;&#2381;&#2325;&#2368;','Sunil','','','','','','','','','','','','','','','','1/2075-2076','1',NULL),(20,'ram','ram','sf','Ram','Suman','sunita','sumitra','','','','','','','','','','','','','1/2075-2076','1',NULL),(21,'binod','binod','&#2357;&#2367;&#2344;&#2366;&#2342; &#2325;&#2375;&#2366;&#2311;&#2352;&#2366;&#2354;&#2366;','Binod Koirala','','','','','','','','','','','','','','','','2/2075-2076','1',NULL),(22,'gyanu','gyanu','&#2332;&#2381;&#2334;&#2366;&#2344;&#2369; &#2325;&#2366;&#2352;&#2381;&#2325;&#2368;','Gyanu Karki','Rudra Bdr','sunita','Sunil Karki','Jajarkot','Kritipur','123456','9843471701','gyanu@gmail.com','20280415','45','2','1','BC Com','20750215','2017','2/2075-2076','1',NULL);
/*!40000 ALTER TABLE `usertbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacancytbl`
--

DROP TABLE IF EXISTS `vacancytbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vacancytbl` (
  `id` int(11) NOT NULL DEFAULT '0',
  `advertiseno` varchar(25) DEFAULT NULL,
  `posten` varchar(30) DEFAULT NULL,
  `postnp` varchar(30) DEFAULT NULL,
  `serviceen` varchar(30) DEFAULT NULL,
  `servicenp` varchar(30) DEFAULT NULL,
  `groupen` varchar(30) DEFAULT NULL,
  `groupnp` varchar(30) DEFAULT NULL,
  `date` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacancytbl`
--

LOCK TABLES `vacancytbl` WRITE;
/*!40000 ALTER TABLE `vacancytbl` DISABLE KEYS */;
INSERT INTO `vacancytbl` VALUES (1,'1/2075-2076','Section Officer','zfvf clws[t','General Service','k|zf;g','Service','k|zf;g','2075/02/15'),(2,'2/2075-2076','Computer Eng','sDKo\'6/ OlGhlgo/','General Service1','k|fljlws','Service1','k|fljlws','2075/04/15');
/*!40000 ALTER TABLE `vacancytbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'hr_form_verification'
--

--
-- Dumping routines for database 'hr_form_verification'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-29 20:44:45
