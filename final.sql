-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: final
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `SKU` text,
  `ProductType` text,
  `Flavor` text,
  `Cost` double DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Image` longblob,
  `Description` varchar(45) DEFAULT NULL,
  `IMAGENAME` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('nhtrfe3','Goblin pops','great',5,8,75,NULL,'great','looks good'),('23','hot',NULL,23,23,23,NULL,'dogs','hamp.bmp'),('232','knife',NULL,12,14,12,NULL,'sharp','cool.jpg'),('234','scarf',NULL,1,100,2,NULL,'red','redscarf.jpg'),('1234','red',NULL,3,4,3,NULL,'crazycat','34.p'),('45','gun',NULL,300,500,2,NULL,'45cal',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `useremail` varchar(90) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `username` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='			';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'m','YsZqel3XDDFGYYBjw0TlMebUtZ43mAhEPOlis6vWPFo=','2016-04-29 00:00:00','m'),(2,'z','WU5RmuSZMSspQzt92Kl/8Gje/LqXVbbV0A6ExSTWewY=','2016-04-29 00:00:00','z'),(3,'z','WU5RmuSZMSspQzt92Kl/8Gje/LqXVbbV0A6ExSTWewY=','2016-04-29 00:00:00','z'),(4,'q','jjXCzTv2ZBvbDiBQt2kyy7LmA0oN2swdm+qCprpX988=','2016-04-29 00:00:00','q'),(5,'x','LXEWQrcmsEQBYnyp+6wy9chTD7GQPMTbAiWHF5IaSIE=','2016-04-29 00:00:00','x'),(6,'hairy@com','XohImNooBHFR0OVvjcYpJ3NgPQ1qq73WKhHvch0VQtg=','2016-04-29 00:00:00','justhairy'),(7,'z','WU5RmuSZMSspQzt92Kl/8Gje/LqXVbbV0A6ExSTWewY=','2016-04-29 00:00:00','z'),(8,'a','ypeBEsobvcr6wjGzmiPcTaeG7/gUfE5yuYB3ha/uSLs=','2016-04-29 00:00:00','a'),(9,'mmc6@cdc.gov','XohImNooBHFR0OVvjcYpJ3NgPQ1qq73WKhHvch0VQtg=','2016-04-29 00:00:00','Mike'),(10,'k','glTDKakoUPbVOd03b0gW7idkUX2l4CNVFK9DMWRIDXo=','2016-04-29 00:00:00','k'),(11,'p','fLzNpllZpP5inb31Rq493qkyiuWlNJh4X0onOU/iZRU=','2016-04-29 00:00:00','p');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-01 12:56:34
