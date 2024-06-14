-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: traffic_db
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add car',7,'add_car'),(26,'Can change car',7,'change_car'),(27,'Can delete car',7,'delete_car'),(28,'Can view car',7,'view_car'),(29,'Can add driver',8,'add_driver'),(30,'Can change driver',8,'change_driver'),(31,'Can delete driver',8,'delete_driver'),(32,'Can view driver',8,'view_driver'),(33,'Can add police',9,'add_police'),(34,'Can change police',9,'change_police'),(35,'Can delete police',9,'delete_police'),(36,'Can view police',9,'view_police'),(37,'Can add punishment',10,'add_punishment'),(38,'Can change punishment',10,'change_punishment'),(39,'Can delete punishment',10,'delete_punishment'),(40,'Can view punishment',10,'view_punishment'),(41,'Can add notification',11,'add_notification'),(42,'Can change notification',11,'change_notification'),(43,'Can delete notification',11,'delete_notification'),(44,'Can view notification',11,'view_notification'),(45,'Can add include',12,'add_include'),(46,'Can change include',12,'change_include'),(47,'Can delete include',12,'delete_include'),(48,'Can view include',12,'view_include');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `carId` varchar(12) NOT NULL,
  `carType` varchar(30) DEFAULT NULL,
  `carManu` varchar(30) DEFAULT NULL,
  `carMTime` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`carId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES ('沪A12345','上海大众','上海大众车业','2020-10-01 00:00:00.000000'),('沪ALS888','奔驰G65','福建奔驰汽车有限公司','2016-08-19 00:00:00.000000'),('沪AQT125','奥迪','上海奥迪车业','2018-06-15 00:00:00.000000'),('沪B67891','广汽本田','广汽本田车业','2019-05-01 00:00:00.000000'),('沪C86877','北京现代','北京现代制造商','2021-06-30 00:00:00.000000'),('沪CLK853','奇瑞','广州奇瑞制造','2015-12-01 00:00:00.000000');
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'traf_app','car'),(8,'traf_app','driver'),(12,'traf_app','include'),(11,'traf_app','notification'),(9,'traf_app','police'),(10,'traf_app','punishment');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-11-21 12:49:06.291981'),(2,'auth','0001_initial','2022-11-21 12:49:08.094778'),(3,'admin','0001_initial','2022-11-21 12:49:08.540744'),(4,'admin','0002_logentry_remove_auto_add','2022-11-21 12:49:08.577025'),(5,'admin','0003_logentry_add_action_flag_choices','2022-11-21 12:49:08.608318'),(6,'contenttypes','0002_remove_content_type_name','2022-11-21 12:49:09.043886'),(7,'auth','0002_alter_permission_name_max_length','2022-11-21 12:49:09.277595'),(8,'auth','0003_alter_user_email_max_length','2022-11-21 12:49:09.372837'),(9,'auth','0004_alter_user_username_opts','2022-11-21 12:49:09.402668'),(10,'auth','0005_alter_user_last_login_null','2022-11-21 12:49:09.607680'),(11,'auth','0006_require_contenttypes_0002','2022-11-21 12:49:09.623441'),(12,'auth','0007_alter_validators_add_error_messages','2022-11-21 12:49:09.653573'),(13,'auth','0008_alter_user_username_max_length','2022-11-21 12:49:09.893319'),(14,'auth','0009_alter_user_last_name_max_length','2022-11-21 12:49:10.109377'),(15,'auth','0010_alter_group_name_max_length','2022-11-21 12:49:10.196622'),(16,'auth','0011_update_proxy_permissions','2022-11-21 12:49:10.241458'),(17,'auth','0012_alter_user_first_name_max_length','2022-11-21 12:49:10.459954'),(18,'sessions','0001_initial','2022-11-21 12:49:10.596025'),(19,'traf_app','0001_initial','2022-11-21 12:49:11.909919'),(20,'traf_app','0002_alter_car_carid_alter_car_carmanu_alter_car_carmtime_and_more','2022-12-02 06:06:36.739400');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0lovw3y7swot1igw2gjyxg54pg4ci1zv','eyJpbWFnZV9jb2RlIjoiRFVaWUUiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p8YGH:zFVFOER4s5V9f5Q94LP4oDXneRUZxxzKfZVqOiXQADI','2022-12-23 02:59:17.277441'),('0ygzd5el0hm01rtvo5cinbesecs0av4b','eyJpbWFnZV9jb2RlIjoiRVNBRUkiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoibHl5MTIzNDU2In19:1p8JaG:lID8s1Jgi07L5EahHU97fkbnQXr9xLIfTMOW4cb4-WU','2022-12-23 11:17:56.273627'),('108xpqv8vtkgfvg2fhy3sasklavw6t24','eyJpbWFnZV9jb2RlIjoiR0dUT1IiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoid3kxMjM0NTYifX0:1p8LuA:tFysuO59kL9zBjTEpAcrRJ2yiO-X1UD2tb46gcuC_WY','2022-12-23 13:46:38.980620'),('25y3kbi691t0qewwsyshpb4jfli4bv2w','eyJpbWFnZV9jb2RlIjoiQUZYQUMiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoibHl5MTIzNDU2In19:1p8I2m:ULWwkEY1PV6gIoLyySUa5QNoxuAdwlwryB2S5FFvBds','2022-12-23 09:39:16.643639'),('2e2wv5yxph1umk8t925123a407btoqfb','eyJpbWFnZV9jb2RlIjoiU0pDRUwiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p8YF6:K_kDgVyXAzRP8p7MO-YJbGrZC-B_CZGaIRkYqGtuOzQ','2022-12-23 02:58:04.864595'),('2gpkth95bxwmvrad2og4iwxwm7by98gc','eyJpbWFnZV9jb2RlIjoiUkhPT0giLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p0kWZ:2wbdxmItkjXlujz8XMBjHhKJYqJwLBGHG0KWxbGIh6o','2022-12-01 14:27:51.992957'),('2hwbap4lbguvw0sghufbxowgulmm4ykn','eyJpbWFnZV9jb2RlIjoiQUNFSFciLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p0mrO:AfGCz2FhE7rgrMHQdjbOgT43wGhXCWd_1ovy4Yq9amk','2022-12-01 16:57:30.275266'),('2klgghy8o8szy0detcrkzlg678mkr028','eyJpbWFnZV9jb2RlIjoiRVNWSkQiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p0lR4:IuQqHguf3Ed7GBqpfQsQk8-hLiWBKsIVvIOzRbQZgvU','2022-12-01 15:26:14.736688'),('3sgptj3r2vf4mn61u0gd6npiq2aqfoqd','eyJpbWFnZV9jb2RlIjoiTlpBQ1QiLCJfc2Vzc2lvbl9leHBpcnkiOjYwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoibHl5MTIzNDU2In19:1p6q0Q:MDqdvXBTVmq41xyYBoUn5sgN4SEbgJdNIUcraJuUlq0','2022-12-18 09:31:50.863470'),('3z6tl0487j89y5dmy2lsk9nhrt9t1c3x','eyJpbWFnZV9jb2RlIjoiWFNDVU4iLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoibHl5MTIzNDU2In19:1p8I8f:JsnOSM_Anh8vg-rIEdXNh_C1p_XR36ON55keji1f3L4','2022-12-23 09:45:21.512932'),('42aj444g6mmakdz548ldu9ju3tp1za2t','eyJpbWFnZV9jb2RlIjoiR0dWSVgiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p8NcV:JYKJBcXAXae38Nr7WUd-enOOP9QwgiClHw3ioGzKZbM','2022-12-22 15:37:31.478571'),('433m4z5qeqg7hv6ayb2n97kcxhgsg2oq','eyJpbWFnZV9jb2RlIjoiQ0VHUUciLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoibHl5MTIzNDU2In19:1p8JzJ:qwK71qT83R4zDzF8qXB5bZazhvZ_Xnimp8b0ESKycpc','2022-12-23 11:43:49.975974'),('4i1ny9f7j9c5dc0na1y38u50wbsbygk1','eyJpbWFnZV9jb2RlIjoiR09PR0kiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoid3kxMjM0NTYifX0:1p8Gdp:lKMZl8yrl0SDpLzYVZBdymXBgPWQZxapgtHoIglgmWk','2022-12-23 08:09:25.995469'),('4oaqltoa5opcdrugnbg74j7forfgh7p9','eyJpbWFnZV9jb2RlIjoiT1VZS0wiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoid3kxMjM0NTYifX0:1p8GNE:lIFkAu5DT911zuNB2K1cff2Q10R4Ic1YmlQhHsvmI6I','2022-12-23 07:52:16.468953'),('4vxgcrx0ssdlr43e5gq0fpzh5xdbddpk','eyJpbWFnZV9jb2RlIjoiQUZVUEgiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoibHl5MTIzNDU2In19:1p6psb:2W21yUljPfOgEVLwBd5MoLWvCYL1V7umq6kNMgMLf6I','2022-12-19 09:22:45.088853'),('4ws39utztornob071ti4gn1fbf9twqud','eyJpbWFnZV9jb2RlIjoiRk9MUk0iLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p8YN2:f7iOwacXzVOX_VXpUqEpGi2SPbxyoTZHH4dNMEcueMY','2022-12-23 03:06:16.510122'),('53cad3c3gkm8dnymqt0zy9vzw4ftjjq4','eyJpbWFnZV9jb2RlIjoiQ1BOU1AiLCJfc2Vzc2lvbl9leHBpcnkiOjYwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoid3kxMjM0NTYifX0:1p0zzQ:cqYY97vuXIMUmb-08uNW2dmmA3j8spFXlFweEm2RtGU','2022-12-02 06:58:40.452723'),('5hbygndn8mbcavse7k6gfut9blibp79n','eyJpbWFnZV9jb2RlIjoiSkJOT1oiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoid3kxMjM0NTYifX0:1p6q3Q:Nh7LMetu3bDfAZcTkBspo7IYTqfptIny-N4VAizUXiU','2022-12-19 09:33:56.968025'),('6ej0o9fwnayr77yiparnnmlbcscakt6e','eyJpbWFnZV9jb2RlIjoiVUdXWUkiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1oxVTM:-JD1CLF2MeGZc8gqVwKqIHLCSFHnP-A5lPp8oZr6Ju4','2022-11-22 15:47:08.909953'),('7tk70sniv6ubw2x0x4kc9iz9wdrjzig3','eyJpbWFnZV9jb2RlIjoiQ0RQUlAiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoid3kxMjM0NTYifX0:1p8LIm:y2khfxO0YwA_xBp4PEHScg3Vaszeu6jzcvKhSGmpMUI','2022-12-23 13:08:00.928509'),('7z367i3zep7nuge6venzft46cy2ta9wh','eyJpbWFnZV9jb2RlIjoiVkFRUFIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p8Y27:lma6wsdOcfIVa_rV39wg__La8hYu1Cg8y1NexhKTDVM','2022-12-23 02:44:39.017965'),('8rwgrzdx7l3w05blh48hbhdx634ua6yf','eyJpbWFnZV9jb2RlIjoiRVdOV1IiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoibHl5MTIzNDU2In19:1p8IUV:T3qZMF4eNrjAn6LyiL21FgVNwIZK7TdT1_mN432H98o','2022-12-23 10:07:55.436099'),('994vkcu3u8611us1gz9v7c5lk4bsi6ct','eyJpbWFnZV9jb2RlIjoiWUZETUsiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoid3kxMjM0NTYifX0:1p6oOc:4ZSkxR9tsUmAZQSDI9ZolnMvxieql3UT2pnEj121yjg','2022-12-19 07:47:42.719183'),('9yphhwmqrtw287tj0j1ijctswospa011','eyJpbWFnZV9jb2RlIjoiUlZOSU0iLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1oxVgm:VVSTXEz78AWHsfbZC2I7-bykg-GGLzneE8RdIXVkcBE','2022-11-22 16:01:00.637655'),('aklupg6hf74vmyn2rnfv3sus3gaa7fv3','eyJpbWFnZV9jb2RlIjoiS0hCTVIiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoid3kxMjM0NTYifX0:1p6pim:ljWhtq8ILx4NWE_ajhVveSNRkWqXO7hX4XJ-REYALXA','2022-12-19 09:12:36.726632'),('axoml91nzilb32tzsf7z433n744ozajk','eyJpbWFnZV9jb2RlIjoiQlNUSU8iLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoid3kxMjM0NTYifX0:1p6p4n:OKEn0dYikQSl6-Sh4JB36nPeYTOeG7Fv8lUVqm3iqvE','2022-12-19 08:31:17.506856'),('ayfucvgfi4h4a4d2ruxksfxpn628lzve','eyJpbWFnZV9jb2RlIjoiUVhVWUciLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoibHl5MTIzNDU2In19:1p8JhA:7PsrCTyQSkUbgdb_UQwnuKj8ZUb7Y5i4o7_LygLOCco','2022-12-23 11:25:04.422826'),('ba7fdrop5858o4hbpmqbd5v75pho6zhi','eyJpbWFnZV9jb2RlIjoiS0RaVEoiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p0l0d:B06QHBzYe2m1cIqVi4hhw1_d7ZuqQ3PFql1tR-ISJ58','2022-12-01 14:58:55.038994'),('c7pdra5e6nbc9smkr8q8gqbailuqpwti','eyJpbWFnZV9jb2RlIjoiWk5FU0EiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p0l52:F0dCuoNO8csgJUTN_y-MV8tbPq4scQFLAdJCEIHapuw','2022-12-01 15:03:28.231959'),('ch9eckxbq4w5cfrrfw4i0wle6793dnun','eyJpbWFnZV9jb2RlIjoiRUxUQUciLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p8Yoi:L2CAaJvoqwa-Iby6aQS2zgM8nxR-nqm0lSr4yVPRfbk','2022-12-23 03:34:52.671222'),('ckp10zhotlcvlqvflk5ndi893j4wdwc7','eyJpbWFnZV9jb2RlIjoiSEtXUFAiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoid3kxMjM0NTYifX0:1p80md:v-LcWIMpB2SK1zTVxoiqBBU89Y4X5Snj1wNAH7MMr8k','2022-12-22 15:13:27.861088'),('drcex0kz8c3advb9bk3gvrldn041bahe','eyJpbWFnZV9jb2RlIjoiUkJHVlgiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoid3kxMjM0NTYifX0:1oySkF:BFldn-AUe-aYG1EKAEepULMxB9N09-96h9G0331LIMI','2022-11-26 07:03:31.829121'),('dvap8s0ppb4y6do4ctauoxl09syhcqj7','eyJpbWFnZV9jb2RlIjoiR1dZSU4iLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p8XqJ:-eBEQfHX7YM9hleoM5Tuo4mgA_1jLRwPWgp3JxRC7Ec','2022-12-23 02:32:27.170135'),('e7v7mnhzr2q2nbzh2qqm3ll3h8t6huw1','eyJpbWFnZV9jb2RlIjoiWUpLRFUiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p0kwI:yGRe58PE2j5PIDcNFRvZIn91K5qGImPG2Y_C4rhieYo','2022-12-01 14:54:26.955974'),('emtkvex3q6uya5d5wy27bbnxpz2k7c0a','eyJpbWFnZV9jb2RlIjoiRUNZSEMiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p8YWd:1ZIEdAi8TMhcUzUMJGGi_BcbxOaYFMTbyGVggqrJ3PI','2022-12-23 03:16:11.671756'),('f0kyv2ez591di9mabds1hzd3ygifdglw','eyJpbWFnZV9jb2RlIjoiR0xQUU0iLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p0lSy:cTYo4MLUItQR2K1fCrWbCUl2PUxe5kerP4S6uOeY5DA','2022-12-01 15:28:12.677491'),('f2owtnt3x1a0oj2f48e0mzatdrhacixy','eyJpbWFnZV9jb2RlIjoiUE5BSVgiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p81uj:uUBV1d8DRj7DqS50MmoZu75FnlBGAH84WpR0Gxm1RBc','2022-12-21 16:26:53.448396'),('fszadbvgjluy8z5uh107x7zqvbjpa1an','eyJpbWFnZV9jb2RlIjoiRE9LRFEiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1oySHt:dDVRWH_fKk1bA7JYqiZ8paZIwleYUCw_5IhMawH1cTk','2022-11-25 06:35:13.999720'),('gxm74r8tnnoz933yf4yq7k2tei47tmed','eyJpbWFnZV9jb2RlIjoiTlFISVYiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1oySV1:0pPBemZFOM_M7pkGQH15gdr8z0FRDVgKKl0NqoY-7h4','2022-11-25 06:48:47.310470'),('gxq3j8noyitwb4n52havyrqfv9vi90ay','eyJpbWFnZV9jb2RlIjoiSFBJR1oiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoid3kxMjM0NTYifX0:1p6pAb:dB9yixxCIED5fWVaS66Vy5aPAH585zaAarv_JqvI50c','2022-12-19 08:37:17.454007'),('h1wu2yfj189a0g80k2l14992b6rajbc1','eyJpbWFnZV9jb2RlIjoiSlNHRk4iLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoid3kxMjM0NTYifX0:1p6owv:MhouEP7hnGSgukz5-h7bQXeCNWfROFCAXeIVBsYp_IE','2022-12-19 08:23:09.265332'),('hedq0pb0u828i3hpqeurpzq8mfnndnbd','eyJpbWFnZV9jb2RlIjoiUE5BUlUiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p8Xj6:vn3MfT5KpEacu3_6J8-Dgl6JSlrr-zGZlSSH7lqB-H8','2022-12-23 02:25:00.568775'),('hh4j5f4szjo2xy8l6eivi39pgx4lbu1e','eyJpbWFnZV9jb2RlIjoiQ1VGWkEiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1oxVl8:A180jQPQA2CbEpcS6iNtJywMEoNRO3BKZRdYuyonJ4s','2022-11-22 16:05:30.339071'),('i6j9bswyrak88cn7nwbvcrzixeajvwbz','eyJpbWFnZV9jb2RlIjoiQ1dUWlUiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p8Y8t:iC8rbfcjrkGsjybHK4WrjdlSOboSfo9z5sFfyhznddg','2022-12-23 02:51:39.026881'),('i769jpxvo0svpz7ugwwkp6tvpgt9wzts','eyJpbWFnZV9jb2RlIjoiQ1RWWkEiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoid3kxMjM0NTYifX0:1p0zF6:tUHrta_pmf41k6uJmRMMfdC5FX5qEdi5tpCa2WyGioo','2022-12-03 06:09:48.205638'),('i7r9t6yxqo0ltkx4lla6k5ovwabwms2c','eyJpbWFnZV9jb2RlIjoiSFVJT0EiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p8YmC:1PtvdhcQtGe7j9LKefKf5KjsHYybe1V9fkzo9dRiAOs','2022-12-23 03:32:16.859797'),('ipwtfvfgbc849491rxl551mnq2d9i3pb','eyJpbWFnZV9jb2RlIjoiVEVISkIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1oySXj:Ij4nPEFm5J3ISN3SRjyJT0fxBN2ozGIOkOEJHKdiBao','2022-11-25 06:51:35.355353'),('izyiwpwffrkgnyczni8ebzqhzng9qe19','eyJpbWFnZV9jb2RlIjoiVVBJVFMiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p8YVe:iy7C6EAhRNqR6zDy350O02FRFYZbezq1O6OJr0xCHZQ','2022-12-23 03:15:10.162720'),('j3hdkz7uxh8721qs0urhed78lpkon93b','eyJpbWFnZV9jb2RlIjoiU01CUEgiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p0lHN:5t9vwuMar3IBxHAQwyGDT4ik0qMXr90bt26R4OYVS7I','2022-12-01 15:16:13.035251'),('jghdkdrule6ybhb2njzhgxlnt4ye0e4s','eyJpbWFnZV9jb2RlIjoiTkdJQ0EiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1oxViu:u4vTaZ2lRkDUIN3B823lMKmDhVCM48kPkiFIPjNLUUA','2022-11-22 16:03:12.432733'),('k8hlfry4pyfrk6lc7vzekgo6vajjwclw','eyJpbWFnZV9jb2RlIjoiWElTSEMiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoibHl5MTIzNDU2In19:1p8ZXw:67kSJHGo_xuAg6ir4WAK6GqPlTG2mWDdAD5mquwrIv4','2022-12-24 04:20:36.358960'),('l81mnca4unwvgj7l8zujdix87h8pdi5h','eyJpbWFnZV9jb2RlIjoiVFVZV0YiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p0kxV:aVce7NU2fQs1fT8gpeWMuh3MAB6s_1Obfb6DMkklpW0','2022-12-01 14:55:41.052528'),('leirs66ksc0hl3843dp63vcp57exk61k','eyJpbWFnZV9jb2RlIjoiSlpLRFIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1oxVPE:xpHlMY5SzCSroWUt5pZc0Cg9qbnFunTYg-Z4KzYJW60','2022-11-22 15:42:52.156641'),('miuhzi6ipxn7loy8f1f9ncxgl6bfsy5s','eyJpbWFnZV9jb2RlIjoiTU9MV0MiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1oxVba:f3i74579IuB6a7SVQlKLfHPxTM5fD1IC7SP_ADixmo4','2022-11-22 15:55:38.848818'),('moulugl57bt1buik58vnoylutr0n5bwy','eyJpbWFnZV9jb2RlIjoiSFRIUFAiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1oxVN3:m3ILhpf0p_eCO15bC048w8YA0w1-I2f1N1bZya2CCdA','2022-11-22 15:40:37.356819'),('my705mjl9eq61raec9hkz0sq7sbzxto6','eyJpbWFnZV9jb2RlIjoiQURCRFoiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoid3kxMjM0NTYifX0:1p6phs:XZ1kUphDRUHrkl51DB9zl5_0_4eAHdp7i6Wn_vMRUig','2022-12-19 09:11:40.826889'),('n48pew5ka6afhtaa9lkvkrwsu1ypi0rt','eyJpbWFnZV9jb2RlIjoiUlFGTVoiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p8Ycp:TxyWoyPPnWCjhJ3E3vy1NLa2TMPe7BQ-xY-Svt0rM1Q','2022-12-23 03:22:35.111917'),('n8zgscsw0u3y6aosvknnyffzrq1kw9e1','eyJpbWFnZV9jb2RlIjoiT0NCQ0giLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p0lKr:1oirB_vdMy5GI_LfeMsdVX0VESXmNi7Y009CZC2-wzI','2022-12-01 15:19:49.763580'),('o5vsdjd94thc82wh922g3790b39trk7z','eyJpbWFnZV9jb2RlIjoiRVNHVUYiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p6oIR:uZ-2IJ-hWNT1pwM9IjVnI9UXeREz8xzMnlQlL_xrUww','2022-12-18 07:42:19.481534'),('od2q3az31v36afac2xdhmbqqx02xpd3p','eyJpbWFnZV9jb2RlIjoiRk9IQ0wiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p8XlS:CPbDP1x7As2xp2Ko_8HqrpBx-ZGrDPvNkO-_8J58bMw','2022-12-23 02:27:26.082656'),('pwyp8ps32xdfd2sqwtosvi1ofp8waaq0','eyJpbWFnZV9jb2RlIjoiVVhNUFciLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoibHl5MTIzNDU2In19:1p8HZA:W62izi18mvmTPE-cd5of0bt4cinNT6wlt4Nb8pyOSb4','2022-12-23 09:08:40.911006'),('pyfhk04vdfncnj6kow4x2rnuo3elbl68','eyJpbWFnZV9jb2RlIjoiTldMQlEiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p3HJA:yLleowpsKmLwMEE_xQR9T67U2SiPc-IEl4ALSgPKQS0','2022-12-08 13:52:28.548701'),('rcyuzb19a0p5d9zc2kzmvxss5qb828a5','eyJpbWFnZV9jb2RlIjoiTllOUFkiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p8YRW:qazBf-JYe5VFAKaMEYwUt86XJ4T4OxPtdaMNM1TVZJo','2022-12-23 03:10:54.306800'),('rwpmv5sg1nufrwfl33w2y1vy13gqmcqf','eyJpbWFnZV9jb2RlIjoiWlhCQ1QiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p8Xp9:xP0ZeL7Z3pJY8b1FKYpKpmfITiaHNXNkTKKqJ0F-qDg','2022-12-23 02:31:15.130531'),('s87fkczhwjv1u56yljr5gxxac21gsvxn','eyJpbWFnZV9jb2RlIjoiUkVFRUUiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoibHl5MTIzNDU2In19:1p8Jdf:B-rg7T5yBpTeEb7Dg0Sl92Sv2k4ONsknLBlvMbJJqQ8','2022-12-23 11:21:27.808235'),('sf3u8xa4g3f032x8n8nldhvqc5nt61eb','eyJpbWFnZV9jb2RlIjoiVE5RWVQiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p8NhT:zdozKG40FofgywtIkQ5cC7LYKsQv7o5rK0-AqsDoZDQ','2022-12-22 15:42:39.553405'),('sk9ndzattrh7ichks3fax6a9ipn5fnfy','eyJpbWFnZV9jb2RlIjoiTkFUSUEiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoid3kxMjM0NTYifX0:1oySZ2:MoBGYLhPNZeay7UopIH1wv1DmcjQkOuNnd_qTwupOHo','2022-11-26 06:51:56.259012'),('t6st6yjyjbu5q2xtv21g766knj931t0b','eyJpbWFnZV9jb2RlIjoiV1FKRVUiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p8Mvx:wT7RktTNmkH3J00uycafDxAf_gwHla4wjCc2jGyN0e4','2022-12-22 14:53:33.621919'),('tjebomvmzrfctszubx2m4e4an2smeawj','eyJpbWFnZV9jb2RlIjoiS0VBVUsiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p8YTQ:QqDrprZTg_PGf6Idpa_koigDDc11zxZnS9wkiuZH3f4','2022-12-23 03:12:52.722186'),('tl1i9z853f8inlv90337r306gzlxyt5y','eyJpbWFnZV9jb2RlIjoiVlRWRlQiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoibHl5MTIzNDU2In19:1p8I5J:Iq3zWHWbg-wCacFYU_fX5LiNFuADZjclR1rkIwDTr0Q','2022-12-23 09:41:53.094812'),('u0zf6tu3q2mx7zto0zpfrzbzv56clvkz','eyJpbWFnZV9jb2RlIjoiS0RYVlQiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p0l2M:Ir1oOrBiO1S1bSl6VWKHTyp5paLdC1ktZg-Rvfh4gxk','2022-12-01 15:00:42.623877'),('u1vpenpmb26m7wvheyzd63wupvmaqjru','eyJpbWFnZV9jb2RlIjoiT0xFQUsiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p8XgT:fcaYvMm9cdW61kuyi77k_FG0Bci8TL7LLZVquEz70Fs','2022-12-23 02:22:17.891867'),('u2lwlf6rklxyzp6wcpw7z0imi2w40jps','eyJpbWFnZV9jb2RlIjoiVkJCRVoiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1oxVeL:fRH1Ky6b5ZuRFs01C9MZA4BEA0QVqPwTVgDZiTYKTwg','2022-11-22 15:58:29.458345'),('vhstyxzrocsahkyxz938nnjpbrk78uod','eyJpbWFnZV9jb2RlIjoiUkVKUVQiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1oyShq:s1D5pYpciQhI2NrwGew20tf6KIaNGMLMqbUrR6oQpKA','2022-11-25 07:02:02.455683'),('vpvwwtkrfzogflchcg72cn8awycgl32w','eyJpbWFnZV9jb2RlIjoiVkVUR1MiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoid3kxMjM0NTYifX0:1p6p1N:8VVBMDj4aY-Oyila57jMi2QJWm_uS9jdXOXX5Q9aCeU','2022-12-19 08:27:45.457587'),('vrhluixaggw3gi7z7nz8v34rhpx4fsra','eyJpbWFnZV9jb2RlIjoiT0VSUUMiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1oySJQ:o3Iw9_niaaDss20X7sgz0EHjXWQcIzEQe8d2wCeS91s','2022-11-25 06:36:48.082543'),('vuhe7pzbc7zw5qdzavl3i3if5i2tv3ho','eyJpbWFnZV9jb2RlIjoiQVdUTFUiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoid3kxMjM0NTYifX0:1p80do:7glKKG5QhJcaIc1HqCwAxLnIF6yHOpTxDNtD8LD_laY','2022-12-22 15:04:20.500931'),('vxqn9zm1l73yswq4mhdgom2rutnw5ee3','eyJpbWFnZV9jb2RlIjoiV1NDSk0iLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1oxVZN:jBz4Vk9vYGoram5wgZMFrXNTVUkKni17p0c8VUqLvmQ','2022-11-22 15:53:21.652332'),('w1sjd978ck2qdx8i5ef14gf7rhnca7hg','eyJpbWFnZV9jb2RlIjoiRkVFQ04iLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p0lOL:Uk3PA78Zs2HQHiALWOS2uI7T_AgGhNyWfTx4epZ--xY','2022-12-01 15:23:25.063393'),('w6y7rvo42ufjqmsf442fh3a7blws7ren','eyJpbWFnZV9jb2RlIjoiRFRIVEgiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoid3kxMjM0NTYifX0:1p0zaS:ZlOUl1gSdssc61MTRkn0-kwbcnq07ZtFuHzG-hOLZlg','2022-12-03 06:31:52.329063'),('wu22j2fmgc4vk5sb1l348ukvp6txls4w','eyJpbWFnZV9jb2RlIjoiUlJXUFAiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoibHl5MTIzNDU2In19:1p8F7T:2qdTx5yhWynQkVCtQmY4uQb2njQtSXcU5FL5BXKfSOE','2022-12-23 06:31:55.361937'),('x1ah9wpe71jyzixs3pv69rkdb8odiuc5','eyJpbWFnZV9jb2RlIjoiV0hOQ1QiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoid3kxMjM0NTYifX0:1p103G:1-Oc5GA3pytW88woVmPrIZg7aGOE2qcJp55Qt4YWGRc','2022-12-03 07:01:38.081048'),('xpbrcaszujj44ewqclljolf444r2d7nj','eyJpbWFnZV9jb2RlIjoiQllES1AiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1oxVS7:pqrpFrDJMeWERYFRWzk9MGbWFf8FU9Vy0zaydNH4gmg','2022-11-22 15:45:51.194603'),('xu1o3a12w4i3sghw7wy21sqgb8cnj5qq','eyJpbWFnZV9jb2RlIjoiSEZZTEwiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoid3kxMjM0NTYifX0:1p0yxa:AmKmOKZVSr0yiF-6f_Bnc26m0t4QzHXcbJq1Vk9XDbQ','2022-12-03 05:51:42.855308'),('xzn094iydjq49o54pz4hqe7m4292zox2','eyJpbWFnZV9jb2RlIjoiUVRLTE4iLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p8Ne1:gWwjUNSE-M0tx1-pCakYh-jMTdPKwa42wr_gmcuIiNk','2022-12-22 15:39:05.286410'),('y7xz0b002pu8sdfp9a8cajpr0rqd9onz','eyJpbWFnZV9jb2RlIjoiQlNNSFMiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoid3kxMjM0NTYifX0:1p6p9N:KGuFnpwL-7Kh4kmgf8E714iyvYjqLtB8ag4jyYTWsmQ','2022-12-19 08:36:01.497193'),('ya9mub988lkz26ub7o6sy07sdx4ubgxu','eyJpbWFnZV9jb2RlIjoiVk5CR0YiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p8NUn:Yl70Xo4uXRjyWbH5BXztUjKosHpASYIgZFtWm0W3iko','2022-12-22 15:29:33.314496'),('yohjvmw5wytredh2vvgafl202exgroyw','eyJpbWFnZV9jb2RlIjoiWkFPSFEiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1oxUVO:tdv_kRE_j2kp5HTdrXbaHLSCTeP6JKZ6H67HjV17OIM','2022-11-22 14:45:10.942468'),('z2972xey3qzpxgbr5w5cpp80buwv2te2','eyJpbWFnZV9jb2RlIjoiSlBNS0wiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwLCJpbmZvIjp7ImlkIjoiMDAwMDAxIiwicHdkIjoid3kxMjM0NTYifX0:1p8JVU:zU1ae4UOa-fQQbmgvFxQsBZYCpbVSq9kwtoySrAn3ik','2022-12-23 11:13:00.233559'),('z9r2hn48wh9ghvyehpu5qz3s13snmwxh','eyJpbWFnZV9jb2RlIjoiR1VQUUYiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1p8YHv:k0Mu97pM6WQGe7n6nvT2gQww4MiKk9IUYmtskmtttVI','2022-12-23 03:00:59.334941'),('znfxurl0v33ignu04759zrhfoolff7qb','eyJpbWFnZV9jb2RlIjoiWk1SWVoiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1oySFd:o4xY31uL2eJz3ygKQVAcCkI-BZdxZhWhhEOSPNScs7s','2022-11-25 06:32:53.970265');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `licenseId` varchar(12) NOT NULL,
  `driverName` varchar(20) NOT NULL,
  `driverIdentify` varchar(18) NOT NULL,
  `driverAddr` varchar(40) DEFAULT NULL,
  `driverPhone` varchar(13) DEFAULT NULL,
  `driverPwd` varchar(20) NOT NULL,
  PRIMARY KEY (`licenseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES ('000001','李一一','342502000000000000','上海市徐汇区梅陇路130号','18964778523','lyy123456'),('000002','张小五','315564199705091136','暂无','19156343973','zxw123456'),('000003','周静','338966200009140025','暂无','13339136436','zj123456'),('000004','杨媚','351224199307010064','上海市徐汇区凌云街道235号','13586425791','ym123456'),('000005','楚慈','364525200012030126','上海市静安区国康路64号','17855634976','cc123456');
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `include`
--

