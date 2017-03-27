-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: droplets
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_droplets`
--

DROP TABLE IF EXISTS `customer_droplets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_droplets` (
  `customer_id` bigint(20) NOT NULL,
  `droplets_droplet_id` bigint(20) NOT NULL,
  PRIMARY KEY (`customer_id`,`droplets_droplet_id`),
  UNIQUE KEY `UK_jl7jtp0xc3uvymx3c4ugdoqwe` (`droplets_droplet_id`),
  CONSTRAINT `FKcpy6sq6c3se7pvrmy1ua9b6pf` FOREIGN KEY (`droplets_droplet_id`) REFERENCES `droplet` (`droplet_id`),
  CONSTRAINT `FKjkq2ycnu375q69isfnwtpidcw` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `data_center_config_master`
--

DROP TABLE IF EXISTS `data_center_config_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_center_config_master` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cost_per_hour` double NOT NULL,
  `cpu_core` bigint(20) NOT NULL,
  `hard_disk_size` bigint(20) NOT NULL,
  `ram_size` bigint(20) NOT NULL,
  `transfer_size` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `data_center_location_master`
--

DROP TABLE IF EXISTS `data_center_location_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_center_location_master` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `country` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `droplet`
--

DROP TABLE IF EXISTS `droplet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `droplet` (
  `droplet_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL,
  `droplet_name` varchar(255) DEFAULT NULL,
  `data_center_config_id` bigint(20) DEFAULT NULL,
  `data_center_location_id` bigint(20) DEFAULT NULL,
  `operating_system_id` bigint(20) DEFAULT NULL,
  `secure_socket_shell_data_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`droplet_id`),
  KEY `FKg2fr4jbeeltqt9iokgkvgfdr` (`data_center_config_id`),
  KEY `FK5869ylqra9k552ao987goebnp` (`data_center_location_id`),
  KEY `FK1jdt5ysjlljvv2yfrmx0hp30p` (`operating_system_id`),
  KEY `FK85iixg015l577sa024f5hhj15` (`secure_socket_shell_data_id`),
  CONSTRAINT `FK1jdt5ysjlljvv2yfrmx0hp30p` FOREIGN KEY (`operating_system_id`) REFERENCES `operating_system_master` (`id`),
  CONSTRAINT `FK5869ylqra9k552ao987goebnp` FOREIGN KEY (`data_center_location_id`) REFERENCES `data_center_location_master` (`id`),
  CONSTRAINT `FK85iixg015l577sa024f5hhj15` FOREIGN KEY (`secure_socket_shell_data_id`) REFERENCES `secure_socket_shell_data` (`id`),
  CONSTRAINT `FKg2fr4jbeeltqt9iokgkvgfdr` FOREIGN KEY (`data_center_config_id`) REFERENCES `data_center_config_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `droplet_optional_config`
--

DROP TABLE IF EXISTS `droplet_optional_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `droplet_optional_config` (
  `droplet_droplet_id` bigint(20) NOT NULL,
  `optional_config_optional_id` bigint(20) NOT NULL,
  PRIMARY KEY (`droplet_droplet_id`,`optional_config_optional_id`),
  KEY `FKjwskw0ncd2xsx7lhyca243pui` (`optional_config_optional_id`),
  CONSTRAINT `FKik854so1no19t7iweoum7myvq` FOREIGN KEY (`droplet_droplet_id`) REFERENCES `droplet` (`droplet_id`),
  CONSTRAINT `FKjwskw0ncd2xsx7lhyca243pui` FOREIGN KEY (`optional_config_optional_id`) REFERENCES `optional_config_master` (`optional_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `droplet_usage_details`
--

DROP TABLE IF EXISTS `droplet_usage_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `droplet_usage_details` (
  `droplet_droplet_id` bigint(20) NOT NULL,
  `usage_details_id` bigint(20) NOT NULL,
  PRIMARY KEY (`droplet_droplet_id`,`usage_details_id`),
  UNIQUE KEY `UK_ipc96d7yqr6w169deuw3wmu1r` (`usage_details_id`),
  CONSTRAINT `FKkw5pbum8hul5e4m5pthvt1e96` FOREIGN KEY (`droplet_droplet_id`) REFERENCES `droplet` (`droplet_id`),
  CONSTRAINT `FKlgf47exbobabilie5jbyr56b3` FOREIGN KEY (`usage_details_id`) REFERENCES `usage_detail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `operating_system_master`
--

DROP TABLE IF EXISTS `operating_system_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operating_system_master` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `os_name` varchar(255) DEFAULT NULL,
  `os_version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `optional_config_master`
--

DROP TABLE IF EXISTS `optional_config_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `optional_config_master` (
  `optional_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`optional_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `secure_socket_shell_data`
--

DROP TABLE IF EXISTS `secure_socket_shell_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secure_socket_shell_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ssl_public_key_name` varchar(255) DEFAULT NULL,
  `ssl_public_key_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usage_detail`
--

DROP TABLE IF EXISTS `usage_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usage_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-27  7:37:25
