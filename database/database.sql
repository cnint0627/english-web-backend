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
-- Table structure for table `reading`
--

DROP TABLE IF EXISTS `reading`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reading` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `create_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reading`
--

LOCK TABLES `reading` WRITE;
/*!40000 ALTER TABLE `reading` DISABLE KEYS */;
INSERT INTO `reading` VALUES (3,'1','1',NULL),(4,'1','1',NULL),(5,'1','1',NULL),(6,'1','1',NULL),(7,'1','1',NULL),(8,'1','1',NULL),(10,'1','1',NULL),(11,'1','1',NULL),(12,'1','1',NULL),(14,'1','1',NULL),(15,'1','1111111111111111111111111111111111111111111111111111111111111',NULL),(16,'1','ne night, when I was eight, my mother gently asked me a question I would never forget. Sweetie, my company wants to promote（升职） me but needs me to work in Brazil. This is like your teacher telling you that you\'ve done well and allowing you to skip（跳） a grade, but you\'ll have to leave your friends. Would you say yes to your teacher? She gave me a hug and asked me to think about it. I was lost in thought. The question kept me wondering for the rest of the night. I had said Yes but for the first time, I realized the difficult decisions adults had to make.For almost four years, my mother would call us from Brazil every day. Every evening I\'d eagerly wait for the phone to ring and then tell her everything that happened during the day. A phone call, however, could never take her place and it was difficult not to feel lonely at times.During my fourth-grade Christmas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to tell me, you wouldn\'t know whether you made the right choice, but you could always make the best out of the situation, with a positive attitude.Back home, I reminded myself that what my mother could do, I could, too. If she managed to live in Rio all by herself, I, too, could learn to be independent. I learn how to take care of myself and set high but achievable goals.My mother is now back with us. But I will never forget what the experience has really taught me. I\'ve learned a lot because of this separation（分离）. There are lots of difficult decisions that we have to face in our life. We need to have a positive attitude no matter what happens.',NULL),(17,'1','ne night, when I was eight, my mother gently asked me a question I would never forget. Sweetie, my company wants to promote（升职） me but needs me to work in Brazil. This is like your teacher telling you that you\'ve done well and allowing you to skip（跳） a grade, but you\'ll have to leave your friends. Would you say yes to your teacher? She gave me a hug and asked me to think about it. I was lost in thought. The question kept me wondering for the rest of the night. I had said Yes but for the first time, I realized the difficult decisions adults had to make.For almost four years, my mother would call us from Brazil every day. Every evening I\'d eagerly wait for the phone to ring and then tell her everything that happened during the day. A phone call, however, could never take her place and it was difficult not to feel lonely at times.During my fourth-grade Christmas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to tell me, you wouldn\'t know whether you made the right choice, but you could always make the best out of the situation, with a positive attitude.Back home, I reminded myself that what my mother could do, I could, too. If she managed to live in Rio all by herself, I, too, could learn to be independent. I learn how to take care of myself and set high but achievable goals.My mother is now back with us. But I will never forget what the experience has really taught me. I\'ve learned a lot because of this separation（分离）. There are lots of difficult decisions that we have to face in our life. We need to have a positive attitude no matter what happens.',NULL),(18,'1','ne night, when I was eight, my mother gently asked me a question I would never forget. Sweetie, my company wants to promote（升职） me but needs me to work in Brazil. This is like your teacher telling you that you\'ve done well and allowing you to skip（跳） a grade, but you\'ll have to leave your friends. Would you say yes to your teacher? She gave me a hug and asked me to think about it. I was lost in thought. The question kept me wondering for the rest of the night. I had said Yes but for the first time, I realized the difficult decisions adults had to make.For almost four years, my mother would call us from Brazil every day. Every evening I\'d eagerly wait for the phone to ring and then tell her everything that happened during the day. A phone call, however, could never take her place and it was difficult not to feel lonely at times.During my fourth-grade Christmas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to tell me, you wouldn\'t know whether you made the right choice, but you could always make the best out of the situation, with a positive attitude.Back home, I reminded myself that what my mother could do, I could, too. If she managed to live in Rio all by herself, I, too, could learn to be independent. I learn how to take care of myself and set high but achievable goals.My mother is now back with us. But I will never forget what the experience has really taught me. I\'ve learned a lot because of this separation（分离）. There are lots of difficult decisions that we have to face in our life. We need to have a positive attitude no matter what happens.',NULL),(19,'1','ne night, when I was eight, my mother gently asked me a question I would never forget. Sweetie, my company wants to promote（升职） me but needs me to work in Brazil. This is like your teacher telling you that you\'ve done well and allowing you to skip（跳） a grade, but you\'ll have to leave your friends. Would you say yes to your teacher? She gave me a hug and asked me to think about it. I was lost in thought. The question kept me wondering for the rest of the night. I had said Yes but for the first time, I realized the difficult decisions adults had to make.For almost four years, my mother would call us from Brazil every day. Every evening I\'d eagerly wait for the phone to ring and then tell her everything that happened during the day. A phone call, however, could never take her place and it was difficult not to feel lonely at times.During my fourth-grade Christmas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to tell me, you wouldn\'t know whether you made the right choice, but you could always make the best out of the situation, with a positive attitude.Back home, I reminded myself that what my mother could do, I could, too. If she managed to live in Rio all by herself, I, too, could learn to be independent. I learn how to take care of myself and set high but achievable goals.My mother is now back with us. But I will never forget what the experience has really taught me. I\'ve learned a lot because of this separation（分离）. There are lots of difficult decisions that we have to face in our life. We need to have a positive attitude no matter what happens.','2024-03-13'),(20,'1','ne night, when I was eight, my mother gently asked me a question I would never forget. Sweetie, my company wants to promote（升职） me but needs me to work in Brazil. This is like your teacher telling you that you\'ve done well and allowing you to skip（跳） a grade, but you\'ll have to leave your friends. Would you say yes to your teacher? She gave me a hug and asked me to think about it. I was lost in thought. The question kept me wondering for the rest of the night. I had said Yes but for the first time, I realized the difficult decisions adults had to make.For almost four years, my mother would call us from Brazil every day. Every evening I\'d eagerly wait for the phone to ring and then tell her everything that happened during the day. A phone call, however, could never take her place and it was difficult not to feel lonely at times.During my fourth-grade Christmas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to tell me, you wouldn\'t know whether you made the right choice, but you could always make the best out of the situation, with a positive attitude.Back home, I reminded myself that what my mother could do, I could, too. If she managed to live in Rio all by herself, I, too, could learn to be independent. I learn how to take care of myself and set high but achievable goals.My mother is now back with us. But I will never forget what the experience has really taught me. I\'ve learned a lot because of this separation（分离）. There are lots of difficult decisions that we have to face in our life. We need to have a positive attitude no matter what happens.','2024-03-13'),(23,'me but needs me o','ne night, when I was eight, my mother gently asked me a question I would never forget. Sweetie, my company wants to promote（升职） me but needs me to work in Brazil. This is like your teacher telling you that you\'ve done well and allowing you to skip（跳） a grade, but you\'ll have to leave your friends. Would you say yes to your teacher? She gave me a hug and asked me to think about it. I was lost in thoughvisit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to te pendent. I learn how to take cas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to te pendent. I learn how to take cas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to te pendent. I learn how to take cas break, we flew to Rio to visit her. Looking at her large empty apartment. It was then I started to understand the difficult choices she had to make. She needed to think about both family and work. Faced with difficult decisions, she used to te pendent. I learn how to take care of myself and set high but achievable goals.My mother is now back with us. But I will never forget what the experience has really taught me. I\'ve learned a lot because of this separation（分离）. There are lots of difficult decisions that we have to face in our life. We need to have a positive attitude no matter what happens.','2024-03-13');
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
  `title` varchar(100) NOT NULL,
  `answer` int NOT NULL,
  `sort_num` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reading_question`
