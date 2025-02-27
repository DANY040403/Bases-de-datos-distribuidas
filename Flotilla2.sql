-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: flotilla
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `auto`
--

DROP TABLE IF EXISTS `auto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auto` (
  `id_Vehiculo` int NOT NULL,
  `Marca` varchar(50) NOT NULL,
  `Modelo` varchar(50) NOT NULL,
  `Estado` varchar(80) NOT NULL,
  `Ult_dia_Uso` date NOT NULL,
  PRIMARY KEY (`id_Vehiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto`
--

LOCK TABLES `auto` WRITE;
/*!40000 ALTER TABLE `auto` DISABLE KEYS */;
INSERT INTO `auto` VALUES (1,'Nissan','Versa 2022','En mantenimiento','2025-02-14'),(2,'Volkswagen','Nivus 2024','Funcional','2025-01-30'),(3,'Toyota','RAV4 HEV','En mantenimiento','2025-01-22'),(4,'Chevrolet','Bright drop 2025','funcional','2025-02-14'),(5,'KIA','Picanto','Funcional','2025-02-14');
/*!40000 ALTER TABLE `auto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capacitacion`
--

DROP TABLE IF EXISTS `capacitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capacitacion` (
  `id_Capacitacion` int NOT NULL,
  `fecha_Capacitacion` date NOT NULL,
  `tipo_capacitacion` varchar(80) NOT NULL,
  `id_personal` int NOT NULL,
  PRIMARY KEY (`id_Capacitacion`),
  KEY `id_personal` (`id_personal`),
  CONSTRAINT `capacitacion_ibfk_1` FOREIGN KEY (`id_personal`) REFERENCES `personal` (`id_personal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capacitacion`
--

LOCK TABLES `capacitacion` WRITE;
/*!40000 ALTER TABLE `capacitacion` DISABLE KEYS */;
INSERT INTO `capacitacion` VALUES (1,'2024-07-07','Uso del vehiculo',1),(2,'2024-05-22','Cambio llanta',4),(3,'2024-10-07','Uso de rutas',2),(4,'2023-12-05','Uso de rutas',3);
/*!40000 ALTER TABLE `capacitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documento`
--

DROP TABLE IF EXISTS `documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documento` (
  `id_Documento` int NOT NULL,
  `tipo_Documento` varchar(80) NOT NULL,
  `fecha_Renovacion` date NOT NULL,
  `id_Vehiculo` int NOT NULL,
  PRIMARY KEY (`id_Documento`),
  KEY `id_Vehiculo` (`id_Vehiculo`),
  CONSTRAINT `documento_ibfk_1` FOREIGN KEY (`id_Vehiculo`) REFERENCES `auto` (`id_Vehiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documento`
--

LOCK TABLES `documento` WRITE;
/*!40000 ALTER TABLE `documento` DISABLE KEYS */;
INSERT INTO `documento` VALUES (1,'Seguro','2026-01-12',5),(2,'Verificacion','2025-03-07',3),(3,'Tarjeta de circulacion','2025-12-15',4),(4,'Verificacion','2025-03-20',2),(5,'Verificacion','2025-06-20',1),(6,'Verificacion','2025-03-15',4);
/*!40000 ALTER TABLE `documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gasolina`
--

DROP TABLE IF EXISTS `gasolina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gasolina` (
  `id_Consumo` int NOT NULL,
  `litros_Consumidos` int NOT NULL,
  `Costo` float NOT NULL,
  `tipo_Gasolina` varchar(50) NOT NULL,
  `fecha_carga` date NOT NULL,
  `id_Vehiculo` int NOT NULL,
  PRIMARY KEY (`id_Consumo`),
  KEY `id_Vehiculo` (`id_Vehiculo`),
  CONSTRAINT `gasolina_ibfk_1` FOREIGN KEY (`id_Vehiculo`) REFERENCES `auto` (`id_Vehiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gasolina`
--

LOCK TABLES `gasolina` WRITE;
/*!40000 ALTER TABLE `gasolina` DISABLE KEYS */;
INSERT INTO `gasolina` VALUES (1,50,1015.15,'Magma','2024-12-25',1),(2,35,2500.35,'Premier','2025-01-25',2),(3,25,1700.7,'Magma','2025-02-13',3),(4,15,2777.43,'Premier','2025-02-10',4),(5,35,2350,'Magma','2025-02-13',5);
/*!40000 ALTER TABLE `gasolina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantenimiento`
--

DROP TABLE IF EXISTS `mantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantenimiento` (
  `id_Mantenimiento` int NOT NULL,
  `fecha_Mantenimiento` date NOT NULL,
  `tipo_Mantenimiento` varchar(80) NOT NULL,
  `costo_Total` float NOT NULL,
  `id_Vehiculo` int NOT NULL,
  PRIMARY KEY (`id_Mantenimiento`),
  KEY `id_Vehiculo` (`id_Vehiculo`),
  CONSTRAINT `mantenimiento_ibfk_1` FOREIGN KEY (`id_Vehiculo`) REFERENCES `auto` (`id_Vehiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantenimiento`
--

LOCK TABLES `mantenimiento` WRITE;
/*!40000 ALTER TABLE `mantenimiento` DISABLE KEYS */;
INSERT INTO `mantenimiento` VALUES (1,'2025-01-10','Cambio de aceite',3000,3),(2,'2024-10-19','Sistema de refrigeracion',3500,4),(3,'2025-01-15','Sistema de escape',7000,1),(4,'2024-11-30','cambio de filtros',2500,2),(5,'2025-01-05','Cambio de filtros',2500,5),(7,'2025-02-20','Cambio de frenos',4000,4),(8,'2025-02-20','Cambio de frenos',4000,4),(9,'2025-02-22','Parabrisas',4000,3),(10,'2025-02-22','Parabrisas',4000,3);
/*!40000 ALTER TABLE `mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal`
--

DROP TABLE IF EXISTS `personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal` (
  `id_personal` int NOT NULL,
  `Nombre` varchar(80) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `RFC` varchar(50) NOT NULL,
  `id_Vehiculo` int NOT NULL,
  PRIMARY KEY (`id_personal`),
  KEY `id_Vehiculo` (`id_Vehiculo`),
  CONSTRAINT `personal_ibfk_1` FOREIGN KEY (`id_Vehiculo`) REFERENCES `auto` (`id_Vehiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` VALUES (1,'Jaun','7718247922','JIR39430',2),(2,'Roberto','7719420293','ROI301938',4),(3,'Victor','7719138982','VCL042312',1),(4,'Diego','7713999343','DAQ021391',3),(5,'Omar','7714862565','OGM3920402',5);
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pieza`
--

DROP TABLE IF EXISTS `pieza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pieza` (
  `id_pieza` int NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `precio` float NOT NULL,
  `id_Mantenimiento` int NOT NULL,
  PRIMARY KEY (`id_pieza`),
  KEY `id_Mantenimiento` (`id_Mantenimiento`),
  CONSTRAINT `pieza_ibfk_1` FOREIGN KEY (`id_Mantenimiento`) REFERENCES `mantenimiento` (`id_Mantenimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pieza`
--

LOCK TABLES `pieza` WRITE;
/*!40000 ALTER TABLE `pieza` DISABLE KEYS */;
INSERT INTO `pieza` VALUES (1,'Alternador',2469,2),(2,'Bateria',6299,3),(3,'Filtro',129.49,4),(4,'Aceite',1099.99,1),(5,'Aceite',1099.99,5);
/*!40000 ALTER TABLE `pieza` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-27 10:35:36