DROP TABLE IF EXISTS `include`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `include` (
  `notificationId` varchar(8) NOT NULL,
  `punishState` varchar(6) DEFAULT NULL,
  `punishId` varchar(8) NOT NULL,
  PRIMARY KEY (`notificationId`),
  UNIQUE KEY `include_notificationId_punishId_e494e073_uniq` (`notificationId`,`punishId`),
  KEY `include_punishId_15cb9a3b_fk_punishment_punishId` (`punishId`),
  CONSTRAINT `include_notificationId_ffd95f00_fk_notification_notificationId` FOREIGN KEY (`notificationId`) REFERENCES `notification` (`notificationId`),
  CONSTRAINT `include_punishId_15cb9a3b_fk_punishment_punishId` FOREIGN KEY (`punishId`) REFERENCES `punishment` (`punishId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `include`
--

LOCK TABLES `include` WRITE;
/*!40000 ALTER TABLE `include` DISABLE KEYS */;
INSERT INTO `include` VALUES ('10000001','已处理','00000002'),('10000002','未处理','00000014'),('10000003','未处理','00000014'),('10000004','未处理','00000003'),('10000005','未处理','00000012'),('10000006','未处理','00000013');
/*!40000 ALTER TABLE `include` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `notificationId` varchar(8) NOT NULL,
  `punishTime` datetime(6) NOT NULL,
  `punishAddr` varchar(40) NOT NULL,
  `punishDetail` varchar(40) DEFAULT NULL,
  `carId` varchar(12) NOT NULL,
  `licenseId` varchar(12) NOT NULL,
  `policeId` varchar(12) NOT NULL,
  PRIMARY KEY (`notificationId`),
  KEY `notification_carId_6fe9b0c2_fk_car_carId` (`carId`),
  KEY `notification_licenseId_e59e6e9b_fk_driver_licenseId` (`licenseId`),
  KEY `notification_policeId_3132c492_fk_police_policeId` (`policeId`),
  CONSTRAINT `notification_carId_6fe9b0c2_fk_car_carId` FOREIGN KEY (`carId`) REFERENCES `car` (`carId`),
  CONSTRAINT `notification_licenseId_e59e6e9b_fk_driver_licenseId` FOREIGN KEY (`licenseId`) REFERENCES `driver` (`licenseId`),
  CONSTRAINT `notification_policeId_3132c492_fk_police_policeId` FOREIGN KEY (`policeId`) REFERENCES `police` (`policeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES ('10000001','2022-12-01 00:00:00.000000','上海市奉贤区海思路','违规停车','沪A12345','000001','000001'),('10000002','2022-11-30 00:00:00.000000','上海市奉贤区奉炮公路','超速20%','沪B67891','000002','000003'),('10000003','2022-11-27 00:00:00.000000','上海市奉贤区百联商场路口处','闯红灯','沪C86877','000003','000002'),('10000004','2022-12-03 00:00:00.000000','上海市徐汇区凌云路东','超速30%','沪ALS888','000004','000001'),('10000005','2022-12-10 00:00:00.000000','上海市徐汇区漕宝路中段','违规停车','沪CLK853','000005','000002'),('10000006','2022-12-13 00:00:00.000000','上海市徐汇区漕宝路口锦江之星','未礼让行人','沪A12345','000001','000004');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `police`
--

DROP TABLE IF EXISTS `police`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `police` (
  `policeId` varchar(12) NOT NULL,
  `policeName` varchar(20) NOT NULL,
  `policePhone` varchar(13) DEFAULT NULL,
  `policePwd` varchar(20) NOT NULL,
  PRIMARY KEY (`policeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `police`
--

LOCK TABLES `police` WRITE;
/*!40000 ALTER TABLE `police` DISABLE KEYS */;
INSERT INTO `police` VALUES ('000001','吴雩','19156343973','wy123456'),('000002','严正','13866962752','yz123456'),('000003','韩晓梅','18156785546','hxm123456'),('000004','马翔','18356887421','mx123456'),('000005','高盼青','13964879936','gpq123456');
/*!40000 ALTER TABLE `police` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `punishment`
--

DROP TABLE IF EXISTS `punishment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `punishment` (
  `punishId` varchar(8) NOT NULL,
  `punishWay` varchar(20) NOT NULL,
		-- constraint punishway_CK check (punishWay in ('警告', '罚款', '扣分', '暂扣驾驶执照')),
  `fine` bigint NOT NULL,
		-- constraint fine_CK check (
-- 				(punishWay='警告' and (fine=0 or fine=1))
--                 or (punishWay='罚款' and fine>=50 and fine<=2000)
--                 or (punishWay='扣分' and fine>=2 and fine<=12)
--                 or (punishWay='暂扣驾驶执照' and fine>=3 and fine<=6)
--                 ),
  PRIMARY KEY (`punishId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `punishment`
--

LOCK TABLES `punishment` WRITE;
/*!40000 ALTER TABLE `punishment` DISABLE KEYS */;
INSERT INTO `punishment` VALUES ('00000001','警告',1),('00000002','罚款',100),('00000003','罚款',200),('00000004','罚款',300),('00000005','罚款',500),('00000006','罚款',1000),('00000007','罚款',2000),('00000008','罚款',3000),('00000009','罚款',4000),('00000010','罚款',5000),('00000011','扣分',1),('00000012','扣分',2),('00000013','扣分',3),('00000014','扣分',6),('00000015','扣分',12),('00000016','暂扣驾驶执照',1),('00000017','暂扣驾驶执照',2),('00000018','暂扣驾驶执照',3),('00000019','暂扣驾驶执照',6),('00000020','暂扣驾驶执照',12);
/*!40000 ALTER TABLE `punishment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-23 13:27:00
