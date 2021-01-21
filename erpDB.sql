-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: erp
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `attend_id` int NOT NULL AUTO_INCREMENT,
  `attend_workdate` char(10) DEFAULT NULL,
  `attend_starttime` datetime DEFAULT NULL,
  `attend_endtime` datetime DEFAULT NULL,
  `attend_defaulttime` int DEFAULT '540',
  `attend_overtime` int DEFAULT NULL,
  `attend_totaltime` int DEFAULT NULL,
  `attend_late` char(1) DEFAULT NULL,
  `attend_workplace` char(1) DEFAULT 'Y',
  `attend_status` int DEFAULT NULL,
  `emp_id_fk` int NOT NULL,
  PRIMARY KEY (`attend_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,'2021-01-06','2021-01-06 10:00:00','2021-01-06 19:00:00',540,0,540,'N','N',2,1),(2,'2020-12-29','2020-12-29 12:00:00','2020-12-29 21:30:00',540,30,570,'N','N',2,2),(3,'2020-12-10','2020-12-10 08:12:00','2020-12-10 17:56:00',540,44,584,'N','Y',2,3),(4,'2020-12-23','2020-12-23 08:45:00','2020-12-23 17:57:00',540,12,552,'N','Y',2,4),(5,'2021-01-03','2021-01-03 08:32:00','2021-01-03 17:55:00',540,23,563,'N','Y',2,5),(6,'2020-01-03','2020-01-03 08:51:00','2020-01-03 18:04:00',540,13,553,'N','Y',2,6),(7,'2020-12-30','2020-12-30 07:58:00','2020-12-30 18:01:00',540,63,603,'Y','N',1,7),(8,'2021-01-02','2021-01-02 11:12:00','2021-01-02 16:32:00',540,-220,320,'N','Y',2,8),(9,'2021-01-03','2021-01-03 10:05:00','2021-01-03 20:46:00',540,101,641,'N','Y',2,9),(10,'2020-12-31','2020-12-31 08:30:00','2020-12-31 18:02:00',540,32,572,'Y','Y',1,10),(11,'2020-12-04','2020-12-04 09:12:00','2020-12-04 17:59:00',540,-13,527,'N','Y',1,11),(12,'2020-12-26','2021-12-26 08:00:00','2020-12-26 18:00:00',540,60,600,'N','Y',2,12),(13,'2020-12-26','2021-12-26 09:00:00','2020-12-26 18:12:00',540,12,552,'Y','Y',2,13),(14,'2020-12-26','2021-12-26 10:00:00','2020-12-26 17:06:00',540,-114,426,'Y','Y',2,14),(15,'2020-12-26','2021-12-26 08:30:01','2021-12-26 19:54:00',540,144,684,'N','N',1,15),(16,'2020-12-26','2021-12-26 09:30:01','2021-12-26 17:57:00',540,-33,507,'Y','N',1,16),(17,'2020-12-26','2021-12-26 10:30:01','2020-12-26 20:36:00',540,66,606,'N','Y',2,17),(18,'2020-12-27','2021-12-27 08:00:00','2020-12-27 18:09:00',540,69,609,'Y','N',1,12),(19,'2020-12-27','2021-12-27 09:00:00','2020-12-27 18:00:00',540,0,540,'Y','Y',1,13),(20,'2020-12-27','2021-12-27 08:50:00','2020-12-27 20:42:00',540,172,712,'Y','N',1,14),(21,'2020-12-27','2021-12-27 08:40:00','2020-12-27 18:00:00',540,20,560,'N','N',2,15),(22,'2020-12-27','2021-12-27 08:35:00','2020-12-27 16:53:00',540,-42,498,'Y','Y',2,16);
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `board_id` int NOT NULL AUTO_INCREMENT,
  `board_department` char(3) NOT NULL,
  `board_code` varchar(20) NOT NULL,
  `board_num` varchar(25) NOT NULL,
  `board_open` char(1) DEFAULT NULL,
  `board_manager` varchar(10) DEFAULT NULL,
  `board_name` varchar(20) DEFAULT NULL,
  `board_type` char(6) DEFAULT NULL,
  `board_read` char(1) DEFAULT NULL,
  `board_write` char(1) DEFAULT NULL,
  `board_comment` char(1) DEFAULT NULL,
  `board_down` char(1) DEFAULT NULL,
  `board_move` varchar(5) NOT NULL,
  PRIMARY KEY (`board_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'999','com','999com','0','admin','사내 공지사항','공지사항','0','0','0','0','9991'),(2,'999','sys','999sys','0','admin','시스템 공지사항','공지사항','0','0','0','0','9992'),(3,'999','notice','999notice','0','admin','공지사항','공지사항','0','0','0','0','9993'),(4,'999','QnA','999QnA','0','admin','문의사항','일반','0','0','0','0','9994'),(5,'000','notice','000notice','0','admin','공지사항','공지사항','1','1','1','1','0001'),(6,'100','notice','100notice','0','admin','공지사항','공지사항','1','1','1','1','1001'),(7,'200','notice','200notice','0','admin','공지사항','공지사항','1','1','1','1','2001'),(8,'300','notice','300notice','0','admin','공지사항','공지사항','1','1','1','1','3001'),(9,'400','notice','400notice','0','admin','공지사항','공지사항','1','1','1','1','4001'),(10,'500','notice','500notice','0','admin','공지사항','공지사항','1','1','1','1','5001'),(11,'600','notice','600notice','0','admin','공지사항','공지사항','1','1','1','1','6001'),(12,'700','notice','700notice','0','admin','공지사항','공지사항','1','1','1','1','7001'),(13,'800','notice','800notice','0','admin','공지사항','공지사항','1','1','1','1','8001'),(14,'900','notice','900notice','0','admin','공지사항','공지사항','1','1','1','1','9001');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_article_000notice`
--

DROP TABLE IF EXISTS `board_article_000notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_article_000notice` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `emp_id_fk` int DEFAULT NULL,
  `comment_hit` int DEFAULT NULL,
  `secret` char(1) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_article_000notice`
--

