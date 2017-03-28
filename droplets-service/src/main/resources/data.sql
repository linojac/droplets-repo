LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'1','Lino','Jacob','password','linojac');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;


/*
-- Query: SELECT * FROM droplets.data_center_master
LIMIT 0, 1000

-- Date: 2017-03-28 13:25
*/
LOCK TABLES `data_center_master` WRITE;
INSERT INTO `data_center_master` (`id`,`country`,`display_name`) VALUES (1,'India','Bangalore');
INSERT INTO `data_center_master` (`id`,`country`,`display_name`) VALUES (2,'Canada','Canada');
INSERT INTO `data_center_master` (`id`,`country`,`display_name`) VALUES (3,'Canada','Canada');
INSERT INTO `data_center_master` (`id`,`country`,`display_name`) VALUES (4,'USA','New York');
INSERT INTO `data_center_master` (`id`,`country`,`display_name`) VALUES (5,'USA','New York');
INSERT INTO `data_center_master` (`id`,`country`,`display_name`) VALUES (6,'USA','New York');
INSERT INTO `data_center_master` (`id`,`country`,`display_name`) VALUES (7,'USA','San Francisco');
INSERT INTO `data_center_master` (`id`,`country`,`display_name`) VALUES (8,'USA','San Francisco');
INSERT INTO `data_center_master` (`id`,`country`,`display_name`) VALUES (9,'Europe','Amsterdam');
INSERT INTO `data_center_master` (`id`,`country`,`display_name`) VALUES (10,'UK','London');
INSERT INTO `data_center_master` (`id`,`country`,`display_name`) VALUES (11,'Singapore','Singapore');
INSERT INTO `data_center_master` (`id`,`country`,`display_name`) VALUES (12,'Canada','Toronto');
INSERT INTO `data_center_master` (`id`,`country`,`display_name`) VALUES (13,'Germany','Frankfurt');
INSERT INTO `data_center_master` (`id`,`country`,`display_name`) VALUES (14,'Malaysia','Kuala Lumpur');
UNLOCK TABLES;

LOCK TABLES `data_center_config_master` WRITE;
INSERT INTO `data_center_config_master` (`id`,`cost_per_hour`,`cost_per_month`,`cost_per_year`,`cpu_core`,`hard_disk_size`,`ram_size`,`transfer_size`) VALUES (1,0.007,5,50,'1 CPU','20','512 MB','1000 GB');
INSERT INTO `data_center_config_master` (`id`,`cost_per_hour`,`cost_per_month`,`cost_per_year`,`cpu_core`,`hard_disk_size`,`ram_size`,`transfer_size`) VALUES (2,0.015,10,100,'1 CPU','30','1 GB','2 TB');
INSERT INTO `data_center_config_master` (`id`,`cost_per_hour`,`cost_per_month`,`cost_per_year`,`cpu_core`,`hard_disk_size`,`ram_size`,`transfer_size`) VALUES (3,0.03,20,200,'2 CPUs','40 GB','2 GB','3 TB');
INSERT INTO `data_center_config_master` (`id`,`cost_per_hour`,`cost_per_month`,`cost_per_year`,`cpu_core`,`hard_disk_size`,`ram_size`,`transfer_size`) VALUES (4,0.06,40,400,'2 CPUs','60 GB','4 GB','4 TB');
INSERT INTO `data_center_config_master` (`id`,`cost_per_hour`,`cost_per_month`,`cost_per_year`,`cpu_core`,`hard_disk_size`,`ram_size`,`transfer_size`) VALUES (5,0.119,80,800,'4 CPUs','80 GB','8 GB','5 TB');
INSERT INTO `data_center_config_master` (`id`,`cost_per_hour`,`cost_per_month`,`cost_per_year`,`cpu_core`,`hard_disk_size`,`ram_size`,`transfer_size`) VALUES (6,0.238,160,1600,'8 CPUs','160 GB','16 GB','6 TB');
INSERT INTO `data_center_config_master` (`id`,`cost_per_hour`,`cost_per_month`,`cost_per_year`,`cpu_core`,`hard_disk_size`,`ram_size`,`transfer_size`) VALUES (7,0.476,320,3200,'12 CPUs','320 GB','32 GB','7 TB');
INSERT INTO `data_center_config_master` (`id`,`cost_per_hour`,`cost_per_month`,`cost_per_year`,`cpu_core`,`hard_disk_size`,`ram_size`,`transfer_size`) VALUES (8,0.714,480,4800,'16 CPUs','480 GB','48 GB','8 TB');
INSERT INTO `data_center_config_master` (`id`,`cost_per_hour`,`cost_per_month`,`cost_per_year`,`cpu_core`,`hard_disk_size`,`ram_size`,`transfer_size`) VALUES (9,0.952,640,6400,'20 CPUs','640 GB','64 GB','9 TB');
UNLOCK TABLES;

