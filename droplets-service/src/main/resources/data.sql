-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: droplets
-- ------------------------------------------------------
-- Server version	5.7.9-log

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'','Lino','Jacob','password','linojac');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `customer_droplets`
--

LOCK TABLES `customer_droplets` WRITE;
/*!40000 ALTER TABLE `customer_droplets` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_droplets` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Dumping data for table `data_center_config_master`
--

LOCK TABLES `data_center_config_master` WRITE;
/*!40000 ALTER TABLE `data_center_config_master` DISABLE KEYS */;
INSERT INTO `data_center_config_master` VALUES (1,5,1,20,1,1000),(2,10,1,30,1,2000);
/*!40000 ALTER TABLE `data_center_config_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `data_center_location_master`
--

LOCK TABLES `data_center_location_master` WRITE;
/*!40000 ALTER TABLE `data_center_location_master` DISABLE KEYS */;
INSERT INTO `data_center_location_master` VALUES (1,'India','Bangalore'),(2,'Canada','Canada'),(3,'Canada','Canada'),(4,'USA','New York'),(5,'USA','New York'),(6,'USA','New York'),(7,'USA','San Francisco'),(8,'USA','San Francisco'),(9,'Europe','Amsterdam'),(10,'UK','London'),(11,'Singapore','Singapore'),(12,'Canada','Toronto'),(13,'Germany','Frankfurt'),(14,'Malaysia','Kuala Lumpur');
/*!40000 ALTER TABLE `data_center_location_master` ENABLE KEYS */;
UNLOCK TABLES;

-- Dump completed on 2017-03-27  8:11:46