--

LOCK TABLES `reading_question` WRITE;
/*!40000 ALTER TABLE `reading_question` DISABLE KEYS */;
INSERT INTO `reading_question` VALUES (5,1,'2',2,NULL),(6,8,'2',2,NULL),(8,10,'2',2,NULL),(9,12,'2',2,NULL),(12,14,'2',2,NULL),(13,14,'2',2,NULL),(14,15,'2',2,NULL),(15,16,'2',2,NULL),(16,17,'2',2,NULL),(17,18,'2',2,NULL),(18,19,'2',2,NULL),(19,20,'2',2,NULL),(24,23,'as break, we flew to Rhow to take c',1,NULL),(25,23,'as broict. I learn how to take c',3,NULL),(26,23,'as break, wo te pendent. I learn how to take c',0,NULL),(27,23,'as break, we. She pendent. I learn how to take c',2,NULL);
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
  `content` varchar(100) NOT NULL,
  `sort_num` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reading_question_option`
--

LOCK TABLES `reading_question_option` WRITE;
/*!40000 ALTER TABLE `reading_question_option` DISABLE KEYS */;
INSERT INTO `reading_question_option` VALUES (2,9,'3',NULL),(7,12,'3',NULL),(8,12,'4',NULL),(9,13,'3',NULL),(10,13,'4',NULL),(11,14,'3',NULL),(12,15,'3',NULL),(13,16,'3',NULL),(14,17,'3',NULL),(15,18,'3',NULL),(16,19,'3',NULL),(33,24,'icult choices she had to make. She needed t',NULL),(34,24,'icult choices ed to te pendent. I leed to te pendent. I leshe had to make. She needed t',NULL),(35,24,'icult choices sed to te pendent. I lehe had to make. She needed t',NULL),(36,24,'icult choiceslehe had to make. She needed t',NULL),(37,25,'icult choices she had to make. She needed t',NULL),(38,25,'icult choices ed to te pendent. I leed to te pendent. I leshe had to make. She needed t',NULL),(39,25,'icult choices sed to te pendent. I lehe had to make. She needed t',NULL),(40,25,'icult choices sed to She needed t',NULL),(41,26,'icult choices she had to make. She needed t',NULL),(42,26,'icult choices ed to te pendent. I leed to te pendent. I leshe had to make. She needed t',NULL),(43,26,'icult choices sed to te pendent. I lehe had to make. She needed t',NULL),(44,26,'icult choices so make. She needed t',NULL),(45,27,'icult choices she had to make. She needed t',NULL),(46,27,'icult choices ed to te pendent. I leed to te pendent. I leshe had to make. She needed t',NULL),(47,27,'icult choices sed to te pendent. I lehe had to make. She needed t',NULL),(48,27,'icult choe had to make. She needed t',NULL);
/*!40000 ALTER TABLE `reading_question_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'admin123','123456'),(4,'admin','111'),(5,'1','1'),(6,'12','2');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-13 22:55:28
