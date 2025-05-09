-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: veterinaria
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
-- Table structure for table `alimento`
--

DROP TABLE IF EXISTS `alimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alimento` (
  `idAlimento` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `idSucursal` int NOT NULL,
  PRIMARY KEY (`idAlimento`),
  KEY `idSucursal` (`idSucursal`),
  CONSTRAINT `alimento_ibfk_1` FOREIGN KEY (`idSucursal`) REFERENCES `sucursal` (`idSucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alimento`
--

LOCK TABLES `alimento` WRITE;
/*!40000 ALTER TABLE `alimento` DISABLE KEYS */;
INSERT INTO `alimento` VALUES (1,'Croquetas para perros',30.00,1),(2,'Croquetas para gatos',28.00,1),(3,'Comida húmeda para perros',35.00,2),(4,'Comida húmeda para gatos',32.00,2),(5,'Snacks para perros',10.00,3),(6,'Snacks para gatos',9.00,3),(7,'Alimento para pájaros',15.00,4),(8,'Alimento para peces',12.00,4),(9,'Comida para conejos',18.00,5),(10,'Alimento para hámsters',20.00,5),(11,'comida para pez',123.00,2);
/*!40000 ALTER TABLE `alimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cita`
--

DROP TABLE IF EXISTS `cita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cita` (
  `idCita` int NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `motivo` varchar(250) NOT NULL,
  `idDuenio` int NOT NULL,
  `idSucursal` int NOT NULL,
  `idConsulta` int NOT NULL,
  PRIMARY KEY (`idCita`),
  KEY `idDuenio` (`idDuenio`),
  KEY `idSucursal` (`idSucursal`),
  KEY `idConsulta` (`idConsulta`),
  CONSTRAINT `cita_ibfk_1` FOREIGN KEY (`idDuenio`) REFERENCES `duenio` (`idDuenio`),
  CONSTRAINT `cita_ibfk_2` FOREIGN KEY (`idSucursal`) REFERENCES `sucursal` (`idSucursal`),
  CONSTRAINT `cita_ibfk_3` FOREIGN KEY (`idConsulta`) REFERENCES `consulta` (`idConsulta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cita`
--

LOCK TABLES `cita` WRITE;
/*!40000 ALTER TABLE `cita` DISABLE KEYS */;
INSERT INTO `cita` VALUES (1,'2024-02-01','10:00:00','Chequeo anual',1,1,1),(2,'2024-02-02','11:30:00','Vacunación',2,1,2),(3,'2024-02-03','09:00:00','Control herida',3,2,3),(5,'2024-02-05','16:00:00','Problema digestivo',5,3,5),(6,'2024-02-06','13:30:00','Infección de piel',6,3,6),(7,'2024-02-07','15:00:00','Consulta dental',7,4,7),(8,'2024-02-08','10:30:00','Castración',8,4,8),(9,'2024-02-09','12:00:00','Artritis',9,5,9);
/*!40000 ALTER TABLE `cita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consulta`
--

DROP TABLE IF EXISTS `consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consulta` (
  `idConsulta` int NOT NULL,
  `estado` varchar(50) NOT NULL,
  `insumos` varchar(255) NOT NULL,
  `diagnostico` varchar(250) NOT NULL,
  PRIMARY KEY (`idConsulta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulta`
--

LOCK TABLES `consulta` WRITE;
/*!40000 ALTER TABLE `consulta` DISABLE KEYS */;
INSERT INTO `consulta` VALUES (1,'Pendiente','Jeringas, Guantes','Infección leve de piel'),(2,'Finalizada','Antibióticos','Otitis en oreja derecha'),(3,'En proceso','Analgésicos','Fractura de pata posterior'),(4,'Pendiente','Vacunas, Termómetro','Vacunación anual'),(5,'Finalizada','Suero, Antieméticos','Deshidratación'),(6,'En proceso','Antiparasitarios','Gastroenteritis'),(7,'Pendiente','Antibióticos','Infección dental'),(8,'Finalizada','Anestesia, Gasas','Castración'),(9,'En proceso','Antiinflamatorios','Artritis'),(10,'Pendiente','Vitaminas','Chequeo general');
/*!40000 ALTER TABLE `consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cosmetico`
--

DROP TABLE IF EXISTS `cosmetico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cosmetico` (
  `idCosmetico` int NOT NULL,
  `tipo_Cosmetico` varchar(100) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int NOT NULL,
  `idSucursal` int NOT NULL,
  PRIMARY KEY (`idCosmetico`),
  KEY `idSucursal` (`idSucursal`),
  CONSTRAINT `cosmetico_ibfk_1` FOREIGN KEY (`idSucursal`) REFERENCES `sucursal` (`idSucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cosmetico`
--

LOCK TABLES `cosmetico` WRITE;
/*!40000 ALTER TABLE `cosmetico` DISABLE KEYS */;
INSERT INTO `cosmetico` VALUES (1,'Shampoo',15.99,100,1),(2,'Acondicionador',12.99,80,1),(3,'Perfume',25.50,50,2),(4,'Crema hidratante',20.00,60,2),(5,'Spray antipulgas',18.75,40,3),(6,'Jabón',5.50,200,3),(7,'Loción para piel',22.00,30,4),(8,'Champú seco',10.00,70,4),(9,'Aceite para mascotas',30.00,20,5),(10,'Toallitas húmedas',8.50,150,5);
/*!40000 ALTER TABLE `cosmetico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duenio`
--

DROP TABLE IF EXISTS `duenio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `duenio` (
  `idDuenio` int NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`idDuenio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duenio`
--

LOCK TABLES `duenio` WRITE;
/*!40000 ALTER TABLE `duenio` DISABLE KEYS */;
INSERT INTO `duenio` VALUES (1,'555-1234','Juan Pérez'),(2,'555-5678','María López'),(3,'555-8765','Carlos García'),(4,'555-4321','Ana Martínez'),(5,'555-1111','Luis Fernández'),(6,'555-2222','Sofía Rodríguez'),(7,'555-3333','Pedro Sánchez'),(8,'555-4444','Laura Gómez'),(9,'555-5555','Jorge Díaz'),(10,'555-6666','Claudia Torres'),(11,'77171834264','Francisco'),(12,'843749','macario'),(15,'23091301','se'),(20,'3246728349','Juan');
/*!40000 ALTER TABLE `duenio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mascota`
--

DROP TABLE IF EXISTS `mascota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mascota` (
  `idMascota` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `tipo_animal` varchar(100) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `sexo` varchar(20) NOT NULL,
  `idVeterinario` int NOT NULL,
  PRIMARY KEY (`idMascota`),
  KEY `idVeterinario` (`idVeterinario`),
  CONSTRAINT `mascota_ibfk_1` FOREIGN KEY (`idVeterinario`) REFERENCES `veterinario` (`idVeterinario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mascota`
--

LOCK TABLES `mascota` WRITE;
/*!40000 ALTER TABLE `mascota` DISABLE KEYS */;
INSERT INTO `mascota` VALUES (1,'Firulais','Perro','2018-05-10','Macho',1),(2,'Misu','Gato','2020-09-21','Hembra',2),(3,'Rex','Perro','2017-04-15','Macho',3),(4,'Luna','Gato','2019-11-30','Hembra',4),(5,'Bobby','Perro','2016-07-07','Macho',5),(6,'Coco','Pájaro','2021-02-14','Hembra',6),(7,'Nina','Conejo','2019-06-06','Hembra',7),(8,'Toby','Perro','2015-12-01','Macho',8),(9,'Simba','Gato','2018-03-22','Macho',9),(10,'Lola','Hámster','2020-08-18','Hembra',10);
/*!40000 ALTER TABLE `mascota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicio` (
  `idServicio` int NOT NULL,
  `tipo_Servicio` varchar(100) NOT NULL,
  `costo` decimal(10,2) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `idConsulta` int NOT NULL,
  `idMascota` int NOT NULL,
  PRIMARY KEY (`idServicio`),
  KEY `idConsulta` (`idConsulta`),
  KEY `idMascota` (`idMascota`),
  CONSTRAINT `servicio_ibfk_1` FOREIGN KEY (`idConsulta`) REFERENCES `consulta` (`idConsulta`),
  CONSTRAINT `servicio_ibfk_2` FOREIGN KEY (`idMascota`) REFERENCES `mascota` (`idMascota`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
INSERT INTO `servicio` VALUES (1,'Consulta General',50.00,'Consulta básica',1,1),(2,'Vacunación',30.00,'Vacuna antirrábica',2,2),(3,'Tratamiento herida',75.00,'Curación y medicación',3,3),(4,'Chequeo',40.00,'Revisión general',4,4),(5,'Tratamiento digestivo',60.00,'Medicamentos y dieta',5,5),(6,'Tratamiento piel',80.00,'Medicamentos tópicos',6,6),(7,'Consulta dental',70.00,'Limpieza y revisión',7,7),(8,'Cirugía menor',120.00,'Castración',8,8),(9,'Consulta artritis',65.00,'Medicamentos y seguimiento',9,9),(10,'Chequeo completo',55.00,'Examen general',10,10);
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursal`
--

DROP TABLE IF EXISTS `sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sucursal` (
  `idSucursal` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `ubicacion` varchar(255) NOT NULL,
  PRIMARY KEY (`idSucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursal`
--

LOCK TABLES `sucursal` WRITE;
/*!40000 ALTER TABLE `sucursal` DISABLE KEYS */;
INSERT INTO `sucursal` VALUES (1,'Sucursal Centro','Calle 1, Ciudad A'),(2,'Sucursal Norte','Calle 2, Ciudad B'),(3,'Sucursal Sur','Calle 3, Ciudad C'),(4,'Sucursal Este','Calle 4, Ciudad D'),(5,'Sucursal Oeste','Calle 5, Ciudad E'),(6,'Sucursal Plaza','Calle 6, Ciudad F'),(7,'Sucursal Parque','Calle 7, Ciudad G'),(8,'Sucursal Río','Calle 8, Ciudad H'),(9,'Sucursal Mar','Calle 9, Ciudad I'),(10,'Sucursal Bosque','Calle 10, Ciudad J'),(11,'luis','tres');
/*!40000 ALTER TABLE `sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tratamiento`
--

DROP TABLE IF EXISTS `tratamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tratamiento` (
  `idTratamiento` int NOT NULL,
  `medicamento` varchar(255) NOT NULL,
  `cuidados` varchar(255) NOT NULL,
  `idMascota` int NOT NULL,
  PRIMARY KEY (`idTratamiento`),
  KEY `idMascota` (`idMascota`),
  CONSTRAINT `tratamiento_ibfk_1` FOREIGN KEY (`idMascota`) REFERENCES `mascota` (`idMascota`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tratamiento`
--

LOCK TABLES `tratamiento` WRITE;
/*!40000 ALTER TABLE `tratamiento` DISABLE KEYS */;
INSERT INTO `tratamiento` VALUES (1,'Antibiótico A','Aplicar 2 veces al día',1),(2,'Anti-inflamatorio B','No exponer al sol',2),(3,'Desparasitante C','Dosis única oral',3),(4,'Antifúngico D','Evitar baños por 7 días',4),(5,'Vacuna E','Reposo 24 horas',5),(6,'Suplemento F','Administrar con comida',6),(7,'Analgesico G','No saltar',7),(8,'Antibiótico H','Completar 7 días',8),(9,'Antipulgas I','Aplicar cada mes',9),(10,'Vitaminas J','Diario durante 2 semanas',10);
/*!40000 ALTER TABLE `tratamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta` (
  `idVenta` int NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `metodoPago` varchar(50) NOT NULL,
  `fechaHora` datetime NOT NULL,
  `idSucursal` int NOT NULL,
  PRIMARY KEY (`idVenta`),
  KEY `idSucursal` (`idSucursal`),
  CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`idSucursal`) REFERENCES `sucursal` (`idSucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (1,150.00,'Tarjeta','2024-01-10 14:30:00',1),(2,220.50,'Efectivo','2024-01-11 10:00:00',1),(3,75.00,'Tarjeta','2024-01-12 16:45:00',2),(4,180.25,'Transferencia','2024-01-13 12:15:00',2),(5,95.00,'Efectivo','2024-01-14 09:50:00',3),(6,110.00,'Tarjeta','2024-01-15 14:00:00',3),(7,130.40,'Efectivo','2024-01-16 11:30:00',4),(8,210.75,'Tarjeta','2024-01-17 15:20:00',4),(9,140.00,'Transferencia','2024-01-18 13:40:00',5),(10,155.60,'Efectivo','2024-01-19 10:10:00',5);
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veterinario`
--

DROP TABLE IF EXISTS `veterinario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veterinario` (
  `idVeterinario` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `especialidad` varchar(100) NOT NULL,
  PRIMARY KEY (`idVeterinario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veterinario`
--

LOCK TABLES `veterinario` WRITE;
/*!40000 ALTER TABLE `veterinario` DISABLE KEYS */;
INSERT INTO `veterinario` VALUES (1,'Dr. Alberto Ruiz','555-7777','Cirugía'),(2,'Dra. Patricia Silva','555-8888','Dermatología'),(3,'Dr. Javier Morales','555-9999','Odontología'),(4,'Dra. Elena Castro','555-0000','Medicina Interna'),(5,'Dr. Luis Herrera','555-1234','Cardiología'),(6,'Dra. Ana Beltrán','555-5678','Oftalmología'),(7,'Dr. Carlos Mendoza','555-8765','Neurología'),(8,'Dra. Sofía Ríos','555-4321','Oncología'),(9,'Dr. Pedro Jiménez','555-1111','Geriatría'),(10,'Dra. Laura Paredes','555-2222','Pediatría');
/*!40000 ALTER TABLE `veterinario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-08 21:15:23
