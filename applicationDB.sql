SET SESSION sql_require_primary_key = 0;
/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.4.2-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 192.168.131.94    Database: nfkhhx9kun
-- ------------------------------------------------------
-- Server version	11.4.2-MariaDB-deb12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `q91ut_action_log_config`
--

DROP TABLE IF EXISTS `q91ut_action_log_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_action_log_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `id_holder` varchar(255) DEFAULT NULL,
  `title_holder` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `text_prefix` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_action_log_config`
--

LOCK TABLES `q91ut_action_log_config` WRITE;
/*!40000 ALTER TABLE `q91ut_action_log_config` DISABLE KEYS */;
INSERT INTO `q91ut_action_log_config` VALUES
(1,'article','com_content.article','id','title','#__content','PLG_ACTIONLOG_JOOMLA'),
(2,'article','com_content.form','id','title','#__content','PLG_ACTIONLOG_JOOMLA'),
(3,'banner','com_banners.banner','id','name','#__banners','PLG_ACTIONLOG_JOOMLA'),
(4,'user_note','com_users.note','id','subject','#__user_notes','PLG_ACTIONLOG_JOOMLA'),
(5,'media','com_media.file','','name','','PLG_ACTIONLOG_JOOMLA'),
(6,'category','com_categories.category','id','title','#__categories','PLG_ACTIONLOG_JOOMLA'),
(7,'menu','com_menus.menu','id','title','#__menu_types','PLG_ACTIONLOG_JOOMLA'),
(8,'menu_item','com_menus.item','id','title','#__menu','PLG_ACTIONLOG_JOOMLA'),
(9,'newsfeed','com_newsfeeds.newsfeed','id','name','#__newsfeeds','PLG_ACTIONLOG_JOOMLA'),
(10,'link','com_redirect.link','id','old_url','#__redirect_links','PLG_ACTIONLOG_JOOMLA'),
(11,'tag','com_tags.tag','id','title','#__tags','PLG_ACTIONLOG_JOOMLA'),
(12,'style','com_templates.style','id','title','#__template_styles','PLG_ACTIONLOG_JOOMLA'),
(13,'plugin','com_plugins.plugin','extension_id','name','#__extensions','PLG_ACTIONLOG_JOOMLA'),
(14,'component_config','com_config.component','extension_id','name','','PLG_ACTIONLOG_JOOMLA'),
(15,'contact','com_contact.contact','id','name','#__contact_details','PLG_ACTIONLOG_JOOMLA'),
(16,'module','com_modules.module','id','title','#__modules','PLG_ACTIONLOG_JOOMLA'),
(17,'access_level','com_users.level','id','title','#__viewlevels','PLG_ACTIONLOG_JOOMLA'),
(18,'banner_client','com_banners.client','id','name','#__banner_clients','PLG_ACTIONLOG_JOOMLA'),
(19,'application_config','com_config.application','','name','','PLG_ACTIONLOG_JOOMLA'),
(20,'task','com_scheduler.task','id','title','#__scheduler_tasks','PLG_ACTIONLOG_JOOMLA'),
(21,'field','com_fields.field','id','title','#__fields','PLG_ACTIONLOG_JOOMLA');
/*!40000 ALTER TABLE `q91ut_action_log_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_action_logs`
--

DROP TABLE IF EXISTS `q91ut_action_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_action_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message_language_key` varchar(255) NOT NULL DEFAULT '',
  `message` mediumtext NOT NULL,
  `log_date` datetime NOT NULL,
  `extension` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `ip_address` varchar(40) NOT NULL DEFAULT '0.0.0.0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  KEY `idx_user_id_extension` (`user_id`,`extension`),
  KEY `idx_extension_item_id` (`extension`,`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_action_logs`
--

LOCK TABLES `q91ut_action_logs` WRITE;
/*!40000 ALTER TABLE `q91ut_action_logs` DISABLE KEYS */;
INSERT INTO `q91ut_action_logs` VALUES
(1,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":42,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=42\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-07-26 09:52:41','com_users',42,0,'COM_ACTIONLOGS_DISABLED');
/*!40000 ALTER TABLE `q91ut_action_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_action_logs_extensions`
--

DROP TABLE IF EXISTS `q91ut_action_logs_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_action_logs_extensions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `extension` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_action_logs_extensions`
--

LOCK TABLES `q91ut_action_logs_extensions` WRITE;
/*!40000 ALTER TABLE `q91ut_action_logs_extensions` DISABLE KEYS */;
INSERT INTO `q91ut_action_logs_extensions` VALUES
(1,'com_banners'),
(2,'com_cache'),
(3,'com_categories'),
(4,'com_config'),
(5,'com_contact'),
(6,'com_content'),
(7,'com_installer'),
(8,'com_media'),
(9,'com_menus'),
(10,'com_messages'),
(11,'com_modules'),
(12,'com_newsfeeds'),
(13,'com_plugins'),
(14,'com_redirect'),
(15,'com_tags'),
(16,'com_templates'),
(17,'com_users'),
(18,'com_checkin'),
(19,'com_scheduler'),
(20,'com_fields');
/*!40000 ALTER TABLE `q91ut_action_logs_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_action_logs_users`
--

DROP TABLE IF EXISTS `q91ut_action_logs_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_action_logs_users` (
  `user_id` int(11) unsigned NOT NULL,
  `notify` tinyint(1) unsigned NOT NULL,
  `extensions` mediumtext NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `idx_notify` (`notify`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_action_logs_users`
--

LOCK TABLES `q91ut_action_logs_users` WRITE;
/*!40000 ALTER TABLE `q91ut_action_logs_users` DISABLE KEYS */;
INSERT INTO `q91ut_action_logs_users` VALUES
(42,0,'[\"com_content\"]');
/*!40000 ALTER TABLE `q91ut_action_logs_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_assets`
--

DROP TABLE IF EXISTS `q91ut_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_assets`
--

LOCK TABLES `q91ut_assets` WRITE;
/*!40000 ALTER TABLE `q91ut_assets` DISABLE KEYS */;
INSERT INTO `q91ut_assets` VALUES
(1,0,0,237,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2,1,1,2,1,'com_admin','com_admin','{}'),
(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6,1,11,12,1,'com_config','com_config','{}'),
(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8,1,17,60,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),
(9,1,61,62,1,'com_cpanel','com_cpanel','{}'),
(10,1,63,64,1,'com_installer','com_installer','{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11,1,65,66,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1}}'),
(12,1,67,68,1,'com_login','com_login','{}'),
(13,1,69,70,1,'com_mailto','com_mailto','{}'),
(14,1,71,72,1,'com_massmail','com_massmail','{}'),
(15,1,73,74,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16,1,75,76,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1}}'),
(17,1,77,78,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18,1,79,172,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1}}'),
(19,1,173,176,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20,1,177,178,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1}}'),
(21,1,179,180,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1}}'),
(22,1,181,182,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(23,1,183,184,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1}}'),
(24,1,185,188,1,'com_users','com_users','{\"core.admin\":{\"7\":1}}'),
(26,1,189,190,1,'com_wrapper','com_wrapper','{}'),
(27,8,18,23,2,'com_content.category.2','Uncategorised','{}'),
(28,3,4,5,2,'com_banners.category.3','Uncategorised','{}'),
(29,7,14,15,2,'com_contact.category.4','Uncategorised','{}'),
(30,19,174,175,2,'com_newsfeeds.category.5','Uncategorised','{}'),
(32,24,186,187,2,'com_users.category.7','Uncategorised','{}'),
(33,1,191,192,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34,1,193,194,1,'com_joomlaupdate','com_joomlaupdate','{}'),
(35,1,195,196,1,'com_tags','com_tags','{}'),
(36,1,197,198,1,'com_contenthistory','com_contenthistory','{}'),
(37,1,199,200,1,'com_ajax','com_ajax','{}'),
(38,1,201,202,1,'com_postinstall','com_postinstall','{}'),
(39,18,80,81,2,'com_modules.module.1','Main Menu','{}'),
(40,18,82,83,2,'com_modules.module.2','Login','{}'),
(41,18,84,85,2,'com_modules.module.3','Popular Articles','{}'),
(42,18,86,87,2,'com_modules.module.4','Recently Added Articles','{}'),
(43,18,88,89,2,'com_modules.module.8','Toolbar','{}'),
(44,18,90,91,2,'com_modules.module.9','Quick Icons','{}'),
(45,18,92,93,2,'com_modules.module.10','Logged-in Users','{}'),
(46,18,94,95,2,'com_modules.module.12','Admin Menu','{}'),
(47,18,96,97,2,'com_modules.module.13','Admin Submenu','{}'),
(48,18,98,99,2,'com_modules.module.14','User Status','{}'),
(49,18,100,101,2,'com_modules.module.15','Title','{}'),
(50,18,102,103,2,'com_modules.module.16','Login Form','{}'),
(51,18,104,105,2,'com_modules.module.17','Breadcrumbs','{}'),
(52,18,106,107,2,'com_modules.module.79','Multilanguage status','{}'),
(53,18,108,109,2,'com_modules.module.86','Joomla Version','{}'),
(54,18,110,111,2,'com_modules.module.87','Popular Tags','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(55,18,112,113,2,'com_modules.module.88','Site Information','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(56,18,114,115,2,'com_modules.module.89','Release News','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(57,18,116,117,2,'com_modules.module.90','Latest Articles','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(58,18,118,119,2,'com_modules.module.91','User Menu','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(59,18,120,121,2,'com_modules.module.92','Image Module','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(60,18,122,123,2,'com_modules.module.93','Search','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(61,27,19,20,3,'com_content.article.1','Getting Started','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(63,1,205,206,1,'com_privacy','com_privacy','{\"core.admin\":{\"7\":1}}'),
(64,1,207,208,1,'com_actionlogs','com_actionlogs','{\"core.admin\":{\"7\":1}}'),
(65,18,124,125,2,'com_modules.module.95','Section Top ','{}'),
(66,18,126,127,2,'com_modules.module.96','Section Bottom','{}'),
(67,18,128,129,2,'com_modules.module.97','Hero','{}'),
(68,18,130,131,2,'com_modules.module.98','Copyright','{}'),
(69,8,24,41,2,'com_content.category.8','Demo','{}'),
(70,69,25,26,3,'com_content.article.2','British Foreign Secretary Boris Johnson quits as Brexit crisis deepens','{}'),
(71,69,27,28,3,'com_content.article.3','Former Deloitte employee claims company blocked sexual assault investigation','{}'),
(72,69,29,30,3,'com_content.article.4','Amazon has the ad industry looking over its shoulder','{}'),
(73,69,31,32,3,'com_content.article.5','Why this Supreme Court candidate could reverse a century of financial regulation','{}'),
(74,69,33,34,3,'com_content.article.6','Create and Edit Files from  Insight Dashboard with Google Drive','{}'),
(75,69,35,36,3,'com_content.article.7','Consulting Firm Company with offices in Brussels, Munich and Milan.','{}'),
(76,69,37,38,3,'com_content.article.8','12 companies at the heart of London’s FinTech boom','{}'),
(77,69,39,40,3,'com_content.article.9','Financial Services Core  Customer Centric Approach','{}'),
(78,27,21,22,3,'com_content.article.10','Typography','{}'),
(79,18,132,133,2,'com_modules.module.99','Masthead','{}'),
(80,18,134,135,2,'com_modules.module.100','Google Map','{}'),
(81,1,209,210,1,'com_fields','com_fields','{}'),
(82,1,211,212,1,'com_associations','com_associations','{}'),
(83,18,136,137,2,'com_modules.module.101','Hero','{}'),
(84,18,138,139,2,'com_modules.module.102','Our Story','{}'),
(85,18,140,141,2,'com_modules.module.103','Our Services','{}'),
(86,18,142,143,2,'com_modules.module.104','Our Missions','{}'),
(87,8,42,59,2,'com_content.category.9','Projects','{}'),
(88,87,43,44,3,'com_content.article.11','172 N Jean Street','{}'),
(89,87,45,46,3,'com_content.article.12','820 Wenzel Lane','{}'),
(90,87,47,48,3,'com_content.article.13','672 S Milward Ave','{}'),
(91,87,49,50,3,'com_content.article.14','665 S. Glenwood Street','{}'),
(92,87,51,52,3,'com_content.article.15','Maintenance Office','{}'),
(93,87,53,54,3,'com_content.article.16','St James’s Market','{}'),
(94,87,55,56,3,'com_content.article.17','One Bennett Park','{}'),
(95,87,57,58,3,'com_content.article.18','Financial Tombstones','{}'),
(96,18,144,145,2,'com_modules.module.105','Our Projects','{}'),
(97,18,146,147,2,'com_modules.module.106','Established 2015','{}'),
(98,18,148,149,2,'com_modules.module.107','Our Blog','{}'),
(99,18,150,151,2,'com_modules.module.108','Careers at Stark','{}'),
(100,18,152,153,2,'com_modules.module.109','Expert People','{}'),
(101,18,154,155,2,'com_modules.module.110','Spacer','{}'),
(102,18,156,157,2,'com_modules.module.111','Footer','{}'),
(103,18,158,159,2,'com_modules.module.112','Stark Office','{}'),
(104,18,160,161,2,'com_modules.module.113','Start a Conversation','{}'),
(105,18,162,163,2,'com_modules.module.114','Masthead','{}'),
(110,18,164,165,2,'com_modules.module.115','Video','{}'),
(111,18,166,167,2,'com_modules.module.116','Video','{}'),
(112,1,221,222,1,'com_jaextmanager','com_jaextmanager','{}'),
(113,18,168,169,2,'com_modules.module.117','Section 7 Spacer','{}'),
(114,18,170,171,2,'com_modules.module.118','Section 8 Spacer','{}'),
(115,1,223,224,1,'com_scheduler.task.1','com_scheduler.task.1','{}'),
(116,1,225,226,1,'com_scheduler.task.2','com_scheduler.task.2','{}'),
(117,1,227,228,1,'com_scheduler.task.3','com_scheduler.task.3','{}'),
(118,1,229,230,1,'com_guidedtours','com_guidedtours','{}'),
(119,1,231,232,1,'com_mails','com_mails','{}'),
(120,1,233,234,1,'com_scheduler','com_scheduler','{}'),
(121,1,235,236,1,'com_workflow','com_workflow','{}');
/*!40000 ALTER TABLE `q91ut_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_associations`
--

DROP TABLE IF EXISTS `q91ut_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_associations`
--

LOCK TABLES `q91ut_associations` WRITE;
/*!40000 ALTER TABLE `q91ut_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_banner_clients`
--

DROP TABLE IF EXISTS `q91ut_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `metakey` text DEFAULT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(400) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1,
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_banner_clients`
--

LOCK TABLES `q91ut_banner_clients` WRITE;
/*!40000 ALTER TABLE `q91ut_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_banner_tracks`
--

DROP TABLE IF EXISTS `q91ut_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_banner_tracks`
--

LOCK TABLES `q91ut_banner_tracks` WRITE;
/*!40000 ALTER TABLE `q91ut_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_banners`
--

DROP TABLE IF EXISTS `q91ut_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT 0,
  `impmade` int(11) NOT NULL DEFAULT 0,
  `clicks` int(11) NOT NULL DEFAULT 0,
  `clickurl` varchar(2048) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT 0,
  `catid` int(10) unsigned NOT NULL DEFAULT 0,
  `description` mediumtext NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `params` mediumtext NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(400) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `reset` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_banners`
--

LOCK TABLES `q91ut_banners` WRITE;
/*!40000 ALTER TABLE `q91ut_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_categories`
--

DROP TABLE IF EXISTS `q91ut_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) unsigned NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` longtext DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `params` mediumtext DEFAULT NULL,
  `metadesc` varchar(1024) NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_language` (`language`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_alias` (`alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_categories`
--

LOCK TABLES `q91ut_categories` WRITE;
/*!40000 ALTER TABLE `q91ut_categories` DISABLE KEYS */;
INSERT INTO `q91ut_categories` VALUES
(1,0,0,0,15,0,'','system','ROOT','root','','',1,NULL,NULL,1,'{}','','','{}',42,'2021-08-18 03:05:55',42,'2021-08-18 03:05:55',0,'*',1),
(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2021-08-18 03:05:55',42,'2021-08-18 03:05:55',0,'*',1),
(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2021-08-18 03:05:55',42,'2021-08-18 03:05:55',0,'*',1),
(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2021-08-18 03:05:55',42,'2021-08-18 03:05:55',0,'*',1),
(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2021-08-18 03:05:55',42,'2021-08-18 03:05:55',0,'*',1),
(7,32,1,9,10,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2021-08-18 03:05:55',42,'2021-08-18 03:05:55',0,'*',1),
(8,69,1,11,12,1,'demo','com_content','Demo','demo','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2021-08-18 03:05:55',0,'2021-08-18 03:05:55',0,'*',1),
(9,87,1,13,14,1,'projects','com_content','Projects','projects','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2021-08-18 03:05:55',0,'2021-08-18 03:05:55',0,'*',1);
/*!40000 ALTER TABLE `q91ut_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_contact_details`
--

DROP TABLE IF EXISTS `q91ut_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` mediumtext DEFAULT NULL,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` mediumtext NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `catid` int(11) NOT NULL DEFAULT 0,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL DEFAULT '',
  `sortname2` varchar(255) NOT NULL DEFAULT '',
  `sortname3` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(7) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` mediumtext NOT NULL,
  `metadata` mediumtext NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Set if contact is featured.',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_contact_details`
--

LOCK TABLES `q91ut_contact_details` WRITE;
/*!40000 ALTER TABLE `q91ut_contact_details` DISABLE KEYS */;
INSERT INTO `q91ut_contact_details` VALUES
(1,'Contact Us','contact-us','','4 5th Avenue at St. Marks Place, Cathedral District Brooklyn, NY','','','','','(084) 555-0110','','Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.','images/demo/bg/section-2.png','no-reply@gmail.com',0,1,NULL,NULL,1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"plain\",\"show_tags\":\"\",\"show_info\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"add_mailto_link\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_image\":\"\",\"show_misc\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"articles_display_num\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"facebook\",\"linka\":\"https:\\/\\/joomlart.com\",\"linkb_name\":\"google plus\",\"linkb\":\"https:\\/\\/joomlart.com\",\"linkc_name\":\"twitter\",\"linkc\":\"https:\\/\\/joomlart.com\",\"linkd_name\":\"youtube\",\"linkd\":\"https:\\/\\/joomlart.com\",\"linke_name\":\"vimeo\",\"linke\":\"https:\\/\\/joomlart.com\",\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',42,4,1,'(084) 168-993-7763','http://joomlart.com','','','','*','2021-08-18 03:05:55',42,'','2021-08-18 03:05:55',42,'','','{\"robots\":\"\",\"rights\":\"\"}',0,NULL,NULL,10,257);
/*!40000 ALTER TABLE `q91ut_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_content`
--

DROP TABLE IF EXISTS `q91ut_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `introtext` longtext NOT NULL,
  `fulltext` longtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT 0,
  `catid` int(10) unsigned NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `images` mediumtext NOT NULL,
  `urls` mediumtext NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` mediumtext NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `metadata` mediumtext NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_alias` (`alias`(191))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_content`
--

LOCK TABLES `q91ut_content` WRITE;
/*!40000 ALTER TABLE `q91ut_content` DISABLE KEYS */;
INSERT INTO `q91ut_content` VALUES
(1,61,'Getting Started','getting-started','<p>It\'s easy to get started creating your website. Knowing some of the basics will help.</p><h3>What is a Content Management System?</h3><p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p><p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. Joomla! brings together the template and your content to create web pages.</p><h3>Logging in</h3><p>To login to your site use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles and modify some settings.</p><h3>Creating an article</h3><p>Once you are logged-in, a new menu will be visible. To create a new article, click on the \"Submit Article\" link on that menu.</p><p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.</p><div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).</div><h3>Template, site settings, and modules</h3><p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template settings. Click the \"Template Settings\" in the user menu.</p><p>The boxes around the main content of the site are called modules. You can modify modules on the current page by moving your cursor to the module and clicking the edit link. Always be sure to save and close any module you edit.</p><p>You can change some site settings such as the site name and description by clicking on the \"Site Settings\" link.</p><p>More advanced options for templates, site settings, modules, and more are available in the site administrator.</p><h3>Site and Administrator</h3><p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the \"Site Administrator\" link on the \"User Menu\" menu (visible once you login) or by adding /administrator to the end of your domain name. The same user name and password are used for both sites.</p><h3>Learn more</h3><p>There is much more to learn about how to use Joomla! to create the website you envision. You can learn much more at the <a href=\"https://docs.joomla.org/\" target=\"_blank\">Joomla! documentation site</a> and on the<a href=\"https://forum.joomla.org/\" target=\"_blank\"> Joomla! forums</a>.</p>','',1,2,'2021-08-18 03:05:55',42,'','2021-09-27 00:00:00',42,NULL,NULL,'2021-09-27 00:00:00',NULL,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,1,'','',1,2500,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(2,70,'British Foreign Secretary Boris Johnson quits as Brexit crisis deepens','british-foreign-secretary-boris-johnson-quits-as-brexit-crisis-deepens','<p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>\r\n','\r\n<p>Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.</p>\r\n\r\n<h3>Tellus eget condimentum rhoncus</h3>\r\n<p>Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.</p>\r\n\r\n<div class=\"row\">\r\n	<div class=\"col-md-6\">\r\n		<img src=\"images/joomlart/others/chart.png\" alt=\"\"/>\r\n	</div>\r\n\r\n	<div class=\"col-md-6\">\r\n		<ul>\r\n			<li>Sed fringilla mauris sit amet nibh</li>\r\n			<li>Sed consequat, leo eget bibendum</li>\r\n			<li>Fusce vulputate eleifend</li>\r\n			<li>Sed fringilla mauris sit amet nibh</li>\r\n		</ul>\r\n	</div>\r\n</div>\r\n\r\n<p>Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus.</p>\r\n\r\n<h3>Vestibulum purus quam</h3>\r\n<p>Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu.</p>\r\n\r\n<blockquote>\r\n	<p>Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nullam accumsan lorem in dui.</p>\r\n	<small>Quote\'s author in <cite title=\"Source Title\">Source Title</cite></small>\r\n</blockquote>\r\n\r\n	<p>Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut eros et nisl sagittis vestibulum. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Sed lectus.</p>',-2,8,'2021-08-18 03:05:55',42,'','2021-09-27 00:00:00',42,NULL,NULL,'2021-09-27 00:00:00',NULL,'{\"image_intro\":\"images\\/joomlart\\/blog\\/item-5.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/joomlart\\/blog\\/item-5.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,7,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(3,71,'Former Deloitte employee claims company blocked sexual assault investigation','former-deloitte-employee-claims-company-blocked-sexual-assault-investigation','<p>In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.</p>\r\n','\r\n<p>Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.</p>\r\n\r\n<h3>Tellus eget condimentum rhoncus</h3>\r\n<p>Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.</p>\r\n\r\n<div class=\"row\">\r\n	<div class=\"col-md-6\">\r\n		<img src=\"images/joomlart/others/chart.png\" alt=\"\"/>\r\n	</div>\r\n\r\n	<div class=\"col-md-6\">\r\n		<ul>\r\n			<li>Sed fringilla mauris sit amet nibh</li>\r\n			<li>Sed consequat, leo eget bibendum</li>\r\n			<li>Fusce vulputate eleifend</li>\r\n			<li>Sed fringilla mauris sit amet nibh</li>\r\n		</ul>\r\n	</div>\r\n</div>\r\n\r\n<p>Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus.</p>\r\n\r\n<h3>Vestibulum purus quam</h3>\r\n<p>Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu.</p>\r\n\r\n<blockquote>\r\n	<p>Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nullam accumsan lorem in dui.</p>\r\n	<small>Quote\'s author in <cite title=\"Source Title\">Source Title</cite></small>\r\n</blockquote>\r\n\r\n	<p>Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut eros et nisl sagittis vestibulum. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Sed lectus.</p>',-2,8,'2021-08-18 03:05:55',42,'','2021-09-27 00:00:00',42,NULL,NULL,'2021-09-27 00:00:00',NULL,'{\"image_intro\":\"images\\/joomlart\\/blog\\/item-4.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/joomlart\\/blog\\/item-4.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,6,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(4,72,'Amazon has the ad industry looking over its shoulder','amazon-has-the-ad-industry-looking-over-its-shoulder','<p>Maecenas tempus, tellus eget condimentum rhoncus, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>\r\n','\r\n<p>Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.</p>\r\n\r\n<h3>Tellus eget condimentum rhoncus</h3>\r\n<p>Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.</p>\r\n\r\n<div class=\"row\">\r\n	<div class=\"col-md-6\">\r\n		<img src=\"images/joomlart/others/chart.png\" alt=\"\"/>\r\n	</div>\r\n\r\n	<div class=\"col-md-6\">\r\n		<ul>\r\n			<li>Sed fringilla mauris sit amet nibh</li>\r\n			<li>Sed consequat, leo eget bibendum</li>\r\n			<li>Fusce vulputate eleifend</li>\r\n			<li>Sed fringilla mauris sit amet nibh</li>\r\n		</ul>\r\n	</div>\r\n</div>\r\n\r\n<p>Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus.</p>\r\n\r\n<h3>Vestibulum purus quam</h3>\r\n<p>Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu.</p>\r\n\r\n<blockquote>\r\n	<p>Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nullam accumsan lorem in dui.</p>\r\n	<small>Quote\'s author in <cite title=\"Source Title\">Source Title</cite></small>\r\n</blockquote>\r\n\r\n	<p>Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut eros et nisl sagittis vestibulum. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Sed lectus.</p>',-2,8,'2021-08-18 03:05:55',42,'','2021-09-27 00:00:00',42,NULL,NULL,'2021-09-27 00:00:00',NULL,'{\"image_intro\":\"images\\/joomlart\\/blog\\/item-3.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/joomlart\\/blog\\/item-3.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,5,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(5,73,'Why this Supreme Court candidate could reverse a century of financial regulation','why-this-supreme-court-candidate-could-reverse-a-century-of-financial-regulation','<p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>\r\n','\r\n<p>Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.</p>\r\n\r\n<h3>Tellus eget condimentum rhoncus</h3>\r\n<p>Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.</p>\r\n\r\n<div class=\"row\">\r\n	<div class=\"col-md-6\">\r\n		<img src=\"images/joomlart/others/chart.png\" alt=\"\"/>\r\n	</div>\r\n\r\n	<div class=\"col-md-6\">\r\n		<ul>\r\n			<li>Sed fringilla mauris sit amet nibh</li>\r\n			<li>Sed consequat, leo eget bibendum</li>\r\n			<li>Fusce vulputate eleifend</li>\r\n			<li>Sed fringilla mauris sit amet nibh</li>\r\n		</ul>\r\n	</div>\r\n</div>\r\n\r\n<p>Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus.</p>\r\n\r\n<h3>Vestibulum purus quam</h3>\r\n<p>Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu.</p>\r\n\r\n<blockquote>\r\n	<p>Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nullam accumsan lorem in dui.</p>\r\n	<small>Quote\'s author in <cite title=\"Source Title\">Source Title</cite></small>\r\n</blockquote>\r\n\r\n	<p>Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut eros et nisl sagittis vestibulum. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Sed lectus.</p>',-2,8,'2021-08-18 03:05:55',42,'','2021-09-27 00:00:00',42,NULL,NULL,'2021-09-27 00:00:00',NULL,'{\"image_intro\":\"images\\/joomlart\\/blog\\/item-2.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/joomlart\\/blog\\/item-2.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,4,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(6,74,'Create and Edit Files from  Insight Dashboard with Google Drive','create-and-edit-files-from-insight-dashboard-with-google-drive','<p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>\r\n','\r\n<p>Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.</p>\r\n\r\n<h3>Tellus eget condimentum rhoncus</h3>\r\n<p>Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.</p>\r\n\r\n<div class=\"row\">\r\n	<div class=\"col-md-6\">\r\n		<ul>\r\n			<li>Sed fringilla mauris sit amet nibh</li>\r\n			<li>Sed consequat, leo eget bibendum</li>\r\n			<li>Fusce vulputate eleifend</li>\r\n			<li>Sed fringilla mauris sit amet nibh</li>\r\n		</ul>\r\n	</div>\r\n</div>\r\n\r\n<p>Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus.</p>\r\n\r\n<h3>Vestibulum purus quam</h3>\r\n<p>Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu.</p>\r\n	<p>Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut eros et nisl sagittis vestibulum. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Sed lectus.</p>',1,8,'2021-08-18 03:05:55',42,'','2021-09-27 00:00:00',42,NULL,NULL,'2021-09-27 00:00:00',NULL,'{\"image_intro\":\"images\\/demo\\/blog\\/item-4.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/demo\\/blog\\/item-4.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',8,3,'','',1,18,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),
(7,75,'Consulting Firm Company with offices in Brussels, Munich and Milan.','consulting-firm-company-with-offices-in-brussels-munich-and-milan','<p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>\r\n','\r\n<p>Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.</p>\r\n\r\n<h3>Tellus eget condimentum rhoncus</h3>\r\n<p>Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.</p>\r\n\r\n<div class=\"row\">\r\n	<div class=\"col-md-6\">\r\n		<ul>\r\n			<li>Sed fringilla mauris sit amet nibh</li>\r\n			<li>Sed consequat, leo eget bibendum</li>\r\n			<li>Fusce vulputate eleifend</li>\r\n			<li>Sed fringilla mauris sit amet nibh</li>\r\n		</ul>\r\n	</div>\r\n</div>\r\n\r\n<p>Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus.</p>\r\n\r\n<h3>Vestibulum purus quam</h3>\r\n<p>Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu.</p>\r\n\r\n	<p>Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut eros et nisl sagittis vestibulum. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Sed lectus.</p>',1,8,'2021-08-18 03:05:55',42,'','2021-09-27 00:00:00',42,NULL,NULL,'2021-09-27 00:00:00',NULL,'{\"image_intro\":\"images\\/demo\\/blog\\/item-3.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/demo\\/blog\\/item-3.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',8,2,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),
(8,76,'12 companies at the heart of London’s FinTech boom','12-companies-at-the-heart-of-london-s-fintech-boom','<p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>\r\n','\r\n<p>Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.</p>\r\n\r\n<h3>Tellus eget condimentum rhoncus</h3>\r\n<p>Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.</p>\r\n\r\n<div class=\"row\">\r\n	<div class=\"col-md-6\">\r\n		<ul>\r\n			<li>Sed fringilla mauris sit amet nibh</li>\r\n			<li>Sed consequat, leo eget bibendum</li>\r\n			<li>Fusce vulputate eleifend</li>\r\n			<li>Sed fringilla mauris sit amet nibh</li>\r\n		</ul>\r\n	</div>\r\n</div>\r\n\r\n<p>Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus.</p>\r\n\r\n<h3>Vestibulum purus quam</h3>\r\n<p>Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu.</p>\r\n\r\n	<p>Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut eros et nisl sagittis vestibulum. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Sed lectus.</p>',1,8,'2021-08-18 03:05:55',42,'','2021-09-27 00:00:00',42,NULL,NULL,'2021-09-27 00:00:00',NULL,'{\"image_intro\":\"images\\/demo\\/blog\\/item-2.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/demo\\/blog\\/item-2.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',7,1,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),
(9,77,'Financial Services Core  Customer Centric Approach','financial-services-core-customer-centric-approach','<p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>\r\n','\r\n<p>Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.</p>\r\n\r\n<h3>Tellus eget condimentum rhoncus</h3>\r\n<p>Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.</p>\r\n\r\n<div class=\"row\">\r\n	<div class=\"col-md-6\">\r\n		<ul>\r\n			<li>Sed fringilla mauris sit amet nibh</li>\r\n			<li>Sed consequat, leo eget bibendum</li>\r\n			<li>Fusce vulputate eleifend</li>\r\n			<li>Sed fringilla mauris sit amet nibh</li>\r\n		</ul>\r\n	</div>\r\n</div>\r\n\r\n<p>Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus.</p>\r\n\r\n<h3>Vestibulum purus quam</h3>\r\n<p>Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu.</p>\r\n\r\n	<p>Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut eros et nisl sagittis vestibulum. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Sed lectus.</p>',1,8,'2021-08-18 03:05:55',42,'','2021-09-27 00:00:00',42,NULL,NULL,'2021-09-27 00:00:00',NULL,'{\"image_intro\":\"images\\/demo\\/blog\\/item-1.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/demo\\/blog\\/item-1.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',8,0,'','',1,12,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),
(10,78,'Typography','typography','<!-- CORE TYPOGRAPHY\r\n	=======================================================-->\r\n<div class=\"core-typo\">\r\n	<div class=\"docs-section\">\r\n		<h2 id=\"headings\"><div>Headings<a class=\"anchorjs-link \" href=\"#headings\" aria-label=\"Anchor\" data-anchorjs-icon=\"#\" style=\"padding-left: 0.375em;\"></a></div></h2>\r\n\r\n		<p>All HTML headings, <code class=\"highlighter-rouge\">&lt;h1&gt;</code> through <code class=\"highlighter-rouge\">&lt;h6&gt;</code>, are available.</p>\r\n\r\n		<table class=\"table table-bordered\">\r\n		  <thead>\r\n		    <tr>\r\n		      <th>Heading</th>\r\n		      <th>Example</th>\r\n		    </tr>\r\n		  </thead>\r\n		  <tbody>\r\n		    <tr>\r\n		      <td>\r\n		        <p><code class=\"highlighter-rouge\">&lt;h1&gt;&lt;/h1&gt;</code></p>\r\n		      </td>\r\n		      <td><span class=\"h1\">h1. Bootstrap heading</span></td>\r\n		    </tr>\r\n		    <tr>\r\n		      <td>\r\n		        <p><code class=\"highlighter-rouge\">&lt;h2&gt;&lt;/h2&gt;</code></p>\r\n\r\n		      </td>\r\n		      <td><span class=\"h2\">h2. Bootstrap heading</span></td>\r\n		    </tr>\r\n		    <tr>\r\n		      <td>\r\n		        <p><code class=\"highlighter-rouge\">&lt;h3&gt;&lt;/h3&gt;</code></p>\r\n\r\n		      </td>\r\n		      <td><span class=\"h3\">h3. Bootstrap heading</span></td>\r\n		    </tr>\r\n		    <tr>\r\n		      <td>\r\n		        <p><code class=\"highlighter-rouge\">&lt;h4&gt;&lt;/h4&gt;</code></p>\r\n\r\n		      </td>\r\n		      <td><span class=\"h4\">h4. Bootstrap heading</span></td>\r\n		    </tr>\r\n		    <tr>\r\n		      <td>\r\n		        <p><code class=\"highlighter-rouge\">&lt;h5&gt;&lt;/h5&gt;</code></p>\r\n\r\n		      </td>\r\n		      <td><span class=\"h5\">h5. Bootstrap heading</span></td>\r\n		    </tr>\r\n		    <tr>\r\n		      <td>\r\n		        <p><code class=\"highlighter-rouge\">&lt;h6&gt;&lt;/h6&gt;</code></p>\r\n\r\n		      </td>\r\n		      <td><span class=\"h6\">h6. Bootstrap heading</span></td>\r\n		    </tr>\r\n		  </tbody>\r\n		</table>\r\n\r\n		<p><code class=\"highlighter-rouge\">.h1</code> through <code class=\"highlighter-rouge\">.h6</code> classes are also available, for when you want to match the font styling of a heading but cannot use the associated HTML element.</p>\r\n\r\n		<div class=\"t4-typo-example\">\r\n		<p class=\"h1\">h1. Bootstrap heading</p>\r\n		<p class=\"h2\">h2. Bootstrap heading</p>\r\n		<p class=\"h3\">h3. Bootstrap heading</p>\r\n		<p class=\"h4\">h4. Bootstrap heading</p>\r\n		<p class=\"h5\">h5. Bootstrap heading</p>\r\n		<p class=\"h6\">h6. Bootstrap heading</p>\r\n		</div>\r\n\r\n		<h3 id=\"customizing-headings\"><div>Customizing headings<a class=\"anchorjs-link \" href=\"#customizing-headings\" aria-label=\"Anchor\" data-anchorjs-icon=\"#\" style=\"padding-left: 0.375em;\"></a></div></h3>\r\n\r\n		<p>Use the included utility classes to recreate the small secondary heading text from Bootstrap 3.</p>\r\n\r\n		<div class=\"t4-typo-example\">\r\n		  <span class=\"h3\">\r\n		    Fancy display heading\r\n		    <small class=\"text-muted\">With faded secondary text</small>\r\n		  </span>\r\n		</div>\r\n\r\n		<h2 id=\"display-headings\"><div>Display headings<a class=\"anchorjs-link \" href=\"#display-headings\" aria-label=\"Anchor\" data-anchorjs-icon=\"#\" style=\"padding-left: 0.375em;\"></a></div></h2>\r\n\r\n		<p>Traditional heading elements are designed to work best in the meat of your page content. When you need a heading to stand out, consider using a <strong>display heading</strong>—a larger, slightly more opinionated heading style.</p>\r\n\r\n	  <table class=\"table table-bordered\">\r\n	    <tbody>\r\n	      <tr>\r\n	        <td><span class=\"display-1\">Display 1</span></td>\r\n	      </tr>\r\n	      <tr>\r\n	      <td><span class=\"display-2\">Display 2</span></td>\r\n	      </tr>\r\n	      <tr>\r\n	      <td><span class=\"display-3\">Display 3</span></td>\r\n	      </tr>\r\n	      <tr>\r\n	      <td><span class=\"display-4\">Display 4</span></td>\r\n	      </tr>\r\n	    </tbody>\r\n	  </table>\r\n\r\n		<h2 id=\"lead\"><div>Lead<a class=\"anchorjs-link \" href=\"#lead\" aria-label=\"Anchor\" data-anchorjs-icon=\"#\" style=\"padding-left: 0.375em;\"></a></div></h2>\r\n\r\n		<p>Make a paragraph stand out by adding <code class=\"highlighter-rouge\">.lead</code>.</p>\r\n\r\n		<div class=\"t4-typo-example\">\r\n		<p class=\"lead\">\r\n		  Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus.\r\n		</p>\r\n		</div>\r\n\r\n		<h2 id=\"inline-text-elements\"><div>Inline text elements<a class=\"anchorjs-link \" href=\"#inline-text-elements\" aria-label=\"Anchor\" data-anchorjs-icon=\"#\" style=\"padding-left: 0.375em;\"></a></div></h2>\r\n\r\n		<p>Styling for common inline HTML5 elements.</p>\r\n\r\n		<div class=\"t4-typo-example\">\r\n		<p>You can use the mark tag to <mark>highlight</mark> text.</p>\r\n		<p><del>This line of text is meant to be treated as deleted text.</del></p>\r\n		<p><s>This line of text is meant to be treated as no longer accurate.</s></p>\r\n		<p><ins>This line of text is meant to be treated as an addition to the document.</ins></p>\r\n		<p><u>This line of text will render as underlined</u></p>\r\n		<p><small>This line of text is meant to be treated as fine print.</small></p>\r\n		<p><strong>This line rendered as bold text.</strong></p>\r\n		<p><em>This line rendered as italicized text.</em></p>\r\n		</div>\r\n\r\n		<p><code class=\"highlighter-rouge\">.mark</code> and <code class=\"highlighter-rouge\">.small</code> classes are also available to apply the same styles as <code class=\"highlighter-rouge\">&lt;mark&gt;</code> and <code class=\"highlighter-rouge\">&lt;small&gt;</code> while avoiding any unwanted semantic implications that the tags would bring.</p>\r\n\r\n		<p>While not shown above, feel free to use <code class=\"highlighter-rouge\">&lt;b&gt;</code> and <code class=\"highlighter-rouge\">&lt;i&gt;</code> in HTML5. <code class=\"highlighter-rouge\">&lt;b&gt;</code> is meant to highlight words or phrases without conveying additional importance while <code class=\"highlighter-rouge\">&lt;i&gt;</code> is mostly for voice, technical terms, etc.</p>\r\n\r\n		<h2 id=\"text-utilities\"><div>Text utilities<a class=\"anchorjs-link \" href=\"#text-utilities\" aria-label=\"Anchor\" data-anchorjs-icon=\"#\" style=\"padding-left: 0.375em;\"></a></div></h2>\r\n\r\n		<p>Change text alignment, transform, style, weight, and color with our <a href=\"#text-utilities-dm\">text utilities</a> and <a href=\"#color-utilities-dm\">color utilities</a>.</p>\r\n\r\n		<h2 id=\"abbreviations\"><div>Abbreviations<a class=\"anchorjs-link \" href=\"#abbreviations\" aria-label=\"Anchor\" data-anchorjs-icon=\"#\" style=\"padding-left: 0.375em;\"></a></div></h2>\r\n\r\n		<p>Stylized implementation of HTML’s <code class=\"highlighter-rouge\">&lt;abbr&gt;</code> element for abbreviations and acronyms to show the expanded version on hover. Abbreviations have a default underline and gain a help cursor to provide additional context on hover and to users of assistive technologies.</p>\r\n\r\n		<p>Add <code class=\"highlighter-rouge\">.initialism</code> to an abbreviation for a slightly smaller font-size.</p>\r\n\r\n		<div class=\"t4-typo-example\">\r\n		<p><abbr title=\"attribute\">attr</abbr></p>\r\n		<p><abbr title=\"HyperText Markup Language\" class=\"initialism\">HTML</abbr></p>\r\n		</div>\r\n\r\n		<h2 id=\"blockquotes\"><div>Blockquotes<a class=\"anchorjs-link \" href=\"#blockquotes\" aria-label=\"Anchor\" data-anchorjs-icon=\"#\" style=\"padding-left: 0.375em;\"></a></div></h2>\r\n\r\n		<p>For quoting blocks of content from another source within your document. Wrap <code class=\"highlighter-rouge\">&lt;blockquote class=\"blockquote\"&gt;</code> around any <abbr title=\"HyperText Markup Language\">HTML</abbr> as the quote.</p>\r\n\r\n		<div class=\"t4-typo-example\">\r\n		<blockquote class=\"blockquote\">\r\n		  <p class=\"mb-0\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>\r\n		</blockquote>\r\n		</div>\r\n\r\n		<h3 id=\"naming-a-source\"><div>Naming a source<a class=\"anchorjs-link \" href=\"#naming-a-source\" aria-label=\"Anchor\" data-anchorjs-icon=\"#\" style=\"padding-left: 0.375em;\"></a></div></h3>\r\n\r\n		<p>Add a <code class=\"highlighter-rouge\">&lt;footer class=\"blockquote-footer\"&gt;</code> for identifying the source. Wrap the name of the source work in <code class=\"highlighter-rouge\">&lt;cite&gt;</code>.</p>\r\n\r\n		<div class=\"t4-typo-example\">\r\n		<blockquote class=\"blockquote\">\r\n		  <p class=\"mb-0\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>\r\n		  <footer class=\"blockquote-footer\">Someone famous in <cite title=\"Source Title\">Source Title</cite></footer>\r\n		</blockquote>\r\n		</div>\r\n\r\n		<h3 id=\"alignment\"><div>Alignment<a class=\"anchorjs-link \" href=\"#alignment\" aria-label=\"Anchor\" data-anchorjs-icon=\"#\" style=\"padding-left: 0.375em;\"></a></div></h3>\r\n\r\n		<p>Use text utilities as needed to change the alignment of your blockquote.</p>\r\n\r\n		<div class=\"t4-typo-example\">\r\n		<blockquote class=\"blockquote text-center\">\r\n		  <p class=\"mb-0\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>\r\n		  <footer class=\"blockquote-footer\">Someone famous in <cite title=\"Source Title\">Source Title</cite></footer>\r\n		</blockquote>\r\n		</div>\r\n\r\n		<div class=\"t4-typo-example\">\r\n		<blockquote class=\"blockquote text-right\">\r\n		  <p class=\"mb-0\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>\r\n		  <footer class=\"blockquote-footer\">Someone famous in <cite title=\"Source Title\">Source Title</cite></footer>\r\n		</blockquote>\r\n		</div>\r\n\r\n		<h2 id=\"lists\"><div>Lists<a class=\"anchorjs-link \" href=\"#lists\" aria-label=\"Anchor\" data-anchorjs-icon=\"#\" style=\"padding-left: 0.375em;\"></a></div></h2>\r\n\r\n		<h3 id=\"unstyled\"><div>Unstyled<a class=\"anchorjs-link \" href=\"#unstyled\" aria-label=\"Anchor\" data-anchorjs-icon=\"#\" style=\"padding-left: 0.375em;\"></a></div></h3>\r\n\r\n		<p>Remove the default <code class=\"highlighter-rouge\">list-style</code> and left margin on list items (immediate children only). <strong>This only applies to immediate children list items</strong>, meaning you will need to add the class for any nested lists as well.</p>\r\n\r\n		<div class=\"t4-typo-example\">\r\n		<ul class=\"list-unstyled\">\r\n		  <li>Lorem ipsum dolor sit amet</li>\r\n		  <li>Consectetur adipiscing elit</li>\r\n		  <li>Integer molestie lorem at massa</li>\r\n		  <li>Facilisis in pretium nisl aliquet</li>\r\n		  <li>Nulla volutpat aliquam velit\r\n		    <ul>\r\n		      <li>Phasellus iaculis neque</li>\r\n		      <li>Purus sodales ultricies</li>\r\n		      <li>Vestibulum laoreet porttitor sem</li>\r\n		      <li>Ac tristique libero volutpat at</li>\r\n		    </ul>\r\n		  </li>\r\n		  <li>Faucibus porta lacus fringilla vel</li>\r\n		  <li>Aenean sit amet erat nunc</li>\r\n		  <li>Eget porttitor lorem</li>\r\n		</ul>\r\n		</div>\r\n\r\n		<h3 id=\"inline\"><div>Inline<a class=\"anchorjs-link \" href=\"#inline\" aria-label=\"Anchor\" data-anchorjs-icon=\"#\" style=\"padding-left: 0.375em;\"></a></div></h3>\r\n\r\n		<p>Remove a list’s bullets and apply some light <code class=\"highlighter-rouge\">margin</code> with a combination of two classes, <code class=\"highlighter-rouge\">.list-inline</code> and <code class=\"highlighter-rouge\">.list-inline-item</code>.</p>\r\n\r\n		<div class=\"t4-typo-example\">\r\n		<ul class=\"list-inline\">\r\n		  <li class=\"list-inline-item\">Lorem ipsum</li>\r\n		  <li class=\"list-inline-item\">Phasellus iaculis</li>\r\n		  <li class=\"list-inline-item\">Nulla volutpat</li>\r\n		</ul>\r\n		</div>\r\n\r\n		<h3 id=\"description-list-alignment\"><div>Description list alignment<a class=\"anchorjs-link \" href=\"#description-list-alignment\" aria-label=\"Anchor\" data-anchorjs-icon=\"#\" style=\"padding-left: 0.375em;\"></a></div></h3>\r\n\r\n		<p>Align terms and descriptions horizontally by using our grid system’s predefined classes (or semantic mixins). For longer terms, you can optionally add a <code class=\"highlighter-rouge\">.text-truncate</code> class to truncate the text with an ellipsis.</p>\r\n\r\n		<div class=\"t4-typo-example\">\r\n		<dl class=\"row\">\r\n		  <dt class=\"col-sm-3\">Description lists</dt>\r\n		  <dd class=\"col-sm-9\">A description list is perfect for defining terms.</dd>\r\n\r\n		  <dt class=\"col-sm-3\">Euismod</dt>\r\n		  <dd class=\"col-sm-9\">\r\n		    <p>Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.</p>\r\n		    <p>Donec id elit non mi porta gravida at eget metus.</p>\r\n		  </dd>\r\n\r\n		  <dt class=\"col-sm-3\">Malesuada porta</dt>\r\n		  <dd class=\"col-sm-9\">Etiam porta sem malesuada magna mollis euismod.</dd>\r\n\r\n		  <dt class=\"col-sm-3 text-truncate\">Truncated term is truncated</dt>\r\n		  <dd class=\"col-sm-9\">Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</dd>\r\n\r\n		  <dt class=\"col-sm-3\">Nesting</dt>\r\n		  <dd class=\"col-sm-9\">\r\n		    <dl class=\"row\">\r\n		      <dt class=\"col-sm-4\">Nested definition list</dt>\r\n		      <dd class=\"col-sm-8\">Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc.</dd>\r\n		    </dl>\r\n		  </dd>\r\n		</dl>\r\n		</div>\r\n\r\n		<h2 id=\"responsive-typography\"><div>Responsive typography<a class=\"anchorjs-link \" href=\"#responsive-typography\" aria-label=\"Anchor\" data-anchorjs-icon=\"#\" style=\"padding-left: 0.375em;\"></a></div></h2>\r\n\r\n		<p><em>Responsive typography</em> refers to scaling text and components by simply adjusting the root element’s <code class=\"highlighter-rouge\">font-size</code> within a series of media queries. Bootstrap doesn’t do this for you, but it’s fairly easy to add if you need it.</p>\r\n\r\n		<p>Here’s an example of it in practice. Choose whatever <code class=\"highlighter-rouge\">font-size</code>s and media queries you wish.</p>\r\n	</div>\r\n\r\n	<div id=\"text-utilities-dm\">\r\n\r\n		<h2 id=\"text-alignment\"><div>Text alignment<a class=\"anchorjs-link \" href=\"#text-alignment\" aria-label=\"Anchor\" data-anchorjs-icon=\"#\" style=\"padding-left: 0.375em;\"></a></div></h2>\r\n\r\n		<p>Easily realign text to components with text alignment classes.</p>\r\n\r\n		<div class=\"t4-typo-example\">\r\n		<p class=\"text-justify\">Ambitioni dedisse scripsisse iudicaretur. Cras mattis iudicium purus sit amet fermentum. Donec sed odio operae, eu vulputate felis rhoncus. Praeterea iter est quasdam res quas ex communi. At nos hinc posthac, sitientis piros Afros. Petierunt uti sibi concilium totius Galliae in diem certam indicere. Cras mattis iudicium purus sit amet fermentum.</p>\r\n		</div>\r\n\r\n		<p>For left, right, and center alignment, responsive classes are available that use the same viewport width breakpoints as the grid system.</p>\r\n\r\n		<div class=\"t4-typo-example\">\r\n		<p class=\"text-left\">Left aligned text on all viewport sizes.</p>\r\n		<p class=\"text-center\">Center aligned text on all viewport sizes.</p>\r\n		<p class=\"text-right\">Right aligned text on all viewport sizes.</p>\r\n\r\n		<p class=\"text-sm-left\">Left aligned text on viewports sized SM (small) or wider.</p>\r\n		<p class=\"text-md-left\">Left aligned text on viewports sized MD (medium) or wider.</p>\r\n		<p class=\"text-lg-left\">Left aligned text on viewports sized LG (large) or wider.</p>\r\n		<p class=\"text-xl-left\">Left aligned text on viewports sized XL (extra-large) or wider.</p>\r\n		</div>\r\n\r\n		<h2 id=\"text-wrapping-and-overflow\"><div>Text wrapping and overflow<a class=\"anchorjs-link \" href=\"#text-wrapping-and-overflow\" aria-label=\"Anchor\" data-anchorjs-icon=\"#\" style=\"padding-left: 0.375em;\"></a></div></h2>\r\n\r\n		<p>Prevent text from wrapping with a <code class=\"highlighter-rouge\">.text-nowrap</code> class.</p>\r\n\r\n		<div class=\"t4-typo-example\">\r\n		<div class=\"text-nowrap bd-highlight\" style=\"width: 8rem;\">\r\n		  This text should overflow the parent.\r\n		</div>\r\n		</div>\r\n\r\n		<p>For longer content, you can add a <code class=\"highlighter-rouge\">.text-truncate</code> class to truncate the text with an ellipsis. <strong>Requires <code class=\"highlighter-rouge\">display: inline-block</code> or <code class=\"highlighter-rouge\">display: block</code>.</strong></p>\r\n\r\n		<div class=\"t4-typo-example\">\r\n		<!-- Block level -->\r\n		<div class=\"row\">\r\n		  <div class=\"col-2 text-truncate\">\r\n		    Praeterea iter est quasdam res quas ex communi.\r\n		  </div>\r\n		</div>\r\n\r\n		<!-- Inline level -->\r\n		<span class=\"d-inline-block text-truncate\" style=\"max-width: 150px;\">\r\n		  Praeterea iter est quasdam res quas ex communi.\r\n		</span>\r\n		</div>\r\n\r\n		<h2 id=\"text-transform\"><div>Text transform<a class=\"anchorjs-link \" href=\"#text-transform\" aria-label=\"Anchor\" data-anchorjs-icon=\"#\" style=\"padding-left: 0.375em;\"></a></div></h2>\r\n\r\n		<p>Transform text in components with text capitalization classes.</p>\r\n\r\n		<div class=\"t4-typo-example\">\r\n		<p class=\"text-lowercase\">Lowercased text.</p>\r\n		<p class=\"text-uppercase\">Uppercased text.</p>\r\n		<p class=\"text-capitalize\">CapiTaliZed text.</p>\r\n		</div>\r\n\r\n		<p>Note how <code class=\"highlighter-rouge\">text-capitalize</code> only changes the first letter of each word, leaving the case of any other letters unaffected.</p>\r\n\r\n		<h2 id=\"font-weight-and-italics\"><div>Font weight and italics<a class=\"anchorjs-link \" href=\"#font-weight-and-italics\" aria-label=\"Anchor\" data-anchorjs-icon=\"#\" style=\"padding-left: 0.375em;\"></a></div></h2>\r\n\r\n		<p>Quickly change the weight (boldness) of text or italicize text.</p>\r\n\r\n		<div class=\"t4-typo-example\">\r\n			<div class=\"row\">\r\n				<div class=\"col-md-6\">\r\n					<p class=\"font-weight-bold\">Bold text.</p>\r\n					<p class=\"font-weight-normal\">Normal weight text.</p>\r\n				</div>\r\n				<div class=\"col-md-6\">\r\n					<p class=\"font-weight-light\">Light weight text.</p>\r\n					<p class=\"font-italic\">Italic text.</p>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n\r\n	<div id=\"text-color-dm\">\r\n		<div class=\"t4-typo-example\">\r\n			<div class=\"row\">\r\n				<div class=\"col-md-6\">\r\n					<p class=\"text-primary\">.text-primary</p>\r\n					<p class=\"text-secondary\">.text-secondary</p>\r\n					<p class=\"text-success\">.text-success</p>\r\n					<p class=\"text-danger\">.text-danger</p>\r\n					<p class=\"text-warning\">.text-warning</p>\r\n				</div>\r\n				<div class=\"col-md-6\">\r\n					<p class=\"text-info\">.text-info</p>\r\n					<p class=\"text-light bg-dark\">.text-light</p>\r\n					<p class=\"text-dark\">.text-dark</p>\r\n					<p class=\"text-muted\">.text-muted</p>\r\n					<p class=\"text-white bg-dark\">.text-white</p>\r\n				</div>\r\n			</div>\r\n		</div>\r\n\r\n		<p>Contextual text classes also work well on anchors with the provided hover and focus states. <strong>Note that the <code class=\"highlighter-rouge\">.text-white</code> and <code class=\"highlighter-rouge\">.text-muted</code> class has no link styling.</strong></p>\r\n\r\n		<div class=\"t4-typo-example\">\r\n			<div class=\"row\">\r\n				<div class=\"col-md-6\">\r\n					<p><a href=\"#\" class=\"text-primary\">Primary link</a></p>\r\n					<p><a href=\"#\" class=\"text-secondary\">Secondary link</a></p>\r\n					<p><a href=\"#\" class=\"text-success\">Success link</a></p>\r\n					<p><a href=\"#\" class=\"text-danger\">Danger link</a></p>\r\n					<p><a href=\"#\" class=\"text-warning\">Warning link</a></p>\r\n				</div>\r\n				<div class=\"col-md-6\">\r\n					<p><a href=\"#\" class=\"text-info\">Info link</a></p>\r\n					<p><a href=\"#\" class=\"text-light bg-dark\">Light link</a></p>\r\n					<p><a href=\"#\" class=\"text-dark\">Dark link</a></p>\r\n					<p><a href=\"#\" class=\"text-muted\">Muted link</a></p>\r\n					<p><a href=\"#\" class=\"text-white bg-dark\">White link</a></p>\r\n				</div>\r\n			</div>\r\n		</div>\r\n\r\n			<h2 id=\"background-color\"><div>Background color<a class=\"anchorjs-link \" href=\"#background-color\" aria-label=\"Anchor\" data-anchorjs-icon=\"#\" style=\"padding-left: 0.375em;\"></a></div></h2>\r\n\r\n			<p>Similar to the contextual text color classes, easily set the background of an element to any contextual class. Anchor components will darken on hover, just like the text classes. Background utilities <strong>do not set <code class=\"highlighter-rouge\">color</code></strong>, so in some cases you’ll want to use <code class=\"highlighter-rouge\">.text-*</code> utilities.</p>\r\n\r\n			<div class=\"t4-typo-example\">\r\n			<div class=\"p-3 mb-2 bg-primary text-white\">.bg-primary</div>\r\n			<div class=\"p-3 mb-2 bg-secondary text-white\">.bg-secondary</div>\r\n			<div class=\"p-3 mb-2 bg-success text-white\">.bg-success</div>\r\n			<div class=\"p-3 mb-2 bg-danger text-white\">.bg-danger</div>\r\n			<div class=\"p-3 mb-2 bg-warning text-dark\">.bg-warning</div>\r\n			<div class=\"p-3 mb-2 bg-info text-white\">.bg-info</div>\r\n			<div class=\"p-3 mb-2 bg-light text-dark\">.bg-light</div>\r\n			<div class=\"p-3 mb-2 bg-dark text-white\">.bg-dark</div>\r\n			<div class=\"p-3 mb-2 bg-white text-dark\">.bg-white</div>\r\n			</div>\r\n\r\n			<div class=\"bd-callout bd-callout-info\">\r\n			<h4 id=\"dealing-with-specificity\">Dealing with specificity</h4>\r\n\r\n			<p>Sometimes contextual classes cannot be applied due to the specificity of another selector. In some cases, a sufficient workaround is to wrap your element’s content in a <code class=\"highlighter-rouge\">&lt;div&gt;</code> with the class.</p>\r\n			</div>\r\n\r\n			<div class=\"bd-callout bd-callout-warning\">\r\n			<h5 id=\"conveying-meaning-to-assistive-technologies\">Conveying meaning to assistive technologies</h5>\r\n\r\n			<p>Using color to add meaning only provides a visual indication, which will not be conveyed to users of assistive technologies – such as screen readers. Ensure that information denoted by the color is either obvious from the content itself (e.g. the visible text), or is included through alternative means, such as additional text hidden with the <code class=\"highlighter-rouge\">.sr-only</code> class.</p>\r\n			</div>\r\n	</div>\r\n</div>','',1,2,'2021-08-18 03:05:55',42,'','2021-09-27 00:00:00',42,NULL,NULL,'2021-09-27 00:00:00',NULL,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',68,0,'','',1,106,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(11,88,'172 N Jean Street','172-n-jean-street','<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>\r\n','\r\n<p>It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>\r\n\r\n<p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n\r\n<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way. On her way she met a copy.</p>\r\n\r\n<p>The copy warned the Little Blind Text, that where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word \"and\" and the Little Blind Text should turn around and return to its own, safe country. But nothing the copy said could convince her and so it didn’t take long until a few insidious Copy Writers ambushed her, made her drunk with Longe and Parole and dragged her into their agency, where they abused her for their projects again and again.</p>\r\n\r\n<p>And if she hasn’t been rewritten, then they are still using her. Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One</p>',1,9,'2021-08-18 03:05:55',42,'','2021-09-27 00:00:00',42,NULL,NULL,'2021-09-27 00:00:00',NULL,'{\"image_intro\":\"images\\/demo\\/projects\\/item-1.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/demo\\/projects\\/item-1.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,7,'','',1,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(12,89,'820 Wenzel Lane','820-wenzel-lane','<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>\r\n','\r\n<p>It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>\r\n\r\n<p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n\r\n<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way. On her way she met a copy.</p>\r\n\r\n<p>The copy warned the Little Blind Text, that where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word \"and\" and the Little Blind Text should turn around and return to its own, safe country. But nothing the copy said could convince her and so it didn’t take long until a few insidious Copy Writers ambushed her, made her drunk with Longe and Parole and dragged her into their agency, where they abused her for their projects again and again.</p>\r\n\r\n<p>And if she hasn’t been rewritten, then they are still using her. Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One</p>',1,9,'2021-08-18 03:05:55',42,'','2021-09-27 00:00:00',42,NULL,NULL,'2021-09-27 00:00:00',NULL,'{\"image_intro\":\"images\\/demo\\/projects\\/item-2.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/demo\\/projects\\/item-2.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,6,'','',1,4,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(13,90,'672 S Milward Ave','672-s-milward-ave','<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>\r\n','\r\n<p>It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>\r\n\r\n<p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n\r\n<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way. On her way she met a copy.</p>\r\n\r\n<p>The copy warned the Little Blind Text, that where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word \"and\" and the Little Blind Text should turn around and return to its own, safe country. But nothing the copy said could convince her and so it didn’t take long until a few insidious Copy Writers ambushed her, made her drunk with Longe and Parole and dragged her into their agency, where they abused her for their projects again and again.</p>\r\n\r\n<p>And if she hasn’t been rewritten, then they are still using her. Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One</p>',1,9,'2021-08-18 03:05:55',42,'','2021-09-27 00:00:00',42,NULL,NULL,'2021-09-27 00:00:00',NULL,'{\"image_intro\":\"images\\/demo\\/projects\\/item-3.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/demo\\/projects\\/item-3.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,5,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(14,91,'665 S. Glenwood Street','665-s-glenwood-street','<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>\r\n','\r\n<p>It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>\r\n\r\n<p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n\r\n<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way. On her way she met a copy.</p>\r\n\r\n<p>The copy warned the Little Blind Text, that where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word \"and\" and the Little Blind Text should turn around and return to its own, safe country. But nothing the copy said could convince her and so it didn’t take long until a few insidious Copy Writers ambushed her, made her drunk with Longe and Parole and dragged her into their agency, where they abused her for their projects again and again.</p>\r\n\r\n<p>And if she hasn’t been rewritten, then they are still using her. Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One</p>',1,9,'2021-08-18 03:05:55',42,'','2021-09-27 00:00:00',42,NULL,NULL,'2021-09-27 00:00:00',NULL,'{\"image_intro\":\"images\\/demo\\/projects\\/item-4.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/demo\\/projects\\/item-4.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,4,'','',1,13,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(15,92,'Maintenance Office','maintenance-office','<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>\r\n','\r\n<p>It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>\r\n\r\n<p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n\r\n<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way. On her way she met a copy.</p>\r\n\r\n<p>The copy warned the Little Blind Text, that where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word \"and\" and the Little Blind Text should turn around and return to its own, safe country. But nothing the copy said could convince her and so it didn’t take long until a few insidious Copy Writers ambushed her, made her drunk with Longe and Parole and dragged her into their agency, where they abused her for their projects again and again.</p>\r\n\r\n<p>And if she hasn’t been rewritten, then they are still using her. Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One</p>',1,9,'2021-08-18 03:05:55',42,'','2021-09-27 00:00:00',42,NULL,NULL,'2021-09-27 00:00:00',NULL,'{\"image_intro\":\"images\\/demo\\/projects\\/item-5.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/demo\\/projects\\/item-5.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,3,'','',1,4,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(16,93,'St James’s Market','st-james-s-market','<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>\r\n','\r\n<p>It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>\r\n\r\n<p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n\r\n<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way. On her way she met a copy.</p>\r\n\r\n<p>The copy warned the Little Blind Text, that where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word \"and\" and the Little Blind Text should turn around and return to its own, safe country. But nothing the copy said could convince her and so it didn’t take long until a few insidious Copy Writers ambushed her, made her drunk with Longe and Parole and dragged her into their agency, where they abused her for their projects again and again.</p>\r\n\r\n<p>And if she hasn’t been rewritten, then they are still using her. Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One</p>',1,9,'2021-08-18 03:05:55',42,'','2021-09-27 00:00:00',42,NULL,NULL,'2021-09-27 00:00:00',NULL,'{\"image_intro\":\"images\\/demo\\/projects\\/item-6.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/demo\\/projects\\/item-6.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,2,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(17,94,'One Bennett Park','one-bennett-park','<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>\r\n','\r\n<p>It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>\r\n\r\n<p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n\r\n<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way. On her way she met a copy.</p>\r\n\r\n<p>The copy warned the Little Blind Text, that where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word \"and\" and the Little Blind Text should turn around and return to its own, safe country. But nothing the copy said could convince her and so it didn’t take long until a few insidious Copy Writers ambushed her, made her drunk with Longe and Parole and dragged her into their agency, where they abused her for their projects again and again.</p>\r\n\r\n<p>And if she hasn’t been rewritten, then they are still using her. Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One</p>',1,9,'2021-08-18 03:05:55',42,'','2021-09-27 00:00:00',42,NULL,NULL,'2021-09-27 00:00:00',NULL,'{\"image_intro\":\"images\\/demo\\/projects\\/item-7.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/demo\\/projects\\/item-7.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,1,'','',1,27,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(18,95,'Financial Tombstones','financial-tombstones','<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>\r\n','\r\n<p>It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>\r\n\r\n<p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>\r\n\r\n<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way. On her way she met a copy.</p>\r\n\r\n<p>The copy warned the Little Blind Text, that where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word \"and\" and the Little Blind Text should turn around and return to its own, safe country. But nothing the copy said could convince her and so it didn’t take long until a few insidious Copy Writers ambushed her, made her drunk with Longe and Parole and dragged her into their agency, where they abused her for their projects again and again.</p>\r\n\r\n<p>And if she hasn’t been rewritten, then they are still using her. Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One</p>',1,9,'2021-08-18 03:05:55',42,'','2021-09-27 00:00:00',42,NULL,NULL,'2021-09-27 00:00:00',NULL,'{\"image_intro\":\"images\\/demo\\/projects\\/item-8.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/demo\\/projects\\/item-8.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
/*!40000 ALTER TABLE `q91ut_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_content_frontpage`
--

DROP TABLE IF EXISTS `q91ut_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `featured_up` datetime DEFAULT NULL,
  `featured_down` datetime DEFAULT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_content_frontpage`
--

LOCK TABLES `q91ut_content_frontpage` WRITE;
/*!40000 ALTER TABLE `q91ut_content_frontpage` DISABLE KEYS */;
INSERT INTO `q91ut_content_frontpage` VALUES
(6,1,NULL,NULL),
(7,2,NULL,NULL),
(8,3,NULL,NULL),
(9,4,NULL,NULL);
/*!40000 ALTER TABLE `q91ut_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_content_rating`
--

DROP TABLE IF EXISTS `q91ut_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `rating_sum` int(10) unsigned NOT NULL DEFAULT 0,
  `rating_count` int(10) unsigned NOT NULL DEFAULT 0,
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_content_rating`
--

LOCK TABLES `q91ut_content_rating` WRITE;
/*!40000 ALTER TABLE `q91ut_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_content_types`
--

DROP TABLE IF EXISTS `q91ut_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(400) NOT NULL DEFAULT '',
  `table` varchar(2048) NOT NULL DEFAULT '',
  `rules` mediumtext NOT NULL,
  `field_mappings` mediumtext NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_content_types`
--

LOCK TABLES `q91ut_content_types` WRITE;
/*!40000 ALTER TABLE `q91ut_content_types` DISABLE KEYS */;
INSERT INTO `q91ut_content_types` VALUES
(1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"ArticleTable\",\"prefix\":\"Joomla\\\\Component\\\\Content\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\", \"note\":\"note\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"ContactTable\",\"prefix\":\"Joomla\\\\Component\\\\Contact\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"NewsfeedTable\",\"prefix\":\"Joomla\\\\Component\\\\Newsfeeds\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"UserTable\",\"prefix\":\"Joomla\\\\Component\\\\Users\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerDate\",\"core_modified_time\":\"null\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','',''),
(5,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"TagTable\",\"prefix\":\"Joomla\\\\Component\\\\Tags\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"BannerTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"ClientTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"NoteTable\",\"prefix\":\"Joomla\\\\Component\\\\Users\\\\Administrator\\\\Table\\\\\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
/*!40000 ALTER TABLE `q91ut_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_contentitem_tag_map`
--

DROP TABLE IF EXISTS `q91ut_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_contentitem_tag_map`
--

LOCK TABLES `q91ut_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `q91ut_contentitem_tag_map` DISABLE KEYS */;
INSERT INTO `q91ut_contentitem_tag_map` VALUES
('com_content.article',1,1,2,'2021-08-17 20:05:55',1),
('com_content.article',5,6,2,'2021-08-17 20:05:55',1),
('com_content.article',5,6,3,'2021-08-17 20:05:55',1),
('com_content.article',5,6,4,'2021-08-17 20:05:55',1),
('com_content.article',4,7,2,'2021-08-17 20:05:55',1),
('com_content.article',4,7,3,'2021-08-17 20:05:55',1),
('com_content.article',4,7,4,'2021-08-17 20:05:55',1),
('com_content.article',3,8,2,'2021-08-17 20:05:55',1),
('com_content.article',3,8,3,'2021-08-17 20:05:55',1),
('com_content.article',3,8,4,'2021-08-17 20:05:55',1),
('com_content.article',2,9,2,'2021-08-17 20:05:55',1),
('com_content.article',2,9,3,'2021-08-17 20:05:55',1),
('com_content.article',2,9,4,'2021-08-17 20:05:55',1);
/*!40000 ALTER TABLE `q91ut_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_core_log_searches`
--

DROP TABLE IF EXISTS `q91ut_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_core_log_searches`
--

LOCK TABLES `q91ut_core_log_searches` WRITE;
/*!40000 ALTER TABLE `q91ut_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_extensions`
--

DROP TABLE IF EXISTS `q91ut_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `changelogurl` text DEFAULT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT 0,
  `access` int(10) unsigned NOT NULL DEFAULT 1,
  `protected` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Flag to indicate if the extension is protected. Protected extensions cannot be disabled.',
  `manifest_cache` mediumtext NOT NULL,
  `params` mediumtext NOT NULL,
  `custom_data` mediumtext NOT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT 0,
  `state` int(11) DEFAULT 0,
  `note` varchar(255) DEFAULT NULL,
  `locked` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Flag to indicate if the extension is locked. Locked extensions cannot be uninstalled.',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10092 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_extensions`
--

LOCK TABLES `q91ut_extensions` WRITE;
/*!40000 ALTER TABLE `q91ut_extensions` DISABLE KEYS */;
INSERT INTO `q91ut_extensions` VALUES
(2,0,'com_wrapper','component','com_wrapper',NULL,'',1,1,1,0,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Wrapper\",\"filename\":\"wrapper\"}','','',NULL,NULL,0,0,NULL,1),
(3,0,'com_admin','component','com_admin',NULL,'',1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Admin\"}','','',NULL,NULL,0,0,NULL,1),
(4,0,'com_banners','component','com_banners',NULL,'',1,1,1,0,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Banners\",\"filename\":\"banners\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','',NULL,NULL,0,0,NULL,1),
(5,0,'com_cache','component','com_cache',NULL,'',1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Cache\"}','','',NULL,NULL,0,0,NULL,1),
(6,0,'com_categories','component','com_categories',NULL,'',1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"2007-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Categories\"}','','',NULL,NULL,0,0,NULL,1),
(7,0,'com_checkin','component','com_checkin',NULL,'',1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Checkin\"}','','',NULL,NULL,0,0,NULL,1),
(8,0,'com_contact','component','com_contact',NULL,'',1,1,1,0,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Contact\",\"filename\":\"contact\"}','{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}','',NULL,NULL,0,0,NULL,1),
(9,0,'com_cpanel','component','com_cpanel',NULL,'',1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"2007-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Cpanel\"}','','',NULL,NULL,0,0,NULL,1),
(10,0,'com_installer','component','com_installer',NULL,'',1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Installer\"}','{\"show_jed_info\":\"1\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}','',NULL,NULL,0,0,NULL,1),
(11,0,'com_languages','component','com_languages',NULL,'',1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Languages\"}','{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}','',NULL,NULL,0,0,NULL,1),
(12,0,'com_login','component','com_login',NULL,'',1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Login\"}','','',NULL,NULL,0,0,NULL,1),
(13,0,'com_media','component','com_media',NULL,'',1,1,0,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Media\",\"filename\":\"media\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','',NULL,NULL,0,0,NULL,1),
(14,0,'com_menus','component','com_menus',NULL,'',1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Menus\",\"filename\":\"menus\"}','{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}','',NULL,NULL,0,0,NULL,1),
(15,0,'com_messages','component','com_messages',NULL,'',1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Messages\"}','','',NULL,NULL,0,0,NULL,1),
(16,0,'com_modules','component','com_modules',NULL,'',1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Modules\",\"filename\":\"modules\"}','','',NULL,NULL,0,0,NULL,1),
(17,0,'com_newsfeeds','component','com_newsfeeds',NULL,'',1,1,1,0,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}','',NULL,NULL,0,0,NULL,1),
(18,0,'com_plugins','component','com_plugins',NULL,'',1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Plugins\"}','','',NULL,NULL,0,0,NULL,1),
(20,0,'com_templates','component','com_templates',NULL,'',1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Templates\"}','{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\",\"difference\":\"SideBySide\"}','',NULL,NULL,0,0,NULL,1),
(22,0,'com_content','component','com_content',NULL,'',1,1,0,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Content\",\"filename\":\"content\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"info_block_show_title\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"0\",\"flags\":\"1\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_tags\":\"1\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"0\",\"show_hits\":\"1\",\"record_hits\":\"1\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"captcha\":\"\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_heading_title_text\":\"1\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}','',NULL,NULL,0,0,NULL,1),
(23,0,'com_config','component','com_config',NULL,'',1,1,0,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Config\",\"filename\":\"config\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','',NULL,NULL,0,0,NULL,1),
(24,0,'com_redirect','component','com_redirect',NULL,'',1,1,0,0,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Redirect\"}','','',NULL,NULL,0,0,NULL,1),
(25,0,'com_users','component','com_users',NULL,'',1,1,0,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Users\",\"filename\":\"users\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"domains\":\"\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"minimum_lowercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\",\"debugUsers\":\"1\",\"debugGroups\":\"1\",\"sef_advanced\":0,\"custom_fields_enable\":\"1\"}','',NULL,NULL,0,0,NULL,1),
(27,0,'com_finder','component','com_finder',NULL,'',1,1,0,0,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Finder\",\"filename\":\"finder\"}','{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}','',NULL,NULL,0,0,NULL,1),
(28,0,'com_joomlaupdate','component','com_joomlaupdate',NULL,'',1,1,0,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.3\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Joomlaupdate\"}','{\"updatesource\":\"next\",\"minimum_stability\":\"4\",\"customurl\":\"\",\"versioncheck\":\"1\",\"backupcheck\":\"1\"}','',NULL,NULL,0,0,NULL,1),
(29,0,'com_tags','component','com_tags',NULL,'',1,1,1,0,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"2013-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Tags\",\"filename\":\"tags\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_description\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','',NULL,NULL,0,0,NULL,1),
(30,0,'com_contenthistory','component','com_contenthistory',NULL,'',1,1,1,0,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"2013-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Contenthistory\",\"filename\":\"contenthistory\"}','','',NULL,NULL,0,0,NULL,1),
(31,0,'com_ajax','component','com_ajax',NULL,'',1,1,1,1,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"2013-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}','','',NULL,NULL,0,0,NULL,1),
(32,0,'com_postinstall','component','com_postinstall',NULL,'',1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"2013-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Postinstall\"}','','',NULL,NULL,0,0,NULL,1),
(33,0,'com_fields','component','com_fields',NULL,'',1,1,1,0,'{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Fields\",\"filename\":\"fields\"}','','',NULL,NULL,0,0,NULL,1),
(34,0,'com_associations','component','com_associations',NULL,'',1,1,1,0,'{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Associations\"}','','',NULL,NULL,0,0,NULL,1),
(35,0,'com_privacy','component','com_privacy',NULL,'',1,1,1,0,'{\"name\":\"com_privacy\",\"type\":\"component\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Privacy\",\"filename\":\"privacy\"}','','',NULL,NULL,0,0,NULL,1),
(36,0,'com_actionlogs','component','com_actionlogs',NULL,'',1,1,1,0,'{\"name\":\"com_actionlogs\",\"type\":\"component\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Actionlogs\"}','{\"ip_logging\":0,\"csv_delimiter\":\",\",\"loggable_extensions\":[\"com_banners\",\"com_cache\",\"com_categories\",\"com_checkin\",\"com_config\",\"com_contact\",\"com_content\",\"com_installer\",\"com_media\",\"com_menus\",\"com_messages\",\"com_modules\",\"com_newsfeeds\",\"com_plugins\",\"com_redirect\",\"com_tags\",\"com_templates\",\"com_users\"]}','',NULL,NULL,0,0,NULL,1),
(103,0,'lib_joomla','library','joomla',NULL,'',0,1,1,1,'{\"name\":\"lib_joomla\",\"type\":\"library\",\"creationDate\":\"2008-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"mediaversion\":\"5769f8d7cab9073548213a0f5bae736f\"}','',NULL,NULL,0,0,NULL,1),
(106,0,'lib_phpass','library','phpass',NULL,'',0,1,1,1,'{\"name\":\"lib_phpass\",\"type\":\"library\",\"creationDate\":\"2004-01\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"https:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}','','',NULL,NULL,0,0,NULL,1),
(200,0,'mod_articles_archive','module','mod_articles_archive',NULL,'',0,1,1,0,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesArchive\",\"filename\":\"mod_articles_archive\"}','','',NULL,NULL,0,0,NULL,1),
(201,0,'mod_articles_latest','module','mod_articles_latest',NULL,'',0,1,1,0,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesLatest\",\"filename\":\"mod_articles_latest\"}','','',NULL,NULL,0,0,NULL,1),
(202,0,'mod_articles_popular','module','mod_articles_popular',NULL,'',0,1,1,0,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesPopular\",\"filename\":\"mod_articles_popular\"}','','',NULL,NULL,0,0,NULL,1),
(203,0,'mod_banners','module','mod_banners',NULL,'',0,1,1,0,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Banners\",\"filename\":\"mod_banners\"}','','',NULL,NULL,0,0,NULL,1),
(204,0,'mod_breadcrumbs','module','mod_breadcrumbs',NULL,'',0,1,1,0,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Breadcrumbs\",\"filename\":\"mod_breadcrumbs\"}','','',NULL,NULL,0,0,NULL,1),
(205,0,'mod_custom','module','mod_custom',NULL,'',0,1,1,0,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Custom\",\"filename\":\"mod_custom\"}','','',NULL,NULL,0,0,NULL,1),
(206,0,'mod_feed','module','mod_feed',NULL,'',0,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"2005-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Feed\",\"filename\":\"mod_feed\"}','','',NULL,NULL,0,0,NULL,1),
(207,0,'mod_footer','module','mod_footer',NULL,'',0,1,1,0,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Footer\",\"filename\":\"mod_footer\"}','','',NULL,NULL,0,0,NULL,1),
(208,0,'mod_login','module','mod_login',NULL,'',0,1,1,0,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Login\",\"filename\":\"mod_login\"}','','',NULL,NULL,0,0,NULL,1),
(209,0,'mod_menu','module','mod_menu',NULL,'',0,1,1,0,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Menu\",\"filename\":\"mod_menu\"}','','',NULL,NULL,0,0,NULL,1),
(210,0,'mod_articles_news','module','mod_articles_news',NULL,'',0,1,1,0,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesNews\",\"filename\":\"mod_articles_news\"}','','',NULL,NULL,0,0,NULL,1),
(211,0,'mod_random_image','module','mod_random_image',NULL,'',0,1,1,0,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\RandomImage\",\"filename\":\"mod_random_image\"}','','',NULL,NULL,0,0,NULL,1),
(212,0,'mod_related_items','module','mod_related_items',NULL,'',0,1,1,0,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\RelatedItems\",\"filename\":\"mod_related_items\"}','','',NULL,NULL,0,0,NULL,1),
(214,0,'mod_stats','module','mod_stats',NULL,'',0,1,1,0,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Stats\",\"filename\":\"mod_stats\"}','','',NULL,NULL,0,0,NULL,1),
(215,0,'mod_syndicate','module','mod_syndicate',NULL,'',0,1,1,0,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"2006-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Syndicate\",\"filename\":\"mod_syndicate\"}','','',NULL,NULL,0,0,NULL,1),
(216,0,'mod_users_latest','module','mod_users_latest',NULL,'',0,1,1,0,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"2009-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\UsersLatest\",\"filename\":\"mod_users_latest\"}','','',NULL,NULL,0,0,NULL,1),
(218,0,'mod_whosonline','module','mod_whosonline',NULL,'',0,1,1,0,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Whosonline\",\"filename\":\"mod_whosonline\"}','','',NULL,NULL,0,0,NULL,1),
(219,0,'mod_wrapper','module','mod_wrapper',NULL,'',0,1,1,0,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"2004-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Wrapper\",\"filename\":\"mod_wrapper\"}','','',NULL,NULL,0,0,NULL,1),
(220,0,'mod_articles_category','module','mod_articles_category',NULL,'',0,1,1,0,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesCategory\",\"filename\":\"mod_articles_category\"}','','',NULL,NULL,0,0,NULL,1),
(221,0,'mod_articles_categories','module','mod_articles_categories',NULL,'',0,1,1,0,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesCategories\",\"filename\":\"mod_articles_categories\"}','','',NULL,NULL,0,0,NULL,1),
(222,0,'mod_languages','module','mod_languages',NULL,'',0,1,1,0,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Languages\",\"filename\":\"mod_languages\"}','','',NULL,NULL,0,0,NULL,1),
(223,0,'mod_finder','module','mod_finder',NULL,'',0,1,0,0,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Finder\",\"filename\":\"mod_finder\"}','','',NULL,NULL,0,0,NULL,1),
(300,0,'mod_custom','module','mod_custom',NULL,'',1,1,1,0,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Custom\",\"filename\":\"mod_custom\"}','','',NULL,NULL,0,0,NULL,1),
(301,0,'mod_feed','module','mod_feed',NULL,'',1,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"2005-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Feed\",\"filename\":\"mod_feed\"}','','',NULL,NULL,0,0,NULL,1),
(302,0,'mod_latest','module','mod_latest',NULL,'',1,1,1,0,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Latest\",\"filename\":\"mod_latest\"}','','',NULL,NULL,0,0,NULL,1),
(303,0,'mod_logged','module','mod_logged',NULL,'',1,1,1,0,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"2005-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Logged\",\"filename\":\"mod_logged\"}','','',NULL,NULL,0,0,NULL,1),
(304,0,'mod_login','module','mod_login',NULL,'',1,1,1,0,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"2005-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Login\",\"filename\":\"mod_login\"}','','',NULL,NULL,0,0,NULL,1),
(305,0,'mod_menu','module','mod_menu',NULL,'',1,1,1,0,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"2006-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Menu\",\"filename\":\"mod_menu\"}','','',NULL,NULL,0,0,NULL,1),
(307,0,'mod_popular','module','mod_popular',NULL,'',1,1,1,0,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Popular\",\"filename\":\"mod_popular\"}','','',NULL,NULL,0,0,NULL,1),
(308,0,'mod_quickicon','module','mod_quickicon',NULL,'',1,1,1,0,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Quickicon\",\"filename\":\"mod_quickicon\"}','','',NULL,NULL,0,0,NULL,1),
(311,0,'mod_title','module','mod_title',NULL,'',1,1,1,0,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Title\",\"filename\":\"mod_title\"}','','',NULL,NULL,0,0,NULL,1),
(312,0,'mod_toolbar','module','mod_toolbar',NULL,'',1,1,1,0,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Toolbar\",\"filename\":\"mod_toolbar\"}','','',NULL,NULL,0,0,NULL,1),
(313,0,'mod_multilangstatus','module','mod_multilangstatus',NULL,'',1,1,1,0,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"2011-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\MultilangStatus\",\"filename\":\"mod_multilangstatus\"}','{\"cache\":\"0\"}','',NULL,NULL,0,0,NULL,1),
(314,0,'mod_version','module','mod_version',NULL,'',1,1,1,0,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"2012-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Version\",\"filename\":\"mod_version\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','',NULL,NULL,0,0,NULL,1),
(315,0,'mod_stats_admin','module','mod_stats_admin',NULL,'',1,1,1,0,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\StatsAdmin\",\"filename\":\"mod_stats_admin\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','',NULL,NULL,0,0,NULL,1),
(316,0,'mod_tags_popular','module','mod_tags_popular',NULL,'',0,1,1,0,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"2013-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\TagsPopular\",\"filename\":\"mod_tags_popular\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','',NULL,NULL,0,0,NULL,1),
(317,0,'mod_tags_similar','module','mod_tags_similar',NULL,'',0,1,1,0,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"2013-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\TagsSimilar\",\"filename\":\"mod_tags_similar\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','',NULL,NULL,0,0,NULL,1),
(318,0,'mod_sampledata','module','mod_sampledata',NULL,'',1,1,1,0,'{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"2017-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Sampledata\",\"filename\":\"mod_sampledata\"}','{}','',NULL,NULL,0,0,NULL,1),
(319,0,'mod_latestactions','module','mod_latestactions',NULL,'',1,1,1,0,'{\"name\":\"mod_latestactions\",\"type\":\"module\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_LATESTACTIONS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\LatestActions\",\"filename\":\"mod_latestactions\"}','{}','',NULL,NULL,0,0,NULL,1),
(320,0,'mod_privacy_dashboard','module','mod_privacy_dashboard',NULL,'',1,1,1,0,'{\"name\":\"mod_privacy_dashboard\",\"type\":\"module\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PrivacyDashboard\",\"filename\":\"mod_privacy_dashboard\"}','{}','',NULL,NULL,0,0,NULL,1),
(401,0,'plg_authentication_joomla','plugin','joomla',NULL,'authentication',0,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Joomla\",\"filename\":\"joomla\"}','','',NULL,NULL,0,0,NULL,1),
(402,0,'plg_authentication_ldap','plugin','ldap',NULL,'authentication',0,0,1,0,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Ldap\",\"filename\":\"ldap\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','',NULL,NULL,3,0,NULL,1),
(403,0,'plg_content_contact','plugin','contact',NULL,'content',0,1,1,0,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"2014-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2014 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Contact\",\"filename\":\"contact\"}','','',NULL,NULL,1,0,NULL,1),
(404,0,'plg_content_emailcloak','plugin','emailcloak',NULL,'content',0,1,1,0,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\EmailCloak\",\"filename\":\"emailcloak\"}','{\"mode\":\"1\"}','',NULL,NULL,1,0,NULL,1),
(406,0,'plg_content_loadmodule','plugin','loadmodule',NULL,'content',0,1,1,0,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\LoadModule\",\"filename\":\"loadmodule\"}','{\"style\":\"xhtml\"}','',NULL,'2011-09-18 15:22:50',0,0,NULL,1),
(407,0,'plg_content_pagebreak','plugin','pagebreak',NULL,'content',0,1,1,0,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\PageBreak\",\"filename\":\"pagebreak\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','',NULL,NULL,4,0,NULL,1),
(408,0,'plg_content_pagenavigation','plugin','pagenavigation',NULL,'content',0,1,1,0,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"2006-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\PageNavigation\",\"filename\":\"pagenavigation\"}','{\"position\":\"1\"}','',NULL,NULL,5,0,NULL,1),
(409,0,'plg_content_vote','plugin','vote',NULL,'content',0,0,1,0,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Vote\",\"filename\":\"vote\"}','','',NULL,NULL,6,0,NULL,1),
(410,0,'plg_editors_codemirror','plugin','codemirror',NULL,'editors',0,1,1,0,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2021 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"https:\\/\\/codemirror.net\\/\",\"version\":\"6.0.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\CodeMirror\",\"filename\":\"codemirror\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','',NULL,NULL,1,0,NULL,1),
(411,0,'plg_editors_none','plugin','none',NULL,'editors',0,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"2005-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\None\",\"filename\":\"none\"}','','',NULL,NULL,2,0,NULL,1),
(412,0,'plg_editors_tinymce','plugin','tinymce',NULL,'editors',0,1,1,0,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-08\",\"author\":\"Tiny Technologies, Inc\",\"copyright\":\"Tiny Technologies, Inc\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"https:\\/\\/www.tiny.cloud\",\"version\":\"6.8.3\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\TinyMCE\",\"filename\":\"tinymce\"}','{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"blocks\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styles\",\"|\",\"blocks\",\"fontfamily\",\"fontsize\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"jtemplate\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}','',NULL,NULL,3,0,NULL,1),
(413,0,'plg_editors-xtd_article','plugin','article',NULL,'editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"2009-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Article\",\"filename\":\"article\"}','','',NULL,NULL,1,0,NULL,1),
(414,0,'plg_editors-xtd_image','plugin','image',NULL,'editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"2004-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Image\",\"filename\":\"image\"}','','',NULL,NULL,2,0,NULL,1),
(415,0,'plg_editors-xtd_pagebreak','plugin','pagebreak',NULL,'editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"2004-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\PageBreak\",\"filename\":\"pagebreak\"}','','',NULL,NULL,3,0,NULL,1),
(416,0,'plg_editors-xtd_readmore','plugin','readmore',NULL,'editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"2006-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\ReadMore\",\"filename\":\"readmore\"}','','',NULL,NULL,4,0,NULL,1),
(422,0,'plg_system_languagefilter','plugin','languagefilter',NULL,'system',0,0,1,0,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"2010-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\LanguageFilter\",\"filename\":\"languagefilter\"}','','',NULL,NULL,1,0,NULL,1),
(424,0,'plg_system_cache','plugin','cache',NULL,'system',0,0,1,0,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"2007-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Cache\",\"filename\":\"cache\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','',NULL,NULL,9,0,NULL,1),
(425,0,'plg_system_debug','plugin','debug',NULL,'system',0,1,1,0,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"2006-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Debug\",\"filename\":\"debug\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','',NULL,NULL,4,0,NULL,1),
(426,0,'plg_system_log','plugin','log',NULL,'system',0,1,1,0,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"2007-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Log\",\"filename\":\"log\"}','','',NULL,NULL,5,0,NULL,1),
(427,0,'plg_system_redirect','plugin','redirect',NULL,'system',0,0,1,0,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"2009-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Redirect\",\"filename\":\"redirect\"}','','',NULL,NULL,3,0,NULL,1),
(428,0,'plg_system_remember','plugin','remember',NULL,'system',0,1,1,0,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"2007-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Remember\",\"filename\":\"remember\"}','','',NULL,NULL,7,0,NULL,1),
(429,0,'plg_system_sef','plugin','sef',NULL,'system',0,1,1,0,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"2007-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Sef\",\"filename\":\"sef\"}','','',NULL,NULL,8,0,NULL,1),
(430,0,'plg_system_logout','plugin','logout',NULL,'system',0,1,1,0,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"2009-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Logout\",\"filename\":\"logout\"}','','',NULL,NULL,6,0,NULL,1),
(431,0,'plg_user_contactcreator','plugin','contactcreator',NULL,'user',0,0,1,0,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"2009-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\ContactCreator\",\"filename\":\"contactcreator\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','',NULL,NULL,1,0,NULL,1),
(432,0,'plg_user_joomla','plugin','joomla',NULL,'user',0,1,1,0,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"2006-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Joomla\",\"filename\":\"joomla\"}','{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}','',NULL,NULL,2,0,NULL,1),
(433,0,'plg_user_profile','plugin','profile',NULL,'user',0,0,1,0,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"2008-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Profile\",\"filename\":\"profile\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','',NULL,NULL,0,0,NULL,1),
(434,0,'plg_extension_joomla','plugin','joomla',NULL,'extension',0,1,1,0,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"2010-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Joomla\",\"filename\":\"joomla\"}','','',NULL,NULL,1,0,NULL,1),
(435,0,'plg_content_joomla','plugin','joomla',NULL,'content',0,1,1,0,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"2010-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Joomla\",\"filename\":\"joomla\"}','','',NULL,NULL,0,0,NULL,1),
(436,0,'plg_system_languagecode','plugin','languagecode',NULL,'system',0,0,1,0,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"2011-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\LanguageCode\",\"filename\":\"languagecode\"}','','',NULL,NULL,10,0,NULL,1),
(437,0,'plg_quickicon_joomlaupdate','plugin','joomlaupdate',NULL,'quickicon',0,1,1,0,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Joomlaupdate\",\"filename\":\"joomlaupdate\"}','','',NULL,NULL,0,0,NULL,1),
(438,0,'plg_quickicon_extensionupdate','plugin','extensionupdate',NULL,'quickicon',0,1,1,0,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Extensionupdate\",\"filename\":\"extensionupdate\"}','','',NULL,NULL,0,0,NULL,1),
(440,0,'plg_system_highlight','plugin','highlight',NULL,'system',0,1,1,0,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Highlight\",\"filename\":\"highlight\"}','','',NULL,NULL,7,0,NULL,1),
(441,0,'plg_content_finder','plugin','finder',NULL,'content',0,1,1,0,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"2011-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Finder\",\"filename\":\"finder\"}','','',NULL,NULL,0,0,NULL,1),
(442,0,'plg_finder_categories','plugin','categories',NULL,'finder',0,1,1,0,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Categories\",\"filename\":\"categories\"}','','',NULL,NULL,1,0,NULL,1),
(443,0,'plg_finder_contacts','plugin','contacts',NULL,'finder',0,1,1,0,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Contacts\",\"filename\":\"contacts\"}','','',NULL,NULL,2,0,NULL,1),
(444,0,'plg_finder_content','plugin','content',NULL,'finder',0,1,1,0,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Content\",\"filename\":\"content\"}','','',NULL,NULL,3,0,NULL,1),
(445,0,'plg_finder_newsfeeds','plugin','newsfeeds',NULL,'finder',0,1,1,0,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}','','',NULL,NULL,4,0,NULL,1),
(447,0,'plg_finder_tags','plugin','tags',NULL,'finder',0,1,1,0,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"2013-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Tags\",\"filename\":\"tags\"}','','',NULL,NULL,0,0,NULL,1),
(449,0,'plg_authentication_cookie','plugin','cookie',NULL,'authentication',0,1,1,0,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"2013-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Cookie\",\"filename\":\"cookie\"}','','',NULL,NULL,0,0,NULL,1),
(453,0,'plg_editors-xtd_module','plugin','module',NULL,'editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"2015-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Module\",\"filename\":\"module\"}','','',NULL,NULL,0,0,NULL,1),
(454,0,'plg_system_stats','plugin','stats',NULL,'system',0,1,1,0,'{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"2013-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Stats\",\"filename\":\"stats\"}','{\"mode\":1,\"lastrun\":1718010730,\"unique_id\":\"c8b86ee169bed3812b3da46634cfddf467704a4c\",\"interval\":12}','',NULL,NULL,0,0,NULL,1),
(455,0,'plg_installer_packageinstaller','plugin','packageinstaller',NULL,'installer',0,1,1,0,'{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Package\",\"filename\":\"packageinstaller\"}','','',NULL,NULL,1,0,NULL,1),
(456,0,'plg_installer_folderinstaller','plugin','folderinstaller',NULL,'installer',0,1,1,0,'{\"name\":\"plg_installer_folderinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Folder\",\"filename\":\"folderinstaller\"}','','',NULL,NULL,2,0,NULL,1),
(457,0,'plg_installer_urlinstaller','plugin','urlinstaller',NULL,'installer',0,1,1,0,'{\"name\":\"plg_installer_urlinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Url\",\"filename\":\"urlinstaller\"}','','',NULL,NULL,3,0,NULL,1),
(458,0,'plg_quickicon_phpversioncheck','plugin','phpversioncheck',NULL,'quickicon',0,1,1,0,'{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"2016-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\PhpVersionCheck\",\"filename\":\"phpversioncheck\"}','','',NULL,NULL,0,0,NULL,1),
(459,0,'plg_editors-xtd_menu','plugin','menu',NULL,'editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"2016-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Menu\",\"filename\":\"menu\"}','','',NULL,NULL,0,0,NULL,1),
(460,0,'plg_editors-xtd_contact','plugin','contact',NULL,'editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"2016-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Contact\",\"filename\":\"contact\"}','','',NULL,NULL,0,0,NULL,1),
(461,0,'plg_system_fields','plugin','fields',NULL,'system',0,1,1,0,'{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Fields\",\"filename\":\"fields\"}','','',NULL,NULL,0,0,NULL,1),
(462,0,'plg_fields_calendar','plugin','calendar',NULL,'fields',0,1,1,0,'{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Calendar\",\"filename\":\"calendar\"}','','',NULL,NULL,0,0,NULL,1),
(463,0,'plg_fields_checkboxes','plugin','checkboxes',NULL,'fields',0,1,1,0,'{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Checkboxes\",\"filename\":\"checkboxes\"}','','',NULL,NULL,0,0,NULL,1),
(464,0,'plg_fields_color','plugin','color',NULL,'fields',0,1,1,0,'{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Color\",\"filename\":\"color\"}','','',NULL,NULL,0,0,NULL,1),
(465,0,'plg_fields_editor','plugin','editor',NULL,'fields',0,1,1,0,'{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Editor\",\"filename\":\"editor\"}','','',NULL,NULL,0,0,NULL,1),
(466,0,'plg_fields_imagelist','plugin','imagelist',NULL,'fields',0,1,1,0,'{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Imagelist\",\"filename\":\"imagelist\"}','','',NULL,NULL,0,0,NULL,1),
(467,0,'plg_fields_integer','plugin','integer',NULL,'fields',0,1,1,0,'{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Integer\",\"filename\":\"integer\"}','{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}','',NULL,NULL,0,0,NULL,1),
(468,0,'plg_fields_list','plugin','list',NULL,'fields',0,1,1,0,'{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\ListField\",\"filename\":\"list\"}','','',NULL,NULL,0,0,NULL,1),
(469,0,'plg_fields_media','plugin','media',NULL,'fields',0,1,1,0,'{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Media\",\"filename\":\"media\"}','','',NULL,NULL,0,0,NULL,1),
(470,0,'plg_fields_radio','plugin','radio',NULL,'fields',0,1,1,0,'{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Radio\",\"filename\":\"radio\"}','','',NULL,NULL,0,0,NULL,1),
(471,0,'plg_fields_sql','plugin','sql',NULL,'fields',0,1,1,0,'{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\SQL\",\"filename\":\"sql\"}','','',NULL,NULL,0,0,NULL,1),
(472,0,'plg_fields_text','plugin','text',NULL,'fields',0,1,1,0,'{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Text\",\"filename\":\"text\"}','','',NULL,NULL,0,0,NULL,1),
(473,0,'plg_fields_textarea','plugin','textarea',NULL,'fields',0,1,1,0,'{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Textarea\",\"filename\":\"textarea\"}','','',NULL,NULL,0,0,NULL,1),
(474,0,'plg_fields_url','plugin','url',NULL,'fields',0,1,1,0,'{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Url\",\"filename\":\"url\"}','','',NULL,NULL,0,0,NULL,1),
(475,0,'plg_fields_user','plugin','user',NULL,'fields',0,1,1,0,'{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\User\",\"filename\":\"user\"}','','',NULL,NULL,0,0,NULL,1),
(476,0,'plg_fields_usergrouplist','plugin','usergrouplist',NULL,'fields',0,1,1,0,'{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\UsergroupList\",\"filename\":\"usergrouplist\"}','','',NULL,NULL,0,0,NULL,1),
(477,0,'plg_content_fields','plugin','fields',NULL,'content',0,1,1,0,'{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Fields\",\"filename\":\"fields\"}','','',NULL,NULL,0,0,NULL,1),
(478,0,'plg_editors-xtd_fields','plugin','fields',NULL,'editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Fields\",\"filename\":\"fields\"}','','',NULL,NULL,0,0,NULL,1),
(479,0,'plg_sampledata_blog','plugin','blog',NULL,'sampledata',0,1,1,0,'{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"2017-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\SampleData\\\\Blog\",\"filename\":\"blog\"}','','',NULL,NULL,0,0,NULL,1),
(482,0,'plg_content_confirmconsent','plugin','confirmconsent',NULL,'content',0,1,1,0,'{\"name\":\"plg_content_confirmconsent\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\ConfirmConsent\",\"filename\":\"confirmconsent\"}','{\"consentbox_text\":\"\",\"privacy_article\":18}','',NULL,NULL,0,0,NULL,1),
(483,0,'plg_system_actionlogs','plugin','actionlogs',NULL,'system',0,1,1,0,'{\"name\":\"plg_system_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\ActionLogs\",\"filename\":\"actionlogs\"}','{}','',NULL,NULL,0,0,NULL,1),
(484,0,'plg_actionlog_joomla','plugin','joomla',NULL,'actionlog',0,1,1,0,'{\"name\":\"plg_actionlog_joomla\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Actionlog\\\\Joomla\",\"filename\":\"joomla\"}','{}','',NULL,NULL,0,0,NULL,1),
(485,0,'plg_system_privacyconsent','plugin','privacyconsent',NULL,'system',0,1,1,0,'{\"name\":\"plg_system_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"2018-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\PrivacyConsent\",\"filename\":\"privacyconsent\"}','{}','',NULL,NULL,0,0,NULL,1),
(487,0,'plg_privacy_user','plugin','user',NULL,'privacy',0,1,1,0,'{\"name\":\"plg_privacy_user\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_USER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\User\",\"filename\":\"user\"}','{}','',NULL,NULL,0,0,NULL,1),
(488,0,'plg_quickicon_privacycheck','plugin','privacycheck',NULL,'quickicon',0,1,1,0,'{\"name\":\"plg_quickicon_privacycheck\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\PrivacyCheck\",\"filename\":\"privacycheck\"}','{}','',NULL,NULL,0,0,NULL,1),
(489,0,'plg_user_terms','plugin','terms',NULL,'user',0,0,1,0,'{\"name\":\"plg_user_terms\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TERMS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Terms\",\"filename\":\"terms\"}','{}','',NULL,NULL,0,0,NULL,1),
(490,0,'plg_privacy_contact','plugin','contact',NULL,'privacy',0,1,1,0,'{\"name\":\"plg_privacy_contact\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Contact\",\"filename\":\"contact\"}','{}','',NULL,NULL,0,0,NULL,1),
(491,0,'plg_privacy_content','plugin','content',NULL,'privacy',0,0,1,0,'{\"name\":\"plg_privacy_content\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Content\",\"filename\":\"content\"}','{}','',NULL,NULL,0,0,NULL,1),
(492,0,'plg_privacy_message','plugin','message',NULL,'privacy',0,1,1,0,'{\"name\":\"plg_privacy_message\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Message\",\"filename\":\"message\"}','{}','',NULL,NULL,0,0,NULL,1),
(493,0,'plg_privacy_actionlogs','plugin','actionlogs',NULL,'privacy',0,1,1,0,'{\"name\":\"plg_privacy_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Actionlogs\",\"filename\":\"actionlogs\"}','{}','',NULL,NULL,0,0,NULL,1),
(495,0,'plg_privacy_consents','plugin','consents',NULL,'privacy',0,1,1,0,'{\"name\":\"plg_privacy_consents\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Consents\",\"filename\":\"consents\"}','{}','',NULL,NULL,0,0,NULL,1),
(600,802,'English (en-GB)','language','en-GB',NULL,'',0,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2024-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.1\",\"description\":\"en-GB site language\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL,1),
(601,802,'English (en-GB)','language','en-GB',NULL,'',1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2024-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.1\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL,1),
(700,0,'files_joomla','file','joomla',NULL,'',0,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"2024-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.1\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL,1),
(802,0,'English (en-GB) Language Pack','package','pkg_en-GB',NULL,'',0,1,1,1,'{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"2024-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.1.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}','','',NULL,NULL,0,0,NULL,1),
(10003,0,'plg_system_t4','plugin','t4',NULL,'system',0,1,1,0,'{\"name\":\"plg_system_t4\",\"type\":\"plugin\",\"creationDate\":\"Apr 26th, 2024\",\"author\":\"JoomlArt\",\"copyright\":\"Copyright (C) 2005 - 2022 JoomlArt.com\",\"authorEmail\":\"admin@joomlart.com\",\"authorUrl\":\"www.joomlart.com\",\"version\":\"2.4.0\",\"description\":\"\\n\\t\\t\\t<div class=\\\"tpl-info\\\">\\n\\t\\t\\t\\t<h2>T4 Framework for Joomla 3, Joomla 4 and Joomla 5<\\/h2>\\n\\t\\t\\t\\t<p>T4 Framework is powerful and advanced responsive template framework for Joomla. It is a modern, flexible and highly customizable framework to build beautiful Joomla websites easier.<\\/p>\\n\\t\\t\\t<\\/div>\\n\\n\\t\\t\\t<style>\\n\\t\\t\\t\\t.tpl-info { overflow: hidden; padding: 20px 0; }\\n\\t\\t\\t\\t.tpl-info p { float: left; width: 60%;}\\n\\t\\t\\t\\t.tpl-info .btn { box-shadow: 0 2px 10px 0 rgba(0,0,0,.16); border: 0; border-radius: 3px; float: right; min-height: 52px; padding: 0 24px; line-height: 52px; transition: all .2s cubic-bezier(.4,0,.2,1); }\\n\\t\\t\\t\\t.tpl-info .btn span { margin-right: 12px;}\\n\\t\\t\\t<\\/style>\\n\\t\\t\",\"group\":\"\",\"filename\":\"t4\"}','{}','',NULL,NULL,0,0,NULL,0),
(10004,0,'ja_stark','template','ja_stark',NULL,'',0,1,1,0,'{\"name\":\"ja_stark\",\"type\":\"template\",\"creationDate\":\"April 25, 2024\",\"author\":\"JoomlArt\",\"copyright\":\"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.\",\"authorEmail\":\"admin@joomlart.com\",\"authorUrl\":\"\",\"version\":\"2.1.2\",\"description\":\"\\n\\t\\t\\n\\t\\t<div align=\\\"center\\\">\\n\\t\\t\\t<div class=\\\"alert alert-success\\\" style=\\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\\">\\n\\t\\t\\t\\t\\n\\t\\t\\t\\t<h3><a href=\\\"\\/\\/www.joomlart.com\\/joomla\\/templates\\/ja-stark\\\">Free Joomla template for Business - JA Stark<\\/a><\\/h3>\\n\\t\\t\\t\\t\\n\\t\\t\\t\\t<h4><a href=\\\"\\/\\/www.joomlart.com\\/joomla\\/templates\\/ja-stark\\\" title=\\\"\\\">Home<\\/a> | <a href=\\\"https:\\/\\/ja-stark.demo.joomlart.com\\/index.php\\/en\\/\\\" title=\\\"\\\">Demo<\\/a> | <a href=\\\"\\/\\/www.joomlart.com\\/documentation\\/joomla-templates\\/ja-stark\\\" title=\\\"\\\">Document<\\/a> | <a href=\\\"\\/\\/pm.joomlart.com\\/browse\\/JASTARK\\\" title=\\\"\\\">Changelog<\\/a><\\/h4>\\n\\n\\t\\t\\t\\t<p>JA Stark is a creative Free Joomla template for business, company, agency based on complete new T4 Joomla template framework. Integrate Bootstrap 4, Font awesome 5 and advanced features including layout builder, theme customization tool<\\/p>\\n\\n\\t\\t\\t\\t<span style=\\\"color:#FF0000\\\">Note: JA Stark requires T4 plugin to be installed and enabled.<\\/span><p><\\/p>\\n\\t\\t\\t\\t<p>Copyright 2004 - 2021 <a href=\'http:\\/\\/www.joomlart.com\\/\' title=\'Visit Joomlart.com!\'>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<style>table.adminform{width: 100%;}<\\/style>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t\",\"group\":\"\",\"filename\":\"templateDetails\"}','{}','',NULL,NULL,0,0,NULL,0),
(10005,0,'JA Masthead','module','mod_jamasthead',NULL,'',0,1,1,0,'{\"name\":\"JA Masthead\",\"type\":\"module\",\"creationDate\":\"Dec 1st, 2023\",\"author\":\"JoomlArt.com\",\"copyright\":\"J.O.O.M Solutions Co., Ltd.\",\"authorEmail\":\"admin@joomlart.com\",\"authorUrl\":\"www.joomlart.com\",\"version\":\"1.2.0\",\"description\":\"\\n\\t\\t\\n\\t\\t<div align=\\\"left\\\">\\t\\t\\n\\t\\t\\t<h2>JA Masthead Module for Joomla 3.x and Joomla 4<\\/h2>\\n\\t\\t\\t<p>JA Masthead Module is used to Masthead title like the JoomlArt Masthead. With this module, the Masshead can be configured to be in any pages with different titles, descriptions as well as background images and background video. For video background, it supports local video with types: .mp4, ogg, webm.<\\/p>\\n\\n\\t\\t\\t<p><span style=\'color: #008000;\'><strong>Links:<\\/strong><\\/span><\\/p>\\n\\t\\t\\t  <ul>\\n\\t\\t\\t  \\t<li><a target=\'_blank\' href=\'https:\\/\\/www.joomlart.com\\/documentation\\/joomla-module\\/ja-masthead\'>Userguide<\\/a><\\/li>\\n\\t\\t\\t  \\t<li><a target=\'_blank\' href=\'https:\\/\\/www.joomlart.com\\/forums\\/t\\/ja-masthead\'>Support Forum<\\/a><\\/li>\\n\\t\\t\\t  <\\/ul>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t\",\"group\":\"\",\"filename\":\"mod_jamasthead\"}','{\"default-title\":\"\",\"default-description\":\"\"}','',NULL,NULL,0,0,NULL,0),
(10006,0,'System - JA Google Map','plugin','jagooglemap',NULL,'system',0,1,1,0,'{\"name\":\"System - JA Google Map\",\"type\":\"plugin\",\"creationDate\":\"Mar 25th, 2024\",\"author\":\"JoomlArt.com\",\"copyright\":\"J.O.O.M Solutions Co., Ltd.\",\"authorEmail\":\"webmaster@joomlart.com\",\"authorUrl\":\"www.joomlart.com\",\"version\":\"2.8.1\",\"description\":\"\\n\\t\\t\\n\\t\\t<div style=\'font-weight:normal; text-align: left;\'>\\n\\t\\t\\t<span style=\\\"color: #008000;\\\">\\n\\t\\t\\t\\t<strong>Google Maps Plugin for Joomla 3 and Joomla 4<\\/strong>\\n\\t\\t\\t<\\/span>\\n\\t\\t\\t<br \\/>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\t<span style=\\\"color: #ff6600;\\\">\\n\\t\\t\\t\\t\\t<strong>Features:<\\/strong>\\n\\t\\t\\t\\t<\\/span>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<ol>\\n\\t\\t\\t\\t<li>Easy to use. Change configuration values, check the checkboxes to include the values in the code, copy the code and paste into your article.<\\/li>\\n\\t\\t\\t\\t<li>Tooltips added to all config options, with description and help text. Hover your mouse over the configuration options and read the tips.<\\/li>\\n\\t\\t\\t<\\/ol>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\t<strong>\\n\\t\\t\\t\\t\\t<span style=\\\"color: #ff6600;\\\">Requirements:<\\/span>\\n\\t\\t\\t\\t<\\/strong>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<ol>\\n\\t\\t\\t\\t<li> Google Map API Key is required to validate requests from your site to Google Maps, sign up for a Google Map API Key <a target=\\\"_blank\\\" href=\\\"http:\\/\\/code.google.com\\/apis\\/maps\\/signup.html\\\">HERE<\\/a> .<\\/li>\\n\\t\\t\\t\\t<li>If you plan to use Latitude &amp; Longitude for your target location. Get co-ordinates from <a target=\\\"_blank\\\" href=\\\"http:\\/\\/www.satsig.net\\/maps\\/lat-long-finder.htm\\\">HERE<\\/a>. Pick the co-ordinates as shown in the screenshot below.<\\/li>\\n\\t\\t\\t<\\/ol>\\n\\t\\t\\t\\n\\t\\t\\t<p>\\n\\t\\t\\t\\t<strong>\\n\\t\\t\\t\\t\\t<span style=\\\"color: #ff0000;\\\">Important Instruction:<\\/span>\\n\\t\\t\\t\\t\\t<br \\/>\\n\\t\\t\\t\\t<\\/strong>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<ol>\\n\\t\\t\\t\\t<li>Use the Code generator to generate codes. However do not save the plugin settings when done. Always Hit the Close Button.<\\/li>\\n\\t\\t\\t\\t<li><span style=\\\"color: #ff0000;\\\">DO NOT<\\/span> save settings each time you generate the map, the default configured maps will be affected. This is true incase your earlier maps CODE do not have the override values in them. Hit the Cancel button to preserve your default settings.<\\/li>\\n\\t\\t\\t\\t<li>If your map is not seen in the article, then SwitchOver to HTML Source Edit view, while inserting the code into the desired location<\\/li>\\n\\t\\t\\t<\\/ol>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\t<span style=\\\"color: #008000;\\\">\\n\\t\\t\\t\\t\\t<strong>Links:<\\/strong>\\n\\t\\t\\t\\t<\\/span>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\t<a target=\\\"_blank\\\" href=\\\"https:\\/\\/www.joomlart.com\\/forums\\/t\\/ja-google-map\\\">Support Forum<\\/a><p> <a target=\\\"_blank\\\" href=\\\"https:\\/\\/www.joomlart.com\\/documentation\\/joomla-plugins\\/ja-google-map-plugin-joomla-extension-documentation\\\">Documentation<\\/a>\\n\\t\\t\\t<\\/p>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t\",\"group\":\"\",\"filename\":\"jagooglemap\"}','{\"api_key\":\"AIzaSyCNIJV_hl5sVimQSQlc7PsP9-Kz0KGGQ1Y\",\"disable_map\":\"0\",\"mode\":\"normal\",\"locations\":{\"location\":[\"New York\"],\"latitude\":[\"40.71427\"],\"longitude\":[\"-74.00597\"],\"info\":[\"\"]},\"zoom\":\"15\",\"maptype\":\"normal\",\"map_width\":\"2000\",\"map_height\":\"400\",\"maptype_control_display\":\"1\",\"mapstyles_control_display\":\"0\",\"map_styles\":\"\",\"maptype_control_style\":\"drop_down\",\"maptype_control_position\":\"TR\",\"toolbar_control_display\":\"1\",\"toolbar_control_style\":\"default\",\"toolbar_control_position\":\"TL\",\"disable_scrollwheelzoom\":\"0\",\"display_scale\":\"0\",\"display_overview\":\"0\",\"clustering\":\"0\",\"center\":\"all\",\"code_container\":\"{jamap }{\\/jamap}\"}','',NULL,NULL,0,0,NULL,0),
(10007,0,'MOD_JA_ACM','module','mod_ja_acm',NULL,'',0,1,1,0,'{\"name\":\"MOD_JA_ACM\",\"type\":\"module\",\"creationDate\":\"May 2nd, 2024\",\"author\":\"JoomlArt\",\"copyright\":\"Copyright \\u00a9 2005 - 2021 JoomlArt.com. All Rights Reserved.\",\"authorEmail\":\"info@joomlart.com\",\"authorUrl\":\"www.joomlart.com\",\"version\":\"2.4.2\",\"description\":\"\\n\\t\\t\\n\\t\\t<div align=\\\"left\\\">\\t\\t\\n\\t\\t\\t<div>\\n\\t\\t\\t\\t<h1>JA ACM Module for Joomla 3.x and Joomla 4<\\/h1>\\n\\t\\t\\t\\t<div style=\'font-weight: normal\'>\\n\\t\\t\\t\\t\\t<p>JA ACM module (JoomlArt Advanced Custom module) is to help you build content blocks for your Joomla site easily based on pre-made layouts and styles. The content blocks together will build a landing page or a complete site for you. <\\/p>\\n\\t\\t\\t\\t<\\/div>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<br \\/>\\n\\t\\t\\t<p>Highlighted features:<\\/p>\\n\\t\\t\\t<div style=\'font-weight: normal\'>\\n\\t\\t\\t\\t<ul>\\n\\t\\t\\t\\t\\t<li style=\\\"padding:10px 0px 10px 20px;\\\">12+ block types: At this phase, we round up typical blocks that Uber has to offer. Each block type comes with multiple styles.<\\/li>\\n\\t\\t\\t\\t\\t<li style=\\\"padding:10px 0px 10px 20px;\\\">Easy editing & defining your page-specific field sets within each block. Each block has its own LESS file, so you have full control to define your own class and style.<\\/li>\\n\\t\\t\\t\\t\\t<li style=\\\"padding:10px 0px 10px 20px;\\\">Content-creator-friendly: completely separate content & design. No longer mixing HTML syntax embedded inside article.<\\/li>\\n\\t\\t\\t\\t\\t<li style=\\\"padding:10px 0px 10px 20px;\\\">Allow us to dig deeper into the modular block approach which eases our page management effort.<\\/li>\\n\\t\\t\\t\\t<\\/ul>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<br \\/>\\n\\t\\t\\t\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t\",\"group\":\"\",\"filename\":\"mod_ja_acm\"}','{\"jatools-config\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','',NULL,NULL,0,0,NULL,0),
(10008,0,'com_jaextmanager','component','com_jaextmanager',NULL,'',1,1,0,0,'{\"name\":\"com_jaextmanager\",\"type\":\"component\",\"creationDate\":\"Dec 1st, 2023\",\"author\":\"JoomlArt\",\"copyright\":\"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.\",\"authorEmail\":\"webmaster@joomlart.com\",\"authorUrl\":\"http:\\/\\/www.joomlart.com\",\"version\":\"2.7.6\",\"description\":\"JA Extension Manager Component\",\"group\":\"\"}','{}','',NULL,NULL,0,0,NULL,0),
(10010,0,'plg_behaviour_taggable','plugin','taggable',NULL,'behaviour',0,1,1,0,'{\"name\":\"plg_behaviour_taggable\",\"type\":\"plugin\",\"creationDate\":\"2015-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_TAGGABLE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Taggable\",\"filename\":\"taggable\"}','{}','',NULL,NULL,0,0,NULL,1),
(10011,0,'plg_behaviour_versionable','plugin','versionable',NULL,'behaviour',0,1,1,0,'{\"name\":\"plg_behaviour_versionable\",\"type\":\"plugin\",\"creationDate\":\"2015-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_VERSIONABLE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Versionable\",\"filename\":\"versionable\"}','{}','',NULL,NULL,0,0,NULL,1),
(10012,0,'atum','template','atum',NULL,'',1,1,1,0,'{\"name\":\"atum\",\"type\":\"template\",\"creationDate\":\"2016-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ATUM_XML_DESCRIPTION\",\"group\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}','{}','',NULL,NULL,0,0,NULL,1),
(10013,0,'cassiopeia','template','cassiopeia',NULL,'',0,1,1,0,'{\"name\":\"cassiopeia\",\"type\":\"template\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_CASSIOPEIA_XML_DESCRIPTION\",\"group\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}','{}','',NULL,NULL,0,0,NULL,1),
(10014,0,'plg_filesystem_local','plugin','local',NULL,'filesystem',0,1,1,0,'{\"name\":\"plg_filesystem_local\",\"type\":\"plugin\",\"creationDate\":\"2017-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FILESYSTEM_LOCAL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Filesystem\\\\Local\",\"filename\":\"local\"}','{}','',NULL,NULL,0,0,NULL,1),
(10015,0,'plg_media-action_crop','plugin','crop',NULL,'media-action',0,1,1,0,'{\"name\":\"plg_media-action_crop\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_CROP_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Crop\",\"filename\":\"crop\"}','{}','',NULL,NULL,0,0,NULL,1),
(10016,0,'plg_media-action_resize','plugin','resize',NULL,'media-action',0,1,1,0,'{\"name\":\"plg_media-action_resize\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_RESIZE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Resize\",\"filename\":\"resize\"}','{}','',NULL,NULL,0,0,NULL,1),
(10017,0,'plg_media-action_rotate','plugin','rotate',NULL,'media-action',0,1,1,0,'{\"name\":\"plg_media-action_rotate\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_ROTATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Rotate\",\"filename\":\"rotate\"}','{}','',NULL,NULL,0,0,NULL,1),
(10018,0,'plg_system_httpheaders','plugin','httpheaders',NULL,'system',0,0,1,0,'{\"name\":\"plg_system_httpheaders\",\"type\":\"plugin\",\"creationDate\":\"2017-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_HTTPHEADERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Httpheaders\",\"filename\":\"httpheaders\"}','{}','',NULL,NULL,0,0,NULL,1),
(10019,0,'com_workflow','component','com_workflow',NULL,'',1,1,0,1,'{\"name\":\"com_workflow\",\"type\":\"component\",\"creationDate\":\"2017-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WORKFLOW_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Workflow\"}','{}','',NULL,NULL,0,0,NULL,1),
(10020,0,'plg_workflow_publishing','plugin','publishing',NULL,'workflow',0,1,1,0,'{\"name\":\"plg_workflow_publishing\",\"type\":\"plugin\",\"creationDate\":\"2020-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_PUBLISHING_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Publishing\",\"filename\":\"publishing\"}','{}','',NULL,NULL,0,0,NULL,0),
(10021,0,'plg_workflow_featuring','plugin','featuring',NULL,'workflow',0,1,1,0,'{\"name\":\"plg_workflow_featuring\",\"type\":\"plugin\",\"creationDate\":\"2020-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_FEATURING_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Featuring\",\"filename\":\"featuring\"}','{}','',NULL,NULL,0,0,NULL,0),
(10022,0,'plg_workflow_notification','plugin','notification',NULL,'workflow',0,1,1,0,'{\"name\":\"plg_workflow_notification\",\"type\":\"plugin\",\"creationDate\":\"2020-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Notification\",\"filename\":\"notification\"}','{}','',NULL,NULL,0,0,NULL,0),
(10023,0,'plg_extension_namespacemap','plugin','namespacemap',NULL,'extension',0,1,1,1,'{\"name\":\"plg_extension_namespacemap\",\"type\":\"plugin\",\"creationDate\":\"2017-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_NAMESPACEMAP_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\NamespaceMap\",\"filename\":\"namespacemap\"}','','',NULL,NULL,0,0,NULL,1),
(10024,0,'plg_installer_override','plugin','override',NULL,'installer',0,1,1,0,'{\"name\":\"plg_installer_override\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_OVERRIDE_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Override\",\"filename\":\"override\"}','','',NULL,NULL,4,0,NULL,1),
(10025,0,'plg_quickicon_overridecheck','plugin','overridecheck',NULL,'quickicon',0,1,1,0,'{\"name\":\"plg_quickicon_overridecheck\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_OVERRIDECHECK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\OverrideCheck\",\"filename\":\"overridecheck\"}','','',NULL,NULL,0,0,NULL,1),
(10026,0,'plg_extension_finder','plugin','finder',NULL,'extension',0,1,1,0,'{\"name\":\"plg_extension_finder\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Finder\",\"filename\":\"finder\"}','','',NULL,NULL,0,0,NULL,1),
(10027,0,'plg_api-authentication_basic','plugin','basic',NULL,'api-authentication',0,0,1,0,'{\"name\":\"plg_api-authentication_basic\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_BASIC_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\ApiAuthentication\\\\Basic\",\"filename\":\"basic\"}','{}','',NULL,NULL,0,0,NULL,1),
(10028,0,'plg_webservices_content','plugin','content',NULL,'webservices',0,1,1,0,'{\"name\":\"plg_webservices_content\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Content\",\"filename\":\"content\"}','{}','',NULL,NULL,0,0,NULL,1),
(10029,0,'com_mails','component','com_mails',NULL,'',1,1,1,1,'{\"name\":\"com_mails\",\"type\":\"component\",\"creationDate\":\"2019-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MAILS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Mails\"}','{}','',NULL,NULL,0,0,NULL,1),
(10030,0,'plg_system_skipto','plugin','skipto',NULL,'system',0,1,1,0,'{\"name\":\"plg_system_skipto\",\"type\":\"plugin\",\"creationDate\":\"2020-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_SKIPTO_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Skipto\",\"filename\":\"skipto\"}','{}','',NULL,NULL,0,0,NULL,1),
(10031,0,'plg_sampledata_multilang','plugin','multilang',NULL,'sampledata',0,1,1,0,'{\"name\":\"plg_sampledata_multilang\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SAMPLEDATA_MULTILANG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\SampleData\\\\MultiLanguage\",\"filename\":\"multilang\"}','{}','',NULL,NULL,0,0,NULL,1),
(10032,0,'plg_installer_webinstaller','plugin','webinstaller',NULL,'installer',0,1,1,0,'{\"name\":\"plg_installer_webinstaller\",\"type\":\"plugin\",\"creationDate\":\"2017-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Web\",\"filename\":\"webinstaller\"}','{}','',NULL,NULL,0,0,NULL,1),
(10033,0,'plg_fields_subform','plugin','subform',NULL,'fields',0,1,1,0,'{\"name\":\"plg_fields_subform\",\"type\":\"plugin\",\"creationDate\":\"2017-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FIELDS_SUBFORM_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Subform\",\"filename\":\"subform\"}','','',NULL,NULL,0,0,NULL,1),
(10034,0,'plg_system_webauthn','plugin','webauthn',NULL,'system',0,1,1,0,'{\"name\":\"plg_system_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2019-07-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_WEBAUTHN_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Webauthn\",\"filename\":\"webauthn\"}','{}','',NULL,NULL,0,0,NULL,1),
(10035,0,'mod_loginsupport','module','mod_loginsupport',NULL,'',1,1,1,0,'{\"name\":\"mod_loginsupport\",\"type\":\"module\",\"creationDate\":\"2019-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_LOGINSUPPORT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Loginsupport\",\"filename\":\"mod_loginsupport\"}','','',NULL,NULL,0,0,NULL,1),
(10036,0,'mod_frontend','module','mod_frontend',NULL,'',1,1,1,0,'{\"name\":\"mod_frontend\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_FRONTEND_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Frontend\",\"filename\":\"mod_frontend\"}','','',NULL,NULL,0,0,NULL,1),
(10037,0,'mod_messages','module','mod_messages',NULL,'',1,1,1,0,'{\"name\":\"mod_messages\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Messages\",\"filename\":\"mod_messages\"}','','',NULL,NULL,0,0,NULL,1),
(10038,0,'mod_post_installation_messages','module','mod_post_installation_messages',NULL,'',1,1,1,0,'{\"name\":\"mod_post_installation_messages\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_POST_INSTALLATION_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PostInstallationMessages\",\"filename\":\"mod_post_installation_messages\"}','','',NULL,NULL,0,0,NULL,1),
(10039,0,'mod_user','module','mod_user',NULL,'',1,1,1,0,'{\"name\":\"mod_user\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_USER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\User\",\"filename\":\"mod_user\"}','','',NULL,NULL,0,0,NULL,1),
(10040,0,'mod_submenu','module','mod_submenu',NULL,'',1,1,1,0,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"2006-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Submenu\",\"filename\":\"mod_submenu\"}','{}','',NULL,NULL,0,0,NULL,1),
(10041,0,'mod_privacy_status','module','mod_privacy_status',NULL,'',1,1,1,0,'{\"name\":\"mod_privacy_status\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_PRIVACY_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PrivacyStatus\",\"filename\":\"mod_privacy_status\"}','{}','',NULL,NULL,0,0,NULL,1),
(10042,0,'plg_webservices_banners','plugin','banners',NULL,'webservices',0,1,1,0,'{\"name\":\"plg_webservices_banners\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Banners\",\"filename\":\"banners\"}','{}','',NULL,NULL,0,0,NULL,1),
(10043,0,'plg_webservices_config','plugin','config',NULL,'webservices',0,1,1,0,'{\"name\":\"plg_webservices_config\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Config\",\"filename\":\"config\"}','{}','',NULL,NULL,0,0,NULL,1),
(10044,0,'plg_webservices_contact','plugin','contact',NULL,'webservices',0,1,1,0,'{\"name\":\"plg_webservices_contact\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Contact\",\"filename\":\"contact\"}','{}','',NULL,NULL,0,0,NULL,1),
(10045,0,'plg_webservices_languages','plugin','languages',NULL,'webservices',0,1,1,0,'{\"name\":\"plg_webservices_languages\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Languages\",\"filename\":\"languages\"}','{}','',NULL,NULL,0,0,NULL,1),
(10046,0,'plg_webservices_menus','plugin','menus',NULL,'webservices',0,1,1,0,'{\"name\":\"plg_webservices_menus\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Menus\",\"filename\":\"menus\"}','{}','',NULL,NULL,0,0,NULL,1),
(10047,0,'plg_webservices_messages','plugin','messages',NULL,'webservices',0,1,1,0,'{\"name\":\"plg_webservices_messages\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Messages\",\"filename\":\"messages\"}','{}','',NULL,NULL,0,0,NULL,1),
(10048,0,'plg_webservices_modules','plugin','modules',NULL,'webservices',0,1,1,0,'{\"name\":\"plg_webservices_modules\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Modules\",\"filename\":\"modules\"}','{}','',NULL,NULL,0,0,NULL,1),
(10049,0,'plg_webservices_newsfeeds','plugin','newsfeeds',NULL,'webservices',0,1,1,0,'{\"name\":\"plg_webservices_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}','{}','',NULL,NULL,0,0,NULL,1),
(10050,0,'plg_webservices_plugins','plugin','plugins',NULL,'webservices',0,1,1,0,'{\"name\":\"plg_webservices_plugins\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Plugins\",\"filename\":\"plugins\"}','{}','',NULL,NULL,0,0,NULL,1),
(10051,0,'plg_webservices_privacy','plugin','privacy',NULL,'webservices',0,1,1,0,'{\"name\":\"plg_webservices_privacy\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Privacy\",\"filename\":\"privacy\"}','{}','',NULL,NULL,0,0,NULL,1),
(10052,0,'plg_webservices_redirect','plugin','redirect',NULL,'webservices',0,1,1,0,'{\"name\":\"plg_webservices_redirect\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Redirect\",\"filename\":\"redirect\"}','{}','',NULL,NULL,0,0,NULL,1),
(10053,0,'plg_webservices_tags','plugin','tags',NULL,'webservices',0,1,1,0,'{\"name\":\"plg_webservices_tags\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Tags\",\"filename\":\"tags\"}','{}','',NULL,NULL,0,0,NULL,1),
(10054,0,'plg_webservices_templates','plugin','templates',NULL,'webservices',0,1,1,0,'{\"name\":\"plg_webservices_templates\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Templates\",\"filename\":\"templates\"}','{}','',NULL,NULL,0,0,NULL,1),
(10055,0,'plg_webservices_users','plugin','users',NULL,'webservices',0,1,1,0,'{\"name\":\"plg_webservices_users\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_USERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Users\",\"filename\":\"users\"}','{}','',NULL,NULL,0,0,NULL,1),
(10056,0,'plg_webservices_installer','plugin','installer',NULL,'webservices',0,1,1,0,'{\"name\":\"plg_webservices_installer\",\"type\":\"plugin\",\"creationDate\":\"2020-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Installer\",\"filename\":\"installer\"}','{}','',NULL,NULL,0,0,NULL,0),
(10057,0,'plg_user_token','plugin','token',NULL,'user',0,1,1,0,'{\"name\":\"plg_user_token\",\"type\":\"plugin\",\"creationDate\":\"2019-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Token\",\"filename\":\"token\"}','{}','',NULL,NULL,0,0,NULL,1),
(10058,0,'plg_api-authentication_token','plugin','token',NULL,'api-authentication',0,1,1,0,'{\"name\":\"plg_api-authentication_token\",\"type\":\"plugin\",\"creationDate\":\"2019-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\ApiAuthentication\\\\Token\",\"filename\":\"token\"}','{}','',NULL,NULL,0,0,NULL,1),
(10059,0,'plg_system_accessibility','plugin','accessibility',NULL,'system',0,0,1,0,'{\"name\":\"plg_system_accessibility\",\"type\":\"plugin\",\"creationDate\":\"2020-02-15\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_ACCESSIBILITY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Accessibility\",\"filename\":\"accessibility\"}','{}','',NULL,NULL,0,0,NULL,1),
(10060,802,'English (en-GB)','language','en-GB',NULL,'',3,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2024-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.1\",\"description\":\"en-GB api language\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL,1),
(10061,0,'plg_quickicon_downloadkey','plugin','downloadkey',NULL,'quickicon',0,1,1,0,'{\"name\":\"plg_quickicon_downloadkey\",\"type\":\"plugin\",\"creationDate\":\"2019-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_DOWNLOADKEY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Downloadkey\",\"filename\":\"downloadkey\"}','','',NULL,NULL,0,0,NULL,1),
(10062,0,'com_scheduler','component','com_scheduler',NULL,'',1,1,1,0,'{\"name\":\"com_scheduler\",\"type\":\"component\",\"creationDate\":\"2021-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"COM_SCHEDULER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Scheduler\"}','{}','',NULL,NULL,0,0,NULL,1),
(10063,0,'plg_system_schedulerunner','plugin','schedulerunner',NULL,'system',0,1,1,0,'{\"name\":\"plg_system_schedulerunner\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_SCHEDULERUNNER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\ScheduleRunner\",\"filename\":\"schedulerunner\"}','{}','',NULL,NULL,15,0,NULL,0),
(10064,0,'plg_system_task_notification','plugin','tasknotification',NULL,'system',0,1,1,0,'{\"name\":\"plg_system_task_notification\",\"type\":\"plugin\",\"creationDate\":\"2021-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_TASK_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\TaskNotification\",\"filename\":\"tasknotification\"}','','',NULL,NULL,22,0,NULL,1),
(10065,0,'plg_task_check_files','plugin','checkfiles',NULL,'task',0,1,1,0,'{\"name\":\"plg_task_check_files\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_CHECK_FILES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Checkfiles\",\"filename\":\"checkfiles\"}','{}','',NULL,NULL,15,0,NULL,0),
(10067,0,'plg_task_requests','plugin','requests',NULL,'task',0,1,1,0,'{\"name\":\"plg_task_requests\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_REQUESTS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Requests\",\"filename\":\"requests\"}','{}','',NULL,NULL,15,0,NULL,0),
(10068,0,'plg_task_site_status','plugin','sitestatus',NULL,'task',0,1,1,0,'{\"name\":\"plg_task_site_status\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_SITE_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\SiteStatus\",\"filename\":\"sitestatus\"}','{}','',NULL,NULL,15,0,NULL,0),
(10069,0,'plg_system_jooa11y','plugin','jooa11y',NULL,'system',0,1,1,0,'{\"name\":\"plg_system_jooa11y\",\"type\":\"plugin\",\"creationDate\":\"2022-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_JOOA11Y_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Jooa11y\",\"filename\":\"jooa11y\"}','','',NULL,NULL,0,0,NULL,1),
(10070,0,'plg_webservices_media','plugin','media',NULL,'webservices',0,1,1,0,'{\"name\":\"plg_webservices_media\",\"type\":\"plugin\",\"creationDate\":\"2021-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"PLG_WEBSERVICES_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Media\",\"filename\":\"media\"}','{}','',NULL,NULL,0,0,NULL,1),
(10071,0,'com_guidedtours','component','com_guidedtours',NULL,'',1,1,0,0,'{\"name\":\"com_guidedtours\",\"type\":\"component\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"COM_GUIDEDTOURS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Guidedtours\"}','{}','',NULL,NULL,0,0,NULL,1),
(10072,0,'mod_guidedtours','module','mod_guidedtours',NULL,'',1,1,1,0,'{\"name\":\"mod_guidedtours\",\"type\":\"module\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"MOD_GUIDEDTOURS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\GuidedTours\",\"filename\":\"mod_guidedtours\"}','{}','',NULL,NULL,0,0,NULL,1),
(10073,0,'plg_system_guidedtours','plugin','guidedtours',NULL,'system',0,1,1,0,'{\"name\":\"plg_system_guidedtours\",\"type\":\"plugin\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"PLG_SYSTEM_GUIDEDTOURS_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\GuidedTours\",\"filename\":\"guidedtours\"}','{}','',NULL,NULL,0,0,NULL,1),
(10074,0,'plg_quickicon_eos','plugin','eos',NULL,'quickicon',0,1,1,0,'{\"name\":\"plg_quickicon_eos\",\"type\":\"plugin\",\"creationDate\":\"2023-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.4.0\",\"description\":\"PLG_QUICKICON_EOS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Eos\",\"filename\":\"eos\"}','','',NULL,NULL,7,0,NULL,1),
(10075,0,'plg_behaviour_compat','plugin','compat',NULL,'behaviour',0,1,1,0,'{\"name\":\"plg_behaviour_compat\",\"type\":\"plugin\",\"creationDate\":\"2023-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_COMPAT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Compat\",\"filename\":\"compat\"}','{}','',NULL,NULL,-1,0,NULL,1),
(10076,0,'plg_schemaorg_blogposting','plugin','blogposting',NULL,'schemaorg',0,1,1,0,'{\"name\":\"plg_schemaorg_blogposting\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_BLOGPOSTING_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\BlogPosting\",\"filename\":\"blogposting\"}','{}','',NULL,NULL,1,0,NULL,0),
(10077,0,'plg_schemaorg_book','plugin','book',NULL,'schemaorg',0,1,1,0,'{\"name\":\"plg_schemaorg_book\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_BOOK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Book\",\"filename\":\"book\"}','{}','',NULL,NULL,2,0,NULL,0),
(10078,0,'plg_schemaorg_event','plugin','event',NULL,'schemaorg',0,1,1,0,'{\"name\":\"plg_schemaorg_event\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_EVENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Event\",\"filename\":\"event\"}','{}','',NULL,NULL,3,0,NULL,0),
(10079,0,'plg_schemaorg_organization','plugin','organization',NULL,'schemaorg',0,1,1,0,'{\"name\":\"plg_schemaorg_organization\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_ORGANIZATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Organization\",\"filename\":\"organization\"}','{}','',NULL,NULL,4,0,NULL,0),
(10080,0,'plg_schemaorg_person','plugin','person',NULL,'schemaorg',0,1,1,0,'{\"name\":\"plg_schemaorg_person\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_PERSON_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Person\",\"filename\":\"person\"}','{}','',NULL,NULL,5,0,NULL,0),
(10081,0,'plg_schemaorg_recipe','plugin','recipe',NULL,'schemaorg',0,1,1,0,'{\"name\":\"plg_schemaorg_recipe\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_RECIPE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Recipe\",\"filename\":\"recipe\"}','{}','',NULL,NULL,6,0,NULL,0),
(10082,0,'plg_schemaorg_jobposting','plugin','jobposting',NULL,'schemaorg',0,1,1,0,'{\"name\":\"plg_schemaorg_jobposting\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_JOBPOSTING_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\JobPosting\",\"filename\":\"jobposting\"}','{}','',NULL,NULL,7,0,NULL,0),
(10083,0,'plg_system_schemaorg','plugin','schemaorg',NULL,'system',0,1,1,0,'{\"name\":\"plg_system_schemaorg\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SYSTEM_SCHEMAORG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Schemaorg\",\"filename\":\"schemaorg\"}','{}','',NULL,NULL,0,0,NULL,0),
(10084,0,'plg_task_globalcheckin','plugin','globalcheckin',NULL,'task',0,1,1,0,'{\"name\":\"plg_task_globalcheckin\",\"type\":\"plugin\",\"creationDate\":\"2023-06-22\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_GLOBALCHECKIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Globalcheckin\",\"filename\":\"globalcheckin\"}','{}','',NULL,NULL,5,0,NULL,0),
(10085,0,'plg_task_deleteactionlogs','plugin','deleteactionlogs',NULL,'task',0,1,1,0,'{\"name\":\"plg_task_deleteactionlogs\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_DELETEACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\DeleteActionLogs\",\"filename\":\"deleteactionlogs\"}','{}','',NULL,NULL,0,0,NULL,1),
(10086,0,'plg_task_privacyconsent','plugin','privacyconsent',NULL,'task',0,1,1,0,'{\"name\":\"plg_task_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\PrivacyConsent\",\"filename\":\"privacyconsent\"}','{}','',NULL,NULL,0,0,NULL,1),
(10087,0,'plg_task_rotatelogs','plugin','rotatelogs',NULL,'task',0,1,1,0,'{\"name\":\"plg_task_rotatelogs\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_ROTATELOGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\RotateLogs\",\"filename\":\"rotatelogs\"}','{}','',NULL,NULL,0,0,NULL,1),
(10088,0,'plg_task_sessiongc','plugin','sessiongc',NULL,'task',0,1,1,0,'{\"name\":\"plg_task_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"2023-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\SessionGC\",\"filename\":\"sessiongc\"}','{}','',NULL,NULL,0,0,NULL,1),
(10089,0,'plg_task_updatenotification','plugin','updatenotification',NULL,'task',0,1,1,0,'{\"name\":\"plg_task_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\UpdateNotification\",\"filename\":\"updatenotification\"}','{}','',NULL,NULL,0,0,NULL,1),
(10090,0,'plg_schemaorg_article','plugin','article',NULL,'schemaorg',0,1,1,0,'{\"name\":\"plg_schemaorg_article\",\"type\":\"plugin\",\"creationDate\":\"2024-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.0\",\"description\":\"PLG_SCHEMAORG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Article\",\"filename\":\"article\"}','{}','',NULL,NULL,0,0,NULL,0),
(10091,0,'plg_schemaorg_custom','plugin','custom',NULL,'schemaorg',0,1,1,0,'{\"name\":\"plg_schemaorg_custom\",\"type\":\"plugin\",\"creationDate\":\"2024-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.0\",\"description\":\"PLG_SCHEMAORG_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Custom\",\"filename\":\"custom\"}','{}','',NULL,NULL,0,0,NULL,0);
/*!40000 ALTER TABLE `q91ut_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_fields`
--

DROP TABLE IF EXISTS `q91ut_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0,
  `context` varchar(255) NOT NULL DEFAULT '',
  `group_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `default_value` mediumtext DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'text',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` mediumtext NOT NULL,
  `fieldparams` mediumtext NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL,
  `created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1,
  `only_use_in_subform` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_user_id` (`created_user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_language` (`language`),
  KEY `idx_context` (`context`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_fields`
--

LOCK TABLES `q91ut_fields` WRITE;
/*!40000 ALTER TABLE `q91ut_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_fields_categories`
--

DROP TABLE IF EXISTS `q91ut_fields_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`field_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_fields_categories`
--

LOCK TABLES `q91ut_fields_categories` WRITE;
/*!40000 ALTER TABLE `q91ut_fields_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_fields_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_fields_groups`
--

DROP TABLE IF EXISTS `q91ut_fields_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_fields_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0,
  `context` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` mediumtext NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_access` (`access`),
  KEY `idx_language` (`language`),
  KEY `idx_context` (`context`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_fields_groups`
--

LOCK TABLES `q91ut_fields_groups` WRITE;
/*!40000 ALTER TABLE `q91ut_fields_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_fields_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_fields_values`
--

DROP TABLE IF EXISTS `q91ut_fields_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_fields_values` (
  `field_id` int(10) unsigned NOT NULL,
  `item_id` varchar(255) NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` mediumtext DEFAULT NULL,
  KEY `idx_field_id` (`field_id`),
  KEY `idx_item_id` (`item_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_fields_values`
--

LOCK TABLES `q91ut_fields_values` WRITE;
/*!40000 ALTER TABLE `q91ut_fields_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_fields_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_finder_filters`
--

DROP TABLE IF EXISTS `q91ut_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `map_count` int(10) unsigned NOT NULL DEFAULT 0,
  `data` longtext NOT NULL,
  `params` longtext DEFAULT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_finder_filters`
--

LOCK TABLES `q91ut_finder_filters` WRITE;
/*!40000 ALTER TABLE `q91ut_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_finder_links`
--

DROP TABLE IF EXISTS `q91ut_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(400) DEFAULT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `indexdate` datetime NOT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `state` int(11) NOT NULL DEFAULT 1,
  `access` int(11) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `publish_start_date` datetime DEFAULT NULL,
  `publish_end_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `list_price` double unsigned NOT NULL DEFAULT 0,
  `sale_price` double unsigned NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_finder_links`
--

LOCK TABLES `q91ut_finder_links` WRITE;
/*!40000 ALTER TABLE `q91ut_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_finder_links_terms`
--

DROP TABLE IF EXISTS `q91ut_finder_links_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_finder_links_terms` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_finder_links_terms`
--

LOCK TABLES `q91ut_finder_links_terms` WRITE;
/*!40000 ALTER TABLE `q91ut_finder_links_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_finder_links_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_finder_logging`
--

DROP TABLE IF EXISTS `q91ut_finder_logging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_finder_logging` (
  `searchterm` varchar(255) NOT NULL DEFAULT '',
  `md5sum` varchar(32) NOT NULL DEFAULT '',
  `query` blob NOT NULL,
  `hits` int(11) NOT NULL DEFAULT 1,
  `results` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`md5sum`),
  KEY `searchterm` (`searchterm`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_finder_logging`
--

LOCK TABLES `q91ut_finder_logging` WRITE;
/*!40000 ALTER TABLE `q91ut_finder_logging` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_finder_logging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_finder_taxonomy`
--

DROP TABLE IF EXISTS `q91ut_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) unsigned NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) NOT NULL DEFAULT '',
  `state` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `access` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_access` (`access`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`),
  KEY `idx_level` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_finder_taxonomy`
--

LOCK TABLES `q91ut_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `q91ut_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `q91ut_finder_taxonomy` VALUES
(1,0,0,1,0,'','ROOT','root',1,1,'*');
/*!40000 ALTER TABLE `q91ut_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `q91ut_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_finder_taxonomy_map`
--

LOCK TABLES `q91ut_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `q91ut_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_finder_terms`
--

DROP TABLE IF EXISTS `q91ut_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `weight` float unsigned NOT NULL DEFAULT 0,
  `soundex` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `links` int(10) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term_language` (`term`,`language`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`),
  KEY `idx_stem` (`stem`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_finder_terms`
--

LOCK TABLES `q91ut_finder_terms` WRITE;
/*!40000 ALTER TABLE `q91ut_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_finder_terms_common`
--

DROP TABLE IF EXISTS `q91ut_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_finder_terms_common` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  `custom` int(11) NOT NULL DEFAULT 0,
  UNIQUE KEY `idx_term_language` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_finder_terms_common`
--

LOCK TABLES `q91ut_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `q91ut_finder_terms_common` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_finder_tokens`
--

DROP TABLE IF EXISTS `q91ut_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_finder_tokens` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `weight` float unsigned NOT NULL DEFAULT 1,
  `context` tinyint(1) unsigned NOT NULL DEFAULT 2,
  `language` char(7) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`),
  KEY `idx_stem` (`stem`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_finder_tokens`
--

LOCK TABLES `q91ut_finder_tokens` WRITE;
/*!40000 ALTER TABLE `q91ut_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `q91ut_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `term_weight` float unsigned NOT NULL DEFAULT 0,
  `context` tinyint(1) unsigned NOT NULL DEFAULT 2,
  `context_weight` float unsigned NOT NULL DEFAULT 0,
  `total_weight` float unsigned NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_finder_tokens_aggregate`
--

LOCK TABLES `q91ut_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `q91ut_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_finder_types`
--

DROP TABLE IF EXISTS `q91ut_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_finder_types`
--

LOCK TABLES `q91ut_finder_types` WRITE;
/*!40000 ALTER TABLE `q91ut_finder_types` DISABLE KEYS */;
INSERT INTO `q91ut_finder_types` VALUES
(1,'Tag',''),
(2,'Category',''),
(3,'Contact',''),
(4,'Article',''),
(5,'News Feed','');
/*!40000 ALTER TABLE `q91ut_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_guidedtour_steps`
--

DROP TABLE IF EXISTS `q91ut_guidedtour_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_guidedtour_steps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tour_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `position` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `interactive_type` int(11) NOT NULL DEFAULT 1,
  `url` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `language` varchar(7) NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT '',
  `params` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tour` (`tour_id`),
  KEY `idx_state` (`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_guidedtour_steps`
--

LOCK TABLES `q91ut_guidedtour_steps` WRITE;
/*!40000 ALTER TABLE `q91ut_guidedtour_steps` DISABLE KEYS */;
INSERT INTO `q91ut_guidedtour_steps` VALUES
(1,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_NEW_DESCRIPTION',1,'bottom','.button-new',2,1,'administrator/index.php?option=com_guidedtours&view=tours','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(2,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_TITLE_DESCRIPTION',2,'bottom','#jform_title',2,2,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(3,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_URL_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_URL_DESCRIPTION',3,'top','#jform_url',2,2,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(4,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONTENT_DESCRIPTION',4,'bottom','#jform_description,#jform_description_ifr',2,3,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(5,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_COMPONENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_COMPONENT_DESCRIPTION',5,'top','joomla-field-fancy-select .choices',2,3,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(6,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_SAVECLOSE_DESCRIPTION',6,'top','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(7,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONGRATULATIONS_DESCRIPTION',7,'bottom','',0,1,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(8,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_COUNTER_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_COUNTER_DESCRIPTION',8,'top','#toursList tbody tr:nth-last-of-type(1) td:nth-of-type(5) .btn',2,1,'','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(9,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_NEW_DESCRIPTION',9,'bottom','.button-new',2,1,'','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(10,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TITLE_DESCRIPTION',10,'bottom','#jform_title',2,2,'','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(11,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_DESCRIPTION_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_DESCRIPTION_DESCRIPTION',11,'bottom','#jform_description,#jform_description_ifr',2,3,'','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(12,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_STATUS_DESCRIPTION',12,'bottom','#jform_published',2,3,'','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(13,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_POSITION_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_POSITION_DESCRIPTION',13,'top','#jform_position',2,3,'','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(14,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TARGET_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TARGET_DESCRIPTION',14,'top','#jform_target',2,3,'','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(15,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TYPE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TYPE_DESCRIPTION',15,'top','#jform_type',2,3,'','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(16,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_SAVECLOSE_DESCRIPTION',16,'bottom','#save-group-children-save .button-save',2,1,'','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(17,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_CONGRATULATIONS_DESCRIPTION',17,'bottom','',0,1,'','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(18,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NEW_DESCRIPTION',18,'bottom','.button-new',2,1,'administrator/index.php?option=com_content&view=articles','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(19,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TITLE_DESCRIPTION',19,'bottom','#jform_title',2,2,'administrator/index.php?option=com_content&view=article&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(20,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ALIAS_DESCRIPTION',20,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_content&view=article&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(21,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONTENT_DESCRIPTION',21,'bottom','#jform_articletext,#jform_articletext_ifr',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(22,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_STATUS_DESCRIPTION',22,'bottom','#jform_state',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(23,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CATEGORY_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CATEGORY_DESCRIPTION',23,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(24,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_FEATURED_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_FEATURED_DESCRIPTION',24,'bottom','#jform_featured0',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(25,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ACCESS_DESCRIPTION',25,'bottom','#jform_access',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(26,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TAGS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TAGS_DESCRIPTION',26,'top','joomla-field-fancy-select .choices[data-type=select-multiple]',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(27,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NOTE_DESCRIPTION',27,'top','#jform_note',2,2,'administrator/index.php?option=com_content&view=article&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(28,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_VERSIONNOTE_DESCRIPTION',28,'top','#jform_version_note',2,2,'administrator/index.php?option=com_content&view=article&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(29,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_SAVECLOSE_DESCRIPTION',29,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_content&view=article&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(30,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONGRATULATIONS_DESCRIPTION',30,'bottom','',0,1,'administrator/index.php?option=com_content&view=article&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(31,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NEW_DESCRIPTION',31,'bottom','.button-new',2,1,'administrator/index.php?option=com_categories&view=categories&extension=com_content','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(32,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TITLE_DESCRIPTION',32,'bottom','#jform_title',2,2,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(33,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ALIAS_DESCRIPTION',33,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(34,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONTENT_DESCRIPTION',34,'bottom','#jform_description,#jform_description_ifr',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(35,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_PARENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_PARENT_DESCRIPTION',35,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(36,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_STATUS_DESCRIPTION',36,'bottom','#jform_published',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(37,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ACCESS_DESCRIPTION',37,'bottom','#jform_access',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(38,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TAGS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TAGS_DESCRIPTION',38,'top','joomla-field-fancy-select .choices[data-type=select-multiple]',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(39,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NOTE_DESCRIPTION',39,'top','#jform_note',2,2,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(40,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_VERSIONNOTE_DESCRIPTION',40,'top','#jform_version_note',2,2,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(41,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_SAVECLOSE_DESCRIPTION',41,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(42,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONGRATULATIONS_DESCRIPTION',42,'bottom','',0,1,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(43,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_NEW_DESCRIPTION',43,'bottom','.button-new',2,1,'administrator/index.php?option=com_menus&view=menus','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(44,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_TITLE_DESCRIPTION',44,'bottom','#jform_title',2,2,'administrator/index.php?option=com_menus&view=menu&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(45,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_UNIQUENAME_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_UNIQUENAME_DESCRIPTION',45,'top','#jform_menutype',2,2,'administrator/index.php?option=com_menus&view=menu&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(46,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_DESCRIPTION_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_DESCRIPTION_DESCRIPTION',46,'top','#jform_menudescription',2,2,'administrator/index.php?option=com_menus&view=menu&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(47,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_SAVECLOSE_DESCRIPTION',47,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_menus&view=menu&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(48,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_CONGRATULATIONS_DESCRIPTION',48,'bottom','',0,1,'administrator/index.php?option=com_menus&view=menu&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(49,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NEW_DESCRIPTION',49,'bottom','.button-new',2,1,'administrator/index.php?option=com_tags&view=tags','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(50,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_TITLE_DESCRIPTION',50,'bottom','#jform_title',2,2,'administrator/index.php?option=com_tags&view=tag&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(51,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ALIAS_DESCRIPTION',51,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_tags&view=tag&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(52,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONTENT_DESCRIPTION',52,'bottom','#jform_description,#jform_description_ifr',2,3,'administrator/index.php?option=com_tags&view=tag&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(53,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_PARENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_PARENT_DESCRIPTION',53,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_tags&view=tag&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(54,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_STATUS_DESCRIPTION',54,'bottom','#jform_published',2,3,'administrator/index.php?option=com_tags&view=tag&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(55,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ACCESS_DESCRIPTION',55,'bottom','#jform_access',2,3,'administrator/index.php?option=com_tags&view=tag&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(56,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NOTE_DESCRIPTION',56,'top','#jform_note',2,2,'administrator/index.php?option=com_tags&view=tag&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(57,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_VERSIONNOTE_DESCRIPTION',57,'top','#jform_version_note',2,2,'administrator/index.php?option=com_tags&view=tag&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(58,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_SAVECLOSE_DESCRIPTION',58,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_tags&view=tag&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(59,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONGRATULATIONS_DESCRIPTION',59,'bottom','',0,1,'administrator/index.php?option=com_tags&view=tag&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(60,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_NEW_DESCRIPTION',60,'bottom','.button-new',2,1,'administrator/index.php?option=com_banners&view=banners','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(61,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_TITLE_DESCRIPTION',61,'bottom','#jform_name',2,2,'administrator/index.php?option=com_banners&view=banner&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(62,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_ALIAS_DESCRIPTION',62,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_banners&view=banner&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(63,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_DETAILS_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_DETAILS_DESCRIPTION',63,'bottom','.col-lg-9',2,3,'administrator/index.php?option=com_banners&view=banner&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(64,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_STATUS_DESCRIPTION',64,'bottom','#jform_state',2,3,'administrator/index.php?option=com_banners&view=banner&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(65,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CATEGORY_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CATEGORY_DESCRIPTION',65,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_banners&view=banner&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(66,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_PINNED_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_PINNED_DESCRIPTION',66,'bottom','#jform_sticky1',2,3,'administrator/index.php?option=com_banners&view=banner&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(67,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_VERSIONNOTE_DESCRIPTION',67,'top','#jform_version_note',2,2,'administrator/index.php?option=com_banners&view=banner&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(68,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_SAVECLOSE_DESCRIPTION',68,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_banners&view=banner&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(69,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CONGRATULATIONS_DESCRIPTION',69,'bottom','',0,1,'administrator/index.php?option=com_banners&view=banner&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(70,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_NEW_DESCRIPTION',70,'bottom','.button-new',2,1,'administrator/index.php?option=com_contact&view=contacts','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(71,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TITLE_DESCRIPTION',71,'bottom','#jform_name',2,2,'administrator/index.php?option=com_contact&view=contact&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(72,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ALIAS_DESCRIPTION',72,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_contact&view=contact&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(73,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_DETAILS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_DETAILS_DESCRIPTION',73,'bottom','.col-lg-9',0,1,'administrator/index.php?option=com_contact&view=contact&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(74,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_STATUS_DESCRIPTION',74,'bottom','#jform_published',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(75,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CATEGORY_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CATEGORY_DESCRIPTION',75,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(76,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_FEATURED_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_FEATURED_DESCRIPTION',76,'bottom','#jform_featured0',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(77,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ACCESS_DESCRIPTION',77,'bottom','#jform_access',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(78,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TAGS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TAGS_DESCRIPTION',78,'top','joomla-field-fancy-select .choices[data-type=select-multiple]',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(79,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_VERSIONNOTE_DESCRIPTION',79,'top','#jform_version_note',2,2,'administrator/index.php?option=com_contact&view=contact&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(80,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_SAVECLOSE_DESCRIPTION',80,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_contact&view=contact&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(81,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CONGRATULATIONS_DESCRIPTION',81,'bottom','',0,1,'administrator/index.php?option=com_contact&view=contact&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(82,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_NEW_DESCRIPTION',82,'bottom','.button-new',2,1,'administrator/index.php?option=com_newsfeeds&view=newsfeeds','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(83,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TITLE_DESCRIPTION',83,'bottom','#jform_name',2,2,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(84,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ALIAS_DESCRIPTION',84,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(85,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_LINK_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_LINK_DESCRIPTION',85,'bottom','#jform_link',2,2,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(86,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_DESCRIPTION_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_DESCRIPTION_DESCRIPTION',86,'bottom','#jform_description,#jform_description_ifr',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(87,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_STATUS_DESCRIPTION',87,'bottom','#jform_published',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(88,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CATEGORY_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CATEGORY_DESCRIPTION',88,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(89,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ACCESS_DESCRIPTION',89,'bottom','#jform_access',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(90,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TAGS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TAGS_DESCRIPTION',90,'top','joomla-field-fancy-select .choices[data-type=select-multiple]',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(91,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_VERSIONNOTE_DESCRIPTION',91,'top','#jform_version_note',2,2,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(92,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_SAVECLOSE_DESCRIPTION',92,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(93,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CONGRATULATIONS_DESCRIPTION',93,'bottom','',0,1,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(94,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_NEW_DESCRIPTION',94,'bottom','.button-new',2,1,'administrator/index.php?option=com_finder&view=filters','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(95,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_TITLE_DESCRIPTION',95,'bottom','#jform_title',2,2,'administrator/index.php?option=com_finder&view=filter&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(96,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_ALIAS_DESCRIPTION',96,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_finder&view=filter&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(97,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONTENT_DESCRIPTION',97,'bottom','.col-lg-9',0,1,'administrator/index.php?option=com_finder&view=filter&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(98,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_STATUS_DESCRIPTION',98,'bottom','#jform_state',2,3,'administrator/index.php?option=com_finder&view=filter&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(99,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_SAVECLOSE_DESCRIPTION',99,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_finder&view=filter&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(100,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONGRATULATIONS_DESCRIPTION',100,'bottom','',0,1,'administrator/index.php?option=com_finder&view=filter&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(101,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_NEW_DESCRIPTION',101,'bottom','.button-new',2,1,'administrator/index.php?option=com_users&view=user&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(102,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_NAME_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_NAME_DESCRIPTION',102,'bottom','#jform_name',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(103,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_LOGINNAME_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_LOGINNAME_DESCRIPTION',103,'bottom','#jform_username',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(104,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD_DESCRIPTION',104,'bottom','#jform_password',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(105,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD2_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD2_DESCRIPTION',105,'bottom','#jform_password2',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(106,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_EMAIL_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_EMAIL_DESCRIPTION',106,'bottom','#jform_email',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(107,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_SYSTEMEMAIL_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_SYSTEMEMAIL_DESCRIPTION',107,'top','#jform_sendEmail0',2,3,'administrator/index.php?option=com_users&view=user&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(108,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_STATUS_DESCRIPTION',108,'top','#jform_block0',2,3,'administrator/index.php?option=com_users&view=user&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(109,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORDRESET_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORDRESET_DESCRIPTION',109,'top','#jform_requireReset0',2,3,'administrator/index.php?option=com_users&view=user&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(110,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_SAVECLOSE_DESCRIPTION',110,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_users&view=user&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(111,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_CONGRATULATIONS_DESCRIPTION',111,'bottom','',0,1,'administrator/index.php?option=com_users&view=user&layout=edit','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,'*','',NULL),
(112,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_MENUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_MENUS_DESCRIPTION',1,'right','#sidebarmenu',0,1,'','2024-04-25 10:56:57',0,'2024-04-25 10:56:57',0,NULL,NULL,'*','',NULL),
(113,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_QUICKACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_QUICKACCESS_DESCRIPTION',2,'center','',0,1,'','2024-04-25 10:56:57',0,'2024-04-25 10:56:57',0,NULL,NULL,'*','',NULL),
(114,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_NOTIFICATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_NOTIFICATIONS_DESCRIPTION',3,'left','.quickicons-for-update_quickicon .card',0,1,'','2024-04-25 10:56:57',0,'2024-04-25 10:56:57',0,NULL,NULL,'*','',NULL),
(115,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_TOPBAR_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_TOPBAR_DESCRIPTION',4,'bottom','#header',0,1,'','2024-04-25 10:56:57',0,'2024-04-25 10:56:57',0,NULL,NULL,'*','',NULL),
(116,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_FINALWORDS_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_FINALWORDS_DESCRIPTION',5,'right','#sidebarmenu nav > ul:first-of-type > li:last-child',0,1,'','2024-04-25 10:56:57',0,'2024-04-25 10:56:57',0,NULL,NULL,'*','',NULL);
/*!40000 ALTER TABLE `q91ut_guidedtour_steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_guidedtours`
--

DROP TABLE IF EXISTS `q91ut_guidedtours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_guidedtours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `description` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `extensions` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `language` varchar(7) NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT '',
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `autostart` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_state` (`published`),
  KEY `idx_language` (`language`),
  KEY `idx_uid` (`uid`(191))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_guidedtours`
--

LOCK TABLES `q91ut_guidedtours` WRITE;
/*!40000 ALTER TABLE `q91ut_guidedtours` DISABLE KEYS */;
INSERT INTO `q91ut_guidedtours` VALUES
(1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_TITLE','joomla-guidedtours','COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_DESCRIPTION',1,'[\"com_guidedtours\"]','administrator/index.php?option=com_guidedtours&view=tours','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,1,'*','',1,0),
(2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_TITLE','joomla-guidedtoursteps','COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_DESCRIPTION',2,'[\"com_guidedtours\"]','administrator/index.php?option=com_guidedtours&view=tours','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,1,'*','',1,0),
(3,'COM_GUIDEDTOURS_TOUR_ARTICLES_TITLE','joomla-articles','COM_GUIDEDTOURS_TOUR_ARTICLES_DESCRIPTION',3,'[\"com_content\",\"com_categories\"]','administrator/index.php?option=com_content&view=articles','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,1,'*','',1,0),
(4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_TITLE','joomla-categories','COM_GUIDEDTOURS_TOUR_CATEGORIES_DESCRIPTION',4,'[\"com_content\",\"com_categories\"]','administrator/index.php?option=com_categories&view=categories&extension=com_content','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,1,'*','',1,0),
(5,'COM_GUIDEDTOURS_TOUR_MENUS_TITLE','joomla-menus','COM_GUIDEDTOURS_TOUR_MENUS_DESCRIPTION',5,'[\"com_menus\"]','administrator/index.php?option=com_menus&view=menus','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,1,'*','',1,0),
(6,'COM_GUIDEDTOURS_TOUR_TAGS_TITLE','joomla-tags','COM_GUIDEDTOURS_TOUR_TAGS_DESCRIPTION',6,'[\"com_tags\"]','administrator/index.php?option=com_tags&view=tags','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,1,'*','',1,0),
(7,'COM_GUIDEDTOURS_TOUR_BANNERS_TITLE','joomla-banners','COM_GUIDEDTOURS_TOUR_BANNERS_DESCRIPTION',7,'[\"com_banners\"]','administrator/index.php?option=com_banners&view=banners','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,1,'*','',1,0),
(8,'COM_GUIDEDTOURS_TOUR_CONTACTS_TITLE','joomla-contacts','COM_GUIDEDTOURS_TOUR_CONTACTS_DESCRIPTION',8,'[\"com_contact\"]','administrator/index.php?option=com_contact&view=contacts','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,1,'*','',1,0),
(9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_TITLE','joomla-newsfeeds','COM_GUIDEDTOURS_TOUR_NEWSFEEDS_DESCRIPTION',9,'[\"com_newsfeeds\"]','administrator/index.php?option=com_newsfeeds&view=newsfeeds','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,1,'*','',1,0),
(10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_TITLE','joomla-smartsearch','COM_GUIDEDTOURS_TOUR_SMARTSEARCH_DESCRIPTION',10,'[\"com_finder\"]','administrator/index.php?option=com_finder&view=filters','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,1,'*','',1,0),
(11,'COM_GUIDEDTOURS_TOUR_USERS_TITLE','joomla-users','COM_GUIDEDTOURS_TOUR_USERS_DESCRIPTION',11,'[\"com_users\"]','administrator/index.php?option=com_users&view=users','2023-04-20 08:58:08',0,'2023-04-20 08:58:08',0,NULL,NULL,1,'*','',1,0),
(12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_TITLE','joomla-welcome','COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_DESCRIPTION',1,'[\"com_cpanel\"]','administrator/index.php','2024-04-25 10:56:57',0,'2024-04-25 10:56:57',0,NULL,NULL,1,'*','',1,0);
/*!40000 ALTER TABLE `q91ut_guidedtours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_history`
--

DROP TABLE IF EXISTS `q91ut_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` varchar(50) NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL,
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `character_count` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` longtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_history`
--

LOCK TABLES `q91ut_history` WRITE;
/*!40000 ALTER TABLE `q91ut_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_jaem_log`
--

DROP TABLE IF EXISTS `q91ut_jaem_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_jaem_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ext_id` varchar(50) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `check_date` datetime DEFAULT NULL,
  `check_info` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ext_id` (`ext_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_jaem_log`
--

LOCK TABLES `q91ut_jaem_log` WRITE;
/*!40000 ALTER TABLE `q91ut_jaem_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_jaem_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_jaem_services`
--

DROP TABLE IF EXISTS `q91ut_jaem_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_jaem_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ws_name` varchar(255) NOT NULL,
  `ws_mode` varchar(50) NOT NULL DEFAULT 'local',
  `ws_uri` varchar(255) NOT NULL,
  `ws_user` varchar(100) NOT NULL,
  `ws_pass` varchar(100) NOT NULL,
  `ws_default` tinyint(1) NOT NULL DEFAULT 0,
  `ws_core` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_jaem_services`
--

LOCK TABLES `q91ut_jaem_services` WRITE;
/*!40000 ALTER TABLE `q91ut_jaem_services` DISABLE KEYS */;
INSERT INTO `q91ut_jaem_services` VALUES
(1,'Local Service','local','','','',1,1),
(2,'JoomlArt Updates','remote','http://update.joomlart.com/service/','','',0,1);
/*!40000 ALTER TABLE `q91ut_jaem_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_languages`
--

DROP TABLE IF EXISTS `q91ut_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0,
  `lang_code` char(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text DEFAULT NULL,
  `metadesc` mediumtext NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT 0,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_languages`
--

LOCK TABLES `q91ut_languages` WRITE;
/*!40000 ALTER TABLE `q91ut_languages` DISABLE KEYS */;
INSERT INTO `q91ut_languages` VALUES
(1,0,'en-GB','English (en-GB)','English (United Kingdom)','en','en_gb','','','','',1,1,1);
/*!40000 ALTER TABLE `q91ut_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_mail_templates`
--

DROP TABLE IF EXISTS `q91ut_mail_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_mail_templates` (
  `template_id` varchar(127) NOT NULL DEFAULT '',
  `extension` varchar(127) NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `htmlbody` mediumtext NOT NULL,
  `attachments` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`template_id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_mail_templates`
--

LOCK TABLES `q91ut_mail_templates` WRITE;
/*!40000 ALTER TABLE `q91ut_mail_templates` DISABLE KEYS */;
INSERT INTO `q91ut_mail_templates` VALUES
('com_actionlogs.notification','com_actionlogs','','COM_ACTIONLOGS_EMAIL_SUBJECT','COM_ACTIONLOGS_EMAIL_BODY','COM_ACTIONLOGS_EMAIL_HTMLBODY','','{\"tags\":[\"message\",\"date\",\"extension\"]}'),
('com_config.test_mail','com_config','','COM_CONFIG_SENDMAIL_SUBJECT','COM_CONFIG_SENDMAIL_BODY','','','{\"tags\":[\"sitename\",\"method\"]}'),
('com_contact.mail','com_contact','','COM_CONTACT_ENQUIRY_SUBJECT','COM_CONTACT_ENQUIRY_TEXT','','','{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\"]}'),
('com_contact.mail.copy','com_contact','','COM_CONTACT_COPYSUBJECT_OF','COM_CONTACT_COPYTEXT_OF','','','{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\"]}'),
('com_messages.new_message','com_messages','','COM_MESSAGES_NEW_MESSAGE','COM_MESSAGES_NEW_MESSAGE_BODY','','','{\"tags\":[\"subject\",\"message\",\"fromname\",\"sitename\",\"siteurl\",\"fromemail\",\"toname\",\"toemail\"]}'),
('com_privacy.notification.admin.export','com_privacy','','COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_EXPORT_REQUEST','COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_EXPORT_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.admin.remove','com_privacy','','COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_REMOVE_REQUEST','COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_REMOVE_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.export','com_privacy','','COM_PRIVACY_EMAIL_REQUEST_SUBJECT_EXPORT_REQUEST','COM_PRIVACY_EMAIL_REQUEST_BODY_EXPORT_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.remove','com_privacy','','COM_PRIVACY_EMAIL_REQUEST_SUBJECT_REMOVE_REQUEST','COM_PRIVACY_EMAIL_REQUEST_BODY_REMOVE_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.userdataexport','com_privacy','','COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_SUBJECT','COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_BODY','','','{\"tags\":[\"sitename\",\"url\"]}'),
('com_users.massmail.mail','com_users','','COM_USERS_MASSMAIL_MAIL_SUBJECT','COM_USERS_MASSMAIL_MAIL_BODY','','','{\"tags\":[\"subject\",\"body\",\"subjectprefix\",\"bodysuffix\"]}'),
('com_users.password_reset','com_users','','COM_USERS_EMAIL_PASSWORD_RESET_SUBJECT','COM_USERS_EMAIL_PASSWORD_RESET_BODY','','','{\"tags\":[\"name\",\"email\",\"sitename\",\"link_text\",\"link_html\",\"token\"]}'),
('com_users.registration.admin.new_notification','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_NOTIFICATION_TO_ADMIN_BODY','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.admin.verification_request','com_users','','COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_SUBJECT','COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"email\",\"username\",\"activate\"]}'),
('com_users.registration.user.admin_activated','com_users','','COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_SUBJECT','COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.admin_activation','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY_NOPW','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.admin_activation_w_pw','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.registration.user.registration_mail','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_BODY_NOPW','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.registration_mail_w_pw','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_BODY','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.registration.user.self_activation','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY_NOPW','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.self_activation_w_pw','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.reminder','com_users','','COM_USERS_EMAIL_USERNAME_REMINDER_SUBJECT','COM_USERS_EMAIL_USERNAME_REMINDER_BODY','','','{\"tags\":[\"name\",\"username\",\"sitename\",\"email\",\"link_text\",\"link_html\"]}'),
('plg_system_tasknotification.failure_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_BODY','','','{\"tags\": [\"task_id\", \"task_title\", \"exit_code\", \"exec_data_time\", \"task_output\"]}'),
('plg_system_tasknotification.fatal_recovery_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_BODY','','','{\"tags\": [\"task_id\", \"task_title\"]}'),
('plg_system_tasknotification.orphan_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_BODY','','','{\"tags\": [\"task_id\", \"task_title\"]}'),
('plg_system_tasknotification.success_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_BODY','','','{\"tags\":[\"task_id\", \"task_title\", \"exec_data_time\", \"task_output\"]}'),
('plg_task_privacyconsent.request.reminder','plg_task_privacyconsent','','PLG_TASK_PRIVACYCONSENT_EMAIL_REMIND_SUBJECT','PLG_TASK_PRIVACYCONSENT_EMAIL_REMIND_BODY','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('plg_task_updatenotification.mail','plg_task_updatenotification','','PLG_TASK_UPDATENOTIFICATION_EMAIL_SUBJECT','PLG_TASK_UPDATENOTIFICATION_EMAIL_BODY','','','{\"tags\":[\"newversion\",\"curversion\",\"sitename\",\"url\",\"link\",\"releasenews\"]}'),
('plg_user_joomla.mail','plg_user_joomla','','PLG_USER_JOOMLA_NEW_USER_EMAIL_SUBJECT','PLG_USER_JOOMLA_NEW_USER_EMAIL_BODY','','','{\"tags\":[\"name\",\"sitename\",\"url\",\"username\",\"password\",\"email\"]}');
/*!40000 ALTER TABLE `q91ut_mail_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_menu`
--

DROP TABLE IF EXISTS `q91ut_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT 1 COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `browserNav` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT 0,
  `params` mediumtext NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT 0,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_language` (`language`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100))
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_menu`
--

LOCK TABLES `q91ut_menu` WRITE;
/*!40000 ALTER TABLE `q91ut_menu` DISABLE KEYS */;
INSERT INTO `q91ut_menu` VALUES
(1,'','Menu_Item_Root','root','','','','',1,0,0,0,NULL,NULL,0,0,'',0,'',0,117,0,'*',0,NULL,NULL),
(2,'main','com_banners','Banners','','Banners','index.php?option=com_banners','component',1,1,1,4,NULL,NULL,0,0,'class:bookmark',0,'',1,10,0,'*',1,NULL,NULL),
(3,'main','com_banners','Banners','','Banners/Banners','index.php?option=com_banners&view=banners','component',1,2,2,4,NULL,NULL,0,0,'class:banners',0,'',2,3,0,'*',1,NULL,NULL),
(4,'main','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&view=categories&extension=com_banners','component',1,2,2,6,NULL,NULL,0,0,'class:banners-cat',0,'',4,5,0,'*',1,NULL,NULL),
(5,'main','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',1,2,2,4,NULL,NULL,0,0,'class:banners-clients',0,'',6,7,0,'*',1,NULL,NULL),
(6,'main','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',1,2,2,4,NULL,NULL,0,0,'class:banners-tracks',0,'',8,9,0,'*',1,NULL,NULL),
(7,'main','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',1,1,1,8,NULL,NULL,0,0,'class:address-book',0,'',55,66,0,'*',1,NULL,NULL),
(8,'main','com_contact_contacts','Contacts','','Contacts/Contacts','index.php?option=com_contact&view=contacts','component',1,7,2,8,NULL,NULL,0,0,'class:contact',0,'',56,57,0,'*',1,NULL,NULL),
(9,'main','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&view=categories&extension=com_contact','component',1,7,2,6,NULL,NULL,0,0,'class:contact-cat',0,'',58,59,0,'*',1,NULL,NULL),
(13,'main','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',1,1,1,17,NULL,NULL,0,0,'class:rss',0,'',81,86,0,'*',1,NULL,NULL),
(14,'main','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds&view=newsfeeds','component',1,13,2,17,NULL,NULL,0,0,'class:newsfeeds',0,'',82,83,0,'*',1,NULL,NULL),
(15,'main','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&view=categories&extension=com_newsfeeds','component',1,13,2,6,NULL,NULL,0,0,'class:newsfeeds-cat',0,'',84,85,0,'*',1,NULL,NULL),
(18,'main','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',1,1,1,27,NULL,NULL,0,0,'class:search-plus',0,'',91,102,0,'*',1,NULL,NULL),
(20,'main','com_tags','Tags','','Tags','index.php?option=com_tags&view=tags','component',1,1,1,29,NULL,NULL,0,1,'class:tags',0,'',105,106,0,'',1,NULL,NULL),
(22,'main','com_associations','Multilingual Associations','','Multilingual Associations','index.php?option=com_associations&view=associations','component',1,1,1,34,NULL,NULL,0,0,'class:language',0,'',109,110,0,'*',1,NULL,NULL),
(101,'mainmenu','Home','homepage','','homepage','index.php?option=com_content&view=featured','component',1,1,1,22,NULL,NULL,0,1,' ',14,'{\"featured_categories\":[\"8\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"0\",\"num_intro_articles\":\"4\",\"num_columns\":\"1\",\"num_links\":\"0\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"page_subheading\":\"\",\"show_title\":\"1\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"0\",\"info_block_show_title\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"Free Joomla template for Business - JA Stark\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"Free Joomla template for Business - JA Stark\",\"menu-meta_keywords\":\"free business joomla template, joomla business template, t4 joomla template framework, free t4 joomla template, free startup joomla template\",\"robots\":\"\",\"secure\":0}',11,18,1,'*',0,NULL,NULL),
(102,'usermenu','Your Profile','your-profile','','your-profile','index.php?option=com_users&view=profile&layout=edit','component',1,1,1,25,NULL,NULL,0,2,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',67,68,0,'*',0,NULL,NULL),
(103,'usermenu','Site Administrator','2013-11-16-23-26-41','','2013-11-16-23-26-41','administrator','url',1,1,1,0,NULL,NULL,0,6,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',75,76,0,'*',0,NULL,NULL),
(104,'usermenu','Submit an Article','submit-an-article','','submit-an-article','index.php?option=com_content&view=form&layout=edit','component',1,1,1,22,NULL,NULL,0,3,'',0,'{\"enable_category\":\"0\",\"catid\":\"2\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',69,70,0,'*',0,NULL,NULL),
(106,'usermenu','Template Settings','template-settings','','template-settings','index.php?option=com_config&view=templates','component',1,1,1,23,NULL,NULL,0,6,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',77,78,0,'*',0,NULL,NULL),
(107,'usermenu','Site Settings','site-settings','','site-settings','index.php?option=com_config&view=config','component',1,1,1,23,NULL,NULL,0,6,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',79,80,0,'*',0,NULL,NULL),
(108,'mainmenu','Pages','pages','','pages','','heading',1,1,1,0,NULL,NULL,0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',19,48,0,'*',0,NULL,NULL),
(109,'mainmenu','Blog','blog','','blog','index.php?option=com_content&view=category&layout=blog&id=8','component',1,1,1,22,NULL,NULL,0,1,' ',0,'{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"1\",\"num_links\":\"0\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_featured\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"0\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"0\",\"show_tags\":\"0\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',49,50,0,'*',0,NULL,NULL),
(110,'mainmenu','Contact Us','contact-us','','contact-us','index.php?option=com_contact&view=contact&id=1','component',1,1,1,8,NULL,NULL,0,1,' ',0,'{\"presentation_style\":\"plain\",\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"show_name\":\"\",\"show_tags\":\"\",\"show_info\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"add_mailto_link\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_misc\":\"\",\"show_articles\":\"\",\"articles_display_num\":\"\",\"show_profile\":\"\",\"show_links\":\"1\",\"linka_name\":\"facebook-f\",\"linkb_name\":\"google plus\",\"linkc_name\":\"twitter\",\"linkd_name\":\"youtube\",\"linke_name\":\"vimeo\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',53,54,0,'*',0,NULL,NULL),
(111,'mainmenu','User Page','user-page','','pages/user-page','','heading',1,108,2,0,NULL,NULL,0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',20,29,0,'*',0,NULL,NULL),
(112,'mainmenu','Joomlart Content','joomlart-content','','pages/joomlart-content','','heading',1,108,2,0,NULL,NULL,0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',30,39,0,'*',0,NULL,NULL),
(113,'mainmenu','Other Pages','other-pages','','pages/other-pages','','heading',1,108,2,0,NULL,NULL,0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',40,47,0,'*',0,NULL,NULL),
(114,'mainmenu','Login Form','login-form','','pages/user-page/login-form','index.php?option=com_users&view=login','component',1,111,3,25,NULL,NULL,0,1,' ',0,'{\"loginredirectchoice\":\"1\",\"login_redirect_url\":\"\",\"login_redirect_menuitem\":\"\",\"logindescription_show\":\"1\",\"login_description\":\"\",\"login_image\":\"\",\"login_image_alt\":\"\",\"logoutredirectchoice\":\"1\",\"logout_redirect_url\":\"\",\"logout_redirect_menuitem\":\"\",\"logoutdescription_show\":\"1\",\"logout_description\":\"\",\"logout_image\":\"\",\"logout_image_alt\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"page_heading_desc\":\"\",\"page_heading_bg_color\":\"\",\"page_heading_bg_img\":\"\",\"og_type\":\"\",\"og_title\":\"\",\"og_desc\":\"\",\"og_img\":\"\"}',21,22,0,'*',0,NULL,NULL),
(115,'mainmenu','Registration','registration','','pages/user-page/registration','index.php?option=com_users&view=registration','component',1,111,3,25,NULL,NULL,0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',23,24,0,'*',0,NULL,NULL),
(116,'mainmenu','User Profile ','user-profile','','pages/user-page/user-profile','index.php?option=com_users&view=profile','component',1,111,3,25,NULL,NULL,0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"page_heading_desc\":\"\",\"page_heading_bg_color\":\"\",\"page_heading_bg_img\":\"\"}',25,26,0,'*',0,NULL,NULL),
(117,'mainmenu','Privacy','privacy','','pages/user-page/privacy','index.php?option=com_privacy&view=confirm','component',1,111,3,35,NULL,NULL,0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',27,28,0,'*',0,NULL,NULL),
(118,'mainmenu','Category Blog','category-blog','','pages/joomlart-content/category-blog','index.php?Itemid=','alias',1,112,3,0,NULL,NULL,0,1,' ',0,'{\"aliasoptions\":\"109\",\"alias_redirect\":0,\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',31,32,0,'*',0,NULL,NULL),
(119,'mainmenu','Featured Articles','featured-articles','','pages/joomlart-content/featured-articles','index.php?option=com_content&view=featured','component',1,112,3,22,NULL,NULL,0,1,' ',0,'{\"featured_categories\":[\"8\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"0\",\"num_intro_articles\":\"8\",\"num_columns\":\"4\",\"num_links\":\"0\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"page_subheading\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"0\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_tags\":\"0\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',33,34,0,'*',0,NULL,NULL),
(120,'mainmenu','Tags Page','tags-page','','pages/joomlart-content/tags-page','index.php?option=com_tags&view=tag&id[0]=3&id[1]=4','component',1,112,3,29,NULL,NULL,0,1,' ',0,'{\"show_tag_title\":\"\",\"tag_list_show_tag_image\":\"\",\"tag_list_show_tag_description\":\"\",\"tag_list_image\":\"\",\"tag_list_description\":\"\",\"tag_list_orderby\":\"\",\"tag_list_orderby_direction\":\"\",\"tag_list_show_item_image\":\"\",\"tag_list_show_item_description\":\"\",\"tag_list_item_maximum_characters\":\"\",\"filter_field\":\"\",\"show_pagination_limit\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"return_any_or_all\":\"\",\"include_children\":\"\",\"show_feed_link\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',35,36,0,'*',0,NULL,NULL),
(121,'mainmenu','Typography','typography','','pages/joomlart-content/typography','index.php?option=com_content&view=article&id=10','component',1,112,3,22,NULL,NULL,0,1,' ',0,'{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"0\",\"info_block_position\":\"\",\"info_block_show_title\":\"0\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"0\",\"show_email_icon\":\"\",\"show_hits\":\"0\",\"show_tags\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',37,38,0,'*',0,NULL,NULL),
(123,'mainmenu','Smart Search','smart-search','','pages/other-pages/smart-search','index.php?option=com_finder&view=search','component',1,113,3,27,NULL,NULL,0,1,' ',0,'{\"show_date_filters\":\"\",\"show_advanced\":\"\",\"expand_advanced\":\"\",\"show_description\":\"\",\"description_length\":\"\",\"show_url\":\"\",\"show_pagination_limit\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"allow_empty_query\":\"\",\"show_suggested_query\":\"\",\"show_explained_query\":\"\",\"sort_order\":\"\",\"sort_direction\":\"\",\"show_feed_link\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',43,44,0,'*',0,NULL,NULL),
(125,'mainmenu','Error Page','error-page','','pages/other-pages/error-page','index.php/error999','url',1,113,3,0,NULL,NULL,0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',45,46,0,'*',0,NULL,NULL),
(126,'mainmenu','Projects','projects','','projects','index.php?option=com_content&view=category&layout=ja_stark:projects&id=9','component',1,1,1,22,NULL,NULL,0,1,' ',0,'{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"0\",\"num_intro_articles\":\"8\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_featured\":\"\",\"article_layout\":\"ja_stark:project\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"0\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"0\",\"show_readmore_title\":\"0\",\"show_icons\":\"\",\"show_print_icon\":\"0\",\"show_email_icon\":\"\",\"show_hits\":\"0\",\"show_tags\":\"0\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\" one-column\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',51,52,0,'*',0,NULL,NULL),
(127,'mainmenu','Red Color','homepage-red','','homepage/homepage-red','index.php?option=com_content&view=featured','component',1,101,2,22,NULL,NULL,0,1,' ',15,'{\"featured_categories\":[\"8\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"0\",\"num_intro_articles\":\"4\",\"num_columns\":\"4\",\"num_links\":\"0\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"page_subheading\":\"\",\"show_title\":\"1\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"0\",\"info_block_show_title\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',12,13,0,'*',0,NULL,NULL),
(128,'mainmenu','Default Color','default-color','','homepage/default-color','index.php?Itemid=','alias',1,101,2,0,NULL,NULL,0,1,' ',14,'{\"aliasoptions\":\"101\",\"alias_redirect\":0,\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}',16,17,0,'*',0,NULL,NULL),
(130,'mainmenu','Cyan Color','homepage-cyan','','homepage/homepage-cyan','index.php?option=com_content&view=featured','component',1,101,2,22,NULL,NULL,0,1,' ',16,'{\"featured_categories\":[\"8\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"0\",\"num_intro_articles\":\"4\",\"num_columns\":\"4\",\"num_links\":\"0\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"page_subheading\":\"\",\"show_title\":\"1\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"0\",\"info_block_show_title\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',14,15,0,'*',0,NULL,NULL),
(133,'main','COM_JAEXTMANAGER','com-jaextmanager','','com-jaextmanager','index.php?option=com_jaextmanager','component',1,1,1,10008,NULL,NULL,0,1,'components/com_jaextmanager/assets/images/jauc.png',0,'{}',111,112,0,'',1,NULL,NULL),
(135,'main','-','1629256213-9654','','Contacts/1629256213-9654','#','separator',1,7,2,33,NULL,NULL,0,0,' ',0,'{}',60,61,0,'*',1,NULL,NULL),
(136,'main','mod_menu_fields','contact-custom-fields','','Contacts/contact-custom-fields','index.php?option=com_fields&context=com_contact.contact','component',1,7,2,33,NULL,NULL,0,0,' ',0,'{}',62,63,0,'*',1,NULL,NULL),
(137,'main','mod_menu_fields_group','contact-custom-fields-group','','Contacts/contact-custom-fields-group','index.php?option=com_fields&view=groups&context=com_contact.contact','component',1,7,2,33,NULL,NULL,0,0,' ',0,'{}',64,65,0,'*',1,NULL,NULL),
(138,'main','-','1629256213-9669','','Smart Search/1629256213-9669','#','separator',1,18,2,27,NULL,NULL,0,0,' ',0,'{}',92,93,0,'*',1,NULL,NULL),
(139,'main','com_finder_index','smart-search-index','','Smart Search/smart-search-index','index.php?option=com_finder&view=index','component',1,18,2,27,NULL,NULL,0,0,' ',0,'{}',94,95,0,'*',1,NULL,NULL),
(140,'main','com_finder_maps','smart-search-maps','','Smart Search/smart-search-maps','index.php?option=com_finder&view=maps','component',1,18,2,27,NULL,NULL,0,0,' ',0,'{}',96,97,0,'*',1,NULL,NULL),
(141,'main','com_finder_filters','smart-search-filters','','Smart Search/smart-search-filters','index.php?option=com_finder&view=filters','component',1,18,2,27,NULL,NULL,0,0,' ',0,'{}',98,99,0,'*',1,NULL,NULL),
(142,'main','com_finder_searches','smart-search-searches','','Smart Search/smart-search-searches','index.php?option=com_finder&view=searches','component',1,18,2,27,NULL,NULL,0,0,' ',0,'{}',100,101,0,'*',1,NULL,NULL),
(143,'usermenu','User reset','user-reset','','user-reset','index.php?option=com_users&view=reset','component',1,1,1,25,NULL,NULL,0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"page_heading_desc\":\"\",\"page_heading_bg_color\":\"\",\"page_heading_bg_img\":\"\"}',113,114,0,'*',0,NULL,NULL),
(144,'usermenu','User Reminder','user-reminder','','user-reminder','index.php?option=com_users&view=remind','component',1,1,1,25,NULL,NULL,0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"page_heading_desc\":\"\",\"page_heading_bg_color\":\"\",\"page_heading_bg_img\":\"\"}',115,116,0,'*',0,NULL,NULL);
/*!40000 ALTER TABLE `q91ut_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_menu_types`
--

DROP TABLE IF EXISTS `q91ut_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_menu_types`
--

LOCK TABLES `q91ut_menu_types` WRITE;
/*!40000 ALTER TABLE `q91ut_menu_types` DISABLE KEYS */;
INSERT INTO `q91ut_menu_types` VALUES
(1,0,'mainmenu','Main Menu','The main menu for the site',0,1),
(2,0,'usermenu','User Menu','A Menu for logged-in Users',0,2);
/*!40000 ALTER TABLE `q91ut_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_messages`
--

DROP TABLE IF EXISTS `q91ut_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT 0,
  `user_id_to` int(10) unsigned NOT NULL DEFAULT 0,
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `priority` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` mediumtext NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_messages`
--

LOCK TABLES `q91ut_messages` WRITE;
/*!40000 ALTER TABLE `q91ut_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_messages_cfg`
--

DROP TABLE IF EXISTS `q91ut_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_messages_cfg`
--

LOCK TABLES `q91ut_messages_cfg` WRITE;
/*!40000 ALTER TABLE `q91ut_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_modules`
--

DROP TABLE IF EXISTS `q91ut_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `params` mediumtext NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_modules`
--

LOCK TABLES `q91ut_modules` WRITE;
/*!40000 ALTER TABLE `q91ut_modules` DISABLE KEYS */;
INSERT INTO `q91ut_modules` VALUES
(1,39,'Main Menu','','',1,'off-canvas',NULL,NULL,NULL,NULL,1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":1,\"tag_id\":\"\",\"class_sfx\":\" nav-pills\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
(2,40,'Login','','',1,'login',NULL,NULL,NULL,NULL,1,'mod_login',1,1,'',1,'*'),
(3,41,'Popular Articles','','',3,'cpanel',NULL,NULL,NULL,NULL,1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
(4,42,'Recently Added Articles','','',4,'cpanel',NULL,NULL,NULL,NULL,1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
(8,43,'Toolbar','','',1,'toolbar',NULL,NULL,NULL,NULL,1,'mod_toolbar',3,1,'',1,'*'),
(9,44,'Notifications','','',3,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',3,1,'{\"context\":\"update_quickicon\",\"header_icon\":\"fas fa-sync\",\"show_global\":\"0\",\"show_checkin\":\"0\",\"show_cache\":\"0\",\"show_users\":\"0\",\"show_articles\":\"0\",\"show_categories\":\"0\",\"show_media\":\"0\",\"show_menuItems\":\"0\",\"show_modules\":\"0\",\"show_plugins\":\"0\",\"show_templates\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(10,45,'Logged-in Users','','',2,'cpanel',NULL,NULL,NULL,NULL,1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
(12,46,'Admin Menu','','',1,'menu',NULL,NULL,NULL,NULL,1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),
(13,47,'Admin Submenu','','',1,'submenu',NULL,NULL,NULL,NULL,1,'mod_submenu',3,1,'',1,'*'),
(14,48,'User Status','','',2,'status',NULL,NULL,NULL,NULL,1,'mod_status',3,1,'',1,'*'),
(15,49,'Title','','',1,'title',NULL,NULL,NULL,NULL,1,'mod_title',3,1,'',1,'*'),
(16,50,'Login Form','','',1,'sidebar-r',NULL,NULL,NULL,NULL,1,'mod_login',1,1,'{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"\",\"logout\":\"\",\"greeting\":1,\"name\":0,\"profilelink\":0,\"usesecure\":0,\"usetext\":0,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
(17,51,'Breadcrumbs','','',1,'position-2',NULL,NULL,NULL,NULL,1,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}',0,'*'),
(79,52,'Multilanguage status','','',2,'status',NULL,NULL,NULL,NULL,0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
(86,53,'Joomla Version','','',1,'status',NULL,NULL,NULL,NULL,1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
(87,54,'Popular Tags','','',1,'sidebar-r',NULL,NULL,NULL,NULL,1,'mod_tags_popular',1,1,'{\"maximum\":10,\"timeframe\":\"alltime\",\"order_value\":\"count\",\"order_direction\":1,\"display_count\":0,\"no_results_text\":0,\"minsize\":1,\"maxsize\":2,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"owncache\":1,\"cache_time\":900,\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
(88,55,'Site Information','','',3,'cpanel',NULL,NULL,NULL,NULL,1,'mod_stats_admin',3,1,'{\"serverinfo\":\"1\",\"siteinfo\":\"1\",\"counter\":\"0\",\"increase\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',1,'*'),
(89,56,'Release News','','',0,'postinstall',NULL,NULL,NULL,NULL,1,'mod_feed',1,1,'{\"rssurl\":\"https:\\/\\/www.joomla.org\\/announcements\\/release-news.feed\",\"rssrtl\":\"0\",\"rsstitle\":\"1\",\"rssdesc\":\"1\",\"rssimage\":\"1\",\"rssitems\":\"3\",\"rssitemdesc\":\"1\",\"word_count\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',1,'*'),
(90,57,'Latest Articles','','',1,'sidebar-r',NULL,NULL,NULL,NULL,1,'mod_articles_latest',1,1,'{\"count\":5,\"show_featured\":\"\",\"ordering\":\"c_dsc\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
(91,58,'User Menu','','',3,'position-7',NULL,NULL,NULL,NULL,1,'mod_menu',1,1,'{\"menutype\":\"usermenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
(92,59,'Image Module','','<p><img src=\"images/headers/blue-flower.jpg\" alt=\"Blue Flower\" /></p>',0,'position-3',NULL,NULL,NULL,NULL,1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
(94,61,'Latest Actions','','',0,'cpanel',NULL,NULL,NULL,NULL,1,'mod_latestactions',6,1,'{}',1,'*'),
(95,65,'Section Top ','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dignissim consectetur nibh, sed condimentum arcu dictum id. Sed faucibus leo vel dui viverra, eu egestas tellus consequat. Morbi dapibus, ex vel varius tristique, felis tellus molestie eros, porttitor tempus sapien ligula sed felis. Vestibulum nec risus placerat, dictum felis et, convallis quam. Phasellus sed odio quis mi tincidunt luctus id non dui. Vivamus eu viverra est. Suspendisse ac commodo sem, id dapibus enim. Etiam finibus vehicula erat non euismod. Donec fringilla, enim a elementum blandit, sem neque efficitur ipsum, eu vehicula tortor urna vel ante. Proin nunc leo, lobortis non magna sed, hendrerit feugiat ligula. Aenean in quam ac diam ornare lobortis et id nunc. Nam ultrices, tortor et viverra sagittis, neque lectus euismod justo, id viverra metus risus eget risus. Suspendisse congue fermentum ornare. Fusce porttitor, nunc ut varius commodo, metus nibh bibendum lacus, at elementum risus lectus sit amet nibh.</p>',1,'section-top',NULL,NULL,NULL,NULL,1,'mod_custom',1,1,'{\"prepare_content\":0,\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
(96,66,'Section Bottom','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dignissim consectetur nibh, sed condimentum arcu dictum id. Sed faucibus leo vel dui viverra, eu egestas tellus consequat. Morbi dapibus, ex vel varius tristique, felis tellus molestie eros, porttitor tempus sapien ligula sed felis. Vestibulum nec risus placerat, dictum felis et, convallis quam. Phasellus sed odio quis mi tincidunt luctus id non dui. Vivamus eu viverra est. Suspendisse ac commodo sem, id dapibus enim. Etiam finibus vehicula erat non euismod. Donec fringilla, enim a elementum blandit, sem neque efficitur ipsum, eu vehicula tortor urna vel ante. Proin nunc leo, lobortis non magna sed, hendrerit feugiat ligula. Aenean in quam ac diam ornare lobortis et id nunc. Nam ultrices, tortor et viverra sagittis, neque lectus euismod justo, id viverra metus risus eget risus. Suspendisse congue fermentum ornare. Fusce porttitor, nunc ut varius commodo, metus nibh bibendum lacus, at elementum risus lectus sit amet nibh.</p>',1,'section-bottom',NULL,NULL,NULL,NULL,1,'mod_custom',1,1,'{\"prepare_content\":0,\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
(97,67,'Hero','','<p>Suspendisse nibh sapien, eleifend sed lorem ac, faucibus vehicula dui. Donec pretium elit sit amet orci cursus, eu viverra urna lobortis. Suspendisse venenatis non nulla eget hendrerit. Integer ornare aliquam felis, at cursus velit luctus nec. Integer imperdiet nisl sit amet magna volutpat, eget lobortis magna dictum. Suspendisse potenti. Donec fringilla ultricies libero, in volutpat arcu convallis sit amet. Suspendisse faucibus dui at lacinia ornare. Ut congue lorem ut ligula semper, in lacinia nibh efficitur. Vivamus consectetur est aliquam, elementum erat ut, condimentum est.</p>',1,'hero',NULL,NULL,'2021-08-18 03:05:55',NULL,-2,'mod_custom',1,1,'{\"prepare_content\":0,\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
(98,68,'Copyright','','',1,'footnav-3',NULL,NULL,NULL,NULL,1,'mod_footer',1,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
(99,79,'Masthead','','',1,'masthead',NULL,NULL,'2021-08-18 03:05:55',NULL,-2,'mod_jamasthead',1,1,'{\"default-title\":\"JA Masthead Module for Joomla 2.5 & 3.x\",\"default-description\":\"JA Masthead Module is used to Masthead title like the JoomlArt Masthead. With this module, the Masshead can be configured to be in any pages with different titles, descriptions as well as background images and background video. For video background, it supports local video with types: .mp4, ogg, webm.\",\"menuitem_config\":{\"item_id\":[[\"109\"]],\"title\":[\"Blog Page\"],\"description\":[\"\"],\"background\":[\"images\\/joomlart\\/slideshow\\/item-1.jpg\"]},\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
(100,80,'Google Map','','{jamap}{/jamap}',1,'masthead',NULL,NULL,NULL,NULL,0,'mod_custom',1,0,'{\"prepare_content\":0,\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
(101,83,'Hero','','',1,'hero-1',NULL,NULL,NULL,NULL,1,'mod_ja_acm',1,0,'{\"jatools-config\":\"{\\\":type\\\":\\\"ja_stark:hero\\\",\\\"hero\\\":{\\\"jatools-layout-hero\\\":\\\"style-1\\\",\\\"hero-style[hero-animation]\\\":[\\\"fadeInRight\\\"],\\\"hero-style[hero-text-align]\\\":[\\\"text-left\\\"],\\\"hero-style[hero-content-heading-tag]\\\":[\\\"h1\\\"],\\\"hero-style[hero-heading]\\\":[\\\"Simple Design, Prototyping and Collaboration.\\\"],\\\"hero-style[hero-intro]\\\":[\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et pharetra dui, vulputate pellentesque nunc. Morbi egestas consectetur volutpat. Sed euismod turpis sed dignissim molestie.\\\"],\\\"hero-style[hero-text]\\\":[\\\"Find Out More\\\"],\\\"hero-style[hero-link]\\\":[\\\"#\\\"],\\\"hero-style[hero-class]\\\":[\\\"btn-secondary\\\"]}}\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\",\"sub-title\":\"\",\"sub-desc\":\"\",\"mod-layouts\":\"0\"}',0,'*'),
(102,84,'Our Story','','',1,'section-1',NULL,NULL,NULL,NULL,1,'mod_ja_acm',1,1,'{\"jatools-config\":\"{\\\":type\\\":\\\"ja_stark:hero\\\",\\\"hero\\\":{\\\"jatools-layout-hero\\\":\\\"style-1\\\",\\\"hero-style[hero-animation]\\\":[\\\"fadeInRight\\\"],\\\"hero-style[hero-text-align]\\\":[\\\"text-left\\\"],\\\"hero-style[hero-content-heading-tag]\\\":[\\\"h2\\\"],\\\"hero-style[hero-heading]\\\":[\\\"Stark is a small Design Agency based in Prague. We love to find simple solutions to ((a href=\\\\\\\"#\\\\\\\"))complex challenges((\\/a)).\\\"],\\\"hero-style[hero-intro]\\\":[\\\"Nullam cursus arcu vel pellentesque blandit. Suspendisse scelerisque ligula \\\\nbestibulum quam at accumsan. Donec nibh neque, pretium ut dui nec, venenatis pharetra magna. Mauris sagittis non ante ut aliquet.\\\"],\\\"hero-style[hero-text]\\\":[\\\"Read More About Us\\\"],\\\"hero-style[hero-link]\\\":[\\\"#\\\"],\\\"hero-style[hero-class]\\\":[\\\"btn-secondary\\\"]}}\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\",\"sub-title\":\"\",\"sub-desc\":\"\",\"mod-layouts\":\"0\"}',0,'*'),
(103,85,'Our Services','','',1,'section-2',NULL,NULL,NULL,NULL,1,'mod_ja_acm',1,1,'{\"jatools-config\":\"{\\\":type\\\":\\\"ja_stark:hero\\\",\\\"hero\\\":{\\\"jatools-layout-hero\\\":\\\"style-2\\\",\\\"hero-style[hero-text-align]\\\":[\\\"text-left\\\"],\\\"hero-style[hero-content-heading-tag]\\\":[\\\"h5\\\"],\\\"hero-style[hero-content]\\\":{\\\"hero-style[hero-content][hero-heading]\\\":[\\\"Easy Managment\\\",\\\"Grow your Business\\\",\\\"Highly Customizable\\\",\\\"Premium Support\\\"],\\\"hero-style[hero-content][hero-img]\\\":[\\\"images\\/demo\\/hero\\/item-1.png\\\",\\\"images\\/demo\\/hero\\/item-2.png\\\",\\\"images\\/demo\\/hero\\/item-3.png\\\",\\\"images\\/demo\\/hero\\/item-4.png\\\"],\\\"hero-style[hero-content][hero-intro]\\\":[\\\"Lorem ipsum dolor sit amet, consectetur uvite adipiscing elit. Nam sagittis ultricies acumin rutrum. Cras luctus sem odio.\\\",\\\"Nam in lacinia elit. Ut iaculis faucibus lacus, eget ornare dolor. Integer ligula aliquam, ex uitae dolor feugiat suscipit.\\\",\\\"Donec varius ornare pharetra. Phasellus barius elit ut vestibulum viverra. Donec quis purus eu elit congue fringilla.\\\",\\\"In hac habitasse platea dictumst dapibus eros ac leo blandit, ligula sit amet posuere turpis acumin lementum at eu.\\\"],\\\"hero-style[hero-content][hero-link]\\\":[\\\"#\\\",\\\"#\\\",\\\"#\\\",\\\"#\\\"],\\\"rows\\\":4,\\\"cols\\\":5,\\\"type\\\":\\\"list\\\"}}}\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\",\"sub-title\":\"Stark help Business  Performance and  Scalability.\",\"sub-desc\":\"Quisque dolor fringilla semper, libero hendrerit allis, magna augue putate nibh ucibus enim eros acumin arcu ligula acumin dolor scelerisque.\",\"mod-layouts\":\"0\"}',0,'*'),
(104,86,'Our Missions','','',1,'section-3',NULL,NULL,NULL,NULL,1,'mod_ja_acm',1,1,'{\"jatools-config\":\"{\\\":type\\\":\\\"ja_stark:hero\\\",\\\"hero\\\":{\\\"jatools-layout-hero\\\":\\\"style-1\\\",\\\"hero-style[hero-animation]\\\":[\\\"fadeInDown\\\"],\\\"hero-style[hero-text-align]\\\":[\\\"text-left\\\"],\\\"hero-style[hero-content-heading-tag]\\\":[\\\"h2\\\"],\\\"hero-style[hero-heading]\\\":[\\\"Stark develop Digital Strategies, Products and Services.\\\"],\\\"hero-style[hero-intro]\\\":[\\\"Egestas nulla ac efficitur eleifend. Quisque dolor fringilla semper, libero hendrerit allis, magna augue putate nibh ucibus enim eros acumin arcu scelerisque. Donec quis purus congue ligula acumins fringilla.\\\"],\\\"hero-style[hero-text]\\\":[\\\"Book a Consultation\\\"],\\\"hero-style[hero-link]\\\":[\\\"#\\\"],\\\"hero-style[hero-class]\\\":[\\\"btn-secondary\\\"]}}\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\",\"sub-title\":\"\",\"sub-desc\":\"\",\"mod-layouts\":\"1\"}',0,'*'),
(105,96,'Our Projects','','',1,'section-4',NULL,NULL,NULL,NULL,1,'mod_articles_category',1,1,'{\"mode\":\"normal\",\"show_on_article_page\":1,\"count\":8,\"show_front\":\"show\",\"category_filtering_type\":1,\"catid\":[9],\"show_child_category_articles\":0,\"levels\":1,\"author_filtering_type\":1,\"author_alias_filtering_type\":1,\"excluded_articles\":\"\",\"date_filtering\":\"off\",\"date_field\":\"a.created\",\"start_date_range\":\"\",\"end_date_range\":\"\",\"relative_date\":30,\"article_ordering\":\"a.title\",\"article_ordering_direction\":\"ASC\",\"article_grouping\":\"none\",\"date_grouping_field\":\"created\",\"month_year_format\":\"F Y\",\"article_grouping_direction\":\"ksort\",\"link_titles\":1,\"show_date\":0,\"show_date_field\":\"created\",\"show_date_format\":\"Y-m-d H:i:s\",\"show_category\":0,\"show_hits\":0,\"show_author\":0,\"show_tags\":0,\"show_introtext\":1,\"introtext_limit\":100,\"show_readmore\":1,\"show_readmore_title\":0,\"readmore_limit\":15,\"layout\":\"ja_stark:projects\",\"moduleclass_sfx\":\"\",\"owncache\":1,\"cache_time\":900,\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\",\"sub-title\":\"Developing First Class Solutions for Our Smart Clients.\",\"sub-desc\":\"\",\"mod-layouts\":\"1\"}',0,'*'),
(106,97,'Established 2015','','',1,'section-5',NULL,NULL,NULL,NULL,1,'mod_ja_acm',1,1,'{\"jatools-config\":\"{\\\":type\\\":\\\"ja_stark:hero\\\",\\\"hero\\\":{\\\"jatools-layout-hero\\\":\\\"style-1\\\",\\\"hero-style[hero-animation]\\\":[\\\"fadeInDown\\\"],\\\"hero-style[hero-text-align]\\\":[\\\"text-center\\\"],\\\"hero-style[hero-content-heading-tag]\\\":[\\\"h1\\\"],\\\"hero-style[hero-heading]\\\":[\\\"A Design Agency, that loves to make you look good.\\\"],\\\"hero-style[hero-intro]\\\":[\\\"\\\"],\\\"hero-style[hero-text]\\\":[\\\"Read More About Us\\\"],\\\"hero-style[hero-link]\\\":[\\\"#\\\"],\\\"hero-style[hero-class]\\\":[\\\"btn-secondary\\\"]}}\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\",\"sub-title\":\"\",\"sub-desc\":\"\",\"mod-layouts\":\"1\"}',0,'*'),
(107,98,'Our Blog','','',1,'section-6',NULL,NULL,NULL,NULL,1,'mod_articles_category',1,1,'{\"mode\":\"normal\",\"show_on_article_page\":1,\"count\":4,\"show_front\":\"show\",\"category_filtering_type\":1,\"catid\":[8],\"show_child_category_articles\":0,\"levels\":1,\"author_filtering_type\":1,\"author_alias_filtering_type\":1,\"excluded_articles\":\"\",\"date_filtering\":\"off\",\"date_field\":\"a.created\",\"start_date_range\":\"\",\"end_date_range\":\"\",\"relative_date\":30,\"article_ordering\":\"a.title\",\"article_ordering_direction\":\"ASC\",\"article_grouping\":\"none\",\"date_grouping_field\":\"created\",\"month_year_format\":\"F Y\",\"article_grouping_direction\":\"ksort\",\"link_titles\":1,\"show_date\":1,\"show_date_field\":\"publish_up\",\"show_date_format\":\"M j, Y\",\"show_category\":0,\"show_hits\":0,\"show_author\":0,\"show_tags\":0,\"show_introtext\":1,\"introtext_limit\":100,\"show_readmore\":0,\"show_readmore_title\":1,\"readmore_limit\":15,\"layout\":\"ja_stark:blog\",\"moduleclass_sfx\":\"\",\"owncache\":1,\"cache_time\":900,\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\",\"sub-title\":\"Proud to Say, Stark is Your Best Design Agency in the World.\",\"sub-desc\":\"\",\"mod-layouts\":\"1\"}',0,'*'),
(108,99,'Careers at Stark','','',1,'section-7',NULL,NULL,NULL,NULL,1,'mod_ja_acm',1,1,'{\"jatools-config\":\"{\\\":type\\\":\\\"ja_stark:hero\\\",\\\"hero\\\":{\\\"jatools-layout-hero\\\":\\\"style-1\\\",\\\"hero-style[hero-animation]\\\":[\\\"fadeInRight\\\"],\\\"hero-style[hero-text-align]\\\":[\\\"text-left\\\"],\\\"hero-style[hero-content-heading-tag]\\\":[\\\"h2\\\"],\\\"hero-style[hero-heading]\\\":[\\\"Interested in working with Stark?\\\"],\\\"hero-style[hero-intro]\\\":[\\\"Egestas nulla ac efficitur eleifend. Quisque dolor fringilla semper, libero hendrerit allis, magna augue putate nibh ucibus enim eros acumin arcu scelerisque. Donec quis purus congue ligula acumins acumins fringilla.\\\"],\\\"hero-style[hero-text]\\\":[\\\"View Open Roles\\\"],\\\"hero-style[hero-link]\\\":[\\\"#\\\"],\\\"hero-style[hero-class]\\\":[\\\"btn-secondary\\\"]}}\",\"moduleclass_sfx\":\" mod-spacer-3\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\",\"sub-title\":\"\",\"sub-desc\":\"\",\"mod-layouts\":\"1\"}',0,'*'),
(109,100,'Expert People','','',1,'section-8',NULL,NULL,NULL,NULL,1,'mod_ja_acm',1,1,'{\"jatools-config\":\"{\\\":type\\\":\\\"ja_stark:hero\\\",\\\"hero\\\":{\\\"jatools-layout-hero\\\":\\\"style-1\\\",\\\"hero-style[hero-animation]\\\":[\\\"fadeInRight\\\"],\\\"hero-style[hero-text-align]\\\":[\\\"text-left\\\"],\\\"hero-style[hero-content-heading-tag]\\\":[\\\"h2\\\"],\\\"hero-style[hero-heading]\\\":[\\\"Passionate People on Our Team\\\"],\\\"hero-style[hero-intro]\\\":[\\\"Duis tristique leo sed libero mattis, id ullamcorper elit viverra. Duis ante metus, efficitur id orci eget, semper posuere nibh. In in neque in ex feugiat uiverra ligula acumin vehicula quis ex. Enean quam enim, cursus eu finibus a.\\\"],\\\"hero-style[hero-text]\\\":[\\\"Meet our Team\\\"],\\\"hero-style[hero-link]\\\":[\\\"#\\\"],\\\"hero-style[hero-class]\\\":[\\\"btn-secondary\\\"]}}\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\",\"sub-title\":\"\",\"sub-desc\":\"\",\"mod-layouts\":\"1\"}',0,'*'),
(110,101,'Spacer','','<p>&nbsp;</p>',1,'spacer',NULL,NULL,NULL,NULL,1,'mod_custom',1,0,'{\"prepare_content\":0,\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"System-none\"}',0,'*'),
(111,102,'Footer','','',1,'footer',NULL,NULL,NULL,NULL,1,'mod_ja_acm',1,0,'{\"jatools-config\":\"{\\\":type\\\":\\\"ja_stark:hero\\\",\\\"hero\\\":{\\\"jatools-layout-hero\\\":\\\"style-1\\\",\\\"hero-style[hero-animation]\\\":[\\\"fadeInDown\\\"],\\\"hero-style[hero-text-align]\\\":[\\\"text-left\\\"],\\\"hero-style[hero-content-heading-tag]\\\":[\\\"h2\\\"],\\\"hero-style[hero-heading]\\\":[\\\"Our clients are our partners. We work hard to create the ((a href=\\\\\\\"#\\\\\\\"))best products((\\/a)) for them.\\\"],\\\"hero-style[hero-intro]\\\":[\\\"\\\"],\\\"hero-style[hero-text]\\\":[\\\"\\\"],\\\"hero-style[hero-link]\\\":[\\\"\\\"],\\\"hero-style[hero-class]\\\":[\\\"\\\"]}}\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\",\"sub-title\":\"\",\"sub-desc\":\"\",\"mod-layouts\":\"1\"}',0,'*'),
(112,103,'Stark Office','','312 North 24th Street\r\n<br />\r\nBrooklyn, New York 10010\r\n<br />\r\nUnited States\r\n',1,'footnav-1',NULL,NULL,NULL,NULL,1,'mod_custom',1,1,'{\"prepare_content\":0,\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
(113,104,'Start a Conversation','','212.218.8500\r\n<br />\r\ninquiry@stark.com\r\n',1,'footnav-2',NULL,NULL,NULL,NULL,1,'mod_custom',1,1,'{\"prepare_content\":0,\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
(114,105,'Masthead','','',1,'masthead',NULL,NULL,NULL,NULL,1,'mod_jamasthead',1,1,'{\"default-title\":\"JA Stark\",\"default-description\":\"\",\"menuitem_config\":{\"item_id\":{\"0\":[\"109\"],\"1\":[\"119\"],\"3\":[\"126\"]},\"title\":{\"0\":\"Blog Page\",\"1\":\"Featured Articles\",\"3\":\"Our Projects\"},\"description\":{\"0\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\",\"1\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\",\"3\":\"Developing First Class Solutions for Our Smart Clients.\"},\"background\":{\"0\":\"images\\/demo\\/bg\\/section-5.png\",\"1\":\"images\\/demo\\/bg\\/section-5.png\",\"3\":\"images\\/demo\\/bg\\/section-5.png\"}},\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
(115,110,'Video','','',1,'section-7-spacer',NULL,NULL,NULL,NULL,1,'mod_ja_acm',1,0,'{\"jatools-config\":\"{\\\":type\\\":\\\"ja_stark:video\\\",\\\"video\\\":{\\\"jatools-layout-video\\\":\\\"style-1\\\",\\\"hero-style[hero-link]\\\":[\\\"https:\\/\\/www.youtube.com\\/watch?v=NnD2n_NBGMg\\\"],\\\"hero-style[hero-icon]\\\":[\\\"fa fa-play\\\"],\\\"hero-style[hero-class]\\\":[\\\"primary\\\"],\\\"hero-style[hero-action]\\\":[\\\"lightbox\\\"],\\\"hero-style[hero-img]\\\":[\\\"images\\/demo\\/bg\\/section-7.png\\\"]}}\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\",\"sub-title\":\"\",\"sub-desc\":\"\",\"mod-layouts\":\"0\"}',0,'*'),
(116,111,'Video','','',1,'hero-2',NULL,NULL,NULL,NULL,1,'mod_ja_acm',1,0,'{\"jatools-config\":\"{\\\":type\\\":\\\"ja_stark:video\\\",\\\"video\\\":{\\\"jatools-layout-video\\\":\\\"style-1\\\",\\\"hero-style[hero-link]\\\":[\\\"https:\\/\\/www.youtube.com\\/watch?v=NnD2n_NBGMg\\\"],\\\"hero-style[hero-icon]\\\":[\\\"fa fa-play\\\"],\\\"hero-style[hero-class]\\\":[\\\"default\\\"],\\\"hero-style[hero-action]\\\":[\\\"lightbox\\\"],\\\"hero-style[hero-img]\\\":[\\\"\\\"]}}\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\",\"sub-title\":\"\",\"sub-desc\":\"\",\"mod-layouts\":\"0\"}',0,'*'),
(117,113,'Section 7 Spacer','','<p>&nbsp;</p>',1,'section-7-spacer',NULL,NULL,'2021-08-18 03:05:55',NULL,-2,'mod_custom',1,0,'{\"prepare_content\":0,\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"System-none\"}',0,'*'),
(118,114,'Section 8 Spacer','','<p>&nbsp;</p>',1,'section-8-spacer',NULL,NULL,NULL,NULL,1,'mod_custom',1,0,'{\"prepare_content\":0,\"backgroundimage\":\"images\\/demo\\/hero\\/hero-1.jpeg\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"System-none\"}',0,'*'),
(119,0,'Login Support','','',1,'sidebar',NULL,NULL,NULL,NULL,1,'mod_loginsupport',1,1,'{\"forum_url\":\"https://forum.joomla.org/\",\"documentation_url\":\"https://docs.joomla.org/\",\"news_url\":\"https://www.joomla.org/announcements.html\",\"automatic_title\":1,\"prepare_content\":1,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',1,'*'),
(120,0,'System Dashboard','','',1,'cpanel-system',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"system\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),
(121,0,'Content Dashboard','','',1,'cpanel-content',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"content\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"3\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),
(122,0,'Menus Dashboard','','',1,'cpanel-menus',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"menus\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),
(123,0,'Components Dashboard','','',1,'cpanel-components',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"components\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),
(124,0,'Users Dashboard','','',1,'cpanel-users',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"users\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),
(125,0,'Popular Articles','','',3,'cpanel-content',NULL,NULL,NULL,NULL,1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\":\"12\"}',1,'*'),
(126,0,'Recently Added Articles','','',4,'cpanel-content',NULL,NULL,NULL,NULL,1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\":\"12\"}',1,'*'),
(127,0,'Logged-in Users','','',2,'cpanel-users',NULL,NULL,NULL,NULL,1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\":\"12\"}',1,'*'),
(128,0,'Frontend Link','','',5,'status',NULL,NULL,NULL,NULL,1,'mod_frontend',1,1,'',1,'*'),
(129,0,'Messages','','',4,'status',NULL,NULL,NULL,NULL,1,'mod_messages',3,1,'',1,'*'),
(130,0,'Post Install Messages','','',3,'status',NULL,NULL,NULL,NULL,1,'mod_post_installation_messages',3,1,'',1,'*'),
(131,0,'User Status','','',6,'status',NULL,NULL,NULL,NULL,1,'mod_user',3,1,'',1,'*'),
(132,0,'Site','','',1,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',1,1,'{\"context\":\"site_quickicon\",\"header_icon\":\"fas fa-desktop\",\"show_users\":\"1\",\"show_articles\":\"1\",\"show_categories\":\"1\",\"show_media\":\"1\",\"show_menuItems\":\"1\",\"show_modules\":\"1\",\"show_plugins\":\"1\",\"show_templates\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(133,0,'System','','',2,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',1,1,'{\"context\":\"system_quickicon\",\"header_icon\":\"fas fa-wrench\",\"show_global\":\"1\",\"show_checkin\":\"1\",\"show_cache\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(134,0,'3rd Party','','',4,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',1,1,'{\"context\":\"mod_quickicon\",\"header_icon\":\"fas fa-boxes\",\"load_plugins\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(135,0,'Help Dashboard','','',1,'cpanel-help',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"help\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"style\":\"System-none\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(136,0,'Privacy Requests','','',1,'cpanel-privacy',NULL,NULL,NULL,NULL,1,'mod_privacy_dashboard',1,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(137,0,'Privacy Status','','',1,'cpanel-privacy',NULL,NULL,NULL,NULL,1,'mod_privacy_status',1,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(138,0,'Guided Tours','','',1,'status',NULL,NULL,NULL,NULL,1,'mod_guidedtours',1,1,'',1,'*');
/*!40000 ALTER TABLE `q91ut_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_modules_menu`
--

DROP TABLE IF EXISTS `q91ut_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT 0,
  `menuid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_modules_menu`
--

LOCK TABLES `q91ut_modules_menu` WRITE;
/*!40000 ALTER TABLE `q91ut_modules_menu` DISABLE KEYS */;
INSERT INTO `q91ut_modules_menu` VALUES
(1,0),
(2,0),
(3,0),
(4,0),
(6,0),
(7,0),
(8,0),
(9,0),
(10,0),
(12,0),
(13,0),
(14,0),
(15,0),
(16,109),
(17,0),
(79,0),
(86,0),
(87,109),
(88,0),
(89,0),
(90,109),
(91,0),
(92,0),
(94,0),
(95,101),
(95,127),
(95,130),
(96,101),
(96,127),
(96,130),
(97,101),
(98,0),
(99,-110),
(99,-101),
(100,110),
(101,101),
(101,127),
(101,130),
(102,101),
(102,127),
(102,130),
(103,101),
(103,127),
(103,130),
(104,101),
(104,127),
(104,130),
(105,101),
(105,127),
(105,130),
(106,101),
(106,127),
(106,130),
(107,101),
(107,127),
(107,130),
(108,101),
(108,127),
(108,130),
(109,101),
(109,127),
(109,130),
(110,0),
(111,101),
(111,127),
(111,130),
(112,0),
(113,0),
(114,-110),
(115,101),
(115,127),
(115,130),
(116,101),
(116,127),
(116,130),
(117,0),
(118,0),
(119,0),
(120,0),
(121,0),
(122,0),
(123,0),
(124,0),
(125,0),
(126,0),
(127,0),
(128,0),
(129,0),
(130,0),
(131,0),
(132,0),
(133,0),
(134,0),
(135,0),
(136,0),
(137,0),
(138,0);
/*!40000 ALTER TABLE `q91ut_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_newsfeeds`
--

DROP TABLE IF EXISTS `q91ut_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT 0,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `link` varchar(2048) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `numarticles` int(10) unsigned NOT NULL DEFAULT 1,
  `cache_time` int(10) unsigned NOT NULL DEFAULT 3600,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) NOT NULL DEFAULT 0,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `params` mediumtext NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` mediumtext NOT NULL,
  `metadata` mediumtext NOT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `description` mediumtext NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `images` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_newsfeeds`
--

LOCK TABLES `q91ut_newsfeeds` WRITE;
/*!40000 ALTER TABLE `q91ut_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_overrider`
--

DROP TABLE IF EXISTS `q91ut_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` mediumtext NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_overrider`
--

LOCK TABLES `q91ut_overrider` WRITE;
/*!40000 ALTER TABLE `q91ut_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_postinstall_messages`
--

DROP TABLE IF EXISTS `q91ut_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT 700 COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT 1,
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT 1,
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_postinstall_messages`
--

LOCK TABLES `q91ut_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `q91ut_postinstall_messages` DISABLE KEYS */;
INSERT INTO `q91ut_postinstall_messages` VALUES
(1,700,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',1),
(2,700,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',1),
(3,700,'COM_CPANEL_MSG_STATS_COLLECTION_TITLE','COM_CPANEL_MSG_STATS_COLLECTION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/statscollection.php','admin_postinstall_statscollection_condition','3.5.0',1),
(8,700,'COM_ACTIONLOGS_POSTINSTALL_TITLE','COM_ACTIONLOGS_POSTINSTALL_BODY','','com_actionlogs',1,'message','','','','','3.9.0',1),
(9,700,'COM_PRIVACY_POSTINSTALL_TITLE','COM_PRIVACY_POSTINSTALL_BODY','','com_privacy',1,'message','','','','','3.9.0',1),
(10,700,'COM_CPANEL_MSG_TEXTFILTER3919_TITLE','COM_CPANEL_MSG_TEXTFILTER3919_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/textfilter3919.php','admin_postinstall_textfilter3919_condition','3.9.19',1),
(11,700,'COM_CPANEL_MSG_HTACCESSSVG_TITLE','COM_CPANEL_MSG_HTACCESSSVG_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/htaccesssvg.php','admin_postinstall_htaccesssvg_condition','3.9.21',1),
(12,700,'COM_ADMIN_POSTINSTALL_MSG_HTACCESS_AUTOINDEX_TITLE','COM_ADMIN_POSTINSTALL_MSG_HTACCESS_AUTOINDEX_DESCRIPTION','','com_admin',1,'message','','',NULL,NULL,'3.9.22',1),
(13,700,'COM_ADMIN_POSTINSTALL_MSG_BEHIND_LOAD_BALANCER_TITLE','COM_ADMIN_POSTINSTALL_MSG_BEHIND_LOAD_BALANCER_DESCRIPTION','COM_ADMIN_POSTINSTALL_MSG_BEHIND_LOAD_BALANCER_ACTION','com_admin',1,'action','admin://components/com_admin/postinstall/behindproxy.php','behindproxy_postinstall_action','admin://components/com_admin/postinstall/behindproxy.php','admin_postinstall_behindproxy_condition','3.9.26',1),
(15,700,'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_TITLE','PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_BODY','PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_ACTION','plg_system_httpheaders',1,'action','site://plugins/system/httpheaders/postinstall/introduction.php','httpheaders_postinstall_action','site://plugins/system/httpheaders/postinstall/introduction.php','httpheaders_postinstall_condition','4.0.0',1),
(16,700,'COM_ADMIN_POSTINSTALL_MSG_HTACCESS_SETCE_TITLE','COM_ADMIN_POSTINSTALL_MSG_HTACCESS_SETCE_DESCRIPTION','','com_admin',1,'message','','','admin://components/com_admin/postinstall/htaccesssetce.php','admin_postinstall_htaccesssetce_condition','4.2.9',1),
(17,700,'COM_ADMIN_POSTINSTALL_MSG_HTACCESS_BROTLI_TITLE','COM_ADMIN_POSTINSTALL_MSG_HTACCESS_BROTLI_DESCRIPTION','','com_admin',1,'message','','','admin://components/com_admin/postinstall/htaccessbrotli.php','admin_postinstall_htaccessbrotli_condition','5.1.0',1);
/*!40000 ALTER TABLE `q91ut_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_privacy_consents`
--

DROP TABLE IF EXISTS `q91ut_privacy_consents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_privacy_consents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `state` int(10) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` mediumtext NOT NULL,
  `remind` tinyint(4) NOT NULL DEFAULT 0,
  `token` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_privacy_consents`
--

LOCK TABLES `q91ut_privacy_consents` WRITE;
/*!40000 ALTER TABLE `q91ut_privacy_consents` DISABLE KEYS */;
INSERT INTO `q91ut_privacy_consents` VALUES
(1,42,1,'2023-09-29 01:42:20','PLG_SYSTEM_PRIVACYCONSENT_SUBJECT','<p>The user consented to storing their user information using the IP address <strong>27.72.60.238</strong></p><p>The user agent string of the user\'s browser was:<br>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36</p><p>This information was automatically recorded when the user submitted their details on the website and checked the confirm box</p>',0,'');
/*!40000 ALTER TABLE `q91ut_privacy_consents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_privacy_requests`
--

DROP TABLE IF EXISTS `q91ut_privacy_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_privacy_requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `request_type` varchar(25) NOT NULL DEFAULT '',
  `confirm_token` varchar(100) NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_privacy_requests`
--

LOCK TABLES `q91ut_privacy_requests` WRITE;
/*!40000 ALTER TABLE `q91ut_privacy_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_privacy_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_redirect_links`
--

DROP TABLE IF EXISTS `q91ut_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) NOT NULL,
  `new_url` varchar(2048) DEFAULT NULL,
  `referer` varchar(2048) NOT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `header` smallint(3) NOT NULL DEFAULT 301,
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modified` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_redirect_links`
--

LOCK TABLES `q91ut_redirect_links` WRITE;
/*!40000 ALTER TABLE `q91ut_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_scheduler_tasks`
--

DROP TABLE IF EXISTS `q91ut_scheduler_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_scheduler_tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(128) NOT NULL COMMENT 'unique identifier for job defined by plugin',
  `execution_rules` text DEFAULT NULL COMMENT 'Execution Rules, Unprocessed',
  `cron_rules` text DEFAULT NULL COMMENT 'Processed execution rules, crontab-like JSON form',
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `last_exit_code` int(11) NOT NULL DEFAULT 0 COMMENT 'Exit code when job was last run',
  `last_execution` datetime DEFAULT NULL COMMENT 'Timestamp of last run',
  `next_execution` datetime DEFAULT NULL COMMENT 'Timestamp of next (planned) run, referred for execution on trigger',
  `times_executed` int(11) DEFAULT 0 COMMENT 'Count of successful triggers',
  `times_failed` int(11) DEFAULT 0 COMMENT 'Count of failures',
  `locked` datetime DEFAULT NULL,
  `priority` smallint(6) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0 COMMENT 'Configurable list ordering',
  `cli_exclusive` smallint(6) NOT NULL DEFAULT 0 COMMENT 'If 1, the task is only accessible via CLI',
  `params` text NOT NULL,
  `note` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_type` (`type`),
  KEY `idx_state` (`state`),
  KEY `idx_last_exit` (`last_exit_code`),
  KEY `idx_next_exec` (`next_execution`),
  KEY `idx_locked` (`locked`),
  KEY `idx_priority` (`priority`),
  KEY `idx_cli_exclusive` (`cli_exclusive`),
  KEY `idx_checked_out` (`checked_out`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_scheduler_tasks`
--

LOCK TABLES `q91ut_scheduler_tasks` WRITE;
/*!40000 ALTER TABLE `q91ut_scheduler_tasks` DISABLE KEYS */;
INSERT INTO `q91ut_scheduler_tasks` VALUES
(1,115,'Rotate Logs','rotation.logs','{\"rule-type\":\"interval-days\",\"interval-days\":30,\"exec-time\":\"02:46\",\"exec-day\":\"03\"}','{\"type\":\"interval\",\"exp\":\"P30D\"}',1,0,'2024-07-26 09:52:42','2024-08-25 09:52:42',4,0,NULL,0,0,0,'{\"logstokeep\":1}',NULL,'2023-11-03 03:48:09',42,NULL,NULL),
(2,116,'Session GC','session.gc','{\"rule-type\":\"interval-hours\",\"interval-hours\":24,\"exec-time\":\"03:48\",\"exec-day\":\"03\"}','{\"type\":\"interval\",\"exp\":\"PT24H\"}',1,0,'2024-07-26 09:52:29','2024-07-27 09:52:29',4,0,NULL,0,0,0,'{\"enable_session_gc\":1,\"enable_session_metadata_gc\":1}',NULL,'2023-11-03 03:48:09',42,NULL,NULL),
(3,117,'Update Notification','update.notification','{\"rule-type\":\"interval-hours\",\"interval-hours\":6,\"exec-time\":\"02:46\",\"exec-day\":\"03\"}','{\"type\":\"interval\",\"exp\":\"PT6H\"}',1,0,'2024-07-26 09:52:15','2024-07-26 15:52:15',4,0,NULL,0,0,0,'{\"email\":\"\",\"language_override\":\"\"}',NULL,'2023-11-03 03:48:09',42,NULL,NULL);
/*!40000 ALTER TABLE `q91ut_scheduler_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_schemaorg`
--

DROP TABLE IF EXISTS `q91ut_schemaorg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_schemaorg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemId` int(10) unsigned DEFAULT NULL,
  `context` varchar(100) DEFAULT NULL,
  `schemaType` varchar(100) DEFAULT NULL,
  `schema` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_schemaorg`
--

LOCK TABLES `q91ut_schemaorg` WRITE;
/*!40000 ALTER TABLE `q91ut_schemaorg` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_schemaorg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_schemas`
--

DROP TABLE IF EXISTS `q91ut_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_schemas`
--

LOCK TABLES `q91ut_schemas` WRITE;
/*!40000 ALTER TABLE `q91ut_schemas` DISABLE KEYS */;
INSERT INTO `q91ut_schemas` VALUES
(700,'5.1.1-2024-04-18');
/*!40000 ALTER TABLE `q91ut_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_session`
--

DROP TABLE IF EXISTS `q91ut_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint(3) unsigned DEFAULT NULL,
  `guest` tinyint(3) unsigned DEFAULT 1,
  `time` int(11) NOT NULL DEFAULT 0,
  `data` longtext DEFAULT NULL,
  `userid` int(11) DEFAULT 0,
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`),
  KEY `client_id_guest` (`client_id`,`guest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_session`
--

LOCK TABLES `q91ut_session` WRITE;
/*!40000 ALTER TABLE `q91ut_session` DISABLE KEYS */;
INSERT INTO `q91ut_session` VALUES
('1cmagse3kpc4sgddpud1gvhhbp',0,0,1721987574,'joomla|s:1184:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjU6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjExO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTcyMTk4NzUzNDtzOjQ6Imxhc3QiO2k6MTcyMTk4NzU3MTtzOjM6Im5vdyI7aToxNzIxOTg3NTczO31zOjU6InRva2VuIjtzOjMyOiJmNmFhMThiOTBkZDhjNTZjYWJiNGM3NjFkMmUwZDZlMiI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InVzZXJzIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6ImxvZ2luIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImZvcm0iO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZGF0YSI7YTowOnt9czo2OiJyZXR1cm4iO3M6Mzk6ImluZGV4LnBocD9vcHRpb249Y29tX3VzZXJzJnZpZXc9cHJvZmlsZSI7fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czoxMjoiACoAc2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjQyO31zOjE5OiJwbGdfc3lzdGVtX3dlYmF1dGhuIjtPOjg6InN0ZENsYXNzIjoxOntzOjk6InJldHVyblVybCI7czo2NDoiaHR0cHM6Ly93d3cuY29kZWJyZWFrZXJzLnVrL2luZGV4LnBocC9wYWdlcy91c2VyLXBhZ2UvbG9naW4tZm9ybSI7fXM6OToiY29tX3VzZXJzIjtPOjg6InN0ZENsYXNzIjoxOntzOjExOiJtZmFfY2hlY2tlZCI7aToxO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',42,'webmaster');
/*!40000 ALTER TABLE `q91ut_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_t4_item`
--

DROP TABLE IF EXISTS `q91ut_t4_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_t4_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_type` varchar(50) DEFAULT NULL,
  `asset_name` varchar(50) DEFAULT NULL COMMENT 'Joomla Item reference',
  `asset_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `ctime` timestamp NOT NULL DEFAULT current_timestamp(),
  `update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rev` int(11) DEFAULT NULL,
  `working_content` mediumtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_t4_item`
--

LOCK TABLES `q91ut_t4_item` WRITE;
/*!40000 ALTER TABLE `q91ut_t4_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_t4_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_t4_revision`
--

DROP TABLE IF EXISTS `q91ut_t4_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_t4_revision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemid` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `rev` int(11) DEFAULT NULL,
  `ctime` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_t4_revision`
--

LOCK TABLES `q91ut_t4_revision` WRITE;
/*!40000 ALTER TABLE `q91ut_t4_revision` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_t4_revision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_tags`
--

DROP TABLE IF EXISTS `q91ut_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) unsigned NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `params` mediumtext NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL DEFAULT '',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `images` mediumtext NOT NULL,
  `urls` mediumtext NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_language` (`language`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_alias` (`alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_tags`
--

LOCK TABLES `q91ut_tags` WRITE;
/*!40000 ALTER TABLE `q91ut_tags` DISABLE KEYS */;
INSERT INTO `q91ut_tags` VALUES
(1,0,0,7,0,'','ROOT','root','','',1,NULL,NULL,1,'{}','','','',0,'2021-08-18 03:05:55','',0,'2021-08-18 03:05:55','','',0,'*',1,NULL,NULL),
(2,1,1,2,1,'joomla','Joomla','joomla','','',-2,NULL,NULL,1,'{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2021-08-18 03:05:55','',42,'2021-08-18 03:05:55','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{}',4,'*',1,'2021-08-18 03:05:55','2021-08-18 03:05:55'),
(3,1,3,4,1,'blog','blog','blog','','',1,NULL,'2019-06-25 08:30:28',1,'{}','','','{}',42,'2021-08-18 03:05:55','',0,'2021-08-18 03:05:55','{}','{}',3,'*',1,'2021-08-18 03:05:55','2021-08-18 03:05:55'),
(4,1,5,6,1,'corporate','corporate','corporate','','',1,NULL,'2019-06-25 08:30:28',1,'{}','','','{}',42,'2021-08-18 03:05:55','',0,'2021-08-18 03:05:55','{}','{}',0,'*',1,'2021-08-18 03:05:55','2021-08-18 03:05:55');
/*!40000 ALTER TABLE `q91ut_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_template_overrides`
--

DROP TABLE IF EXISTS `q91ut_template_overrides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_template_overrides` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `hash_id` varchar(255) NOT NULL DEFAULT '',
  `extension_id` int(11) DEFAULT 0,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `action` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_extension_id` (`extension_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_template_overrides`
--

LOCK TABLES `q91ut_template_overrides` WRITE;
/*!40000 ALTER TABLE `q91ut_template_overrides` DISABLE KEYS */;
INSERT INTO `q91ut_template_overrides` VALUES
(1,'ja_stark','L2h0bWwvY29tX2NvbnRhY3QvY29udGFjdC9kZWZhdWx0LnBocA==',10004,0,'Joomla Update',0,'2022-02-07 04:34:24','2023-11-03 03:48:10'),
(2,'ja_stark','L2h0bWwvY29tX2NvbnRhY3QvY29udGFjdC9kZWZhdWx0X2FkZHJlc3MucGhw',10004,0,'Joomla Update',0,'2022-02-07 04:34:24','2024-03-20 09:48:21'),
(3,'ja_stark','L2h0bWwvY29tX2NvbnRlbnQvZmVhdHVyZWQvZGVmYXVsdF9pdGVtLnBocA==',10004,0,'Joomla Update',0,'2022-03-16 02:33:50','2023-11-03 03:48:10'),
(4,'ja_stark','L2h0bWwvY29tX3VzZXJzL2xvZ2luL2RlZmF1bHRfbG9naW4ucGhw',10004,0,'Joomla Update',0,'2022-04-29 03:36:16','2023-04-20 01:58:09'),
(5,'ja_stark','L2h0bWwvY29tX2NvbnRhY3QvY29udGFjdC9kZWZhdWx0X2Zvcm0ucGhw',10004,0,'Joomla Update',0,'2022-10-05 03:06:20','2023-04-20 01:58:09'),
(6,'ja_stark','L2h0bWwvY29tX2NvbnRhY3QvY29udGFjdC9kZWZhdWx0X3VzZXJfY3VzdG9tX2ZpZWxkcy5waHA=',10004,0,'Joomla Update',0,'2023-02-08 07:20:47','2023-02-08 07:20:47'),
(7,'ja_stark','L2h0bWwvY29tX2NvbnRhY3QvY29udGFjdC9kZWZhdWx0X2xpbmtzLnBocA==',10004,0,'Joomla Update',0,'2023-11-03 03:48:10','2024-04-25 03:56:58'),
(8,'ja_stark','L2h0bWwvY29tX2NvbnRlbnQvZmVhdHVyZWQvZGVmYXVsdC5waHA=',10004,0,'Joomla Update',0,'2023-11-03 03:48:10','2023-11-03 03:48:10'),
(9,'ja_stark','L2h0bWwvY29tX2NvbnRlbnQvZmVhdHVyZWQvZGVmYXVsdF9saW5rcy5waHA=',10004,0,'Joomla Update',0,'2023-11-03 03:48:10','2023-11-03 03:48:10'),
(10,'ja_stark','L2h0bWwvbGF5b3V0cy9qb29tbGEvY29udGVudC9pbmZvX2Jsb2NrL21vZGlmeV9kYXRlLnBocA==',10004,0,'Joomla Update',0,'2023-11-03 03:48:10','2023-11-03 03:48:10'),
(11,'ja_stark','L2h0bWwvbGF5b3V0cy9qb29tbGEvY29udGVudC9pbmZvX2Jsb2NrL2NyZWF0ZV9kYXRlLnBocA==',10004,0,'Joomla Update',0,'2023-11-03 03:48:10','2023-11-03 03:48:10'),
(12,'ja_stark','L2h0bWwvbGF5b3V0cy9qb29tbGEvY29udGVudC9pbmZvX2Jsb2NrL3B1Ymxpc2hfZGF0ZS5waHA=',10004,0,'Joomla Update',0,'2023-11-03 03:48:10','2023-11-03 03:48:10');
/*!40000 ALTER TABLE `q91ut_template_overrides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_template_styles`
--

DROP TABLE IF EXISTS `q91ut_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` mediumtext NOT NULL,
  `inheritable` tinyint(4) NOT NULL DEFAULT 0,
  `parent` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_client_id` (`client_id`),
  KEY `idx_client_id_home` (`client_id`,`home`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_template_styles`
--

LOCK TABLES `q91ut_template_styles` WRITE;
/*!40000 ALTER TABLE `q91ut_template_styles` DISABLE KEYS */;
INSERT INTO `q91ut_template_styles` VALUES
(13,'ja_stark',0,'1','ja_stark - Default','{\"tplhelper\":\"{}\",\"typelist-site\":\"default\",\"typelist-navigation\":\"default\",\"typelist-theme\":\"default\",\"typelist-layout\":\"default\",\"system_optimizecss\":\"1\",\"system_optimizecss_exclude\":\"\",\"system_optimizejs\":\"1\",\"system_optimizejs_exclude\":\"\",\"system_advancedCodeAfterHead\":\"\",\"system_advancedCodeBeforeHead\":\"\",\"system_advancedCodeBeforeBody\":\"\",\"system_advancedCodeAfterBody\":\"\",\"system_addons\":[\"font.awesome4\",\"font.awesome5\",\"font.iconmoon\",\"html5lightbox\",\"Animation\"]}',0,''),
(14,'ja_stark',0,'0','ja_stark - Home','{\"tplhelper\":\"{}\",\"typelist-site\":\"default\",\"typelist-navigation\":\"default\",\"typelist-theme\":\"default\",\"typelist-layout\":\"home\",\"system_optimizecss\":\"1\",\"system_optimizecss_exclude\":\"\",\"system_optimizejs\":\"1\",\"system_optimizejs_exclude\":\"\",\"system_advancedCodeAfterHead\":\"\",\"system_advancedCodeBeforeHead\":\"\",\"system_advancedCodeBeforeBody\":\"\",\"system_advancedCodeAfterBody\":\"\",\"system_addons\":[\"font.awesome4\",\"font.awesome5\",\"font.iconmoon\",\"html5lightbox\",\"Animation\"]}',0,''),
(15,'ja_stark',0,'0','ja_stark - Red','{\"tplhelper\":\"{}\",\"typelist-site\":\"default\",\"typelist-navigation\":\"default\",\"typelist-theme\":\"red\",\"typelist-layout\":\"home\",\"system_optimizecss\":\"1\",\"system_optimizecss_exclude\":\"\",\"system_optimizejs\":\"1\",\"system_optimizejs_exclude\":\"\",\"system_advancedCodeAfterHead\":\"\",\"system_advancedCodeBeforeHead\":\"\",\"system_advancedCodeBeforeBody\":\"\",\"system_advancedCodeAfterBody\":\"\",\"system_addons\":[\"font.awesome4\",\"font.awesome5\",\"font.iconmoon\",\"html5lightbox\",\"Animation\"]}',0,''),
(16,'ja_stark',0,'0','ja_stark - Cyan','{\"tplhelper\":\"{}\",\"typelist-site\":\"default\",\"typelist-navigation\":\"default\",\"typelist-theme\":\"cyan\",\"typelist-layout\":\"home\",\"system_optimizecss\":\"1\",\"system_optimizecss_exclude\":\"\",\"system_optimizejs\":\"1\",\"system_optimizejs_exclude\":\"\",\"system_advancedCodeAfterHead\":\"\",\"system_advancedCodeBeforeHead\":\"\",\"system_advancedCodeBeforeBody\":\"\",\"system_advancedCodeAfterBody\":\"\",\"system_addons\":[\"font.awesome4\",\"font.awesome5\",\"font.iconmoon\",\"html5lightbox\",\"Animation\"]}',0,''),
(17,'atum',1,'1','Atum - Default','{\"hue\": \"hsl(214, 63%, 20%)\", \"bg-light\": \"#f0f4fb\", \"text-dark\": \"#495057\", \"text-light\": \"#ffffff\", \"link-color\": \"#2a69b8\", \"special-color\": \"#001b4c\", \"monochrome\": \"0\", \"loginLogo\": \"\", \"loginLogoAlt\": \"\", \"logoBrandLarge\": \"\", \"logoBrandLargeAlt\": \"\", \"logoBrandSmall\": \"\", \"logoBrandSmallAlt\": \"\", \"colorScheme\": \"os\"}',1,''),
(18,'cassiopeia',0,'0','Cassiopeia - Default','{}',1,'');
/*!40000 ALTER TABLE `q91ut_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_tuf_metadata`
--

DROP TABLE IF EXISTS `q91ut_tuf_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_tuf_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT 0,
  `root` text DEFAULT NULL,
  `targets` text DEFAULT NULL,
  `snapshot` text DEFAULT NULL,
  `timestamp` text DEFAULT NULL,
  `mirrors` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Secure TUF Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_tuf_metadata`
--

LOCK TABLES `q91ut_tuf_metadata` WRITE;
/*!40000 ALTER TABLE `q91ut_tuf_metadata` DISABLE KEYS */;
INSERT INTO `q91ut_tuf_metadata` VALUES
(1,1,'{\"signed\":{\"_type\":\"root\",\"spec_version\":\"1.0\",\"version\":4,\"expires\":\"2025-03-02T16:38:55Z\",\"keys\":{\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"9b2af2d9b9727227735253d795bd27ea8f0e294a5f3603e822dc5052b44802b9\"}},\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"a18e5ebabc19d5d5984b601a292ece61ba3662ab2d071dc520da5bd4f8948799\"}},\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"cb0a7a131961a20edea051d6dc2b091fb650bd399bd8514adb67b3c60db9f8f9\"}},\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"589d029a68b470deff1ca16dbf3eea6b5b3fcba0ae7bb52c468abc7fb058b2a2\"}},\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"6043c8bacc76ac5c9750f45454dd865c6ca1fc57d69e14cc192cfd420f6a66a9\"}},\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"ad1950e117b29ebe7a38635a2e574123e07571e4f9a011783e053b5f15d2562a\"}},\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"5d451915bc2b93a0e4e4745bc6a8b292d58996d50e0fb66c78c7827152a65879\"}}},\"roles\":{\"root\":{\"keyids\":[\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\",\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\"],\"threshold\":1},\"snapshot\":{\"keyids\":[\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\",\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\",\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\",\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\"],\"threshold\":1},\"targets\":{\"keyids\":[\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\",\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\",\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\"],\"threshold\":1},\"timestamp\":{\"keyids\":[\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\"],\"threshold\":1}},\"consistent_snapshot\":true},\"signatures\":[{\"keyid\":\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\",\"sig\":\"1c8060aab4c5290dc398199d8f124701bd3f7d3fb47d688e3e61d20eeb90d6e387556ce680ba8db9b99f15332df64da349a03344f50ab4f1fe491efdf88f170c\"}]}','{\"signed\":{\"_type\":\"targets\",\"spec_version\":\"1.0\",\"version\":18,\"expires\":\"2024-10-23T17:04:36Z\",\"targets\":{\"Joomla_5.1.2-Stable-Update_Package.zip\":{\"length\":28134889,\"hashes\":{\"sha512\":\"d6b46cdedb9b31d01a607fe4c2f3a830a3265ed6ae5c0cb7b0f836b1b016ee7c639bd8948df00baf1b61a87f2fc71368a80b39e67ef9ec2b8842ee0ab09a620f\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.1.2 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-1-2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.1.2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.1.2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5909-joomla-5-1-2-and-joomla-4-4-6-security-and-bug-fix-release.html\",\"title\":\"Joomla! 5.1.2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.1.2\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.1.2\"}},\"Joomla_5.1.2-Stable-Upgrade_Package.zip\":{\"length\":28134889,\"hashes\":{\"sha512\":\"d6b46cdedb9b31d01a607fe4c2f3a830a3265ed6ae5c0cb7b0f836b1b016ee7c639bd8948df00baf1b61a87f2fc71368a80b39e67ef9ec2b8842ee0ab09a620f\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.1.2 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-1-2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.1.2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.1.2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5909-joomla-5-1-2-and-joomla-4-4-6-security-and-bug-fix-release.html\",\"title\":\"Joomla! 5.1.2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.1.2\",\"php_minimum\":\"8.1.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.1.2\"}},\"Joomla_5.2.0-alpha2-Alpha-Update_Package.zip\":{\"length\":27543535,\"hashes\":{\"sha512\":\"367d4e553730d4a462891d543e8eafbca8c79159d86eef800ff56521557447c733e72dbdbc87b34ae00aac82ec3ac19948af17ce41a2341ea22386f52bc8edde\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.2.0-alpha2 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.2.0-alpha2/Joomla_5.2.0-alpha2-Alpha-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/5.2.0-alpha2\",\"title\":\"Joomla! 5.2.0-alpha2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.2.0-alpha2\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Alpha\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.2.0-alpha2\"}},\"Joomla_5.2.0-alpha3-Alpha-Update_Package.zip\":{\"length\":27582778,\"hashes\":{\"sha512\":\"9e517f9878f5860295ca5908eceda7fa4954bd5050ad088f57e65b52a45c314a8de36e843a5f892d063dd7d38956a80b437ffebc806983fb198ad78c0145d464\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.2.0-alpha3 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.2.0-alpha3/Joomla_5.2.0-alpha3-Alpha-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://developer.joomla.org/news/940-joomla-5-2-0-alpha-3-needs-your-help.html\",\"title\":\"Joomla! 5.2.0-alpha3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.2.0-alpha3\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Alpha\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.2.0-alpha3\"}}}},\"signatures\":[{\"keyid\":\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\",\"sig\":\"009b0496157357aa57acc0e1dcd0c8f9868d6089340fb878be5325ad9dc14a469555f39de05c64af773e62ac69923acd1b5f39639dead2c92cb2da847460e001\"}]}','{\"signed\":{\"_type\":\"snapshot\",\"spec_version\":\"1.0\",\"version\":21,\"expires\":\"2025-02-18T17:05:49Z\",\"meta\":{\"targets.json\":{\"length\":4688,\"hashes\":{\"sha512\":\"6eee464d414722baec05e8fe857bd69fefefab63598a536d52a06808fb8050df82c80a1345e19fcfd49d79f2cae9c5402f446938ac3d4f3291daccc75f4aa6a8\"},\"version\":18}}},\"signatures\":[{\"keyid\":\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\",\"sig\":\"842a0ecc94c2d49c067b0a9443d10e43dfe38faccc90d59abd563e10bbfe28bd90a101cca7780266a2481e89f555aecb13630100f5b3e51bcebb28fb02b3aa01\"}]}','{\"signed\":{\"_type\":\"timestamp\",\"spec_version\":\"1.0\",\"version\":223,\"expires\":\"2024-07-28T01:20:18Z\",\"meta\":{\"snapshot.json\":{\"length\":531,\"hashes\":{\"sha512\":\"9c5a6e60af4d78f41c1d871fa27b762311accbda69bfd049db7980609ea5f1b81317abe102902e266bcfdbe0745ffa67e9facbfbb93027aabbf1d58afbe99e2e\"},\"version\":21}}},\"signatures\":[{\"keyid\":\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\",\"sig\":\"3410202b4b7c054f4eeb5113e432bf7e50ff3f5fa0a84ac795fd118d747b747de4f62895aa4e0e3435fd6c2f7b589353a5145f9d336af2870b02fee01c51b302\"}]}',NULL),
(2,2,'{\"signed\":{\"_type\":\"root\",\"spec_version\":\"1.0\",\"version\":4,\"expires\":\"2025-03-02T16:38:55Z\",\"keys\":{\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"9b2af2d9b9727227735253d795bd27ea8f0e294a5f3603e822dc5052b44802b9\"}},\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"a18e5ebabc19d5d5984b601a292ece61ba3662ab2d071dc520da5bd4f8948799\"}},\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"cb0a7a131961a20edea051d6dc2b091fb650bd399bd8514adb67b3c60db9f8f9\"}},\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"589d029a68b470deff1ca16dbf3eea6b5b3fcba0ae7bb52c468abc7fb058b2a2\"}},\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"6043c8bacc76ac5c9750f45454dd865c6ca1fc57d69e14cc192cfd420f6a66a9\"}},\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"ad1950e117b29ebe7a38635a2e574123e07571e4f9a011783e053b5f15d2562a\"}},\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"5d451915bc2b93a0e4e4745bc6a8b292d58996d50e0fb66c78c7827152a65879\"}}},\"roles\":{\"root\":{\"keyids\":[\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\",\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\"],\"threshold\":1},\"snapshot\":{\"keyids\":[\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\",\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\",\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\",\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\"],\"threshold\":1},\"targets\":{\"keyids\":[\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\",\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\",\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\"],\"threshold\":1},\"timestamp\":{\"keyids\":[\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\"],\"threshold\":1}},\"consistent_snapshot\":true},\"signatures\":[{\"keyid\":\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\",\"sig\":\"1c8060aab4c5290dc398199d8f124701bd3f7d3fb47d688e3e61d20eeb90d6e387556ce680ba8db9b99f15332df64da349a03344f50ab4f1fe491efdf88f170c\"}]}','{\"signed\":{\"_type\":\"targets\",\"spec_version\":\"1.0\",\"version\":18,\"expires\":\"2024-10-23T17:04:36Z\",\"targets\":{\"Joomla_5.1.2-Stable-Update_Package.zip\":{\"length\":28134889,\"hashes\":{\"sha512\":\"d6b46cdedb9b31d01a607fe4c2f3a830a3265ed6ae5c0cb7b0f836b1b016ee7c639bd8948df00baf1b61a87f2fc71368a80b39e67ef9ec2b8842ee0ab09a620f\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.1.2 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-1-2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.1.2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.1.2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5909-joomla-5-1-2-and-joomla-4-4-6-security-and-bug-fix-release.html\",\"title\":\"Joomla! 5.1.2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.1.2\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.1.2\"}},\"Joomla_5.1.2-Stable-Upgrade_Package.zip\":{\"length\":28134889,\"hashes\":{\"sha512\":\"d6b46cdedb9b31d01a607fe4c2f3a830a3265ed6ae5c0cb7b0f836b1b016ee7c639bd8948df00baf1b61a87f2fc71368a80b39e67ef9ec2b8842ee0ab09a620f\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.1.2 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-1-2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.1.2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.1.2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5909-joomla-5-1-2-and-joomla-4-4-6-security-and-bug-fix-release.html\",\"title\":\"Joomla! 5.1.2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.1.2\",\"php_minimum\":\"8.1.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.1.2\"}},\"Joomla_5.2.0-alpha2-Alpha-Update_Package.zip\":{\"length\":27543535,\"hashes\":{\"sha512\":\"367d4e553730d4a462891d543e8eafbca8c79159d86eef800ff56521557447c733e72dbdbc87b34ae00aac82ec3ac19948af17ce41a2341ea22386f52bc8edde\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.2.0-alpha2 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.2.0-alpha2/Joomla_5.2.0-alpha2-Alpha-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/5.2.0-alpha2\",\"title\":\"Joomla! 5.2.0-alpha2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.2.0-alpha2\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Alpha\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.2.0-alpha2\"}},\"Joomla_5.2.0-alpha3-Alpha-Update_Package.zip\":{\"length\":27582778,\"hashes\":{\"sha512\":\"9e517f9878f5860295ca5908eceda7fa4954bd5050ad088f57e65b52a45c314a8de36e843a5f892d063dd7d38956a80b437ffebc806983fb198ad78c0145d464\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.2.0-alpha3 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.2.0-alpha3/Joomla_5.2.0-alpha3-Alpha-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://developer.joomla.org/news/940-joomla-5-2-0-alpha-3-needs-your-help.html\",\"title\":\"Joomla! 5.2.0-alpha3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.2.0-alpha3\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Alpha\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.2.0-alpha3\"}}}},\"signatures\":[{\"keyid\":\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\",\"sig\":\"009b0496157357aa57acc0e1dcd0c8f9868d6089340fb878be5325ad9dc14a469555f39de05c64af773e62ac69923acd1b5f39639dead2c92cb2da847460e001\"}]}','{\"signed\":{\"_type\":\"snapshot\",\"spec_version\":\"1.0\",\"version\":21,\"expires\":\"2025-02-18T17:05:49Z\",\"meta\":{\"targets.json\":{\"length\":4688,\"hashes\":{\"sha512\":\"6eee464d414722baec05e8fe857bd69fefefab63598a536d52a06808fb8050df82c80a1345e19fcfd49d79f2cae9c5402f446938ac3d4f3291daccc75f4aa6a8\"},\"version\":18}}},\"signatures\":[{\"keyid\":\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\",\"sig\":\"842a0ecc94c2d49c067b0a9443d10e43dfe38faccc90d59abd563e10bbfe28bd90a101cca7780266a2481e89f555aecb13630100f5b3e51bcebb28fb02b3aa01\"}]}','{\"signed\":{\"_type\":\"timestamp\",\"spec_version\":\"1.0\",\"version\":223,\"expires\":\"2024-07-28T01:20:18Z\",\"meta\":{\"snapshot.json\":{\"length\":531,\"hashes\":{\"sha512\":\"9c5a6e60af4d78f41c1d871fa27b762311accbda69bfd049db7980609ea5f1b81317abe102902e266bcfdbe0745ffa67e9facbfbb93027aabbf1d58afbe99e2e\"},\"version\":21}}},\"signatures\":[{\"keyid\":\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\",\"sig\":\"3410202b4b7c054f4eeb5113e432bf7e50ff3f5fa0a84ac795fd118d747b747de4f62895aa4e0e3435fd6c2f7b589353a5145f9d336af2870b02fee01c51b302\"}]}',NULL);
/*!40000 ALTER TABLE `q91ut_tuf_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_ucm_base`
--

DROP TABLE IF EXISTS `q91ut_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_ucm_base`
--

LOCK TABLES `q91ut_ucm_base` WRITE;
/*!40000 ALTER TABLE `q91ut_ucm_base` DISABLE KEYS */;
INSERT INTO `q91ut_ucm_base` VALUES
(1,1,1,0),
(2,9,1,0),
(3,8,1,0),
(4,7,1,0),
(5,6,1,0);
/*!40000 ALTER TABLE `q91ut_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_ucm_content`
--

DROP TABLE IF EXISTS `q91ut_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `core_body` longtext DEFAULT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT 0,
  `core_checked_out_time` datetime DEFAULT NULL,
  `core_checked_out_user_id` int(10) unsigned DEFAULT NULL,
  `core_access` int(10) unsigned NOT NULL DEFAULT 0,
  `core_params` mediumtext DEFAULT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `core_metadata` varchar(2048) NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL,
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL,
  `core_language` char(7) NOT NULL DEFAULT '',
  `core_publish_up` datetime DEFAULT NULL,
  `core_publish_down` datetime DEFAULT NULL,
  `core_content_item_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `core_images` mediumtext DEFAULT NULL,
  `core_urls` mediumtext DEFAULT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT 0,
  `core_version` int(10) unsigned NOT NULL DEFAULT 1,
  `core_ordering` int(11) NOT NULL DEFAULT 0,
  `core_metakey` mediumtext DEFAULT NULL,
  `core_metadesc` mediumtext DEFAULT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT 0,
  `core_xreference` varchar(50) NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_language` (`core_language`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_content_type` (`core_type_alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_ucm_content`
--

LOCK TABLES `q91ut_ucm_content` WRITE;
/*!40000 ALTER TABLE `q91ut_ucm_content` DISABLE KEYS */;
INSERT INTO `q91ut_ucm_content` VALUES
(1,'com_content.article','Getting Started','getting-started','<p>It\'s easy to get started creating your website. Knowing some of the basics will help.</p><h3>What is a Content Management System?</h3><p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p><p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. Joomla! brings together the template and your content to create web pages.</p><h3>Logging in</h3><p>To login to your site use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles and modify some settings.</p><h3>Creating an article</h3><p>Once you are logged-in, a new menu will be visible. To create a new article, click on the \"Submit Article\" link on that menu.</p><p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.</p><div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).</div><h3>Template, site settings, and modules</h3><p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template settings. Click the \"Template Settings\" in the user menu.</p><p>The boxes around the main content of the site are called modules. You can modify modules on the current page by moving your cursor to the module and clicking the edit link. Always be sure to save and close any module you edit.</p><p>You can change some site settings such as the site name and description by clicking on the \"Site Settings\" link.</p><p>More advanced options for templates, site settings, modules, and more are available in the site administrator.</p><h3>Site and Administrator</h3><p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the \"Site Administrator\" link on the \"User Menu\" menu (visible once you login) or by adding /administrator to the end of your domain name. The same user name and password are used for both sites.</p><h3>Learn more</h3><p>There is much more to learn about how to use Joomla! to create the website you envision. You can learn much more at the <a href=\"https://docs.joomla.org/\" target=\"_blank\">Joomla! documentation site</a> and on the<a href=\"https://forum.joomla.org/\" target=\"_blank\"> Joomla! forums</a>.</p>',1,NULL,NULL,1,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',42,'','2021-08-18 03:05:55',0,'2021-08-18 03:05:55','*','2021-08-18 03:05:55',NULL,1,62,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}',0,1,0,'','',2,'',1),
(2,'com_content.article','Financial Services Core  Customer Centric Approach','financial-services-core-customer-centric-approach','<p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>\r\n',1,NULL,NULL,1,'{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',42,'','2021-08-18 03:05:55',0,'2021-08-18 03:05:55','*','2021-08-18 03:05:55',NULL,9,106,'{\"image_intro\":\"images\\/demo\\/blog\\/item-1.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/demo\\/blog\\/item-1.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}',10,8,0,'','',8,'',1),
(3,'com_content.article','12 companies at the heart of London’s FinTech boom','12-companies-at-the-heart-of-london-s-fintech-boom','<p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>\r\n',1,NULL,NULL,1,'{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',42,'','2021-08-18 03:05:55',0,'2021-08-18 03:05:55','*','2021-08-18 03:05:55',NULL,8,107,'{\"image_intro\":\"images\\/demo\\/blog\\/item-2.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/demo\\/blog\\/item-2.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}',1,7,1,'','',8,'',1),
(4,'com_content.article','Consulting Firm Company with offices in Brussels, Munich and Milan.','consulting-firm-company-with-offices-in-brussels-munich-and-milan','<p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>\r\n',1,NULL,NULL,1,'{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',42,'','2021-08-18 03:05:55',0,'2021-08-18 03:05:55','*','2021-08-18 03:05:55',NULL,7,108,'{\"image_intro\":\"images\\/demo\\/blog\\/item-3.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/demo\\/blog\\/item-3.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}',0,8,2,'','',8,'',1),
(5,'com_content.article','Create and Edit Files from  Insight Dashboard with Google Drive','create-and-edit-files-from-insight-dashboard-with-google-drive','<p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>\r\n',1,NULL,NULL,1,'{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',42,'','2021-08-18 03:05:55',0,'2021-08-18 03:05:55','*','2021-08-18 03:05:55',NULL,6,109,'{\"image_intro\":\"images\\/demo\\/blog\\/item-4.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/demo\\/blog\\/item-4.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}',9,8,3,'','',8,'',1);
/*!40000 ALTER TABLE `q91ut_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_update_sites`
--

DROP TABLE IF EXISTS `q91ut_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` mediumtext NOT NULL,
  `enabled` int(11) DEFAULT 0,
  `last_check_timestamp` bigint(20) DEFAULT 0,
  `extra_query` varchar(1000) DEFAULT '',
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_update_sites`
--

LOCK TABLES `q91ut_update_sites` WRITE;
/*!40000 ALTER TABLE `q91ut_update_sites` DISABLE KEYS */;
INSERT INTO `q91ut_update_sites` VALUES
(1,'Joomla! Core','tuf','https://update.joomla.org/cms/',1,1721987535,'',NULL,NULL),
(2,'Accredited Joomla! Translations','tuf','https://update.joomla.org/cms/',1,1721987535,'',NULL,NULL),
(3,'Joomla! Update Component Update Site','extension','https://update.joomla.org/core/extensions/com_joomlaupdate.xml',1,1718010729,'',NULL,NULL),
(31,'','extension','http://update.joomlart.com/service/tracking/j16/mod_jamasthead.xml',1,1718010561,'',NULL,NULL),
(32,'','extension','http://update.joomlart.com/service/tracking/j16/mod_ja_acm.xml',1,1718010562,'',NULL,NULL),
(33,'T4 System Plugin','extension','http://update.joomlart.com/service/tracking/j31/plg_system_t4.xml',1,1718010562,'',NULL,NULL),
(34,'','extension','http://update.joomlart.com/service/tracking/j16/plg_system_jagooglemap.xml',1,1718010563,'',NULL,NULL),
(35,'','extension','http://update.joomlart.com/service/tracking/j31/ja_stark.xml',1,1718010563,'',NULL,NULL),
(36,'JA Extension Manager','extension','http://update.joomlart.com/service/tracking/j16/com_jaextmanager.xml',1,1718010564,'',NULL,NULL),
(37,'Search Update Site','extension','https://raw.githubusercontent.com/joomla-extensions/search/main/manifest.xml',1,1718010564,'',NULL,NULL);
/*!40000 ALTER TABLE `q91ut_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_update_sites_extensions`
--

DROP TABLE IF EXISTS `q91ut_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT 0,
  `extension_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_update_sites_extensions`
--

LOCK TABLES `q91ut_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `q91ut_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `q91ut_update_sites_extensions` VALUES
(1,700),
(2,700),
(2,802),
(3,28),
(3,600),
(31,10005),
(32,10007),
(33,10003),
(34,10006),
(35,10004),
(36,10008),
(37,10062);
/*!40000 ALTER TABLE `q91ut_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_updates`
--

DROP TABLE IF EXISTS `q91ut_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT 0,
  `extension_id` int(11) DEFAULT 0,
  `name` varchar(100) DEFAULT '',
  `description` mediumtext NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT 0,
  `version` varchar(32) DEFAULT '',
  `data` mediumtext NOT NULL,
  `detailsurl` mediumtext NOT NULL,
  `infourl` mediumtext NOT NULL,
  `changelogurl` text DEFAULT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_updates`
--

LOCK TABLES `q91ut_updates` WRITE;
/*!40000 ALTER TABLE `q91ut_updates` DISABLE KEYS */;
INSERT INTO `q91ut_updates` VALUES
(2,2,700,'Joomla! 5.1.2','Joomla! 5.1.2 Release','joomla','file','',0,'5.1.2','','https://update.joomla.org/cms/','https://www.joomla.org/announcements/release-news/5909-joomla-5-1-2-and-joomla-4-4-6-security-and-bug-fix-release.html',NULL,'');
/*!40000 ALTER TABLE `q91ut_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_user_keys`
--

DROP TABLE IF EXISTS `q91ut_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(191) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_user_keys`
--

LOCK TABLES `q91ut_user_keys` WRITE;
/*!40000 ALTER TABLE `q91ut_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_user_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_user_mfa`
--

DROP TABLE IF EXISTS `q91ut_user_mfa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_user_mfa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `method` varchar(100) NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `options` mediumtext NOT NULL,
  `created_on` datetime NOT NULL,
  `last_used` datetime DEFAULT NULL,
  `tries` int(11) NOT NULL DEFAULT 0,
  `last_try` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Multi-factor Authentication settings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_user_mfa`
--

LOCK TABLES `q91ut_user_mfa` WRITE;
/*!40000 ALTER TABLE `q91ut_user_mfa` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_user_mfa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_user_notes`
--

DROP TABLE IF EXISTS `q91ut_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `catid` int(10) unsigned NOT NULL DEFAULT 0,
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `review_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_user_notes`
--

LOCK TABLES `q91ut_user_notes` WRITE;
/*!40000 ALTER TABLE `q91ut_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_user_profiles`
--

DROP TABLE IF EXISTS `q91ut_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` mediumtext NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_user_profiles`
--

LOCK TABLES `q91ut_user_profiles` WRITE;
/*!40000 ALTER TABLE `q91ut_user_profiles` DISABLE KEYS */;
INSERT INTO `q91ut_user_profiles` VALUES
(42,'joomlatoken.enabled','1',2),
(42,'joomlatoken.token','JBgGroaZuXDR3eg3abCFUYT7embaUxXjp8DGdqmwi3o=',1);
/*!40000 ALTER TABLE `q91ut_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_user_usergroup_map`
--

DROP TABLE IF EXISTS `q91ut_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_user_usergroup_map`
--

LOCK TABLES `q91ut_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `q91ut_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `q91ut_user_usergroup_map` VALUES
(42,8);
/*!40000 ALTER TABLE `q91ut_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_usergroups`
--

DROP TABLE IF EXISTS `q91ut_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_usergroups`
--

LOCK TABLES `q91ut_usergroups` WRITE;
/*!40000 ALTER TABLE `q91ut_usergroups` DISABLE KEYS */;
INSERT INTO `q91ut_usergroups` VALUES
(1,0,1,18,'Public'),
(2,1,8,15,'Registered'),
(3,2,9,14,'Author'),
(4,3,10,13,'Editor'),
(5,4,11,12,'Publisher'),
(6,1,4,7,'Manager'),
(7,6,5,6,'Administrator'),
(8,1,16,17,'Super Users'),
(9,1,2,3,'Guest');
/*!40000 ALTER TABLE `q91ut_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_users`
--

DROP TABLE IF EXISTS `q91ut_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT 0,
  `sendEmail` tinyint(4) DEFAULT 0,
  `registerDate` datetime NOT NULL,
  `lastvisitDate` datetime DEFAULT NULL,
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` mediumtext NOT NULL,
  `lastResetTime` datetime DEFAULT NULL,
  `resetCount` int(11) NOT NULL DEFAULT 0 COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Require user to reset password on next login',
  `authProvider` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`),
  KEY `idx_block` (`block`),
  KEY `email` (`email`),
  KEY `idx_name` (`name`(100))
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_users`
--

LOCK TABLES `q91ut_users` WRITE;
/*!40000 ALTER TABLE `q91ut_users` DISABLE KEYS */;
INSERT INTO `q91ut_users` VALUES
(42,'Webmaster','webmaster','test@121212com','$2y$10$KT430FUVVFu2urt0U9NadOMgB2SeOHnXNOcn3kAwrm2/sAI2MHg0i',0,1,'2024-07-26 09:52:09','2024-07-26 09:52:41','0','',NULL,0,'','',0,'');
/*!40000 ALTER TABLE `q91ut_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_viewlevels`
--

DROP TABLE IF EXISTS `q91ut_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_viewlevels`
--

LOCK TABLES `q91ut_viewlevels` WRITE;
/*!40000 ALTER TABLE `q91ut_viewlevels` DISABLE KEYS */;
INSERT INTO `q91ut_viewlevels` VALUES
(1,'Public',0,'[1]'),
(2,'Registered',2,'[6,2,8]'),
(3,'Special',3,'[6,3,8]'),
(5,'Guest',1,'[9]'),
(6,'Super Users',4,'[8]');
/*!40000 ALTER TABLE `q91ut_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_webauthn_credentials`
--

DROP TABLE IF EXISTS `q91ut_webauthn_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_webauthn_credentials` (
  `id` varchar(1000) NOT NULL COMMENT 'Credential ID',
  `user_id` varchar(128) NOT NULL COMMENT 'User handle',
  `label` varchar(190) NOT NULL COMMENT 'Human readable label',
  `credential` mediumtext NOT NULL COMMENT 'Credential source data, JSON format',
  PRIMARY KEY (`id`(100)),
  KEY `user_id` (`user_id`(60))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_webauthn_credentials`
--

LOCK TABLES `q91ut_webauthn_credentials` WRITE;
/*!40000 ALTER TABLE `q91ut_webauthn_credentials` DISABLE KEYS */;
/*!40000 ALTER TABLE `q91ut_webauthn_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_workflow_associations`
--

DROP TABLE IF EXISTS `q91ut_workflow_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_workflow_associations` (
  `item_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Extension table id value',
  `stage_id` int(11) NOT NULL COMMENT 'Foreign Key to #__workflow_stages.id',
  `extension` varchar(50) NOT NULL,
  PRIMARY KEY (`item_id`,`extension`),
  KEY `idx_item_stage_extension` (`item_id`,`stage_id`,`extension`),
  KEY `idx_item_id` (`item_id`),
  KEY `idx_stage_id` (`stage_id`),
  KEY `idx_extension` (`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_workflow_associations`
--

LOCK TABLES `q91ut_workflow_associations` WRITE;
/*!40000 ALTER TABLE `q91ut_workflow_associations` DISABLE KEYS */;
INSERT INTO `q91ut_workflow_associations` VALUES
(1,1,'com_content.article'),
(2,1,'com_content.article'),
(3,1,'com_content.article'),
(4,1,'com_content.article'),
(5,1,'com_content.article'),
(6,1,'com_content.article'),
(7,1,'com_content.article'),
(8,1,'com_content.article'),
(9,1,'com_content.article'),
(10,1,'com_content.article'),
(11,1,'com_content.article'),
(12,1,'com_content.article'),
(13,1,'com_content.article'),
(14,1,'com_content.article'),
(15,1,'com_content.article'),
(16,1,'com_content.article'),
(17,1,'com_content.article'),
(18,1,'com_content.article');
/*!40000 ALTER TABLE `q91ut_workflow_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_workflow_stages`
--

DROP TABLE IF EXISTS `q91ut_workflow_stages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_workflow_stages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `workflow_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_workflow_id` (`workflow_id`),
  KEY `idx_checked_out` (`checked_out`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_default` (`default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_workflow_stages`
--

LOCK TABLES `q91ut_workflow_stages` WRITE;
/*!40000 ALTER TABLE `q91ut_workflow_stages` DISABLE KEYS */;
INSERT INTO `q91ut_workflow_stages` VALUES
(1,0,1,1,1,'COM_WORKFLOW_BASIC_STAGE','',1,NULL,NULL);
/*!40000 ALTER TABLE `q91ut_workflow_stages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_workflow_transitions`
--

DROP TABLE IF EXISTS `q91ut_workflow_transitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_workflow_transitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `workflow_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `from_stage_id` int(11) NOT NULL,
  `to_stage_id` int(11) NOT NULL,
  `options` text NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_checked_out` (`checked_out`),
  KEY `idx_from_stage_id` (`from_stage_id`),
  KEY `idx_to_stage_id` (`to_stage_id`),
  KEY `idx_workflow_id` (`workflow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_workflow_transitions`
--

LOCK TABLES `q91ut_workflow_transitions` WRITE;
/*!40000 ALTER TABLE `q91ut_workflow_transitions` DISABLE KEYS */;
INSERT INTO `q91ut_workflow_transitions` VALUES
(1,0,1,1,1,'Unpublish','',-1,1,'{\"publishing\":\"0\"}',NULL,NULL),
(2,0,2,1,1,'Publish','',-1,1,'{\"publishing\":\"1\"}',NULL,NULL),
(3,0,3,1,1,'Trash','',-1,1,'{\"publishing\":\"-2\"}',NULL,NULL),
(4,0,4,1,1,'Archive','',-1,1,'{\"publishing\":\"2\"}',NULL,NULL),
(5,0,5,1,1,'Feature','',-1,1,'{\"featuring\":\"1\"}',NULL,NULL),
(6,0,6,1,1,'Unfeature','',-1,1,'{\"featuring\":\"0\"}',NULL,NULL),
(7,0,7,1,1,'Publish & Feature','',-1,1,'{\"publishing\":\"1\",\"featuring\":\"1\"}',NULL,NULL);
/*!40000 ALTER TABLE `q91ut_workflow_transitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q91ut_workflows`
--

DROP TABLE IF EXISTS `q91ut_workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q91ut_workflows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) DEFAULT 0,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `extension` varchar(50) NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_extension` (`extension`),
  KEY `idx_default` (`default`),
  KEY `idx_created` (`created`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_modified` (`modified`),
  KEY `idx_modified_by` (`modified_by`),
  KEY `idx_checked_out` (`checked_out`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q91ut_workflows`
--

LOCK TABLES `q91ut_workflows` WRITE;
/*!40000 ALTER TABLE `q91ut_workflows` DISABLE KEYS */;
INSERT INTO `q91ut_workflows` VALUES
(1,0,1,'COM_WORKFLOW_BASIC_WORKFLOW','','com_content.article',1,1,'2021-08-18 10:09:56',0,'2021-08-18 10:09:56',0,NULL,NULL);
/*!40000 ALTER TABLE `q91ut_workflows` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2024-07-26 11:01:15
DROP TABLE IF EXISTS `zzzz`;
CREATE TABLE `zzzz` ( `idxx` int(10) unsigned NOT NULL, PRIMARY KEY (`idxx`) ) Engine=INNODB CHARSET=utf8;