LOCK TABLES `optional_config_master` WRITE;
INSERT INTO `optional_config_master` (`optional_id`,`item_name`) VALUES (1,'Private Networking');
INSERT INTO `optional_config_master` (`optional_id`,`item_name`) VALUES (2,'Backups');
INSERT INTO `optional_config_master` (`optional_id`,`item_name`) VALUES (3,'IPv6');
INSERT INTO `optional_config_master` (`optional_id`,`item_name`) VALUES (4,'User Data');
INSERT INTO `optional_config_master` (`optional_id`,`item_name`) VALUES (5,'Monitoring');
UNLOCK TABLES;



LOCK TABLES `secure_socket_shell_data` WRITE;
INSERT INTO `secure_socket_shell_data` (`id`,`ssl_public_key_name`,`ssl_public_key_value`) VALUES (1,'Personal','gshdyye43hhgwyy4hhj736');
UNLOCK TABLES;

LOCK TABLES `operating_system_master` WRITE;
INSERT INTO `operating_system_master` (`id`,`os_name`) VALUES (1,'Fedora');
INSERT INTO `operating_system_master` (`id`,`os_name`) VALUES (2,'CentOS');
INSERT INTO `operating_system_master` (`id`,`os_name`) VALUES (3,'Ubuntu');
UNLOCK TABLES;

LOCK TABLES `os_version` WRITE;
INSERT INTO `os_version` (`id`,`name`,`release_date`) VALUES (1,'25',NULL);
INSERT INTO `os_version` (`id`,`name`,`release_date`) VALUES (2,'26',NULL);
INSERT INTO `os_version` (`id`,`name`,`release_date`) VALUES (3,'27',NULL);
INSERT INTO `os_version` (`id`,`name`,`release_date`) VALUES (4,'6.5',NULL);
INSERT INTO `os_version` (`id`,`name`,`release_date`) VALUES (5,'6.6',NULL);
INSERT INTO `os_version` (`id`,`name`,`release_date`) VALUES (6,'6.7',NULL);
INSERT INTO `os_version` (`id`,`name`,`release_date`) VALUES (7,'16.04.1 LTS',NULL);
INSERT INTO `os_version` (`id`,`name`,`release_date`) VALUES (8,'16.04 LTS',NULL);
UNLOCK TABLES;

LOCK TABLES `operating_system_master_os_version` WRITE;
INSERT INTO `operating_system_master_os_version` (`operating_system_master_id`,`os_version_id`) VALUES (1,1);
INSERT INTO `operating_system_master_os_version` (`operating_system_master_id`,`os_version_id`) VALUES (1,2);
INSERT INTO `operating_system_master_os_version` (`operating_system_master_id`,`os_version_id`) VALUES (1,3);
INSERT INTO `operating_system_master_os_version` (`operating_system_master_id`,`os_version_id`) VALUES (2,4);
INSERT INTO `operating_system_master_os_version` (`operating_system_master_id`,`os_version_id`) VALUES (2,5);
INSERT INTO `operating_system_master_os_version` (`operating_system_master_id`,`os_version_id`) VALUES (2,6);
INSERT INTO `operating_system_master_os_version` (`operating_system_master_id`,`os_version_id`) VALUES (3,7);
INSERT INTO `operating_system_master_os_version` (`operating_system_master_id`,`os_version_id`) VALUES (3,8);
UNLOCK TABLES;