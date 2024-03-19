-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: demo
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` date DEFAULT NULL,
  `title` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
INSERT INTO `exam` VALUES (1,'2024-03-19','AAA'),(2,'2024-03-19','VVV'),(3,'2024-03-19','TEST'),(4,'2024-03-19','QQQ'),(5,'2024-03-19','测试'),(6,'2024-03-19','组卷1');
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_material`
--

DROP TABLE IF EXISTS `exam_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam_material` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `exam_id` bigint NOT NULL,
  `material_id` bigint NOT NULL,
  `type` varchar(50) NOT NULL,
  `sort_num` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_material`
--

LOCK TABLES `exam_material` WRITE;
/*!40000 ALTER TABLE `exam_material` DISABLE KEYS */;
INSERT INTO `exam_material` VALUES (1,2,17,'reading',0),(2,2,40,'listening',1),(3,3,23,'reading',0),(4,3,4,'writing',1),(5,3,40,'listening',2),(6,3,47,'listening',3),(7,4,58,'listening',0),(8,5,37,'reading',0),(9,5,58,'listening',1),(10,5,3,'writing',2),(11,6,38,'reading',0),(12,6,60,'listening',1),(13,6,5,'writing',2);
/*!40000 ALTER TABLE `exam_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listening`
--

DROP TABLE IF EXISTS `listening`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listening` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `create_time` date DEFAULT NULL,
  `audio_path` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listening`
--

LOCK TABLES `listening` WRITE;
/*!40000 ALTER TABLE `listening` DISABLE KEYS */;
INSERT INTO `listening` VALUES (28,'111','2024-03-16','1_lttt9i7d.mp3'),(29,'1111','2024-03-16','QQ空间视频_20220602233636_lttte2oo.mp3'),(30,'TEST','2024-03-16','1_ltu6dqlf.mp3'),(31,'111','2024-03-17','1_ltvo5qxw.mp3'),(35,'AAAA','2024-03-18','1_ltws2szd.mp3'),(36,'AAAA','2024-03-18','1_ltws5njr.mp3'),(37,'AAA','2024-03-18','1_ltwsn31b.mp3'),(38,'啊啊啊啊','2024-03-18','1_ltwsz8is.mp3'),(39,'啊啊啊啊啊','2024-03-18','1_ltwuas0u.mp3'),(40,'THIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TEST','2024-03-18','1_ltwxc661.mp3'),(41,'THIS','2024-03-18','1_ltwxdij9.mp3'),(42,'111','2024-03-18','1_ltx2i45v.mp3'),(43,'111','2024-03-18','1_ltx2k0y5.mp3'),(44,'3333333333333','2024-03-18','1_ltx3m1r8.mp3'),(46,'111','2024-03-18','1_ltx4c9ay.mp3'),(47,'Bird Migration Theory','2024-03-19','1_ltxnp1hu.mp3'),(48,'Bird Migration Theory','2024-03-19','1_ltxnrg51.mp3'),(49,'1111','2024-03-19','1_ltxnv2fp.mp3'),(50,'11','2024-03-19','1_ltxnyre5.mp3'),(51,'44','2024-03-19','1_ltxnztn7.mp3'),(52,'33','2024-03-19','1_ltxo2ell.mp3'),(53,'DD','2024-03-19','1_ltxof8gc.mp3'),(54,'发发发','2024-03-19','1_ltxomnzg.mp3'),(55,'333','2024-03-19','1_ltxone1d.mp3'),(56,'DDD','2024-03-19','1_ltxor2ms.mp3'),(57,'111','2024-03-19','1_ltxpb2jl.mp3'),(58,'111','2024-03-19','1_ltxrboe5.mp3'),(60,'组卷1','2024-03-19','1_ltyaxjfn.mp3');
/*!40000 ALTER TABLE `listening` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listening_blank`
--

