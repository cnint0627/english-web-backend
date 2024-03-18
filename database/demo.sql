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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listening`
--

LOCK TABLES `listening` WRITE;
/*!40000 ALTER TABLE `listening` DISABLE KEYS */;
INSERT INTO `listening` VALUES (28,'111','2024-03-16','1_lttt9i7d.mp3'),(29,'1111','2024-03-16','QQ空间视频_20220602233636_lttte2oo.mp3'),(30,'TEST','2024-03-16','1_ltu6dqlf.mp3'),(31,'111','2024-03-17','1_ltvo5qxw.mp3');
/*!40000 ALTER TABLE `listening` ENABLE KEYS */;
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
  `content` text,
  `answer` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listening_question`
--

LOCK TABLES `listening_question` WRITE;
/*!40000 ALTER TABLE `listening_question` DISABLE KEYS */;
INSERT INTO `listening_question` VALUES (94,29,'','111'),(99,28,'','111'),(100,30,'TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST','TEST'),(101,30,'TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST','TEST'),(102,30,'TEST TEST TEST TEST TEST TEST TEST TEST','TEST'),(103,30,'TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST','TEST'),(104,30,'TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST',NULL),(105,31,'1.AAA','BBB'),(106,31,'CCC DDD\n2.AAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC','CCCAAA'),(107,31,'','CCCAAA'),(108,31,'CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCCAAA CCC CCC',NULL);
/*!40000 ALTER TABLE `listening_question` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reading`
--

LOCK TABLES `reading` WRITE;
/*!40000 ALTER TABLE `reading` DISABLE KEYS */;
INSERT INTO `reading` VALUES (15,'this.$parent.page(this.$parent.pagination.current)','1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111',NULL),(16,'1','ne night, when I was eight, my mother gently asked me a question I would never forget. Sweetie, my company wants to promote（升职） me but needs me to work in Brazil. This is like your teacher telling you that you\'ve done well and allowing you to skip（跳） a grade, but you\'ll have to leave your friends. Would you say yes to your teacher? She gave me a hug and asked me to think about it. I was lost in thought. The question kept me wondering for the rest of the night. I had said Yes but for the first time, I realized the difficult decisions adults had to make.For almost four years, my mother would call us from Brazil every day. Every evening I\'d eagerly wait for the phone to ring and then tell her everything that happened during the day. A phone call, however, could never take her place and it was difficult not to feel lonely at times.During my fourth-grade Christmas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to tell me, you wouldn\'t know whether you made the right choice, but you could always make the best out of the situation, with a positive attitude.Back home, I reminded myself that what my mother could do, I could, too. If she managed to live in Rio all by herself, I, too, could learn to be independent. I learn how to take care of myself and set high but achievable goals.My mother is now back with us. But I will never forget what the experience has really taught me. I\'ve learned a lot because of this separation（分离）. There are lots of difficult decisions that we have to face in our life. We need to have a positive attitude no matter what happens.',NULL),(17,'1','ne night, when I was eight, my mother gently asked me a question I would never forget. Sweetie, my company wants to promote（升职） me but needs me to work in Brazil. This is like your teacher telling you that you\'ve done well and allowing you to skip（跳） a grade, but you\'ll have to leave your friends. Would you say yes to your teacher? She gave me a hug and asked me to think about it. I was lost in thought. The question kept me wondering for the rest of the night. I had said Yes but for the first time, I realized the difficult decisions adults had to make.For almost four years, my mother would call us from Brazil every day. Every evening I\'d eagerly wait for the phone to ring and then tell her everything that happened during the day. A phone call, however, could never take her place and it was difficult not to feel lonely at times.During my fourth-grade Christmas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to tell me, you wouldn\'t know whether you made the right choice, but you could always make the best out of the situation, with a positive attitude.Back home, I reminded myself that what my mother could do, I could, too. If she managed to live in Rio all by herself, I, too, could learn to be independent. I learn how to take care of myself and set high but achievable goals.My mother is now back with us. But I will never forget what the experience has really taught me. I\'ve learned a lot because of this separation（分离）. There are lots of difficult decisions that we have to face in our life. We need to have a positive attitude no matter what happens.',NULL),(18,'222222222222222','ne night, when I was eight, my mother gently asked me a question I would never forget. Sweetie, my company wants to promote（升职） me but needs me to work in Brazil. This is like your teacher telling you that you\'ve done well and allowing you to skip（跳） a grade, but you\'ll have to leave your friends. Would you say yes to your teacher? She gave me a hug and asked me to think about it. I was lost in thought. The question kept me wondering for the rest of the night. I had said Yes but for the first time, I realized the difficult decisions adults had to make.For almost four years, my mother would call us from Brazil every day. Every evening I\'d eagerly wait for the phone to ring and then tell her everything that happened during the day. A phone call, however, could never take her place and it was difficult not to feel lonely at times.During my fourth-grade Christmas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to tell me, you wouldn\'t know whether you made the right choice, but you could always make the best out of the situation, with a positive attitude.Back home, I reminded myself that what my mother could do, I could, too. If she managed to live in Rio all by herself, I, too, could learn to be independent. I learn how to take care of myself and set high but achievable goals.My mother is now back with us. But I will never forget what the experience has really taught me. I\'ve learned a lot because of this separation（分离）. There are lots of difficult decisions that we have to face in our life. We need to have a positive attitude no matter what happens.',NULL),(19,'1','ne night, when I was eight, my mother gently asked me a question I would never forget. Sweetie, my company wants to promote（升职） me but needs me to work in Brazil. This is like your teacher telling you that you\'ve done well and allowing you to skip（跳） a grade, but you\'ll have to leave your friends. Would you say yes to your teacher? She gave me a hug and asked me to think about it. I was lost in thought. The question kept me wondering for the rest of the night. I had said Yes but for the first time, I realized the difficult decisions adults had to make.For almost four years, my mother would call us from Brazil every day. Every evening I\'d eagerly wait for the phone to ring and then tell her everything that happened during the day. A phone call, however, could never take her place and it was difficult not to feel lonely at times.During my fourth-grade Christmas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to tell me, you wouldn\'t know whether you made the right choice, but you could always make the best out of the situation, with a positive attitude.Back home, I reminded myself that what my mother could do, I could, too. If she managed to live in Rio all by herself, I, too, could learn to be independent. I learn how to take care of myself and set high but achievable goals.My mother is now back with us. But I will never forget what the experience has really taught me. I\'ve learned a lot because of this separation（分离）. There are lots of difficult decisions that we have to face in our life. We need to have a positive attitude no matter what happens.','2024-03-13'),(20,'1','ne night, when I was eight, my mother gently asked me a question I would never forget. Sweetie, my company wants to promote（升职） me but needs me to work in Brazil. This is like your teacher telling you that you\'ve done well and allowing you to skip（跳） a grade, but you\'ll have to leave your friends. Would you say yes to your teacher? She gave me a hug and asked me to think about it. I was lost in thought. The question kept me wondering for the rest of the night. I had said Yes but for the first time, I realized the difficult decisions adults had to make.For almost four years, my mother would call us from Brazil every day. Every evening I\'d eagerly wait for the phone to ring and then tell her everything that happened during the day. A phone call, however, could never take her place and it was difficult not to feel lonely at times.During my fourth-grade Christmas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to tell me, you wouldn\'t know whether you made the right choice, but you could always make the best out of the situation, with a positive attitude.Back home, I reminded myself that what my mother could do, I could, too. If she managed to live in Rio all by herself, I, too, could learn to be independent. I learn how to take care of myself and set high but achievable goals.My mother is now back with us. But I will never forget what the experience has really taught me. I\'ve learned a lot because of this separation（分离）. There are lots of difficult decisions that we have to face in our life. We need to have a positive attitude no matter what happens.','2024-03-13'),(23,'me but needs me o','ne night, when I was eight, my mother gently asked me a question I would never forget. Sweetie, my company wants to promote（升职） me but needs me to work in Brazil. This is like your teacher telling you that you\'ve done well and allowing you to skip（跳） a grade, but you\'ll have to leave your friends. Would you say yes to your teacher? She gave me a hug and asked me to think about it. I was lost in thoughvisit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to te pendent. I learn how to take cas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to te pendent. I learn how to take cas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to te pendent. I learn how to take cas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to te pendent. I learn how to take care of myself and set high but achievable goals.My mother is now back with us. But I will never forget what the experience has really taught me. I\'ve learned a lot because of this separation（分离）. There are lots of difficult decisions that we have to face in our life. We need to have a positive attitude no matter what happens.','2024-03-13'),(25,'1','1','2024-03-14'),(26,'333333','333333',NULL),(27,'QQQQQQQQQQQQQ','QQQQQQQQQQQQQ','2024-03-14'),(28,'飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS','飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS','2024-03-14'),(30,'me but needs me o','ne night, when I was eight, my mother gently asked me a question I would never forget. Sweetie, my company wants to promote（升职） me but needs me to work in Brazil. This is like your teacher telling you that you\'ve done well and allowing you to skip（跳） a grade, but you\'ll have to leave your friends. Would you say yes to your teacher? She gave me a hug and asked me to think about it. I was lost in thoughvisit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to te pendent. I learn how to take cas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to te pendent. I learn how to take cas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to te pendent. I learn how to take cas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to te pendent. I learn how to take care of myself and set high but achievable goals.My mother is now back with us. But I will never forget what the experience has really taught me. I\'ve learned a lot because of this separation（分离）. There are lots of difficult decisions that we have to face in our life. We need to have a positive attitude no matter what happens.','2024-03-14'),(31,'me but needs me o','ne night, when I was eight, my mother gently asked me a question I would never forget. Sweetie, my company wants to promote（升职） me but needs me to work in Brazil. This is like your teacher telling you that you\'ve done well and allowing you to skip（跳） a grade, but you\'ll have to leave your friends. Would you say yes to your teacher? She gave me a hug and asked me to think about it. I was lost in thoughvisit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to te pendent. I learn how to take cas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to te pendent. I learn how to take cas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to te pendent. I learn how to take cas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to te pendent. I learn how to take care of myself and set high but achievable goals.My mother is now back with us. But I will never forget what the experience has really taught me. I\'ve learned a lot because of this separation（分离）. There are lots of difficult decisions that we have to face in our life. We need to have a positive attitude no matter what happens.','2024-03-14'),(32,'1222','1','2024-03-14'),(33,'22222','1','2024-03-14'),(34,'1','1','2024-03-14'),(35,'fwfwfwfwfwfwfwf','fwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwffwfwfwfwfwfwfwf','2024-03-15');
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reading_question`
--

LOCK TABLES `reading_question` WRITE;
/*!40000 ALTER TABLE `reading_question` DISABLE KEYS */;
INSERT INTO `reading_question` VALUES (5,1,'2','2',NULL),(15,16,'2','2',NULL),(16,17,'2','2',NULL),(18,19,'2','2',NULL),(19,20,'2','2',NULL),(24,23,'as break, we flew to Rhow to take c','1',NULL),(25,23,'as broict. I learn how to take c','3',NULL),(26,23,'as break, wo te pendent. I learn how to take c','0',NULL),(27,23,'as break, we. She pendent. I learn how to take c','2',NULL),(28,25,'1','1',NULL),(29,27,'QQQQQQQQQQQQQ','0',NULL),(30,28,'飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS','3',NULL),(31,28,'飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS','1',NULL),(32,28,'飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS','0',NULL),(34,30,'as break, we flew to Rhow to take c','1',NULL),(35,30,'as broict. I learn how to take c','3',NULL),(36,30,'as break, wo te pendent. I learn how to take c','0',NULL),(37,30,'as break, we. She pendent. I learn how to take c','2',NULL),(38,31,'as break, we flew to Rhow to take c','1',NULL),(39,31,'as broict. I learn how to take c','3',NULL),(40,31,'as break, wo te pendent. I learn how to take c','0',NULL),(41,31,'as break, we. She pendent. I learn how to take c','2',NULL),(42,32,'2','222',NULL),(43,NULL,'2','22222',NULL),(44,NULL,'2','222222',NULL),(45,NULL,'2','222222',NULL),(46,33,'2','22222',NULL),(50,26,'33333','3333',NULL),(51,18,'2','2',NULL),(53,34,'1','1',NULL),(54,35,'fwfwfwfwfwfwfwf','fwfwfwfwfwfwfwf',NULL),(55,35,'fwfwfwfwfwfwfwf','fwfwfwfwfwfwfwf',NULL),(59,15,'2','22',NULL),(60,15,'1111111111111111111111111111111111111111111111111111111111111','1111111111111111111111111111111111111111111111111111111111111',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reading_question_option`
--

