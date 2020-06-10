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
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (1,'굽네치킨','chicken','경기도 용인시 수지구 죽전동 425-2 108호','031-263-9294'),(2,'BBQ','chicken','경기 용인시 수지구 푸른솔로 88','0504-3142-1149'),(3,'노랑통닭','chicken','경기도 용인시 기흥구 보정동 1197-3 호암프라자 101호','031-889-4208'),(4,'교촌치킨','chicken','경기 용인시 수지구 탄천상로 7','031-265-6222'),(5,'처갓집양념치킨','chicken','경기 용인시 수지구 현암로 76','050-7744-8607'),(6,'유로코피자','pizza','경기 용인시 수지구 푸른솔로 88 상가동 103호','031-898-1828'),(7,'7번가피자','pizza','경기 용인시 수지구 죽전로 150','031-897-7757'),(8,'미스터피자','pizza','경기 용인시 수지구 죽전로 162','031-261-2007'),(9,'피자애','pizza','경기 용인시 기흥구 죽전로 46','031-261-0045'),(10,'피자알볼로','pizza','경기 용인시 수지구 현암로 119','031-265-8495'),(11,'홍콩반점','chinese','경기 용인시 수지구 죽전로144번길 7-5','031-889-4477'),(12,'산이네해물짬뽕','chinese','경기 용인시 수지구 달맞이로 71','031-898-0404'),(13,'진룽마라탕','chinese','경기 용인시 기흥구 죽전로 17 풍산프라자 104호','070-7576-2889'),(14,'홍춘','chinese','경기 용인시 수지구 죽전로168번길 7 승은프라자 1층','031-264-7798'),(15,'더진국','korean','경기 용인시 수지구 죽전로168번길 20','031-889-1910'),(16,'BN부대찌개','korean','경기 용인시 수지구 죽전로144번길 15-7','031-265-5853'),(17,'얌샘김밥','korean','경기 용인시 수지구 죽전로 172','031-889-2327'),(18,'내가찜한닭','korean','경기 용인시 수지구 죽전로168번길 21','031-264-7889'),(19,'돈까스담다','japanese','경기 용인시 기흥구 죽전로 33 이데아프라자','031-265-0902'),(20,'우메다','japanese','경기 용인시 수지구 죽전로144번길 8','070-4106-6014'),(21,'미소야','japanese','경기 용인시 수지구 죽전로144번길 4-1','031-889-2707'),(22,'코이라멘','japanese','경기 용인시 기흥구 죽전로 7','031-263-9561'),(23,'모자족발','jokbal','경기 용인시 기흥구 죽현로 8-20','031-897-5977'),(24,'더맛있는족발보쌈','jokbal','경기 용인시 기흥구 죽전로 20','031-261-2090'),(25,'족타구나','jokbal','경기 용인시 수지구 죽전로144번길 7-5 단대로데오타워 107호','031-889-5382'),(26,'원할머니보쌈','jokbal','경기 용인시 수지구 대지로 125','031-889-5355'),(27,'가장맛있는족발','jokbal','경기 용인시 기흥구 죽전로 20','031-262-5849'),(28,'쪽갈비에미치닭','yasik','경기 용인시 수지구 대지로 62','031-261-0110'),(29,'인생극장쪽갈비','yasik','경기 용인시 기흥구 죽전로 3','010-8525-9352'),(30,'호미곶간','yasik','경기 용인시 기흥구 죽현로 8-13','031-276-5253');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
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
