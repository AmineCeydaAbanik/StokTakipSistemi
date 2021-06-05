-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: stokproje
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `personel`
--

DROP TABLE IF EXISTS `personel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Adi` varchar(45) DEFAULT NULL,
  `Soyadi` varchar(45) DEFAULT NULL,
  `DogumTarihi` datetime DEFAULT NULL,
  `Cinsiet` int DEFAULT NULL,
  `Sube` int DEFAULT NULL,
  `Yetki` int DEFAULT NULL,
  `IseGirisTarihi` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `SubePersonel_idx` (`Sube`),
  CONSTRAINT `SubePersonel` FOREIGN KEY (`Sube`) REFERENCES `sube` (`idSube`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personel`
--

LOCK TABLES `personel` WRITE;
/*!40000 ALTER TABLE `personel` DISABLE KEYS */;
INSERT INTO `personel` VALUES (1,'isim1','soyisim1','1980-01-01 00:00:01',0,5,1,'2020-01-01 00:00:01'),(2,'isim2','soyisim2','1980-01-01 00:00:01',0,5,1,'2020-01-01 00:00:01'),(3,'isim3','soyisim3','1980-01-01 00:00:01',0,5,1,'2020-01-01 00:00:01'),(4,'isim4','soyisim4','1980-01-01 00:00:01',0,5,1,'2020-01-01 00:00:01'),(5,'isim5','soyisim5','1980-01-01 00:00:01',0,5,1,'2020-01-01 00:00:01'),(6,'isim6','soyisim6','1980-01-01 00:00:01',0,5,1,'2020-01-01 00:00:01'),(7,'isim7','soyisim7','1980-01-01 00:00:01',0,5,1,'2020-01-01 00:00:01'),(8,'isim8','soyisim8','1980-01-01 00:00:01',0,5,1,'2020-01-01 00:00:01'),(9,'isim9','soyisim9','1980-01-01 00:00:01',0,5,1,'2020-01-01 00:00:01'),(10,'isim10','soyisim10','1980-01-01 00:00:01',0,5,1,'2020-01-01 00:00:01'),(11,'isim11','soyisim11','1980-01-01 00:00:01',0,5,1,'2020-01-01 00:00:01');
/*!40000 ALTER TABLE `personel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-23  3:58:11