DROP TABLE IF EXISTS `listening_blank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listening_blank` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `listening_id` bigint NOT NULL,
  `content` text,
  `answer` varchar(300) DEFAULT NULL,
  `sort_num` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listening_blank`
--

LOCK TABLES `listening_blank` WRITE;
/*!40000 ALTER TABLE `listening_blank` DISABLE KEYS */;
INSERT INTO `listening_blank` VALUES (94,29,'','111',0),(99,28,'','111',0),(100,30,'TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST','TEST',0),(101,30,'TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST','TEST',0),(102,30,'TEST TEST TEST TEST TEST TEST TEST TEST','TEST',0),(103,30,'TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST','TEST',0),(104,30,'TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST',NULL,0),(105,31,'1.AAA','BBB',0),(106,31,'CCC DDD\n2.AAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC','CCCAAA',0),(107,31,'','CCCAAA',0),(108,31,'CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCC',NULL,0),(114,35,'AAAA\n BBB\n','CCC',0),(115,35,'DDD\n EEE\n','FFF',0),(116,36,'','AAA\n',0),(117,36,'','BBB\n',0),(118,36,'CCC\n DDD\n EEE\n','FFF',0),(119,37,'','AAAA',0),(120,37,'BBBB\n','CCCC',0),(121,37,'','DDDD\n',0),(122,37,'EEEE','FFFF\n',0),(123,37,'',NULL,0),(124,38,'','AAA',0),(125,38,'BBB\n','CCC',0),(126,38,'','DDD\n',0),(127,38,'EEE','FFF',0),(128,39,'AAA','BBB',0),(129,39,'CCC DDD\n','AAA',0),(130,39,'','BBB',0),(131,39,'','CCC\n',0),(132,39,'AAA','BBB\n',0),(133,39,'','AAA\n',0),(134,39,'',NULL,0),(149,40,'THIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TEST\n THIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TEST\n THIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TEST\n THIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TEST\n THIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A','TEST\n',0),(150,40,'','THIS',0),(151,40,'','IS',0),(152,40,'A TESTTHIS IS A','TESTTHIS',0),(153,40,'IS A TESTTHIS IS','A',0),(154,40,'','TEST',0),(155,40,'','IS',0),(156,40,'A','TESTTHIS',0),(157,40,'IS A TESTTHIS IS A TESTTHIS IS A TEST\n THIS','IS',0),(158,40,'','A',0),(159,40,'TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TEST\n THIS IS A TESTTHIS IS A','TESTTHIS',0),(160,40,'IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TEST\n','THIS',0),(161,40,'IS A','TESTTHIS',0),(162,40,'IS A TESTTHIS IS A TESTTHIS IS A TEST\n THIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS A TEST\n THIS IS A TESTTHIS IS A TESTTHIS IS A TESTTHIS IS','A',0),(163,40,'','TEST',0),(164,41,'THISTHISTHISTHISTHISTHISTHISTHISTHISTHIS THIS THIS THIS THIS THISTHISTHISTHISTHISTHISTHISTHISTHISTHISTHIS THIS THIS THIS THIS THISTHISTHISTHISTHISTHISTHISTHISTHISTHISTHIS THIS THIS THIS THIS THISTHISTHISTHISTHISTHISTHISTHISTHISTHISTHIS THIS THIS THIS THIS THISTHISTHISTHISTHISTHISTHISTHISTHISTHISTHIS THIS THIS THIS THIS THISTHISTHISTHISTHISTHISTHISTHISTHISTHISTHIS THIS THIS THIS THIS THISTHISTHISTHISTHISTHISTHISTHISTHISTHISTHIS THIS THIS THIS THIS THISTHISTHISTHISTHISTHISTHISTHISTHISTHISTHIS THIS THIS THIS THIS THIS\n THISTHISTHISTHISTHISTHISTHISTHISTHISTHIS THIS THIS THIS THIS THISTHISTHISTHISTHISTHISTHISTHISTHISTHISTHIS THIS THIS THIS THIS THISTHISTHISTHISTHISTHISTHISTHISTHISTHISTHIS THIS THIS THIS THIS THIS\n THISTHISTHISTHISTHISTHISTHISTHISTHISTHIS THIS THIS THIS THIS','THISTHISTHISTHISTHISTHISTHISTHISTHISTHISTHIS',0),(165,41,'THIS THIS THIS THIS THISTHISTHISTHISTHISTHISTHISTHISTHISTHISTHIS THIS THIS THIS THIS THIS',NULL,0),(168,46,'1111','12是的',0),(169,46,'SAD AS SDA',NULL,-1),(170,47,'ost birds are believed to migrate seasonally.\n Hibernation theory\n • It was believed that birds hibernated underwater or buried themselves in \n 31\n \n • This theory was later disproved by experiments on caged birds.\n Transmutation theory\n • Aristotle believed birds changed from one species into another in summer and winter.\n    – In autumn he observed that redstarts experience the loss of \n 32\n  and \n        thought they then turned into robins.\n    – Aristotle’s assumptions were logical because the two species of birds had a similar \n       \n','33\n',0),(171,47,' .\n 17th century\n • Charles Morton popularised the idea that birds fly to the \n','34\n',1),(172,47,' in winter.\n Scientific developments\n • In 1822, a stork was killed in Germany which had an African spear in its \n','35\n',2),(173,47,' \n    – previously there had been no \n','36\n',3),(174,47,' that storks migrate to Africa\n • Little was known about the \n','37\n',4),(175,47,'','31\n',5),(176,47,'\n • This theory was later disproved by experiments on caged birds.\n Transmutation theory\n • Aristotle believed birds changed from one species into another in summer and winter.\n    – In autumn he observed that redstarts experience the loss of \n 32\n  and \n        thought they then turned into robins.\n    – Aristotle’s assumptions were logical because the two species of birds had a similar \n       \n 33\n  .\n 17th century\n • Charles Morton popularised the idea that birds fly to the \n 34\n  in winter.\n Scientific developments\n • In 1822, a stork was killed in Germany which had an African spear in its \n 35\n  \n    – previously there had been no \n 36\n  that storks migrate to Africa\n • Little was known about the \n 37\n  and journeys of migrating birds until the \n    practice of ringing was established.\n    – It was thought large birds carried small birds on some journeys because they were \n       considered incapable of travelling across huge \n','38\n',6),(177,47,' . \n    – Ringing depended on what is called the ‘\n','39\n',7),(178,47,'’ of dead birds.\n • In 1931, the first \n','40\n',8),(179,47,'','32\n',9),(180,47,' and \n        thought they then turned into robins.\n    – Aristotle’s assumptions were logical because the two species of birds had a similar \n       \n 33\n  .\n 17th century\n • Charles Morton popularised the idea that birds fly to the \n 34\n  in winter.\n Scientific developments\n • In 1822, a stork was killed in Germany which had an African spear in its \n 35\n  \n    – previously there had been no \n 36\n  that storks migrate to Africa\n • Little was known about the \n 37\n  and journeys of migrating birds until the \n    practice of ringing was established.\n    – It was thought large birds carried small birds on some journeys because they were \n       considered incapable of travelling across huge \n 38\n  . \n    – Ringing depended on what is called the ‘\n 39\n ’ of dead birds.\n • In 1931, the first \n 40\n  to show the migration of European birds was printed.',NULL,-1),(181,48,'Bird Migration Theoryost birds are believed to migrate seasonally.\n Hibernation theory\n • It was believed that birds hibernated underwater or buried themselves in \n 31\n \n • This theory was later disproved by experiments on caged birds.\n Transmutation theory\n • Aristotle believed birds changed from one species into another in summer and winter.\n    – In autumn he observed that redstarts experience the loss of \n 32\n  and \n        thought they then turned into robins.\n    – Aristotle’s assumptions were logical because the two species of birds had a similar \n       \n','33\n',0),(182,48,' .\n 17th century\n • Charles Morton popularised the idea that birds fly to the \n','34\n',1),(183,48,' in winter.\n Scientific developments\n • In 1822, a stork was killed in Germany which had an African spear in its \n','35\n',2),(184,48,' \n    – previously there had been no \n','36\n',3),(185,48,' that storks migrate to Africa\n • Little was known about the \n','37\n',4),(186,48,' and journeys of migrating birds until the \n    practice of ringing was established.\n    – It was thought large birds carried small birds on some journeys because they were \n       considered incapable of travelling across huge \n','38\n',5),(187,48,'','31\n',6),(188,48,'\n • This theory was later disproved by experiments on caged birds.\n Transmutation theory\n • Aristotle believed birds changed from one species into another in summer and winter.\n    – In autumn he observed that redstarts experience the loss of \n 32\n  and \n        thought they then turned into robins.\n    – Aristotle’s assumptions were logical because the two species of birds had a similar \n       \n 33\n  .\n 17th century\n • Charles Morton popularised the idea that birds fly to the \n 34\n  in winter.\n Scientific developments\n • In 1822, a stork was killed in Germany which had an African spear in its \n 35\n  \n    – previously there had been no \n 36\n  that storks migrate to Africa\n • Little was known about the \n 37\n  and journeys of migrating birds until the \n    practice of ringing was established.\n    – It was thought large birds carried small birds on some journeys because they were \n       considered incapable of travelling across huge \n 38\n  . \n    – Ringing depended on what is called the ‘\n','39\n',7),(189,48,'’ of dead birds.\n • In 1931, the first \n','40\n',8),(190,48,'','32\n',9),(191,48,' and \n        thought they then turned into robins.\n    – Aristotle’s assumptions were logical because the two species of birds had a similar \n       \n 33\n  .\n 17th century\n • Charles Morton popularised the idea that birds fly to the \n 34\n  in winter.\n Scientific developments\n • In 1822, a stork was killed in Germany which had an African spear in its \n 35\n  \n    – previously there had been no \n 36\n  that storks migrate to Africa\n • Little was known about the \n 37\n  and journeys of migrating birds until the \n    practice of ringing was established.\n    – It was thought large birds carried small birds on some journeys because they were \n       considered incapable of travelling across huge \n 38\n  . \n    – Ringing depended on what is called the ‘\n 39\n ’ of dead birds.\n • In 1931, the first \n 40\n  to show the migration of European birds was printed.',NULL,-1),(192,49,'ost birds are believed to migrate seasonally.\n Hibernation theory\n • It was believed that birds hibernated underwater or buried themselves in \n 31\n \n • This theory was later disproved by experiments on caged birds.\n Transmutation theory\n • Aristotle believed birds changed from one species into another in summer and winter.\n    – In autumn he observed that redstarts experience the loss of \n 32\n  and \n        thought they then turned into robins.\n    – Aristotle’s assumptions were logical because the two species of birds had a similar \n       \n','33\n',0),(193,49,'','31\n',1),(194,49,'\n • This theory was later disproved by experiments on caged birds.\n Transmutation theory\n • Aristotle believed birds changed from one species into another in summer and winter.\n    – In autumn he observed that redstarts experience the loss of \n','32\n',2),(195,49,' and \n        thought they then turned into robins.\n    – Aristotle’s assumptions were logical because the two species of birds had a similar \n       \n 33\n  .\n 17th century\n • Charles Morton popularised the idea that birds fly to the \n 34\n  in winter.\n Scientific developments\n • In 1822, a stork was killed in Germany which had an African spear in its \n 35\n  \n    – previously there had been no \n 36\n  that storks migrate to Africa\n • Little was known about the \n 37\n  and journeys of migrating birds until the \n    practice of ringing was established.\n    – It was thought large birds carried small birds on some journeys because they were \n       considered incapable of travelling across huge \n 38\n  . \n    – Ringing depended on what is called the ‘\n 39\n ’ of dead birds.\n • In 1931, the first \n 40\n  to show the migration of European birds was printed.',NULL,-1),(196,50,'ost birds are believed to migrate seasonally.\n Hibernation theory\n • It was believed that birds hibernated underwater or buried themselves in \n','31\n',0),(197,50,'\n • This theory was later disproved by experiments on caged birds.\n Transmutation theory\n • Aristotle believed birds changed from one species into another in summer and winter.\n    – In autumn he observed that redstarts experience the loss of \n 32\n  and \n        thought they then turned into robins.\n    – Aristotle’s assumptions were logical because the two species of birds had a similar \n       \n 33\n  .\n 17th century\n • Charles Morton popularised the idea that birds fly to the \n 34\n  in winter.\n Scientific developments\n • In 1822, a stork was killed in Germany which had an African spear in its \n 35\n  \n    – previously there had been no \n 36\n  that storks migrate to Africa\n • Little was known about the \n 37\n  and journeys of migrating birds until the \n    practice of ringing was established.\n    – It was thought large birds carried small birds on some journeys because they were \n       considered incapable of travelling across huge \n 38\n  . \n    – Ringing depended on what is called the ‘\n 39\n ’ of dead birds.\n • In 1931, the first \n 40\n  to show the migration of European birds was printed.',NULL,-1),(198,51,'ost birds are believed to migrate seasonally.\n Hibernation theory\n • It was believed that birds hibernated underwater or buried themselves in \n 31\n \n • This theory was later disproved by experiments on caged birds.\n Transmutation theory\n • Aristotle believed birds changed from one species into another in summer and winter.\n    – In autumn he observed that redstarts experience the loss of \n 32\n  and \n        thought they then turned into robins.\n    – Aristotle’s assumptions were logical because the two species of birds had a similar \n       \n','33\n',0),(199,51,'','31\n',1),(200,51,'\n • This theory was later disproved by experiments on caged birds.\n Transmutation theory\n • Aristotle believed birds changed from one species into another in summer and winter.\n    – In autumn he observed that redstarts experience the loss of \n','32\n',2),(201,51,' and \n        thought they then turned into robins.\n    – Aristotle’s assumptions were logical because the two species of birds had a similar \n       \n 33\n  .\n 17th century\n • Charles Morton popularised the idea that birds fly to the \n 34\n  in winter.\n Scientific developments\n • In 1822, a stork was killed in Germany which had an African spear in its \n 35\n  \n    – previously there had been no \n 36\n  that storks migrate to Africa\n • Little was known about the \n 37\n  and journeys of migrating birds until the \n    practice of ringing was established.\n    – It was thought large birds carried small birds on some journeys because they were \n       considered incapable of travelling across huge \n 38\n  . \n    – Ringing depended on what is called the ‘\n 39\n ’ of dead birds.\n • In 1931, the first \n 40\n  to show the migration of European birds was printed.',NULL,-1),(202,52,'11\n \n','22\n',0),(203,52,'\n 33',NULL,-1),(204,53,'ost birds are believed to migrate seasonally. Hibernation theory • It was believed that birds hibernated underwater or buried themselves in 31\n • This theory was later disproved by experiments on caged birds. Transmutation theory • Aristotle believed birds changed from one species into another in summer and winter.  – In autumn he observed that redstarts experience the loss of 32\n and     thought they then turned into robins.  – Aristotle’s assumptions were logical because the two species of birds had a similar    \n 33 .\n 17th century • Charles Morton popularised the idea that birds fly to the','34\n',0),(205,53,'in winter. Scientific developments • In 1822, a stork was killed in Germany which had an African spear in its','35\n',1),(206,53,'\n  – previously there had been no','36\n',2),(207,53,'that storks migrate to Africa • Little was known about the','37\n',3),(208,53,'and journeys of migrating birds until the   practice of ringing was established.  – It was thought large birds carried small birds on some journeys because they were    considered incapable of travelling across huge','38\n',4),(209,53,'.   – Ringing depended on what is called the ‘','39',5),(210,53,'','31\n',6),(211,53,'• This theory was later disproved by experiments on caged birds. Transmutation theory • Aristotle believed birds changed from one species into another in summer and winter.  – In autumn he observed that redstarts experience the loss of 32\n and     thought they then turned into robins.  – Aristotle’s assumptions were logical because the two species of birds had a similar    \n 33 .\n 17th century • Charles Morton popularised the idea that birds fly to the 34\n in winter. Scientific developments • In 1822, a stork was killed in Germany which had an African spear in its 35\n \n  – previously there had been no 36\n that storks migrate to Africa • Little was known about the 37\n and journeys of migrating birds until the   practice of ringing was established.  – It was thought large birds carried small birds on some journeys because they were    considered incapable of travelling across huge 38\n .   – Ringing depended on what is called the ‘ 39 ’ of dead birds. • In 1931, the first','40\n',7),(212,53,'','32\n',8),(213,53,'and     thought they then turned into robins.  – Aristotle’s assumptions were logical because the two species of birds had a similar    \n','33',9),(214,53,'.\n 17th century • Charles Morton popularised the idea that birds fly to the 34\n in winter. Scientific developments • In 1822, a stork was killed in Germany which had an African spear in its 35\n \n  – previously there had been no 36\n that storks migrate to Africa • Little was known about the 37\n and journeys of migrating birds until the   practice of ringing was established.  – It was thought large birds carried small birds on some journeys because they were    considered incapable of travelling across huge 38\n .   – Ringing depended on what is called the ‘ 39 ’ of dead birds. • In 1931, the first 40\n to show the migration of European birds was printed.',NULL,-1),(215,54,'ost birds are believed to migrate seasonally. Hibernation theory • It was believed that birds hibernated underwater or buried themselves in','31\n',0),(216,54,'• This theory was later disproved by experiments on caged birds. Transmutation theory • Aristotle believed birds changed from one species into another in summer and winter.  – In autumn he observed that redstarts experience the loss of','32\n',1),(217,54,'and     thought they then turned into robins.  – Aristotle’s assumptions were logical because the two species of birds had a similar    \n','33',2),(218,54,'.\n 17th century • Charles Morton popularised the idea that birds fly to the 34\n in winter. Scientific developments • In 1822, a stork was killed in Germany which had an African spear in its 35\n \n  – previously there had been no 36\n that storks migrate to Africa • Little was known about the 37\n and journeys of migrating birds until the   practice of ringing was established.  – It was thought large birds carried small birds on some journeys because they were    considered incapable of travelling across huge 38\n .   – Ringing depended on what is called the ‘ 39 ’ of dead birds. • In 1931, the first 40\n to show the migration of European birds was printed.',NULL,-1),(219,55,'ost birds are believed to migrate seasonally. Hibernation theory • It was believed that birds hibernated underwater or buried themselves in 31\n • This theory was later disproved by experiments on caged birds. Transmutation theory • Aristotle believed birds changed from one species into another in summer and winter.  – In autumn he observed that redstarts experience the loss of 32\n and     thought they then turned into robins.  – Aristotle’s assumptions were logical because the two species of birds had a similar    \n 33 .\n 17th century • Charles Morton popularised the idea that birds fly to the','34\n',0),(220,55,'in winter. Scientific developments • In 1822, a stork was killed in Germany which had an African spear in its','35\n',1),(221,55,'\n  – previously there had been no','36\n',2),(222,55,'that storks migrate to Africa • Little was known about the','37\n',3),(223,55,'and journeys of migrating birds until the   practice of ringing was established.  – It was thought large birds carried small birds on some journeys because they were    considered incapable of travelling across huge','38\n',4),(224,55,'.   – Ringing depended on what is called the ‘','39',5),(225,55,'','31\n',6),(226,55,'• This theory was later disproved by experiments on caged birds. Transmutation theory • Aristotle believed birds changed from one species into another in summer and winter.  – In autumn he observed that redstarts experience the loss of 32\n and     thought they then turned into robins.  – Aristotle’s assumptions were logical because the two species of birds had a similar    \n 33 .\n 17th century • Charles Morton popularised the idea that birds fly to the 34\n in winter. Scientific developments • In 1822, a stork was killed in Germany which had an African spear in its 35\n \n  – previously there had been no 36\n that storks migrate to Africa • Little was known about the 37\n and journeys of migrating birds until the   practice of ringing was established.  – It was thought large birds carried small birds on some journeys because they were    considered incapable of travelling across huge 38\n .   – Ringing depended on what is called the ‘ 39 ’ of dead birds. • In 1931, the first','40\n',7),(227,55,'','32\n',8),(228,55,'and     thought they then turned into robins.  – Aristotle’s assumptions were logical because the two species of birds had a similar    \n','33',9),(229,55,'.\n 17th century • Charles Morton popularised the idea that birds fly to the 34\n in winter. Scientific developments • In 1822, a stork was killed in Germany which had an African spear in its 35\n \n  – previously there had been no 36\n that storks migrate to Africa • Little was known about the 37\n and journeys of migrating birds until the   practice of ringing was established.  – It was thought large birds carried small birds on some journeys because they were    considered incapable of travelling across huge 38\n .   – Ringing depended on what is called the ‘ 39 ’ of dead birds. • In 1931, the first 40\n to show the migration of European birds was printed.',NULL,-1),(230,56,'ost birds are believed to migrate seasonally. Hibernation theory • It was believed that birds hibernated underwater or buried themselves in','31\n',0),(231,56,'• This theory was later disproved by experiments on caged birds. Transmutation theory • Aristotle believed birds changed from one species into another in summer and winter.  – In autumn he observed that redstarts experience the loss of','32\n',1),(232,56,'and     thought they then turned into robins.  – Aristotle’s assumptions were logical because the two species of birds had a similar    \n','33',2),(233,56,'.\n 17th century • Charles Morton popularised the idea that birds fly to the','34\n',3),(234,56,'in winter. Scientific developments • In 1822, a stork was killed in Germany which had an African spear in its','35\n',4),(235,56,'\n  – previously there had been no','36\n',5),(236,56,'that storks migrate to Africa • Little was known about the','37\n',6),(237,56,'and journeys of migrating birds until the   practice of ringing was established.  – It was thought large birds carried small birds on some journeys because they were    considered incapable of travelling across huge','38\n',7),(238,56,'.   – Ringing depended on what is called the ‘','39',8),(239,56,'’ of dead birds. • In 1931, the first','40\n',9),(240,56,'to show the migration of European birds was printed.',NULL,-1),(241,57,'ost birds are believed to migrate seasonally.\n Hibernation theory\n • It was believed that birds hibernated underwater or buried themselves in \n','31\n',0),(242,57,'\n • This theory was later disproved by experiments on caged birds.\n Transmutation theory\n • Aristotle believed birds changed from one species into another in summer and winter.\n    – In autumn he observed that redstarts experience the loss of \n','32\n',1),(243,57,' and \n        thought they then turned into robins.\n    – Aristotle’s assumptions were logical because the two species of birds had a similar \n       \n','33\n',2),(244,57,' .\n 17th century\n • Charles Morton popularised the idea that birds fly to the \n','34\n',3),(245,57,' in winter.\n Scientific developments\n • In 1822, a stork was killed in Germany which had an African spear in its \n','35\n',4),(246,57,' \n    – previously there had been no \n','36\n',5),(247,57,' that storks migrate to Africa\n • Little was known about the \n','37\n',6),(248,57,' and journeys of migrating birds until the \n    practice of ringing was established.\n    – It was thought large birds carried small birds on some journeys because they were \n       considered incapable of travelling across huge \n','38\n',7),(249,57,' . \n    – Ringing depended on what is called the ‘\n','39\n',8),(250,57,'’ of dead birds.\n • In 1931, the first \n','40\n',9),(251,57,' to show the migration of European birds was printed.',NULL,-1),(252,58,'','AAA\n',0),(253,58,'BBB\n','CC\n',1),(254,58,'DDDD\n FFFF GGG','HHH',2),(255,58,'JJJ\n ',NULL,-1),(256,60,' 组卷1','组卷1',0),(257,60,'组卷1 组卷1\n','组卷1',1),(258,60,'','组卷1',2),(259,60,'组卷1\n 组卷1 组卷1\n 组卷1',NULL,-1);
/*!40000 ALTER TABLE `listening_blank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listening_question`
--

DROP TABLE IF EXISTS `listening_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listening_question` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `listening_id` bigint NOT NULL,
  `title` varchar(300) NOT NULL,
  `answer` varchar(300) NOT NULL,
  `sort_num` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listening_question`
