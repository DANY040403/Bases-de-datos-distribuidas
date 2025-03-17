-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: sistemagestionflotillas
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

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `LCS3_Rutas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `LCS3_Rutas`;

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
-- Table structure for table `conductor`
--

DROP TABLE IF EXISTS `conductor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conductor` (
  `conductorId` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `numeroLicencia` varchar(50) NOT NULL,
  `vencimientoLicencia` date NOT NULL,
  `estado` varchar(20) DEFAULT 'Activo',
  PRIMARY KEY (`conductorId`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ruta`
--

DROP TABLE IF EXISTS `ruta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ruta` (
  `rutaId` int NOT NULL AUTO_INCREMENT,
  `vehiculoId` int NOT NULL,
  `conductorId` int NOT NULL,
  `horaInicio` datetime NOT NULL,
  `horaFin` datetime DEFAULT NULL,
  `distancia` decimal(10,2) DEFAULT NULL,
  `ubicacionInicio` varchar(100) NOT NULL,
  `ubicacionFin` varchar(100) NOT NULL,
  `estado` varchar(20) DEFAULT 'Pendiente',
  PRIMARY KEY (`rutaId`),
  KEY `idx_ruta_vehiculo` (`vehiculoId`),
  KEY `idx_ruta_conductor` (`conductorId`),
  CONSTRAINT `ruta_ibfk_1` FOREIGN KEY (`vehiculoId`) REFERENCES `vehiculo` (`vehiculoId`) ON DELETE CASCADE,
  CONSTRAINT `ruta_ibfk_2` FOREIGN KEY (`conductorId`) REFERENCES `conductor` (`conductorId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `transaccioncombustible`
--

DROP TABLE IF EXISTS `transaccioncombustible`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaccioncombustible` (
  `transaccionId` int NOT NULL AUTO_INCREMENT,
  `vehiculoId` int NOT NULL,
  `conductorId` int NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `cantidad` decimal(10,2) NOT NULL,
  `tipoCombustible` varchar(20) NOT NULL,
  `fechaTransaccion` datetime NOT NULL,
  `ubicacion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`transaccionId`),
  KEY `idx_transaccion_vehiculo` (`vehiculoId`),
  KEY `idx_transaccion_conductor` (`conductorId`),
  CONSTRAINT `transaccioncombustible_ibfk_1` FOREIGN KEY (`vehiculoId`) REFERENCES `vehiculo` (`vehiculoId`) ON DELETE CASCADE,
  CONSTRAINT `transaccioncombustible_ibfk_2` FOREIGN KEY (`conductorId`) REFERENCES `conductor` (`conductorId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-17 13:47:40
