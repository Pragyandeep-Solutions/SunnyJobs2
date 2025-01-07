-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: jobsdb
-- ------------------------------------------------------
-- Server version	8.0.40

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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add bbsr jobs',7,'add_bbsrjobs'),(26,'Can change bbsr jobs',7,'change_bbsrjobs'),(27,'Can delete bbsr jobs',7,'delete_bbsrjobs'),(28,'Can view bbsr jobs',7,'view_bbsrjobs'),(29,'Can add bng jobs',8,'add_bngjobs'),(30,'Can change bng jobs',8,'change_bngjobs'),(31,'Can delete bng jobs',8,'delete_bngjobs'),(32,'Can view bng jobs',8,'view_bngjobs'),(33,'Can add hyd jobs',9,'add_hydjobs'),(34,'Can change hyd jobs',9,'change_hydjobs'),(35,'Can delete hyd jobs',9,'delete_hydjobs'),(36,'Can view hyd jobs',9,'view_hydjobs'),(37,'Can add pune jobs',10,'add_punejobs'),(38,'Can change pune jobs',10,'change_punejobs'),(39,'Can delete pune jobs',10,'delete_punejobs'),(40,'Can view pune jobs',10,'view_punejobs');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'testapp','bbsrjobs'),(8,'testapp','bngjobs'),(9,'testapp','hydjobs'),(10,'testapp','punejobs');
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
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-01-07 10:59:04.849147'),(2,'auth','0001_initial','2025-01-07 10:59:05.970989'),(3,'admin','0001_initial','2025-01-07 10:59:06.223288'),(4,'admin','0002_logentry_remove_auto_add','2025-01-07 10:59:06.239320'),(5,'admin','0003_logentry_add_action_flag_choices','2025-01-07 10:59:06.256800'),(6,'contenttypes','0002_remove_content_type_name','2025-01-07 10:59:06.400090'),(7,'auth','0002_alter_permission_name_max_length','2025-01-07 10:59:06.519654'),(8,'auth','0003_alter_user_email_max_length','2025-01-07 10:59:06.561048'),(9,'auth','0004_alter_user_username_opts','2025-01-07 10:59:06.576022'),(10,'auth','0005_alter_user_last_login_null','2025-01-07 10:59:06.669510'),(11,'auth','0006_require_contenttypes_0002','2025-01-07 10:59:06.675315'),(12,'auth','0007_alter_validators_add_error_messages','2025-01-07 10:59:06.689893'),(13,'auth','0008_alter_user_username_max_length','2025-01-07 10:59:06.795293'),(14,'auth','0009_alter_user_last_name_max_length','2025-01-07 10:59:06.913209'),(15,'auth','0010_alter_group_name_max_length','2025-01-07 10:59:06.952896'),(16,'auth','0011_update_proxy_permissions','2025-01-07 10:59:06.969686'),(17,'auth','0012_alter_user_first_name_max_length','2025-01-07 10:59:07.085739'),(18,'sessions','0001_initial','2025-01-07 10:59:07.160768'),(19,'testapp','0001_initial','2025-01-07 10:59:07.313843'),(20,'testapp','0002_alter_bbsrjobs_address_alter_bngjobs_address_and_more','2025-01-07 11:09:07.827984');
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
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testapp_bbsrjobs`
--

DROP TABLE IF EXISTS `testapp_bbsrjobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testapp_bbsrjobs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `company` varchar(120) NOT NULL,
  `title` varchar(120) NOT NULL,
  `eligibility` varchar(120) NOT NULL,
  `address` longtext NOT NULL,
  `email` varchar(254) NOT NULL,
  `phonenumber` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testapp_bbsrjobs`
--

LOCK TABLES `testapp_bbsrjobs` WRITE;
/*!40000 ALTER TABLE `testapp_bbsrjobs` DISABLE KEYS */;
INSERT INTO `testapp_bbsrjobs` VALUES (1,'1999-07-08','Murphy LLC','Project Manager','PHD','USNV Garcia\nFPO AP 61946','trevinoashley@example.com',9054137536),(2,'1996-02-01','Peters-Bolton','Team Lead','BCA','325 Lopez Drives\nMarialand, LA 69574','lgonzales@example.com',7674302508),(3,'2018-01-07','Ramirez and Sons','Associate Engineer','MSc','6051 David Mall\nSouth Robertborough, CO 65316','qvillarreal@example.net',7864167541),(4,'1989-03-13','Hamilton Ltd','Associate Engineer','BSc','2493 Allen Hills Apt. 713\nEast Shannon, VA 36154','thomasscott@example.net',9501846732),(5,'1996-07-31','Zavala PLC','Project Manager','PHD','486 Benjamin Avenue\nAndrewborough, DE 48097','martinbrenda@example.org',7745357509),(6,'2000-10-20','Calhoun-Bauer','Project Manager','MCA','51375 Christopher Parks Apt. 324\nWest Frankburgh, DE 61752','schneiderkathryn@example.org',9551322663),(7,'1980-10-25','Grant, Lowery and Torres','Software Engineer','BTech','402 Samantha Center Suite 589\nCastillotown, UT 61976','lynnconner@example.net',9396853183),(8,'2020-01-18','Johnson, Jones and Miller','Team Lead','BTech','97149 Fuller Brooks Suite 164\nNorth Maryburgh, MD 39832','edward65@example.com',6289968618),(9,'1999-02-20','Savage, Bell and Mooney','Project Manager','PHD','50489 Carter Spur Suite 686\nPort Markshire, DE 65982','pspears@example.net',8227890110),(10,'1998-02-05','Sosa-Bishop','Project Manager','BCA','PSC 1294, Box 2989\nAPO AP 39553','slee@example.net',8669829378),(11,'1989-11-06','Parrish-Harris','Project Manager','MSc','2839 Smith Prairie\nSmithside, GU 27968','morrisonnancy@example.com',8794700800),(12,'2017-10-27','Rose-Johnson','Project Manager','BSc','1798 Andrews Prairie Apt. 302\nSmithmouth, MH 92997','parkernatasha@example.net',7231218798),(13,'2019-09-24','Morris-Chaney','Team Lead','PHD','9845 Pollard Dam\nNew Lauraport, NM 36845','michael23@example.org',8372037151),(14,'2001-01-28','Davis-Richardson','Associate Engineer','BCA','395 Hahn Forges\nWilsonfort, DC 74134','alyssamiller@example.org',7269007401),(15,'2004-11-06','Vasquez, Lopez and Dougherty','Associate Engineer','BTech','3500 Roberson Mews Apt. 686\nEast Jademouth, MD 97863','prichmond@example.com',6635189682),(16,'1980-12-19','Cruz Ltd','Software Engineer','BCA','0852 Bishop Port Apt. 582\nRowefort, FM 05776','bpatel@example.com',8095692078),(17,'1979-08-17','Hahn-Carr','Project Manager','BSc','33691 Bruce Pass\nSergioport, PW 73950','wgreen@example.net',9009378674),(18,'2017-03-16','Gilbert-Hill','Team Lead','BTech','405 Brandon Manor\nNorth Jakechester, NM 17980','trevor97@example.org',8769555986),(19,'1986-11-29','Shelton, Vasquez and Boyd','Associate Engineer','MSc','012 Fritz Track Suite 549\nDavidfort, SC 90248','qtorres@example.com',8368030795),(20,'1984-02-26','Flores, Williams and Nolan','Associate Engineer','BTech','USS Hunt\nFPO AP 02920','tiffany92@example.com',9801360406),(21,'2017-09-02','Brown Inc','Team Lead','BSc','81934 Tanya Place Apt. 398\nNorth Levi, PR 77451','csimpson@example.org',7522690773),(22,'1989-12-08','Blanchard PLC','Associate Engineer','MSc','2196 Duncan Square\nRobertberg, NH 06989','dianaedwards@example.net',8539013712),(23,'2015-08-12','Smith-Baker','Project Manager','MSc','71407 Kelly Haven\nNew Allenport, WV 80432','thomas28@example.org',6980317196),(24,'1992-08-31','Stephens, Huff and Miller','Project Manager','MCA','166 Coleman Pike Suite 839\nSouth Garystad, DE 17394','kflores@example.net',6264324362),(25,'1996-06-18','Perry-Meza','Project Manager','BSc','USS Brown\nFPO AP 26051','william18@example.net',9664241255),(26,'1998-11-22','Stokes LLC','Software Engineer','MTech','02534 Warren Rest\nNorth Natalieport, RI 46131','molinarenee@example.net',7116527234),(27,'2020-08-21','Kidd-Frey','Associate Engineer','MSc','3702 Porter Row Suite 804\nBrownborough, SC 69654','michele03@example.org',8414358542),(28,'1993-11-18','Jones-Spencer','Project Manager','BTech','27680 Sara Course\nWrightstad, TN 50447','schmidtchristian@example.com',6069947479),(29,'1975-08-07','Carrillo, Benton and Hodges','Team Lead','BTech','3181 Morris Ports\nGregorybury, MD 87849','fordjoseph@example.org',6545228845),(30,'1970-12-30','Kelly-Harmon','Software Engineer','MSc','450 Lynn Station\nSouth Kelly, CA 46857','travissanchez@example.com',7702279370),(31,'2017-02-20','Fitzgerald-Wood','Project Manager','PHD','266 Claudia Roads Suite 376\nLake Ross, DE 81346','rodney00@example.org',9961016155),(32,'1971-12-01','Clark, Cole and Acevedo','Associate Engineer','PHD','2697 Cole Lodge Apt. 762\nLake Teresaside, MO 67913','tylerbrooks@example.net',9443281586),(33,'2003-06-05','Simmons-Evans','Team Lead','MCA','43837 Peters Orchard\nNew Richard, AS 85513','vwatts@example.org',6039218769),(34,'2002-01-01','Cox-Williams','Software Engineer','BSc','8300 Jesse Haven\nEast Josephbury, MD 77620','wesley23@example.com',8583180761),(35,'2024-03-23','Davis, Novak and Garcia','Team Lead','MSc','63518 Lambert Loaf\nFullermouth, AK 33423','stephaniejordan@example.net',8647745563),(36,'1983-12-22','Dunn and Sons','Project Manager','PHD','85041 Stacy Estate Apt. 692\nWest April, AS 15711','ibrown@example.com',8763067471),(37,'1972-01-17','Malone-Thomas','Team Lead','BTech','071 Patterson Estates\nNorth Gloria, ID 80046','christinekennedy@example.com',8337772691),(38,'2018-01-11','Wilson Ltd','Software Engineer','BSc','22602 Clark Drives\nJulianview, AK 21062','loricain@example.net',8864046571),(39,'2004-04-19','Taylor, Powell and Jones','Team Lead','MSc','09247 Hamilton Passage\nNorth Steven, PR 84590','smyers@example.org',6315094405),(40,'1997-04-07','Smith, Russell and Hernandez','Associate Engineer','BTech','USNS Lee\nFPO AP 75787','kristen87@example.net',7766216071),(41,'1999-08-27','Frederick-James','Team Lead','MTech','557 Mclaughlin Route\nSouth Janetside, AL 34101','toddbailey@example.org',9059532379),(42,'2001-06-09','Patel-Hamilton','Software Engineer','MSc','545 Donald Expressway Apt. 570\nLake Sara, MS 69549','dale28@example.com',7907008435),(43,'1971-01-07','Fuller-Brown','Team Lead','BTech','1147 Logan Harbors Apt. 383\nEast Danielletown, TN 07955','gina66@example.com',8254419909),(44,'2024-01-10','Ross, Wright and Gillespie','Software Engineer','BSc','910 Coleman Heights Apt. 940\nPadillahaven, AS 76154','adriancarrillo@example.com',7575131887),(45,'2009-04-26','Bray, Bates and Roberts','Project Manager','BCA','0325 Pierce Heights\nIbarratown, PW 04518','damoncisneros@example.com',9255372514),(46,'2023-08-29','Maddox, Davis and Wong','Software Engineer','BSc','5193 Quinn Greens\nEast Triciatown, ID 72440','michaelgregory@example.net',9009267070),(47,'2003-04-06','Rangel, Dougherty and Gonzalez','Team Lead','MTech','6758 Blanchard Vista Apt. 930\nWest Julie, VI 72543','qadams@example.org',6557205073),(48,'2014-07-13','Mcguire and Sons','Associate Engineer','PHD','541 Anderson Canyon Suite 481\nPort Angelaside, MH 27739','riddlemichael@example.net',7739687813),(49,'1976-02-29','Salas, Friedman and Vang','Associate Engineer','MSc','61479 Shelby Plaza\nMichaelfurt, DE 80277','shawdaniel@example.org',9480401480),(50,'2001-11-23','Bailey LLC','Team Lead','BTech','129 Higgins Island\nLake Brendafort, TN 65229','holly20@example.net',8214606070),(51,'1975-04-27','Johnson LLC','Team Lead','MCA','513 Curry Cove Suite 956\nLake Marc, NC 15737','jasonfrost@example.com',9785548520),(52,'2013-06-10','Stafford-Davis','Software Engineer','BTech','92794 Sarah Streets Suite 760\nWest Brian, KY 17637','wendylucas@example.net',9429912439),(53,'1995-11-04','Barker, Sweeney and Clark','Software Engineer','MTech','19683 Griffin Squares Apt. 538\nDavidsonbury, OH 40731','cwilliamson@example.org',7474520156),(54,'1971-07-06','Snow, Livingston and Cantrell','Associate Engineer','BTech','36310 Matthews Hollow Suite 971\nLake Daltonport, NJ 92092','fieldsmegan@example.com',9344581969),(55,'1983-03-10','Brady Ltd','Associate Engineer','MSc','4453 Thomas Stravenue\nWilkinsmouth, NV 05381','larryberger@example.com',7633318347),(56,'1994-04-18','Johnson-Ramirez','Project Manager','BCA','36901 Cochran Parkway Apt. 346\nWest Jenny, AZ 05314','avillarreal@example.org',9131844877),(57,'1988-10-22','Grant-Hart','Project Manager','MSc','94723 Yang Plain\nRodriguezport, HI 70371','emilyerickson@example.com',8263430993),(58,'1989-05-26','Roman and Sons','Project Manager','MSc','USS Vazquez\nFPO AP 90301','nicole46@example.org',8050107111),(59,'2019-08-08','Mitchell, Ball and Kramer','Team Lead','BCA','USS Mercado\nFPO AE 71990','timothy34@example.com',9338313608),(60,'1973-07-18','Collins-Garcia','Software Engineer','BSc','27292 Galvan Estates Suite 501\nWarrenton, OR 03257','kchase@example.org',6005693234),(61,'2014-05-24','Kelley, Hensley and Smith','Project Manager','MSc','5763 Jones Ridge Apt. 019\nCalderonbury, FL 02549','lpatterson@example.net',6832336148),(62,'2006-02-15','Ward, Cox and Barnes','Project Manager','MTech','492 Holly Road Apt. 697\nSouth Amanda, AZ 71355','georgebailey@example.com',6853905013),(63,'2013-01-10','Reyes-Combs','Project Manager','MCA','2345 Nicole Neck\nStanleyton, WI 26274','janet93@example.net',9797990035),(64,'1971-07-23','Knight-Bryant','Software Engineer','BSc','13305 Fisher Radial Suite 474\nBrittneyfort, PA 22772','williamschristina@example.net',8647577430),(65,'2021-09-03','Jenkins, Williams and Campbell','Software Engineer','BCA','4294 Snyder Burgs\nReneeville, GU 70445','bwilliams@example.org',8529749531),(66,'2018-08-04','Garner, Chapman and Peterson','Associate Engineer','PHD','943 Hampton Union\nBrittanyburgh, VA 45629','collinssarah@example.net',9021156734),(67,'1979-01-24','King-Fisher','Project Manager','MSc','160 Pam Lakes\nJoshuamouth, VA 61722','rachel96@example.org',7584947355),(68,'2002-10-08','Hancock, Contreras and Shelton','Project Manager','MCA','Unit 4287 Box 5354\nDPO AA 42168','odiaz@example.net',9649145929),(69,'2012-09-29','May-Jones','Project Manager','MCA','PSC 6054, Box 2921\nAPO AP 56082','benjaminguerrero@example.com',7540652541),(70,'1979-04-23','Weber, Ward and Burns','Software Engineer','BSc','28670 Judith Ramp\nSouth Amyview, MN 67755','megan41@example.com',6499615242),(71,'2019-07-16','Lowery LLC','Associate Engineer','BTech','90039 Shawn Greens Suite 762\nDavisbury, PW 78421','andersonrebecca@example.net',6270989033),(72,'1996-01-25','Long and Sons','Project Manager','MSc','222 Erica Mill\nSouth John, WI 05059','haroldturner@example.com',7483506177),(73,'1995-02-03','Jennings-Smith','Project Manager','MTech','55479 Cynthia Mountains\nNorth Melissa, FM 63429','davidsanchez@example.com',7634582556),(74,'2003-12-15','Maynard-Lee','Project Manager','BCA','22129 Elizabeth Field Suite 657\nJennifermouth, PW 80984','christina96@example.net',9838955437),(75,'1993-04-17','Ross, Moore and Burgess','Associate Engineer','BSc','179 Candice Walk Apt. 020\nLake Lauren, IN 54704','kathrynevans@example.org',8894013976),(76,'1971-05-11','Ballard, Hunt and Jones','Software Engineer','MSc','36563 Joel Court\nKyliehaven, GA 05785','cwebb@example.org',8960909847),(77,'1998-02-02','Perez-Clark','Project Manager','MSc','191 Aaron Row Apt. 980\nLake Jenniferview, CA 35271','theresanoble@example.net',7423899653),(78,'1985-12-13','Alvarado-Long','Software Engineer','MCA','368 Vicki Flat Suite 853\nAshleyside, AL 23649','clarkchelsea@example.org',9211139440);
/*!40000 ALTER TABLE `testapp_bbsrjobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testapp_bngjobs`
--

DROP TABLE IF EXISTS `testapp_bngjobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testapp_bngjobs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `company` varchar(30) NOT NULL,
  `title` varchar(70) NOT NULL,
  `eligibility` varchar(30) NOT NULL,
  `address` longtext NOT NULL,
  `email` varchar(254) NOT NULL,
  `phonenumber` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testapp_bngjobs`
--

LOCK TABLES `testapp_bngjobs` WRITE;
/*!40000 ALTER TABLE `testapp_bngjobs` DISABLE KEYS */;
INSERT INTO `testapp_bngjobs` VALUES (1,'1999-07-08','Murphy LLC','Project Manager','PHD','USNV Garcia\nFPO AP 61946','trevinoashley@example.com',9054137536),(2,'1996-02-01','Peters-Bolton','Team Lead','BCA','325 Lopez Drives\nMarialand, LA 69574','lgonzales@example.com',7674302508),(3,'2018-01-07','Ramirez and Sons','Associate Engineer','MSc','6051 David Mall\nSouth Robertborough, CO 65316','qvillarreal@example.net',7864167541),(4,'1989-03-13','Hamilton Ltd','Associate Engineer','BSc','2493 Allen Hills Apt. 713\nEast Shannon, VA 36154','thomasscott@example.net',9501846732),(5,'1996-07-31','Zavala PLC','Project Manager','PHD','486 Benjamin Avenue\nAndrewborough, DE 48097','martinbrenda@example.org',7745357509),(6,'2000-10-20','Calhoun-Bauer','Project Manager','MCA','51375 Christopher Parks Apt. 324\nWest Frankburgh, DE 61752','schneiderkathryn@example.org',9551322663),(7,'1980-10-25','Grant, Lowery and Torres','Software Engineer','BTech','402 Samantha Center Suite 589\nCastillotown, UT 61976','lynnconner@example.net',9396853183),(8,'2020-01-18','Johnson, Jones and Miller','Team Lead','BTech','97149 Fuller Brooks Suite 164\nNorth Maryburgh, MD 39832','edward65@example.com',6289968618),(9,'1999-02-20','Savage, Bell and Mooney','Project Manager','PHD','50489 Carter Spur Suite 686\nPort Markshire, DE 65982','pspears@example.net',8227890110),(10,'1998-02-05','Sosa-Bishop','Project Manager','BCA','PSC 1294, Box 2989\nAPO AP 39553','slee@example.net',8669829378),(11,'1989-11-06','Parrish-Harris','Project Manager','MSc','2839 Smith Prairie\nSmithside, GU 27968','morrisonnancy@example.com',8794700800),(12,'2017-10-27','Rose-Johnson','Project Manager','BSc','1798 Andrews Prairie Apt. 302\nSmithmouth, MH 92997','parkernatasha@example.net',7231218798),(13,'2019-09-24','Morris-Chaney','Team Lead','PHD','9845 Pollard Dam\nNew Lauraport, NM 36845','michael23@example.org',8372037151),(14,'2001-01-28','Davis-Richardson','Associate Engineer','BCA','395 Hahn Forges\nWilsonfort, DC 74134','alyssamiller@example.org',7269007401),(15,'2004-11-06','Vasquez, Lopez and Dougherty','Associate Engineer','BTech','3500 Roberson Mews Apt. 686\nEast Jademouth, MD 97863','prichmond@example.com',6635189682),(16,'1980-12-19','Cruz Ltd','Software Engineer','BCA','0852 Bishop Port Apt. 582\nRowefort, FM 05776','bpatel@example.com',8095692078),(17,'1979-08-17','Hahn-Carr','Project Manager','BSc','33691 Bruce Pass\nSergioport, PW 73950','wgreen@example.net',9009378674),(18,'2017-03-16','Gilbert-Hill','Team Lead','BTech','405 Brandon Manor\nNorth Jakechester, NM 17980','trevor97@example.org',8769555986),(19,'1986-11-29','Shelton, Vasquez and Boyd','Associate Engineer','MSc','012 Fritz Track Suite 549\nDavidfort, SC 90248','qtorres@example.com',8368030795),(20,'1984-02-26','Flores, Williams and Nolan','Associate Engineer','BTech','USS Hunt\nFPO AP 02920','tiffany92@example.com',9801360406),(21,'2017-09-02','Brown Inc','Team Lead','BSc','81934 Tanya Place Apt. 398\nNorth Levi, PR 77451','csimpson@example.org',7522690773),(22,'1989-12-08','Blanchard PLC','Associate Engineer','MSc','2196 Duncan Square\nRobertberg, NH 06989','dianaedwards@example.net',8539013712),(23,'2015-08-12','Smith-Baker','Project Manager','MSc','71407 Kelly Haven\nNew Allenport, WV 80432','thomas28@example.org',6980317196),(24,'1992-08-31','Stephens, Huff and Miller','Project Manager','MCA','166 Coleman Pike Suite 839\nSouth Garystad, DE 17394','kflores@example.net',6264324362),(25,'1996-06-18','Perry-Meza','Project Manager','BSc','USS Brown\nFPO AP 26051','william18@example.net',9664241255),(26,'1998-11-22','Stokes LLC','Software Engineer','MTech','02534 Warren Rest\nNorth Natalieport, RI 46131','molinarenee@example.net',7116527234),(27,'2020-08-21','Kidd-Frey','Associate Engineer','MSc','3702 Porter Row Suite 804\nBrownborough, SC 69654','michele03@example.org',8414358542),(28,'1993-11-18','Jones-Spencer','Project Manager','BTech','27680 Sara Course\nWrightstad, TN 50447','schmidtchristian@example.com',6069947479),(29,'1975-08-07','Carrillo, Benton and Hodges','Team Lead','BTech','3181 Morris Ports\nGregorybury, MD 87849','fordjoseph@example.org',6545228845),(30,'1970-12-30','Kelly-Harmon','Software Engineer','MSc','450 Lynn Station\nSouth Kelly, CA 46857','travissanchez@example.com',7702279370),(31,'2017-02-20','Fitzgerald-Wood','Project Manager','PHD','266 Claudia Roads Suite 376\nLake Ross, DE 81346','rodney00@example.org',9961016155),(32,'1971-12-01','Clark, Cole and Acevedo','Associate Engineer','PHD','2697 Cole Lodge Apt. 762\nLake Teresaside, MO 67913','tylerbrooks@example.net',9443281586),(33,'2003-06-05','Simmons-Evans','Team Lead','MCA','43837 Peters Orchard\nNew Richard, AS 85513','vwatts@example.org',6039218769),(34,'2002-01-01','Cox-Williams','Software Engineer','BSc','8300 Jesse Haven\nEast Josephbury, MD 77620','wesley23@example.com',8583180761),(35,'2024-03-23','Davis, Novak and Garcia','Team Lead','MSc','63518 Lambert Loaf\nFullermouth, AK 33423','stephaniejordan@example.net',8647745563),(36,'1983-12-22','Dunn and Sons','Project Manager','PHD','85041 Stacy Estate Apt. 692\nWest April, AS 15711','ibrown@example.com',8763067471),(37,'1972-01-17','Malone-Thomas','Team Lead','BTech','071 Patterson Estates\nNorth Gloria, ID 80046','christinekennedy@example.com',8337772691),(38,'2018-01-11','Wilson Ltd','Software Engineer','BSc','22602 Clark Drives\nJulianview, AK 21062','loricain@example.net',8864046571),(39,'2004-04-19','Taylor, Powell and Jones','Team Lead','MSc','09247 Hamilton Passage\nNorth Steven, PR 84590','smyers@example.org',6315094405),(40,'1997-04-07','Smith, Russell and Hernandez','Associate Engineer','BTech','USNS Lee\nFPO AP 75787','kristen87@example.net',7766216071),(41,'1999-08-27','Frederick-James','Team Lead','MTech','557 Mclaughlin Route\nSouth Janetside, AL 34101','toddbailey@example.org',9059532379),(42,'2001-06-09','Patel-Hamilton','Software Engineer','MSc','545 Donald Expressway Apt. 570\nLake Sara, MS 69549','dale28@example.com',7907008435),(43,'1971-01-07','Fuller-Brown','Team Lead','BTech','1147 Logan Harbors Apt. 383\nEast Danielletown, TN 07955','gina66@example.com',8254419909),(44,'2024-01-10','Ross, Wright and Gillespie','Software Engineer','BSc','910 Coleman Heights Apt. 940\nPadillahaven, AS 76154','adriancarrillo@example.com',7575131887),(45,'2009-04-26','Bray, Bates and Roberts','Project Manager','BCA','0325 Pierce Heights\nIbarratown, PW 04518','damoncisneros@example.com',9255372514),(46,'2023-08-29','Maddox, Davis and Wong','Software Engineer','BSc','5193 Quinn Greens\nEast Triciatown, ID 72440','michaelgregory@example.net',9009267070),(47,'2003-04-06','Rangel, Dougherty and Gonzalez','Team Lead','MTech','6758 Blanchard Vista Apt. 930\nWest Julie, VI 72543','qadams@example.org',6557205073),(48,'2014-07-13','Mcguire and Sons','Associate Engineer','PHD','541 Anderson Canyon Suite 481\nPort Angelaside, MH 27739','riddlemichael@example.net',7739687813),(49,'1976-02-29','Salas, Friedman and Vang','Associate Engineer','MSc','61479 Shelby Plaza\nMichaelfurt, DE 80277','shawdaniel@example.org',9480401480),(50,'2001-11-23','Bailey LLC','Team Lead','BTech','129 Higgins Island\nLake Brendafort, TN 65229','holly20@example.net',8214606070),(51,'1975-04-27','Johnson LLC','Team Lead','MCA','513 Curry Cove Suite 956\nLake Marc, NC 15737','jasonfrost@example.com',9785548520),(52,'2013-06-10','Stafford-Davis','Software Engineer','BTech','92794 Sarah Streets Suite 760\nWest Brian, KY 17637','wendylucas@example.net',9429912439),(53,'1995-11-04','Barker, Sweeney and Clark','Software Engineer','MTech','19683 Griffin Squares Apt. 538\nDavidsonbury, OH 40731','cwilliamson@example.org',7474520156),(54,'1971-07-06','Snow, Livingston and Cantrell','Associate Engineer','BTech','36310 Matthews Hollow Suite 971\nLake Daltonport, NJ 92092','fieldsmegan@example.com',9344581969),(55,'1983-03-10','Brady Ltd','Associate Engineer','MSc','4453 Thomas Stravenue\nWilkinsmouth, NV 05381','larryberger@example.com',7633318347),(56,'1994-04-18','Johnson-Ramirez','Project Manager','BCA','36901 Cochran Parkway Apt. 346\nWest Jenny, AZ 05314','avillarreal@example.org',9131844877),(57,'1988-10-22','Grant-Hart','Project Manager','MSc','94723 Yang Plain\nRodriguezport, HI 70371','emilyerickson@example.com',8263430993),(58,'1989-05-26','Roman and Sons','Project Manager','MSc','USS Vazquez\nFPO AP 90301','nicole46@example.org',8050107111),(59,'2019-08-08','Mitchell, Ball and Kramer','Team Lead','BCA','USS Mercado\nFPO AE 71990','timothy34@example.com',9338313608),(60,'1973-07-18','Collins-Garcia','Software Engineer','BSc','27292 Galvan Estates Suite 501\nWarrenton, OR 03257','kchase@example.org',6005693234),(61,'2014-05-24','Kelley, Hensley and Smith','Project Manager','MSc','5763 Jones Ridge Apt. 019\nCalderonbury, FL 02549','lpatterson@example.net',6832336148),(62,'2006-02-15','Ward, Cox and Barnes','Project Manager','MTech','492 Holly Road Apt. 697\nSouth Amanda, AZ 71355','georgebailey@example.com',6853905013),(63,'2013-01-10','Reyes-Combs','Project Manager','MCA','2345 Nicole Neck\nStanleyton, WI 26274','janet93@example.net',9797990035),(64,'1971-07-23','Knight-Bryant','Software Engineer','BSc','13305 Fisher Radial Suite 474\nBrittneyfort, PA 22772','williamschristina@example.net',8647577430),(65,'2021-09-03','Jenkins, Williams and Campbell','Software Engineer','BCA','4294 Snyder Burgs\nReneeville, GU 70445','bwilliams@example.org',8529749531),(66,'2018-08-04','Garner, Chapman and Peterson','Associate Engineer','PHD','943 Hampton Union\nBrittanyburgh, VA 45629','collinssarah@example.net',9021156734),(67,'1979-01-24','King-Fisher','Project Manager','MSc','160 Pam Lakes\nJoshuamouth, VA 61722','rachel96@example.org',7584947355),(68,'2002-10-08','Hancock, Contreras and Shelton','Project Manager','MCA','Unit 4287 Box 5354\nDPO AA 42168','odiaz@example.net',9649145929),(69,'2012-09-29','May-Jones','Project Manager','MCA','PSC 6054, Box 2921\nAPO AP 56082','benjaminguerrero@example.com',7540652541),(70,'1979-04-23','Weber, Ward and Burns','Software Engineer','BSc','28670 Judith Ramp\nSouth Amyview, MN 67755','megan41@example.com',6499615242),(71,'2019-07-16','Lowery LLC','Associate Engineer','BTech','90039 Shawn Greens Suite 762\nDavisbury, PW 78421','andersonrebecca@example.net',6270989033),(72,'1996-01-25','Long and Sons','Project Manager','MSc','222 Erica Mill\nSouth John, WI 05059','haroldturner@example.com',7483506177),(73,'1995-02-03','Jennings-Smith','Project Manager','MTech','55479 Cynthia Mountains\nNorth Melissa, FM 63429','davidsanchez@example.com',7634582556),(74,'2003-12-15','Maynard-Lee','Project Manager','BCA','22129 Elizabeth Field Suite 657\nJennifermouth, PW 80984','christina96@example.net',9838955437),(75,'1993-04-17','Ross, Moore and Burgess','Associate Engineer','BSc','179 Candice Walk Apt. 020\nLake Lauren, IN 54704','kathrynevans@example.org',8894013976),(76,'1971-05-11','Ballard, Hunt and Jones','Software Engineer','MSc','36563 Joel Court\nKyliehaven, GA 05785','cwebb@example.org',8960909847),(77,'1998-02-02','Perez-Clark','Project Manager','MSc','191 Aaron Row Apt. 980\nLake Jenniferview, CA 35271','theresanoble@example.net',7423899653),(78,'1985-12-13','Alvarado-Long','Software Engineer','MCA','368 Vicki Flat Suite 853\nAshleyside, AL 23649','clarkchelsea@example.org',9211139440);
/*!40000 ALTER TABLE `testapp_bngjobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testapp_hydjobs`
--

DROP TABLE IF EXISTS `testapp_hydjobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testapp_hydjobs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `company` varchar(30) NOT NULL,
  `title` varchar(70) NOT NULL,
  `eligibility` varchar(30) NOT NULL,
  `address` longtext NOT NULL,
  `email` varchar(254) NOT NULL,
  `phonenumber` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testapp_hydjobs`
--

LOCK TABLES `testapp_hydjobs` WRITE;
/*!40000 ALTER TABLE `testapp_hydjobs` DISABLE KEYS */;
INSERT INTO `testapp_hydjobs` VALUES (1,'1999-07-08','Murphy LLC','Project Manager','PHD','USNV Garcia\nFPO AP 61946','trevinoashley@example.com',9054137536),(2,'1996-02-01','Peters-Bolton','Team Lead','BCA','325 Lopez Drives\nMarialand, LA 69574','lgonzales@example.com',7674302508),(3,'2018-01-07','Ramirez and Sons','Associate Engineer','MSc','6051 David Mall\nSouth Robertborough, CO 65316','qvillarreal@example.net',7864167541),(4,'1989-03-13','Hamilton Ltd','Associate Engineer','BSc','2493 Allen Hills Apt. 713\nEast Shannon, VA 36154','thomasscott@example.net',9501846732),(5,'1996-07-31','Zavala PLC','Project Manager','PHD','486 Benjamin Avenue\nAndrewborough, DE 48097','martinbrenda@example.org',7745357509),(6,'2000-10-20','Calhoun-Bauer','Project Manager','MCA','51375 Christopher Parks Apt. 324\nWest Frankburgh, DE 61752','schneiderkathryn@example.org',9551322663),(7,'1980-10-25','Grant, Lowery and Torres','Software Engineer','BTech','402 Samantha Center Suite 589\nCastillotown, UT 61976','lynnconner@example.net',9396853183),(8,'2020-01-18','Johnson, Jones and Miller','Team Lead','BTech','97149 Fuller Brooks Suite 164\nNorth Maryburgh, MD 39832','edward65@example.com',6289968618),(9,'1999-02-20','Savage, Bell and Mooney','Project Manager','PHD','50489 Carter Spur Suite 686\nPort Markshire, DE 65982','pspears@example.net',8227890110),(10,'1998-02-05','Sosa-Bishop','Project Manager','BCA','PSC 1294, Box 2989\nAPO AP 39553','slee@example.net',8669829378),(11,'1989-11-06','Parrish-Harris','Project Manager','MSc','2839 Smith Prairie\nSmithside, GU 27968','morrisonnancy@example.com',8794700800),(12,'2017-10-27','Rose-Johnson','Project Manager','BSc','1798 Andrews Prairie Apt. 302\nSmithmouth, MH 92997','parkernatasha@example.net',7231218798),(13,'2019-09-24','Morris-Chaney','Team Lead','PHD','9845 Pollard Dam\nNew Lauraport, NM 36845','michael23@example.org',8372037151),(14,'2001-01-28','Davis-Richardson','Associate Engineer','BCA','395 Hahn Forges\nWilsonfort, DC 74134','alyssamiller@example.org',7269007401),(15,'2004-11-06','Vasquez, Lopez and Dougherty','Associate Engineer','BTech','3500 Roberson Mews Apt. 686\nEast Jademouth, MD 97863','prichmond@example.com',6635189682),(16,'1980-12-19','Cruz Ltd','Software Engineer','BCA','0852 Bishop Port Apt. 582\nRowefort, FM 05776','bpatel@example.com',8095692078),(17,'1979-08-17','Hahn-Carr','Project Manager','BSc','33691 Bruce Pass\nSergioport, PW 73950','wgreen@example.net',9009378674),(18,'2017-03-16','Gilbert-Hill','Team Lead','BTech','405 Brandon Manor\nNorth Jakechester, NM 17980','trevor97@example.org',8769555986),(19,'1986-11-29','Shelton, Vasquez and Boyd','Associate Engineer','MSc','012 Fritz Track Suite 549\nDavidfort, SC 90248','qtorres@example.com',8368030795),(20,'1984-02-26','Flores, Williams and Nolan','Associate Engineer','BTech','USS Hunt\nFPO AP 02920','tiffany92@example.com',9801360406),(21,'2017-09-02','Brown Inc','Team Lead','BSc','81934 Tanya Place Apt. 398\nNorth Levi, PR 77451','csimpson@example.org',7522690773),(22,'1989-12-08','Blanchard PLC','Associate Engineer','MSc','2196 Duncan Square\nRobertberg, NH 06989','dianaedwards@example.net',8539013712),(23,'2015-08-12','Smith-Baker','Project Manager','MSc','71407 Kelly Haven\nNew Allenport, WV 80432','thomas28@example.org',6980317196),(24,'1992-08-31','Stephens, Huff and Miller','Project Manager','MCA','166 Coleman Pike Suite 839\nSouth Garystad, DE 17394','kflores@example.net',6264324362),(25,'1996-06-18','Perry-Meza','Project Manager','BSc','USS Brown\nFPO AP 26051','william18@example.net',9664241255),(26,'1998-11-22','Stokes LLC','Software Engineer','MTech','02534 Warren Rest\nNorth Natalieport, RI 46131','molinarenee@example.net',7116527234),(27,'2020-08-21','Kidd-Frey','Associate Engineer','MSc','3702 Porter Row Suite 804\nBrownborough, SC 69654','michele03@example.org',8414358542),(28,'1993-11-18','Jones-Spencer','Project Manager','BTech','27680 Sara Course\nWrightstad, TN 50447','schmidtchristian@example.com',6069947479),(29,'1975-08-07','Carrillo, Benton and Hodges','Team Lead','BTech','3181 Morris Ports\nGregorybury, MD 87849','fordjoseph@example.org',6545228845),(30,'1970-12-30','Kelly-Harmon','Software Engineer','MSc','450 Lynn Station\nSouth Kelly, CA 46857','travissanchez@example.com',7702279370),(31,'2017-02-20','Fitzgerald-Wood','Project Manager','PHD','266 Claudia Roads Suite 376\nLake Ross, DE 81346','rodney00@example.org',9961016155),(32,'1971-12-01','Clark, Cole and Acevedo','Associate Engineer','PHD','2697 Cole Lodge Apt. 762\nLake Teresaside, MO 67913','tylerbrooks@example.net',9443281586),(33,'2003-06-05','Simmons-Evans','Team Lead','MCA','43837 Peters Orchard\nNew Richard, AS 85513','vwatts@example.org',6039218769),(34,'2002-01-01','Cox-Williams','Software Engineer','BSc','8300 Jesse Haven\nEast Josephbury, MD 77620','wesley23@example.com',8583180761),(35,'2024-03-23','Davis, Novak and Garcia','Team Lead','MSc','63518 Lambert Loaf\nFullermouth, AK 33423','stephaniejordan@example.net',8647745563),(36,'1983-12-22','Dunn and Sons','Project Manager','PHD','85041 Stacy Estate Apt. 692\nWest April, AS 15711','ibrown@example.com',8763067471),(37,'1972-01-17','Malone-Thomas','Team Lead','BTech','071 Patterson Estates\nNorth Gloria, ID 80046','christinekennedy@example.com',8337772691),(38,'2018-01-11','Wilson Ltd','Software Engineer','BSc','22602 Clark Drives\nJulianview, AK 21062','loricain@example.net',8864046571),(39,'2004-04-19','Taylor, Powell and Jones','Team Lead','MSc','09247 Hamilton Passage\nNorth Steven, PR 84590','smyers@example.org',6315094405),(40,'1997-04-07','Smith, Russell and Hernandez','Associate Engineer','BTech','USNS Lee\nFPO AP 75787','kristen87@example.net',7766216071),(41,'1999-08-27','Frederick-James','Team Lead','MTech','557 Mclaughlin Route\nSouth Janetside, AL 34101','toddbailey@example.org',9059532379),(42,'2001-06-09','Patel-Hamilton','Software Engineer','MSc','545 Donald Expressway Apt. 570\nLake Sara, MS 69549','dale28@example.com',7907008435),(43,'1971-01-07','Fuller-Brown','Team Lead','BTech','1147 Logan Harbors Apt. 383\nEast Danielletown, TN 07955','gina66@example.com',8254419909),(44,'2024-01-10','Ross, Wright and Gillespie','Software Engineer','BSc','910 Coleman Heights Apt. 940\nPadillahaven, AS 76154','adriancarrillo@example.com',7575131887),(45,'2009-04-26','Bray, Bates and Roberts','Project Manager','BCA','0325 Pierce Heights\nIbarratown, PW 04518','damoncisneros@example.com',9255372514),(46,'2023-08-29','Maddox, Davis and Wong','Software Engineer','BSc','5193 Quinn Greens\nEast Triciatown, ID 72440','michaelgregory@example.net',9009267070),(47,'2003-04-06','Rangel, Dougherty and Gonzalez','Team Lead','MTech','6758 Blanchard Vista Apt. 930\nWest Julie, VI 72543','qadams@example.org',6557205073),(48,'2014-07-13','Mcguire and Sons','Associate Engineer','PHD','541 Anderson Canyon Suite 481\nPort Angelaside, MH 27739','riddlemichael@example.net',7739687813),(49,'1976-02-29','Salas, Friedman and Vang','Associate Engineer','MSc','61479 Shelby Plaza\nMichaelfurt, DE 80277','shawdaniel@example.org',9480401480),(50,'2001-11-23','Bailey LLC','Team Lead','BTech','129 Higgins Island\nLake Brendafort, TN 65229','holly20@example.net',8214606070),(51,'1975-04-27','Johnson LLC','Team Lead','MCA','513 Curry Cove Suite 956\nLake Marc, NC 15737','jasonfrost@example.com',9785548520),(52,'2013-06-10','Stafford-Davis','Software Engineer','BTech','92794 Sarah Streets Suite 760\nWest Brian, KY 17637','wendylucas@example.net',9429912439),(53,'1995-11-04','Barker, Sweeney and Clark','Software Engineer','MTech','19683 Griffin Squares Apt. 538\nDavidsonbury, OH 40731','cwilliamson@example.org',7474520156),(54,'1971-07-06','Snow, Livingston and Cantrell','Associate Engineer','BTech','36310 Matthews Hollow Suite 971\nLake Daltonport, NJ 92092','fieldsmegan@example.com',9344581969),(55,'1983-03-10','Brady Ltd','Associate Engineer','MSc','4453 Thomas Stravenue\nWilkinsmouth, NV 05381','larryberger@example.com',7633318347),(56,'1994-04-18','Johnson-Ramirez','Project Manager','BCA','36901 Cochran Parkway Apt. 346\nWest Jenny, AZ 05314','avillarreal@example.org',9131844877),(57,'1988-10-22','Grant-Hart','Project Manager','MSc','94723 Yang Plain\nRodriguezport, HI 70371','emilyerickson@example.com',8263430993),(58,'1989-05-26','Roman and Sons','Project Manager','MSc','USS Vazquez\nFPO AP 90301','nicole46@example.org',8050107111),(59,'2019-08-08','Mitchell, Ball and Kramer','Team Lead','BCA','USS Mercado\nFPO AE 71990','timothy34@example.com',9338313608),(60,'1973-07-18','Collins-Garcia','Software Engineer','BSc','27292 Galvan Estates Suite 501\nWarrenton, OR 03257','kchase@example.org',6005693234),(61,'2014-05-24','Kelley, Hensley and Smith','Project Manager','MSc','5763 Jones Ridge Apt. 019\nCalderonbury, FL 02549','lpatterson@example.net',6832336148),(62,'2006-02-15','Ward, Cox and Barnes','Project Manager','MTech','492 Holly Road Apt. 697\nSouth Amanda, AZ 71355','georgebailey@example.com',6853905013),(63,'2013-01-10','Reyes-Combs','Project Manager','MCA','2345 Nicole Neck\nStanleyton, WI 26274','janet93@example.net',9797990035),(64,'1971-07-23','Knight-Bryant','Software Engineer','BSc','13305 Fisher Radial Suite 474\nBrittneyfort, PA 22772','williamschristina@example.net',8647577430),(65,'2021-09-03','Jenkins, Williams and Campbell','Software Engineer','BCA','4294 Snyder Burgs\nReneeville, GU 70445','bwilliams@example.org',8529749531),(66,'2018-08-04','Garner, Chapman and Peterson','Associate Engineer','PHD','943 Hampton Union\nBrittanyburgh, VA 45629','collinssarah@example.net',9021156734),(67,'1979-01-24','King-Fisher','Project Manager','MSc','160 Pam Lakes\nJoshuamouth, VA 61722','rachel96@example.org',7584947355),(68,'2002-10-08','Hancock, Contreras and Shelton','Project Manager','MCA','Unit 4287 Box 5354\nDPO AA 42168','odiaz@example.net',9649145929),(69,'2012-09-29','May-Jones','Project Manager','MCA','PSC 6054, Box 2921\nAPO AP 56082','benjaminguerrero@example.com',7540652541),(70,'1979-04-23','Weber, Ward and Burns','Software Engineer','BSc','28670 Judith Ramp\nSouth Amyview, MN 67755','megan41@example.com',6499615242),(71,'2019-07-16','Lowery LLC','Associate Engineer','BTech','90039 Shawn Greens Suite 762\nDavisbury, PW 78421','andersonrebecca@example.net',6270989033),(72,'1996-01-25','Long and Sons','Project Manager','MSc','222 Erica Mill\nSouth John, WI 05059','haroldturner@example.com',7483506177),(73,'1995-02-03','Jennings-Smith','Project Manager','MTech','55479 Cynthia Mountains\nNorth Melissa, FM 63429','davidsanchez@example.com',7634582556),(74,'2003-12-15','Maynard-Lee','Project Manager','BCA','22129 Elizabeth Field Suite 657\nJennifermouth, PW 80984','christina96@example.net',9838955437),(75,'1993-04-17','Ross, Moore and Burgess','Associate Engineer','BSc','179 Candice Walk Apt. 020\nLake Lauren, IN 54704','kathrynevans@example.org',8894013976),(76,'1971-05-11','Ballard, Hunt and Jones','Software Engineer','MSc','36563 Joel Court\nKyliehaven, GA 05785','cwebb@example.org',8960909847),(77,'1998-02-02','Perez-Clark','Project Manager','MSc','191 Aaron Row Apt. 980\nLake Jenniferview, CA 35271','theresanoble@example.net',7423899653),(78,'1985-12-13','Alvarado-Long','Software Engineer','MCA','368 Vicki Flat Suite 853\nAshleyside, AL 23649','clarkchelsea@example.org',9211139440);
/*!40000 ALTER TABLE `testapp_hydjobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testapp_punejobs`
--

DROP TABLE IF EXISTS `testapp_punejobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testapp_punejobs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `company` varchar(30) NOT NULL,
  `title` varchar(70) NOT NULL,
  `eligibility` varchar(30) NOT NULL,
  `address` longtext NOT NULL,
  `email` varchar(254) NOT NULL,
  `phonenumber` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testapp_punejobs`
--

LOCK TABLES `testapp_punejobs` WRITE;
/*!40000 ALTER TABLE `testapp_punejobs` DISABLE KEYS */;
INSERT INTO `testapp_punejobs` VALUES (1,'1999-07-08','Murphy LLC','Project Manager','PHD','USNV Garcia\nFPO AP 61946','trevinoashley@example.com',9054137536),(2,'1996-02-01','Peters-Bolton','Team Lead','BCA','325 Lopez Drives\nMarialand, LA 69574','lgonzales@example.com',7674302508),(3,'2018-01-07','Ramirez and Sons','Associate Engineer','MSc','6051 David Mall\nSouth Robertborough, CO 65316','qvillarreal@example.net',7864167541),(4,'1989-03-13','Hamilton Ltd','Associate Engineer','BSc','2493 Allen Hills Apt. 713\nEast Shannon, VA 36154','thomasscott@example.net',9501846732),(5,'1996-07-31','Zavala PLC','Project Manager','PHD','486 Benjamin Avenue\nAndrewborough, DE 48097','martinbrenda@example.org',7745357509),(6,'2000-10-20','Calhoun-Bauer','Project Manager','MCA','51375 Christopher Parks Apt. 324\nWest Frankburgh, DE 61752','schneiderkathryn@example.org',9551322663),(7,'1980-10-25','Grant, Lowery and Torres','Software Engineer','BTech','402 Samantha Center Suite 589\nCastillotown, UT 61976','lynnconner@example.net',9396853183),(8,'2020-01-18','Johnson, Jones and Miller','Team Lead','BTech','97149 Fuller Brooks Suite 164\nNorth Maryburgh, MD 39832','edward65@example.com',6289968618),(9,'1999-02-20','Savage, Bell and Mooney','Project Manager','PHD','50489 Carter Spur Suite 686\nPort Markshire, DE 65982','pspears@example.net',8227890110),(10,'1998-02-05','Sosa-Bishop','Project Manager','BCA','PSC 1294, Box 2989\nAPO AP 39553','slee@example.net',8669829378),(11,'1989-11-06','Parrish-Harris','Project Manager','MSc','2839 Smith Prairie\nSmithside, GU 27968','morrisonnancy@example.com',8794700800),(12,'2017-10-27','Rose-Johnson','Project Manager','BSc','1798 Andrews Prairie Apt. 302\nSmithmouth, MH 92997','parkernatasha@example.net',7231218798),(13,'2019-09-24','Morris-Chaney','Team Lead','PHD','9845 Pollard Dam\nNew Lauraport, NM 36845','michael23@example.org',8372037151),(14,'2001-01-28','Davis-Richardson','Associate Engineer','BCA','395 Hahn Forges\nWilsonfort, DC 74134','alyssamiller@example.org',7269007401),(15,'2004-11-06','Vasquez, Lopez and Dougherty','Associate Engineer','BTech','3500 Roberson Mews Apt. 686\nEast Jademouth, MD 97863','prichmond@example.com',6635189682),(16,'1980-12-19','Cruz Ltd','Software Engineer','BCA','0852 Bishop Port Apt. 582\nRowefort, FM 05776','bpatel@example.com',8095692078),(17,'1979-08-17','Hahn-Carr','Project Manager','BSc','33691 Bruce Pass\nSergioport, PW 73950','wgreen@example.net',9009378674),(18,'2017-03-16','Gilbert-Hill','Team Lead','BTech','405 Brandon Manor\nNorth Jakechester, NM 17980','trevor97@example.org',8769555986),(19,'1986-11-29','Shelton, Vasquez and Boyd','Associate Engineer','MSc','012 Fritz Track Suite 549\nDavidfort, SC 90248','qtorres@example.com',8368030795),(20,'1984-02-26','Flores, Williams and Nolan','Associate Engineer','BTech','USS Hunt\nFPO AP 02920','tiffany92@example.com',9801360406),(21,'2017-09-02','Brown Inc','Team Lead','BSc','81934 Tanya Place Apt. 398\nNorth Levi, PR 77451','csimpson@example.org',7522690773),(22,'1989-12-08','Blanchard PLC','Associate Engineer','MSc','2196 Duncan Square\nRobertberg, NH 06989','dianaedwards@example.net',8539013712),(23,'2015-08-12','Smith-Baker','Project Manager','MSc','71407 Kelly Haven\nNew Allenport, WV 80432','thomas28@example.org',6980317196),(24,'1992-08-31','Stephens, Huff and Miller','Project Manager','MCA','166 Coleman Pike Suite 839\nSouth Garystad, DE 17394','kflores@example.net',6264324362),(25,'1996-06-18','Perry-Meza','Project Manager','BSc','USS Brown\nFPO AP 26051','william18@example.net',9664241255),(26,'1998-11-22','Stokes LLC','Software Engineer','MTech','02534 Warren Rest\nNorth Natalieport, RI 46131','molinarenee@example.net',7116527234),(27,'2020-08-21','Kidd-Frey','Associate Engineer','MSc','3702 Porter Row Suite 804\nBrownborough, SC 69654','michele03@example.org',8414358542),(28,'1993-11-18','Jones-Spencer','Project Manager','BTech','27680 Sara Course\nWrightstad, TN 50447','schmidtchristian@example.com',6069947479),(29,'1975-08-07','Carrillo, Benton and Hodges','Team Lead','BTech','3181 Morris Ports\nGregorybury, MD 87849','fordjoseph@example.org',6545228845),(30,'1970-12-30','Kelly-Harmon','Software Engineer','MSc','450 Lynn Station\nSouth Kelly, CA 46857','travissanchez@example.com',7702279370),(31,'2017-02-20','Fitzgerald-Wood','Project Manager','PHD','266 Claudia Roads Suite 376\nLake Ross, DE 81346','rodney00@example.org',9961016155),(32,'1971-12-01','Clark, Cole and Acevedo','Associate Engineer','PHD','2697 Cole Lodge Apt. 762\nLake Teresaside, MO 67913','tylerbrooks@example.net',9443281586),(33,'2003-06-05','Simmons-Evans','Team Lead','MCA','43837 Peters Orchard\nNew Richard, AS 85513','vwatts@example.org',6039218769),(34,'2002-01-01','Cox-Williams','Software Engineer','BSc','8300 Jesse Haven\nEast Josephbury, MD 77620','wesley23@example.com',8583180761),(35,'2024-03-23','Davis, Novak and Garcia','Team Lead','MSc','63518 Lambert Loaf\nFullermouth, AK 33423','stephaniejordan@example.net',8647745563),(36,'1983-12-22','Dunn and Sons','Project Manager','PHD','85041 Stacy Estate Apt. 692\nWest April, AS 15711','ibrown@example.com',8763067471),(37,'1972-01-17','Malone-Thomas','Team Lead','BTech','071 Patterson Estates\nNorth Gloria, ID 80046','christinekennedy@example.com',8337772691),(38,'2018-01-11','Wilson Ltd','Software Engineer','BSc','22602 Clark Drives\nJulianview, AK 21062','loricain@example.net',8864046571),(39,'2004-04-19','Taylor, Powell and Jones','Team Lead','MSc','09247 Hamilton Passage\nNorth Steven, PR 84590','smyers@example.org',6315094405),(40,'1997-04-07','Smith, Russell and Hernandez','Associate Engineer','BTech','USNS Lee\nFPO AP 75787','kristen87@example.net',7766216071),(41,'1999-08-27','Frederick-James','Team Lead','MTech','557 Mclaughlin Route\nSouth Janetside, AL 34101','toddbailey@example.org',9059532379),(42,'2001-06-09','Patel-Hamilton','Software Engineer','MSc','545 Donald Expressway Apt. 570\nLake Sara, MS 69549','dale28@example.com',7907008435),(43,'1971-01-07','Fuller-Brown','Team Lead','BTech','1147 Logan Harbors Apt. 383\nEast Danielletown, TN 07955','gina66@example.com',8254419909),(44,'2024-01-10','Ross, Wright and Gillespie','Software Engineer','BSc','910 Coleman Heights Apt. 940\nPadillahaven, AS 76154','adriancarrillo@example.com',7575131887),(45,'2009-04-26','Bray, Bates and Roberts','Project Manager','BCA','0325 Pierce Heights\nIbarratown, PW 04518','damoncisneros@example.com',9255372514),(46,'2023-08-29','Maddox, Davis and Wong','Software Engineer','BSc','5193 Quinn Greens\nEast Triciatown, ID 72440','michaelgregory@example.net',9009267070),(47,'2003-04-06','Rangel, Dougherty and Gonzalez','Team Lead','MTech','6758 Blanchard Vista Apt. 930\nWest Julie, VI 72543','qadams@example.org',6557205073),(48,'2014-07-13','Mcguire and Sons','Associate Engineer','PHD','541 Anderson Canyon Suite 481\nPort Angelaside, MH 27739','riddlemichael@example.net',7739687813),(49,'1976-02-29','Salas, Friedman and Vang','Associate Engineer','MSc','61479 Shelby Plaza\nMichaelfurt, DE 80277','shawdaniel@example.org',9480401480),(50,'2001-11-23','Bailey LLC','Team Lead','BTech','129 Higgins Island\nLake Brendafort, TN 65229','holly20@example.net',8214606070),(51,'1975-04-27','Johnson LLC','Team Lead','MCA','513 Curry Cove Suite 956\nLake Marc, NC 15737','jasonfrost@example.com',9785548520),(52,'2013-06-10','Stafford-Davis','Software Engineer','BTech','92794 Sarah Streets Suite 760\nWest Brian, KY 17637','wendylucas@example.net',9429912439),(53,'1995-11-04','Barker, Sweeney and Clark','Software Engineer','MTech','19683 Griffin Squares Apt. 538\nDavidsonbury, OH 40731','cwilliamson@example.org',7474520156),(54,'1971-07-06','Snow, Livingston and Cantrell','Associate Engineer','BTech','36310 Matthews Hollow Suite 971\nLake Daltonport, NJ 92092','fieldsmegan@example.com',9344581969),(55,'1983-03-10','Brady Ltd','Associate Engineer','MSc','4453 Thomas Stravenue\nWilkinsmouth, NV 05381','larryberger@example.com',7633318347),(56,'1994-04-18','Johnson-Ramirez','Project Manager','BCA','36901 Cochran Parkway Apt. 346\nWest Jenny, AZ 05314','avillarreal@example.org',9131844877),(57,'1988-10-22','Grant-Hart','Project Manager','MSc','94723 Yang Plain\nRodriguezport, HI 70371','emilyerickson@example.com',8263430993),(58,'1989-05-26','Roman and Sons','Project Manager','MSc','USS Vazquez\nFPO AP 90301','nicole46@example.org',8050107111),(59,'2019-08-08','Mitchell, Ball and Kramer','Team Lead','BCA','USS Mercado\nFPO AE 71990','timothy34@example.com',9338313608),(60,'1973-07-18','Collins-Garcia','Software Engineer','BSc','27292 Galvan Estates Suite 501\nWarrenton, OR 03257','kchase@example.org',6005693234),(61,'2014-05-24','Kelley, Hensley and Smith','Project Manager','MSc','5763 Jones Ridge Apt. 019\nCalderonbury, FL 02549','lpatterson@example.net',6832336148),(62,'2006-02-15','Ward, Cox and Barnes','Project Manager','MTech','492 Holly Road Apt. 697\nSouth Amanda, AZ 71355','georgebailey@example.com',6853905013),(63,'2013-01-10','Reyes-Combs','Project Manager','MCA','2345 Nicole Neck\nStanleyton, WI 26274','janet93@example.net',9797990035),(64,'1971-07-23','Knight-Bryant','Software Engineer','BSc','13305 Fisher Radial Suite 474\nBrittneyfort, PA 22772','williamschristina@example.net',8647577430),(65,'2021-09-03','Jenkins, Williams and Campbell','Software Engineer','BCA','4294 Snyder Burgs\nReneeville, GU 70445','bwilliams@example.org',8529749531),(66,'2018-08-04','Garner, Chapman and Peterson','Associate Engineer','PHD','943 Hampton Union\nBrittanyburgh, VA 45629','collinssarah@example.net',9021156734),(67,'1979-01-24','King-Fisher','Project Manager','MSc','160 Pam Lakes\nJoshuamouth, VA 61722','rachel96@example.org',7584947355),(68,'2002-10-08','Hancock, Contreras and Shelton','Project Manager','MCA','Unit 4287 Box 5354\nDPO AA 42168','odiaz@example.net',9649145929),(69,'2012-09-29','May-Jones','Project Manager','MCA','PSC 6054, Box 2921\nAPO AP 56082','benjaminguerrero@example.com',7540652541),(70,'1979-04-23','Weber, Ward and Burns','Software Engineer','BSc','28670 Judith Ramp\nSouth Amyview, MN 67755','megan41@example.com',6499615242),(71,'2019-07-16','Lowery LLC','Associate Engineer','BTech','90039 Shawn Greens Suite 762\nDavisbury, PW 78421','andersonrebecca@example.net',6270989033),(72,'1996-01-25','Long and Sons','Project Manager','MSc','222 Erica Mill\nSouth John, WI 05059','haroldturner@example.com',7483506177),(73,'1995-02-03','Jennings-Smith','Project Manager','MTech','55479 Cynthia Mountains\nNorth Melissa, FM 63429','davidsanchez@example.com',7634582556),(74,'2003-12-15','Maynard-Lee','Project Manager','BCA','22129 Elizabeth Field Suite 657\nJennifermouth, PW 80984','christina96@example.net',9838955437),(75,'1993-04-17','Ross, Moore and Burgess','Associate Engineer','BSc','179 Candice Walk Apt. 020\nLake Lauren, IN 54704','kathrynevans@example.org',8894013976),(76,'1971-05-11','Ballard, Hunt and Jones','Software Engineer','MSc','36563 Joel Court\nKyliehaven, GA 05785','cwebb@example.org',8960909847),(77,'1998-02-02','Perez-Clark','Project Manager','MSc','191 Aaron Row Apt. 980\nLake Jenniferview, CA 35271','theresanoble@example.net',7423899653),(78,'1985-12-13','Alvarado-Long','Software Engineer','MCA','368 Vicki Flat Suite 853\nAshleyside, AL 23649','clarkchelsea@example.org',9211139440);
/*!40000 ALTER TABLE `testapp_punejobs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-07 17:04:55
