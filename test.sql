CREATE DATABASE  IF NOT EXISTS `shudong` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `shudong`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 34.41.117.214    Database: shudong
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `user_id` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `staff_id` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `staff` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `nickname` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `title` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `content` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `color` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `comment` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES ('240414126508496584704',NULL,'5','../../static/staffIcon/5.png','匿名','shudong','I love you','#007AFF','me too','2024-04-14 20:45:24'),('240414170263427678208',NULL,'3','../../static/staffIcon/3.png','一块饼干的故事','shudong','I like cat!','#4CD964',NULL,'2024-04-14 22:33:08'),('240414170300918464512',NULL,'5','../../static/staffIcon/5.png','匿名','shudong','Today is so busy ','#FFFF00','lol ','2024-04-14 22:33:26'),('240414170379240800256',NULL,'3','../../static/staffIcon/3.png','匿名','shudong','Civil war is a good movie!','#007AFF','I agree','2024-04-14 22:34:03'),('240414170480046702592',NULL,'8','../../static/staffIcon/8.png','匿名','shudong','I am angry!','#DD524D','Take easy man','2024-04-14 22:34:51'),('240414170586431029248',NULL,'2','../../static/staffIcon/2.png','长毛的饮水机','shudong','I need a job!','#DBA503','Yes you are ','2024-04-14 22:35:42'),('240414170685318037504',NULL,'2','../../static/staffIcon/2.png','香蕉船的舵手','shudong','My favorite book: Three Body','#4CD964','Cool','2024-04-14 22:36:29'),('240414170857198518272',NULL,'1','../../static/staffIcon/1.png','匿名','shudong','Anybody want to go the gym?','#FFFF00','Yeah let’s go ','2024-04-14 22:37:51'),('240414170956788072448',NULL,'7','../../static/staffIcon/7.png','匿名','shudong','I am soooooo happy ','#4CD964','Cool','2024-04-14 22:38:39'),('240414171020478578688',NULL,'4','../../static/staffIcon/4.png','匿名','shudong','I want to sleep','#000000','Then sleep','2024-04-14 22:39:09'),('240414171187000836096',NULL,'3','../../static/staffIcon/3.png','匿名','shudong','Dog or cat?','#4CD964','Cat absolutely','2024-04-14 22:40:28'),('240414177146437828608',NULL,'1','../../static/staffIcon/1.png','甜甜圈的梦想','shudong','Good','#007AFF','Good','2024-04-14 23:27:50');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `username` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `role` int DEFAULT NULL COMMENT '0 member 1 admin',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('1','大块头',1,'2021-01-23 12:27:05'),('2','警察叔叔',1,'2021-01-23 12:27:05'),('3','学渣',1,'2021-01-23 12:27:05'),('4','英语老师',1,'2021-01-23 12:27:05'),('5','邻家小妹',1,'2021-01-23 12:27:05'),('6','小憨憨',1,'2021-01-23 12:27:05'),('7','机器人',1,'2021-01-23 12:27:05'),('8','班主任',1,'2021-01-23 12:27:05');
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

-- Dump completed on 2024-04-14 19:33:25
