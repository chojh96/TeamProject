-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: sampledb
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `value` int DEFAULT NULL,
  `storeid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `storeid` (`storeid`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`storeid`) REFERENCES `stores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'갈비천왕',17000,1),(2,'볼케이노',17000,1),(3,'오리지널',15000,1),(4,'고르곤졸라',17900,6),(5,'와규 치즈 불닭',19900,6),(6,'골든 큐브 스테이크',23900,6),(7,'리치고구마치킨',20400,7),(8,'7번가스페셜',22900,7),(9,'샘스테이크',29500,7),(10,'황금올리브',18000,2),(11,'자메이카 통다리',19500,2),(12,'써프라이드',19900,2),(13,'엄청 큰 후라이드',17000,3),(14,'웰빙 파닭',19000,3),(15,'고바치',20000,3),(16,'교촌허니콤보',18000,4),(17,'교촌레드콤보',18000,4),(18,'교촌반반콤보',18000,4),(19,'슈프림양념치킨',18000,5),(20,'와락치킨',18000,5),(21,'핫불훈제치킨',19000,5),(22,'올댓미트',28000,8),(23,'아모르파티',28500,8),(24,'치즈블라썸스테이크',28500,8),(25,'떡갈비 피자',10000,9),(26,'새우 피자',12000,9),(27,'파스트라미 피자',12000,9),(28,'옥수수 피자',22000,10),(29,'목동 피자',22000,10),(30,'팔도 피자',28000,10),(31,'짜장면',4500,11),(32,'짬뽕',5500,11),(33,'탕수육',13000,11),(34,'얼큰국밥',7500,15),(35,'직화물냉면',7500,15),(36,'수육백반정식',12000,15),(37,'치즈돈까스',7500,19),(38,'새우튀김',3000,19),(39,'고로케',3000,19),(40,'족발',23000,23),(41,'매운족발',23000,23),(42,'보쌈',25000,23),(43,'직화양념 쪽갈비',24000,28),(44,'허브소금구이 쪽갈비',24000,28),(45,'치킨닭다리 순살바베큐',22000,28);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-06 13:38:35
