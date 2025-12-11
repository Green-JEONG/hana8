-- MySQL dump 10.13  Distrib 9.5.0, for macos26.0 (arm64)
--
-- Host: 127.0.0.1    Database: testdb
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `Dept`
--

DROP TABLE IF EXISTS `Dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Dept` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `pid` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '상위부서id',
  `dname` varchar(31) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `captain` int unsigned DEFAULT NULL COMMENT '부사장',
  `empcnt` smallint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_Dept_captain_Emp` (`captain`),
  CONSTRAINT `dept_ibfk_1` FOREIGN KEY (`captain`) REFERENCES `Emp` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `dept_ibfk_2` FOREIGN KEY (`captain`) REFERENCES `Emp` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `dept_ibfk_3` FOREIGN KEY (`captain`) REFERENCES `Emp` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dept`
--

LOCK TABLES `Dept` WRITE;
/*!40000 ALTER TABLE `Dept` DISABLE KEYS */;
INSERT INTO `Dept` VALUES (1,0,'영업부',NULL,0),(2,0,'개발부',NULL,0),(3,1,'영업1팀',NULL,0),(4,1,'영업2팀',NULL,0),(5,1,'영업3팀',NULL,0),(6,2,'서버팀',NULL,0),(7,2,'클라이언트팀',NULL,0),(8,6,'인프라셀',NULL,0),(9,6,'DB셀',NULL,0),(10,7,'모바일셀',NULL,0),(11,3,'영업특공대',NULL,0);
/*!40000 ALTER TABLE `Dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EmailLog`
--

DROP TABLE IF EXISTS `EmailLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EmailLog` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `sender` int unsigned NOT NULL,
  `receivers` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmailLog`
--

LOCK TABLES `EmailLog` WRITE;
/*!40000 ALTER TABLE `EmailLog` DISABLE KEYS */;
INSERT INTO `EmailLog` VALUES (1,1,'Hong, Kim','test mail','test mail body');
/*!40000 ALTER TABLE `EmailLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Emp`
--

DROP TABLE IF EXISTS `Emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Emp` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ename` varchar(31) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept` tinyint unsigned NOT NULL,
  `salary` int NOT NULL DEFAULT '0',
  `outdt` date DEFAULT NULL COMMENT '퇴사일',
  `remark` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dept` (`dept`),
  KEY `idx_Emp_ename_dept` (`dept`,`ename`),
  CONSTRAINT `emp_ibfk_1` FOREIGN KEY (`dept`) REFERENCES `Dept` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Emp`
--

LOCK TABLES `Emp` WRITE;
/*!40000 ALTER TABLE `Emp` DISABLE KEYS */;
INSERT INTO `Emp` VALUES (2,'유세혜',4,300,NULL,'{\"id\": 2, \"age\": 30, \"fam\": [{\"id\": 1, \"name\": \"유세차\"}]}'),(3,'원사아',4,100,NULL,'{\"id\": 3, \"age\": 33, \"fam\": [{\"id\": 1, \"name\": \"유세차\"}, {\"id\": 2, \"name\": \"홍길숭\"}]}'),(4,'김태혜',5,700,NULL,'{\"id\": 4, \"age\": 34, \"fam\": [{\"id\": 1, \"name\": \"유세차\"}]}'),(5,'지세국',7,400,NULL,'{\"id\": 5, \"age\": 44, \"fam\": [{\"id\": 1, \"name\": \"지세차\"}, {\"id\": 2, \"name\": \"지세창\"}]}'),(6,'최가국',4,800,NULL,NULL),(7,'배파나',1,800,NULL,NULL),(8,'원성결',2,200,NULL,NULL),(9,'전바찬',6,900,NULL,NULL),(10,'지윤희',5,500,NULL,NULL),(11,'전차가',1,900,NULL,NULL),(12,'지호하',3,800,NULL,NULL),(13,'최종라',5,300,NULL,NULL),(14,'마마순',1,700,'2025-12-08',NULL),(15,'원자파',7,200,NULL,NULL),(16,'이결세',7,700,NULL,NULL),(17,'원호신',2,600,NULL,NULL),(18,'전국찬',3,900,NULL,NULL),(19,'방성찬',3,800,NULL,NULL),(20,'최희결',5,700,NULL,NULL),(21,'지찬파',2,600,NULL,NULL),(22,'최파지',4,100,NULL,NULL),(23,'마다윤',4,300,NULL,NULL),(24,'이윤파',6,600,NULL,NULL),(25,'전다윤',3,800,NULL,NULL),(26,'김나나',1,800,'2025-12-08',NULL),(27,'원호순',7,600,NULL,NULL),(28,'조국국',7,400,NULL,NULL),(29,'이윤바',1,300,NULL,NULL),(30,'김바순',2,800,NULL,NULL),(31,'방윤윤',6,600,NULL,NULL),(32,'방호지',4,900,NULL,NULL),(33,'최마호',1,500,NULL,NULL),(34,'전아가',3,600,NULL,NULL),(35,'원성태',6,600,NULL,NULL),(36,'마다라',3,900,NULL,NULL),(37,'지라파',3,200,NULL,NULL),(38,'김자나',3,300,NULL,NULL),(39,'전가순',2,400,NULL,NULL),(40,'유호가',6,400,NULL,NULL),(41,'방사자',6,400,NULL,NULL),(42,'마윤결',2,700,NULL,NULL),(43,'마마차',1,800,NULL,NULL),(44,'이찬가',4,100,NULL,NULL),(45,'유태파',5,500,NULL,NULL),(46,'유호다',4,200,NULL,NULL),(47,'이신희',6,900,NULL,NULL),(48,'천마라',7,200,NULL,NULL),(49,'이순아',4,600,NULL,NULL),(50,'최찬자',7,200,NULL,NULL),(51,'김바가',4,500,NULL,NULL),(52,'원가국',6,600,NULL,NULL),(53,'방가다',7,100,NULL,NULL),(54,'전순차',6,700,NULL,NULL),(55,'조종차',5,600,NULL,NULL),(56,'전호라',3,200,NULL,NULL),(57,'천호윤',4,500,NULL,NULL),(58,'마신혜',1,300,NULL,NULL),(59,'전세국',2,600,NULL,NULL),(60,'지호태',2,300,NULL,NULL),(61,'유혜태',4,700,NULL,NULL),(62,'천세찬',4,800,NULL,NULL),(63,'지바혜',3,200,NULL,NULL),(64,'천가차',1,800,NULL,NULL),(65,'배세사',2,800,NULL,NULL),(66,'방나하',6,200,NULL,NULL),(67,'최호태',1,800,NULL,NULL),(68,'마가혜',3,100,NULL,NULL),(69,'김성바',6,200,NULL,NULL),(70,'방혜국',5,600,NULL,NULL),(71,'이파파',4,300,NULL,NULL),(72,'지윤혜',7,100,NULL,NULL),(73,'박찬종',6,600,NULL,NULL),(74,'방혜윤',3,300,NULL,NULL),(75,'전호바',1,600,NULL,NULL),(76,'유희마',1,700,NULL,NULL),(77,'천성혜',7,500,NULL,NULL),(78,'김나라',3,800,NULL,NULL),(79,'최혜성',1,700,NULL,NULL),(80,'지종라',4,900,NULL,NULL),(81,'이바희',7,800,NULL,NULL),(82,'최은가',4,800,NULL,NULL),(83,'배자호',5,500,NULL,NULL),(84,'배사파',7,500,NULL,NULL),(85,'마성다',2,400,NULL,NULL),(86,'최국세',3,600,NULL,NULL),(87,'유다지',4,600,NULL,NULL),(88,'천결신',4,400,NULL,NULL),(89,'박태사',7,300,NULL,NULL),(90,'원파가',7,900,NULL,NULL),(91,'마순차',7,300,NULL,NULL),(92,'지호희',6,700,NULL,NULL),(93,'최가국',6,800,NULL,NULL),(94,'마성나',1,200,NULL,NULL),(95,'조하마',4,700,NULL,NULL),(96,'원바가',3,300,NULL,NULL),(97,'최신세',2,900,NULL,NULL),(98,'김은다',5,900,NULL,NULL),(99,'천라국',5,500,NULL,NULL),(100,'원신국',1,200,NULL,NULL),(101,'방국윤',5,300,NULL,NULL),(102,'박세찬',4,600,NULL,NULL),(103,'최종다',4,500,NULL,NULL),(104,'이신찬',4,900,NULL,NULL),(105,'원종마',6,900,NULL,NULL),(106,'최신호',6,200,NULL,NULL),(107,'지차찬',3,100,NULL,NULL),(108,'이나종',1,100,NULL,NULL),(109,'김결나',6,500,NULL,NULL),(110,'조파호',3,600,NULL,NULL),(111,'유신찬',5,200,NULL,NULL),(112,'원세태',1,200,NULL,NULL),(113,'방호혜',5,800,NULL,NULL),(114,'유마자',7,200,NULL,NULL),(115,'최순신',2,900,NULL,NULL),(116,'조윤혜',7,100,NULL,NULL),(117,'조호호',3,400,NULL,NULL),(118,'마세사',3,900,NULL,NULL),(119,'방결희',1,600,NULL,NULL),(120,'지국혜',1,300,NULL,NULL),(121,'박세결',3,100,NULL,NULL),(122,'조지혜',4,800,NULL,NULL),(123,'방은희',7,800,NULL,NULL),(124,'이성가',7,900,NULL,NULL),(125,'원지신',5,300,NULL,NULL),(126,'천윤아',3,600,NULL,NULL),(127,'원순지',1,400,NULL,NULL),(128,'이윤바',7,900,NULL,NULL),(129,'김신호',6,300,NULL,NULL),(130,'원혜호',2,600,NULL,NULL),(131,'천윤사',2,800,NULL,NULL),(132,'천희가',3,600,NULL,NULL),(133,'원결바',5,900,NULL,NULL),(134,'마성호',4,100,NULL,NULL),(135,'이성다',3,800,NULL,NULL),(136,'조사자',5,800,NULL,NULL),(137,'천찬혜',3,400,NULL,NULL),(138,'전지사',6,900,NULL,NULL),(139,'방자세',2,800,NULL,NULL),(140,'지아마',7,700,NULL,NULL),(141,'김찬마',2,500,NULL,NULL),(142,'방가사',7,500,NULL,NULL),(143,'배아순',7,400,NULL,NULL),(144,'최호희',6,200,NULL,NULL),(145,'최혜혜',4,400,NULL,NULL),(146,'유태차',3,200,NULL,NULL),(147,'원국은',1,700,NULL,NULL),(148,'조혜은',7,400,NULL,NULL),(149,'조가마',2,200,NULL,NULL),(150,'김찬라',7,300,NULL,NULL),(151,'최신세',2,900,NULL,NULL),(152,'박성종',1,900,NULL,NULL),(153,'지나국',6,600,NULL,NULL),(154,'마파결',1,500,NULL,NULL),(155,'조태국',5,200,NULL,NULL),(156,'방나차',3,600,NULL,NULL),(157,'김지희',3,500,NULL,NULL),(158,'유나순',5,100,NULL,NULL),(159,'조윤호',6,100,NULL,NULL),(160,'배다결',7,200,NULL,NULL),(161,'배희호',1,500,NULL,NULL),(162,'방호성',4,400,NULL,NULL),(163,'김세은',3,900,NULL,NULL),(164,'최성라',4,800,NULL,NULL),(165,'마신신',1,200,NULL,NULL),(166,'유윤사',2,800,NULL,NULL),(167,'전파자',3,200,NULL,NULL),(168,'박국다',3,300,NULL,NULL),(169,'김다바',5,200,NULL,NULL),(170,'원호신',6,700,NULL,NULL),(171,'김호파',5,500,NULL,NULL),(172,'방나자',2,900,NULL,NULL),(173,'박세자',4,300,NULL,NULL),(174,'원결바',4,500,NULL,NULL),(175,'김태신',5,300,NULL,NULL),(176,'최신신',2,700,NULL,NULL),(177,'배가하',5,300,NULL,NULL),(178,'지나다',2,200,NULL,NULL),(179,'박사파',7,500,NULL,NULL),(180,'천신아',4,300,NULL,NULL),(181,'이가세',1,900,NULL,NULL),(182,'방신다',4,100,NULL,NULL),(183,'방태가',6,700,NULL,NULL),(184,'박하아',7,500,NULL,NULL),(185,'천성가',7,700,NULL,NULL),(186,'이호라',3,400,NULL,NULL),(187,'천다종',1,600,NULL,NULL),(188,'이하결',7,700,NULL,NULL),(189,'이은호',7,400,NULL,NULL),(190,'이성다',3,800,NULL,NULL),(191,'이신신',1,200,NULL,NULL),(192,'마세가',2,100,NULL,NULL),(193,'원세순',7,700,NULL,NULL),(194,'원윤가',1,600,NULL,NULL),(195,'김세윤',6,900,NULL,NULL),(196,'최찬라',1,600,NULL,NULL),(197,'유호윤',7,400,NULL,NULL),(198,'박차호',5,700,NULL,NULL),(199,'마바순',2,800,NULL,NULL),(200,'방국가',1,200,NULL,NULL),(201,'최세마',1,300,NULL,NULL),(202,'조라종',6,500,NULL,NULL),(203,'이지마',4,700,NULL,NULL),(204,'김신호',6,300,NULL,NULL),(205,'김은다',6,200,NULL,NULL),(206,'마세혜',7,700,NULL,NULL),(207,'김하세',1,200,NULL,NULL),(208,'원순세',5,400,NULL,NULL),(209,'원마종',6,600,NULL,NULL),(210,'마사혜',2,200,NULL,NULL),(211,'박나신',5,300,NULL,NULL),(212,'전호사',6,100,NULL,NULL),(213,'지지호',2,400,NULL,NULL),(214,'천혜파',2,900,NULL,NULL),(215,'지사세',6,700,NULL,NULL),(216,'방나태',6,100,NULL,NULL),(217,'김지하',6,400,NULL,NULL),(218,'지찬태',3,300,NULL,NULL),(219,'조사나',4,800,NULL,NULL),(220,'지차순',6,800,NULL,NULL),(221,'지희태',3,300,NULL,NULL),(222,'이희나',5,800,NULL,NULL),(223,'배신마',7,900,NULL,NULL),(224,'배나희',3,900,NULL,NULL),(225,'마아세',4,800,NULL,NULL),(226,'전바신',2,900,NULL,NULL),(227,'박희윤',1,200,NULL,NULL),(228,'천결호',1,100,NULL,NULL),(229,'마사혜',2,200,NULL,NULL),(230,'최종바',6,300,NULL,NULL),(231,'원파가',1,200,NULL,NULL),(232,'지희결',5,200,NULL,NULL),(233,'김자마',6,200,NULL,NULL),(234,'방성세',1,900,NULL,NULL),(235,'마바성',6,600,NULL,NULL),(236,'천마마',2,200,NULL,NULL),(237,'최가세',6,100,NULL,NULL),(238,'김파희',3,200,NULL,NULL),(239,'마찬아',5,900,NULL,NULL),(240,'김세가',1,200,NULL,NULL),(241,'전차나',2,700,NULL,NULL),(242,'유희국',2,100,NULL,NULL),(243,'전희마',1,800,NULL,NULL),(244,'마호차',3,200,NULL,NULL),(245,'배태바',5,600,NULL,NULL),(246,'배나희',4,300,NULL,NULL),(247,'유은종',6,300,NULL,NULL),(248,'원세마',6,300,NULL,NULL),(249,'배마가',4,100,NULL,NULL),(250,'유결호',1,700,NULL,NULL),(251,'지태윤',4,100,NULL,NULL),(252,'배호가',7,600,NULL,NULL);
/*!40000 ALTER TABLE `Emp` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `tr_dept_after_insert` BEFORE INSERT ON `emp` FOR EACH ROW update Dept set empcnt = empcnt + 1
   where id = NEW.dept */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `tr_emp_after_update` AFTER UPDATE ON `emp` FOR EACH ROW begin
	IF NEW.dept <> OLD.dept THEN
		update Dept set empcnt = empcnt + if(id = NEW.dept, 1, -1)
         where id in (NEW.dept, OLD.dept);
	END IF;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `tr_dept_after_delete` BEFORE DELETE ON `emp` FOR EACH ROW update Dept set empcnt = empcnt - 1
   where id = OLD.dept */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Notice`
--

DROP TABLE IF EXISTS `Notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Notice` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '작성일',
  `workdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제목',
  `writer` int unsigned DEFAULT NULL COMMENT '작성자',
  `contents` text COLLATE utf8mb4_unicode_ci COMMENT '내용',
  PRIMARY KEY (`id`),
  KEY `fk_Notice_writer` (`writer`),
  FULLTEXT KEY `ft_idx_Notice_title_contents` (`title`,`contents`),
  CONSTRAINT `fk_Notice_writer` FOREIGN KEY (`writer`) REFERENCES `Emp` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Notice`
--

LOCK TABLES `Notice` WRITE;
/*!40000 ALTER TABLE `Notice` DISABLE KEYS */;
INSERT INTO `Notice` VALUES (1,'2025-12-10 01:22:30','2025-12-10 01:22:30','세종대왕',NULL,'조선의 제4대 국왕이다.'),(2,'2025-12-10 01:22:30','2025-12-10 01:22:30','단군',NULL,'단군왕검(檀君王儉)은 한민족의 시조이자 고조선(古朝鮮)의 국조(國祖), 대종교의 시작.'),(3,'2025-12-10 01:22:30','2025-12-10 01:22:30','정약용',NULL,'조선 후기의 문신이자 실학자·저술가·시인·철학자·과학자·공학자이다.'),(4,'2025-12-10 01:22:30','2025-12-10 01:22:30','계백',NULL,'백제 말기의 군인이다.'),(5,'2025-12-10 01:22:30','2025-12-10 01:22:30','이순신',NULL,'조선 중기의 무신이었다. 본관은 덕수(德水), 자는 여해(汝諧), 시호는 충무(忠武).'),(6,'2025-12-10 01:22:30','2025-12-10 01:22:30','김유신',NULL,'신라의 화랑의 우두머리였으며 태대각간(太大角干)이었고 신라에 귀순한 가야 왕족의 후손.');
/*!40000 ALTER TABLE `Notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StopWord`
--

DROP TABLE IF EXISTS `StopWord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `StopWord` (
  `value` varchar(31) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StopWord`
--

LOCK TABLES `StopWord` WRITE;
/*!40000 ALTER TABLE `StopWord` DISABLE KEYS */;
/*!40000 ALTER TABLE `StopWord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T`
--

DROP TABLE IF EXISTS `T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` enum('A','B','C','D','F') COLLATE utf8mb4_unicode_ci DEFAULT 'F' COMMENT '학점',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T`
--

LOCK TABLES `T` WRITE;
/*!40000 ALTER TABLE `T` DISABLE KEYS */;
INSERT INTO `T` VALUES (1,'Hong','A'),(2,'Kim','B'),(3,'Lee','C'),(4,'Park','F'),(5,'Choi','F'),(6,'Han','D');
/*!40000 ALTER TABLE `T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TestEmp`
--

DROP TABLE IF EXISTS `TestEmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TestEmp` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ename` varchar(31) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept` tinyint unsigned NOT NULL,
  `salary` int NOT NULL DEFAULT '0',
  `outdt` date DEFAULT NULL COMMENT '퇴사일',
  `remark` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dept` (`dept`),
  KEY `idx_Emp_ename_dept` (`dept`,`ename`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50100 PARTITION BY RANGE (`id`)
(PARTITION p1 VALUES LESS THAN (100) ENGINE = InnoDB,
 PARTITION p3 VALUES LESS THAN (200) ENGINE = InnoDB,
 PARTITION p4 VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TestEmp`
--

LOCK TABLES `TestEmp` WRITE;
/*!40000 ALTER TABLE `TestEmp` DISABLE KEYS */;
INSERT INTO `TestEmp` VALUES (2,'유세혜',4,300,NULL,'{\"id\": 2, \"age\": 30, \"fam\": [{\"id\": 1, \"name\": \"유세차\"}]}'),(3,'원사아',4,100,NULL,'{\"id\": 3, \"age\": 33, \"fam\": [{\"id\": 1, \"name\": \"유세차\"}, {\"id\": 2, \"name\": \"홍길숭\"}]}'),(4,'김태혜',5,700,NULL,'{\"id\": 4, \"age\": 34, \"fam\": [{\"id\": 1, \"name\": \"유세차\"}]}'),(5,'지세국',7,400,NULL,'{\"id\": 5, \"age\": 44, \"fam\": [{\"id\": 1, \"name\": \"지세차\"}, {\"id\": 2, \"name\": \"지세창\"}]}'),(6,'최가국',4,800,NULL,NULL),(7,'배파나',1,800,NULL,NULL),(8,'원성결',2,200,NULL,NULL),(9,'전바찬',6,900,NULL,NULL),(10,'지윤희',5,500,NULL,NULL),(11,'전차가',1,900,NULL,NULL),(12,'지호하',3,800,NULL,NULL),(13,'최종라',5,300,NULL,NULL),(14,'마마순',1,700,'2025-12-08',NULL),(15,'원자파',7,200,NULL,NULL),(16,'이결세',7,700,NULL,NULL),(17,'원호신',2,600,NULL,NULL),(18,'전국찬',3,900,NULL,NULL),(19,'방성찬',3,800,NULL,NULL),(20,'최희결',5,700,NULL,NULL),(21,'지찬파',2,600,NULL,NULL),(22,'최파지',4,100,NULL,NULL),(23,'마다윤',4,300,NULL,NULL),(24,'이윤파',6,600,NULL,NULL),(25,'전다윤',3,800,NULL,NULL),(26,'김나나',1,800,'2025-12-08',NULL),(27,'원호순',7,600,NULL,NULL),(28,'조국국',7,400,NULL,NULL),(29,'이윤바',1,300,NULL,NULL),(30,'김바순',2,800,NULL,NULL),(31,'방윤윤',6,600,NULL,NULL),(32,'방호지',4,900,NULL,NULL),(33,'최마호',1,500,NULL,NULL),(34,'전아가',3,600,NULL,NULL),(35,'원성태',6,600,NULL,NULL),(36,'마다라',3,900,NULL,NULL),(37,'지라파',3,200,NULL,NULL),(38,'김자나',3,300,NULL,NULL),(39,'전가순',2,400,NULL,NULL),(40,'유호가',6,400,NULL,NULL),(41,'방사자',6,400,NULL,NULL),(42,'마윤결',2,700,NULL,NULL),(43,'마마차',1,800,NULL,NULL),(44,'이찬가',4,100,NULL,NULL),(45,'유태파',5,500,NULL,NULL),(46,'유호다',4,200,NULL,NULL),(47,'이신희',6,900,NULL,NULL),(48,'천마라',7,200,NULL,NULL),(49,'이순아',4,600,NULL,NULL),(50,'최찬자',7,200,NULL,NULL),(51,'김바가',4,500,NULL,NULL),(52,'원가국',6,600,NULL,NULL),(53,'방가다',7,100,NULL,NULL),(54,'전순차',6,700,NULL,NULL),(55,'조종차',5,600,NULL,NULL),(56,'전호라',3,200,NULL,NULL),(57,'천호윤',4,500,NULL,NULL),(58,'마신혜',1,300,NULL,NULL),(59,'전세국',2,600,NULL,NULL),(60,'지호태',2,300,NULL,NULL),(61,'유혜태',4,700,NULL,NULL),(62,'천세찬',4,800,NULL,NULL),(63,'지바혜',3,200,NULL,NULL),(64,'천가차',1,800,NULL,NULL),(65,'배세사',2,800,NULL,NULL),(66,'방나하',6,200,NULL,NULL),(67,'최호태',1,800,NULL,NULL),(68,'마가혜',3,100,NULL,NULL),(69,'김성바',6,200,NULL,NULL),(70,'방혜국',5,600,NULL,NULL),(71,'이파파',4,300,NULL,NULL),(72,'지윤혜',7,100,NULL,NULL),(73,'박찬종',6,600,NULL,NULL),(74,'방혜윤',3,300,NULL,NULL),(75,'전호바',1,600,NULL,NULL),(76,'유희마',1,700,NULL,NULL),(77,'천성혜',7,500,NULL,NULL),(78,'김나라',3,800,NULL,NULL),(79,'최혜성',1,700,NULL,NULL),(80,'지종라',4,900,NULL,NULL),(81,'이바희',7,800,NULL,NULL),(82,'최은가',4,800,NULL,NULL),(83,'배자호',5,500,NULL,NULL),(84,'배사파',7,500,NULL,NULL),(85,'마성다',2,400,NULL,NULL),(86,'최국세',3,600,NULL,NULL),(87,'유다지',4,600,NULL,NULL),(88,'천결신',4,400,NULL,NULL),(89,'박태사',7,300,NULL,NULL),(90,'원파가',7,900,NULL,NULL),(91,'마순차',7,300,NULL,NULL),(92,'지호희',6,700,NULL,NULL),(93,'최가국',6,800,NULL,NULL),(94,'마성나',1,200,NULL,NULL),(95,'조하마',4,700,NULL,NULL),(96,'원바가',3,300,NULL,NULL),(97,'최신세',2,900,NULL,NULL),(98,'김은다',5,900,NULL,NULL),(99,'천라국',5,500,NULL,NULL),(150,'김찬라',1,200,NULL,NULL),(200,'방국가',1,200,NULL,NULL),(201,'최세마',1,300,NULL,NULL),(202,'조라종',6,500,NULL,NULL),(203,'이지마',4,700,NULL,NULL),(204,'김신호',6,300,NULL,NULL),(205,'김은다',6,200,NULL,NULL),(206,'마세혜',7,700,NULL,NULL),(207,'김하세',1,200,NULL,NULL),(208,'원순세',5,400,NULL,NULL),(209,'원마종',6,600,NULL,NULL),(210,'마사혜',2,200,NULL,NULL),(211,'박나신',5,300,NULL,NULL),(212,'전호사',6,100,NULL,NULL),(213,'지지호',2,400,NULL,NULL),(214,'천혜파',2,900,NULL,NULL),(215,'지사세',6,700,NULL,NULL),(216,'방나태',6,100,NULL,NULL),(217,'김지하',6,400,NULL,NULL),(218,'지찬태',3,300,NULL,NULL),(219,'조사나',4,800,NULL,NULL),(220,'지차순',6,800,NULL,NULL),(221,'지희태',3,300,NULL,NULL),(222,'이희나',5,800,NULL,NULL),(223,'배신마',7,900,NULL,NULL),(224,'배나희',3,900,NULL,NULL),(225,'마아세',4,800,NULL,NULL),(226,'전바신',2,900,NULL,NULL),(227,'박희윤',1,200,NULL,NULL),(228,'천결호',1,100,NULL,NULL),(229,'마사혜',2,200,NULL,NULL),(230,'최종바',6,300,NULL,NULL),(231,'원파가',1,200,NULL,NULL),(232,'지희결',5,200,NULL,NULL),(233,'김자마',6,200,NULL,NULL),(234,'방성세',1,900,NULL,NULL),(235,'마바성',6,600,NULL,NULL),(236,'천마마',2,200,NULL,NULL),(237,'최가세',6,100,NULL,NULL),(238,'김파희',3,200,NULL,NULL),(239,'마찬아',5,900,NULL,NULL),(240,'김세가',1,200,NULL,NULL),(241,'전차나',2,700,NULL,NULL),(242,'유희국',2,100,NULL,NULL),(243,'전희마',1,800,NULL,NULL),(244,'마호차',3,200,NULL,NULL),(245,'배태바',5,600,NULL,NULL),(246,'배나희',4,300,NULL,NULL),(247,'유은종',6,300,NULL,NULL),(248,'원세마',6,300,NULL,NULL),(249,'배마가',4,100,NULL,NULL),(250,'유결호',1,700,NULL,NULL),(251,'지태윤',4,100,NULL,NULL),(252,'배호가',7,600,NULL,NULL);
/*!40000 ALTER TABLE `TestEmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_dept`
--

DROP TABLE IF EXISTS `v_dept`;
/*!50001 DROP VIEW IF EXISTS `v_dept`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_dept` AS SELECT 
 1 AS `id`,
 1 AS `pid`,
 1 AS `dname`,
 1 AS `captain`,
 1 AS `ename`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'testdb'
--
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 8.0.44.
--
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 8.0.44.
--
/*!50003 DROP FUNCTION IF EXISTS `f_empinfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `f_empinfo`(_empid int unsigned) RETURNS varchar(100) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci
BEGIN
	declare v_result varchar(100) default '없는 직원';
    
	select concat(e.ename, '(', d.dname, ')') into v_result
	  from Emp e inner join Dept d on e.dept = d.id
	 where id = _empid;
     
RETURN v_result;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 8.0.44.
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_depts_by_cursor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_depts_by_cursor`()
BEGIN
	Declare v_deptid smallint unsigned;
    Declare v_dname varchar(31);
    Declare v_captain int unsigned;
    Declare v_minsal int unsigned;
    Declare v_minsalcnt smallint unsigned;
    Declare v_captainName varchar(31);
    Declare v_captainSal int unsigned;
    
	Declare _done boolean default False;
	Declare _cur CURSOR FOR
		select id, dname, captain from Dept;
        
	Declare Continue Handler
		For Not Found SET _done := True;
        
	drop table if exists Tmp;
    
	create temporary table Tmp(
		deptid smallint unsigned,
        dname varchar(31),
        minsal int,
        maxsalcnt smallint,
        captainName varchar(31),
        captainSal int
    );
        
	OPEN _cur;
	cur_loop: LOOP
		Fetch _cur into v_deptid, v_dname, v_captain;
		IF _done THEN
			LEAVE cur_loop;
		END IF;
        
        select min(salary) into v_minsal from Emp where dept = v_deptid;
        select count(*) into v_minsalcnt from Emp where dept = v_deptid and salary = v_minsal;
        
        IF v_captain > 0 THEN
			select ename, salary into v_captainName, v_captainSal
			  from Emp where id = v_captain;
		ELSE
			select v_captainName = '', v_captainSal = 0;
        END IF;
		
        insert into Tmp(deptid, dname, minsal, minsalcnt, captainName, captainSal)
				 values(v_deptid, v_dname, v_minsal, v_minsalcnt, v_captainName, v_captainSal);
                 
	END LOOP cur_loop;
	CLOSE _cur;
    
	select * from Tmp;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 8.0.44.
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_emps_by_deptid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_emps_by_deptid`(_dept smallint unsigned)
LBL:BEGIN
	IF _dept <= 0 THEN
		leave LBL;
	END IF;
    
	select e1.*, d.dname, ifnull(e2.ename, '공석') captain_name
      from Emp e1 inner join Dept d on e1.dept = d.id
			   left outer join Emp e2 on d.captain = e2.id
	 where e1.dept = _dept
       and e1.outdt is null;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `v_dept`
--

/*!50001 DROP VIEW IF EXISTS `v_dept`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_dept` AS select `d`.`id` AS `id`,`d`.`pid` AS `pid`,`d`.`dname` AS `dname`,`d`.`captain` AS `captain`,`e`.`ename` AS `ename` from (`dept` `d` left join `emp` `e` on((`d`.`captain` = `e`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10 14:00:39