LOCK TABLES `reading_question_option` WRITE;
/*!40000 ALTER TABLE `reading_question_option` DISABLE KEYS */;
INSERT INTO `reading_question_option` VALUES (12,15,'3',NULL),(13,16,'3',NULL),(15,18,'3',NULL),(16,19,'3',NULL),(33,24,'icult choices she had to make. She needed t',NULL),(34,24,'icult choices ed to te pendent. I leed to te pendent. I leshe had to make. She needed t',NULL),(35,24,'icult choices sed to te pendent. I lehe had to make. She needed t',NULL),(36,24,'icult choiceslehe had to make. She needed t',NULL),(37,25,'icult choices she had to make. She needed t',NULL),(38,25,'icult choices ed to te pendent. I leed to te pendent. I leshe had to make. She needed t',NULL),(39,25,'icult choices sed to te pendent. I lehe had to make. She needed t',NULL),(40,25,'icult choices sed to She needed t',NULL),(41,26,'icult choices she had to make. She needed t',NULL),(42,26,'icult choices ed to te pendent. I leed to te pendent. I leshe had to make. She needed t',NULL),(43,26,'icult choices sed to te pendent. I lehe had to make. She needed t',NULL),(44,26,'icult choices so make. She needed t',NULL),(45,27,'icult choices she had to make. She needed t',NULL),(46,27,'icult choices ed to te pendent. I leed to te pendent. I leshe had to make. She needed t',NULL),(47,27,'icult choices sed to te pendent. I lehe had to make. She needed t',NULL),(48,27,'icult choe had to make. She needed t',NULL),(49,28,'1',NULL),(50,29,'QQQQQQQQQQQQQ',NULL),(51,30,'1飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS',NULL),(52,30,'1飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS',NULL),(53,30,'飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS',NULL),(54,30,'飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS',NULL),(55,31,'飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS',NULL),(56,31,'1111111111111111',NULL),(57,32,'飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS',NULL),(58,32,'飒飒飒试试少时诵诗书少时诵诗书SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS',NULL),(60,34,'icult choices she had to make. She needed t',NULL),(61,34,'icult choices ed to te pendent. I leed to te pendent. I leshe had to make. She needed t',NULL),(62,34,'icult choices sed to te pendent. I lehe had to make. She needed t',NULL),(63,34,'icult choiceslehe had to make. She needed t',NULL),(64,35,'icult choices she had to make. She needed t',NULL),(65,35,'icult choices ed to te pendent. I leed to te pendent. I leshe had to make. She needed t',NULL),(66,35,'icult choices sed to te pendent. I lehe had to make. She needed t',NULL),(67,35,'icult choices sed to She needed t',NULL),(68,36,'icult choices she had to make. She needed t',NULL),(69,36,'icult choices ed to te pendent. I leed to te pendent. I leshe had to make. She needed t',NULL),(70,36,'icult choices sed to te pendent. I lehe had to make. She needed t',NULL),(71,36,'icult choices so make. She needed t',NULL),(72,37,'icult choices she had to make. She needed t',NULL),(73,37,'icult choices ed to te pendent. I leed to te pendent. I leshe had to make. She needed t',NULL),(74,37,'icult choices sed to te pendent. I lehe had to make. She needed t',NULL),(75,37,'icult choe had to make. She needed t',NULL),(76,38,'icult choices she had to make. She needed t',NULL),(77,38,'icult choices ed to te pendent. I leed to te pendent. I leshe had to make. She needed t',NULL),(78,38,'icult choices sed to te pendent. I lehe had to make. She needed t',NULL),(79,38,'icult choiceslehe had to make. She needed t',NULL),(80,39,'icult choices she had to make. She needed t',NULL),(81,39,'icult choices ed to te pendent. I leed to te pendent. I leshe had to make. She needed t',NULL),(82,39,'icult choices sed to te pendent. I lehe had to make. She needed t',NULL),(83,39,'icult choices sed to She needed t',NULL),(84,40,'icult choices she had to make. She needed t',NULL),(85,40,'icult choices ed to te pendent. I leed to te pendent. I leshe had to make. She needed t',NULL),(86,40,'icult choices sed to te pendent. I lehe had to make. She needed t',NULL),(87,40,'icult choices so make. She needed t',NULL),(88,41,'icult choices she had to make. She needed t',NULL),(89,41,'icult choices ed to te pendent. I leed to te pendent. I leshe had to make. She needed t',NULL),(90,41,'icult choices sed to te pendent. I lehe had to make. She needed t',NULL),(91,41,'icult choe had to make. She needed t',NULL),(92,42,'222',NULL),(93,46,'22222',NULL),(97,50,'33333',NULL),(98,51,'3',NULL),(100,53,'1',NULL),(101,54,'fwfwfwfwfwfwfwf',NULL),(102,55,'fwfwfwfwfwfwfwf',NULL),(108,59,'3',NULL),(109,59,'3333',NULL),(110,60,'1111111111111111111111111111111111111111111111111111111111111',NULL);
/*!40000 ALTER TABLE `reading_question_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL,
  `is_admin` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'admin123','123456',0),(4,'admin','111',1),(5,'1','1',0),(6,'12','2',0),(7,'1111111','1111111',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_listening_record`
--

LOCK TABLES `user_listening_record` WRITE;
/*!40000 ALTER TABLE `user_listening_record` DISABLE KEYS */;
INSERT INTO `user_listening_record` VALUES (1,28,5,'www','111',0,'2024-03-17'),(2,30,5,'AAA','TEST',0,'2024-03-17'),(3,30,5,'AA','TEST',0,'2024-03-17'),(4,30,5,'TEST','TEST',1,'2024-03-17'),(5,30,5,'AAA','TEST',0,'2024-03-17'),(6,31,4,'AA','BBB',0,'2024-03-17'),(7,31,4,'AAA','CCCAAA',0,'2024-03-17'),(8,31,4,'AAA','CCCAAA',0,'2024-03-17');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_reading_record`
--

LOCK TABLES `user_reading_record` WRITE;
/*!40000 ALTER TABLE `user_reading_record` DISABLE KEYS */;
INSERT INTO `user_reading_record` VALUES (1,15,4,'1','22',0,'2024-03-17'),(2,15,4,'0','1111111111111111111111111111111111111111111111111111111111111',0,'2024-03-17'),(3,20,4,'0','2',0,'2024-03-17'),(4,23,4,'2','1',0,'2024-03-17'),(5,23,4,'0','3',0,'2024-03-17'),(6,23,4,'0','0',1,'2024-03-17'),(7,23,4,'0','2',0,'2024-03-17'),(8,31,4,'0','1',0,'2024-03-18'),(9,31,4,'1','3',0,'2024-03-18'),(10,31,4,'2','0',0,'2024-03-18'),(11,31,4,'0','2',0,'2024-03-18'),(12,17,4,'0','2',0,'2024-03-18');
/*!40000 ALTER TABLE `user_reading_record` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-18 11:40:44
