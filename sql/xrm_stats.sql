-- MySQL dump 10.13  Distrib 5.6.36, for Linux (x86_64)
--
-- Host: localhost    Database: xrm_stats
-- ------------------------------------------------------
-- Server version	5.6.36

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
-- Table structure for table `informant_iad`
--

DROP TABLE IF EXISTS `informant_iad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `informant_iad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iad_attribution` tinyint(1) DEFAULT '0',
  `iad_org_name` varchar(255) DEFAULT NULL,
  `iad_campaign_id` int(20) NOT NULL DEFAULT '0',
  `iad_campaign_name` varchar(255) DEFAULT NULL,
  `iad_conversion_date` datetime DEFAULT NULL,
  `iad_click_date` datetime DEFAULT NULL,
  `iad_adgroup_id` int(20) NOT NULL DEFAULT '0',
  `iad_adgroup_name` varchar(255) DEFAULT NULL,
  `iad_keyword` varchar(255) DEFAULT NULL,
  `creation_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informant_iad`
--

LOCK TABLES `informant_iad` WRITE;
/*!40000 ALTER TABLE `informant_iad` DISABLE KEYS */;
INSERT INTO `informant_iad` VALUES (1,1,'org name',2147483647,'adsfasdf','2017-08-28 12:12:12','2017-08-28 13:13:13',2147483647,'adf','popo','2017-08-28 22:35:21'),(2,1,'org name',2147483647,'adsfasdf','2017-08-28 12:12:12','2017-08-28 13:13:13',2147483647,'adf','popo','2017-08-28 22:37:41'),(3,1,'org name',2147483647,'adsfasdf','2017-08-28 12:12:12','2017-08-28 13:13:13',2147483647,'adf','popo','2017-08-28 22:38:25'),(4,1,'org name',2147483647,'adsfasdf','2017-08-28 12:12:12','2017-08-28 13:13:13',2147483647,'adf','popo','2017-08-28 23:29:09'),(5,1,'org name',2147483647,'adsfasdf','2017-08-28 12:12:12','2017-08-28 13:13:13',2147483647,'adf','popo','2017-08-28 23:29:41'),(6,1,'org name',2147483647,'adsfasdf','2017-08-28 12:12:12','2017-08-28 13:13:13',2147483647,'adf','popo','2017-08-28 23:57:15'),(7,1,'org name',2147483647,'adsfasdf','2017-08-28 12:12:12','2017-08-28 13:13:13',2147483647,'adf','popo','2017-08-29 04:33:22'),(8,1,'org name',2147483647,'adsfasdf','2017-08-28 12:12:12','2017-08-28 13:13:13',2147483647,'adf','popo','2017-08-29 04:34:31'),(9,1,'org name',2147483647,'adsfasdf','2017-08-28 12:12:12','2017-08-28 13:13:13',2147483647,'adf','popo','2017-08-29 15:55:13');
/*!40000 ALTER TABLE `informant_iad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keys`
--

DROP TABLE IF EXISTS `keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` int(11) NOT NULL,
  `usage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keys`
--

LOCK TABLES `keys` WRITE;
/*!40000 ALTER TABLE `keys` DISABLE KEYS */;
INSERT INTO `keys` VALUES (1,'zA0Cz0jcMNx8pkIfcv8D',10,0,0,'DEV'),(2,'U4OwjL67nRnslbljPHWE',10,0,0,'PI5'),(3,'sSeS1A9CdKS7BqDxE6PB',10,0,0,NULL),(4,'AOVkDxTDHoUED1n2twAs',10,0,0,NULL),(5,'zhapq6YzgxhgmhaiMfiB',10,0,0,NULL),(6,'5NQxwholOLiTdQ0WyVLT',10,0,0,NULL),(7,'AaLN9Qib7Gc8N4v1wpPQ',10,0,0,NULL),(8,'m3bVs3UltJ2DJWCCaBcC',10,0,0,NULL),(9,'2haBnDQaReYq1r4oUBFE',10,0,0,NULL),(10,'a0K6rYikmk3wnVCVojhP',10,0,0,NULL);
/*!40000 ALTER TABLE `keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,'informant/iAd','post','a:17:{s:4:\"host\";s:21:\"ws.planplusonline.com\";s:12:\"content-type\";s:16:\"application/json\";s:6:\"cookie\";s:43:\"JSESSIONID=BC66E1ED767553C3888C58226A71208D\";s:15:\"X-Forwarded-For\";s:12:\"98.202.91.23\";s:16:\"X-Forwarded-Port\";s:3:\"443\";s:17:\"X-Forwarded-Proto\";s:5:\"https\";s:14:\"Content-Length\";s:3:\"270\";s:10:\"Connection\";s:10:\"keep-alive\";s:15:\"iad-attribution\";b:1;s:12:\"iad-org-name\";s:8:\"org name\";s:15:\"iad-campaign-id\";i:72398278394;s:17:\"iad-campaign-name\";s:8:\"adsfasdf\";s:19:\"iad-conversion-date\";s:20:\"2017-08-28T12:12:12Z\";s:14:\"iad-click-date\";s:20:\"2017-08-28T13:13:13Z\";s:14:\"iad-adgroup-id\";i:3798709809;s:16:\"iad-adgroup-name\";s:3:\"adf\";s:11:\"iad-keyword\";s:4:\"popo\";}','','10.0.0.227',1503962806,0.0162308,'0',403),(2,'informant/iAd','post','a:18:{s:4:\"host\";s:21:\"ws.planplusonline.com\";s:12:\"content-type\";s:16:\"application/json\";s:6:\"cookie\";s:43:\"JSESSIONID=BC66E1ED767553C3888C58226A71208D\";s:9:\"x-api-key\";s:20:\"zA0Cz0jcMNx8pkIfcv8D\";s:15:\"X-Forwarded-For\";s:12:\"98.202.91.23\";s:16:\"X-Forwarded-Port\";s:3:\"443\";s:17:\"X-Forwarded-Proto\";s:5:\"https\";s:14:\"Content-Length\";s:3:\"270\";s:10:\"Connection\";s:10:\"keep-alive\";s:15:\"iad-attribution\";b:1;s:12:\"iad-org-name\";s:8:\"org name\";s:15:\"iad-campaign-id\";i:72398278394;s:17:\"iad-campaign-name\";s:8:\"adsfasdf\";s:19:\"iad-conversion-date\";s:20:\"2017-08-28T12:12:12Z\";s:14:\"iad-click-date\";s:20:\"2017-08-28T13:13:13Z\";s:14:\"iad-adgroup-id\";i:3798709809;s:16:\"iad-adgroup-name\";s:3:\"adf\";s:11:\"iad-keyword\";s:4:\"popo\";}','zA0Cz0jcMNx8pkIfcv8D','10.0.0.227',1503962862,NULL,'1',0),(3,'informant/iAd','post','a:18:{s:4:\"host\";s:21:\"ws.planplusonline.com\";s:12:\"content-type\";s:16:\"application/json\";s:6:\"cookie\";s:43:\"JSESSIONID=BC66E1ED767553C3888C58226A71208D\";s:9:\"x-api-key\";s:20:\"zA0Cz0jcMNx8pkIfcv8D\";s:15:\"X-Forwarded-For\";s:12:\"98.202.91.23\";s:16:\"X-Forwarded-Port\";s:3:\"443\";s:17:\"X-Forwarded-Proto\";s:5:\"https\";s:14:\"Content-Length\";s:3:\"270\";s:10:\"Connection\";s:10:\"keep-alive\";s:15:\"iad-attribution\";b:1;s:12:\"iad-org-name\";s:8:\"org name\";s:15:\"iad-campaign-id\";i:72398278394;s:17:\"iad-campaign-name\";s:8:\"adsfasdf\";s:19:\"iad-conversion-date\";s:20:\"2017-08-28T12:12:12Z\";s:14:\"iad-click-date\";s:20:\"2017-08-28T13:13:13Z\";s:14:\"iad-adgroup-id\";i:3798709809;s:16:\"iad-adgroup-name\";s:3:\"adf\";s:11:\"iad-keyword\";s:4:\"popo\";}','zA0Cz0jcMNx8pkIfcv8D','10.0.0.227',1503962949,0.00936389,'1',201),(4,'informant/iAd','post','a:8:{s:4:\"host\";s:21:\"ws.planplusonline.com\";s:6:\"cookie\";s:43:\"JSESSIONID=BC66E1ED767553C3888C58226A71208D\";s:9:\"x-api-key\";s:20:\"zA0Cz0jcMNx8pkIfcv8D\";s:15:\"X-Forwarded-For\";s:12:\"98.202.91.23\";s:16:\"X-Forwarded-Port\";s:3:\"443\";s:17:\"X-Forwarded-Proto\";s:5:\"https\";s:14:\"Content-Length\";s:3:\"270\";s:10:\"Connection\";s:10:\"keep-alive\";}','zA0Cz0jcMNx8pkIfcv8D','10.0.0.227',1503962961,0.00549603,'1',0),(5,'informant/iAd','post','a:18:{s:4:\"host\";s:21:\"ws.planplusonline.com\";s:12:\"content-type\";s:16:\"application/json\";s:6:\"cookie\";s:43:\"JSESSIONID=BC66E1ED767553C3888C58226A71208D\";s:9:\"x-api-key\";s:20:\"zA0Cz0jcMNx8pkIfcv8D\";s:15:\"X-Forwarded-For\";s:12:\"98.202.91.23\";s:16:\"X-Forwarded-Port\";s:3:\"443\";s:17:\"X-Forwarded-Proto\";s:5:\"https\";s:14:\"Content-Length\";s:3:\"270\";s:10:\"Connection\";s:10:\"keep-alive\";s:15:\"iad-attribution\";b:1;s:12:\"iad-org-name\";s:8:\"org name\";s:15:\"iad-campaign-id\";i:72398278394;s:17:\"iad-campaign-name\";s:8:\"adsfasdf\";s:19:\"iad-conversion-date\";s:20:\"2017-08-28T12:12:12Z\";s:14:\"iad-click-date\";s:20:\"2017-08-28T13:13:13Z\";s:14:\"iad-adgroup-id\";i:3798709809;s:16:\"iad-adgroup-name\";s:3:\"adf\";s:11:\"iad-keyword\";s:4:\"popo\";}','zA0Cz0jcMNx8pkIfcv8D','10.0.0.227',1503962981,0.00812912,'1',201),(6,'informant/iAd','post','a:18:{s:4:\"host\";s:21:\"ws.planplusonline.com\";s:12:\"content-type\";s:16:\"application/json\";s:6:\"cookie\";s:43:\"JSESSIONID=BC66E1ED767553C3888C58226A71208D\";s:9:\"x-api-key\";s:20:\"zA0Cz0jcMNx8pkIfcv8D\";s:15:\"X-Forwarded-For\";s:12:\"98.202.91.23\";s:16:\"X-Forwarded-Port\";s:3:\"443\";s:17:\"X-Forwarded-Proto\";s:5:\"https\";s:14:\"Content-Length\";s:3:\"270\";s:10:\"Connection\";s:10:\"keep-alive\";s:15:\"iad-attribution\";b:1;s:12:\"iad-org-name\";s:8:\"org name\";s:15:\"iad-campaign-id\";i:72398278394;s:17:\"iad-campaign-name\";s:8:\"adsfasdf\";s:19:\"iad-conversion-date\";s:20:\"2017-08-28T12:12:12Z\";s:14:\"iad-click-date\";s:20:\"2017-08-28T13:13:13Z\";s:14:\"iad-adgroup-id\";i:3798709809;s:16:\"iad-adgroup-name\";s:3:\"adf\";s:11:\"iad-keyword\";s:4:\"popo\";}','zA0Cz0jcMNx8pkIfcv8D','10.0.0.227',1503964635,0.018209,'1',201),(7,'','get','a:7:{s:4:\"host\";s:11:\"34.192.68.3\";s:15:\"Accept-Encoding\";s:4:\"gzip\";s:10:\"User-Agent\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36\";s:15:\"X-Forwarded-For\";s:12:\"54.67.47.223\";s:16:\"X-Forwarded-Port\";s:3:\"443\";s:17:\"X-Forwarded-Proto\";s:5:\"https\";s:10:\"Connection\";s:10:\"keep-alive\";}','','10.0.0.242',1503971810,0.00673103,'0',403),(8,'','get','a:10:{s:4:\"host\";s:11:\"34.192.68.3\";s:6:\"Accept\";s:33:\"application/json, text/plain, */*\";s:14:\"Accept-Charset\";s:23:\"GBK,utf-8;q=0.7,*;q=0.3\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:35:\"zh-CN,zh;q=0.8,en-US;q=0.5,en;q=0.3\";s:10:\"User-Agent\";s:72:\"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0\";s:15:\"X-Forwarded-For\";s:14:\"118.193.31.222\";s:16:\"X-Forwarded-Port\";s:3:\"443\";s:17:\"X-Forwarded-Proto\";s:5:\"https\";s:10:\"Connection\";s:10:\"keep-alive\";}','','10.0.0.242',1503979156,0.0130138,'0',403),(9,'','get','a:7:{s:4:\"host\";s:13:\"34.199.236.12\";s:15:\"Accept-Encoding\";s:4:\"gzip\";s:10:\"User-Agent\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36\";s:15:\"X-Forwarded-For\";s:13:\"54.146.201.20\";s:16:\"X-Forwarded-Port\";s:3:\"443\";s:17:\"X-Forwarded-Proto\";s:5:\"https\";s:10:\"Connection\";s:10:\"keep-alive\";}','','10.0.0.227',1503980693,0.0136249,'0',403),(10,'informant/iAd','post','a:8:{s:4:\"host\";s:21:\"ws.planplusonline.com\";s:6:\"cookie\";s:43:\"JSESSIONID=BC66E1ED767553C3888C58226A71208D\";s:9:\"x-api-key\";s:20:\"zA0Cz0jcMNx8pkIfcv8D\";s:15:\"X-Forwarded-For\";s:12:\"98.202.91.23\";s:16:\"X-Forwarded-Port\";s:3:\"443\";s:17:\"X-Forwarded-Proto\";s:5:\"https\";s:14:\"Content-Length\";s:3:\"270\";s:10:\"Connection\";s:10:\"keep-alive\";}','zA0Cz0jcMNx8pkIfcv8D','10.0.0.227',1503981176,0.00516295,'1',0),(11,'informant/iAd','post','a:18:{s:4:\"host\";s:21:\"ws.planplusonline.com\";s:12:\"content-type\";s:16:\"application/json\";s:6:\"cookie\";s:43:\"JSESSIONID=BC66E1ED767553C3888C58226A71208D\";s:9:\"x-api-key\";s:20:\"zA0Cz0jcMNx8pkIfcv8D\";s:15:\"X-Forwarded-For\";s:12:\"98.202.91.23\";s:16:\"X-Forwarded-Port\";s:3:\"443\";s:17:\"X-Forwarded-Proto\";s:5:\"https\";s:14:\"Content-Length\";s:3:\"270\";s:10:\"Connection\";s:10:\"keep-alive\";s:15:\"iad-attribution\";b:1;s:12:\"iad-org-name\";s:8:\"org name\";s:15:\"iad-campaign-id\";i:72398278394;s:17:\"iad-campaign-name\";s:8:\"adsfasdf\";s:19:\"iad-conversion-date\";s:20:\"2017-08-28T12:12:12Z\";s:14:\"iad-click-date\";s:20:\"2017-08-28T13:13:13Z\";s:14:\"iad-adgroup-id\";i:3798709809;s:16:\"iad-adgroup-name\";s:3:\"adf\";s:11:\"iad-keyword\";s:4:\"popo\";}','zA0Cz0jcMNx8pkIfcv8D','10.0.0.227',1503981202,0.00745487,'1',201),(12,'informant/iAd','post','a:18:{s:4:\"host\";s:21:\"ws.planplusonline.com\";s:12:\"content-type\";s:16:\"application/json\";s:6:\"cookie\";s:43:\"JSESSIONID=BC66E1ED767553C3888C58226A71208D\";s:9:\"x-api-key\";s:20:\"zA0Cz0jcMNx8pkIfcv8D\";s:15:\"X-Forwarded-For\";s:12:\"98.202.91.23\";s:16:\"X-Forwarded-Port\";s:3:\"443\";s:17:\"X-Forwarded-Proto\";s:5:\"https\";s:14:\"Content-Length\";s:3:\"270\";s:10:\"Connection\";s:10:\"keep-alive\";s:15:\"iad-attribution\";b:1;s:12:\"iad-org-name\";s:8:\"org name\";s:15:\"iad-campaign-id\";i:72398278394;s:17:\"iad-campaign-name\";s:8:\"adsfasdf\";s:19:\"iad-conversion-date\";s:20:\"2017-08-28T12:12:12Z\";s:14:\"iad-click-date\";s:20:\"2017-08-28T13:13:13Z\";s:14:\"iad-adgroup-id\";i:3798709809;s:16:\"iad-adgroup-name\";s:3:\"adf\";s:11:\"iad-keyword\";s:4:\"popo\";}','zA0Cz0jcMNx8pkIfcv8D','10.0.0.242',1503981271,0.00863409,'1',201),(13,'','get','a:9:{s:4:\"host\";s:11:\"34.192.68.3\";s:6:\"Accept\";s:63:\"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\";s:15:\"Accept-Encoding\";s:7:\"deflate\";s:15:\"Accept-Language\";s:35:\"zh-CN,zh;q=0.8,en-US;q=0.5,en;q=0.3\";s:10:\"User-Agent\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:47.0) Gecko/20100101 Firefox/47.0\";s:15:\"X-Forwarded-For\";s:12:\"60.191.38.77\";s:16:\"X-Forwarded-Port\";s:3:\"443\";s:17:\"X-Forwarded-Proto\";s:5:\"https\";s:10:\"Connection\";s:10:\"keep-alive\";}','','10.0.0.242',1503986893,0.00668907,'0',403),(14,'','get','a:6:{s:4:\"host\";s:11:\"34.192.68.3\";s:10:\"User-Agent\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36\";s:15:\"X-Forwarded-For\";s:15:\"139.162.106.181\";s:16:\"X-Forwarded-Port\";s:3:\"443\";s:17:\"X-Forwarded-Proto\";s:5:\"https\";s:10:\"Connection\";s:10:\"keep-alive\";}','','10.0.0.242',1503993146,0.00665379,'0',403),(15,'','get','a:5:{s:4:\"host\";s:13:\"34.199.236.12\";s:15:\"X-Forwarded-For\";s:10:\"74.82.47.3\";s:16:\"X-Forwarded-Port\";s:3:\"443\";s:17:\"X-Forwarded-Proto\";s:5:\"https\";s:10:\"Connection\";s:10:\"keep-alive\";}','','10.0.0.227',1503999324,0.00493479,'0',403),(16,'','get','a:5:{s:4:\"host\";s:11:\"34.192.68.3\";s:15:\"X-Forwarded-For\";s:10:\"74.82.47.2\";s:16:\"X-Forwarded-Port\";s:3:\"443\";s:17:\"X-Forwarded-Proto\";s:5:\"https\";s:10:\"Connection\";s:10:\"keep-alive\";}','','10.0.0.242',1504001162,0.0112021,'0',403),(17,'informant/iAd','post','a:17:{s:4:\"host\";s:21:\"ws.planplusonline.com\";s:12:\"content-type\";s:16:\"application/json\";s:6:\"cookie\";s:43:\"JSESSIONID=BC66E1ED767553C3888C58226A71208D\";s:15:\"X-Forwarded-For\";s:14:\"65.158.217.106\";s:16:\"X-Forwarded-Port\";s:3:\"443\";s:17:\"X-Forwarded-Proto\";s:5:\"https\";s:14:\"Content-Length\";s:3:\"270\";s:10:\"Connection\";s:10:\"keep-alive\";s:15:\"iad-attribution\";b:1;s:12:\"iad-org-name\";s:8:\"org name\";s:15:\"iad-campaign-id\";i:72398278394;s:17:\"iad-campaign-name\";s:8:\"adsfasdf\";s:19:\"iad-conversion-date\";s:20:\"2017-08-28T12:12:12Z\";s:14:\"iad-click-date\";s:20:\"2017-08-28T13:13:13Z\";s:14:\"iad-adgroup-id\";i:3798709809;s:16:\"iad-adgroup-name\";s:3:\"adf\";s:11:\"iad-keyword\";s:4:\"popo\";}','','10.0.0.227',1504022062,0.00795603,'0',403),(18,'informant/iAd','post','a:18:{s:4:\"host\";s:21:\"ws.planplusonline.com\";s:12:\"content-type\";s:16:\"application/json\";s:6:\"cookie\";s:43:\"JSESSIONID=BC66E1ED767553C3888C58226A71208D\";s:9:\"x-api-key\";s:20:\"zA0Cz0jcMNx8pkIfcv8D\";s:15:\"X-Forwarded-For\";s:14:\"65.158.217.106\";s:16:\"X-Forwarded-Port\";s:3:\"443\";s:17:\"X-Forwarded-Proto\";s:5:\"https\";s:14:\"Content-Length\";s:3:\"270\";s:10:\"Connection\";s:10:\"keep-alive\";s:15:\"iad-attribution\";b:1;s:12:\"iad-org-name\";s:8:\"org name\";s:15:\"iad-campaign-id\";i:72398278394;s:17:\"iad-campaign-name\";s:8:\"adsfasdf\";s:19:\"iad-conversion-date\";s:20:\"2017-08-28T12:12:12Z\";s:14:\"iad-click-date\";s:20:\"2017-08-28T13:13:13Z\";s:14:\"iad-adgroup-id\";i:3798709809;s:16:\"iad-adgroup-name\";s:3:\"adf\";s:11:\"iad-keyword\";s:4:\"popo\";}','zA0Cz0jcMNx8pkIfcv8D','10.0.0.227',1504022113,0.00753784,'1',201),(19,'','get','a:11:{s:4:\"host\";s:21:\"ws.planplusonline.com\";s:6:\"Accept\";s:63:\"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:14:\"en-US,en;q=0.5\";s:6:\"Cookie\";s:204:\"_ga=GA1.2.699566441.1491893696; __utma=73115090.699566441.1491893696.1495117262.1498663996.8; __utmz=73115090.1492104295.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); _gid=GA1.2.1355085359.1503952936\";s:25:\"Upgrade-Insecure-Requests\";s:1:\"1\";s:10:\"User-Agent\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:54.0) Gecko/20100101 Firefox/54.0\";s:15:\"X-Forwarded-For\";s:14:\"65.158.217.106\";s:16:\"X-Forwarded-Port\";s:3:\"443\";s:17:\"X-Forwarded-Proto\";s:5:\"https\";s:10:\"Connection\";s:10:\"keep-alive\";}','','10.0.0.242',1504022445,0.00564885,'0',403);
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-29 16:02:08