--

LOCK TABLES `listening_question` WRITE;
/*!40000 ALTER TABLE `listening_question` DISABLE KEYS */;
INSERT INTO `listening_question` VALUES (1,46,'AS DA','AS D',1),(2,57,'233','1',10),(3,58,'111','1',3),(4,58,'5','0',4),(6,60,'组卷1','0',3);
/*!40000 ALTER TABLE `listening_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listening_question_option`
--

DROP TABLE IF EXISTS `listening_question_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listening_question_option` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question_id` bigint NOT NULL,
  `content` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listening_question_option`
--

LOCK TABLES `listening_question_option` WRITE;
/*!40000 ALTER TABLE `listening_question_option` DISABLE KEYS */;
INSERT INTO `listening_question_option` VALUES (1,1,'ASDSSSSS'),(2,2,'1'),(3,2,'2'),(4,3,'2'),(5,3,'3'),(6,4,'3'),(9,6,'组卷1组卷1组卷1组卷1');
/*!40000 ALTER TABLE `listening_question_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reading`
--

DROP TABLE IF EXISTS `reading`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reading` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(300) DEFAULT NULL,
  `content` text,
  `create_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reading`
--

LOCK TABLES `reading` WRITE;
/*!40000 ALTER TABLE `reading` DISABLE KEYS */;
INSERT INTO `reading` VALUES (15,'this.$parent.page(this.$parent.pagination.current)','1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111',NULL),(16,'1','ne night, when I was eight, my mother gently asked me a question I would never forget. Sweetie, my company wants to promote（升职） me but needs me to work in Brazil. This is like your teacher telling you that you\'ve done well and allowing you to skip（跳） a grade, but you\'ll have to leave your friends. Would you say yes to your teacher? She gave me a hug and asked me to think about it. I was lost in thought. The question kept me wondering for the rest of the night. I had said Yes but for the first time, I realized the difficult decisions adults had to make.For almost four years, my mother would call us from Brazil every day. Every evening I\'d eagerly wait for the phone to ring and then tell her everything that happened during the day. A phone call, however, could never take her place and it was difficult not to feel lonely at times.During my fourth-grade Christmas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to tell me, you wouldn\'t know whether you made the right choice, but you could always make the best out of the situation, with a positive attitude.Back home, I reminded myself that what my mother could do, I could, too. If she managed to live in Rio all by herself, I, too, could learn to be independent. I learn how to take care of myself and set high but achievable goals.My mother is now back with us. But I will never forget what the experience has really taught me. I\'ve learned a lot because of this separation（分离）. There are lots of difficult decisions that we have to face in our life. We need to have a positive attitude no matter what happens.',NULL),(17,'1','ne night, when I was eight, my mother gently asked me a question I would never forget. Sweetie, my company wants to promote（升职） me but needs me to work in Brazil. This is like your teacher telling you that you\'ve done well and allowing you to skip（跳） a grade, but you\'ll have to leave your friends. Would you say yes to your teacher? She gave me a hug and asked me to think about it. I was lost in thought. The question kept me wondering for the rest of the night. I had said Yes but for the first time, I realized the difficult decisions adults had to make.For almost four years, my mother would call us from Brazil every day. Every evening I\'d eagerly wait for the phone to ring and then tell her everything that happened during the day. A phone call, however, could never take her place and it was difficult not to feel lonely at times.During my fourth-grade Christmas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to tell me, you wouldn\'t know whether you made the right choice, but you could always make the best out of the situation, with a positive attitude.Back home, I reminded myself that what my mother could do, I could, too. If she managed to live in Rio all by herself, I, too, could learn to be independent. I learn how to take care of myself and set high but achievable goals.My mother is now back with us. But I will never forget what the experience has really taught me. I\'ve learned a lot because of this separation（分离）. There are lots of difficult decisions that we have to face in our life. We need to have a positive attitude no matter what happens.',NULL),(18,'222222222222222','ne night, when I was eight, my mother gently asked me a question I would never forget. Sweetie, my company wants to promote（升职） me but needs me to work in Brazil. This is like your teacher telling you that you\'ve done well and allowing you to skip（跳） a grade, but you\'ll have to leave your friends. Would you say yes to your teacher? She gave me a hug and asked me to think about it. I was lost in thought. The question kept me wondering for the rest of the night. I had said Yes but for the first time, I realized the difficult decisions adults had to make.For almost four years, my mother would call us from Brazil every day. Every evening I\'d eagerly wait for the phone to ring and then tell her everything that happened during the day. A phone call, however, could never take her place and it was difficult not to feel lonely at times.During my fourth-grade Christmas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to tell me, you wouldn\'t know whether you made the right choice, but you could always make the best out of the situation, with a positive attitude.Back home, I reminded myself that what my mother could do, I could, too. If she managed to live in Rio all by herself, I, too, could learn to be independent. I learn how to take care of myself and set high but achievable goals.My mother is now back with us. But I will never forget what the experience has really taught me. I\'ve learned a lot because of this separation（分离）. There are lots of difficult decisions that we have to face in our life. We need to have a positive attitude no matter what happens.',NULL),(19,'1','ne night, when I was eight, my mother gently asked me a question I would never forget. Sweetie, my company wants to promote（升职） me but needs me to work in Brazil. This is like your teacher telling you that you\'ve done well and allowing you to skip（跳） a grade, but you\'ll have to leave your friends. Would you say yes to your teacher? She gave me a hug and asked me to think about it. I was lost in thought. The question kept me wondering for the rest of the night. I had said Yes but for the first time, I realized the difficult decisions adults had to make.For almost four years, my mother would call us from Brazil every day. Every evening I\'d eagerly wait for the phone to ring and then tell her everything that happened during the day. A phone call, however, could never take her place and it was difficult not to feel lonely at times.During my fourth-grade Christmas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to tell me, you wouldn\'t know whether you made the right choice, but you could always make the best out of the situation, with a positive attitude.Back home, I reminded myself that what my mother could do, I could, too. If she managed to live in Rio all by herself, I, too, could learn to be independent. I learn how to take care of myself and set high but achievable goals.My mother is now back with us. But I will never forget what the experience has really taught me. I\'ve learned a lot because of this separation（分离）. There are lots of difficult decisions that we have to face in our life. We need to have a positive attitude no matter what happens.','2024-03-13'),(20,'1','ne night, when I was eight, my mother gently asked me a question I would never forget. Sweetie, my company wants to promote（升职） me but needs me to work in Brazil. This is like your teacher telling you that you\'ve done well and allowing you to skip（跳） a grade, but you\'ll have to leave your friends. Would you say yes to your teacher? She gave me a hug and asked me to think about it. I was lost in thought. The question kept me wondering for the rest of the night. I had said Yes but for the first time, I realized the difficult decisions adults had to make.For almost four years, my mother would call us from Brazil every day. Every evening I\'d eagerly wait for the phone to ring and then tell her everything that happened during the day. A phone call, however, could never take her place and it was difficult not to feel lonely at times.During my fourth-grade Christmas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to tell me, you wouldn\'t know whether you made the right choice, but you could always make the best out of the situation, with a positive attitude.Back home, I reminded myself that what my mother could do, I could, too. If she managed to live in Rio all by herself, I, too, could learn to be independent. I learn how to take care of myself and set high but achievable goals.My mother is now back with us. But I will never forget what the experience has really taught me. I\'ve learned a lot because of this separation（分离）. There are lots of difficult decisions that we have to face in our life. We need to have a positive attitude no matter what happens.','2024-03-13'),(23,'me but needs me o','ne night, when I was eight, my mother gently asked me a question I would never forget. Sweetie, my company wants to promote（升职） me but needs me to work in Brazil. This is like your teacher telling you that you\'ve done well and allowing you to skip（跳） a grade, but you\'ll have to leave your friends. Would you say yes to your teacher? She gave me a hug and asked me to think about it. I was lost in thoughvisit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to te pendent. I learn how to take cas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to te pendent. I learn how to take cas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to te pendent. I learn how to take cas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to te pendent. I learn how to take care of myself and set high but achievable goals.My mother is now back with us. But I will never forget what the experience has really taught me. I\'ve learned a lot because of this separation（分离）. There are lots of difficult decisions that we have to face in our life. We need to have a positive attitude no matter what happens.','2024-03-13'),(25,'1','1','2024-03-14'),(26,'333333','333333',NULL),(27,'QQQQQQQQQQQQQ','QQQQQQQQQQQQQ','2024-03-14'),(28,'飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS','飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS','2024-03-14'),(30,'me but needs me o','ne night, when I was eight, my mother gently asked me a question I would never forget. Sweetie, my company wants to promote（升职） me but needs me to work in Brazil. This is like your teacher telling you that you\'ve done well and allowing you to skip（跳） a grade, but you\'ll have to leave your friends. Would you say yes to your teacher? She gave me a hug and asked me to think about it. I was lost in thoughvisit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to te pendent. I learn how to take cas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to te pendent. I learn how to take cas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to te pendent. I learn how to take cas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to te pendent. I learn how to take care of myself and set high but achievable goals.My mother is now back with us. But I will never forget what the experience has really taught me. I\'ve learned a lot because of this separation（分离）. There are lots of difficult decisions that we have to face in our life. We need to have a positive attitude no matter what happens.','2024-03-14'),(31,'me but needs me o','ne night, when I was eight, my mother gently asked me a question I would never forget. Sweetie, my company wants to promote（升职） me but needs me to work in Brazil. This is like your teacher telling you that you\'ve done well and allowing you to skip（跳） a grade, but you\'ll have to leave your friends. Would you say yes to your teacher? She gave me a hug and asked me to think about it. I was lost in thoughvisit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to te pendent. I learn how to take cas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to te pendent. I learn how to take cas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to te pendent. I learn how to take cas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to te pendent. I learn how to take care of myself and set high but achievable goals.My mother is now back with us. But I will never forget what the experience has really taught me. I\'ve learned a lot because of this separation（分离）. There are lots of difficult decisions that we have to face in our life. We need to have a positive attitude no matter what happens.','2024-03-14'),(32,'1222','1','2024-03-14'),(33,'22222','1','2024-03-14'),(34,'1','1','2024-03-14'),(35,'fwfwfwfwfwfwfwf','fwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwf','2024-03-15'),(36,'11',NULL,'2024-03-19'),(37,'AAAAA',NULL,'2024-03-19'),(38,'组卷1','组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1','2024-03-19');
/*!40000 ALTER TABLE `reading` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reading_question`
--

DROP TABLE IF EXISTS `reading_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reading_question` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reading_id` int DEFAULT NULL,
  `title` varchar(300) DEFAULT NULL,
  `answer` varchar(100) DEFAULT NULL,
  `sort_num` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reading_question`
--

LOCK TABLES `reading_question` WRITE;
/*!40000 ALTER TABLE `reading_question` DISABLE KEYS */;
INSERT INTO `reading_question` VALUES (5,1,'2','2',NULL),(15,16,'2','2',NULL),(16,17,'2','2',NULL),(18,19,'2','2',NULL),(19,20,'2','2',NULL),(24,23,'as break, we flew to Rhow to take c','1',NULL),(25,23,'as broict. I learn how to take c','3',NULL),(26,23,'as break, wo te pendent. I learn how to take c','0',NULL),(27,23,'as break, we. She pendent. I learn how to take c','2',NULL),(28,25,'1','1',NULL),(29,27,'QQQQQQQQQQQQQ','0',NULL),(30,28,'飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS','3',NULL),(31,28,'飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS','1',NULL),(32,28,'飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS','0',NULL),(34,30,'as break, we flew to Rhow to take c','1',NULL),(35,30,'as broict. I learn how to take c','3',NULL),(36,30,'as break, wo te pendent. I learn how to take c','0',NULL),(37,30,'as break, we. She pendent. I learn how to take c','2',NULL),(38,31,'as break, we flew to Rhow to take c','1',NULL),(39,31,'as broict. I learn how to take c','3',NULL),(40,31,'as break, wo te pendent. I learn how to take c','0',NULL),(41,31,'as break, we. She pendent. I learn how to take c','2',NULL),(42,32,'2','222',NULL),(43,NULL,'2','22222',NULL),(44,NULL,'2','222222',NULL),(45,NULL,'2','222222',NULL),(46,33,'2','22222',NULL),(50,26,'33333','3333',NULL),(51,18,'2','2',NULL),(53,34,'1','1',NULL),(54,35,'fwfwfwfwfwfwfwf','fwfwfwfwfwfwfwf',NULL),(55,35,'fwfwfwfwfwfwfwf','fwfwfwfwfwfwfwf',NULL),(59,15,'2','22',NULL),(60,15,'1111111111111111111111111111111111111111111111111111111111111','1111111111111111111111111111111111111111111111111111111111111',NULL),(61,38,'题目1','1',NULL);
/*!40000 ALTER TABLE `reading_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reading_question_option`
--

DROP TABLE IF EXISTS `reading_question_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reading_question_option` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_id` int DEFAULT NULL,
  `content` varchar(300) DEFAULT NULL,
  `sort_num` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reading_question_option`
--

LOCK TABLES `reading_question_option` WRITE;
/*!40000 ALTER TABLE `reading_question_option` DISABLE KEYS */;
INSERT INTO `reading_question_option` VALUES (12,15,'3',NULL),(13,16,'3',NULL),(15,18,'3',NULL),(16,19,'3',NULL),(33,24,'icult choices she had to make. She needed t',NULL),(34,24,'icult choices ed to te pendent. I leed to te pendent. I leshe had to make. She needed t',NULL),(35,24,'icult choices sed to te pendent. I lehe had to make. She needed t',NULL),(36,24,'icult choiceslehe had to make. She needed t',NULL),(37,25,'icult choices she had to make. She needed t',NULL),(38,25,'icult choices ed to te pendent. I leed to te pendent. I leshe had to make. She needed t',NULL),(39,25,'icult choices sed to te pendent. I lehe had to make. She needed t',NULL),(40,25,'icult choices sed to She needed t',NULL),(41,26,'icult choices she had to make. She needed t',NULL),(42,26,'icult choices ed to te pendent. I leed to te pendent. I leshe had to make. She needed t',NULL),(43,26,'icult choices sed to te pendent. I lehe had to make. She needed t',NULL),(44,26,'icult choices so make. She needed t',NULL),(45,27,'icult choices she had to make. She needed t',NULL),(46,27,'icult choices ed to te pendent. I leed to te pendent. I leshe had to make. She needed t',NULL),(47,27,'icult choices sed to te pendent. I lehe had to make. She needed t',NULL),(48,27,'icult choe had to make. She needed t',NULL),(49,28,'1',NULL),(50,29,'QQQQQQQQQQQQQ',NULL),(51,30,'1飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS',NULL),(52,30,'1飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS',NULL),(53,30,'飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS',NULL),(54,30,'飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS',NULL),(55,31,'飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS',NULL),(56,31,'1111111111111111',NULL),(57,32,'飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS',NULL),(58,32,'飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS',NULL),(60,34,'icult choices she had to make. She needed t',NULL),(61,34,'icult choices ed to te pendent. I leed to te pendent. I leshe had to make. She needed t',NULL),(62,34,'icult choices sed to te pendent. I lehe had to make. She needed t',NULL),(63,34,'icult choiceslehe had to make. She needed t',NULL),(64,35,'icult choices she had to make. She needed t',NULL),(65,35,'icult choices ed to te pendent. I leed to te pendent. I leshe had to make. She needed t',NULL),(66,35,'icult choices sed to te pendent. I lehe had to make. She needed t',NULL),(67,35,'icult choices sed to She needed t',NULL),(68,36,'icult choices she had to make. She needed t',NULL),(69,36,'icult choices ed to te pendent. I leed to te pendent. I leshe had to make. She needed t',NULL),(70,36,'icult choices sed to te pendent. I lehe had to make. She needed t',NULL),(71,36,'icult choices so make. She needed t',NULL),(72,37,'icult choices she had to make. She needed t',NULL),(73,37,'icult choices ed to te pendent. I leed to te pendent. I leshe had to make. She needed t',NULL),(74,37,'icult choices sed to te pendent. I lehe had to make. She needed t',NULL),(75,37,'icult choe had to make. She needed t',NULL),(76,38,'icult choices she had to make. She needed t',NULL),(77,38,'icult choices ed to te pendent. I leed to te pendent. I leshe had to make. She needed t',NULL),(78,38,'icult choices sed to te pendent. I lehe had to make. She needed t',NULL),(79,38,'icult choiceslehe had to make. She needed t',NULL),(80,39,'icult choices she had to make. She needed t',NULL),(81,39,'icult choices ed to te pendent. I leed to te pendent. I leshe had to make. She needed t',NULL),(82,39,'icult choices sed to te pendent. I lehe had to make. She needed t',NULL),(83,39,'icult choices sed to She needed t',NULL),(84,40,'icult choices she had to make. She needed t',NULL),(85,40,'icult choices ed to te pendent. I leed to te pendent. I leshe had to make. She needed t',NULL),(86,40,'icult choices sed to te pendent. I lehe had to make. She needed t',NULL),(87,40,'icult choices so make. She needed t',NULL),(88,41,'icult choices she had to make. She needed t',NULL),(89,41,'icult choices ed to te pendent. I leed to te pendent. I leshe had to make. She needed t',NULL),(90,41,'icult choices sed to te pendent. I lehe had to make. She needed t',NULL),(91,41,'icult choe had to make. She needed t',NULL),(92,42,'222',NULL),(93,46,'22222',NULL),(97,50,'33333',NULL),(98,51,'3',NULL),(100,53,'1',NULL),(101,54,'fwfwfwfwfwfwfwf',NULL),(102,55,'fwfwfwfwfwfwfwf',NULL),(108,59,'3',NULL),(109,59,'3333',NULL),(110,60,'1111111111111111111111111111111111111111111111111111111111111',NULL),(111,61,'1',NULL),(112,61,'2',NULL),(113,61,'3',NULL);
/*!40000 ALTER TABLE `reading_question_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL,
  `is_admin` int NOT NULL,
  `create_time` date DEFAULT NULL,
  `openid` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'admin123','123456',0,NULL,NULL),(4,'admin','111',1,'2024-03-10',NULL),(5,'1','1',0,NULL,NULL),(6,'12','2',0,NULL,NULL),(7,'1111111','1111111',0,NULL,NULL),(8,'22','22',0,'2024-03-18',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_exam_record`
--

DROP TABLE IF EXISTS `user_exam_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_exam_record` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uid` bigint NOT NULL,
  `exam_id` bigint NOT NULL,
  `create_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_exam_record`
--

LOCK TABLES `user_exam_record` WRITE;
/*!40000 ALTER TABLE `user_exam_record` DISABLE KEYS */;
INSERT INTO `user_exam_record` VALUES (1,4,4,'2024-03-19'),(2,4,3,'2024-03-19'),(3,4,6,'2024-03-19'),(4,4,6,'2024-03-19'),(5,4,6,'2024-03-19');
/*!40000 ALTER TABLE `user_exam_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_listening_record`
--

DROP TABLE IF EXISTS `user_listening_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_listening_record` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `listening_id` bigint NOT NULL,
  `uid` bigint NOT NULL,
  `record` varchar(300) NOT NULL,
  `answer` varchar(300) NOT NULL,
  `is_correct` int NOT NULL,
  `create_time` date NOT NULL,
  `sort_num` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_listening_record`
--

LOCK TABLES `user_listening_record` WRITE;
/*!40000 ALTER TABLE `user_listening_record` DISABLE KEYS */;
INSERT INTO `user_listening_record` VALUES (1,28,5,'www','111',0,'2024-03-17',NULL),(2,30,5,'AAA','TEST',0,'2024-03-17',NULL),(3,30,5,'AA','TEST',0,'2024-03-17',NULL),(4,30,5,'TEST','TEST',1,'2024-03-17',NULL),(5,30,5,'AAA','TEST',0,'2024-03-17',NULL),(6,31,4,'AA','BBB',0,'2024-03-17',NULL),(7,31,4,'AAA','CCCAAA',0,'2024-03-17',NULL),(8,31,4,'AAA','CCCAAA',0,'2024-03-17',NULL),(9,29,4,'是','111',0,'2024-03-18',NULL),(10,34,4,'111','11',0,'2024-03-18',NULL),(11,34,4,'1','1',1,'2024-03-18',NULL),(12,35,4,'CCC','CCC',1,'2024-03-18',NULL),(13,35,4,'EEE','FFF',0,'2024-03-18',NULL),(14,36,4,'AAA','AAA\n',0,'2024-03-18',NULL),(15,36,4,'BBB','BBB\n',0,'2024-03-18',NULL),(16,36,4,'FFF','FFF',1,'2024-03-18',NULL),(17,38,4,'AAA','AAA',1,'2024-03-18',NULL),(18,38,4,'BBB','CCC',0,'2024-03-18',NULL),(19,38,4,'CCC','DDD\n',0,'2024-03-18',NULL),(20,38,4,'DDD','FFF',0,'2024-03-18',NULL),(21,39,4,'BBB','BBB',1,'2024-03-18',NULL),(22,39,4,'AAA','AAA',1,'2024-03-18',NULL),(23,39,4,'B','BBB',0,'2024-03-18',NULL),(24,39,4,'C','CCC\n',0,'2024-03-18',NULL),(25,39,4,'BBB','BBB\n',1,'2024-03-18',NULL),(26,39,4,'A','AAA\n',0,'2024-03-18',NULL),(27,40,4,'TEST','TEST\n',1,'2024-03-18',NULL),(28,40,4,'TEST','THIS',0,'2024-03-18',NULL),(29,40,4,'TEST','IS',0,'2024-03-18',NULL),(30,40,4,'TEST','TESTTHIS',0,'2024-03-18',NULL),(31,40,4,'TES','A',0,'2024-03-18',NULL),(32,40,4,'TEST','TEST',1,'2024-03-18',NULL),(33,40,4,'TEST','IS',0,'2024-03-18',NULL),(34,40,4,'TEST','TESTTHIS',0,'2024-03-18',NULL),(35,40,4,'TEST','IS',0,'2024-03-18',NULL),(36,40,4,'TEST','A',0,'2024-03-18',NULL),(37,40,4,'TESTTEST','TESTTHIS',0,'2024-03-18',NULL),(38,40,4,'TEST','THIS',0,'2024-03-18',NULL),(39,40,4,'TEST','TESTTHIS',0,'2024-03-18',NULL),(40,40,4,'TEST','A',0,'2024-03-18',NULL),(41,40,4,'TEST','TEST',1,'2024-03-18',NULL),(42,45,4,'ADASD','ASDASDASD',0,'2024-03-18',NULL),(43,45,4,'ASDASD','ASDASDAD',0,'2024-03-18',NULL),(44,56,4,'A','31\n',0,'2024-03-19',NULL),(45,56,4,'A','32\n',0,'2024-03-19',NULL),(46,56,4,'A','33',0,'2024-03-19',NULL),(47,56,4,'A','34\n',0,'2024-03-19',NULL),(48,56,4,'A','35\n',0,'2024-03-19',NULL),(49,56,4,'A','36\n',0,'2024-03-19',NULL),(50,56,4,'A','37\n',0,'2024-03-19',NULL),(51,56,4,'A','38\n',0,'2024-03-19',NULL),(52,56,4,'A','39',0,'2024-03-19',NULL),(53,56,4,'A','40\n',0,'2024-03-19',NULL),(54,57,4,'1','31\n',0,'2024-03-19',NULL),(55,57,4,'2','32\n',0,'2024-03-19',NULL),(56,57,4,'3','33\n',0,'2024-03-19',NULL),(57,57,4,'4','34\n',0,'2024-03-19',NULL),(58,57,4,'5','35\n',0,'2024-03-19',NULL),(59,57,4,'66','36\n',0,'2024-03-19',NULL),(60,57,4,'777','37\n',0,'2024-03-19',NULL),(61,57,4,'8','38\n',0,'2024-03-19',NULL),(62,57,4,'99','39\n',0,'2024-03-19',NULL),(63,57,4,'10','40\n',0,'2024-03-19',NULL),(64,57,4,'0','1',0,'2024-03-19',NULL),(65,58,4,'AAA','AAA\n',1,'2024-03-19',NULL),(66,58,4,'CCC','CC\n',0,'2024-03-19',NULL),(67,58,4,'D','HHH',0,'2024-03-19',NULL),(68,58,4,'0','1',0,'2024-03-19',NULL),(69,58,4,'0','0',1,'2024-03-19',NULL),(70,59,4,'0','0',1,'2024-03-19',NULL),(71,58,4,'EEE','AAA\n',0,'2024-03-19',NULL),(72,58,4,'EEE','CC\n',0,'2024-03-19',NULL),(73,58,4,'EEE','HHH',0,'2024-03-19',NULL),(74,58,4,'0','1',0,'2024-03-19',NULL),(75,58,4,'0','0',1,'2024-03-19',NULL),(76,58,4,'VV','AAA\n',0,'2024-03-19',NULL),(77,58,4,'VV','CC\n',0,'2024-03-19',NULL),(78,58,4,'VV','HHH',0,'2024-03-19',NULL),(79,58,4,'0','1',0,'2024-03-19',NULL),(80,58,4,'0','0',1,'2024-03-19',NULL),(81,58,4,'ASDA','AAA\n',0,'2024-03-19',NULL),(82,58,4,'ASDASD','CC\n',0,'2024-03-19',NULL),(83,58,4,'ASDASD','HHH',0,'2024-03-19',NULL),(84,58,4,'0','1',0,'2024-03-19',NULL),(85,58,4,'0','0',1,'2024-03-19',NULL),(86,58,4,'ASD','AAA\n',0,'2024-03-19',NULL),(87,58,4,'ASDAS','CC\n',0,'2024-03-19',NULL),(88,58,4,'DASD','HHH',0,'2024-03-19',NULL),(89,58,4,'0','1',0,'2024-03-19',NULL),(90,58,4,'0','0',1,'2024-03-19',NULL),(91,58,4,'ASDA','AAA\n',0,'2024-03-19',NULL),(92,58,4,'SADAS','CC\n',0,'2024-03-19',NULL),(93,58,4,'DASD','HHH',0,'2024-03-19',NULL),(94,58,4,'0','1',0,'2024-03-19',NULL),(95,58,4,'0','0',1,'2024-03-19',NULL),(96,60,4,'DASDAS','组卷1',0,'2024-03-19',NULL),(97,60,4,'ASDAS','组卷1',0,'2024-03-19',NULL),(98,60,4,'ASDASDASD','组卷1',0,'2024-03-19',NULL),(99,60,4,'0','0',1,'2024-03-19',NULL),(100,60,4,'ASD','组卷1',0,'2024-03-19',NULL),(101,60,4,'ASDAS','组卷1',0,'2024-03-19',NULL),(102,60,4,'DASD','组卷1',0,'2024-03-19',NULL),(103,60,4,'0','0',1,'2024-03-19',NULL),(104,60,4,'ADASDSAD','组卷1',0,'2024-03-19',NULL),(105,60,4,'ASDA','组卷1',0,'2024-03-19',NULL),(106,60,4,'SDASD','组卷1',0,'2024-03-19',NULL),(107,60,4,'0','0',1,'2024-03-19',NULL);
/*!40000 ALTER TABLE `user_listening_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_reading_record`
--

DROP TABLE IF EXISTS `user_reading_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_reading_record` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `reading_id` bigint NOT NULL,
  `uid` bigint NOT NULL,
  `record` varchar(300) NOT NULL,
  `answer` varchar(300) NOT NULL,
  `is_correct` int NOT NULL,
  `create_time` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_reading_record`
--

LOCK TABLES `user_reading_record` WRITE;
/*!40000 ALTER TABLE `user_reading_record` DISABLE KEYS */;
INSERT INTO `user_reading_record` VALUES (1,15,4,'1','22',0,'2024-03-17'),(2,15,4,'0','1111111111111111111111111111111111111111111111111111111111111',0,'2024-03-17'),(3,20,4,'0','2',0,'2024-03-17'),(4,23,4,'2','1',0,'2024-03-17'),(5,23,4,'0','3',0,'2024-03-17'),(6,23,4,'0','0',1,'2024-03-17'),(7,23,4,'0','2',0,'2024-03-17'),(8,31,4,'0','1',0,'2024-03-18'),(9,31,4,'1','3',0,'2024-03-18'),(10,31,4,'2','0',0,'2024-03-18'),(11,31,4,'0','2',0,'2024-03-18'),(12,17,4,'0','2',0,'2024-03-18'),(13,35,4,'0','fwfwfwfwfwfwfwf',0,'2024-03-18'),(14,35,4,'0','fwfwfwfwfwfwfwf',0,'2024-03-18'),(15,17,4,'0','2',0,'2024-03-19'),(16,23,4,'0','1',0,'2024-03-19'),(17,23,4,'2','3',0,'2024-03-19'),(18,23,4,'2','0',0,'2024-03-19'),(19,23,4,'1','2',0,'2024-03-19'),(20,38,4,'0','1',0,'2024-03-19'),(21,38,4,'0','1',0,'2024-03-19'),(22,38,4,'0','1',0,'2024-03-19');
/*!40000 ALTER TABLE `user_reading_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_writing_record`
--

DROP TABLE IF EXISTS `user_writing_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_writing_record` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `writing_id` bigint NOT NULL,
  `uid` bigint NOT NULL,
  `record` text NOT NULL,
  `create_time` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_writing_record`
--

LOCK TABLES `user_writing_record` WRITE;
/*!40000 ALTER TABLE `user_writing_record` DISABLE KEYS */;
INSERT INTO `user_writing_record` VALUES (1,1,4,'{\"record\":\"33333\"}','2024-03-18'),(2,2,4,'3333','2024-03-18'),(3,4,4,'Title: The Power of PerseveranceIn the journey of life, perseverance stands as a beacon, guiding us through storms and challenges. It is the unwavering commitment to a goal, despite obstacles and setbacks. The power of perseverance lies not only in its ability to overcome difficulties but also in the growth and transformation it brings to our lives.Perseverance is the silent warrior that fights against the whispers of doubt and the calls of mediocrity. It is the driving force that propels us forward, even when the path ahead seems uncertain or fraught with danger. It is the resolve that keeps us going, step by step, inch by inch, until we reach our destination.The journey of perseverance is not always easy. It requires patience, determination, and a willingness to learn from failure. Each setback is an opportunity for growth, a chance to refine our strategies and strengthen our resolve. Through perseverance, we learn to adapt, to innovate, and to persevere even in the face of adversity.Moreover, perseverance teaches us valuable lessons about life. It teaches us that success is not a destination but a journey, filled with ups and downs, triumphs and failures. It reminds us that true achievement lies not in the final outcome but in the effort and dedication we put into the process.In conclusion, perseverance is a powerful force that shapes our lives and determines our success. It is the key to overcoming challenges, achieving goals, and realizing our full potential. Let us embrace perseverance as a compass, guiding us through the uncertainties of life and leading us toward a brighter future.','2024-03-18'),(4,4,4,'ASDASDASD','2024-03-19'),(5,5,4,'ASDASDASDASD','2024-03-19'),(6,5,4,'ASDASDASDASDASD','2024-03-19'),(7,5,4,'ASDASDASDASD','2024-03-19');
/*!40000 ALTER TABLE `user_writing_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `writing`
--

DROP TABLE IF EXISTS `writing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `writing` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `content` text NOT NULL,
  `create_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `writing`
--

LOCK TABLES `writing` WRITE;
/*!40000 ALTER TABLE `writing` DISABLE KEYS */;
INSERT INTO `writing` VALUES (2,'33222','3333222DD',NULL),(3,'DDD','22333','2024-03-18'),(4,'Please write a passage about your hometown','opic three: Hometown (Including traffic and pollution) Affirmative My hometown is a coastal city. It offers some of the best beaches in China. My hometown is an inland city best-known for the gentle, rolling hills surrounding it. This city is steeped in time-honored traditions. It\'s prosperous. There\'s a real sense of community. This city is well-known for its architectural heritage. The cityscape is gorgeous and there are tons of towering skyscrapers there. High-rise buildings are sprouting up all over the city. It\'s pretty sprawling. I enjoy the peace and quiet there. This city is like a magnet for the tourists.\n话题三：家乡（含交通和污染） 正方 我的家乡是一座沿海城市。它有着中国最好的沙滩之一。 我的家乡是一座内陆城市，它以环绕其周边的绵延起伏的群山而闻名。 这座城市沉浸在有着悠久历史的传统氛围之中。 它很繁荣。 那是真正意义上的社区。 这座城市由于其建筑遗产而闻名。 城市的景观辉煌灿烂，无数摩天高楼耸立于此。 高层建筑正在城市中不断涌现。 建筑物建造地非常分散。 我享受那里的祥和与宁静。 对游客来说这座城市就像是磁铁一样有吸引力。 翻译by 凭栏观澜','2024-03-18'),(5,'组卷1','组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1组卷1','2024-03-19');
/*!40000 ALTER TABLE `writing` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-19 19:49:57