LOCK TABLES `board_article_000notice` WRITE;
/*!40000 ALTER TABLE `board_article_000notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_article_000notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_article_100notice`
--

DROP TABLE IF EXISTS `board_article_100notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_article_100notice` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `emp_id_fk` int DEFAULT NULL,
  `comment_hit` int DEFAULT NULL,
  `secret` char(1) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_article_100notice`
--

LOCK TABLES `board_article_100notice` WRITE;
/*!40000 ALTER TABLE `board_article_100notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_article_100notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_article_200notice`
--

DROP TABLE IF EXISTS `board_article_200notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_article_200notice` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `emp_id_fk` int DEFAULT NULL,
  `comment_hit` int DEFAULT NULL,
  `secret` char(1) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_article_200notice`
--

LOCK TABLES `board_article_200notice` WRITE;
/*!40000 ALTER TABLE `board_article_200notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_article_200notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_article_300notice`
--

DROP TABLE IF EXISTS `board_article_300notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_article_300notice` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `emp_id_fk` int DEFAULT NULL,
  `comment_hit` int DEFAULT NULL,
  `secret` char(1) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_article_300notice`
--

LOCK TABLES `board_article_300notice` WRITE;
/*!40000 ALTER TABLE `board_article_300notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_article_300notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_article_400notice`
--

DROP TABLE IF EXISTS `board_article_400notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_article_400notice` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `emp_id_fk` int DEFAULT NULL,
  `comment_hit` int DEFAULT NULL,
  `secret` char(1) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_article_400notice`
--

LOCK TABLES `board_article_400notice` WRITE;
/*!40000 ALTER TABLE `board_article_400notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_article_400notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_article_500notice`
--

DROP TABLE IF EXISTS `board_article_500notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_article_500notice` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `emp_id_fk` int DEFAULT NULL,
  `comment_hit` int DEFAULT NULL,
  `secret` char(1) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_article_500notice`
--

LOCK TABLES `board_article_500notice` WRITE;
/*!40000 ALTER TABLE `board_article_500notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_article_500notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_article_600notice`
--

DROP TABLE IF EXISTS `board_article_600notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_article_600notice` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `emp_id_fk` int DEFAULT NULL,
  `comment_hit` int DEFAULT NULL,
  `secret` char(1) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_article_600notice`
--

LOCK TABLES `board_article_600notice` WRITE;
/*!40000 ALTER TABLE `board_article_600notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_article_600notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_article_700notice`
--

DROP TABLE IF EXISTS `board_article_700notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_article_700notice` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `emp_id_fk` int DEFAULT NULL,
  `comment_hit` int DEFAULT NULL,
  `secret` char(1) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_article_700notice`
--

LOCK TABLES `board_article_700notice` WRITE;
/*!40000 ALTER TABLE `board_article_700notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_article_700notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_article_800notice`
--

DROP TABLE IF EXISTS `board_article_800notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_article_800notice` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `emp_id_fk` int DEFAULT NULL,
  `comment_hit` int DEFAULT NULL,
  `secret` char(1) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_article_800notice`
--

LOCK TABLES `board_article_800notice` WRITE;
/*!40000 ALTER TABLE `board_article_800notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_article_800notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_article_900notice`
--

DROP TABLE IF EXISTS `board_article_900notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_article_900notice` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `emp_id_fk` int DEFAULT NULL,
  `comment_hit` int DEFAULT NULL,
  `secret` char(1) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_article_900notice`
--

LOCK TABLES `board_article_900notice` WRITE;
/*!40000 ALTER TABLE `board_article_900notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_article_900notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_article_999com`
--

DROP TABLE IF EXISTS `board_article_999com`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_article_999com` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `emp_id_fk` int DEFAULT NULL,
  `comment_hit` int DEFAULT NULL,
  `secret` char(1) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_article_999com`
--

LOCK TABLES `board_article_999com` WRITE;
/*!40000 ALTER TABLE `board_article_999com` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_article_999com` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_article_999notice`
--

DROP TABLE IF EXISTS `board_article_999notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_article_999notice` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `emp_id_fk` int DEFAULT NULL,
  `comment_hit` int DEFAULT NULL,
  `secret` char(1) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_article_999notice`
--

LOCK TABLES `board_article_999notice` WRITE;
/*!40000 ALTER TABLE `board_article_999notice` DISABLE KEYS */;
INSERT INTO `board_article_999notice` VALUES (1,'0','인사과 공지사항 입니다.','부사장','인사과 공지사항 입니다.','2021-01-21 14:31:00',0,'',NULL,NULL,9,0,'0'),(2,'0','경영과 공지사항 입니다.','부사장','경영과 공지사항 입니다.','2021-01-21 14:31:00',0,'',NULL,NULL,9,0,'0'),(3,'0','기획과 공지사항 입니다.','부사장','기획과 공지사항 입니다.','2021-01-21 14:31:00',0,'',NULL,NULL,9,0,'0'),(4,'0','총무과 공지사항 입니다.','부사장','총무과 공지사항 입니다.','2021-01-21 14:31:00',0,'',NULL,NULL,9,0,'0'),(5,'0','전산과 공지사항 입니다.','부사장','전산과 공지사항 입니다.','2021-01-21 14:31:00',0,'',NULL,NULL,9,0,'0'),(6,'0','지원과 공지사항 입니다.','부사장','지원과 공지사항 입니다.','2021-01-21 14:31:00',0,'',NULL,NULL,9,0,'0'),(7,'0','영업과 공지사항 입니다.','부사장','영업과 공지사항 입니다.','2021-01-21 14:31:00',0,'',NULL,NULL,9,0,'0'),(8,'0','마케팅과 공지사항 입니다.','부사장','마케팅과 공지사항 입니다.','2021-01-21 14:31:00',0,'',NULL,NULL,9,0,'0'),(9,'0','생산과 공지사항 입니다.','부사장','생산과 공지사항 입니다.','2021-01-21 14:31:00',0,'',NULL,NULL,9,0,'0'),(10,'0','회사일정 공지사항 입니다.','부사장','회사일정 공지사항 입니다.','2021-01-21 14:31:00',0,'',NULL,NULL,9,0,'0'),(11,'0','사내서버 공지사항 입니다.','부사장','사내서버 공지사항 입니다.','2021-01-21 14:31:00',0,'',NULL,NULL,9,0,'0'),(12,'0','2021년도 일정 공지사항 입니다.','부사장','2021년도 일정  공지사항 입니다.','2021-01-21 14:31:00',0,'',NULL,NULL,9,0,'0'),(13,'0','2021년도 지원과 공지사항 입니다.','부사장','2021년도 지원과 공지사항 입니다.','2021-01-21 14:31:01',0,'',NULL,NULL,9,0,'0'),(14,'0','2021년도 마케팅과 공지사항 입니다.','부사장','2021년도 마케팅과 공지사항 입니다.','2021-01-21 14:31:01',0,'',NULL,NULL,9,0,'0'),(15,'0','2021년도 영업과 공지사항 입니다.','부사장','2021년도 영업과 공지사항 입니다.','2021-01-21 14:31:01',0,'',NULL,NULL,9,0,'0'),(16,'0','2021년도 인사과 공지사항 입니다.','부사장','2021년도 인사과 공지사항 입니다.','2021-01-21 14:31:01',0,'',NULL,NULL,9,0,'0'),(17,'0','2021년도 경영과 공지사항 입니다.','부사장','2021년도 경영과 공지사항 입니다.','2021-01-21 14:31:01',0,'',NULL,NULL,9,0,'0'),(18,'0','2021년도 총무과 공지사항 입니다.','부사장','2021년도 총무과 공지사항 입니다.','2021-01-21 14:31:01',0,'',NULL,NULL,9,0,'0'),(19,'0','2021년도 기획과 공지사항 입니다.','부사장','2021년도 기획과 공지사항 입니다.','2021-01-21 14:31:01',0,'',NULL,NULL,9,0,'0');
/*!40000 ALTER TABLE `board_article_999notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_article_999qna`
--

DROP TABLE IF EXISTS `board_article_999qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_article_999qna` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `emp_id_fk` int DEFAULT NULL,
  `comment_hit` int DEFAULT NULL,
  `secret` char(1) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_article_999qna`
--

LOCK TABLES `board_article_999qna` WRITE;
/*!40000 ALTER TABLE `board_article_999qna` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_article_999qna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_article_999sys`
--

DROP TABLE IF EXISTS `board_article_999sys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_article_999sys` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `emp_id_fk` int DEFAULT NULL,
  `comment_hit` int DEFAULT NULL,
  `secret` char(1) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_article_999sys`
--

LOCK TABLES `board_article_999sys` WRITE;
/*!40000 ALTER TABLE `board_article_999sys` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_article_999sys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_comment_000notice`
--

DROP TABLE IF EXISTS `board_comment_000notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_comment_000notice` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid_fk` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `re_emp_id_fk` int DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_cid` int DEFAULT NULL,
  `re_cid_name` varchar(20) DEFAULT NULL,
  `re_cid_depart` varchar(20) DEFAULT NULL,
  `re_regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_comment_000notice`
--

LOCK TABLES `board_comment_000notice` WRITE;
/*!40000 ALTER TABLE `board_comment_000notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_comment_000notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_comment_100notice`
--

DROP TABLE IF EXISTS `board_comment_100notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_comment_100notice` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid_fk` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `re_emp_id_fk` int DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_cid` int DEFAULT NULL,
  `re_cid_name` varchar(20) DEFAULT NULL,
  `re_cid_depart` varchar(20) DEFAULT NULL,
  `re_regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_comment_100notice`
--

LOCK TABLES `board_comment_100notice` WRITE;
/*!40000 ALTER TABLE `board_comment_100notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_comment_100notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_comment_200notice`
--

DROP TABLE IF EXISTS `board_comment_200notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_comment_200notice` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid_fk` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `re_emp_id_fk` int DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_cid` int DEFAULT NULL,
  `re_cid_name` varchar(20) DEFAULT NULL,
  `re_cid_depart` varchar(20) DEFAULT NULL,
  `re_regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_comment_200notice`
--

LOCK TABLES `board_comment_200notice` WRITE;
/*!40000 ALTER TABLE `board_comment_200notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_comment_200notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_comment_300notice`
--

DROP TABLE IF EXISTS `board_comment_300notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_comment_300notice` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid_fk` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `re_emp_id_fk` int DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_cid` int DEFAULT NULL,
  `re_cid_name` varchar(20) DEFAULT NULL,
  `re_cid_depart` varchar(20) DEFAULT NULL,
  `re_regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_comment_300notice`
--

LOCK TABLES `board_comment_300notice` WRITE;
/*!40000 ALTER TABLE `board_comment_300notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_comment_300notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_comment_400notice`
--

DROP TABLE IF EXISTS `board_comment_400notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_comment_400notice` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid_fk` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `re_emp_id_fk` int DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_cid` int DEFAULT NULL,
  `re_cid_name` varchar(20) DEFAULT NULL,
  `re_cid_depart` varchar(20) DEFAULT NULL,
  `re_regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_comment_400notice`
--

LOCK TABLES `board_comment_400notice` WRITE;
/*!40000 ALTER TABLE `board_comment_400notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_comment_400notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_comment_500notice`
--

DROP TABLE IF EXISTS `board_comment_500notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_comment_500notice` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid_fk` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `re_emp_id_fk` int DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_cid` int DEFAULT NULL,
  `re_cid_name` varchar(20) DEFAULT NULL,
  `re_cid_depart` varchar(20) DEFAULT NULL,
  `re_regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_comment_500notice`
--

LOCK TABLES `board_comment_500notice` WRITE;
/*!40000 ALTER TABLE `board_comment_500notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_comment_500notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_comment_600notice`
--

DROP TABLE IF EXISTS `board_comment_600notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_comment_600notice` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid_fk` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `re_emp_id_fk` int DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_cid` int DEFAULT NULL,
  `re_cid_name` varchar(20) DEFAULT NULL,
  `re_cid_depart` varchar(20) DEFAULT NULL,
  `re_regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_comment_600notice`
--

LOCK TABLES `board_comment_600notice` WRITE;
/*!40000 ALTER TABLE `board_comment_600notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_comment_600notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_comment_700notice`
--

DROP TABLE IF EXISTS `board_comment_700notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_comment_700notice` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid_fk` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `re_emp_id_fk` int DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_cid` int DEFAULT NULL,
  `re_cid_name` varchar(20) DEFAULT NULL,
  `re_cid_depart` varchar(20) DEFAULT NULL,
  `re_regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_comment_700notice`
--

LOCK TABLES `board_comment_700notice` WRITE;
/*!40000 ALTER TABLE `board_comment_700notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_comment_700notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_comment_800notice`
--

DROP TABLE IF EXISTS `board_comment_800notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_comment_800notice` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid_fk` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `re_emp_id_fk` int DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_cid` int DEFAULT NULL,
  `re_cid_name` varchar(20) DEFAULT NULL,
  `re_cid_depart` varchar(20) DEFAULT NULL,
  `re_regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_comment_800notice`
--

LOCK TABLES `board_comment_800notice` WRITE;
/*!40000 ALTER TABLE `board_comment_800notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_comment_800notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_comment_900notice`
--

DROP TABLE IF EXISTS `board_comment_900notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_comment_900notice` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid_fk` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `re_emp_id_fk` int DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_cid` int DEFAULT NULL,
  `re_cid_name` varchar(20) DEFAULT NULL,
  `re_cid_depart` varchar(20) DEFAULT NULL,
  `re_regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_comment_900notice`
--

LOCK TABLES `board_comment_900notice` WRITE;
/*!40000 ALTER TABLE `board_comment_900notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_comment_900notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_comment_999com`
--

DROP TABLE IF EXISTS `board_comment_999com`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_comment_999com` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid_fk` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `re_emp_id_fk` int DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_cid` int DEFAULT NULL,
  `re_cid_name` varchar(20) DEFAULT NULL,
  `re_cid_depart` varchar(20) DEFAULT NULL,
  `re_regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_comment_999com`
--

LOCK TABLES `board_comment_999com` WRITE;
/*!40000 ALTER TABLE `board_comment_999com` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_comment_999com` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_comment_999notice`
--

DROP TABLE IF EXISTS `board_comment_999notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_comment_999notice` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid_fk` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `re_emp_id_fk` int DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_cid` int DEFAULT NULL,
  `re_cid_name` varchar(20) DEFAULT NULL,
  `re_cid_depart` varchar(20) DEFAULT NULL,
  `re_regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_comment_999notice`
--

LOCK TABLES `board_comment_999notice` WRITE;
/*!40000 ALTER TABLE `board_comment_999notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_comment_999notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_comment_999qna`
--

DROP TABLE IF EXISTS `board_comment_999qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_comment_999qna` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid_fk` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `re_emp_id_fk` int DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_cid` int DEFAULT NULL,
  `re_cid_name` varchar(20) DEFAULT NULL,
  `re_cid_depart` varchar(20) DEFAULT NULL,
  `re_regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_comment_999qna`
--

LOCK TABLES `board_comment_999qna` WRITE;
/*!40000 ALTER TABLE `board_comment_999qna` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_comment_999qna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_comment_999sys`
--

DROP TABLE IF EXISTS `board_comment_999sys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_comment_999sys` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid_fk` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `re_emp_id_fk` int DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_cid` int DEFAULT NULL,
  `re_cid_name` varchar(20) DEFAULT NULL,
  `re_cid_depart` varchar(20) DEFAULT NULL,
  `re_regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_comment_999sys`
--

LOCK TABLES `board_comment_999sys` WRITE;
/*!40000 ALTER TABLE `board_comment_999sys` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_comment_999sys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `client_id` int NOT NULL AUTO_INCREMENT,
  `client_code` varchar(10) NOT NULL,
  `client_use_state` char(1) NOT NULL,
  `client_company` varchar(30) NOT NULL,
  `client_license_num` char(12) NOT NULL,
  `client_ceo_name` varchar(15) NOT NULL,
  `client_business_condition` varchar(30) NOT NULL,
  `client_business_type` varchar(50) NOT NULL,
  `client_regdate` char(10) NOT NULL,
  `client_company_phone` varchar(12) NOT NULL,
  `client_company_fax` varchar(12) DEFAULT NULL,
  `client_company_page` varchar(100) DEFAULT NULL,
  `client_post` char(5) NOT NULL,
  `client_address` varchar(100) NOT NULL,
  `client_nation` char(1) NOT NULL,
  `client_detail_address` varchar(100) NOT NULL,
  `client_responsibility` varchar(15) NOT NULL,
  `client_res_cp` char(13) NOT NULL,
  `client_res_email` varchar(50) NOT NULL,
  `client_payment_type` varchar(20) NOT NULL,
  `client_handling` varchar(50) NOT NULL,
  `client_note` varchar(100) NOT NULL,
  `client_tax_email` varchar(50) NOT NULL,
  `client_tax_responsibility` varchar(15) NOT NULL,
  `client_tax_company_phone` varchar(12) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'130810','Y','쿠퐁 주식회사','120-88-00767','김범석','통신 판매업','통신 판매업','2013-08-21','1577-7011','0001','http:/www.coupang.com /','0001','서울특별시 송파구 신천동 7번지 30','0','서울특별시 송파구 송파대로 570, 18층 (신천동)','쿠담당','021231234','--','-','종합몰','2017-서울송파-0680','--','--','1577-7011'),(2,'070112','Y','(주)일룸','215-86-93600','강성문','생활용 가구 도매업','생활용 가구 도매업','2007-01-01','02-3400-6330','02-443-3814','www.iloom.com','0002','서울특별시 송파구 오금로 311 3층','0','서울특별시 송파구 오금로 311 3층 (오금동)','-','-','webmast**@iloom.com','-','가구/수납용품/ 상품권','법인번호110111-3598088','webmast**@iloom.com','주일룸','02-340-6330'),(3,'000413','Y','키움증권(주)','107-81-76756','이현','증권 중개업','증권 중개업','2000-04-01','02-3787-5000','02-3787-5136','www.kiwoom.com','0003','서울특별시 영등포구 여의나루로4길 1','0','키움파이낸스스퀘어빌딩','-','-','-','-','증권','법인110111-1867948','-','김키움','-'),(4,'550714','Y','SK증권(주)','116-81-36307','김신','증권 중개업','증권 중개업','1995-07-30','02-3773-8245','02-3773-8107','www.sks.co.kr','0004','서울특별시 영등포구 국제금융로8길 3','0','SK증권빌딩','소권','-','-','-','증권','법인110111-0037112','-','애스캐이','-'),(5,'791015','Y','(주)신세계푸드','215-81-47377','김운아, 성열기','기관 구내식당업','기관 구내식당업','1979-10-11','02-3397-6000','02-3397-6198','www.shinsegaefood.com','0005','서울특별시 성동구 성수일로 56 ','0','성수동BY센터 4-7층(성수동2가, 백영 성수빌딩)','-','-','@shinsegae.com','-','종합몰','법인110111-0305288','@shinsegae.com','신새개','-'),(6,'130916','Y','마산내공장','210-94-4730','김만식','운송업','운송업','2013-09-30','032-011-2435','032-011-4352','-','0006','마산 어디어디','0','어디리 어떤디','박춘식','-','-','-','트럭','테스트','-','김민식','-'),(7,'000917','Y','(주)씨젠','110-81-47859','천종윤','의료용품 및 기타 의약 관련제품 제조업','의료용품 및 기타 의약 관련제품 제조업','2000-09-18','02-2240-4036','02-2240-4040','seegene.co.kr','31226','서울특별시 송파구 오금로 91','0','7층','종윤천','02-4940-3039','-','-','의료용품,기타의약품','110111-2070334','-','장희재','-'),(8,'910218','Y','(주)셀트리온','133-81-23603','기우성','생물학적 제제 제조업','생물학적 제제 제조업','1991-02-27','032-850-5000','032-850-5078','www.celltrion.com','35486','인천광역시 연수구 아카데미로 23','0','-','우기숙','032-124-1110','woo@celtrion','-','생물학적 제제','135011-0034038','-','선기성','-'),(9,'910218','Y','부건에프엔씨(주)','204-86-18595','박준성','여자용 겉옷 제조업','여자용 겉옷 제조업','2010-01-01','02-3290-7605','02-921-1766','www.bugunfnc.com','01234','서울특별시 금천구 디지털로 173','0','(가산동, 엘리시아) 8~9층','-','-','he**@bugunfnc.com','-','의류/패션/잡화/뷰티/ 건강/식품','110111-4251940','-','부기정','02-1224-5533'),(10,'710520','Y','(주)포스코케이칼','506-81-01452','민경준','내화, 비내화 요업제품 제조업','내화, 비내화 요업제품 제조업','1971-05-13','054-290-0114','054-290-0114','www.poscochemical.com/','21357','경상북도 포항시 남구 신항로 110','0','-','경준민','054-221-7777','-','-','의류/패션/잡화/뷰티/ 건강/식품','174611-0001947','-','민경식','054-221-5454');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `com_num` char(12) DEFAULT NULL,
  `com_name` varchar(20) DEFAULT NULL,
  `com_name_eng` varchar(20) DEFAULT NULL,
  `com_ceo` varchar(20) DEFAULT NULL,
  `com_type` varchar(20) DEFAULT NULL,
  `com_item` varchar(20) DEFAULT NULL,
  `com_post` char(5) DEFAULT NULL,
  `com_address` varchar(50) DEFAULT NULL,
  `com_tel` char(13) DEFAULT NULL,
  `com_cp` char(13) DEFAULT NULL,
  `com_fax` char(20) DEFAULT NULL,
  `com_opendate` char(10) DEFAULT NULL,
  `com_erpdate` char(10) DEFAULT NULL,
  `com_corp_num` char(14) DEFAULT NULL,
  `com_email` varchar(50) DEFAULT NULL,
  `com_url` varchar(100) DEFAULT NULL,
  `com_auth` int DEFAULT NULL,
  `com_logo` varchar(20) DEFAULT NULL,
  `com_sublogo` varchar(50) DEFAULT NULL,
  `com_web_menu` varchar(100) DEFAULT NULL,
  `com_web_menu_url` varchar(100) DEFAULT NULL,
  `com_web_top` varchar(100) DEFAULT NULL,
  `com_web_bottom` varchar(100) DEFAULT NULL,
  `com_web_copyright` varchar(200) DEFAULT NULL,
  `com_ceo_img` varchar(300) DEFAULT NULL,
  `com_stamp_img` varchar(300) DEFAULT NULL,
  `com_ceo_stamp_img` varchar(300) DEFAULT NULL,
  `com_ceo_sign_img` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES ('12-123-12345','블루 ERP 시스템','BLUE ERP SYSTEM','김파랑','업태','종목','12345','부산시 북구 화명대로 123','051-123-4567','010-1234-5678','05112345678','2020-12-12','2021-01-01','1234567891011','https://blue@bluerp.com','www.bluerp.com',2,'ERP','erp system','회사소개;ERP소개;깃허브;포트폴리오;고객지원','/erp/companyInfo;/erp/erpInfo;https://github.com/TaeJooLim/PPT;#;/erp/customerSupport','BLUE ERP','blue erp system','Copyright 2020. (김진희, 박민정, 윤가희, 임태주) all rights reserved.',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contract` (
  `cont_id` int NOT NULL AUTO_INCREMENT,
  `cont_doc_num` varchar(30) NOT NULL,
  `cont_com_name` varchar(20) NOT NULL,
  `cont_emp_company` varchar(20) NOT NULL,
  `cont_depart_name` varchar(20) NOT NULL,
  `cont_position_name` varchar(20) NOT NULL,
  `cont_emp_name` varchar(30) NOT NULL,
  `cont_client_company` varchar(30) NOT NULL,
  `cont_client_ceo_name` varchar(15) NOT NULL,
  `cont_client_responsibility` varchar(15) NOT NULL,
  `cont_client_res_cp` char(13) NOT NULL,
  `cont_client_res_email` varchar(50) NOT NULL,
  `cont_orderDate` char(10) NOT NULL,
  `cont_dueDate` char(10) NOT NULL,
  `cont_note` varchar(255) DEFAULT NULL,
  `client_license_num_fk` char(12) DEFAULT NULL,
  PRIMARY KEY (`cont_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract`
--

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
INSERT INTO `contract` VALUES (1,'202101087105201','블루 ERP 시스템','본사','생산과','부사장','부사장','(주)포스코케이칼 ','민경준','경준민','054-290-0114','-','2021-01-01','2021-01-08','','506-81-01452'),(2,'202101087105202','블루 ERP 시스템','본사','생산과','부사장','부사장','(주)포스코케이칼 ','민경준','경준민','054-290-0114','-','2021-01-01','2021-01-08','','506-81-01452'),(3,'202101089102183','블루 ERP 시스템','본사','생산과','부사장','부사장','부건에프엔씨(주)','박준성','-','02-3290-7605','he**@bugunfnc.com','2021-01-01','2021-01-08','','204-86-18595'),(4,'202101089102184','블루 ERP 시스템','본사','생산과','부사장','부사장','(주)셀트리온 ','기우성','우기숙','032-850-5000','woo@celtrion','2021-01-01','2021-01-08','','133-81-23603'),(5,'202101080009175','블루 ERP 시스템','본사','생산과','부사장','부사장','(주)씨젠 ','천종윤','종윤천','02-2240-4036','-','2021-01-01','2021-01-08','','110-81-47859'),(6,'202101081309166','블루 ERP 시스템','본사','생산과','부사장','부사장','마산내공장','김만식','박춘식','032-011-2435','-','2021-01-01','2021-01-08','','210-94-4730'),(7,'202101087910157','블루 ERP 시스템','본사','생산과','부사장','부사장','(주)신세계푸드','김운아, 성열기','-','02-3397-6000','@shinsegae.com','2021-01-01','2021-01-08','','215-81-47377'),(8,'202101087910158','블루 ERP 시스템','본사','생산과','부사장','부사장','(주)신세계푸드','김운아, 성열기','-','02-3397-6000','@shinsegae.com','2021-01-01','2021-01-08','','215-81-47377'),(9,'202101085507149','블루 ERP 시스템','본사','생산과','부사장','부사장','SK증권(주)','김신','소권','02-3773-8245','-','2021-01-01','2021-01-08','','116-81-36307'),(10,'2021010855071410','블루 ERP 시스템','본사','생산과','부사장','부사장','SK증권(주)','김신','소권','02-3773-8245','-','2021-01-01','2021-01-08','','116-81-36307'),(11,'2021010800041311','블루 ERP 시스템','본사','생산과','부사장','부사장','키움증권(주)','이현','-','02-3787-5000','-','2021-01-01','2021-01-08','','107-81-76756'),(12,'2021010807011212','블루 ERP 시스템','본사','생산과','부사장','부사장','(주)일룸','강성문','-','02-3400-6330','webmast**@iloom.com','2021-01-01','2021-01-08','','215-86-93600'),(13,'2021010807011213','블루 ERP 시스템','본사','생산과','부사장','부사장','(주)일룸','강성문','-','02-3400-6330','webmast**@iloom.com','2021-01-01','2021-01-08','','215-86-93600'),(14,'2021010813081014','블루 ERP 시스템','본사','생산과','부사장','부사장','쿠퐁 주식회사','김범석','쿠담당','1577-7011','-','2021-01-01','2021-01-08','','120-88-00767'),(15,'2021010813081015','블루 ERP 시스템','본사','생산과','부사장','부사장','쿠퐁 주식회사','김범석','쿠담당','1577-7011','-','2021-01-01','2021-01-08','','120-88-00767'),(16,'2021010891021816','블루 ERP 시스템','본사','생산과','부사장','부사장','(주)셀트리온 ','기우성','우기숙','032-850-5000','woo@celtrion','2021-01-01','2021-01-08','','133-81-23603');
/*!40000 ALTER TABLE `contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_detail`
--

DROP TABLE IF EXISTS `contract_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contract_detail` (
  `contD_id` int NOT NULL AUTO_INCREMENT,
  `contD_doc_num_fk` varchar(30) NOT NULL,
  `contD_p_name` varchar(100) NOT NULL,
  `contD_p_unit` varchar(5) NOT NULL,
  `contD_p_amount` int NOT NULL,
  `contD_p_sell` int NOT NULL,
  `contD_vat` char(3) DEFAULT NULL,
  `p_id_fk` int NOT NULL,
  PRIMARY KEY (`contD_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_detail`
--

LOCK TABLES `contract_detail` WRITE;
/*!40000 ALTER TABLE `contract_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corp_car`
--

DROP TABLE IF EXISTS `corp_car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corp_car` (
  `car_id` int NOT NULL AUTO_INCREMENT,
  `car_model` varchar(20) NOT NULL,
  `car_name` varchar(50) NOT NULL,
  `car_num` varchar(20) NOT NULL,
  `car_purchase_date` varchar(10) NOT NULL,
  `car_purchase_price` int NOT NULL,
  `car_use_year` int DEFAULT NULL,
  `car_scrap_value` int DEFAULT NULL,
  `car_insurance_start` varchar(10) DEFAULT NULL,
  `car_insurance_end` varchar(10) DEFAULT NULL,
  `car_comprehensive` char(1) DEFAULT 'N',
  `car_inspection` varchar(10) DEFAULT NULL,
  `car_total_mileage` int DEFAULT NULL,
  PRIMARY KEY (`car_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corp_car`
--

LOCK TABLES `corp_car` WRITE;
/*!40000 ALTER TABLE `corp_car` DISABLE KEYS */;
INSERT INTO `corp_car` VALUES (1,'카니발','카니발 2.2디젤','100가1010','2020-01-02',30000000,1,20000000,'2020-01-03','2030-01-03','Y','2020-08-01',23000),(2,'카니발','카니발 3.5가솔린','123다1010','2020-11-22',30000000,1,20000000,'2020-11-23','2030-11-23','Y','2020-09-01',20000),(3,'모닝','2019 모닝 1.0가솔린','222라1234','2019-01-10',10000000,2,8000000,'2019-01-10','2029-01-10','Y','2020-08-01',30000),(4,'모닝','2019 모닝 1.0가솔린','320마1111','2019-01-10',10000000,2,8000000,'2019-01-10','2029-01-10','Y','2020-08-01',25000),(5,'라보','2019 라보','234라1233','2019-01-10',9000000,2,8000000,'2019-01-10','2029-01-10','Y','2020-08-01',37000),(6,'라보','2019 라보','784라0805','2019.01.10',9000000,2,8000000,'2019.01.10','2029.01.10','Y','2020.01.10',58000),(7,'라보','2019 라보','288라8855','2019-01-10',9000000,2,8000000,'2019-01-10','2029-01-10','Y','2020-11-01',67000),(8,'그랜저','2020 그랜저 2.5가솔린','325나2332','2020-07-17',45000000,2,39000000,'2020.07.18','2030.01.18','Y','2020.10.01',10000),(9,'그랜저','2020 그랜저 3.1LPi','654나5423','2020.07.17',45000000,2,39000000,'2020-07-18','2030-01-18','Y','2020-10-12',15000),(10,'제네시스','2020 제네시스 G80 2.5가솔린','334나4234','2020-07-17',60000000,2,55000000,'2020-07-18','2030-01-18','Y','2020-10-01',10000),(11,'제네시스','2020 제네시스 G80 2.5가솔린','874나4334','2020-07-16',60000000,1,55000000,'2020-07-15','2030-01-15','Y','2020-10-01',10000),(12,'제네시스','2020 제네시스 G80 2.5가솔린','174나6634','2020-07-16',60000000,3,55000000,'2020-07-15','2030-01-15','Y','2020-10-01',10000),(13,'제네시스','2020 제네시스 G80 2.5가솔린','834나0978','2020-07-16',60000000,5,55000000,'2020-07-15','2030-01-15','Y','2020-10-01',10000),(14,'모닝','2019 모닝 1.0가솔린','323마1324','2019-01-10',10000000,1,8000000,'2019-01-10','2029-01-10','Y','2020-08-01',25000),(15,'모닝','2019 모닝 1.0가솔린','334마1552','2019-12-11',10000000,2,8300000,'2019-01-10','2029-01-10','Y','2020-08-01',25000),(16,'모닝','2019 모닝 1.0가솔린','321마1530','2019-10-11',10000000,2,8300000,'2019-01-10','2029-01-10','Y','2020-08-01',25000),(17,'카니발','카니발 2.2디젤','130가1014','2020-01-12',30000000,1,20000000,'2020-01-03','2030-01-03','Y','2020-08-01',23000),(18,'카니발','카니발 2.2디젤','352가4356','2020-01-12',30000000,1,20000000,'2020-01-03','2030-01-03','Y','2020-08-01',23000),(19,'카니발','카니발 2.2디젤','423가4456','2020-11-14',30000000,1,20000000,'2020-01-03','2030-01-03','Y','2020-08-01',25000),(20,'카니발','카니발 2.2디젤','443가3332','2020-11-15',30000000,2,20000000,'2020-01-03','2030-01-03','Y','2020-08-01',20000);
/*!40000 ALTER TABLE `corp_car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corp_car_log`
--

DROP TABLE IF EXISTS `corp_car_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corp_car_log` (
  `car_pid` int NOT NULL AUTO_INCREMENT,
  `car_drive_date` varchar(10) NOT NULL,
  `car_destination` varchar(50) NOT NULL,
  `car_purpose` varchar(50) NOT NULL,
  `car_drive_start` varchar(10) NOT NULL,
  `car_drive_end` varchar(10) NOT NULL,
  `car_start_km` int NOT NULL,
  `car_end_km` int NOT NULL,
  `car_driver` varchar(10) NOT NULL,
  `car_passenger` varchar(10) DEFAULT NULL,
  `car_key` char(1) NOT NULL DEFAULT 'N',
  `car_fuel` varchar(20) DEFAULT NULL,
  `car_fuel_amount` int DEFAULT NULL,
  `car_remark` varchar(200) DEFAULT NULL,
  `car_id_fk` int NOT NULL,
  PRIMARY KEY (`car_pid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corp_car_log`
--

LOCK TABLES `corp_car_log` WRITE;
/*!40000 ALTER TABLE `corp_car_log` DISABLE KEYS */;
INSERT INTO `corp_car_log` VALUES (1,'2020.12.20','부산','출장','09:00','16:00',12000,12400,'김철수','이철수','Y','주유',30000,'-',10),(2,'2020.12.22','서울','외부업체 컨택','09:00','19:00',12400,14600,'김철수','-','N','주유',80000,'-',10),(3,'2020.12.09','전주','배달','09:00','13:00',30000,35400,'김철수','이철수','Y','주유',50000,'-',9),(4,'2020.12.11','서울','출장','09:00','13:00',30000,35400,'김철수','이철수','Y','주유',50000,'-',10),(5,'2020.12.13','김해','출장','09:00','13:00',30000,35400,'박철수','이철수','Y','주유',50000,'-',10),(6,'2020.12.14','김해','출장','09:00','13:00',30000,35400,'박과장','-','N','주유',50000,'-',10),(7,'2020.12.26','양산','미팅','09:00','13:00',30000,35400,'박과장','-','Y','주유',50000,'-',10),(8,'2020.12.27','마산','미팅','09:00','13:00',30000,35400,'김사원','-','Y','주유',50000,'-',10),(9,'2020.12.29','부산','미팅','09:00','13:00',30000,35400,'김사원','-','Y','주유',50000,'-',10),(10,'2021.01.02','마산','출장','09:00','13:00',30000,35400,'이대리','김사원','N','주유',50000,'-',10),(11,'2021.01.03','부산','미팅','09:00','13:00',30000,35400,'이대리','-','N','주유',50000,'-',10),(12,'2021.01.05','서울','영업','09:00','13:00',30000,35400,'권사원','-','Y','주유',50000,'-',10),(13,'2021.01.06','창원','영업','09:00','13:00',30000,35400,'권사원','-','Y','주유',50000,'-',10),(14,'2021.01.10','인천','출장','09:00','13:00',30000,35400,'박사장','-','Y','주유',50000,'-',10),(15,'2021.01.12','인천','출장','09:00','13:00',30000,35400,'권사원','-','Y','주유',50000,'-',10),(16,'2021.01.13','인천','미팅','09:00','13:00',30000,35400,'이과장','-','Y','주유',50000,'-',10),(17,'2021.01.20','춘천','미팅','09:00','13:00',30000,35400,'이과장','-','N','주유',50000,'-',10);
/*!40000 ALTER TABLE `corp_car_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `depart_code` char(3) DEFAULT NULL,
  `depart_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('000','중앙부서'),('100','인사과'),('200','경영과'),('300','기획과'),('400','총무과'),('500','전산과'),('600','지원과'),('700','영업과'),('800','마케팅과'),('900','생산과');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `emp_department` char(3) NOT NULL,
  `emp_position` char(2) NOT NULL,
  `emp_num` varchar(20) NOT NULL,
  `emp_enter` char(10) NOT NULL,
  `emp_name` varchar(30) NOT NULL,
  `emp_birth` char(10) NOT NULL,
  `emp_password` varchar(20) NOT NULL,
  `emp_email` varchar(50) NOT NULL,
  `emp_regdate` date DEFAULT NULL,
  `emp_headcheck` char(1) DEFAULT 'N',
  `emp_step` int DEFAULT NULL,
  `emp_auth` int DEFAULT '1',
  `emp_confirm` char(1) DEFAULT 'N',
  `emp_photo` varchar(255) DEFAULT NULL,
  `emp_off_total` double DEFAULT NULL,
  `emp_off_use` double DEFAULT '0',
  `emp_off_remain` double DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'ad','ad','admin','1111-11-11','admin','1111-11-11','admin','admin','2021-01-21','N',NULL,10,'Y',NULL,NULL,0,NULL),(2,'000','06','120300018','2012-03-08','중부장','1975-10-22','1234','abc@blue.com','2021-01-21','Y',9,9,'Y',NULL,NULL,0,NULL),(3,'100','06','120310019','2012-03-01','인부장','1975-10-23','1234','bcd@blue.com','2021-01-21','Y',9,9,'Y',NULL,NULL,0,NULL),(4,'200','06','120320020','2012-03-08','경부장','1975-10-24','1234','cde@blue.com','2021-01-21','Y',9,9,'Y',NULL,NULL,0,NULL),(5,'300','06','120330021','2012-03-08','기부장','1975-10-25','1234','def@blue.com','2021-01-21','Y',9,9,'Y',NULL,NULL,0,NULL),(6,'400','06','120340022','2012-03-08','총부장','1975-10-26','1234','efg@blue.com','2021-01-21','Y',9,9,'Y',NULL,NULL,0,NULL),(7,'500','06','120350023','2012-03-08','전부장','1975-10-27','1234','fgh@blue.com','2021-01-21','Y',9,9,'Y',NULL,NULL,0,NULL),(8,'600','06','120360024','2012-03-08','지부장','1975-10-28','1234','ghi@blue.com','2021-01-21','Y',9,9,'Y',NULL,NULL,0,NULL),(9,'700','06','120370025','2012-03-08','영부장','1975-10-29','1234','hij@blue.com','2021-01-21','Y',9,9,'Y',NULL,NULL,0,NULL),(10,'800','06','120380026','2012-03-08','마부장','1975-10-30','1234','ijk@blue.com','2021-01-21','Y',9,9,'Y',NULL,NULL,0,NULL),(11,'900','06','120390027','2012-03-08','생부장','1975-10-31','1234','jkl@blue.com','2021-01-21','Y',9,9,'Y',NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_detail`
--

DROP TABLE IF EXISTS `employee_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_detail` (
  `emp_company` char(2) NOT NULL,
  `emp_team` char(2) NOT NULL,
  `emp_gender` char(1) NOT NULL,
  `emp_CP` char(13) NOT NULL,
  `emp_extension` varchar(4) DEFAULT NULL,
  `emp_leader` varchar(10) DEFAULT '-',
  `emp_driving` char(1) DEFAULT NULL,
  `emp_carlicense` varchar(10) DEFAULT NULL,
  `emp_mycar` char(1) DEFAULT NULL,
  `emp_graduated` char(6) DEFAULT NULL,
  `emp_major` varchar(20) DEFAULT NULL,
  `emp_academy` varchar(20) DEFAULT NULL,
  `emp_reward` char(3) DEFAULT NULL,
  `emp_disability` char(3) DEFAULT NULL,
  `emp_army` char(4) DEFAULT NULL,
  `emp_religion` char(3) DEFAULT NULL,
  `emp_married` char(2) DEFAULT NULL,
  `emp_license1` varchar(20) DEFAULT NULL,
  `emp_license2` varchar(20) DEFAULT NULL,
  `emp_license3` varchar(20) DEFAULT NULL,
  `emp_lang1` varchar(20) DEFAULT NULL,
  `emp_lang2` varchar(20) DEFAULT NULL,
  `emp_nation` char(3) DEFAULT NULL,
  `emp_post` char(5) DEFAULT NULL,
  `emp_address` varchar(100) DEFAULT NULL,
  `emp_bank` varchar(10) DEFAULT NULL,
  `emp_accountnum` varchar(20) NOT NULL,
  `emp_address_detail` varchar(50) DEFAULT NULL,
  `emp_career` text,
  `emp_id_fk` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_detail`
--

LOCK TABLES `employee_detail` WRITE;
/*!40000 ALTER TABLE `employee_detail` DISABLE KEYS */;
INSERT INTO `employee_detail` VALUES ('본사','1팀','남','010-1111-1111',NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'하나','0101010-10-101',NULL,NULL,2),('본사','1팀','여','010-1111-1111',NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'우리','0101010-10-101',NULL,NULL,3),('본사','1팀','여','010-1111-1111',NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NH농협','0101010-10-101',NULL,NULL,4),('본사','2팀','남','010-4242-4242',NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'하나','0101010-10-101',NULL,NULL,17),('본사','1팀','여','010-4242-4242',NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'우리','0101010-10-101',NULL,NULL,16),('본사','1팀','남','010-2020-2020',NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'기업','0101010-10-101',NULL,NULL,15),('본사','1팀','남','010-1515-1414',NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NH농협','0101010-10-101',NULL,NULL,14),('본사','1팀','남','010-1515-1414',NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NH농협','0101010-10-101',NULL,NULL,18),('본사','1팀','여','010-1515-1414',NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NH농협','0101010-10-101',NULL,NULL,19),('본사','2팀','여','010-1515-1414',NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NH농협','1211145-10-101',NULL,NULL,20),('본사','3팀','여','010-1515-1414',NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NH농협','0101010-10-101',NULL,NULL,21),('본사','3팀','여','010-8585-1666',NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NH농협','0101010-10-101',NULL,NULL,22),('본사','1팀','남','010-8585-1666',NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'우리','0101010-10-101',NULL,NULL,23),('본사','1팀','여','010-8585-1666',NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'하나','32458-10-101',NULL,NULL,24),('본사','2팀','여','010-7951-8456',NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'하나','32458-10-101',NULL,NULL,25),('본사','1팀','여','010-8008-4654',NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'신한','45548-10-101',NULL,NULL,26),('본사','2팀','남','010-8008-4654',NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NH농협','120633-10-101',NULL,NULL,27);
/*!40000 ALTER TABLE `employee_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msg_info`
--

DROP TABLE IF EXISTS `msg_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `msg_info` (
  `msg_id` int NOT NULL AUTO_INCREMENT,
  `msg_send_id_fk` int NOT NULL,
  `msg_from_id_fk` int NOT NULL,
  `msg_subject` varchar(50) DEFAULT NULL,
  `msg_content` varchar(300) DEFAULT NULL,
  `msg_regdate` datetime DEFAULT NULL,
  `msg_confirm` char(1) DEFAULT 'N',
  `msg_send_del` char(1) DEFAULT 'N',
  `msg_from_del` char(1) DEFAULT 'N',
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msg_info`
--

LOCK TABLES `msg_info` WRITE;
/*!40000 ALTER TABLE `msg_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `msg_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_buy`
--

DROP TABLE IF EXISTS `order_buy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_buy` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `order_emp_team` varchar(10) NOT NULL,
  `order_emp_name` varchar(30) NOT NULL,
  `order_date` char(10) NOT NULL,
  `order_p_name` varchar(100) NOT NULL,
  `order_p_amount` int NOT NULL,
  `order_p_unit` varchar(5) NOT NULL,
  `order_p_buy` int NOT NULL,
  `order_total_price` int NOT NULL,
  `order_purpose` varchar(254) DEFAULT NULL,
  `order_doc_num` varchar(30) NOT NULL,
  `order_subject` varchar(20) NOT NULL,
  `order_confirm` char(1) DEFAULT 'N',
  `order_confirm_date` char(10) DEFAULT NULL,
  `order_sender` int NOT NULL,
  `order_receiver` int DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_buy`
--

LOCK TABLES `order_buy` WRITE;
/*!40000 ALTER TABLE `order_buy` DISABLE KEYS */;
INSERT INTO `order_buy` VALUES (1,'200','박과장','2020-12-08','휴대용 충전기',2,'EA',8000,16000,'기기 충전용','200_2020_12_buy','2020-12 경영과 구매요청서','N',NULL,2,5),(2,'800','하사원','2020-12-08','AMD CPU',4,'EA',350000,1400000,'부품 교체','800_2020_12_buy','2020-12 마케팅과 구매요청서','N',NULL,8,5),(3,'200','박과장','2020-12-11','아이리버 전자사전',3,'EA',700000,2100000,'업무용','200_2020_12_buy','2020-12 경영과 구매요청서','N',NULL,2,5),(4,'300','김대리','2020-12-20','탁상용시계',10,'EA',3000,30000,'업무용','300_2020_12_buy','2020-12 기획과 구매요청서','N',NULL,4,5),(5,'800','하사원','2020-12-20','탁상용시계',10,'EA',3000,30000,'업무용','800_2020_12_buy','2020-12 마케팅과 구매요청서','N',NULL,8,5),(6,'200','박과장','2020-12-28','맥북',1,'EA',2000000,2000000,'업무용','200_2020_12_buy','2020-12 경영과 구매요청서','N',NULL,2,5),(7,'200','박과장','2020-12-28','LG GRAM',1,'KG',2200000,2200000,'업무용','200_2020_12_buy','2020-12 경영과 구매요청서','N',NULL,2,5),(8,'200','박과장','2020-12-28','갤럭시S21',1,'EA',1500000,1500000,'업무용','200_2020_12_buy','2020-12 경영과 구매요청서','N',NULL,2,5),(9,'500','신사원','2020-12-28','AMD CPU',1,'EA',350000,350000,'업무용','500_2020_12_buy','2020-12 전산과 구매요청서','N',NULL,6,5),(10,'600','정상무','2020-12-29','하우젠 에어컨',1,'EA',5000000,5000000,'업무용','600_2020_12_buy','2020-12 지원과 구매요청서','N',NULL,7,5);
/*!40000 ALTER TABLE `order_buy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `position_code` char(2) DEFAULT NULL,
  `position_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES ('01','사원'),('02','주임'),('03','대리'),('04','과장'),('05','차장'),('06','부장'),('07','이사'),('08','상무'),('09','전무'),('10','부사장'),('11','사장'),('12','회장');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `process`
--

DROP TABLE IF EXISTS `process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `process` (
  `proc_id` int NOT NULL AUTO_INCREMENT,
  `proc_seq` int NOT NULL,
  `proc_name` varchar(50) NOT NULL,
  `proc_workers` int NOT NULL,
  `proc_working_time` int NOT NULL,
  `p_id_fk` int NOT NULL,
  `wc_id_fk` int NOT NULL,
  `emp_id_fk` int NOT NULL,
  PRIMARY KEY (`proc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process`
--

LOCK TABLES `process` WRITE;
/*!40000 ALTER TABLE `process` DISABLE KEYS */;
INSERT INTO `process` VALUES (1,1,'가공',2,4,12,1,4),(2,2,'조립',3,1,12,1,4),(3,3,'포장',3,1,12,1,4),(4,1,'세척',1,1,13,2,5),(5,2,'포장',3,1,13,2,5),(6,1,'코팅',3,4,14,3,6),(7,2,'포장',1,1,14,3,6),(8,1,'가공',2,5,15,4,7),(9,2,'포장',4,1,15,4,7),(10,1,'조립',5,2,16,5,8),(11,2,'포장',6,1,16,5,8),(12,1,'가공',2,4,17,1,4),(13,2,'조립',3,1,17,1,4),(14,3,'포장',3,1,17,1,4),(15,1,'세척',1,1,18,2,9),(16,2,'포장',3,1,18,2,9),(17,1,'코팅',3,4,19,3,2),(18,2,'포장',1,1,19,3,2),(19,1,'가공',2,5,20,4,6),(20,2,'조정',4,1,20,4,6),(21,3,'포장',5,2,20,5,6),(22,1,'세척',2,4,21,6,8),(23,2,'가공',3,1,21,6,8),(24,3,'조립',3,1,21,6,8),(25,4,'코팅',1,1,21,6,7),(26,5,'포장',3,1,21,6,7),(27,1,'조립',1,1,22,7,10),(28,2,'포장',1,1,22,7,10);
/*!40000 ALTER TABLE `process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `process_mtr`
--

DROP TABLE IF EXISTS `process_mtr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `process_mtr` (
  `pm_amount` int NOT NULL,
  `p_id_fk` int NOT NULL,
  `pm_id_fk` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process_mtr`
--

LOCK TABLES `process_mtr` WRITE;
/*!40000 ALTER TABLE `process_mtr` DISABLE KEYS */;
INSERT INTO `process_mtr` VALUES (4,12,1),(6,12,2),(7,12,3),(1,13,4),(2,14,5),(3,14,6),(5,15,7),(8,15,8),(11,16,9),(10,16,10),(9,16,11),(11,17,1),(12,18,2),(18,18,3),(100,19,4),(250,19,5),(25,20,6),(1,20,7),(23,20,8),(45,20,9),(11,21,10),(200,22,11);
/*!40000 ALTER TABLE `process_mtr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produce`
--

DROP TABLE IF EXISTS `produce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produce` (
  `prod_id` int NOT NULL AUTO_INCREMENT,
  `prod_doc_num_fk` varchar(30) NOT NULL,
  `prod_process1` char(1) DEFAULT NULL,
  `prod_process2` char(1) DEFAULT NULL,
  `prod_process3` char(1) DEFAULT NULL,
  `prod_process4` char(1) DEFAULT NULL,
  `prod_process5` char(1) DEFAULT NULL,
  `prod_process_name1` varchar(50) DEFAULT NULL,
  `prod_process_name2` varchar(50) DEFAULT NULL,
  `prod_process_name3` varchar(50) DEFAULT NULL,
  `prod_process_name4` varchar(50) DEFAULT NULL,
  `prod_process_name5` varchar(50) DEFAULT NULL,
  `prod_process_cnt` int NOT NULL,
  `prod_p_name` varchar(100) DEFAULT NULL,
  `prod_p_unit` varchar(5) DEFAULT NULL,
  `prod_p_amount` varchar(5) DEFAULT NULL,
  `prod_release` char(1) DEFAULT 'N',
  PRIMARY KEY (`prod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produce`
--

LOCK TABLES `produce` WRITE;
/*!40000 ALTER TABLE `produce` DISABLE KEYS */;
/*!40000 ALTER TABLE `produce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `p_id` int NOT NULL AUTO_INCREMENT,
  `p_type` char(1) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_code` varchar(20) NOT NULL,
  `p_brand` varchar(50) DEFAULT NULL,
  `p_group` char(2) NOT NULL,
  `p_modelnum` varchar(30) DEFAULT NULL,
  `p_unit` varchar(5) NOT NULL,
  `p_size` varchar(20) DEFAULT NULL,
  `p_currency` char(1) NOT NULL,
  `p_buy` int DEFAULT '0',
  `p_sell` int DEFAULT '0',
  `p_tax` int DEFAULT NULL,
  `p_taxuse` char(1) NOT NULL,
  `p_note` varchar(100) DEFAULT NULL,
  `account_id_fk` int NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'B','(GB1) 사각만능기판','B011','자사제품','01','TRE-03NB','EA','50x50','1',900,900,90,'Y','데스크탑 부품',1),(2,'B','LED-슈퍼고휘도(투명,빨강)','B012','자사제품','01','ST-99','EA','5파이','1',250,250,25,'Y','데스크탑 부품',1),(3,'B','LED-슈퍼고휘도(투명,파랑)','B013','자사제품','01','ST-98','EA','5파이','1',200,200,20,'Y','데스크탑 부품',1),(4,'B','LED-슈퍼고휘도(투명,노랑)','B014','자사제품','01','ST-97','EA','5파이','1',150,150,15,'Y','데스크탑 부품',1),(5,'B','브레드보드 EIC-301','B035','자사제품','03','FR100-01','KG','1','1',3900,3900,390,'Y','스마트폰 부품',2),(6,'B','T092','B036','자사제품','03','N454','EA','100mA','1',800,800,80,'Y','스마트폰 부품',2),(7,'B','T0220','B027','자사제품','02','N458','SET','1A','1',700,700,70,'Y','전자계산기 부품',3),(8,'B','T03','B028','자사제품','02','N466','KG','1.5A','1',1200,1200,120,'Y','전자계산기 부품',3),(9,'B','SMD','B029','자사제품','02','N955','EA','5V','1',4000,4000,400,'Y','시계용 부품',4),(10,'B','아답터-SMPS','B0210','자사제품','02','DC19V4','EA','4740mA','1',150000,150000,15000,'Y','블루투스 수신 부품',5),(11,'B','SMT-PCBA','B0211','자사제품','02','DIP-011','EA','3200mA','1',80000,80000,8000,'Y','드론 제어용 신호 수신기 부품',5),(12,'A','게임용 데스크탑 A형','A0112','DELL','01','GM-DESA001','EA','443*501*450','1',3000000,3000000,300000,'Y','주문시 사업자등록증 필수 첨부요망',6),(13,'A','게임용 데스크탑 B형','A0113','DELL','01','GM-DESB003','EA','463*820*500','1',3500000,3500000,350000,'Y','주문시 사업자등록증 필수 첨부요망',6),(14,'A','갤럭시 S21 베젤','A0314','삼성전자','03','SG21V001','EA','514*1110*606','1',75000,75000,7500,'Y','',7),(15,'A','갤럭시 S21 OLED 액정','A0315','삼성전자','03','SG21OLED001','EA','555*1400*585','1',230000,230000,23000,'Y','',7),(16,'A','갤럭시 S21 플러스 베젤','A0316','삼성전자','03','SGP21V001','EA','537*1605*604','1',95000,95000,9500,'Y','',8),(17,'A','갤럭시 S21  OLED 액정','A0317','삼성전자','03','SGP21OLED001','EA','555*1665*620','1',360000,360000,36000,'Y','',9),(18,'A','LG V6 기판','A0318','LG전자','03','LGV6T01101','EA','600*1690*665','1',23000,23000,2300,'Y','',1),(19,'A','LG V6 터치펜','A0319','LG전자','03','LGV6TP010','EA','780*1720*730','1',500,500,50,'Y','',2),(20,'A','탁상용 시계','A0420','다이소','04','CLK-DAISO010','EA','780*1800*730','1',1000,1000,100,'Y','',3),(21,'A','블루투스 마이크','A0221','금영','02','MIKE-0221B','EA','912*1785*927','1',18000,18000,1800,'Y','',4),(22,'A','블루투스 스피커','A0222','다이소','02','SPK-0222B','EA','590*965*606','1',8000,8000,800,'Y','',5),(23,'C','3D CAD용 워크스테이션','C0123','Xeon','01','P520c','EA','140W','1',2620000,2620000,262000,'Y','인텔 다중 랜포트/시리얼포트 추가 가능',4),(24,'C','3.0 화면 미니 스마트 폰','C0324','구글','03','2060896','EA','3.0Inch','1',151200,151200,15120,'Y','해외수입품',3),(25,'C','레트로 전자레인지 20L','C0225','쿠잉','02','MM-R20AW','EA','439*285*355','1',61900,61900,6190,'Y','당일발송',5),(26,'D','스테인레스 S행거 20개입','D0526','WHASHIN','05','4173313','SET','28*66','1',12900,12900,1290,'Y','20개입',10),(27,'D','PC카드링 대 10개입','D0527','WHASHIN','05','4173310','SET','19*53*94','1',4900,4900,490,'Y','21개입',10),(28,'D','언더라인S 형광펜 2종','D0528','언더라인 에스','05','4170743','SET','4mm','1',520,520,52,'Y','2개입',10),(29,'D','일회용 슬리퍼 실내화','D0529','NPL','05','4045157','EA','11*27','1',500,500,50,'Y','',10),(30,'D','다용도카트','D0530','천양사','05','3623435','EA','760x460x900mm','1',517300,517300,51730,'Y','높낮이조절가능 ',10),(31,'D','클리어화일 A4 40매','D0531','오피스존','05','3782495','SET','A4','1',1400,1400,140,'Y','40매',10),(32,'D','화일 2p 바인더 파일철','D0532','아이윙스','05','4152763','EA','A4','1',3390,3390,339,'Y','',10),(33,'D','라피끄블랙 발받침의자','D0533','CUSHY COCO','05','4028655','EA','950*600','1',63000,63000,6300,'Y','색상 : 블랙',10),(34,'D','라피끄화이트 발받침의자','D0534','CUSHY COCO','05','4028656','EA','950*600','1',63000,63000,6300,'Y','색상 : 화이트',10),(35,'D','라피끄그린 발받침의자','D0535','CUSHY COCO','05','4028657','EA','950*600','1',63000,63000,6300,'Y','색상 : 그린',10),(36,'D','라피끄레드 발받침의자','D0536','CUSHY COCO','05','4028658','EA','950*600','1',63000,63000,6300,'Y','색상 : 레드',10);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary` (
  `sform_id` int NOT NULL AUTO_INCREMENT,
  `salary_date` char(7) NOT NULL,
  `emp_id_fk` int NOT NULL,
  `emp_position_fk` char(2) NOT NULL,
  `emp_step_fk` int NOT NULL,
  `emp_headcheck_fk` int NOT NULL,
  `salary_overtime_pay` int NOT NULL,
  `salary_food` int NOT NULL,
  `salary_nontax_totalcost` int DEFAULT NULL,
  `salary_pay_fk` int DEFAULT NULL,
  `net_pay_fk` int DEFAULT NULL,
  `salary_nps_fk` int DEFAULT NULL,
  `salary_h_insurance_fk` int DEFAULT NULL,
  `salary_care_fk` int DEFAULT NULL,
  `salary_e_insurance_fk` int DEFAULT NULL,
  `salary_income_fk` int DEFAULT NULL,
  `salary_l_income_fk` int DEFAULT NULL,
  `salary_totalcost_fk` int DEFAULT NULL,
  PRIMARY KEY (`sform_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_base`
--

DROP TABLE IF EXISTS `salary_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary_base` (
  `salary_pay` int DEFAULT NULL,
  `position_code_fk` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_base`
--

LOCK TABLES `salary_base` WRITE;
/*!40000 ALTER TABLE `salary_base` DISABLE KEYS */;
INSERT INTO `salary_base` VALUES (2100000,'01'),(2300000,'02'),(2500000,'03'),(2700000,'04'),(2900000,'05'),(3100000,'06'),(3300000,'07'),(3500000,'08'),(3700000,'09'),(3900000,'10'),(4100000,'11'),(4300000,'12');
/*!40000 ALTER TABLE `salary_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_calculation`
--

DROP TABLE IF EXISTS `salary_calculation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary_calculation` (
  `salary_id` int NOT NULL AUTO_INCREMENT,
  `starting_range` int DEFAULT NULL,
  `end_range` int DEFAULT NULL,
  `net_pay` int DEFAULT NULL,
  `salary_nps` int DEFAULT NULL,
  `salary_h_insurance` int DEFAULT NULL,
  `salary_care` int DEFAULT NULL,
  `salary_e_insurance` int DEFAULT NULL,
  `salary_income` int DEFAULT NULL,
  `salary_l_income` int DEFAULT NULL,
  `salary_totalcost` int DEFAULT NULL,
  PRIMARY KEY (`salary_id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_calculation`
--

LOCK TABLES `salary_calculation` WRITE;
/*!40000 ALTER TABLE `salary_calculation` DISABLE KEYS */;
INSERT INTO `salary_calculation` VALUES (1,1000000,1100000,923500,40500,28080,2070,5850,0,0,76500),(2,1100000,1200000,1013810,45000,31200,2300,6500,1090,100,86190),(3,1200000,1300000,1103640,49500,34320,2530,7150,2600,260,96360),(4,1300000,1400000,1193480,54000,37440,2760,7800,4110,410,106520),(5,1400000,1500000,1282950,58500,40560,2990,8450,5960,590,117050),(6,1500000,1600000,1372040,63000,43680,3220,9100,8150,810,127960),(7,1600000,1700000,1461140,67500,46800,3450,9750,10330,1030,138860),(8,1700000,1800000,1550230,72000,49920,3680,10400,12520,1250,149770),(9,1800000,1900000,1639320,76500,53040,3910,11050,14710,1470,160680),(10,1900000,2000000,1728430,81000,56160,4140,11700,16890,1680,171570),(11,2000000,2100000,1817310,85500,59280,4370,12350,19270,1920,182690),(12,2100000,2200000,1905070,90000,62400,4600,13000,22670,2260,194930),(13,2200000,2300000,1992830,94500,65520,4830,13650,26070,2600,207170),(14,2300000,2400000,2080590,99000,68640,5060,14300,29470,2940,219410),(15,2400000,2500000,2166200,103500,71760,5290,14950,34820,3480,233800),(16,2500000,2600000,2248340,108000,74880,5520,15600,43330,4330,251660),(17,2600000,2700000,2330490,112500,78000,5750,16250,51830,5180,269510),(18,2700000,2800000,2412060,117000,81120,5980,16900,60860,6080,287940),(19,2800000,2900000,2490130,121500,84240,6210,17550,73070,7300,309870),(20,2900000,3000000,2567440,126000,87360,6440,18200,85970,8590,332560),(21,3000000,3100000,2656670,130500,90480,6670,18850,88030,8800,343330),(22,3100000,3200000,2736730,135000,93600,6900,19500,98430,9840,363270),(23,3200000,3300000,2814040,139500,96720,7130,20150,111330,11130,385960),(24,3300000,3400000,2891350,144000,99840,7360,20800,124230,12420,408650),(25,3400000,3500000,2968660,148500,102960,7590,21450,137130,13710,431340),(26,3500000,3600000,3045970,153000,106080,7820,22100,150030,15000,454030),(27,3600000,3700000,3123280,157500,109200,8050,22750,162930,16290,476720),(28,3700000,3800000,3200590,162000,112320,8280,23400,175830,17580,499410),(29,3800000,3900000,3277900,166500,115440,8510,24050,188730,18870,522100),(30,3900000,4000000,3349440,171000,118560,8740,24700,206880,20680,550560),(31,4000000,4100000,3425500,175500,121680,8970,25350,220910,22090,574500),(32,4100000,4200000,3501570,180000,124800,9210,26000,234930,23490,598430),(33,4200000,4300000,3577640,184500,127920,9440,26650,248960,24890,622360),(34,4300000,4400000,3653720,189000,131040,9670,27300,262980,26290,646280),(35,4400000,4500000,3729780,193500,134160,9900,27950,277010,27700,670220),(36,4500000,4600000,3805860,198000,137280,10130,28600,291030,29100,694140),(37,4600000,4700000,3881930,202500,140400,10360,29250,305060,30500,718070),(38,4700000,4800000,3955260,207000,143520,10590,29900,321580,32150,744740),(39,4800000,4900000,4031320,211500,146640,10820,30550,335610,33560,768680),(40,4900000,5000000,4107400,216000,149760,11050,31200,349630,34960,792600),(41,5000000,5100000,4183470,220500,152880,11280,31850,363660,36360,816530),(42,5100000,5200000,4259550,225000,156000,11510,32500,377680,37760,840450),(43,5200000,5300000,4335610,229500,159120,11740,33150,391710,39170,864390),(44,5300000,5400000,4411690,234000,162240,11970,33800,405730,40570,888310),(45,5400000,5500000,4487760,238500,165360,12200,34450,419760,41970,912240),(46,5500000,5600000,4562980,243000,168480,12430,35100,434560,43450,937020),(47,5600000,5700000,4629790,247500,171600,12660,35750,457000,45700,970210),(48,5700000,5800000,4696640,252000,174720,12890,36400,479410,47940,1003360),(49,5800000,5900000,4763510,256500,177840,13120,37050,501800,50180,1036490),(50,5900000,6000000,4830370,261000,180960,13350,37700,524200,52420,1069630),(51,6000000,6100000,4869760,265500,184080,13580,38350,571580,57150,1130240),(52,6100000,6200000,4936360,270000,187200,13810,39000,594210,59420,1163640),(53,6200000,6300000,5002970,274500,190320,14040,39650,616840,61680,1197030),(54,6300000,6400000,5069570,279000,193440,14270,40300,639480,63940,1230430),(55,6400000,6500000,5136170,283500,196560,14500,40950,662110,66210,1263830),(56,6500000,6600000,5202780,288000,199680,14730,41600,684740,68470,1297220),(57,6600000,6700000,5269390,292500,202800,14960,42250,707370,70730,1330610),(58,6700000,6800000,5335990,297000,205920,15190,42900,730000,73000,1364010),(59,6800000,6900000,5402600,301500,209040,15420,43550,752630,75260,1397400),(60,6900000,7000000,5469210,306000,212160,15650,44200,775260,77520,1430790),(61,7000000,7100000,5535820,310500,215280,15880,44850,797890,79780,1464180),(62,7100000,7200000,5602410,315000,218400,16110,45500,820530,82050,1497590),(63,7200000,7300000,5669020,319500,221520,16340,46150,843160,84310,1530980),(64,7300000,7400000,5735630,324000,224640,16570,46800,865790,86570,1564370),(65,7400000,7500000,5802230,328500,227760,16800,47450,888420,88840,1597770),(66,7500000,7600000,5868840,333000,230880,17030,48100,911050,91100,1631160),(67,7600000,7700000,5935450,337500,234000,17260,48750,933680,93360,1664550),(68,7700000,7800000,6002050,342000,237120,17490,49400,956310,95630,1697950),(69,7800000,7900000,6068650,346500,240240,17720,50050,978950,97890,1731350),(70,7900000,8000000,6135260,351000,243360,17950,50700,1001580,100150,1764740),(71,8000000,8100000,6201850,355500,246480,18190,51350,1024210,102420,1798150),(72,8100000,8200000,6268460,360000,249600,18420,52000,1046840,104680,1831540),(73,8200000,8300000,6335070,364500,252720,18650,52650,1069470,106940,1864930),(74,8300000,8400000,6401670,369000,255840,18880,53300,1092100,109210,1898330),(75,8400000,8500000,6468280,373500,258960,19110,53950,1114730,111470,1931720),(76,8500000,8600000,6534350,378000,262080,19340,54600,1137850,113780,1965650),(77,8600000,8700000,6600160,382500,265200,19570,55250,1161200,116120,1999840),(78,8700000,8800000,6665980,387000,268320,19800,55900,1184550,118450,2034020),(79,8800000,8900000,6731790,391500,271440,20030,56550,1207900,120790,2068210),(80,8900000,9000000,6797610,396000,274560,20260,57200,1231250,123120,2102390),(81,9000000,9100000,6863420,400500,277680,20490,57850,1254600,125460,2136580),(82,9100000,9200000,6929240,405000,280800,20720,58500,1277950,127790,2170760),(83,9200000,9300000,6985980,409500,283920,20950,59150,1309550,130950,2214020),(84,9300000,9400000,7040020,414000,287040,21180,59800,1343600,134360,2259980),(85,9400000,9500000,7094070,418500,290160,21410,60450,1377650,137760,2305930),(86,9500000,9600000,7148100,423000,293280,21640,61100,1411710,141170,2351900),(87,9600000,9700000,7202150,427500,296400,21870,61750,1445760,144570,2397850),(88,9700000,9800000,7256180,432000,299520,22100,62400,1479820,147980,2443820),(89,9800000,9900000,7310230,436500,302640,22330,63050,1513870,151380,2489770),(90,9900000,10000000,7364270,441000,305760,22560,63700,1547920,154790,2535730),(91,10000000,10100000,7418310,445500,308880,22790,64350,1581980,158190,2581690),(92,10100000,10200000,7353640,450000,312000,23020,65000,1723950,172390,2746360),(93,10200000,10300000,7407490,454500,315120,23250,65650,1758180,175810,2792510),(94,10300000,10400000,7461330,459000,318240,23480,66300,1792410,179240,2838670),(95,10400000,10500000,7515180,463500,321360,23710,66950,1826640,182660,2884820),(96,10500000,10600000,7569030,468000,324480,23940,67600,1860870,186080,2930970),(97,10600000,10700000,7622890,472500,327600,24170,68250,1895090,189500,2977110),(98,10700000,10800000,7676730,477000,330720,24400,68900,1929320,192930,3023270),(99,10800000,10900000,7730580,481500,333840,24630,69550,1963550,196350,3069420),(100,10900000,11000000,7784430,486000,336960,24860,70200,1997780,199770,3115570),(101,11000000,11100000,7838270,490500,340080,25090,70850,2032010,203200,3161730),(102,11100000,11200000,7892120,495000,343200,25320,71500,2066240,206620,3207880),(103,11200000,11300000,7945970,499500,346320,25550,72150,2100470,210040,3254030),(104,11300000,11400000,7999810,504000,349440,25780,72800,2134700,213470,3300190),(105,11400000,11500000,8053660,508500,352560,26010,73450,2168930,216890,3346340),(106,11500000,11600000,8107510,513000,355680,26240,74100,2203160,220310,3392490),(107,11600000,11700000,8161360,517500,358800,26470,74750,2237390,223730,3438640),(108,11700000,11800000,8215200,522000,361920,26700,75400,2271620,227160,3484800),(109,11800000,11900000,8269060,526500,365040,26930,76050,2305840,230580,3530940),(110,11900000,12000000,8322900,531000,368160,27170,76700,2340070,234000,3577100),(111,12000000,1999999999,8376740,535500,371280,27400,77350,2374300,237430,3623260);
/*!40000 ALTER TABLE `salary_calculation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacation`
--

DROP TABLE IF EXISTS `vacation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vacation` (
  `off_id` int NOT NULL AUTO_INCREMENT,
  `off_startDate` char(10) NOT NULL,
  `off_endDate` char(10) NOT NULL,
  `off_date` char(10) NOT NULL,
  `off_date_cnt` double NOT NULL,
  `off_type` char(1) NOT NULL,
  `off_confirm` char(1) DEFAULT 'N',
  `off_doc_num` varchar(30) DEFAULT NULL,
  `off_regdate` date DEFAULT NULL,
  `off_confirm_date` date DEFAULT NULL,
  `emp_id_fk` int NOT NULL,
  PRIMARY KEY (`off_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacation`
--

LOCK TABLES `vacation` WRITE;
/*!40000 ALTER TABLE `vacation` DISABLE KEYS */;
INSERT INTO `vacation` VALUES (1,'2020-12-28','2020-12-31','2020-12-28',4,'A','Y','VA2202012242020-12-28','2020-12-24','2020-12-24',2),(2,'2020-12-28','2020-12-31','2020-12-29',4,'A','Y','VA2202012242020-12-28','2020-12-24','2020-12-24',2),(3,'2020-12-28','2020-12-31','2020-12-30',4,'A','Y','VA2202012242020-12-28','2020-12-24','2020-12-24',2),(4,'2020-12-28','2020-12-31','2020-12-31',4,'A','Y','VA2202012242020-12-28','2020-12-24','2020-12-24',2),(5,'2021-01-07','2021-01-07','2021-01-07',1,'A','Y','VA22021132021-01-07','2021-01-03','2021-01-04',2),(6,'2021-01-21','2021-01-22','2021-01-21',2,'A','N','VA220211112021-01-21','2021-01-11',NULL,2),(7,'2021-01-21','2021-01-22','2021-01-22',2,'A','N','VA220211112021-01-21','2021-01-11',NULL,2),(8,'2021-01-14','2021-01-14','2021-01-14',0.5,'B','N','VB220211132021-01-14','2021-01-13',NULL,2),(9,'2021-01-27','2021-01-27','2021-01-27',0.25,'C','N','VC220211262021-01-27','2021-01-26',NULL,2),(10,'2021-01-04','2021-01-04','2021-01-04',1,'A','Y','VA14202012112021-01-04','2020-12-11','2020-12-12',14),(11,'2021-01-11','2021-01-13','2021-01-11',3,'A','Y','VA142021182021-01-11','2021-01-08','2021-01-08',14),(12,'2021-01-11','2021-01-13','2021-01-12',3,'A','Y','VA142021182021-01-11','2021-01-08','2021-01-08',14),(13,'2021-01-11','2021-01-13','2021-01-13',3,'A','Y','VA142021182021-01-11','2021-01-08','2021-01-08',14),(14,'2021-01-29','2021-01-29','2021-01-29',0.5,'B','N','VB1420211152021-01-29','2021-01-15',NULL,14),(15,'2021-01-06','2021-01-06','2021-01-06',1,'A','Y','VA162021142021-01-06','2021-01-04','2021-01-04',16),(16,'2021-01-12','2021-01-12','2021-01-12',0.25,'C','N','VC1620211112021-01-12','2021-01-11',NULL,16),(17,'2021-01-28','2021-01-28','2021-01-28',0.25,'C','N','VC1620211112021-01-28','2021-01-11',NULL,16),(18,'2021-01-08','2021-01-08','2021-01-08',1,'A','Y','VA172021142021-01-08','2021-01-04','2021-01-05',17),(19,'2021-01-12','2021-01-12','2021-01-12',0.5,'B','Y','VB1720211112021-01-12','2021-01-11','2021-01-11',17),(20,'2021-01-29','2021-01-29','2021-01-29',0.5,'B','N','VB1720211202021-01-29','2021-01-20',NULL,17),(21,'2021-01-04','2021-01-04','2021-01-04',1,'A','Y','VA4202012202021-01-04','2020-12-20','2020-12-21',4),(22,'2021-01-13','2021-01-13','2021-01-13',1,'A','Y','VA420211112021-01-13','2021-01-11','2021-01-11',4),(23,'2021-01-28','2021-01-28','2021-01-28',0.5,'B','N','VB420211262021-01-28','2021-01-26',NULL,4);
/*!40000 ALTER TABLE `vacation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workcenter`
--

DROP TABLE IF EXISTS `workcenter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workcenter` (
  `wc_id` int NOT NULL AUTO_INCREMENT,
  `wc_name` varchar(20) NOT NULL,
  `wc_usage` varchar(20) NOT NULL,
  `wc_area` int NOT NULL,
  `wc_floor` int NOT NULL,
  `wc_post` char(5) NOT NULL,
  `wc_address` varchar(100) NOT NULL,
  `wc_contractFromDate` char(10) NOT NULL,
  `wc_contractToDate` char(10) NOT NULL,
  `wc_contract` varchar(255) DEFAULT NULL,
  `emp_id_fk` int NOT NULL,
  PRIMARY KEY (`wc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workcenter`
--

LOCK TABLES `workcenter` WRITE;
/*!40000 ALTER TABLE `workcenter` DISABLE KEYS */;
INSERT INTO `workcenter` VALUES (1,'조립1공장','조립',330,5,'48509','부산광역시 남구 수영로358번길 12','2020-12-01','2030-12-01',NULL,1),(2,'조립2공장','조립',350,3,'48509','부산광역시 남구 수영로358번길 13','2020-12-01','2030-12-01',NULL,2),(3,'조립3공장','조립',336,1,'48509','부산광역시 남구 수영로358번길 14','2020-12-01','2030-12-01',NULL,3),(4,'조립4공장','조립',500,2,'48509','부산광역시 남구 수영로358번길 15','2020-12-01','2030-12-01',NULL,4),(5,'제조1공장','제조',800,2,'48509','부산광역시 남구 수영로358번길 16','2020-12-01','2030-12-01',NULL,5),(6,'제조2공장','제조',800,2,'48509','부산광역시 남구 수영로358번길 17','2020-12-01','2030-12-01',NULL,6),(7,'제조3공장','제조',800,4,'48509','부산광역시 남구 수영로358번길 18','2020-12-01','2030-12-01',NULL,7),(8,'패키징공장','패키징',1000,5,'48509','부산광역시 남구 수영로358번길 19','2020-12-01','2030-12-01',NULL,8),(9,'물류 1창고','물류 ',1500,3,'48509','부산광역시 남구 수영로358번길 20','2020-12-01','2030-12-01',NULL,9),(10,'물류 2창고','물류 ',1500,3,'48509','부산광역시 남구 수영로358번길 21','2020-12-01','2030-12-01',NULL,10),(11,'검수장','검수장',500,5,'48509','부산광역시 남구 수영로358번길 22','2020-12-01','2030-12-01',NULL,11),(12,'제조4공장','제조',330,5,'48509','부산광역시 남구 수영로358번길 12','2020-12-01','2030-12-01',NULL,1),(13,'제조5공장','제조',350,3,'48509','부산광역시 남구 수영로358번길 13','2020-12-01','2030-12-01',NULL,2),(14,'제조6공장','제조',336,1,'48509','부산광역시 남구 수영로358번길 14','2020-12-01','2030-12-01',NULL,3),(15,'조립5공장','조립',500,2,'48509','부산광역시 남구 수영로358번길 15','2020-12-01','2030-12-01',NULL,4),(16,'조립6공장','조립',800,2,'48509','부산광역시 남구 수영로358번길 16','2020-12-01','2030-12-01',NULL,5),(17,'조립7공장','조립',800,2,'48509','부산광역시 남구 수영로358번길 17','2020-12-01','2030-12-01',NULL,6),(18,'조립8공장','조립',800,4,'48509','부산광역시 남구 수영로358번길 18','2020-12-01','2030-12-01',NULL,7),(19,'패키징2공장','패키징',1000,5,'48509','부산광역시 남구 수영로358번길 19','2020-12-01','2030-12-01',NULL,8),(20,'물류 3창고','물류 ',1500,3,'48509','부산광역시 남구 수영로358번길 20','2020-12-01','2030-12-01',NULL,9),(21,'물류 4창고','물류 ',1500,3,'48509','부산광역시 남구 수영로358번길 21','2020-12-01','2030-12-01',NULL,10),(22,'물류 5창고','물류',500,5,'48509','부산광역시 남구 수영로358번길 22','2020-12-01','2030-12-01',NULL,11);
/*!40000 ALTER TABLE `workcenter` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-21 14:33:26
