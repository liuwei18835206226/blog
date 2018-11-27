-- MySQL dump 10.13  Distrib 5.7.23, for Win32 (AMD64)
--
-- Host: localhost    Database: blog_db
-- ------------------------------------------------------
-- Server version	5.7.23

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
-- Table structure for table `ad`
--

DROP TABLE IF EXISTS `ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `image_url` varchar(100) NOT NULL,
  `callback_url` varchar(200) DEFAULT NULL,
  `date_publish` datetime(6) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad`
--

LOCK TABLES `ad` WRITE;
/*!40000 ALTER TABLE `ad` DISABLE KEYS */;
/*!40000 ALTER TABLE `ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `desc` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `click_count` int(11) NOT NULL,
  `is_recommend` tinyint(1) NOT NULL,
  `date_publish` datetime(6) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `article_category_id_99127861_fk_category_id` (`category_id`),
  KEY `article_user_id_b06c1b9c_fk_user_id` (`user_id`),
  CONSTRAINT `article_category_id_99127861_fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `article_user_id_b06c1b9c_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (3,'test01','test01','<p>\r\n	<span>发送到发送到发送到发送到防守打法</span><span>发送到发送到发送到发送到防守打法</span><span>发送到发送到发送到发送到防守打法</span><span>发送到发送到发送到发送到防守打法</span><span>发送到发送到发送到发送到防守打法</span><span>发送到发送到发送到发送到防守打法</span><span>发送到发送到发送到发送到防守打法</span><span>发送到发送到发送到发送到防守打法</span>\r\n</p>',6,0,'2018-10-07 12:14:30.416131',2,1),(4,'test02','test02','<h2>\r\n	<span style=\"color:#EE33EE;\">test02</span><span style=\"color:#EE33EE;\">test02</span><span style=\"color:#EE33EE;\">test02</span><span style=\"color:#EE33EE;\">test02</span><span style=\"color:#EE33EE;\">test02</span><span style=\"color:#EE33EE;\">test02</span><span style=\"color:#EE33EE;\">test02</span><span style=\"color:#EE33EE;\">test02</span><span style=\"color:#EE33EE;\">test02</span><span style=\"color:#EE33EE;\">test02</span><span style=\"color:#EE33EE;\">test02</span><span style=\"color:#EE33EE;\">test02</span><span style=\"color:#EE33EE;\"></span> \r\n</h2>',7,0,'2018-10-07 12:15:01.403904',3,1),(5,'test03','test02','<strong><u><span style=\"background-color:#4C33E5;\">test02</span></u></strong><strong><u><span style=\"background-color:#4C33E5;\">test02</span></u></strong><strong><u><span style=\"background-color:#4C33E5;\">test02</span></u></strong><strong><u><span style=\"background-color:#4C33E5;\">test02</span></u></strong><strong><u><span style=\"background-color:#4C33E5;\">test02</span></u></strong><strong><u><span style=\"background-color:#4C33E5;\">test02</span></u></strong><strong><u><span style=\"background-color:#4C33E5;\">test02</span></u></strong><strong><u><span style=\"background-color:#4C33E5;\">test02</span></u></strong>',15,0,'2018-10-07 12:15:21.320043',4,1),(6,'test04','test02','<strong><span style=\"background-color:#009900;\">test02</span></strong><strong><span style=\"background-color:#009900;\">test02</span></strong><strong><span style=\"background-color:#009900;\">test02</span></strong><strong><span style=\"background-color:#009900;\">test02</span></strong><strong><span style=\"background-color:#009900;\">test02</span></strong>',17,0,'2018-10-07 12:15:40.267127',4,1),(7,'test05','test05','<span style=\"color:#60D978;\">test05</span><span style=\"color:#60D978;\">test05</span><span style=\"color:#60D978;\">test05</span><span style=\"color:#60D978;\">test05</span><span style=\"color:#60D978;\">test05</span><span style=\"color:#60D978;\">test05</span><span style=\"color:#60D978;\">test05</span>',10,0,'2018-10-07 12:16:04.430509',6,1),(8,'test06','test06','<u><strong><span style=\"color:#CC33E5;\">test06</span></strong></u><u><strong><span style=\"color:#CC33E5;\">test06</span></strong></u><u><strong><span style=\"color:#CC33E5;\">test06</span></strong></u><u><strong><span style=\"color:#CC33E5;\">test06</span></strong></u><u><strong><span style=\"color:#CC33E5;\">test06</span></strong></u><u><strong><span style=\"color:#CC33E5;\">test06</span></strong></u><u><strong><span style=\"color:#CC33E5;\">test06</span></strong></u><u><strong><span style=\"color:#CC33E5;\">test06</span></strong></u><u><strong><span style=\"color:#CC33E5;\">test06</span></strong></u><u><strong><span style=\"color:#CC33E5;\">test06</span></strong></u>',21,1,'2018-10-07 12:16:22.693553',6,1),(9,'test07','desc01','<span>test07</span><span>test07</span><span>test07</span><span>test07</span><span>test07</span><span>test07</span><span>test07</span>',24,1,'2018-10-09 00:57:42.342760',3,1),(10,'test10','desc01','<strong><span style=\"background-color:#CC33E5;\">大声大声道哇塞的哦哦爱上大花洒颗鸡蛋</span></strong>',10,0,'2018-09-05 01:37:18.897854',2,1),(11,'test11','desc01','<span style=\"color:#E53333;\">大撒打发第三方</span><span style=\"color:#E53333;\"></span>',6,0,'2018-09-05 01:38:38.418402',4,1),(12,'test12','desc01','<h2>\r\n	发对方水电费第三方\r\n</h2>',4,0,'2018-09-05 01:38:57.548496',5,1),(14,'test_img','desc_img','<img src=\"/uploads/kindeditor/2018/10/c250cbd0-cdf2-11e8-bffb-a8a3cf7fce94.png\" alt=\"\" />',47,0,'2018-10-12 07:46:01.691089',2,1),(15,'wewq','wqe','<p>\r\n	非法方式发送到发送到范德萨范德萨范德萨范德萨发送到发送到\r\n</p>\r\n<p>\r\n	<span>非法方式发送到发送到范德萨范德萨范德萨范德萨发送到发送到</span>\r\n</p>\r\n<p>\r\n	<span>非法方式发送到发送到范德萨范德萨范德萨范德萨发送到发送到</span><span>非法方式发送到发送到范德萨范德萨范德萨范德萨发送到发送到</span><span>非法方式发送到发送到范德萨范德萨范德萨范德萨发送到发送到</span><span>非法方式发送到发送到范德萨范德萨范德萨范德萨发送到发送到</span><span>非法方式发送到发送到范德萨范德萨范德萨范德萨发送到发送到</span><span>非法方式发送到发送到范德萨范德萨范德萨范德萨发送到发送到</span><span>非法方式发送到发送到范德萨范德萨范德萨范德萨发送到发送到</span><span>非法方式发送到发送到范德萨范德萨范德萨范德萨发送到发送到</span><span>非法方式发送到发送到范德萨范德萨范德萨范德萨发送到发送到</span>\r\n</p>',123,0,'2018-10-13 08:51:41.063166',4,1),(16,'test20181117','desc01','<span><strong>发斯蒂芬斯蒂芬斯蒂芬胜多负少的方式的范德萨</strong></span><span><strong>发斯蒂芬斯蒂芬斯蒂芬胜多负少的方式的范德萨</strong></span><span><strong>发斯蒂芬斯蒂芬斯蒂芬胜多负少的方式的范德萨</strong></span><span><strong>发斯蒂芬斯蒂芬斯蒂芬胜多负少的方式的范德萨</strong></span><span><strong>发斯蒂芬斯蒂芬斯蒂芬胜多负少的方式的范德萨</strong></span><span><strong>发斯蒂芬斯蒂芬斯蒂芬胜多负少的方式的范德萨</strong></span><span><strong>发斯蒂芬斯蒂芬斯蒂芬胜多负少的方式的范德萨</strong></span><span><strong>发斯蒂芬斯蒂芬斯蒂芬胜多负少的方式的范德萨</strong></span><span><strong>发斯蒂芬斯蒂芬斯蒂芬胜多负少的方式的范德萨</strong></span><span><strong>发斯蒂芬斯蒂芬斯蒂芬胜多负少的方式的范德萨</strong></span><span><strong>发斯蒂芬斯蒂芬斯蒂芬胜多负少的方式的范德萨</strong></span><span><strong>发斯蒂芬斯蒂芬斯蒂芬胜多负少的方式的范德萨</strong></span><span><strong>发斯蒂芬斯蒂芬斯蒂芬胜多负少的方式的范德萨</strong></span><span><strong>发斯蒂芬斯蒂芬斯蒂芬胜多负少的方式的范德萨</strong></span><span><strong>发斯蒂芬斯蒂芬斯蒂芬胜多负少的方式的范德萨</strong></span><span><strong>发斯蒂芬斯蒂芬斯蒂芬胜多负少的方式的范德萨</strong></span><span><strong>发斯蒂芬斯蒂芬斯蒂芬胜多负少的方式的范德萨</strong></span><span><strong>发斯蒂芬斯蒂芬斯蒂芬胜多负少的方式的范德萨</strong></span><span><strong>发斯蒂芬斯蒂芬斯蒂芬胜多负少的方式的范德萨</strong></span>',40,0,'2018-11-17 02:04:48.578168',4,1),(17,'testxxxxx','desc01','<strong><span style=\"color:#E53333;\"><em>明白你们不明白你们那边买宝贝你麻痹那你弄吧</em></span></strong><span style=\"color:#E53333;\"><strong><em>明白你们不明白你们那边买宝贝你麻痹那你弄吧</em></strong></span><span style=\"color:#E53333;\"><strong><em>明白你们不明白你们那边买宝贝你麻痹那你弄吧</em></strong></span><span style=\"color:#E53333;\"><strong><em>明白你们不明白你们那边买宝贝你麻痹那你弄吧</em></strong></span><span style=\"color:#E53333;\"><strong><em>明白你们不明白你们那边买宝贝你麻痹那你弄吧<img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /><strong><em><img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /></em></strong><strong><em><img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /></em></strong><strong><em><img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /></em></strong><strong><em><img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /></em></strong><strong><em><img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /></em></strong><strong><em><img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /></em></strong><strong><em><img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /></em></strong><strong><em><img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /></em></strong><strong><em><img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /></em></strong><strong><em><img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /></em></strong><strong><em><img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /></em></strong><strong><em><img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /></em></strong><strong><em><img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /></em></strong><strong><em><img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /></em></strong><strong><em><img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /></em></strong><strong><em><img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /></em></strong><strong><em><img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /></em></strong><strong><em><img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /></em></strong><strong><em><img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /></em></strong><strong><em><img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /></em></strong><strong><em><img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /></em></strong><strong><em><img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /></em></strong><strong><em><img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /></em></strong><strong><em><img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /></em></strong><strong><em><img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /></em></strong><strong><em><img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /></em></strong></em></strong></span>',79,0,'2018-11-17 02:11:24.237440',6,1);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_tag`
--

DROP TABLE IF EXISTS `article_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `myBlog_article_tag_article_id_tag_id_32890f83_uniq` (`article_id`,`tag_id`),
  KEY `myBlog_article_tag_tag_id_7e3df091_fk_myBlog_tag_id` (`tag_id`),
  CONSTRAINT `myBlog_article_tag_article_id_f54f4f6e_fk_myBlog_article_id` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  CONSTRAINT `myBlog_article_tag_tag_id_7e3df091_fk_myBlog_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_tag`
--

LOCK TABLES `article_tag` WRITE;
/*!40000 ALTER TABLE `article_tag` DISABLE KEYS */;
INSERT INTO `article_tag` VALUES (13,3,6),(14,4,5),(15,5,4),(16,5,5),(17,6,3),(18,6,4),(19,7,3),(20,7,7),(3,8,3),(9,9,5),(10,9,6),(4,9,7),(5,10,7),(6,11,6),(7,12,5),(11,14,5),(12,14,6),(21,15,6),(22,16,4),(23,16,5),(24,17,6);
/*!40000 ALTER TABLE `article_tag` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add 用户',6,'add_user'),(17,'Can change 用户',6,'change_user'),(18,'Can delete 用户',6,'delete_user'),(19,'Can add 广告',7,'add_ad'),(20,'Can change 广告',7,'change_ad'),(21,'Can delete 广告',7,'delete_ad'),(22,'Can add 文章',8,'add_article'),(23,'Can change 文章',8,'change_article'),(24,'Can delete 文章',8,'delete_article'),(25,'Can add 分类',9,'add_category'),(26,'Can change 分类',9,'change_category'),(27,'Can delete 分类',9,'delete_category'),(28,'Can add 评论',10,'add_comment'),(29,'Can change 评论',10,'change_comment'),(30,'Can delete 评论',10,'delete_comment'),(31,'Can add 友情链接',11,'add_links'),(32,'Can change 友情链接',11,'change_links'),(33,'Can delete 友情链接',11,'delete_links'),(34,'Can add 标签',12,'add_tag'),(35,'Can change 标签',12,'change_tag'),(36,'Can delete 标签',12,'delete_tag'),(37,'Can add like_ record',13,'add_like_record'),(38,'Can change like_ record',13,'change_like_record'),(39,'Can delete like_ record',13,'delete_like_record'),(40,'Can add like count',14,'add_likecount'),(41,'Can change like count',14,'change_likecount'),(42,'Can delete like count',14,'delete_likecount');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (2,'摘抄',900),(3,'说说',991),(4,'文章',992),(5,'相册',993),(6,'转载',994);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `date_publish` datetime(6) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `pid_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_article_id_1de4311c_fk_article_id` (`article_id`),
  KEY `comment_pid_id_31d6bc03_fk_comment_id` (`pid_id`),
  KEY `comment_user_id_2224f9d1_fk_user_id` (`user_id`),
  CONSTRAINT `comment_article_id_1de4311c_fk_article_id` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  CONSTRAINT `comment_pid_id_31d6bc03_fk_comment_id` FOREIGN KEY (`pid_id`) REFERENCES `comment` (`id`),
  CONSTRAINT `comment_user_id_2224f9d1_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'asdasdsadsa','admin','360402387@qq.com','http://sadsasa.com','2018-10-07 12:17:24.102066',3,NULL,1),(2,'dsasadsfdsfsdfds','admin','360402387@qq.com','http://sadsasa.com','2018-10-07 12:17:35.086694',4,NULL,1),(3,'dsfdsfsdfdsfds','admin','360402387@qq.com','http://sadsasa.com','2018-10-07 12:17:42.835137',6,NULL,1),(4,'二恶烷方式多 分手大师东方闪电','admin','360402387@qq.com','http://sadsasa.com','2018-10-10 06:57:09.881810',7,NULL,1),(5,'发的范德萨发的','admin','360402387@qq.com','http://sadsasa.com','2018-10-10 06:57:26.214744',6,3,1),(6,'方式多发的所发生的','admin','360402387@qq.com','http://sadsasa.com','2018-10-12 03:00:32.679274',9,NULL,1),(7,'vfdgfdgfdg','admin','360402387@qq.com','http://sadsasa.com','2018-10-12 08:24:48.146155',6,5,1),(8,'不错','admin','360402387@qq.com','','2018-10-14 08:23:28.718546',15,NULL,1),(9,'非常','test02','2222222@qq.com','http://www.test.com','2018-10-14 08:45:01.402483',15,NULL,3),(10,'的是非得失\r\n@test02','test02','2222222@qq.com','http://www.test.com','2018-10-14 08:45:29.661099',15,NULL,3),(11,'饭店给发个梵蒂冈梵蒂冈的股份','test02','2222222@qq.com','http://www.test.com','2018-10-19 08:22:52.058289',6,NULL,3),(12,'佛挡杀佛','test03','360402387@qq.com','','2018-10-19 08:36:34.766345',14,NULL,4),(13,'dasdsadasdsa是DVD深V看的数据库vsd\r\n发送到发送到\r\n发送到','test01','1111111@qq.com','http://www.test.com','2018-11-09 02:53:57.046795',10,NULL,2),(14,'大萨达','test01','1111111@qq.com','http://www.test.com','2018-11-09 08:03:32.579870',10,NULL,2),(15,'浮点数','admin','360402387@qq.com','http://www.test.com','2018-11-11 07:46:07.143554',14,NULL,NULL),(16,'电风扇','admin','360402387@qq.com','','2018-11-11 08:11:34.605920',14,NULL,1),(17,'v','admin','360402387@qq.com','','2018-11-11 08:13:45.105384',6,NULL,1),(18,'大声大声道撒多撒','admin','360402387@qq.com','','2018-11-11 08:33:21.590195',6,NULL,1),(19,'大萨达','2323','360402387@qq.com','http://www.test.com','2018-11-11 08:34:44.727704',6,NULL,NULL),(20,'不持续性','游客test','1232@qq.com','http://sads额外企鹅无群asa.com','2018-11-11 08:35:34.461119',6,NULL,NULL),(21,'打算','admin','360402387@qq.com','','2018-11-12 02:46:08.784879',15,NULL,1),(22,'dsfdsfsd','admin002','360422202387@qq.com','','2018-11-14 01:49:55.022989',14,NULL,6),(23,'<p>adsa<img alt=\"heart\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/heart.png\" title=\"heart\" width=\"23\" /></p>','','','','2018-11-14 05:32:05.646223',15,NULL,1),(24,'<p>dasdsadsadsa<img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" /></p>','','','','2018-11-14 05:35:27.499768',15,NULL,1),(25,'<p><em><s><span style=\"color:#e74c3c\">fsfdsf</span></s></em></p>','','','','2018-11-14 05:36:26.093120',15,NULL,1),(26,'<p><img alt=\"cheeky\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/tongue_smile.png\" title=\"cheeky\" width=\"23\" /></p>','','','','2018-11-14 07:13:18.905394',15,NULL,1),(27,'<p>qw</p>','','','','2018-11-14 08:24:15.703869',15,NULL,1),(28,'<p>qw</p>','','','','2018-11-14 08:25:03.151583',15,NULL,1),(29,'<p>qw</p>','','','','2018-11-14 08:25:11.109038',15,NULL,1),(30,'<p>qw</p>','','','','2018-11-14 08:27:53.517327',15,NULL,1),(31,'<p>qw</p>','','','','2018-11-14 08:28:21.044902',15,NULL,1),(32,'<p>123</p>','','','','2018-11-14 08:50:43.464684',15,NULL,1),(33,'<p>456</p>','','','','2018-11-14 08:54:49.719769',15,NULL,1),(34,'<p>dasd</p>','','','','2018-11-14 09:36:18.193101',9,NULL,1),(35,'<p>dasd</p>','','','','2018-11-14 09:36:27.313623',9,NULL,1),(36,'<p>dasd</p>','','','','2018-11-14 09:36:31.442859',9,NULL,1),(37,'<p>dasd</p>','','','','2018-11-14 09:39:05.061646',9,NULL,1),(38,'<p>dasd</p>','','','','2018-11-14 09:41:44.204748',9,NULL,1),(39,'<p>324324324</p>','','','','2018-11-14 09:41:58.272553',9,NULL,1),(40,'<p>dafdfds</p>','','','','2018-11-14 11:37:37.122432',8,NULL,1),(41,'<p>weqwq</p>','','','','2018-11-14 11:37:53.681379',8,NULL,1),(42,'<p>weqwq</p>','','','','2018-11-14 11:37:57.229582',8,NULL,1),(43,'<p>weqwq</p>','','','','2018-11-14 11:37:58.062630',8,NULL,1),(44,'<p>weqwq</p>','','','','2018-11-14 11:37:58.933680',8,NULL,1),(45,'<p>dsadsa</p>','','','','2018-11-14 11:39:34.150126',8,NULL,1),(46,'<p>dsadsa</p>','','','','2018-11-14 11:39:34.819164',8,NULL,1),(47,'<p>dsadsa</p>','','','','2018-11-14 11:39:35.301192',8,NULL,1),(48,'<p>sss</p>','','','','2018-11-14 11:47:00.419651',8,NULL,1),(49,'<p>dsfsd</p>','','','','2018-11-14 11:50:19.132017',8,NULL,1),(50,'<p>dsfsd</p>','','','','2018-11-14 11:50:20.368088',8,NULL,1),(51,'<p>dsfsd</p>','','','','2018-11-14 11:50:21.218136',8,NULL,1),(52,'<p>666</p>','','','','2018-11-15 00:48:51.378727',15,NULL,1),(53,'<p>777</p>','admin','','','2018-11-15 00:53:56.039153',15,NULL,1),(54,'<p>111</p>','admin','','','2018-11-15 00:57:53.535737',15,NULL,1),(55,'<p>23</p>','admin','','','2018-11-15 00:58:39.335356',15,NULL,1),(56,'<p>32</p>','admin','','','2018-11-15 01:01:40.054693',15,NULL,1),(57,'<p>333</p>','admin','','','2018-11-15 01:03:00.178276',15,NULL,1),(58,'<p>123</p>','admin','','','2018-11-15 01:07:19.089085',15,NULL,1),(59,'<p>777222</p>','admin','','','2018-11-15 01:10:56.517521',15,NULL,1),(60,'<p>111111</p>','admin','','','2018-11-15 01:16:42.978337',15,NULL,1),(61,'<p>2222222222</p>','admin','','','2018-11-15 01:19:22.183443',15,NULL,1),(62,'<p>999999999</p>','admin','','','2018-11-15 01:24:31.067110',15,NULL,1),(63,'<p>qqqqqq<img alt=\"kiss\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/kiss.png\" title=\"kiss\" width=\"23\" /></p>','admin','','','2018-11-15 01:27:57.246903',15,NULL,1),(64,'<p>aaaaa</p>','admin','','','2018-11-15 01:48:06.718081',15,NULL,1),(65,'<p>fffff</p>','admin','','','2018-11-15 01:51:21.657231',15,NULL,1),(66,'<p>rrr</p>','admin','','','2018-11-15 01:55:30.965490',15,NULL,1),(67,'<p>ggg</p>','admin','','','2018-11-15 01:57:18.831660',15,NULL,1),(68,'<p>q</p>','admin','','','2018-11-15 01:58:11.071648',15,NULL,1),(69,'<p>xxxxx</p>','admin','','','2018-11-15 02:03:37.655327',15,NULL,1),(70,'<p>dsa</p>','admin','','','2018-11-15 02:25:39.476931',15,NULL,1),(71,'<p>dsdsa</p>','admin','','','2018-11-15 02:26:47.241807',15,NULL,1),(72,'<p>11</p>','admin','','','2018-11-15 02:27:50.782442',15,NULL,1),(73,'<p>qwq</p>','admin','','','2018-11-15 02:27:55.710723',15,NULL,1),(74,'<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>','admin','','','2018-11-15 02:37:42.986314',15,NULL,1),(75,'<p><img alt=\"laugh\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/teeth_smile.png\" title=\"laugh\" width=\"23\" /></p>','admin','','','2018-11-15 02:37:52.338849',15,NULL,1),(76,'<p><img alt=\"heart\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/heart.png\" title=\"heart\" width=\"23\" /></p>','admin','','','2018-11-15 02:38:55.565465',15,NULL,1),(79,'<p>我</p>','admin','','','2018-11-17 02:14:24.220734',17,NULL,1),(80,'<p>法萨芬</p>','admin','','','2018-11-17 02:14:36.768452',17,NULL,1),(81,'<p><img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" /><img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" /><img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​<img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​<img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​<img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​<img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​<img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​<img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​<img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​<img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​<img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​<img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​<img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​<img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​<img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​<img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​<img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​<img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​<img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​<img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​<img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​<img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​<img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​<img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​<img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​<img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​<img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​<img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​<img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​<img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​<img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" />​​​​​​​​​​​​​​</p>','admin','','','2018-11-17 02:15:40.507098',17,NULL,1),(82,'<p><span style=\"color:#e74c3c\"><strong>是飞电风扇的广泛鬼地方个梵蒂冈梵蒂冈梵蒂冈梵蒂冈&nbsp;<img alt=\"cool\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/shades_smile.png\" title=\"cool\" width=\"23\" /><img alt=\"cool\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/shades_smile.png\" title=\"cool\" width=\"23\" /></strong></span></p>','admin','','','2018-11-17 02:27:42.736407',17,NULL,1),(83,'<p><span style=\"color:#e74c3c\"><strong>发的发的是发的发的是发的发的是发的发的是发的发的是发的发的是发的发的是发的发的是发的发的是发的发的是发的发的是发的发的是发的发的是发的发的是发的发的是发的发的是发的发的是发的发的是发的发的是</strong></span></p>','admin','','','2018-11-17 02:28:06.877788',17,NULL,1),(84,'<p>人</p>','admin','','','2018-11-17 02:29:35.803874',17,NULL,1),(85,'<p>的</p>','admin','','','2018-11-17 02:31:56.388915',17,NULL,1),(86,'<p>人人</p>','admin','','','2018-11-17 02:37:57.974596',17,NULL,1),(87,'<p>人人</p>','admin','','','2018-11-17 02:38:05.469025',17,NULL,1),(88,'<p>人人</p>','admin','','','2018-11-17 02:38:06.236069',17,NULL,1),(89,'<p>人人</p>','admin','','','2018-11-17 02:38:06.496084',17,NULL,1),(90,'<p>人人</p>','admin','','','2018-11-17 02:38:06.523085',17,NULL,1),(91,'<p>人人</p>','admin','','','2018-11-17 02:41:11.124644',17,NULL,1),(92,'<p>插入</p>','admin','','','2018-11-17 02:47:49.006402',17,NULL,1),(93,'<p>斤斤计较</p>','admin','','','2018-11-17 02:52:13.792546',17,NULL,1),(94,'<p>第三方</p>','admin','','','2018-11-17 03:07:08.527722',17,NULL,1),(95,'<p>啊啊发</p>','admin','','','2018-11-17 03:08:02.955836',17,NULL,1),(96,'<p>多少</p>','admin','','','2018-11-17 03:08:50.321545',17,NULL,1),(97,'<p>第三方</p>','admin','','','2018-11-17 03:10:06.671912',17,NULL,1),(98,'<p>女男不v&nbsp;</p>','admin','','','2018-11-17 03:12:41.651776',17,NULL,1),(99,'<p>女男不v&nbsp;</p>','admin','','','2018-11-17 03:12:45.027969',17,NULL,1),(100,'<p>女男不v&nbsp;</p>','admin','','','2018-11-17 03:12:45.498996',17,NULL,1),(101,'<p>不VBVC</p>','admin','','','2018-11-17 04:50:20.578940',17,NULL,1),(102,'<p>广泛的股份</p>','admin','','','2018-11-17 04:51:49.285014',17,NULL,1),(103,'<p>啊</p>','admin','','','2018-11-17 05:04:55.275970',15,NULL,1),(104,'<p>啊</p>','admin','','','2018-11-17 05:05:01.696337',15,NULL,1),(105,'<p>大大</p>','admin','','','2018-11-17 05:14:38.384322',15,NULL,1),(106,'<p>大大</p>','admin','','','2018-11-17 05:14:44.704683',15,NULL,1),(107,'<p>优于</p>','admin','','','2018-11-17 05:24:57.385726',15,NULL,1),(108,'<p>吧</p>','admin','','','2018-11-17 05:27:35.996799',15,NULL,1),(109,'<p>为</p>','admin','','','2018-11-17 05:37:21.088264',16,NULL,1),(110,'<p>多少</p>','admin','','','2018-11-17 05:40:58.865720',16,NULL,1),(111,'<p>大萨达</p>','test01','','','2018-11-17 05:42:06.361581',16,NULL,2),(112,'<p>防晒霜的</p>','admin','','','2018-11-17 05:50:54.317778',16,NULL,1),(113,'<p>防晒霜的</p>','admin','','','2018-11-17 05:51:03.702315',16,NULL,1),(114,'<p>擦擦擦</p>','admin','','','2018-11-17 05:51:30.745861',16,NULL,1),(115,'<p>阿萨德</p>','admin','','','2018-11-17 05:52:20.972734',5,NULL,1),(116,'<p>哦你屁哦</p>','admin','','','2018-11-17 05:56:59.106643',5,NULL,1),(117,'<p>大</p>','admin','','','2018-11-17 05:59:13.049304',5,NULL,1),(118,'<p>所发生的</p>','admin','','','2018-11-17 06:18:31.991591',5,NULL,1),(119,'<p>是</p>','admin','','','2018-11-17 06:19:04.088427',5,NULL,1),(120,'<p>第三方</p>','admin','','','2018-11-17 06:19:23.316527',5,NULL,1),(121,'<p>的</p>','admin','','','2018-11-17 06:29:22.429794',5,NULL,1),(122,'<p>广泛的广泛的广泛的广泛的</p>','admin','','','2018-11-17 06:29:29.642207',5,NULL,1),(123,'<p>狗头人</p>','admin','','','2018-11-17 06:29:38.323703',5,NULL,1),(124,'<p>就来</p>','admin','','','2018-11-17 06:29:42.661952',5,NULL,1),(125,'<p><img alt=\"laugh\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/teeth_smile.png\" title=\"laugh\" width=\"23\" /></p>','admin','','','2018-11-17 06:31:14.257191',17,NULL,1),(126,'<p><img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" /><img alt=\"devil\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/devil_smile.png\" title=\"devil\" width=\"23\" /></p>','admin','','','2018-11-17 06:31:21.097582',17,NULL,1),(127,'<p><em><strong><span style=\"color:#e74c3c\">是的奋斗的</span></strong></em></p>','admin','','','2018-11-17 06:31:33.564295',17,NULL,1),(128,'<p>大多数</p>','admin','','','2018-11-17 06:40:42.207675',11,NULL,1),(129,'<p>广泛</p>','admin','','','2018-11-17 06:41:10.674304',11,NULL,1),(130,'<p>拿回家后</p>','admin','','','2018-11-17 06:41:16.501637',11,NULL,1),(131,'<p>酒瓯</p>','admin','','','2018-11-17 06:41:21.542925',11,NULL,1),(132,'<p>亩</p>','admin','','','2018-11-17 06:47:03.500484',11,NULL,1),(133,'<p>大飒飒的的撒大飒飒的的撒大飒飒的的撒大飒飒的的撒大飒飒的的撒大飒飒的的撒大飒飒的的撒大飒飒的的撒大飒飒的的撒大飒飒的的撒大飒飒的的撒大飒飒的的撒</p>','admin','','','2018-11-17 08:19:20.476248',11,NULL,1),(134,'<p>的</p>','admin','','','2018-11-17 08:20:12.196207',11,NULL,1),(135,'<p>表单</p>','admin','','','2018-11-17 08:21:31.104720',11,NULL,1),(136,'<p>凤</p>','admin','','','2018-11-17 08:21:34.500914',11,NULL,1),(137,'<p>额</p>','admin','','','2018-11-17 08:26:09.917667',17,NULL,1),(138,'<p>我</p>','admin','','','2018-11-17 08:33:19.993266',16,NULL,1),(139,'<p>去</p>','admin','','','2018-11-17 08:38:06.663663',16,NULL,1),(140,'<p>额</p>','admin','','','2018-11-17 08:40:16.452086',16,NULL,1),(141,'<p>天天</p>','admin','','','2018-11-17 08:41:12.022265',16,NULL,1),(142,'<p>体育</p>','admin','','','2018-11-17 08:41:30.990349',15,NULL,1),(143,'<p>2&nbsp;</p>','admin','','','2018-11-17 08:49:32.341881',15,NULL,1),(144,'<p>2&nbsp;</p>','admin','','','2018-11-17 08:49:38.090210',15,NULL,1),(145,'<p>2&nbsp;</p>','admin','','','2018-11-17 08:49:38.575238',15,NULL,1),(146,'<p>2&nbsp;</p>','admin','','','2018-11-17 08:49:38.724246',15,NULL,1),(147,'<p>元</p>','admin','','','2018-11-17 08:50:41.845857',15,NULL,1),(148,'<p>123</p>','admin','','','2018-11-17 16:53:46.125397',15,NULL,1),(149,'<p>456</p>','admin','','','2018-11-17 16:53:49.789606',15,NULL,1),(150,'<p>二</p>','admin','','','2018-11-18 08:40:08.315757',17,NULL,1),(151,'<p>1</p>','admin','','','2018-11-18 10:23:53.262338',17,NULL,1),(152,'<p><img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" /><img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" /><img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" />​​​​​​​<img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" />​​​​​​​<img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" />​​​​​​​<img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" />​​​​​​​<img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" />​​​​​​​<img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" />​​​​​​​<img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" />​​​​​​​<img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" />​​​​​​​<img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" />​​​​​​​<img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" />​​​​​​​<img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" />​​​​​​​<img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" />​​​​​​​<img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" />​​​​​​​<img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" />​​​​​​​<img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" />​​​​​​​<img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" />​​​​​​​<img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" />​​​​​​​<img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" />​​​​​​​<img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" />​​​​​​​<img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" />​​​​​​​<img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" />​​​​​​​<img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" />​​​​​​​<img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" />​​​​​​​<img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" />​​​​​​​<img alt=\"wink\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"23\" />​​​​​​​​​​​​​​</p>','admin','','','2018-11-18 10:47:00.832703',17,NULL,1),(177,'<p>fsd</p>','test2018',NULL,NULL,'2018-11-20 17:49:32.678410',16,NULL,7),(178,'<p>2018-11-20</p>','test2018',NULL,NULL,'2018-11-20 17:49:45.674154',16,NULL,7),(179,'<p>324</p>','test2018',NULL,NULL,'2018-11-20 17:57:36.112061',16,NULL,7),(180,'<p>&nbsp; &nbsp;&nbsp;</p>','test2018',NULL,NULL,'2018-11-20 18:39:50.603026',17,NULL,7),(181,'<p>w&nbsp; &nbsp; w</p>','test2018',NULL,NULL,'2018-11-20 18:57:08.727403',17,NULL,7),(182,'<p>哦</p>','test2018',NULL,NULL,'2018-11-21 08:50:16.273837',17,NULL,7),(183,'<p><em><strong><span style=\"background-color:#f39c12\">碧</span></strong></em></p>','test2018',NULL,NULL,'2018-11-21 08:51:08.743839',17,NULL,7),(184,'<p>12</p>','test2018',NULL,NULL,'2018-11-21 09:35:34.935336',16,NULL,7),(185,'<p>12</p>','test2018',NULL,NULL,'2018-11-21 09:35:38.398534',16,NULL,7),(186,'<p>12</p>','test2018',NULL,NULL,'2018-11-21 09:35:38.999568',16,NULL,7),(187,'<p>1</p>','test2018',NULL,NULL,'2018-11-21 09:41:17.091906',16,NULL,7),(188,'<p>12</p>','test2018',NULL,NULL,'2018-11-21 09:43:21.050996',16,NULL,7),(189,'<p>22</p>','test2018',NULL,NULL,'2018-11-21 09:45:50.970571',16,NULL,7),(190,'<p>33</p>','test2018',NULL,NULL,'2018-11-21 09:46:23.554435',16,NULL,7),(191,'<p>水电费</p>','test2018',NULL,NULL,'2018-11-21 10:52:43.346066',16,NULL,7),(192,'<p>水电费</p>','test2018',NULL,NULL,'2018-11-21 10:52:49.995446',16,NULL,7),(193,'<p><img alt=\"mail\" height=\"23\" src=\"http://127.0.0.1:8000/static/js/ckeditor/ckeditor/plugins/smiley/images/envelope.png\" title=\"mail\" width=\"23\" /></p>','test2018',NULL,NULL,'2018-11-21 11:08:33.872433',17,NULL,7),(194,'<p>1</p>','test2018',NULL,NULL,'2018-11-21 11:12:35.849273',17,NULL,7),(195,'<p>1</p>','test2018',NULL,NULL,'2018-11-21 11:12:39.244467',17,NULL,7),(196,'<p>1</p>','test2018',NULL,NULL,'2018-11-21 11:12:39.334473',17,NULL,7),(197,'<p>1</p>','test2018',NULL,NULL,'2018-11-21 11:12:39.459480',17,NULL,7),(198,'<p>1</p>','test2018',NULL,NULL,'2018-11-21 11:12:39.658491',17,NULL,7),(199,'<p>4</p>','test2018',NULL,NULL,'2018-11-23 16:26:09.637485',17,NULL,7),(200,'<p>u</p>','test2018',NULL,NULL,'2018-11-23 16:26:15.536822',17,NULL,7),(201,'<p>o</p>','test2018',NULL,NULL,'2018-11-23 16:26:23.035251',17,NULL,7),(202,'<p>w</p>','test2018',NULL,NULL,'2018-11-24 15:11:43.944781',15,NULL,7),(203,'<p>d</p>','test2018',NULL,NULL,'2018-11-24 15:12:22.461984',8,NULL,7),(204,'<p>s</p>','test2018',NULL,NULL,'2018-11-24 15:39:30.738116',10,NULL,7),(205,'<p>dsa</p>','test2018',NULL,NULL,'2018-11-24 15:39:36.710457',10,NULL,7),(206,'<p>eee</p>','test2018',NULL,NULL,'2018-11-24 15:40:31.539593',14,NULL,7),(207,'<p>cz</p>','test2018',NULL,NULL,'2018-11-24 16:40:16.828660',9,NULL,7),(208,'<p>ew</p>','test2018',NULL,NULL,'2018-11-24 19:51:50.272047',17,NULL,7),(209,'qw','test2018',NULL,NULL,'2018-11-25 10:33:16.441243',17,NULL,7),(210,'<p>6</p>','test2018',NULL,NULL,'2018-11-26 08:58:20.741971',17,NULL,7),(211,'<p>e</p>','admin',NULL,NULL,'2018-11-26 17:21:44.086849',17,NULL,1),(212,'<p>1</p>','admin',NULL,NULL,'2018-11-26 17:25:58.611407',17,NULL,1),(213,'<p>i</p>','admin',NULL,NULL,'2018-11-26 17:26:33.378395',17,NULL,1),(214,'<p>o</p>','admin',NULL,NULL,'2018-11-26 17:26:40.158783',17,NULL,1),(215,'<p>1</p>','admin',NULL,NULL,'2018-11-26 17:29:44.123305',17,NULL,1),(216,'<p>3</p>','admin',NULL,NULL,'2018-11-26 17:32:40.106371',17,NULL,1),(217,'<p>oo</p>','admin',NULL,NULL,'2018-11-26 17:35:44.192900',17,NULL,1),(218,'<p>pp</p>','admin',NULL,NULL,'2018-11-26 17:35:50.469259',17,NULL,1),(219,'<p>kk</p>','admin',NULL,NULL,'2018-11-26 17:35:57.151641',17,NULL,1),(220,'<p>mm</p>','admin',NULL,NULL,'2018-11-26 17:36:00.420828',17,NULL,1),(221,'<p>xx</p>','admin',NULL,NULL,'2018-11-26 17:36:03.333995',17,NULL,1),(222,'<p>gfhgfhgfh</p>','admin',NULL,NULL,'2018-11-26 17:36:06.583181',17,NULL,1),(223,'<p>yutjghjg</p>','admin',NULL,NULL,'2018-11-26 17:36:09.485347',17,NULL,1),(224,'<p>7</p>','admin',NULL,NULL,'2018-11-26 17:45:11.115326',17,NULL,1),(225,'<p>哦</p>','诸葛屠夫',NULL,NULL,'2018-11-26 21:45:55.619598',17,NULL,15),(226,'<p>平</p>','诸葛屠夫',NULL,NULL,'2018-11-26 21:46:00.068853',17,NULL,15),(227,'<p><strong>温热</strong></p>','诸葛屠夫',NULL,NULL,'2018-11-26 21:48:16.394650',8,NULL,15),(228,'<p><img alt=\"yes\" height=\"23\" src=\"http://127.0.0.1:8000/static/js/ckeditor/ckeditor/plugins/smiley/images/thumbs_up.png\" title=\"yes\" width=\"23\" /></p>','诸葛屠夫',NULL,NULL,'2018-11-26 21:48:24.248099',8,NULL,15),(229,'为','admin',NULL,NULL,'2018-11-26 22:11:02.701276',16,NULL,1);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_myBlog_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_myBlog_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-10-06 11:47:25.198129','1','Category object',1,'[{\"added\": {}}]',9,1),(2,'2018-10-06 11:47:30.050407','1','Tag object',1,'[{\"added\": {}}]',12,1),(3,'2018-10-06 11:47:34.511662','1','Article object',1,'[{\"added\": {}}]',8,1),(4,'2018-10-06 11:53:35.201292','2','Tag object',1,'[{\"added\": {}}]',12,1),(5,'2018-10-06 11:53:38.431477','2','Article object',1,'[{\"added\": {}}]',8,1),(6,'2018-10-06 11:59:03.091047','1','Tag object',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',12,1),(7,'2018-10-07 12:06:36.937050','2','浮点数',3,'',8,1),(8,'2018-10-07 12:06:37.599088','1','32432',3,'',8,1),(9,'2018-10-07 12:06:47.985682','1','fsdf',3,'',9,1),(10,'2018-10-07 12:07:00.325388','2','为',3,'',12,1),(11,'2018-10-07 12:07:00.381391','1','问问',3,'',12,1),(12,'2018-10-07 12:07:26.453882','2','分类test1',1,'[{\"added\": {}}]',9,1),(13,'2018-10-07 12:07:36.194439','3','分类test2',1,'[{\"added\": {}}]',9,1),(14,'2018-10-07 12:07:43.981885','4','分类test3',1,'[{\"added\": {}}]',9,1),(15,'2018-10-07 12:07:54.532488','5','分类 test4',1,'[{\"added\": {}}]',9,1),(16,'2018-10-07 12:08:10.001373','6','分类test5',1,'[{\"added\": {}}]',9,1),(17,'2018-10-07 12:09:07.156642','1','link_test1',1,'[{\"added\": {}}]',11,1),(18,'2018-10-07 12:09:47.195932','2','link_test2',1,'[{\"added\": {}}]',11,1),(19,'2018-10-07 12:14:30.420132','3','test01',1,'[{\"added\": {}}]',8,1),(20,'2018-10-07 12:15:01.405904','4','test02',1,'[{\"added\": {}}]',8,1),(21,'2018-10-07 12:15:21.322043','5','test03',1,'[{\"added\": {}}]',8,1),(22,'2018-10-07 12:15:40.304129','6','test04',1,'[{\"added\": {}}]',8,1),(23,'2018-10-07 12:16:04.432509','7','test05',1,'[{\"added\": {}}]',8,1),(24,'2018-10-07 12:16:22.705554','8','test06',1,'[{\"added\": {}}]',8,1),(25,'2018-10-07 12:16:39.949540','3','tag_test01',1,'[{\"added\": {}}]',12,1),(26,'2018-10-07 12:16:46.593920','4','tag_test02',1,'[{\"added\": {}}]',12,1),(27,'2018-10-07 12:16:49.968113','5','tag_test03',1,'[{\"added\": {}}]',12,1),(28,'2018-10-07 12:16:54.317362','6','tag_test04',1,'[{\"added\": {}}]',12,1),(29,'2018-10-07 12:16:57.451541','7','tag_test05',1,'[{\"added\": {}}]',12,1),(30,'2018-10-07 12:17:24.114066','1','1',1,'[{\"added\": {}}]',10,1),(31,'2018-10-07 12:17:35.088694','2','2',1,'[{\"added\": {}}]',10,1),(32,'2018-10-07 12:17:42.836137','3','3',1,'[{\"added\": {}}]',10,1),(33,'2018-10-07 13:41:57.509631','8','test06',2,'[]',8,1),(34,'2018-10-09 00:57:42.545771','9','test07',1,'[{\"added\": {}}]',8,1),(35,'2018-09-05 01:37:19.136867','10','test10',1,'[{\"added\": {}}]',8,1),(36,'2018-09-05 01:38:38.429402','11','test11',1,'[{\"added\": {}}]',8,1),(37,'2018-09-05 01:38:57.562497','12','test12',1,'[{\"added\": {}}]',8,1),(38,'2018-09-05 01:39:05.952977','9','test07',2,'[{\"changed\": {\"fields\": [\"category\"]}}]',8,1),(39,'2018-10-10 06:57:09.932813','4','4',1,'[{\"added\": {}}]',10,1),(40,'2018-10-10 06:57:26.272748','5','5',1,'[{\"added\": {}}]',10,1),(41,'2018-10-10 07:13:26.540672','9','test07',2,'[{\"changed\": {\"fields\": [\"is_recommend\"]}}]',8,1),(42,'2018-10-10 07:13:40.198453','8','test06',2,'[{\"changed\": {\"fields\": [\"is_recommend\"]}}]',8,1),(43,'2018-10-10 07:18:59.082692','13','test20水电费水电费第三方士大夫实打实地方',1,'[{\"added\": {}}]',8,1),(44,'2018-10-10 11:38:11.678452','9','test07',2,'[]',8,1),(45,'2018-10-12 03:00:33.030294','6','6',1,'[{\"added\": {}}]',10,1),(46,'2018-10-12 07:46:01.894101','14','test_img',1,'[{\"added\": {}}]',8,1),(47,'2018-10-12 07:53:20.411182','13','test20水电费水电费第三方士大夫实打实地方',2,'[]',8,1),(48,'2018-10-12 07:53:37.196142','3','test01',2,'[]',8,1),(49,'2018-10-12 07:53:46.816693','4','test02',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(50,'2018-10-12 07:53:56.693258','5','test03',2,'[]',8,1),(51,'2018-10-12 07:54:06.814837','6','test04',2,'[]',8,1),(52,'2018-10-12 07:54:16.900413','7','test05',2,'[]',8,1),(53,'2018-10-12 07:54:26.706974','8','test06',2,'[]',8,1),(54,'2018-10-12 08:24:48.211158','7','7',1,'[{\"added\": {}}]',10,1),(55,'2018-10-13 06:37:09.803517','7','7',2,'[]',10,1),(56,'2018-10-13 08:51:41.354183','15','wewq',1,'[{\"added\": {}}]',8,1),(57,'2018-11-10 01:19:47.322952','14','test_img',2,'[{\"changed\": {\"fields\": [\"click_count\"]}}]',8,1),(58,'2018-11-11 01:33:38.455327','2','首页',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',9,1),(59,'2018-11-11 01:33:49.930065','3','说说',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',9,1),(60,'2018-11-11 01:34:00.147127','4','文章',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',9,1),(61,'2018-11-11 01:34:08.973929','5','相册',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',9,1),(62,'2018-11-11 01:34:17.448228','6','留言板',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',9,1),(63,'2018-11-11 01:34:26.436742','7','关于我',1,'[{\"added\": {}}]',9,1),(64,'2018-11-17 02:04:48.762179','16','test20181117',1,'[{\"added\": {}}]',8,1),(65,'2018-11-17 02:06:43.337732','3','test01',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(66,'2018-11-17 02:08:08.247589','3','test01',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(67,'2018-11-17 02:08:52.525121','3','test01',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(68,'2018-11-17 02:11:24.296443','17','testxxxxx',1,'[{\"added\": {}}]',8,1),(69,'2018-11-17 02:11:45.532658','17','testxxxxx',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(70,'2018-11-17 02:12:10.140065','17','testxxxxx',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(71,'2018-11-18 09:57:46.491189','2','首页',3,'',9,1),(72,'2018-11-18 09:57:46.639198','3','说说',3,'',9,1),(73,'2018-11-18 09:57:46.801207','4','文章',3,'',9,1),(74,'2018-11-18 09:57:46.862211','5','相册',3,'',9,1),(75,'2018-11-18 09:57:46.946215','6','留言板',3,'',9,1),(76,'2018-11-18 09:57:47.040221','7','关于我',3,'',9,1),(77,'2018-11-18 09:58:28.139571','2','摘抄',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',9,1),(78,'2018-11-18 09:58:42.909416','6','转载',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',9,1),(79,'2018-11-18 09:58:50.750865','7','关于我',3,'',9,1),(80,'2018-11-26 09:15:08.108589','13','test20水电费水电费第三方士大夫实打实地方',3,'',8,1);
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
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(14,'likes','likecount'),(13,'likes','like_record'),(7,'myBlog','ad'),(8,'myBlog','article'),(9,'myBlog','category'),(10,'myBlog','comment'),(11,'myBlog','links'),(12,'myBlog','tag'),(6,'myBlog','user'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-10-05 12:38:21.503396'),(2,'contenttypes','0002_remove_content_type_name','2018-10-05 12:38:24.103544'),(3,'auth','0001_initial','2018-10-05 12:38:34.056114'),(4,'auth','0002_alter_permission_name_max_length','2018-10-05 12:38:35.441193'),(5,'auth','0003_alter_user_email_max_length','2018-10-05 12:38:35.552199'),(6,'auth','0004_alter_user_username_opts','2018-10-05 12:38:35.673206'),(7,'auth','0005_alter_user_last_login_null','2018-10-05 12:38:35.784212'),(8,'auth','0006_require_contenttypes_0002','2018-10-05 12:38:35.858217'),(9,'auth','0007_alter_validators_add_error_messages','2018-10-05 12:38:35.918220'),(10,'auth','0008_alter_user_username_max_length','2018-10-05 12:38:35.978223'),(11,'myBlog','0001_initial','2018-10-05 12:39:00.356618'),(12,'admin','0001_initial','2018-10-05 12:39:04.556858'),(13,'admin','0002_logentry_remove_auto_add','2018-10-05 12:39:04.651863'),(14,'admin','0003_auto_20181005_2038','2018-10-05 12:39:07.747041'),(15,'sessions','0001_initial','2018-10-05 12:39:09.534143'),(16,'myBlog','0002_auto_20181102_1500','2018-11-02 07:00:30.560585'),(17,'myBlog','0003_auto_20181111_1552','2018-11-11 07:52:11.308383'),(18,'myBlog','0004_auto_20181115_1127','2018-11-15 03:28:21.772122'),(19,'myBlog','0005_auto_20181126_0942','2018-11-26 09:43:06.318577'),(20,'likes','0001_initial','2018-11-26 09:43:11.032847');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
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
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('5i0dfypxn3ocjjzo99v6lwzn4rvt2ea2','NGYxNTBhZWNlYjE4NzEwZmJjMGZlYWE5MzZlZWI1ODk4MGZlYTI2Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZTZhZDQ1OGMwNDFmYWU0ODcwNTIyZDE4OTExNGZlYjc4MDRkMGQ3In0=','2018-12-10 22:10:55.156845'),('b8rixtl0px8qehh00twhl87m1ihly9su','NGYxNTBhZWNlYjE4NzEwZmJjMGZlYWE5MzZlZWI1ODk4MGZlYTI2Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZTZhZDQ1OGMwNDFmYWU0ODcwNTIyZDE4OTExNGZlYjc4MDRkMGQ3In0=','2018-11-24 01:15:21.778699'),('bpi32jesnjcx8tqrakhvmjislpozzjy0','NGYxNTBhZWNlYjE4NzEwZmJjMGZlYWE5MzZlZWI1ODk4MGZlYTI2Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZTZhZDQ1OGMwNDFmYWU0ODcwNTIyZDE4OTExNGZlYjc4MDRkMGQ3In0=','2018-10-20 11:38:24.844223'),('d0ke09ixue7fl840npsotv9ktsk157vc','ZWZjYTBhYjE2MWI5YWVhMWRiNGZiOTZkZDFjN2VlMzc1ZGIzZjljYTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZTM1MmMwOTJjMzVjNjhkMTZmYjliMzkxYjZiNjQ0MTJmN2QzYzcwIn0=','2018-11-02 08:26:41.058387'),('kxk7n136ed1am56koch6m100p5plk0at','NGYxNTBhZWNlYjE4NzEwZmJjMGZlYWE5MzZlZWI1ODk4MGZlYTI2Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZTZhZDQ1OGMwNDFmYWU0ODcwNTIyZDE4OTExNGZlYjc4MDRkMGQ3In0=','2018-12-02 10:23:17.090269'),('m4fabgc6lo3br1imfgakno3jyug6400s','NjQwMDg4ZTIxOGUxMzljODJlZjRlZjg5NjM2ZmRkMWE1MzgzZGI0ZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NjczZmEwYzhjNjdmMWU4OTJiODk2NzM2ODEwMDNhNTcwYTMyYzYzIn0=','2018-11-21 12:13:16.439680');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_like_record`
--

DROP TABLE IF EXISTS `likes_like_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes_like_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `like_time` datetime(6) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_like_record_content_type_id_8d79a646_fk_django_co` (`content_type_id`),
  KEY `likes_like_record_user_id_c52543fa_fk_user_id` (`user_id`),
  CONSTRAINT `likes_like_record_content_type_id_8d79a646_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `likes_like_record_user_id_c52543fa_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_like_record`
--

LOCK TABLES `likes_like_record` WRITE;
/*!40000 ALTER TABLE `likes_like_record` DISABLE KEYS */;
INSERT INTO `likes_like_record` VALUES (1,16,'2018-11-26 13:22:28.606417',8,1),(2,15,'2018-11-26 13:25:41.630458',8,1),(3,14,'2018-11-26 13:26:00.380530',8,1),(4,9,'2018-11-26 15:33:31.545497',8,1),(6,7,'2018-11-26 16:12:42.240949',8,1),(10,6,'2018-11-26 16:38:21.602995',8,1),(17,5,'2018-11-26 17:04:16.861951',8,1),(21,17,'2018-11-26 17:58:15.869212',8,1),(22,17,'2018-11-26 17:58:34.303075',8,2),(23,16,'2018-11-26 17:58:45.779731',8,2),(25,17,'2018-11-26 18:02:24.975878',8,11),(29,8,'2018-11-26 21:48:27.423281',8,15);
/*!40000 ALTER TABLE `likes_like_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_likecount`
--

DROP TABLE IF EXISTS `likes_likecount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes_likecount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `like_num` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_likecount_content_type_id_a33eb91e_fk_django_co` (`content_type_id`),
  CONSTRAINT `likes_likecount_content_type_id_a33eb91e_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_likecount`
--

LOCK TABLES `likes_likecount` WRITE;
/*!40000 ALTER TABLE `likes_likecount` DISABLE KEYS */;
INSERT INTO `likes_likecount` VALUES (1,16,2,8),(2,15,1,8),(3,14,1,8),(4,9,1,8),(5,8,2,8),(6,7,1,8),(7,6,3,8),(8,5,1,8),(9,17,3,8);
/*!40000 ALTER TABLE `likes_likecount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `callback_url` varchar(200) NOT NULL,
  `date_publish` datetime(6) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (1,'link_test1','desc1','http://www.baidu.com','2018-10-07 12:09:07.153642',990),(2,'link_test2','desc2','http://www.taobao.com','2018-10-07 12:09:47.193932',991);
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (3,'tag_test01'),(4,'tag_test02'),(5,'tag_test03'),(6,'tag_test04'),(7,'tag_test05');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'pbkdf2_sha256$36000$qmreWHmdPZOi$rWKxXDL+syVUvKk/Gq0zSJDrUk8P0SAkyjD87l35tZ8=','2018-11-26 22:10:55.064839',1,'admin','','','360402387@qq.com',1,1,'2018-10-06 11:38:13.664583','avatar/default.png',NULL,NULL,NULL),(2,'pbkdf2_sha256$36000$SOrhKBbVwavs$G7HZLvjfpABwJUoGqWcCCgRPnLU7QL3wLXdtLzNurgE=','2018-11-26 17:58:28.197725',0,'test01','','','1111111@qq.com',0,1,'2018-10-14 08:31:32.090193','avatar/default.png',NULL,NULL,'http://www.test.com'),(3,'pbkdf2_sha256$36000$HzpXEBIrfsuC$dpkwPmOBm63qvNzSZFJ04Rk3FG24oSCU35dWJwUc9l8=','2018-10-14 08:44:44.167497',0,'test02','','','2222222@qq.com',0,1,'2018-10-14 08:44:43.328449','avatar/default.png',NULL,NULL,'http://www.test.com'),(4,'pbkdf2_sha256$36000$eGGMxh3dvLxL$EwZUVCIZuwl1exM9UFmbzR2jEHNYzb0rm2RlVchgDVA=','2018-10-19 08:26:40.655364',0,'test03','','','360402387@qq.com',0,1,'2018-10-19 08:26:39.766313','avatar/default.png',NULL,NULL,'http://www.test.com'),(5,'pbkdf2_sha256$36000$48R2bNUtp7B2$HrA1KJZnHLPQgchvsoDR35m/DwU2syjV4mtkx7XUr24=','2018-11-12 03:04:34.966149',0,'admin01','','','3wqw60402387@qq.com',0,1,'2018-11-12 03:04:34.745136','avatar/default.png',NULL,NULL,'http://www.test.com'),(6,'pbkdf2_sha256$36000$grrnhnjILrB2$FH918rK/lJQ0ka7lJnORWFOdioPdpB0erdonYeysz74=','2018-11-12 03:05:05.848915',0,'admin002','','','360422202387@qq.com',0,1,'2018-11-12 03:05:05.451892','avatar/default.png',NULL,NULL,''),(7,'pbkdf2_sha256$36000$GWNQFKBdEMap$DPbR8ID7dhMOqPPgvSMIMYphbD8GbW0mZOG4q6stAZg=','2018-11-20 17:35:18.200537',0,'test2018','','','360402387@qq.com',0,1,'2018-11-20 17:35:17.720510','avatar/default.png',NULL,NULL,'http://www.test.com'),(8,'pbkdf2_sha256$36000$sQEnDbjpGGt7$49XUqCPHJQzBj46WJOBdBjObhA14S3JZo+cfhRE3hZY=','2018-11-26 17:59:57.058591',0,'admin001','','','360402387@qq.com',0,1,'2018-11-26 17:59:37.785769','avatar/default.png',NULL,NULL,'http://www.test.com'),(9,'pbkdf2_sha256$36000$0KFO4eYfusZB$gnrFnzDgHxOBmhHlIizE7kdiPMYOo7ig47Y19V9OKB0=','2018-11-26 18:00:24.801682',0,'ttt','','','1111111@qq.com',0,1,'2018-11-26 18:00:09.422971','avatar/default.png',NULL,NULL,'http://www.test.com'),(10,'pbkdf2_sha256$36000$Ka4O52fKiVbP$CSFjCruEnSV17xIh9X1ZvJ3VIgtwlHyPGuWJrK1Z/TA=','2018-11-26 18:00:44.341152',0,'xxxxx','','','2222222@qq.com',0,1,'2018-11-26 18:00:44.021133','avatar/default.png',NULL,NULL,'http://sads额外企鹅无群asa.com'),(11,'pbkdf2_sha256$36000$kWNAVwbkkxFs$ok7XmysMGnlpEzHB4dEVNAKHeuxpYpWmZzO9iQkZhHY=','2018-11-26 18:02:16.042367',0,'ddd','','','2222222@qq.com',0,1,'2018-11-26 18:02:15.769352','avatar/default.png',NULL,NULL,'http://www.fox.com'),(12,'pbkdf2_sha256$36000$n0bowCCxzKJR$/UK9y4Bu5AfbraTcubw+OWN/N+3sB2g3AhmM+LspjNc=','2018-11-26 21:43:16.635515',0,'刘伟','','','360402387@qq.com',0,1,'2018-11-26 21:42:24.795289','avatar/default.png',NULL,NULL,'http://www.fox-say.com'),(13,'pbkdf2_sha256$36000$v9c6RHWrHfvg$YdWzuRwnZECARbDo6VR3lJq+zJtwonI+yj3Iwxt0HlM=','2018-11-26 21:43:02.020792',0,'我是一个人','','','1111111@qq.com',0,1,'2018-11-26 21:43:01.716774','avatar/default.png',NULL,NULL,'http://www.test.com'),(14,'pbkdf2_sha256$36000$bGwGeklSYHYK$jnZCZetVKsWjE8UCh7uTNb8KcnVyy/YBg4hfheddRao=','2018-11-26 21:44:47.532300',0,'刘伟伟','','','360402387@qq.com',0,1,'2018-11-26 21:44:46.987269','avatar/default.png',NULL,NULL,'http://www.test.com'),(15,'pbkdf2_sha256$36000$hVnlHYm2hq83$+TXJLR1CG2xeoz2D0VSPbp8tzJe9hYfBusBO/iS9uT8=','2018-11-26 21:45:07.912869',0,'诸葛屠夫','','','360402387@qq.com',0,1,'2018-11-26 21:45:07.258832','avatar/default.png',NULL,NULL,'http://www.test.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `myBlog_user_groups_user_id_group_id_ad6a44e1_uniq` (`user_id`,`group_id`),
  KEY `myBlog_user_groups_group_id_b0eb44fb_fk_auth_group_id` (`group_id`),
  CONSTRAINT `myBlog_user_groups_group_id_b0eb44fb_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `myBlog_user_groups_user_id_2128f07f_fk_myBlog_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups`
--

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_user_permissions`
--

DROP TABLE IF EXISTS `user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `myBlog_user_user_permissions_user_id_permission_id_fbc0b32e_uniq` (`user_id`,`permission_id`),
  KEY `myBlog_user_user_per_permission_id_b3faa1d1_fk_auth_perm` (`permission_id`),
  CONSTRAINT `myBlog_user_user_per_permission_id_b3faa1d1_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `myBlog_user_user_permissions_user_id_e886402e_fk_myBlog_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_user_permissions`
--

LOCK TABLES `user_user_permissions` WRITE;
/*!40000 ALTER TABLE `user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-26 22:35:24
