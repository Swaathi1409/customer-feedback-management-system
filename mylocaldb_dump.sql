-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: cfms
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` int NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `role` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'John','Manager','john@example.com'),(2,'Alice','Admin','alice@company.com'),(3,'Bob','Manager','bob@example.com'),(4,'Charlie','Developer','charlie@company.com');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_ph`
--

DROP TABLE IF EXISTS `admin_ph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_ph` (
  `admin_id` int DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `admin_ph_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_ph`
--

LOCK TABLES `admin_ph` WRITE;
/*!40000 ALTER TABLE `admin_ph` DISABLE KEYS */;
INSERT INTO `admin_ph` VALUES (1,'9988776655'),(2,'8877665544'),(3,'7766554433'),(4,'6655443322'),(4,'6655443542');
/*!40000 ALTER TABLE `admin_ph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytics`
--

DROP TABLE IF EXISTS `analytics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analytics` (
  `type` varchar(10) DEFAULT NULL,
  `p_count` int DEFAULT NULL,
  `n_count` int DEFAULT NULL,
  `avg_rat` decimal(5,2) DEFAULT NULL,
  `prod_id` int DEFAULT NULL,
  `s_id` int DEFAULT NULL,
  KEY `prod_id` (`prod_id`),
  KEY `s_id` (`s_id`),
  CONSTRAINT `analytics_ibfk_1` FOREIGN KEY (`prod_id`) REFERENCES `product` (`prod_id`),
  CONSTRAINT `analytics_ibfk_2` FOREIGN KEY (`s_id`) REFERENCES `service` (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytics`
--

LOCK TABLES `analytics` WRITE;
/*!40000 ALTER TABLE `analytics` DISABLE KEYS */;
INSERT INTO `analytics` VALUES ('product',1,0,4.00,100,NULL),('product',0,0,0.00,200,NULL),('product',1,0,5.00,300,NULL),('product',1,0,4.00,400,NULL),('service',0,0,3.00,NULL,100),('service',0,0,0.00,NULL,200),('service',0,1,2.00,NULL,300),('service',1,0,5.00,NULL,400),('product',3,0,4.00,1,NULL),('product',0,0,0.00,2,NULL),('product',0,0,0.00,3,NULL),('product',3,1,4.00,4,NULL),('product',0,0,0.00,5,NULL),('product',1,0,4.00,100,NULL),('product',0,0,0.00,200,NULL),('product',1,0,5.00,300,NULL),('product',1,0,4.00,400,NULL),('service',3,1,3.80,NULL,1),('service',0,0,0.00,NULL,2),('service',2,1,4.00,NULL,3),('service',0,0,0.00,NULL,4),('service',0,0,0.00,NULL,5),('service',0,0,0.00,NULL,100),('service',0,0,0.00,NULL,200),('service',0,1,2.00,NULL,300),('service',1,0,5.00,NULL,400),('product',3,0,4.00,1,NULL),('product',0,0,0.00,2,NULL),('product',0,0,0.00,3,NULL),('product',3,1,4.00,4,NULL),('product',0,0,0.00,5,NULL),('product',1,0,4.00,100,NULL),('product',0,0,0.00,200,NULL),('product',1,0,5.00,300,NULL),('product',1,0,4.00,400,NULL),('service',3,1,3.80,NULL,1),('service',0,0,0.00,NULL,2),('service',2,1,4.00,NULL,3),('service',0,0,0.00,NULL,4),('service',0,0,0.00,NULL,5),('service',0,0,0.00,NULL,100),('service',0,0,0.00,NULL,200),('service',0,1,2.00,NULL,300),('service',1,0,5.00,NULL,400),('product',3,0,4.00,1,NULL),('product',0,0,0.00,2,NULL),('product',0,0,0.00,3,NULL),('product',3,1,4.00,4,NULL),('product',0,0,0.00,5,NULL),('product',1,0,4.00,100,NULL),('product',0,0,0.00,200,NULL),('product',1,0,5.00,300,NULL),('product',1,0,4.00,400,NULL),('service',0,0,0.00,NULL,1),('service',0,0,0.00,NULL,2),('service',2,1,4.00,NULL,3),('service',0,0,0.00,NULL,4),('service',0,0,0.00,NULL,5),('service',0,0,0.00,NULL,100),('service',0,0,0.00,NULL,200),('service',0,1,2.00,NULL,300),('service',1,0,5.00,NULL,400),('product',3,0,4.00,1,NULL),('product',0,0,0.00,2,NULL),('product',0,0,0.00,3,NULL),('product',3,1,4.00,4,NULL),('product',0,0,0.00,5,NULL),('product',1,0,4.00,100,NULL),('product',0,0,0.00,200,NULL),('product',1,0,5.00,300,NULL),('product',1,0,4.00,400,NULL),('service',0,0,0.00,NULL,1),('service',0,0,0.00,NULL,2),('service',2,1,4.00,NULL,3),('service',0,0,0.00,NULL,4),('service',0,0,0.00,NULL,5),('service',0,0,0.00,NULL,100),('service',0,0,0.00,NULL,200),('service',0,1,2.00,NULL,300),('service',1,0,5.00,NULL,400),('product',3,0,4.00,1,NULL),('product',0,0,0.00,2,NULL),('product',0,0,0.00,3,NULL),('product',3,1,4.00,4,NULL),('product',0,0,0.00,5,NULL),('product',1,0,4.00,100,NULL),('product',0,0,0.00,200,NULL),('product',1,0,5.00,300,NULL),('product',1,0,4.00,400,NULL),('service',0,0,0.00,NULL,1),('service',0,0,0.00,NULL,2),('service',2,1,4.00,NULL,3),('service',0,0,0.00,NULL,4),('service',0,0,0.00,NULL,5),('service',0,0,0.00,NULL,100),('service',0,0,0.00,NULL,200),('service',0,1,2.00,NULL,300),('service',1,0,5.00,NULL,400),('product',3,0,4.00,1,NULL),('product',0,0,0.00,2,NULL),('product',0,0,0.00,3,NULL),('product',3,1,4.00,4,NULL),('product',0,0,0.00,5,NULL),('product',1,0,4.00,100,NULL),('product',0,0,0.00,200,NULL),('product',1,0,5.00,300,NULL),('product',1,0,4.00,400,NULL),('service',0,0,0.00,NULL,1),('service',0,0,0.00,NULL,2),('service',2,1,4.00,NULL,3),('service',0,0,0.00,NULL,4),('service',0,0,0.00,NULL,5),('service',0,0,0.00,NULL,100),('service',0,0,0.00,NULL,200),('service',0,1,2.00,NULL,300),('service',1,0,5.00,NULL,400),('product',3,0,4.00,1,NULL),('product',0,0,0.00,2,NULL),('product',0,0,0.00,3,NULL),('product',3,1,4.00,4,NULL),('product',0,0,0.00,5,NULL),('product',1,0,4.00,100,NULL),('product',0,0,0.00,200,NULL),('product',1,0,5.00,300,NULL),('product',1,0,4.00,400,NULL),('service',0,0,0.00,NULL,1),('service',0,0,0.00,NULL,2),('service',2,1,4.00,NULL,3),('service',0,0,0.00,NULL,4),('service',0,0,0.00,NULL,5),('service',0,0,0.00,NULL,100),('service',0,0,0.00,NULL,200),('service',0,1,2.00,NULL,300),('service',1,0,5.00,NULL,400),('product',3,0,4.00,1,NULL),('product',0,0,0.00,2,NULL),('product',0,0,0.00,3,NULL),('product',3,1,4.00,4,NULL),('product',0,0,0.00,5,NULL),('product',1,0,4.00,100,NULL),('product',0,0,0.00,200,NULL),('product',1,0,5.00,300,NULL),('product',1,0,4.00,400,NULL),('service',0,0,0.00,NULL,1),('service',0,0,0.00,NULL,2),('service',2,1,4.00,NULL,3),('service',0,0,0.00,NULL,4),('service',0,0,0.00,NULL,5),('service',0,0,0.00,NULL,100),('service',0,0,0.00,NULL,200),('service',0,1,2.00,NULL,300),('service',1,0,5.00,NULL,400),('product',3,0,4.00,1,NULL),('product',0,0,0.00,2,NULL),('product',0,0,0.00,3,NULL),('product',3,1,4.00,4,NULL),('product',0,0,0.00,5,NULL),('product',1,0,4.00,100,NULL),('product',0,0,0.00,200,NULL),('product',1,0,5.00,300,NULL),('product',1,0,4.00,400,NULL),('service',0,0,0.00,NULL,1),('service',0,0,0.00,NULL,2),('service',2,1,4.00,NULL,3),('service',0,0,0.00,NULL,4),('service',0,0,0.00,NULL,5),('service',0,0,0.00,NULL,100),('service',0,0,0.00,NULL,200),('service',0,1,2.00,NULL,300),('service',1,0,5.00,NULL,400),('product',3,0,4.00,1,NULL),('product',0,0,0.00,2,NULL),('product',0,0,0.00,3,NULL),('product',3,1,4.00,4,NULL),('product',0,0,0.00,5,NULL),('product',1,0,4.00,100,NULL),('product',0,0,0.00,200,NULL),('product',1,0,5.00,300,NULL),('product',1,0,4.00,400,NULL),('service',0,0,0.00,NULL,1),('service',0,0,0.00,NULL,2),('service',2,1,4.00,NULL,3),('service',0,0,0.00,NULL,4),('service',0,0,0.00,NULL,5),('service',0,0,0.00,NULL,100),('service',0,0,0.00,NULL,200),('service',0,1,2.00,NULL,300),('service',1,0,5.00,NULL,400),('product',3,0,4.00,1,NULL),('product',0,0,0.00,2,NULL),('product',0,0,0.00,3,NULL),('product',0,0,0.00,4,NULL),('product',0,0,0.00,5,NULL),('product',1,0,4.00,100,NULL),('product',0,0,0.00,200,NULL),('product',1,0,5.00,300,NULL),('product',1,0,4.00,400,NULL),('service',0,0,0.00,NULL,1),('service',0,0,0.00,NULL,2),('service',2,1,4.00,NULL,3),('service',0,0,0.00,NULL,4),('service',0,0,0.00,NULL,5),('service',0,0,0.00,NULL,100),('service',0,0,0.00,NULL,200),('service',0,0,0.00,NULL,300),('service',0,0,0.00,NULL,400),('product',3,0,4.00,1,NULL),('product',0,0,0.00,2,NULL),('product',0,0,0.00,3,NULL),('product',0,0,0.00,4,NULL),('product',0,0,0.00,5,NULL),('product',1,0,4.00,100,NULL),('product',0,0,0.00,200,NULL),('product',1,0,5.00,300,NULL),('product',1,0,4.00,400,NULL),('service',0,0,0.00,NULL,1),('service',0,0,0.00,NULL,2),('service',0,0,0.00,NULL,3),('service',0,0,0.00,NULL,4),('service',0,0,0.00,NULL,5),('service',0,0,0.00,NULL,100),('service',0,0,0.00,NULL,200),('service',0,0,0.00,NULL,300),('service',0,0,0.00,NULL,400),('product',3,0,4.00,1,NULL),('product',0,0,0.00,2,NULL),('product',0,0,0.00,3,NULL),('product',0,0,0.00,4,NULL),('product',0,0,0.00,5,NULL),('product',1,0,4.00,100,NULL),('product',0,0,0.00,200,NULL),('product',1,0,5.00,300,NULL),('product',1,0,4.00,400,NULL),('service',0,0,0.00,NULL,1),('service',0,0,0.00,NULL,2),('service',0,0,0.00,NULL,3),('service',0,0,0.00,NULL,4),('service',0,0,0.00,NULL,5),('service',0,0,0.00,NULL,100),('service',0,0,0.00,NULL,200),('service',0,0,0.00,NULL,300),('service',0,0,0.00,NULL,400),('product',0,0,0.00,1,NULL),('product',0,0,0.00,2,NULL),('product',0,0,0.00,3,NULL),('product',0,0,0.00,4,NULL),('product',0,0,0.00,5,NULL),('product',1,0,4.00,100,NULL),('product',0,0,0.00,200,NULL),('product',1,0,5.00,300,NULL),('product',1,0,4.00,400,NULL),('service',0,0,0.00,NULL,1),('service',0,0,0.00,NULL,2),('service',0,0,0.00,NULL,3),('service',0,0,0.00,NULL,4),('service',0,0,0.00,NULL,5),('service',0,0,0.00,NULL,100),('service',0,0,0.00,NULL,200),('service',0,0,0.00,NULL,300),('service',0,0,0.00,NULL,400),('product',0,0,0.00,1,NULL),('product',0,0,0.00,2,NULL),('product',0,0,0.00,3,NULL),('product',0,0,0.00,4,NULL),('product',0,0,0.00,5,NULL),('product',1,0,4.00,100,NULL),('product',0,0,0.00,200,NULL),('product',1,0,5.00,300,NULL),('product',1,0,4.00,400,NULL),('service',0,0,0.00,NULL,1),('service',0,0,0.00,NULL,2),('service',0,0,0.00,NULL,3),('service',0,0,0.00,NULL,4),('service',0,0,0.00,NULL,5),('service',0,0,0.00,NULL,100),('service',0,0,0.00,NULL,200),('service',0,0,0.00,NULL,300),('service',0,0,0.00,NULL,400),('product',0,0,0.00,1,NULL),('product',0,0,0.00,2,NULL),('product',0,0,0.00,3,NULL),('product',0,0,0.00,4,NULL),('product',0,0,0.00,5,NULL),('product',1,0,4.00,100,NULL),('product',0,0,0.00,200,NULL),('product',1,0,5.00,300,NULL),('product',0,0,0.00,400,NULL),('service',0,0,0.00,NULL,1),('service',0,0,0.00,NULL,2),('service',0,0,0.00,NULL,3),('service',0,0,0.00,NULL,4),('service',0,0,0.00,NULL,5),('service',0,0,0.00,NULL,100),('service',0,0,0.00,NULL,200),('service',0,0,0.00,NULL,300),('service',0,0,0.00,NULL,400),('product',0,0,0.00,1,NULL),('product',0,0,0.00,2,NULL),('product',0,0,0.00,3,NULL),('product',0,0,0.00,4,NULL),('product',0,0,0.00,5,NULL),('product',1,0,4.00,100,NULL),('product',0,0,0.00,200,NULL),('product',1,0,5.00,300,NULL),('product',0,0,0.00,400,NULL),('service',0,0,0.00,NULL,1),('service',0,0,0.00,NULL,2),('service',0,0,0.00,NULL,3),('service',0,0,0.00,NULL,4),('service',0,0,0.00,NULL,5),('service',0,0,0.00,NULL,100),('service',0,0,0.00,NULL,200),('service',0,0,0.00,NULL,300),('service',0,0,0.00,NULL,400),('product',0,0,0.00,1,NULL),('product',0,0,0.00,2,NULL),('product',0,0,0.00,3,NULL),('product',0,0,0.00,4,NULL),('product',0,0,0.00,5,NULL),('product',1,0,4.00,100,NULL),('product',0,0,0.00,200,NULL),('product',1,0,5.00,300,NULL),('product',0,0,0.00,400,NULL),('service',0,0,0.00,NULL,1),('service',0,0,0.00,NULL,2),('service',0,0,0.00,NULL,3),('service',0,0,0.00,NULL,4),('service',0,0,0.00,NULL,5),('service',0,0,0.00,NULL,100),('service',0,0,0.00,NULL,200),('service',0,0,0.00,NULL,300),('service',0,0,0.00,NULL,400),('product',0,0,0.00,1,NULL),('product',0,0,0.00,2,NULL),('product',0,0,0.00,3,NULL),('product',0,0,0.00,4,NULL),('product',0,0,0.00,5,NULL),('product',1,0,4.00,100,NULL),('product',0,0,0.00,200,NULL),('product',1,0,5.00,300,NULL),('product',0,0,0.00,400,NULL),('service',0,0,0.00,NULL,1),('service',0,0,0.00,NULL,2),('service',0,0,0.00,NULL,3),('service',0,0,0.00,NULL,4),('service',0,0,0.00,NULL,5),('service',0,0,0.00,NULL,100),('service',0,0,0.00,NULL,200),('service',0,0,0.00,NULL,300),('service',0,0,0.00,NULL,400);
/*!40000 ALTER TABLE `analytics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `cu_id` int NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `flat_no` int DEFAULT NULL,
  `street` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `pin_code` int DEFAULT NULL,
  PRIMARY KEY (`cu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Alice','alice@example.com',101,'MG Road','Chennai',600001),(2,'Bob','bob@example.com',102,'Beach Road','Mumbai',400002),(3,'Charlie',NULL,202,'Park Avenue','Chennai',600002),(4,'Diana','diana@example.com',105,'Main Street','Bangalore',560001),(5,'Swaathi B','123',NULL,NULL,NULL,NULL),(6,'Swaathi','swaathi@gmail.com',NULL,NULL,NULL,NULL),(7,'Mahathi','mahathi@gmail.com',NULL,NULL,NULL,NULL),(8,'Deepthi','d@gmail.com',NULL,NULL,NULL,NULL),(9,'Visalakshi','vichu@gmail.com',NULL,NULL,NULL,NULL),(10,'Ram','ram@gmail.com',NULL,NULL,NULL,NULL),(11,'customer','customer@gmail.com',NULL,NULL,NULL,NULL),(12,'user','user@gmail.com',NULL,NULL,NULL,NULL),(13,'Vichu','vichu1@gmail.com',NULL,NULL,NULL,NULL),(14,'rani','rani@gmail.com',NULL,NULL,NULL,NULL),(15,'viji','vijbi15@gmail.com',NULL,NULL,NULL,NULL),(16,'Bala','bala@gmail.com',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_ph`
--

DROP TABLE IF EXISTS `customer_ph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_ph` (
  `cu_id` int DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  KEY `cu_id` (`cu_id`),
  CONSTRAINT `customer_ph_ibfk_1` FOREIGN KEY (`cu_id`) REFERENCES `customer` (`cu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_ph`
--

LOCK TABLES `customer_ph` WRITE;
/*!40000 ALTER TABLE `customer_ph` DISABLE KEYS */;
INSERT INTO `customer_ph` VALUES (5,'09940266671'),(6,'8767623121'),(7,'1345'),(8,'7656543232'),(9,'9878765767'),(10,'7676756565'),(11,'5676745343'),(12,'9876543423'),(13,'7867634232'),(14,'9876543210'),(15,'9850214184'),(16,'9940266671');
/*!40000 ALTER TABLE `customer_ph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `prod_id` int NOT NULL,
  `prod_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Smartphone'),(2,'Laptop'),(3,'Washing Machine'),(4,'Electric Kettle'),(5,'Headphones'),(100,'Laptop'),(200,'Smartphone'),(300,'Headphones'),(400,'Smart Watch');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_rat`
--

DROP TABLE IF EXISTS `product_rat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_rat` (
  `cu_id` int DEFAULT NULL,
  `prod_id` int DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `perform_rat` int DEFAULT NULL,
  `price_rat` int DEFAULT NULL,
  `p_qual_rat` int DEFAULT NULL,
  `design_rat` int DEFAULT NULL,
  `comfort_rat` int DEFAULT NULL,
  `use_again` varchar(3) DEFAULT NULL,
  `overall_rating` int DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL,
  KEY `cu_id` (`cu_id`),
  KEY `prod_id` (`prod_id`),
  CONSTRAINT `product_rat_ibfk_1` FOREIGN KEY (`cu_id`) REFERENCES `customer` (`cu_id`),
  CONSTRAINT `product_rat_ibfk_2` FOREIGN KEY (`prod_id`) REFERENCES `product` (`prod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_rat`
--

LOCK TABLES `product_rat` WRITE;
/*!40000 ALTER TABLE `product_rat` DISABLE KEYS */;
INSERT INTO `product_rat` VALUES (NULL,1,'2025-03-01',5,4,5,5,4,'Yes',5,'Excellent performance, fast processor, but a bit expensive.'),(NULL,1,'2025-03-04',3,3,3,3,3,'No',3,'Camera quality is not great and the phone freezes occasionally.'),(NULL,2,'2025-03-03',2,3,2,3,2,'No',2,'The laptop is too slow, takes ages to load applications.'),(NULL,3,'2025-03-01',4,5,5,4,4,'Yes',4,'Cleans clothes well, but the spin cycle is very noisy.'),(NULL,3,'2025-03-02',2,2,3,2,2,'No',2,'Takes too long to complete a cycle, and the clothes aren’t fully clean.'),(NULL,3,'2025-03-04',5,5,5,5,5,'Yes',5,'Amazing washing machine, washes clothes thoroughly and quickly.'),(NULL,3,'2025-03-05',3,3,4,3,4,'Yes',3,'Average performance, not as good as expected for the price.'),(NULL,4,'2025-03-01',5,5,5,5,5,'Yes',5,'Boils water super fast, sleek design, no complaints.'),(NULL,4,'2025-03-02',1,2,2,1,1,'No',2,'Leaks after a few weeks of use, poor build quality.'),(NULL,4,'2025-03-03',3,3,3,4,4,'Yes',4,'Works well, but sometimes takes longer than expected to boil.'),(NULL,5,'2025-03-01',4,4,5,5,4,'Yes',5,'Great sound quality and comfortable to wear, but the battery could last longer.'),(NULL,5,'2025-03-03',3,2,3,3,3,'No',3,'Sound is decent, but the build quality feels cheap and uncomfortable after long use.'),(6,1,'2025-04-07',4,4,2,5,4,'Yes',4,'Good'),(15,1,'2025-04-07',5,1,2,5,1,'Yes',4,'rarely'),(6,400,'2025-07-13',3,5,5,5,3,'Yes',4,'Good'),(16,100,'2025-07-13',4,5,5,4,5,'Yes',4,'Excellent to use'),(6,300,'2025-07-13',5,4,5,4,3,'Yes',5,'Cool Product. Recommended!');
/*!40000 ALTER TABLE `product_rat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `s_id` int NOT NULL,
  `s_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,'IT Support'),(2,'Cleaning Service'),(3,'Consulting'),(4,'Delivery'),(5,'Customer Support'),(100,'Repair'),(200,'Installation'),(300,'Consultation'),(400,'Training');
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_rat`
--

DROP TABLE IF EXISTS `service_rat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_rat` (
  `cu_id` int DEFAULT NULL,
  `s_id` int DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `s_qual_rat` int DEFAULT NULL,
  `timeliness` int DEFAULT NULL,
  `communication` int DEFAULT NULL,
  `s_delivery` int DEFAULT NULL,
  `s_provider_knowledge` int DEFAULT NULL,
  `convenience` int DEFAULT NULL,
  `overall_rating` int DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL,
  KEY `cu_id` (`cu_id`),
  KEY `s_id` (`s_id`),
  CONSTRAINT `service_rat_ibfk_1` FOREIGN KEY (`cu_id`) REFERENCES `customer` (`cu_id`),
  CONSTRAINT `service_rat_ibfk_2` FOREIGN KEY (`s_id`) REFERENCES `service` (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_rat`
--

LOCK TABLES `service_rat` WRITE;
/*!40000 ALTER TABLE `service_rat` DISABLE KEYS */;
INSERT INTO `service_rat` VALUES (NULL,1,'2025-03-01',5,5,5,5,5,5,5,'Excellent customer service, very professional and helpful.'),(NULL,1,'2025-03-02',3,3,4,2,3,3,3,'Service was okay, but the response time was a bit slow.'),(NULL,1,'2025-03-03',2,2,2,3,3,2,2,'Unprofessional staff, took too long to resolve the issue.'),(NULL,1,'2025-03-04',4,5,4,4,4,4,4,'Good service overall, but a little expensive for the quality.'),(NULL,2,'2025-03-03',4,4,4,4,4,4,4,'Good service, but could be more organized in scheduling.'),(NULL,3,'2025-03-01',5,5,5,5,5,5,5,'Very knowledgeable staff and quick delivery of services.'),(NULL,3,'2025-03-05',2,2,2,2,2,2,2,'Service was delayed and the quality was not as expected.'),(NULL,4,'2025-03-01',5,5,5,5,5,5,5,'Superb service, very friendly and effective delivery.'),(NULL,4,'2025-03-02',1,2,2,1,1,1,1,'Horrible service, very rude and took a long time to arrive.'),(NULL,4,'2025-03-03',4,4,4,4,4,4,4,'Service was good but could have been faster.'),(NULL,5,'2025-03-01',5,5,5,5,5,5,5,'Exceptional service, really helpful and efficient!'),(6,3,'2025-04-07',3,4,3,3,5,2,5,'Okay');
/*!40000 ALTER TABLE `service_rat` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-13 22:45:30
