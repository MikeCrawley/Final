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
INSERT INTO `products` VALUES ('SKU101','Scarf',NULL,5,8,30,NULL,'Lightweight Aqua','/Final/slideshow/scarf1.jpg'),('SKU102','Scarf',NULL,23,31,23,NULL,'Quilted Pattern','/Final/slideshow/scarf2.jpg'),('SKU103','Scarf',NULL,18,23,27,NULL,'Grey Taupe Stripe','/Final/slideshow/scarf3.jpg'),('SKU104','Scarf',NULL,18,24,23,NULL,'Black White Chevron','/Final/slideshow/scarf4.jpg'),('SKU105','Scarf',NULL,16,23,67,NULL,'Red Black Stripe','/Final/slideshow/scarf5.jpg'),('SKU106','Scarf',NULL,34,43,29,NULL,'Grey Black Love','/Final/slideshow/scarf6.jpg'),('SKU107','Scarf',NULL,11,19,2,NULL,'Sheer Sequin','/Final/slideshow/scarf7.jpg'),('SKU108','Scarf',NULL,17,22,45,NULL,'Aqua Quatrefoil','/Final/slideshow/scarf8.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='			';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'m','YsZqel3XDDFGYYBjw0TlMebUtZ43mAhEPOlis6vWPFo=','2016-04-29 00:00:00','m'),(2,'z','WU5RmuSZMSspQzt92Kl/8Gje/LqXVbbV0A6ExSTWewY=','2016-04-29 00:00:00','z'),(3,'z','WU5RmuSZMSspQzt92Kl/8Gje/LqXVbbV0A6ExSTWewY=','2016-04-29 00:00:00','z'),(4,'q','jjXCzTv2ZBvbDiBQt2kyy7LmA0oN2swdm+qCprpX988=','2016-04-29 00:00:00','q'),(5,'x','LXEWQrcmsEQBYnyp+6wy9chTD7GQPMTbAiWHF5IaSIE=','2016-04-29 00:00:00','x'),(6,'hairy@com','XohImNooBHFR0OVvjcYpJ3NgPQ1qq73WKhHvch0VQtg=','2016-04-29 00:00:00','justhairy'),(7,'z','WU5RmuSZMSspQzt92Kl/8Gje/LqXVbbV0A6ExSTWewY=','2016-04-29 00:00:00','z'),(8,'a','ypeBEsobvcr6wjGzmiPcTaeG7/gUfE5yuYB3ha/uSLs=','2016-04-29 00:00:00','a'),(9,'mmc6@cdc.gov','XohImNooBHFR0OVvjcYpJ3NgPQ1qq73WKhHvch0VQtg=','2016-04-29 00:00:00','Mike'),(10,'k','glTDKakoUPbVOd03b0gW7idkUX2l4CNVFK9DMWRIDXo=','2016-04-29 00:00:00','k'),(11,'p','fLzNpllZpP5inb31Rq493qkyiuWlNJh4X0onOU/iZRU=','2016-04-29 00:00:00','p'),(12,'x','LXEWQrcmsEQBYnyp+6wy9chTD7GQPMTbAiWHF5IaSIE=','2016-05-03 00:00:00','x'),(13,'i','3n0bchoeBjK3zwTt9QMsjs/6n5oISSFSuSbxpafnZdc=','2016-05-05 00:00:00','i'),(14,'abc','ungWv48Bz+pBQUDeXa4iI7ADYaOWF3qctBD/YfIAFa0=','2016-05-06 00:00:00','abc'),(15,'abc','ungWv48Bz+pBQUDeXa4iI7ADYaOWF3qctBD/YfIAFa0=','2016-05-06 00:00:00','abc'),(16,'jackson@abc.com','73l8gRjwLftklgfdXT+MdiMEjJwGPVMsyVxe16iYpk8=','2016-05-07 00:00:00','jackson@abc.com');
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

-- Dump completed on 2016-05-07 15:58:06
