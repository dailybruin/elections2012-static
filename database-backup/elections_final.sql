-- MySQL dump 10.13  Distrib 5.1.66, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: dbelections
-- ------------------------------------------------------
-- Server version	5.1.66-0ubuntu0.10.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_message`
--

DROP TABLE IF EXISTS `auth_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_403f60f` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_message`
--

LOCK TABLES `auth_message` WRITE;
/*!40000 ALTER TABLE `auth_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add message',4,'add_message'),(11,'Can change message',4,'change_message'),(12,'Can delete message',4,'delete_message'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add site',7,'add_site'),(20,'Can change site',7,'change_site'),(21,'Can delete site',7,'delete_site'),(22,'Can add log entry',8,'add_logentry'),(23,'Can change log entry',8,'change_logentry'),(24,'Can delete log entry',8,'delete_logentry'),(25,'Can add story',9,'add_story'),(26,'Can change story',9,'change_story'),(27,'Can delete story',9,'delete_story');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'dbonline','','','online@media.ucla.edu','sha1$08bc9$7ec05df505c8c805cdd5a7d27a2b9b10dc756aa6',1,1,1,'2013-06-08 04:07:25','2012-10-14 23:13:57'),(2,'news','','','','sha1$f1f7e$ade3a16380df704619dc5f87cae656660e049b6a',1,1,0,'2012-10-29 17:10:02','2012-10-29 17:09:35');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (6,2,27),(5,2,26),(4,2,25);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_403f60f` (`user_id`),
  KEY `django_admin_log_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2012-10-14 23:50:25',1,3,'1','dbonline',2,'Changed user_permissions.'),(2,'2012-10-14 23:50:43',1,3,'1','dbonline',2,'Changed user_permissions.'),(3,'2012-10-15 00:12:40',1,9,'1','test',3,''),(4,'2012-10-15 00:17:43',1,9,'1','test',1,''),(5,'2012-10-15 00:18:46',1,9,'1','test',2,'Changed opinion.'),(6,'2012-10-15 00:19:37',1,9,'1','test',2,'No fields changed.'),(7,'2012-10-15 00:19:48',1,9,'2','test2',1,''),(8,'2012-10-15 00:20:04',1,9,'3','feat',1,''),(9,'2012-10-29 16:54:26',1,9,'1','newsstory',1,''),(10,'2012-10-29 16:54:41',1,9,'2','opinionstory',1,''),(11,'2012-10-29 16:54:58',1,9,'3','multimediastory',1,''),(12,'2012-10-29 16:55:10',1,9,'4','featurestory',1,''),(13,'2012-10-29 17:00:18',1,9,'5','asdf2',1,''),(14,'2012-10-29 17:01:15',1,9,'5','asdf2',2,'Changed featured.'),(15,'2012-10-29 17:09:35',1,3,'2','news',1,''),(16,'2012-10-29 17:09:56',1,3,'2','news',2,'Changed is_staff and user_permissions.'),(17,'2012-10-29 17:10:10',2,9,'5','asdf2',2,'Changed teaser.'),(18,'2012-10-29 17:10:22',2,9,'6','asdf',1,''),(19,'2012-10-29 17:22:54',1,9,'6','asdf',2,'Changed featured.'),(20,'2012-11-02 05:42:28',1,9,'6','asdf',3,''),(21,'2012-11-02 05:42:28',1,9,'5','asdf2',3,''),(22,'2012-11-02 05:42:28',1,9,'4','featurestory',3,''),(23,'2012-11-02 05:42:28',1,9,'3','multimediastory',3,''),(24,'2012-11-02 05:42:28',1,9,'2','opinionstory',3,''),(25,'2012-11-02 05:42:28',1,9,'1','newsstory',3,''),(26,'2012-11-02 05:46:05',1,9,'7','UC faces possible 20.3 percent tuition increase if Gov. Brown\'s tax initiative fails',1,''),(27,'2012-11-02 05:50:07',1,9,'8','Eitan Arom: Choosing organic or genetically modified foods is up to the consumer',1,''),(28,'2012-11-02 05:52:21',1,9,'9','Gov. Jerry Brown Prop 30 Rally Highlights',1,''),(29,'2012-11-02 05:53:31',1,9,'10','UC Board of Regents endorses proposed tax initiative, freezes tuition rates ',1,''),(30,'2012-11-02 06:00:10',1,9,'10','UC Board of Regents endorses proposed tax initiative, freezes tuition rates ',2,'Changed featured.'),(31,'2012-11-02 06:01:12',1,9,'11','UC Regents voice support for Gov. Brown’s tax measure at board meeting',1,''),(32,'2012-11-02 06:02:14',1,9,'12','Republican presidential candidate Mitt Romney chooses Paul Ryan as running mate',1,''),(33,'2012-11-02 06:02:51',1,9,'13','Obama emphasizes higher education at Ohio rally, criticizes Romney\'s plans',1,''),(34,'2012-11-02 06:03:22',1,9,'14','Romney officially nominated as GOP presidential candidate',1,''),(35,'2012-11-02 06:04:03',1,9,'15','New website allows California residents to register to vote electronically',1,''),(36,'2012-11-02 06:04:38',1,9,'16','Gov. Jerry Brown signs bill enabling same-day voter registration for Californians',1,''),(37,'2012-11-02 06:05:10',1,9,'17','Gov. Jerry Brown signs same-day voter registration bill',1,''),(38,'2012-11-02 06:06:00',1,9,'18','Percent of independent voters in California hits all-time high with change in primaries',1,''),(39,'2012-11-02 15:04:01',1,9,'19','UCLA students gather for viewings of first Obama, Romney debate',1,''),(40,'2012-11-02 15:04:39',1,9,'20','Biden, Ryan cover foreign and domestic policy in vice presidential debate',1,''),(41,'2012-11-02 15:05:21',1,9,'21','Gov. Jerry Brown speaking at Prop. 30 rally in Bruin Plaza Tuesday',1,''),(42,'2012-11-02 15:06:30',1,9,'22','As a part of UC Day of Action, Gov. Jerry Brown will speak at UCLA to promote Proposition 30',1,''),(43,'2012-11-02 15:07:22',1,9,'23','Gov. Brown speaks at Prop. 30 rally in Bruin Plaza',1,''),(44,'2012-11-02 15:07:47',1,9,'24','Second debate focuses on new topics, lacks new insights',1,''),(45,'2012-11-02 15:08:40',1,9,'25','Brown talks education during UC newspaper interview',1,''),(46,'2012-11-02 15:09:28',1,9,'26','Gov. Jerry Brown speaks at Proposition 30 rally in Bruin Plaza',1,''),(47,'2012-11-02 15:09:56',1,9,'27','USAC passes resolution to endorse Prop. 30',1,''),(48,'2012-11-02 15:10:35',1,9,'28','UC financial future depends on passage of Proposition 30',1,''),(49,'2012-11-02 15:11:18',1,9,'29','USAC encourages students to register to vote',1,''),(50,'2012-11-02 15:11:41',1,9,'30','Last presidential debate focuses on foreign policy',1,''),(51,'2012-11-02 15:12:22',1,9,'31','Taxpayers association files lawsuit against CSU Monterey',1,''),(52,'2012-11-02 15:12:58',1,9,'32','Voting by mail provides alternative for students',1,''),(53,'2012-11-02 15:13:33',1,9,'33','Poll finds Prop. 30 awareness low among UCLA students',1,''),(54,'2012-11-02 15:15:18',1,9,'34','Live Google Plus Hangout: The 2012 California ballot (video)',1,''),(55,'2012-11-02 15:15:43',1,9,'35','Independents to play important role in election',1,''),(56,'2012-11-02 15:16:23',1,9,'36','Poll finds gender gap in Obama support',1,''),(57,'2012-11-02 15:16:57',1,9,'37','Survey finds Latino students more likely to support Obama',1,''),(58,'2012-11-02 15:17:31',1,9,'34','Live Google Plus Hangout: The 2012 California ballot (video)',2,'Changed featured.'),(59,'2012-11-02 15:32:39',1,9,'38','Ryland Lu: Voting laws should work to encourage, educate constituents',1,''),(60,'2012-11-02 15:33:16',1,9,'39','Ramsey Ugarte: Including Libertarian candidate Gary Johnson in the debates would broaden the discourse',1,''),(61,'2012-11-02 15:33:41',1,9,'40','Maia Ferdman: Students must actively seek truth in debate',1,''),(62,'2012-11-02 15:34:04',1,9,'41','Eitan Arom: Students can upset media’s pull over politics with technology',1,''),(63,'2012-11-02 15:34:30',1,9,'42','Ramsey Ugarte: Spending problems limit effectivness of tax initatives',1,''),(64,'2012-11-02 15:35:03',1,9,'43','Ryland Lu: Professors should keep politics out of the classroom',1,''),(65,'2012-11-02 15:35:38',1,9,'44','Alexandra Tashman: Programs need to encourage political careers for women',1,''),(66,'2012-11-02 15:36:22',1,9,'45','UCLA students lack balance in political perspectives',1,''),(67,'2012-11-02 15:38:33',1,9,'46','Editorial Board Endorsements: Elections 2012',1,''),(68,'2012-11-02 15:39:04',1,9,'44','Alexandra Tashman: Programs need to encourage political careers for women',2,'Changed story_type.'),(69,'2012-11-02 15:39:08',1,9,'43','Ryland Lu: Professors should keep politics out of the classroom',2,'Changed story_type.'),(70,'2012-11-02 15:39:13',1,9,'42','Ramsey Ugarte: Spending problems limit effectivness of tax initatives',2,'Changed story_type.'),(71,'2012-11-02 15:39:16',1,9,'41','Eitan Arom: Students can upset media’s pull over politics with technology',2,'Changed story_type.'),(72,'2012-11-02 15:39:20',1,9,'40','Maia Ferdman: Students must actively seek truth in debate',2,'Changed story_type.'),(73,'2012-11-02 15:39:23',1,9,'39','Ramsey Ugarte: Including Libertarian candidate Gary Johnson in the debates would broaden the discourse',2,'Changed story_type.'),(74,'2012-11-02 15:39:26',1,9,'38','Ryland Lu: Voting laws should work to encourage, educate constituents',2,'Changed story_type.'),(75,'2012-11-02 15:41:08',1,9,'37','Survey finds Latino students more likely to support Obama',2,'Changed large_image.'),(76,'2012-11-02 15:41:12',1,9,'37','Survey finds Latino students more likely to support Obama',2,'Changed featured and large_image.'),(77,'2012-11-02 15:41:24',1,9,'34','Live Google Plus Hangout: The 2012 California ballot (video)',2,'Changed featured.'),(78,'2012-11-06 08:52:09',1,9,'47','Survey shows students lack political involvement on campus',1,''),(79,'2012-11-07 05:58:19',1,9,'47','Survey shows students lack political involvement on campus',3,''),(80,'2012-11-07 05:58:31',1,9,'37','Survey finds Latino students more likely to support Obama',3,''),(81,'2012-11-07 05:58:42',1,9,'36','Poll finds gender gap in Obama support',3,''),(82,'2012-11-07 05:58:54',1,9,'33','Poll finds Prop. 30 awareness low among UCLA students',3,''),(83,'2012-11-07 05:59:11',1,9,'46','Editorial Board Endorsements: Elections 2012',2,'Changed featured.'),(84,'2012-11-07 06:00:53',1,9,'48','featured story--ignore',1,''),(85,'2012-11-07 06:00:57',1,9,'46','Editorial Board Endorsements: Elections 2012',2,'Changed featured.'),(86,'2012-11-07 06:01:51',1,9,'34','Live Google Plus Hangout: The 2012 California ballot (video)',3,''),(87,'2012-11-07 06:06:28',1,9,'49','Battleground states help secure Obama re-election',1,''),(88,'2012-11-07 06:06:56',1,9,'50','First-time voters at UCLA',1,''),(89,'2012-11-07 06:07:21',1,9,'51','UCLA undergrads lean left, exit poll shows',1,''),(90,'2012-11-07 06:07:40',1,9,'52','List mix-up causes students to cast provisional ballots in LA County',1,''),(91,'2012-11-07 06:08:04',1,9,'53','Prop. 30 fate still undecided',1,''),(92,'2012-11-07 06:08:28',1,9,'54','President Barack Obama edges out Republican candidate Mitt Romney for second term',1,''),(93,'2012-11-07 06:09:23',1,9,'55','Editorial: UC leadership should not have relied on Prop. 30',1,''),(94,'2012-11-07 06:09:42',1,9,'56','Editorial: Public education needs to be viewed as a whole',1,''),(95,'2012-11-07 06:20:25',1,9,'49','Battleground states help secure Obama re-election',3,'');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'message','auth','message'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'site','sites','site'),(8,'log entry','admin','logentry'),(9,'story','elections12','story');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_3da3d3d8` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('4450b4119e6c6df6e590ef0015ea56b5','YzIwNDI2NmVlNmM2YmVkYTUwM2RhMzJkOTlkZGMzY2Q4MGJjZDliNzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-10-28 23:33:12'),('80aa6fcc29759343242d699466ace5f5','YzIwNDI2NmVlNmM2YmVkYTUwM2RhMzJkOTlkZGMzY2Q4MGJjZDliNzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-11-12 17:30:22'),('15407218c31d970a12031876b668aeef','YWMxYWRlMDAwNWFhYjM1YWI5NGRiZDc5ZTYyZmRjN2YzNWNlYzQ0OTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-10-28 23:34:06'),('d633da1017492b5d50402d56e38b116a','YWMxYWRlMDAwNWFhYjM1YWI5NGRiZDc5ZTYyZmRjN2YzNWNlYzQ0OTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-10-28 23:48:05'),('0082b6550d0c74f0f6b931620f73183b','YWMxYWRlMDAwNWFhYjM1YWI5NGRiZDc5ZTYyZmRjN2YzNWNlYzQ0OTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-10-28 23:53:28'),('e2e77212f087269f46c501a73687ee6c','YWMxYWRlMDAwNWFhYjM1YWI5NGRiZDc5ZTYyZmRjN2YzNWNlYzQ0OTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-11-12 16:34:07'),('00804693c6eb45e46ca372a2662a7423','YTI2YTA0ZTM0NGM1ZmQ0YTQ4ZGFhZTc4YTBmYzE4YTBhNzc4MDM0MDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==\n','2012-11-12 17:10:02'),('c6412443c3b7fe3b8cbcdc57c88a0224','YzIwNDI2NmVlNmM2YmVkYTUwM2RhMzJkOTlkZGMzY2Q4MGJjZDliNzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2013-11-25 18:35:34'),('207123e37b26a9f600c76b77f174105f','YWMxYWRlMDAwNWFhYjM1YWI5NGRiZDc5ZTYyZmRjN2YzNWNlYzQ0OTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-06-22 04:07:25');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elections12_story`
--

DROP TABLE IF EXISTS `elections12_story`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elections12_story` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `headline` varchar(900) NOT NULL,
  `teaser` longtext NOT NULL,
  `pub_date` datetime NOT NULL,
  `story_type` varchar(2) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `small_image` varchar(100) DEFAULT NULL,
  `large_image` varchar(100) DEFAULT NULL,
  `dblink` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elections12_story`
--

LOCK TABLES `elections12_story` WRITE;
/*!40000 ALTER TABLE `elections12_story` DISABLE KEYS */;
INSERT INTO `elections12_story` VALUES (7,'UC faces possible 20.3 percent tuition increase if Gov. Brown\'s tax initiative fails','The UC Board of Regents will consider the possibility of a 20.3 percent midyear tuition increase in the event Gov. Jerry Brown’s proposed tax initiative fails in November, according to documents released for the regents’ bimonthly board meeting next week.','2012-07-10 00:00:00','ns',0,'','','http://www.dailybruin.com/blog/timestamp/2012/07/uc-faces-possible-20-3-percent-tuition-increase-if-gov-browns-tax-initiative-fails'),(8,'Eitan Arom: Choosing organic or genetically modified foods is up to the consumer','On what will presumably be a sunny Southern California Tuesday this November, many UCLA students will march dutifully to cast their votes at the ballot box.\r\n','2012-09-28 03:48:00','op',0,'electionimg/50663_prop_37f.jpg','','http://www.dailybruin.com/article/2012/09/eitan-arom-_choosing-organic-or-genetically-modified-foods-is-up-to-the-consumer_'),(9,'Gov. Jerry Brown Prop 30 Rally Highlights','Gov. Jerry Brown made a brief appearance on the UCLA campus Oct. 16, 2012 to promote Proposition 30, a tax measure on the November ballot that is tied to the University of California’s funding. Watch highlights and student reactions above.','2012-10-17 00:00:00','mm',0,'electionimg/video-rally.jpg','','http://www.dailybruin.com/multimedia/51094'),(10,'UC Board of Regents endorses proposed tax initiative, freezes tuition rates ','The UC Board of Regents voted Wednesday to accept Gov. Jerry Brown’s UC budget proposal, keeping tuition stable for the 2012-13 school year and endorsing Brown’s tax initiative at its bimonthly meeting.','2012-07-18 18:44:54','ns',0,'electionimg/49980_web.ns.7.18.regents.picvf.jpeg','','http://www.dailybruin.com/article/2012/07/uc-board-of-regents-endorses-proposed-tax-initiative-freezes-tuition-rates'),(11,'UC Regents voice support for Gov. Brown’s tax measure at board meeting','SAN FRANCISCO — The UC Board of Regents discussed possible solutions to alleviate the University of California’s financial problems at its bimonthly meeting Wednesday, in the face of what is projected to be the university’s largest-ever budget gap in 2016 and an upcoming school year that stands on shaky funding.','2012-07-23 03:12:00','ns',0,'electionimg/49998_web.ns.7.23.regents.picaf.jpeg','','http://www.dailybruin.com/article/2012/07/uc-regents-voice-support-for-gov-browns-tax-measure-at-board-meeting'),(12,'Republican presidential candidate Mitt Romney chooses Paul Ryan as running mate','Republican presidential candidate Mitt Romney announced his running mate today.','2012-08-11 20:50:00','ns',0,'electionimg/50149_romneyryan2f.jpeg','','http://www.dailybruin.com/blog/timestamp/2012/08/republican-presidential-candidate-mitt-romney-chooses-paul-ryan-as-running-mate'),(13,'Obama emphasizes higher education at Ohio rally, criticizes Romney\'s plans','Addressing a crowd of more than 3,000 people – including university students – President Barack Obama was on the campaign trail at Capital University in the battleground state of Ohio today to advocate his higher education plans and highlight contrasts between him and likely Republican nominee Mitt Romney.','2012-08-21 00:00:00','ns',0,'','','http://www.dailybruin.com/blog/timestamp/2012/08/obama-emphasizes-higher-education-at-ohio-rally-criticizes-romneys-plans'),(14,'Romney officially nominated as GOP presidential candidate','After months of being the front-runner, former Massachusetts Gov. Mitt Romney secured the official Republican nomination today for the upcoming presidential election.','2012-08-28 00:00:00','ns',0,'','','http://www.dailybruin.com/blog/timestamp/2012/08/romney-officially-nominated-as-gop-presidential-candidate'),(15,'New website allows California residents to register to vote electronically','California residents looking to vote in November can now register electronically through a new website, California Secretary of State Debra Bowen’s office announced today.','2012-09-19 00:00:00','ns',0,'','','http://www.dailybruin.com/blog/timestamp/2012/09/new-website-allows-california-residents-to-register-to-vote-electronically'),(16,'Gov. Jerry Brown signs bill enabling same-day voter registration for Californians','Starting in 2014, California residents looking to vote in state and national elections will be able to register up until and on Election Day through a bill Gov. Jerry Brown signed today.\r\n','2012-09-24 00:00:00','ns',0,'','','http://www.dailybruin.com/blog/timestamp/2012/09/gov-jerry-brown-signs-bill-enabling-same-day-voter-registration-for-californians'),(17,'Gov. Jerry Brown signs same-day voter registration bill','Starting as soon as 2014, California residents looking to vote in state and national elections will be able to register up until and on Election Day, according to a new bill signed by Gov. Jerry Brown on Monday.','2012-09-27 09:04:00','ns',0,'','','http://www.dailybruin.com/article/2012/09/gov-jerry-brown-signs-same-day-voter-registration-bill'),(18,'Percent of independent voters in California hits all-time high with change in primaries','The percentage of voters registered without a party preference ­– or independent – has reached an all-time high in California, according to registration statistics released recently by the California Secretary of State’s office.','2012-10-03 03:54:00','ns',0,'electionimg/50805_webns103independantspicaf.jpeg','','http://www.dailybruin.com/article/2012/10/percent-of-independent-voters-in-california-hits-all-time-high-with-change-in-primaries'),(19,'UCLA students gather for viewings of first Obama, Romney debate','Rows of students sat with their faces propped on their hands, brows furrowed in silent concentration, eyes all targeted toward a screen in the middle of Rieber Fireside Lounge.','2012-10-04 04:30:00','ns',0,'electionimg/50819_webns104viewingpartypicbf.jpeg','','http://www.dailybruin.com/article/2012/10/ucla-students-gather-for-viewings-of-first-obama-romney-debate'),(20,'Biden, Ryan cover foreign and domestic policy in vice presidential debate','The television channel swiftly switched from local coverage to a lit, patriotically adorned auditorium as two men walked out across the floor and onto the national stage.','2012-10-12 04:56:00','ns',0,'','','http://www.dailybruin.com/article/2012/10/biden-ryan-cover-foreign-and-domestic-policy-in-vice-presidential-debate'),(21,'Gov. Jerry Brown speaking at Prop. 30 rally in Bruin Plaza Tuesday','Gov. Jerry Brown will speak at a rally for Proposition 30 on Tuesday at noon in Bruin Plaza.','2012-10-15 00:00:00','ns',0,'','','http://www.dailybruin.com/blog/timestamp/2012/10/gov-jerry-brown-speaks-at-prop-30-rally-in-bruin-plaza-tuesday'),(22,'As a part of UC Day of Action, Gov. Jerry Brown will speak at UCLA to promote Proposition 30','Gov. Jerry Brown will speak at a rally in Bruin Plaza today for his proposed tax increase initiative, which is tied to the University of California’s finances.','2012-10-16 03:15:00','ns',0,'electionimg/51081_webns1016brownrallypicaf.jpeg','','http://www.dailybruin.com/article/2012/10/brown-to-speak-at-ucla'),(23,'Gov. Brown speaks at Prop. 30 rally in Bruin Plaza','Speaking at a rally held at UCLA this afternoon, Gov. Jerry Brown encouraged students to register to vote and to educate themselves about Proposition 30, a ballot initiative that has garnered mixed reactions from California voters in recent months.','2012-10-16 16:49:00','ns',0,'electionimg/51091_web1017jerrybrownrallyf.jpeg','','http://www.dailybruin.com/article/2012/10/gov-brown-speaks-at-prop-30-rally-in-bruin-plaza'),(24,'Second debate focuses on new topics, lacks new insights','Students, faculty and citizens at UCLA and nationwide gathered Tuesday night to watch the presidential candidates face off in their second debate of the election season. President Barack Obama and Republican presidential candidate Mitt Romney stepped into a town hall setting, this time to discuss domestic and foreign policy.','2012-10-17 04:21:00','ns',0,'','','http://www.dailybruin.com/article/2012/10/second-debate-focuses-on-new-topics-lacks-new-insights'),(25,'Brown talks education during UC newspaper interview','Gov. Jerry Brown said there is no alternative to cutting millions from the University of California if voters do not approve Proposition 30, a tax increase measure that is polling around 50 percent approval, in an interview with seven UC student newspapers on Tuesday.','2012-10-17 04:22:00','ns',0,'electionimg/51095_webns1017browninterviewpicaf.jpeg','','http://www.dailybruin.com/article/2012/10/_brown-talks-education-during-uc-newspaper-interview_'),(26,'Gov. Jerry Brown speaks at Proposition 30 rally in Bruin Plaza','About 200 UCLA students, some holding signs that read “Yes on 30,” gathered near the stage in Bruin Plaza as the song “Ain’t No Mountain High Enough” played in the background.','2012-10-17 04:33:00','ns',0,'electionimg/51099_webns1017govbrownrallypicaf.jpeg','','http://www.dailybruin.com/article/2012/10/gov-jerry-brown-speaks-at-proposition-30-rally-in-bruin-plaza'),(27,'USAC passes resolution to endorse Prop. 30','The undergraduate student government recently endorsed Proposition 30, an item on the November state ballot, in an effort to educate students about the potential implications of the measure on the University of California.','2012-10-18 03:55:00','ns',0,'','','http://www.dailybruin.com/article/2012/10/usac-passes-resolution-to-endorse-prop-30'),(28,'UC financial future depends on passage of Proposition 30','The University of California’s financial future hinges upon the passage of Proposition 30 – also known as Gov. Jerry Brown’s tax measure or the Schools and Safety Protection Act – in the upcoming state elections.','2012-10-18 03:59:00','ns',0,'electionimg/51127_webns1018cltaxpicaf.jpeg','','http://www.dailybruin.com/article/2012/10/uc-financial-future-depends-on-passage-of-proposition-30'),(29,'USAC encourages students to register to vote','Students wandered into SEAS Cafe, a small eating place located near the engineering lounge in Boelter Hall, lured by a sign that read “Free Coffee: 10 a.m.-2 p.m.” Aleli Caluza sat inside with a clipboard full of voter registration forms in hand and a bowl of fortune cookies on her table.','2012-10-19 03:53:00','ns',0,'electionimg/51170_webns1019voterregpicaf.jpeg','','http://www.dailybruin.com/article/2012/10/usac-encourages-students-to-register-to-vote'),(30,'Last presidential debate focuses on foreign policy','After a long day of classes, Sina Famenini sat down in Powell Library Monday night to watch a live stream of the final presidential debate on his laptop.','2012-10-23 04:14:00','ns',0,'','','http://www.dailybruin.com/article/2012/10/last-presidential-debate-focuses-on-foreign-policy'),(31,'Taxpayers association files lawsuit against CSU Monterey','Following a recent lawsuit that accuses a California State University campus of illegally advocating for Proposition 30, University of California officials said there have not been any reported violations of a policy that prohibits faculty and staff from using public resources for political campaigns.','2012-10-24 03:53:00','ns',0,'','','http://www.dailybruin.com/article/2012/10/taxpayers-association-files-lawsuit-against-csu-monterey'),(32,'Voting by mail provides alternative for students','With Election Day less than two weeks away, students from outside the Los Angeles area who cannot go to the polling booths are looking for alternative ways to cast their vote.','2012-10-24 03:55:00','ns',0,'electionimg/51250_1024votebymailo.jpeg','','http://www.dailybruin.com/article/2012/10/voting-by-mail-provides-alternative-for-students'),(48,'featured story--ignore','ignore','2012-11-07 04:00:48','ns',1,'','','http://example.com/'),(51,'UCLA undergrads lean left, exit poll shows','In line with state political trends, UCLA undergraduates overwhelmingly voted to re-elect President Barack Obama in Tuesday’s election, while they took a stronger stance than the rest of the state on Proposition 30, according to Daily Bruin exit poll results.','2012-11-07 04:07:12','ns',0,'','','http://www.dailybruin.com/article/2012/11/ucla-undergrads-lean-left-exit-poll-shows'),(50,'First-time voters at UCLA','In September, the Daily Bruin interviewed four first-time voters about the election. The Bruin checked in again with the students to find out how the last months of the election affected their decisions.\r\n','2012-11-07 04:06:54','ns',0,'','','http://www.dailybruin.com/article/2012/11/election-2012-first-time-voters-at-ucla'),(35,'Independents to play important role in election','As the election season draws to a close, candidates are making their final pleas to voters, especially to independent voters.','2012-10-31 03:46:00','ns',0,'','','http://www.dailybruin.com/article/2012/10/growing-number-of-independents-to-play-important-role-in-election'),(52,'List mix-up causes students to cast provisional ballots in LA County','List mix-up causes students to cast provisional ballots in LA County','2012-11-07 04:07:39','ns',0,'','','http://www.dailybruin.com/article/2012/11/list-mix-up-causes-students-to-cast-provisional-ballots-in-la-county'),(53,'Prop. 30 fate still undecided','Prop. 30 fate still undecided','2012-11-07 04:07:59','ns',0,'','','http://www.dailybruin.com/article/2012/11/prop-30-fate-still-undecided'),(54,'President Barack Obama edges out Republican candidate Mitt Romney for second term','President Barack Obama edges out Republican candidate Mitt Romney for second term\r\n','2012-11-07 04:08:26','ns',0,'','','http://www.dailybruin.com/article/2012/11/president-barack-obama-edges-out-republican-candidate-mitt-romney-for-second-term'),(38,'Ryland Lu: Voting laws should work to encourage, educate constituents','As the mid-quarter routine of testing and papers gets underway, many UCLA students may miss out on an equally important deadline: Oct. 22, the last day for citizens of eligible age to register to vote in the upcoming elections.','2012-10-01 01:33:00','op',0,'electionimg/50719_webop101electionpicaf.jpeg','','http://www.dailybruin.com/article/2012/10/ryland-lu-_voting-laws-should-work-to-encourage-educate-constituents_'),(39,'Ramsey Ugarte: Including Libertarian candidate Gary Johnson in the debates would broaden the discourse','When UCLA students tune into the presidential debates tonight, there will be a podium and speaker missing from that brightly lit stage – the presidential candidate running on the Libertarian ballot, two-time New Mexico Governor Gary Johnson.','2012-10-03 04:05:00','op',0,'electionimg/50806_web103ramsey_01f.jpeg','','http://www.dailybruin.com/article/2012/10/_including-libertarian-candidate-gary-johnson-in-the-debates-would-broaden-the-discourse_'),(40,'Maia Ferdman: Students must actively seek truth in debate','With the first presidential debate complete, the election season has reached its home stretch. Yet clouds of fancy political advertising, highly coordinated campaign speeches and blips of political rhetoric still linger in the air like bad Los Angeles smog.','2012-10-05 01:12:00','op',0,'','','http://www.dailybruin.com/article/2012/10/students-must-actively-seek-truth-in-debate'),(41,'Eitan Arom: Students can upset media’s pull over politics with technology','During Wednesday night’s presidential debate, Barack Obama and Mitt Romney inspired the country by bridging the partisan divide to say, “Shut up, Jim Lehrer.”','2012-10-05 01:21:00','op',0,'','','http://www.dailybruin.com/article/2012/10/students-can-upset-medias-pull-over-politics-with-technology'),(42,'Ramsey Ugarte: Spending problems limit effectivness of tax initatives','This November, California voters will be faced with at least two tax initiatives geared at tackling the state’s crumbling public education at various levels.','2012-10-18 01:59:00','op',0,'','','http://www.dailybruin.com/article/2012/10/_ramsey-ugarte-spending-problems-limit-effectivness-of-tax-initatives_'),(43,'Ryland Lu: Professors should keep politics out of the classroom','While American voters split along partisan lines in anticipation of the November elections, public universities are not immune to the political spats often highlighted in the nation’s discourse.\r\n','2012-10-29 02:21:00','op',0,'electionimg/51387_webop1029luprofessorspicaf.jpeg','','http://www.dailybruin.com/article/2012/10/_ryland-lu-schools-should-be-more-balanced-less-politicized-when-it-comes-to-hiring-process_'),(44,'Alexandra Tashman: Programs need to encourage political careers for women','In this country, equal pay legislation is nearly 50 years old, workplace discrimination based on gender is illegal and women enjoy unrestricted voting access. And yet there are many places in this country where women seem to be far from represented.','2012-10-30 02:03:00','op',0,'electionimg/51450_1030tashmanwomensvotingcolumnf.jpeg','','http://www.dailybruin.com/article/2012/10/_alexandra-tashman-programs-need-to-encourage-political-careers-for-women_'),(45,'UCLA students lack balance in political perspectives','The words “young” and “conservative” are all but mutually exclusive in today’s political milieu.','2012-10-31 02:29:00','op',0,'electionimg/51459_webop1031votingpicaf.jpeg','','http://www.dailybruin.com/article/2012/10/_ucla-students-lack-balance-in-political-perspectives_'),(46,'Editorial Board Endorsements: Elections 2012','Past the partisan bickering and campaign half-truths of the 2012 election season, it is integral that students take the initiative to educate themselves about the issues at stake on the November ballot.','2012-11-01 03:53:00','op',0,'','','http://www.dailybruin.com/article/2012/11/editorial-board-endorsements-elections-2012'),(55,'Editorial: UC leadership should not have relied on Prop. 30','Whether or not Proposition 30 passes, University of California leadership has to learn a key lesson: You can’t put all your eggs in one basket.','2012-11-07 04:09:12','op',0,'','','http://www.dailybruin.com/article/2012/11/editorial-uc-leadership-should-not-have-relied-on-prop-30'),(56,'Editorial: Public education needs to be viewed as a whole','Editorial: Public education needs to be viewed as a whole','2012-11-07 04:09:37','ns',0,'','','http://www.dailybruin.com/article/2012/11/editorial-public-education-needs-to-be-viewed-as-a-whole');
/*!40000 ALTER TABLE `elections12_story` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-11-12  0:08:48
