-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: lcs2_mantenimiento
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `mantenimiento`
--

DROP TABLE IF EXISTS `mantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantenimiento` (
  `mantenimientoId` int NOT NULL AUTO_INCREMENT,
  `vehiculoId` int NOT NULL,
  `fechaServicio` date NOT NULL,
  `tipoServicio` varchar(100) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `costo` decimal(10,2) NOT NULL,
  `estado` varchar(20) DEFAULT 'Completado',
  PRIMARY KEY (`mantenimientoId`),
  KEY `idx_mantenimiento_vehiculo` (`vehiculoId`),
  CONSTRAINT `mantenimiento_ibfk_1` FOREIGN KEY (`vehiculoId`) REFERENCES `vehiculo` (`vehiculoId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantenimiento`
--

LOCK TABLES `mantenimiento` WRITE;
/*!40000 ALTER TABLE `mantenimiento` DISABLE KEYS */;
INSERT INTO `mantenimiento` VALUES (1,92,'2020-07-11','Reparación motor','Servicio realizado en taller Querétaro',1236.82,'Completado'),(2,88,'2021-10-14','Alineación','Servicio realizado en taller Querétaro',526.93,'En Proceso'),(3,44,'2023-01-28','Rotación de llantas','Servicio realizado en taller Querétaro',3244.78,'Pendiente'),(4,57,'2021-01-20','Balanceo','Servicio realizado en taller Querétaro',2259.34,'En Proceso'),(5,56,'2021-10-10','Revisión de frenos','Servicio realizado en taller Monterrey',2294.09,'En Proceso'),(6,23,'2023-12-05','Reparación motor','Servicio realizado en taller Monterrey',2250.66,'Pendiente'),(7,72,'2022-01-30','Rotación de llantas','Servicio realizado en taller Guadalajara',1287.90,'Pendiente'),(8,79,'2020-10-14','Balanceo','Servicio realizado en taller Pachuca',1301.27,'Pendiente'),(9,19,'2022-04-14','Cambio de aceite','Servicio realizado en taller Guadalajara',1978.17,'Completado'),(10,83,'2021-07-02','Rotación de llantas','Servicio realizado en taller Pachuca',869.15,'Completado'),(11,19,'2022-07-29','Alineación','Servicio realizado en taller Pachuca',2538.17,'Pendiente'),(12,44,'2022-02-19','Rotación de llantas','Servicio realizado en taller CDMX',2593.43,'Pendiente'),(13,3,'2022-11-03','Rotación de llantas','Servicio realizado en taller Querétaro',590.03,'En Proceso'),(14,4,'2023-12-01','Revisión de frenos','Servicio realizado en taller Pachuca',2712.99,'Completado'),(15,69,'2023-10-16','Revisión de frenos','Servicio realizado en taller Querétaro',1473.41,'Completado'),(16,59,'2022-07-30','Rotación de llantas','Servicio realizado en taller Pachuca',1488.80,'Completado'),(17,57,'2022-01-30','Cambio de filtros','Servicio realizado en taller Pachuca',809.96,'En Proceso'),(18,74,'2021-12-04','Sistema eléctrico','Servicio realizado en taller Guadalajara',1667.66,'Pendiente'),(19,41,'2021-02-27','Cambio de aceite','Servicio realizado en taller Querétaro',2480.06,'Pendiente'),(20,47,'2022-11-17','Sistema eléctrico','Servicio realizado en taller Monterrey',2766.32,'Completado'),(21,33,'2023-01-10','Alineación','Servicio realizado en taller CDMX',3118.67,'En Proceso'),(22,40,'2020-10-11','Cambio de filtros','Servicio realizado en taller Querétaro',2438.76,'En Proceso'),(23,2,'2023-12-15','Alineación','Servicio realizado en taller Guadalajara',2870.10,'Completado'),(24,79,'2023-08-08','Reparación motor','Servicio realizado en taller CDMX',1770.83,'Completado'),(25,20,'2023-01-19','Sistema eléctrico','Servicio realizado en taller CDMX',1409.71,'Completado'),(26,69,'2021-12-15','Rotación de llantas','Servicio realizado en taller Guadalajara',2072.17,'Pendiente'),(27,24,'2023-10-27','Cambio de filtros','Servicio realizado en taller Guadalajara',2336.52,'Pendiente'),(28,63,'2021-11-18','Revisión de frenos','Servicio realizado en taller Pachuca',2965.00,'Pendiente'),(29,5,'2020-08-12','Balanceo','Servicio realizado en taller CDMX',568.85,'Completado'),(30,48,'2020-03-26','Reparación motor','Servicio realizado en taller Pachuca',2460.84,'Completado'),(31,87,'2023-09-16','Cambio de filtros','Servicio realizado en taller Monterrey',805.26,'Pendiente'),(32,29,'2021-03-15','Balanceo','Servicio realizado en taller Guadalajara',1228.68,'Pendiente'),(33,97,'2020-01-16','Rotación de llantas','Servicio realizado en taller Guadalajara',1142.07,'Pendiente'),(34,70,'2023-10-10','Rotación de llantas','Servicio realizado en taller Monterrey',865.40,'Pendiente'),(35,26,'2022-02-23','Cambio de filtros','Servicio realizado en taller Pachuca',3256.37,'En Proceso'),(36,22,'2021-03-09','Cambio de filtros','Servicio realizado en taller Querétaro',3038.46,'Pendiente'),(37,57,'2021-09-06','Rotación de llantas','Servicio realizado en taller Querétaro',3152.33,'Pendiente'),(38,90,'2021-07-25','Cambio de aceite','Servicio realizado en taller Monterrey',2673.94,'En Proceso'),(39,92,'2021-05-28','Reparación motor','Servicio realizado en taller CDMX',760.91,'En Proceso'),(40,93,'2021-04-24','Cambio de filtros','Servicio realizado en taller Guadalajara',2440.53,'Pendiente'),(41,69,'2022-11-04','Rotación de llantas','Servicio realizado en taller Pachuca',1872.45,'Completado'),(42,98,'2020-04-30','Alineación','Servicio realizado en taller Querétaro',2456.67,'Completado'),(43,40,'2020-08-30','Balanceo','Servicio realizado en taller Monterrey',2002.99,'Completado'),(44,30,'2024-05-06','Cambio de aceite','Servicio realizado en taller Monterrey',3087.32,'Completado'),(45,68,'2020-11-17','Sistema eléctrico','Servicio realizado en taller CDMX',2930.08,'Pendiente'),(46,47,'2021-08-14','Alineación','Servicio realizado en taller CDMX',2620.34,'Pendiente'),(47,24,'2022-06-15','Cambio de aceite','Servicio realizado en taller Querétaro',2683.15,'Completado'),(48,96,'2020-05-29','Balanceo','Servicio realizado en taller Guadalajara',3029.03,'Completado'),(49,60,'2023-12-31','Reparación motor','Servicio realizado en taller Pachuca',1236.28,'Pendiente'),(50,74,'2024-05-09','Reparación motor','Servicio realizado en taller Querétaro',3235.76,'Completado'),(51,45,'2020-06-24','Rotación de llantas','Servicio realizado en taller Guadalajara',903.91,'En Proceso'),(52,61,'2023-07-28','Revisión de frenos','Servicio realizado en taller Querétaro',2329.08,'En Proceso'),(53,20,'2023-04-23','Rotación de llantas','Servicio realizado en taller Guadalajara',3398.50,'Pendiente'),(54,60,'2023-12-09','Cambio de filtros','Servicio realizado en taller Guadalajara',2994.05,'Pendiente'),(55,54,'2021-01-12','Balanceo','Servicio realizado en taller CDMX',1762.90,'En Proceso'),(56,70,'2021-05-10','Alineación','Servicio realizado en taller CDMX',1717.37,'Pendiente'),(57,60,'2020-06-13','Cambio de filtros','Servicio realizado en taller CDMX',1278.76,'En Proceso'),(58,47,'2024-05-09','Balanceo','Servicio realizado en taller Querétaro',2053.09,'Completado'),(59,76,'2022-07-09','Balanceo','Servicio realizado en taller CDMX',697.53,'Completado'),(60,65,'2023-03-10','Cambio de filtros','Servicio realizado en taller CDMX',1846.79,'Completado'),(61,25,'2021-02-24','Balanceo','Servicio realizado en taller Pachuca',3196.28,'Completado'),(62,83,'2023-07-14','Balanceo','Servicio realizado en taller CDMX',1303.95,'Completado'),(63,4,'2022-11-19','Rotación de llantas','Servicio realizado en taller Pachuca',1758.83,'Completado'),(64,22,'2023-06-30','Revisión de frenos','Servicio realizado en taller CDMX',1967.86,'En Proceso'),(65,25,'2022-08-24','Revisión de frenos','Servicio realizado en taller Monterrey',835.00,'Pendiente'),(66,60,'2022-09-26','Revisión de frenos','Servicio realizado en taller Guadalajara',3340.26,'En Proceso'),(67,100,'2023-11-06','Alineación','Servicio realizado en taller CDMX',2599.97,'En Proceso'),(68,67,'2021-04-02','Alineación','Servicio realizado en taller CDMX',3379.56,'Completado'),(69,46,'2020-04-26','Cambio de aceite','Servicio realizado en taller Guadalajara',3287.86,'Completado'),(70,65,'2021-08-15','Sistema eléctrico','Servicio realizado en taller Monterrey',2086.79,'Completado'),(71,84,'2021-05-23','Cambio de aceite','Servicio realizado en taller Monterrey',910.04,'Completado'),(72,82,'2021-07-23','Revisión de frenos','Servicio realizado en taller Monterrey',2874.31,'Completado'),(73,12,'2023-01-28','Rotación de llantas','Servicio realizado en taller Guadalajara',2921.35,'Completado'),(74,97,'2022-09-03','Rotación de llantas','Servicio realizado en taller Querétaro',532.58,'En Proceso'),(75,92,'2021-09-28','Rotación de llantas','Servicio realizado en taller Pachuca',2066.67,'En Proceso'),(76,68,'2020-03-05','Rotación de llantas','Servicio realizado en taller Guadalajara',826.93,'En Proceso'),(77,56,'2022-10-13','Balanceo','Servicio realizado en taller Guadalajara',3094.70,'Completado'),(78,78,'2020-03-12','Sistema eléctrico','Servicio realizado en taller CDMX',1159.30,'Pendiente'),(79,4,'2021-08-24','Reparación motor','Servicio realizado en taller Guadalajara',850.59,'En Proceso'),(80,37,'2020-11-27','Sistema eléctrico','Servicio realizado en taller Pachuca',1735.86,'Pendiente'),(81,44,'2021-08-06','Balanceo','Servicio realizado en taller Monterrey',697.29,'Pendiente'),(82,53,'2021-10-17','Alineación','Servicio realizado en taller Pachuca',557.83,'Pendiente'),(83,21,'2022-01-28','Reparación motor','Servicio realizado en taller CDMX',1690.90,'Pendiente'),(84,79,'2024-03-16','Alineación','Servicio realizado en taller CDMX',768.60,'En Proceso'),(85,82,'2021-01-19','Cambio de filtros','Servicio realizado en taller Pachuca',2877.59,'Pendiente'),(86,36,'2024-01-10','Balanceo','Servicio realizado en taller Querétaro',881.51,'Pendiente'),(87,55,'2021-07-27','Rotación de llantas','Servicio realizado en taller Guadalajara',1270.93,'Completado'),(88,40,'2023-11-01','Rotación de llantas','Servicio realizado en taller CDMX',728.48,'En Proceso'),(89,73,'2022-01-10','Rotación de llantas','Servicio realizado en taller CDMX',3436.06,'Completado'),(90,40,'2023-06-27','Reparación motor','Servicio realizado en taller Monterrey',1190.05,'En Proceso'),(91,35,'2024-01-08','Balanceo','Servicio realizado en taller Querétaro',1165.02,'Completado'),(92,31,'2024-02-29','Reparación motor','Servicio realizado en taller CDMX',675.40,'En Proceso'),(93,62,'2020-01-21','Rotación de llantas','Servicio realizado en taller Pachuca',1777.56,'Completado'),(94,21,'2023-03-12','Cambio de aceite','Servicio realizado en taller Querétaro',3011.75,'Completado'),(95,60,'2021-04-11','Cambio de filtros','Servicio realizado en taller Monterrey',2724.98,'Completado'),(96,91,'2021-12-25','Balanceo','Servicio realizado en taller CDMX',1143.18,'Pendiente'),(97,17,'2024-01-13','Cambio de aceite','Servicio realizado en taller Querétaro',3093.29,'Pendiente'),(98,34,'2021-04-19','Alineación','Servicio realizado en taller Monterrey',1611.86,'Completado'),(99,62,'2022-11-01','Alineación','Servicio realizado en taller Querétaro',2841.64,'Pendiente'),(100,36,'2024-03-24','Reparación motor','Servicio realizado en taller Querétaro',1025.51,'Completado');
/*!40000 ALTER TABLE `mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculo`
--

DROP TABLE IF EXISTS `vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculo` (
  `vehiculoId` int NOT NULL AUTO_INCREMENT,
  `flotillaId` int NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `anio` int NOT NULL,
  `estado` varchar(20) DEFAULT 'Activo',
  `fechaVerificacion` date DEFAULT NULL,
  PRIMARY KEY (`vehiculoId`),
  KEY `idx_vehiculo_flotilla` (`flotillaId`),
  CONSTRAINT `vehiculo_ibfk_1` FOREIGN KEY (`flotillaId`) REFERENCES `flotilla` (`flotillaId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculo`
--

LOCK TABLES `vehiculo` WRITE;
/*!40000 ALTER TABLE `vehiculo` DISABLE KEYS */;
INSERT INTO `vehiculo` VALUES (1,8,'Pickup','Volvo VNL','International',2023,'Mantenimiento',NULL),(2,74,'SUV','Isuzu NPR','Freightliner',2015,'Inactivo',NULL),(3,36,'Pickup','Kenworth T680','Mercedes-Benz',2021,'Mantenimiento',NULL),(4,13,'SUV','Chevrolet Silverado','Isuzu',2018,'En Ruta',NULL),(5,51,'Camión','Ram 1500','Chevrolet',2017,'Inactivo',NULL),(6,95,'Pickup','Ford F-150','Ram',2023,'Activo',NULL),(7,23,'Pickup','Volvo VNL','Ram',2017,'Activo',NULL),(8,76,'Camión','Mack Anthem','Volvo',2011,'Activo',NULL),(9,39,'Pickup','Ford F-150','International',2010,'En Ruta',NULL),(10,50,'SUV','Mack Anthem','Peterbilt',2024,'En Ruta',NULL),(11,4,'Sedán','Peterbilt 579','Chevrolet',2014,'En Ruta',NULL),(12,91,'Tráiler','Ford F-150','Freightliner',2015,'Inactivo',NULL),(13,86,'Pickup','Freightliner M2','International',2013,'En Ruta',NULL),(14,41,'Pickup','Isuzu NPR','Ram',2022,'En Ruta',NULL),(15,59,'Furgón','Ram 1500','Kenworth',2018,'Activo',NULL),(16,58,'SUV','Kenworth T680','International',2021,'Inactivo',NULL),(17,53,'Sedán','Mack Anthem','Ford',2014,'En Ruta',NULL),(18,59,'Tráiler','Peterbilt 579','International',2020,'En Ruta',NULL),(19,81,'Camión','Peterbilt 579','Ram',2013,'En Ruta',NULL),(20,58,'Tráiler','Hino 338','Isuzu',2017,'Inactivo',NULL),(21,26,'Pickup','Chevrolet Silverado','Volvo',2017,'En Ruta',NULL),(22,43,'Tráiler','Isuzu NPR','Mercedes-Benz',2013,'Inactivo',NULL),(23,34,'SUV','Kenworth T680','Kenworth',2010,'Activo',NULL),(24,64,'SUV','Freightliner Cascadia','Ram',2020,'Mantenimiento',NULL),(25,41,'Camión','International LT','Peterbilt',2018,'En Ruta',NULL),(26,93,'SUV','International LT','Kenworth',2010,'Mantenimiento',NULL),(27,24,'SUV','International LT','Kenworth',2012,'Activo',NULL),(28,85,'Camión','Hino 338','Chevrolet',2010,'Activo',NULL),(29,83,'Pickup','Peterbilt 579','Ford',2012,'En Ruta',NULL),(30,40,'Camión','International LT','Kenworth',2011,'En Ruta',NULL),(31,45,'Furgón','Ford F-150','Mercedes-Benz',2014,'En Ruta',NULL),(32,51,'Sedán','Hino 338','Peterbilt',2013,'Mantenimiento',NULL),(33,81,'Camión','Freightliner Cascadia','Ram',2023,'Activo',NULL),(34,70,'Tráiler','Peterbilt 579','Kenworth',2021,'Activo',NULL),(35,73,'Pickup','Mack Anthem','Peterbilt',2014,'Inactivo',NULL),(36,73,'Camión','Mack Anthem','Kenworth',2020,'Inactivo',NULL),(37,21,'Camión','Mack Anthem','Mercedes-Benz',2022,'Mantenimiento',NULL),(38,5,'SUV','Ram 1500','Peterbilt',2014,'Mantenimiento',NULL),(39,38,'Furgón','Ford F-150','Kenworth',2010,'Mantenimiento',NULL),(40,36,'Tráiler','Mercedes-Benz Sprinter','Ram',2011,'Mantenimiento',NULL),(41,53,'Furgón','Mack Anthem','Mercedes-Benz',2018,'Activo',NULL),(42,49,'SUV','International LT','Kenworth',2014,'En Ruta',NULL),(43,3,'SUV','Isuzu NPR','Peterbilt',2020,'Mantenimiento',NULL),(44,27,'Sedán','Chevrolet Silverado','Ram',2017,'Activo',NULL),(45,92,'Furgón','Freightliner Cascadia','Isuzu',2022,'Mantenimiento',NULL),(46,87,'Pickup','Western Star 5700','Freightliner',2019,'En Ruta',NULL),(47,70,'SUV','Mercedes-Benz Sprinter','Chevrolet',2017,'Inactivo',NULL),(48,68,'Furgón','Kenworth T680','International',2022,'En Ruta',NULL),(49,39,'Pickup','Mack Anthem','Peterbilt',2015,'Inactivo',NULL),(50,5,'Furgón','Mack Anthem','Isuzu',2011,'Inactivo',NULL),(51,40,'SUV','Hino 338','International',2023,'Activo',NULL),(52,1,'Pickup','Freightliner Cascadia','Kenworth',2015,'En Ruta',NULL),(53,71,'Pickup','Volvo VNL','Chevrolet',2010,'Activo',NULL),(54,20,'Sedán','Ford Transit','Chevrolet',2012,'En Ruta',NULL),(55,50,'Furgón','Freightliner M2','Kenworth',2014,'En Ruta',NULL),(56,49,'SUV','Chevrolet Silverado','Mercedes-Benz',2024,'Activo',NULL),(57,34,'Sedán','Hino 338','Freightliner',2024,'Inactivo',NULL),(58,6,'Pickup','Ram 1500','Isuzu',2016,'Activo',NULL),(59,94,'Pickup','Freightliner Cascadia','Chevrolet',2022,'Mantenimiento',NULL),(60,4,'Tráiler','Kenworth T680','Volvo',2015,'Mantenimiento',NULL),(61,79,'SUV','International LT','Volvo',2012,'Mantenimiento',NULL),(62,78,'Camión','Kenworth T680','Chevrolet',2021,'Inactivo',NULL),(63,32,'Furgón','International LT','Freightliner',2014,'Inactivo',NULL),(64,88,'SUV','Isuzu NPR','Ford',2021,'Activo',NULL),(65,17,'Pickup','Peterbilt 579','Chevrolet',2014,'Inactivo',NULL),(66,78,'Pickup','Hino 338','Isuzu',2018,'En Ruta',NULL),(67,54,'Camión','Peterbilt 579','Ford',2014,'En Ruta',NULL),(68,10,'Camión','Freightliner M2','Chevrolet',2014,'Inactivo',NULL),(69,56,'Pickup','Ford Transit','Volvo',2024,'Mantenimiento',NULL),(70,47,'Pickup','International LT','Isuzu',2023,'Mantenimiento',NULL),(71,72,'Camión','Isuzu NPR','Mercedes-Benz',2014,'En Ruta',NULL),(72,42,'Pickup','Ford F-150','Peterbilt',2021,'Inactivo',NULL),(73,46,'SUV','Freightliner Cascadia','Freightliner',2016,'Inactivo',NULL),(74,43,'Sedán','Ram 1500','Ford',2012,'Mantenimiento',NULL),(75,81,'Tráiler','Hino 338','Kenworth',2022,'Mantenimiento',NULL),(76,12,'Pickup','Western Star 5700','Chevrolet',2016,'Mantenimiento',NULL),(77,8,'Pickup','Chevrolet Silverado','Chevrolet',2020,'En Ruta',NULL),(78,67,'Camión','Peterbilt 579','Volvo',2010,'Inactivo',NULL),(79,81,'Tráiler','Kenworth T680','Mercedes-Benz',2023,'En Ruta',NULL),(80,76,'Camión','Volvo VNL','Peterbilt',2017,'Mantenimiento',NULL),(81,41,'Sedán','Peterbilt 579','Ford',2010,'Mantenimiento',NULL),(82,28,'Sedán','Volvo VNL','International',2022,'En Ruta',NULL),(83,16,'Sedán','Chevrolet Silverado','Freightliner',2013,'En Ruta',NULL),(84,14,'SUV','International LT','Peterbilt',2022,'En Ruta',NULL),(85,55,'SUV','Freightliner M2','Chevrolet',2018,'En Ruta',NULL),(86,35,'Tráiler','Peterbilt 579','International',2017,'Activo',NULL),(87,54,'Camión','Ram 1500','International',2020,'Activo',NULL),(88,40,'SUV','Chevrolet Silverado','Volvo',2012,'Inactivo',NULL),(89,16,'Tráiler','Chevrolet Silverado','Ram',2014,'Activo',NULL),(90,24,'Pickup','Mack Anthem','Chevrolet',2021,'En Ruta',NULL),(91,86,'SUV','Chevrolet Silverado','Mercedes-Benz',2024,'Mantenimiento',NULL),(92,53,'SUV','Kenworth T680','Ford',2014,'En Ruta',NULL),(93,47,'SUV','Volvo VNL','International',2023,'Activo',NULL),(94,73,'Furgón','Western Star 5700','Volvo',2014,'En Ruta',NULL),(95,49,'Sedán','Isuzu NPR','Freightliner',2011,'Activo',NULL),(96,91,'Sedán','Mercedes-Benz Sprinter','Kenworth',2017,'En Ruta',NULL),(97,36,'Furgón','Peterbilt 579','Mercedes-Benz',2020,'En Ruta',NULL),(98,43,'Furgón','Mercedes-Benz Sprinter','Mercedes-Benz',2015,'Mantenimiento',NULL),(99,52,'Pickup','Chevrolet Silverado','Ford',2013,'Inactivo',NULL),(100,17,'Camión','Kenworth T680','Peterbilt',2015,'En Ruta',NULL);
/*!40000 ALTER TABLE `vehiculo` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insertLCS1` AFTER INSERT ON `vehiculo` FOR EACH ROW begin
	insert into lcs1_principal.vehiculo(vehiculoid,flotillaid,tipo,modelo,marca,anio,estado,fechaVerificacion)
	values(new.vehiculoid,new.flotillaid,new.tipo,new.modelo,new.marca,new.anio,new.estado,new.fechaVerificacion);
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insertLCS3` AFTER INSERT ON `vehiculo` FOR EACH ROW begin
	insert into lcs3_rutas.vehiculo(vehiculoid,flotillaid,tipo,modelo,marca,anio,estado,fechaVerificacion)
	values(new.vehiculoid,new.flotillaid,new.tipo,new.modelo,new.marca,new.anio,new.estado,new.fechaVerificacion);
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `updateLCS1` AFTER UPDATE ON `vehiculo` FOR EACH ROW BEGIN
    UPDATE lcs1_principal.vehiculo
    SET 
        estado = NEW.estado
    WHERE vehiculoid = NEW.vehiculoid;
END */;;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `updateLCS3` AFTER UPDATE ON `vehiculo` FOR EACH ROW BEGIN
    UPDATE lcs3_rutas.vehiculo
    SET 
        estado = NEW.estado
    WHERE vehiculoid = NEW.vehiculoid;
END */;;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `deleteLCS1` AFTER DELETE ON `vehiculo` FOR EACH ROW BEGIN
    DELETE FROM lcs1_principal.vehiculo WHERE vehiculoid = OLD.vehiculoid;
END */;;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `deleteLCS3` AFTER DELETE ON `vehiculo` FOR EACH ROW BEGIN
    DELETE FROM lcs3_rutas.vehiculo WHERE vehiculoid = OLD.vehiculoid;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-17  0:35:45
