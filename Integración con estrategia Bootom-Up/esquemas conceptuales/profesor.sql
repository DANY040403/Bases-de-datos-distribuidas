CREATE DATABASE  IF NOT EXISTS `profesorbd` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `profesorbd`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: profesorbd
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
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `IdAlumno` int NOT NULL,
  `NumeroCuenta` varchar(25) NOT NULL,
  `paterno` varchar(80) NOT NULL,
  `materno` varchar(80) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `email` varchar(120) NOT NULL,
  PRIMARY KEY (`IdAlumno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (1,'20230001','González','Pérez','Juan','juan.gonzalez@example.com'),(2,'20230002','Hernández','López','María','maria.hernandez@example.com'),(3,'20230003','Martínez','Sánchez','Pedro','pedro.martinez@example.com'),(4,'20230004','López','García','Ana','ana.lopez@example.com'),(5,'20230005','Ramírez','Torres','Luis','luis.ramirez@example.com'),(6,'20230006','Fernández','Vázquez','Sofía','sofia.fernandez@example.com'),(7,'20230007','Gutiérrez','Morales','Diego','diego.gutierrez@example.com'),(8,'20230008','Jiménez','Mendoza','Laura','laura.jimenez@example.com'),(9,'20230009','Díaz','Rojas','Carlos','carlos.diaz@example.com'),(10,'20230010','Vega','Cruz','Isabel','isabel.vega@example.com'),(11,'20230011','Castillo','Salazar','Fernando','fernando.castillo@example.com'),(12,'20230012','Moreno','Cordero','Valeria','valeria.moreno@example.com'),(13,'20230013','Ríos','Ponce','Andrés','andres.rios@example.com'),(14,'20230014','Cano','Serrano','Patricia','patricia.cano@example.com'),(15,'20230015','Salinas','Cisneros','Jorge','jorge.salinas@example.com'),(16,'20230016','Maldonado','Bermúdez','Natalia','natalia.maldonado@example.com'),(17,'20230017','Cervantes','Alvarado','Ricardo','ricardo.cervantes@example.com'),(18,'20230018','Pérez','González','Gabriela','gabriela.perez@example.com'),(19,'20230019','Soto','Hernández','Emilio','emilio.soto@example.com'),(20,'20230020','Rangel','López','Claudia','claudia.rangel@example.com'),(21,'20230021','Cruz','Martínez','Raúl','raul.cruz@example.com'),(22,'20230022','Aguilar','Jiménez','Verónica','veronica.aguilar@example.com'),(23,'20230023','Núñez','Salas','Alberto','alberto.nunez@example.com'),(24,'20230024','Mora','González','Silvia','silvia.mora@example.com'),(25,'20230025','Ponce','Ríos','Héctor','hector.ponce@example.com'),(26,'20230026','Cordero','Vega','Mónica','monica.cordero@example.com'),(27,'20230027','Salazar','Moreno','Julián','julian.salazar@example.com'),(28,'20230028','Bermúdez','Díaz','Rosa','rosa.bermudez@example.com'),(29,'20230029','Alvarado','Cano','Santiago','santiago.alvarado@example.com'),(30,'20230030','Cisneros','Rangel','Mariana','mariana.cisneros@example.com'),(31,'20230031','Serrano','Maldonado','Fernando','fernando.serrano@example.com'),(32,'20230032','Salas','Cervantes','Lucía','lucia.salas@example.com'),(33,'20230033','González ','Pérez','Esteban','esteban.gonzalez@example.com'),(34,'20230034','Hernández','López','Patricia','patricia.hernandez@example.com'),(35,'20230035','Martínez','Sánchez','Javier','javier.martinez@example.com'),(36,'20230036','López','García','Verónica','veronica.lopez@example.com'),(37,'20230037','Ramírez','Torres','Ricardo','ricardo.ramirez@example.com'),(38,'20230038','Fernández','Vázquez','Gabriela','gabriela.fernandez@example.com'),(39,'20230039','Gutiérrez','Morales','Diego','diego.gutierrez@example.com'),(40,'20230040','Jiménez','Mendoza','Laura','laura.jimenez@example.com'),(41,'20230041','Díaz','Rojas','Carlos','carlos.diaz@example.com'),(42,'20230042','Vega','Cruz','Isabel','isabel.vega@example.com'),(43,'20230043','Castillo','Salazar','Fernando','fernando.castillo@example.com'),(44,'20230044','Moreno','Cordero','Valeria','valeria.moreno@example.com'),(45,'20230045','Ríos','Ponce','Andrés','andres.rios@example.com'),(46,'20230046','Cano','Serrano','Patricia','patricia.cano@example.com'),(47,'20230047','Salinas','Cisneros','Jorge','jorge.salinas@example.com'),(48,'20230048','Maldonado','Bermúdez','Natalia','natalia.maldonado@example.com'),(49,'20230049','Cervantes','Alvarado','Ricardo','ricardo.cervantes@example.com'),(50,'20230050','Pérez','González','Gabriela','gabriela.perez@example.com'),(51,'20230051','Soto','Hernández','Emilio','emilio.soto@example.com'),(52,'20230052','Rangel','López','Claudia','claudia.rangel@example.com'),(53,'20230053','Cruz','Martínez','Raúl','raul.cruz@example.com'),(54,'20230054','Aguilar','Jiménez','Verónica','veronica.aguilar@example.com'),(55,'20230055','Núñez','Salas','Alberto','alberto.nunez@example.com'),(56,'20230056','Mora','González','Silvia','silvia.mora@example.com'),(57,'20230057','Ponce','Ríos','Héctor','hector.ponce@example.com'),(58,'20230058','Cordero','Vega','Mónica','monica.cordero@example.com'),(59,'20230059','Salazar','Moreno','Julián','julian.salazar@example.com'),(60,'20230060','Bermúdez','Díaz','Rosa','rosa.bermudez@example.com'),(61,'20230061','Alvarado','Cano','Santiago','santiago.alvarado@example.com'),(62,'20230062','Cisneros','Rangel','Mariana','mariana.cisneros@example.com'),(63,'20230063','Serrano','Maldonado','Fernando','fernando.serrano@example.com'),(64,'20230064','Salas','Cervantes','Lucía','lucia.salas@example.com'),(65,'20230065','González','Pérez','Esteban','esteban.gonzalez@example.com'),(66,'20230066','Hernández','López','Patricia','patricia.hernandez@example.com'),(67,'20230067','Martínez','Sánchez','Javier','javier.martinez @example.com'),(68,'20230068','López','García','Verónica','veronica.lopez@example.com'),(69,'20230069','Ramírez','Torres','Ricardo','ricardo.ramirez@example.com'),(70,'20230070','Fernández','Vázquez','Gabriela','gabriela.fernandez@example.com'),(71,'20230071','Gutiérrez','Morales','Diego','diego.gutierrez@example.com'),(72,'20230072','Jiménez','Mendoza','Laura','laura.jimenez@example.com'),(73,'20230073','Díaz','Rojas','Carlos','carlos.diaz@example.com'),(74,'20230074','Vega','Cruz','Isabel','isabel.vega@example.com'),(75,'20230075','Castillo','Salazar','Fernando','fernando.castillo@example.com'),(76,'20230076','Moreno','Cordero','Valeria','valeria.moreno@example.com'),(77,'20230077','Ríos','Ponce','Andrés','andres.rios@example.com'),(78,'20230078','Cano','Serrano','Patricia','patricia.cano@example.com'),(79,'20230079','Salinas','Cisneros','Jorge','jorge.salinas@example.com'),(80,'20230080','Maldonado','Bermúdez','Natalia','natalia.maldonado@example.com'),(81,'20230081','Cervantes','Alvarado','Ricardo','ricardo.cervantes@example.com'),(82,'20230082','Pérez','González','Gabriela','gabriela.perez@example.com'),(83,'20230083','Soto','Hernández','Emilio','emilio.soto@example.com'),(84,'20230084','Rangel','López','Claudia','claudia.rangel@example.com'),(85,'20230085','Cruz','Martínez','Raúl','raul.cruz@example.com'),(86,'20230086','Aguilar','Jiménez','Verónica','veronica.aguilar@example.com'),(87,'20230087','Núñez','Salas','Alberto','alberto.nunez@example.com'),(88,'20230088','Mora','González','Silvia','silvia.mora@example.com'),(89,'20230089','Ponce','Ríos','Héctor','hector.ponce@example.com'),(90,'20230090','Cordero','Vega','Mónica','monica.cordero@example.com'),(91,'20230091','Salazar','Moreno','Julián','julian.salazar@example.com'),(92,'20230092','Bermúdez','Díaz','Rosa','rosa.bermudez@example.com'),(93,'20230093','Alvarado','Cano','Santiago','santiago.alvarado@example.com'),(94,'20230094','Cisneros','Rangel','Mariana','mariana.cisneros@example.com'),(95,'20230095','Serrano','Maldonado','Fernando','fernando.serrano@example.com'),(96,'20230096','Salas','Cervantes','Lucía','lucia.salas@example.com'),(97,'20230097','González','Pérez','Esteban','esteban.gonzalez@example.com'),(98,'20230098','Hernández','López','Patricia','patricia.hernandez@example.com'),(99,'20230099','Martínez','Sánchez','Javier','javier.martinez@example.com'),(100,'20230100','López','García','Verónica','veronica.lopez@example.com');
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumno_curso`
--

DROP TABLE IF EXISTS `alumno_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno_curso` (
  `IdAlumnoCurso` int NOT NULL,
  `Calificacion` float NOT NULL,
  `IdCurso` int NOT NULL,
  `IdAlumno` int NOT NULL,
  PRIMARY KEY (`IdAlumnoCurso`),
  KEY `IdCurso` (`IdCurso`),
  KEY `IdAlumno` (`IdAlumno`),
  CONSTRAINT `alumno_curso_ibfk_1` FOREIGN KEY (`IdCurso`) REFERENCES `curso` (`IdCurso`),
  CONSTRAINT `alumno_curso_ibfk_2` FOREIGN KEY (`IdAlumno`) REFERENCES `alumno` (`IdAlumno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno_curso`
--

LOCK TABLES `alumno_curso` WRITE;
/*!40000 ALTER TABLE `alumno_curso` DISABLE KEYS */;
INSERT INTO `alumno_curso` VALUES (1,85.5,1,1),(2,90,2,2),(3,78,3,3),(4,88.5,4,4),(5,92,5,5),(6,76.5,6,6),(7,89,7,7),(8,95,8,8),(9,82,9,9),(10,87.5,10,10),(11,80,11,11),(12,91,12,12),(13,75,13,13),(14,84,14,14),(15,93,15,15),(16,77,16,16),(17,88,17,17),(18,94,18,18),(19,81,19,19),(20,86,20,20),(21,83,21,21),(22,90.5,22,22),(23,79,23,23),(24,85,24,24),(25,91.5,25,25),(26,74,26,26),(27,89.5,27,27),(28,96,28,28),(29,80.5,29,29),(30,87,30,30),(31,82.5,31,31),(32,92,32,32),(33,76.5,33,33),(34,84.5,34,34),(35,93.5,35,35),(36,78,36,36),(37,88.5,37,37),(38,95.5,38,38),(39,81.5,39,39),(40,86.5,40,40),(41,84,41,41),(42,90,42,42),(43,77,43,43),(44,89,44,44),(45,92.5,45,45),(46,75.5,46,46),(47,88,47,47),(48,94,48,48),(49,82,49,49),(50,87,50,50),(51,83,51,51),(52,91,52,52),(53,78.5,53,53),(54,86,54,54),(55,93,55,55),(56,76,56,56),(57,89.5,57,57),(58,95,58,58),(59,80,59,59),(60,85.5,60,60),(61,82,61,61),(62,90.5,62,62),(63,79,63,63),(64,88,64,64),(65,92,65,65),(66,77.5,66,66),(67,89,67,67),(68,94.5,68,68),(69,81,69,69),(70,86.5,70,70),(71,83.5,71,71),(72,91.5,72,72),(73,78,73,73),(74,87,74,74),(75,93.5,75,75),(76,76.5,76,76),(77,88.5,77,77),(78,95,78,78),(79,80.5,79,79),(80,84,80,80),(81,82,81,81),(82,90,82,82),(83,79.5,83,83),(84,88,84,84),(85,92.5,85,85),(86,75,86,86),(87,89,87,87),(88,94,88,88),(89,81,89,89),(90,86,90,90),(91,83,91,91),(92,91,92,92),(93,78.5,93,93),(94,86.5,94,94),(95,93,95,95),(96,76,96,96),(97,88,97,97),(98,95.5,98,98),(99,80,99,99),(100,85,100,100);
/*!40000 ALTER TABLE `alumno_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignatura`
--

DROP TABLE IF EXISTS `asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignatura` (
  `IdAsignatura` int NOT NULL,
  `semestre` int NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `IdPrograma` int NOT NULL,
  PRIMARY KEY (`IdAsignatura`),
  KEY `IdPrograma` (`IdPrograma`),
  CONSTRAINT `asignatura_ibfk_1` FOREIGN KEY (`IdPrograma`) REFERENCES `programa` (`IdPrograma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura`
--

LOCK TABLES `asignatura` WRITE;
/*!40000 ALTER TABLE `asignatura` DISABLE KEYS */;
INSERT INTO `asignatura` VALUES (1,1,'Matemáticas I',1),(2,1,'Introducción a la Programación',1),(3,1,'Fundamentos de Administración',2),(4,1,'Psicología General',3),(5,1,'Dibujo Técnico',4),(6,1,'Derecho Constitucional',5),(7,1,'Contabilidad Básica',6),(8,1,'Cálculo Diferencial',1),(9,1,'Química General',8),(10,1,'Biología General',9),(11,2,'Matemáticas II',1),(12,2,'Estructuras de Datos',1),(13,2,'Comportamiento Organizacional',2),(14,2,'Psicología del Desarrollo',3),(15,2,'Historia de la Arquitectura',4),(16,2,'Derecho Civil',5),(17,2,'Contabilidad Intermedia',6),(18,2,'Cálculo Integral',1),(19,2,'Física General',8),(20,2,'Ecología',9),(21,3,'Matemáticas III',1),(22,3,'Algoritmos',1),(23,3,'Marketing',2),(24,3,'Psicología Social',3),(25,3,'Diseño Arquitectónico',4),(26,3,'Derecho Penal',5),(27,3,'Contabilidad Avanzada',6),(28,3,'Estadística',1),(29,3,'Química Orgánica',8),(30,3,'Genética',9),(31,4,'Matemáticas IV',1),(32,4,'Bases de Datos',1),(33,4,'Comportamiento del Consumidor',2),(34,4,'Psicología Organizacional',3),(35,4,'Construcción de Edificios',4),(36,4,'Derecho Laboral',5),(37,4,'Auditoría',6),(38,4,'Matemáticas Financieras',1),(39,4,'Física Aplicada',8),(40,4,'Microbiología',9),(41,5,'Matemáticas V',1),(42,5,'Programación Orientada a Objetos',1),(43,5,'Investigación de Mercados',2),(44,5,'Psicología Clínica',3),(45,5,'Estructuras de Acero',4),(46,5,'Derecho Internacional',5),(47,5,'Contabilidad de Costos',6),(48,5,'Matemáticas para la Ingeniería',1),(49,5,'Química Inorgánica',8),(50,5,'Botánica',9),(51,6,'Matemáticas VI',1),(52,6,'Desarrollo Web',1),(53,6,'Publicidad',2),(54,6,'Psicología Educativa',3),(55,6,'Diseño Estructural',4),(56,6,'Derecho Fiscal',5),(57,6,'Contabilidad Financiera',6),(58,6,'Teoría de Juegos',1),(59,6,'Física Moderna',8),(60,6,'Zoología',9),(61,7,'Matemáticas VII',1),(62,7,'Inteligencia Artificial',1),(63,7,'Gestión de Proyectos',2),(64,7,' Psicología del Aprendizaje',3),(65,7,'Diseño de Interiores',4),(66,7,'Derecho de la Propiedad',5),(67,7,'Contabilidad Internacional',6),(68,7,'Matemáticas Discretas',1),(69,7,'Física Teórica',8),(70,7,'Ecología Aplicada',9),(71,8,'Matemáticas VIII',1),(72,8,'Redes de Computadoras',1),(73,8,'Comportamiento del Consumidor Avanzado',2),(74,8,'Psicología de la Salud',3),(75,8,'Construcción Sostenible',4),(76,8,'Derecho de la Tecnología',5),(77,8,'Contabilidad Avanzada de Costos',6),(78,8,'Matemáticas para la Toma de Decisiones',1),(79,8,'Química Ambiental',8),(80,8,'Biología Celular',9),(81,9,'Matemáticas IX',1),(82,9,'Programación de Aplicaciones Móviles',1),(83,9,'Investigación de Operaciones',2),(84,9,'Psicología del Trabajo',3),(85,9,'Diseño de Sistemas',4),(86,9,'Derecho de la Competencia',5),(87,9,'Contabilidad Financiera Avanzada',6),(88,9,'Matemáticas para la Optimización',1),(89,9,'Química Biológica',8),(90,9,'Genética Molecular',9),(91,10,'Matemáticas X',1),(92,10,'Desarrollo de Software',1),(93,10,'Marketing Digital',2),(94,10,'Psicología del Deporte',3),(95,10,'Gestión de la Construcción',4),(96,10,'Derecho de la Propiedad Intelectual',5),(97,10,'Contabilidad de Gestión',6),(98,10,'Matemáticas para la Investigación',1),(99,10,'Química Orgánica Avanzada',8),(100,10,'Biología Evolutiva',9);
/*!40000 ALTER TABLE `asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `IdCurso` int NOT NULL,
  `Periodo` varchar(20) NOT NULL,
  `anio` int NOT NULL,
  `grupo` int NOT NULL,
  `IdAsignatura` int NOT NULL,
  `IdProfesor` int NOT NULL,
  PRIMARY KEY (`IdCurso`),
  KEY `IdAsignatura` (`IdAsignatura`),
  KEY `IdProfesor` (`IdProfesor`),
  CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`IdAsignatura`) REFERENCES `asignatura` (`IdAsignatura`),
  CONSTRAINT `curso_ibfk_2` FOREIGN KEY (`IdProfesor`) REFERENCES `profesor` (`IdProfesor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Enero-Junio',2023,1,1,1),(2,'Enero-Junio',2023,1,2,2),(3,'Enero-Junio',2023,1,3,3),(4,'Enero-Junio',2023,1,4,4),(5,'Enero-Junio',2023,1,5,5),(6,'Enero-Junio',2023,1,6,6),(7,'Enero-Junio',2023,1,7,7),(8,'Enero-Junio',2023,1,8,8),(9,'Enero-Junio',2023,1,9,9),(10,'Enero-Junio',2023,1,10,10),(11,'Enero-Junio',2023,2,1,1),(12,'Enero-Junio',2023,2,2,2),(13,'Enero-Junio',2023,2,3,3),(14,'Enero-Junio',2023,2,4,4),(15,'Enero-Junio',2023,2,5,5),(16,'Enero-Junio',2023,2,6,6),(17,'Enero-Junio',2023,2,7,7),(18,'Enero-Junio',2023,2,8,8),(19,'Enero-Junio',2023,2,9,9),(20,'Enero-Junio',2023,2,10,10),(21,'Agosto-Diciembre',2023,1,1,1),(22,'Agosto-Diciembre',2023,1,2,2),(23,'Agosto-Diciembre',2023,1,3,3),(24,'Agosto-Diciembre',2023,1,4,4),(25,'Agosto-Diciembre',2023,1,5,5),(26,'Agosto-Diciembre',2023,1,6,6),(27,'Agosto-Diciembre',2023,1,7,7),(28,'Agosto-Diciembre',2023,1,8,8),(29,'Agosto-Diciembre',2023,1,9,9),(30,'Agosto-Diciembre',2023,1,10,10),(31,'Agosto-Diciembre',2023,2,1,1),(32,'Agosto-Diciembre',2023,2,2,2),(33,'Agosto-Diciembre',2023,2,3,3),(34,'Agosto-Diciembre',2023,2,4,4),(35,'Agosto-Diciembre',2023,2,5,5),(36,'Agosto-Diciembre',2023,2,6,6),(37,'Agosto-Diciembre',2023,2,7,7),(38,'Agosto-Diciembre',2023,2,8,8),(39,'Agosto-Diciembre',2023,2,9,9),(40,'Agosto-Diciembre',2023,2,10,10),(41,'Enero-Junio',2024,1,1,1),(42,'Enero-Junio',2024,1,2,2),(43,'Enero-Junio',2024,1,3,3),(44,'Enero-Junio',2024,1,4,4),(45,'Enero-Junio',2024,1,5,5),(46,'Enero-Junio',2024,1,6,6),(47,'Enero-Junio',2024,1,7,7),(48,'Enero-Junio',2024,1,8,8),(49,'Enero-Junio',2024,1,9,9),(50,'Enero-Junio',2024,1,10,10),(51,'Enero-Junio',2024,2,1,1),(52,'Enero-Junio',2024,2,2,2),(53,'Enero-Junio',2024,2,3,3),(54,'Enero-Junio',2024,2,4,4),(55,'Enero-Junio',2024,2,5,5),(56,'Enero-Junio',2024,2,6,6),(57,'Enero-Junio',2024,2,7,7),(58,'Enero-Junio',2024,2,8,8),(59,'Enero-Junio',2024,2,9,9),(60,'Enero-Junio',2024,2,10,10),(61,'Agosto-Diciembre',2024,1,1,1),(62,'Agosto-Diciembre',2024,1,2,2),(63,'Agosto-Diciembre',2024,1,3,3),(64,'Agosto-Diciembre',2024,1,4,4),(65,'Agosto-Diciembre',2024,1,5,5),(66,'Agosto-Diciembre',2024,1,6,6),(67,'Agosto-Diciembre',2024,1,7,7),(68,'Agosto-Diciembre',2024,1,8,8),(69,'Agosto-Diciembre',2024,1,9,9),(70,'Agosto-Diciembre',2024,1,10,10),(71,'Agosto-Diciembre',2024,2,1,1),(72,'Agosto-Diciembre',2024,2,2,2),(73,'Agosto-Diciembre',2024,2,3,3),(74,'Agosto-Diciembre',2024,2,4,4),(75,'Agosto-Diciembre',2024,2,5,5),(76,'Agosto-Diciembre',2024,2,6,6),(77,'Agosto-Diciembre',2024,2,7,7),(78,'Agosto-Diciembre',2024,2,8,8),(79,'Agosto-Diciembre',2024,2,9,9),(80,'Agosto-Diciembre',2024,2,10,10),(81,'Enero-Junio',2025,1,1,1),(82,'Enero-Junio',2025,1,2,2),(83,'Enero-Junio',2025,1,3,3),(84,'Enero-Junio',2025,1,4,4),(85,'Enero-Junio',2025,1,5,5),(86,'Enero-Junio',2025,1,6,6),(87,'Enero-Junio',2025,1,7,7),(88,'Enero-Junio',2025,1,8,8),(89,'Enero-Junio',2025,1,9,9),(90,'Enero-Junio',2025,1,10,10),(91,'Enero-Junio',2025,2,1,1),(92,'Enero-Junio',2025,2,2,2),(93,'Enero-Junio',2025,2,3,3),(94,'Enero-Junio',2025,2,4,4),(95,'Enero-Junio',2025,2,5,5),(96,'Enero-Junio',2025,2,6,6),(97,'Enero-Junio',2025,2,7,7),(98,'Enero-Junio',2025,2,8,8),(99,'Enero-Junio',2025,2,9,9),(100,'Enero-Junio',2025,2,10,10);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor`
--

DROP TABLE IF EXISTS `profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesor` (
  `IdProfesor` int NOT NULL,
  `Paterno` varchar(80) NOT NULL,
  `Materno` varchar(80) NOT NULL,
  `Nombre` varchar(80) NOT NULL,
  `email` varchar(250) NOT NULL,
  `fechaIngreso` date NOT NULL,
  PRIMARY KEY (`IdProfesor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor`
--

LOCK TABLES `profesor` WRITE;
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
INSERT INTO `profesor` VALUES (1,'valle','ibarra','yuridia','armasgonzalo@example.net','2020-01-01'),(2,'tovar','madrid','timoteo','augusto45@example.net','2020-02-01'),(3,'de la garza','puente','oliver','esperanza41@example.net','2020-03-01'),(4,'rosado','monroy','aldo','imenchaca@example.org','2020-04-01'),(5,'pedroza','noriega','indira','nancymarin@example.org','2020-05-01'),(6,'peralta','zamora','susana','almanzanatalia@example.net','2020-06-01'),(7,'lebron','navarrete','norma','reynosofrancisca@example.org','2020-07-01'),(8,'zelaya','mondragon','abelardo','jaimemartha@example.org','2020-08-01'),(9,'jimenez','benitez','armando','grijalvaleonor@example.org','2020-09-01'),(10,'casas','bernal','amelia','luisa81@example.org','2020-10-01'),(11,'rosales','ontiveros','jose emilio','sofiade-la-cruz@example.com','2020-11-01'),(12,'mata','rico','rolando','qverduzco@example.net','2020-12-01'),(13,'lovato','venegas','cristina','estherpadron@example.org','2021-01-01'),(14,'padilla','garay','emilia','abril12@example.org','2021-02-01'),(15,'de la cruz','cortez','eva','concepcioncristobal@example.net','2021-03-01'),(16,'vera','arce','catalina','dulceolivas@example.net','2021-04-01'),(17,'esparza','quinonez','linda','lrincon@example.org','2021-05-01'),(18,'godinez','apodaca','francisco javier','anguloisaac@example.org','2021-06-01'),(19,'valdez','zambrano','marcos','fmuniz@example.org','2021-07-01'),(20,'yanez','salcedo','martha','barrientosaurora@example.com','2021-08-01'),(21,'rodrigez','carvajal','samuel','vrios@example.com','2021-09-01'),(22,'hernandes','montes','raquel','gilbertomontoya@example.org','2021-10-01'),(23,'barajas','de la garza','rafael','molinagilberto@example.net','2021-11-01'),(24,'alonzo','ferrer','susana','marcela52@example.com','2021-12-01'),(25,'saucedo','valverde','yolanda','maria-del-carmenarmendariz@example.org','2022-01-01'),(26,'bueno','rosales','dulce','jeronimovega@example.net','2022-02-01'),(27,'villalpando','cabrera','lucas','regaladogabriel@example.org','2022-03-01'),(28,'cardenas','gonzalez','hermelinda','ursulamontero@example.org','2022-04-01'),(29,'ulibarri','espino','marcos','bravoluis@example.net','2022-05-01'),(30,'lugo',' covarrubias','esmeralda','cristal13@example.com','2022-06-01'),(31,'griego','valenzuela','patricio','carreonbernabe@example.com','2022-07-01'),(32,'zarate','nieves','francisca','salva@example.org','2022-08-01'),(33,'duran','chacon','juana','eduardo12@example.com','2022-09-01'),(34,'barela','valencia','gustavo','de-jesusamanda@example.net','2022-10-01'),(35,'arias','corona','irma','gallardomaria-teresa@example.net','2022-11-01'),(36,'garcia','trejo','luz','cristinamontano@example.net','2022-12-01'),(37,'betancourt','gracia','clara','golivarez@example.com','2023-01-01'),(38,'castellanos','arredondo','gerardo','wmares@example.com','2023-02-01'),(39,'perez','madrid','nayeli','aldonza69@example.com','2023-03-01'),(40,'nieves','palacios','lucia','rolandoorosco@example.com','2023-04-01'),(41,'de jesus','rosado','cristian','carmen79@example.org','2023-05-01'),(42,'uribe','hinojosa','wilfrido','fernandosalgado@example.org','2023-06-01'),(43,'lugo','hurtado','angelica','rolonestela@example.org','2023-07-01'),(44,'vega','paez','fidel','angelica03@example.org','2023-08-01'),(45,'de anda','de la o','cristian','vierabenito@example.com','2023-09-01'),(46,'rodrigez','bravo','luis miguel','bvaldez@example.com','2023-10-01'),(47,'regalado','pena','paulina','wvaldez@example.org','2023-11-01'),(48,'portillo','cardenas','oliver','irenedel-valle@example.org','2023-12-01'),(49,'aranda','parra','silvano','angelajaimes@example.net','2024-01-01'),(50,'bustamante','bravo','mauro','luis-manuel56@example.net','2024-02-01'),(51,'loera','zepeda','joaquin','sabrego@example.org','2024-03-01'),(52,'zavala','escalante','juan carlos','hadame@example.com','2024-04-01'),(53,'ontiveros','duenas','eloy','pberrios@example.com','2024-05-01'),(54,'tijerina','ayala','julio','marisol03@example.net','2024-06-01'),(55,'muniz','arriaga','helena','albertoarriaga@example.com','2024-07-01'),(56,'franco','frias','pedro','eugeniacarmona@example.com','2024-08-01'),(57,'benavides','alvarado','jorge luis','gregorio66@example.net','2024-09-01'),(58,'espinosa','puente','rodrigo','jose-carlosbarreto@example.com','2024-10-01'),(59,'montoya','pizarro','reynaldo','clara91@example.net','2024-11-01'),(60,'mendoza','estrada','porfirio','samaniegoalta-gracia@example.net','2024-12-01'),(61,'armendariz','heredia','augusto','aurrutia@example.net','2025-01-01'),(62,'espinosa','rivera','natalia','cardenasesmeralda@example.net','2025-02-01'),(63,'peres','davila','raul','aolivares@example.org','2025-03-01'),(64,'haro','alarcon','bernabe','rubycotto@example.net','2025-04-01'),(65,'pabon','pulido','agustin','lgallardo@example.org','2025-05-01'),(66,'jasso','lozano','jose','alfredoheredia@example.com','2025-06-01'),(67,'giron','baez','norma','cmontez@example.org','2025-07-01'),(68,'galvez','menchaca','reynaldo','anel87@example.org','2025-08-01'),(69,'nevarez','toledo','amanda','xmata@example.net','2025-09-01'),(70,'badillo','melendez','salvador','zcedillo@example.net','2025-10-01'),(71,'teran','velasquez','elena','jaqueline58@example.net','2025-11-01'),(72,'aguirre','zambrano','leonardo','evaluevano@example.com','2025-12-01'),(73,'gamez','granado','cristian','de-jesuscristina@example.net','2026-01-01'),(74,'narvaez','marroquin','ana','kde-leon@example.com','2026-02-01'),(75,'barrientos','preciado','paola','fcarrillo@example.org','2026-03-01'),(76,'cotto','arguello','virginia','rtrevino@example.com','2026-04-01'),(77,'ortega','lara','juan carlos','oliverarroyo@example.com','2026-05-01'),(78,'garza','batista','delia','marcelaalarcon@example.net','2026-06-01'),(79,'perales','lara','jesus','modestoaguilera@example.net','2026-07-01'),(80,'canales','duarte','federico','sofiaflores@example.org','2026-08-01'),(81,'leyva','covarrubias','anabel','esther89@example.com','2026-09-01'),(82,'blanco','maya','abigail','amayorga@example.com','2026-10-01'),(83,'baeza','arguello','elias','rcarmona@example.net','2026-11-01'),(84,'castro','verduzco','emilia','dariomorales@example.org','2026-12-01'),(85,'cardenas','hernandez','elvira','elias35@example.org','2027-01-01'),(86,'solorio','lugo','amanda','evelio37@example.org','2027-02-01'),(87,'arias','gracia','olivia','leonardo01@example.org','2027-03-01'),(88,'robledo','almonte','ines','nguzman@example.com','2027-04-01'),(89,'gurule','pulido','abigail','rosarioeva@example.org','2027-05-01'),(90,'ceja','vasquez','rosa','elvia61@example.org','2027-06-01'),(91,'lira','viera','ana maria','xbriseno@example.com','2027-07-01'),(92,'briones','toro','araceli','jacinto56@example.net','2027-08-01'),(93,'delgado','saldivar','olivia','renteriacarlos@example.com','2027-09-01'),(94,'jasso','gallardo','noemi','caridad98@example.org','2027-10-01'),(95,'palomo','aparicio','juan carlos','mgodinez@example.com','2027-11-01'),(96,'aponte','flores','oscar','robertocamarillo@example.com','2027-12-01'),(97,'anaya','guillen','patricia','jacobo68@example.org','2028-01-01'),(98,'garibay','molina','josefina','angelrael@example.com','2028-02-01'),(99,'campos','lovato','camilo','anguianolorena@example.org','2028-03-01'),(100,'lerma','velez','amanda','dtirado@example.net','2028-04-01');
/*!40000 ALTER TABLE `profesor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programa`
--

DROP TABLE IF EXISTS `programa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `programa` (
  `IdPrograma` int NOT NULL,
  `nivel` varchar(25) NOT NULL,
  `Nombre` varchar(150) NOT NULL,
  `FechaInicio` date NOT NULL,
  PRIMARY KEY (`IdPrograma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programa`
--

LOCK TABLES `programa` WRITE;
/*!40000 ALTER TABLE `programa` DISABLE KEYS */;
INSERT INTO `programa` VALUES (1,'Licenciatura','Ingeniería en Sistemas Computacionales','2023-01-15'),(2,'Licenciatura','Administración de Empresas','2023-02-01'),(3,'Licenciatura','Psicología','2023-02-15'),(4,'Licenciatura','Arquitectura','2023-03-01'),(5,'Licenciatura','Derecho','2023-03-15'),(6,'Licenciatura','Contaduría Pública','2023-04-01'),(7,'Licenciatura','Ingeniería Civil','2023-04-15'),(8,'Licenciatura','Biología','2023-05-01'),(9,'Licenciatura','Química','2023-05-15'),(10,'Licenciatura','Física','2023-06-01'),(11,'Maestría','Maestría en Administración','2023-06-15'),(12,'Maestría','Maestría en Psicología','2023-07-01'),(13,'Maestría','Maestría en Educación','2023-07-15'),(14,'Maestría','Maestría en Derecho','2023-08-01'),(15,'Maestría','Maestría en Ingeniería de Software','2023-08-15'),(16,'Maestría','Maestría en Contabilidad','2023-09-01'),(17,'Maestría','Maestría en Ciencias de la Computación','2023-09-15'),(18,'Doctorado','Doctorado en Psicología','2023-10-01'),(19,'Doctorado','Doctorado en Educación','2023-10-15'),(20,'Doctorado','Doctorado en Ciencias Sociales','2023-11-01'),(21,'Doctorado','Doctorado en Ingeniería','2023-11-15'),(22,'Doctorado','Doctorado en Biología','2023-12-01'),(23,'Licenciatura','Ingeniería Electrónica','2023-12-15'),(24,'Licenciatura','Ingeniería Mecánica','2024-01-01'),(25,'Licenciatura','Ciencias de la Comunicación','2024-01-15'),(26,'Licenciatura','Diseño Gráfico','2024-02-01'),(27,'Licenciatura','Mercadotecnia','2024-02-15'),(28,'Licenciatura','Relaciones Internacionales','2024-03-01'),(29,'Licenciatura','Artes Visuales','2024-03-15'),(30,'Licenciatura','Música','2024-04-01'),(31,'Licenciatura','Historia','2024-04-15'),(32,'Licenciatura','Sociología','2024-05-01'),(33,'Maestría','Maestría en Mercadotecnia','2024-05-15'),(34,'Maestría','Maestría en Diseño Gráfico','2024-06-01'),(35,'Maestría','Maestría en Ciencias Políticas','2024-06-15'),(36,'Maestría','Maestría en Historia','2024-07-01'),(37,'Maestría','Maestría en Sociología','2024-07-15'),(38,'Maestría','Maestría en Filosofía','2024-08-01'),(39,'Maestría','Maestría en Antropología','2024-08-15'),(40,'Doctorado','Doctorado en Filosofía','2024-09-01'),(41,'Doctorado','Doctorado en Antropología','2024-09-15'),(42,'Doctorado','Doctorado en Historia','2024-10-01'),(43,'Doctorado','Doctorado en Ciencias Políticas','2024-10-15'),(44,'Doctorado','Doctorado en Mercadotecnia','2024-11-01'),(45,'Licenciatura','Ingeniería en Energías Renovables','2024-11-15'),(46,'Licenciatura','Ciencias Ambientales','2024-12-01'),(47,'Licenciatura','Ingeniería en Transporte','2024-12-15'),(48,'Licenciatura','Ciencias de la Salud','2025-01-01'),(49,'Licenciatura','Nutrición','2025-01-15'),(50,'Licenciatura','Terapia Física','2025-02-01'),(51,'Licenciatura','Odontología','2025-02-15'),(52,'Licenciatura','Veterinaria','2025-03-01'),(53,'Maestría','Maestría en Salud Pública','2025-03-15'),(54,'Maestría','Maestría en Nutrición','2025-04-01'),(55,'Maestría','Maestría en Terapia Física','2025-04-15'),(56,'Maestría','Maestría en Odontología','2025-05-01'),(57,'Maestría','Maestría en Veterinaria','2025-05-15'),(58,'Doctorado','Doctorado en Salud Pública','2025-06-01'),(59,'Doctorado','Doctorado en Nutrición','2025-06-15'),(60,'Doctorado','Doctorado en Terapia Física','2025-07-01'),(61,'Doctorado','Doctorado en Odontología','2025-07-15'),(62,'Doctorado','Doctorado en Veterinaria','2025-08-01'),(63,'Licenciatura','Ingeniería en Software','2025-08-15'),(64,'Licenciatura','Ciencias de Datos','2025-09-01'),(65,'Licenciatura','Inteligencia Artificial','2025-09-15'),(66,'Licenciatura','Ciberseguridad','2025-10-01'),(67,'Licenciatura','Redes y Telecomunicaciones','2025-10-15'),(68,'Maestría','Maestría en Ciberseguridad','2025-11-01'),(69,'Maestría','Maestría en Inteligencia Artificial','2025-11-15'),(70,'Maestría','Maestría en Ciencias de Datos','2025-12-01'),(71,'Maestría','Maestría en Redes y Telecomunicaciones','2025-12-15'),(72,'Doctorado','Doctorado en Ciberseguridad','2026-01-01'),(73,'Doctorado','Doctorado en Inteligencia Artificial','2026-01-15'),(74,'Doctorado','Doctorado en Ciencias de Datos','2026-02-01'),(75,'Doctorado','Doctorado en Redes y Telecomunicaciones','2026-02-15'),(76,'Licenciatura','Ingeniería en Robótica','2026-03-01'),(77,'Licenciatura','Ingeniería en Biotecnología','2026-03-15'),(78,'Licenciatura','Ingeniería en Materiales','2026-04-01'),(79,'Licenciatura','Ingeniería en Alimentos','2026-04-15'),(80,'Licenciatura','Ingeniería en Textiles','2026-05-01'),(81,'Maestría','Maestría en Biotecnología','2026-05-15'),(82,'Maestría','Maestría en Robótica','2026-06-01'),(83,'Maestría','Maestría en Materiales','2026-06-15'),(84,'Maestría','Maestría en Alimentos','2026-07-01'),(85,'Doctorado','Doctorado en Biotecnología','2026-07-15'),(86,'Doctorado','Doctorado en Robótica','2026-08-01'),(87,'Doctorado','Doctorado en Materiales ','2026-08-15'),(88,'Doctorado','Doctorado en Alimentos','2026-09-01'),(89,'Licenciatura','Ingeniería en Energía','2026-09-15'),(90,'Licenciatura','Ingeniería en Geología','2026-10-01'),(91,'Licenciatura','Ingeniería en Oceanografía','2026-10-15'),(92,'Licenciatura','Ingeniería en Meteorología','2026-11-01'),(93,'Licenciatura','Ingeniería en Agronomía','2026-11-15'),(94,'Maestría','Maestría en Energía','2026-12-01'),(95,'Maestría','Maestría en Geología','2026-12-15'),(96,'Maestría','Maestría en Oceanografía','2027-01-01'),(97,'Maestría','Maestría en Meteorología','2027-01-15'),(98,'Maestría','Maestría en Agronomía','2027-02-01'),(99,'Doctorado','Doctorado en Energía','2027-02-15'),(100,'Doctorado','Doctorado en Geología','2027-03-01');
/*!40000 ALTER TABLE `programa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-30 12:06:59
