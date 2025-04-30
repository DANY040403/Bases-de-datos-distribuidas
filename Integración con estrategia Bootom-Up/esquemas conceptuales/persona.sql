CREATE DATABASE  IF NOT EXISTS `persona` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `persona`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: persona
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
-- Table structure for table `adscripcion`
--

DROP TABLE IF EXISTS `adscripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adscripcion` (
  `IdAdscripcion` int NOT NULL,
  `Instituto` varchar(80) NOT NULL,
  `Area` varchar(150) NOT NULL,
  `Nombramiento` varchar(10) NOT NULL,
  `FechaIngreso` date NOT NULL,
  `IdInvestigador` int NOT NULL,
  PRIMARY KEY (`IdAdscripcion`),
  KEY `IdInvestigador` (`IdInvestigador`),
  CONSTRAINT `adscripcion_ibfk_1` FOREIGN KEY (`IdInvestigador`) REFERENCES `investigador` (`IdInvestigador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adscripcion`
--

LOCK TABLES `adscripcion` WRITE;
/*!40000 ALTER TABLE `adscripcion` DISABLE KEYS */;
INSERT INTO `adscripcion` VALUES (1,'laboratorios teran, carrera y palomo','ciencias computacionales','Asistente','2019-06-08',30),(2,'laboratorios cornejo-leon','tecnologias emergentes','Titular','2015-12-02',43),(3,'esquibel-sandoval e hijos','geografia urbana','Asociado','2014-06-21',92),(4,'palacios s.a.','economia circular','Titular','2023-10-13',20),(5,'rodriguez-mendez s.a. de c.v.','educacion digital','Asociado','2017-09-05',93),(6,'serrano y gonzalez s.a. de c.v.','geografia urbana','Asistente','2012-12-29',95),(7,'flores-rodriquez a.c.','biologia aplicada','Asistente','2024-03-25',55),(8,'industrias hurtado y davila','tecnologias emergentes','Asistente','2011-12-12',45),(9,'laboratorios ponce y garica','tecnologias emergentes','Asistente','2023-11-03',87),(10,'barragan y asociados','tecnologias emergentes','Asociado','2013-08-16',26),(11,'garza-mojica','geografia urbana','Asociado','2012-05-05',80),(12,'industrias cabrera-urbina','ciencias computacionales','Asociado','2013-08-03',67),(13,'orta a.c.','geografia urbana','Asistente','2014-05-02',31),(14,'adame y alcantar e hijos','ciencias computacionales','Titular','2022-03-01',74),(15,'merino, toledo y irizarry','biologia aplicada','Asociado','2020-08-12',70),(16,'villarreal-galvan s.a. de c.v.','robotica educativa','Asociado','2018-11-29',32),(17,'grupo negron, campos y tovar','economia circular','Asociado','2022-12-22',60),(18,'gaona y carrillo s. r.l. de c.v.','ciencias computacionales','Titular','2022-03-05',62),(19,'acevedo s.a. de c.v.','geografia urbana','Asistente','2023-04-05',90),(20,'grupo navarro y rascon','ingenieria ambiental','Asistente','2014-02-23',74),(21,'despacho duarte-calvillo','agricultura de precision','Titular','2011-11-09',3),(22,'laboratorios aguayo y lebron','geografia urbana','Asistente','2023-09-10',46),(23,'salgado y duenas a.c.','geografia urbana','Asistente','2012-11-01',25),(24,'archuleta s.a. de c.v.','economia circular','Asistente','2012-02-07',5),(25,'grupo abreu y mondragon','tecnologias emergentes','Asociado','2014-07-15',14),(26,'pantoja-viera e hijos','geografia urbana','Asistente','2017-01-28',33),(27,'despacho teran y gastelum','educacion digital','Asociado','2019-04-30',23),(28,'uribe y echeverria s.a. de c.v.','robotica educativa','Titular','2016-10-02',19),(29,'puente-urbina','ingenieria ambiental','Asociado','2011-10-06',32),(30,'despacho salcido-olvera','biologia aplicada','Titular','2021-12-08',89),(31,'gomez s. r.l. de c.v.','economia circular','Titular','2020-04-15',88),(32,'feliciano y crespo s. r.l. de c.v.','economia circular','Asociado','2013-09-24',68),(33,'sotelo y caballero a.c.','tecnologias emergentes','Asociado','2021-05-11',89),(34,'laboratorios correa y valentin','robotica educativa','Asociado','2010-12-26',97),(35,'leiva, montenegro y miramontes','agricultura de precision','Asociado','2015-06-28',1),(36,'balderas, espino y torrez','ciencias computacionales','Asociado','2020-02-06',98),(37,'mercado, razo y veliz','economia circular','Asistente','2012-10-11',90),(38,'guardado e hijos','ingenieria ambiental','Asociado','2023-02-14',45),(39,'grupo espinal-berrios','biologia aplicada','Titular','2022-05-18',13),(40,'matias y espino e hijos','geografia urbana','Asistente','2019-02-23',83),(41,'montanez e hijos','robotica educativa','Asistente','2015-04-18',27),(42,'najera a.c.','tecnologias emergentes','Asistente','2018-04-02',1),(43,'olivo y hinojosa s.c.','economia circular','Asociado','2015-05-01',98),(44,'cervantes-alva','ingenieria ambiental','Asociado','2016-06-04',46),(45,'posada-robledo','ciencias computacionales','Asociado','2016-11-17',87),(46,'despacho rosario y vela','agricultura de precision','Asociado','2017-06-27',30),(47,'barela, madrigal y grijalva','ingenieria ambiental','Asistente','2011-01-22',70),(48,'solano-barraza','economia circular','Titular','2013-02-21',19),(49,'rodriguez, sevilla y serna','agricultura de precision','Asistente','2014-03-14',21),(50,'industrias escobedo-cavazos','robotica educativa','Asociado','2016-12-02',41),(51,'valdez y galvan s.a.','educacion digital','Asociado','2019-03-31',4),(52,'guerrero s.a.','geografia urbana','Titular','2016-10-26',80),(53,'despacho guillen y robledo','agricultura de precision','Asistente','2016-04-20',34),(54,'corporacin munoz-concepcion','tecnologias emergentes','Asociado','2017-06-17',89),(55,'ocasio y asociados','agricultura de precision','Titular','2019-04-28',33),(56,'industrias delgadillo-munguia','ciencias computacionales','Asistente','2017-11-17',98),(57,'yanez y muro s.a.','agricultura de precision','Titular','2014-06-02',46),(58,'laboratorios escobedo y perales','economia circular','Titular','2020-11-21',36),(59,'collado-torres e hijos','economia circular','Titular','2023-09-12',65),(60,'rosas e hijos','ciencias computacionales','Titular','2020-07-13',92),(61,'lozano, cotto y perales','tecnologias emergentes','Titular','2010-05-27',54),(62,'despacho ortega, corral y contreras','ciencias computacionales','Asociado','2014-10-18',7),(63,'sauceda s.a. de c.v.','geografia urbana','Titular','2012-11-27',88),(64,'nava-de anda a.c.','economia circular','Titular','2011-11-08',84),(65,'laboratorios serna-otero','tecnologias emergentes','Asociado','2023-08-09',53),(66,'de leon-serrano','ingenieria ambiental','Asociado','2013-05-10',4),(67,'club correa y suarez','tecnologias emergentes','Asistente','2010-10-30',93),(68,'otero-polanco','agricultura de precision','Titular','2012-08-16',100),(69,'despacho mercado, bernal y tamez','ingenieria ambiental','Titular','2024-02-15',74),(70,'proyectos ocasio y mayorga','geografia urbana','Titular','2017-04-05',33),(71,'gracia y rivero a.c.','tecnologias emergentes','Titular','2017-02-06',43),(72,'despacho luna, cantu y arredondo','tecnologias emergentes','Asistente','2016-05-13',47),(73,'santacruz-pizarro','educacion digital','Asociado','2019-01-19',71),(74,'casarez s. r.l. de c.v.','ingenieria ambiental','Asistente','2022-09-30',22),(75,'jasso y castillo e hijos','educacion digital','Asistente','2010-05-03',15),(76,'corporacin leal y lemus','tecnologias emergentes','Titular','2016-02-15',82),(77,'melgar-peralta s.a. de c.v.','educacion digital','Titular','2020-06-26',51),(78,'bahena-viera e hijos','robotica educativa','Asistente','2019-08-27',76),(79,'pineda y venegas a.c.','tecnologias emergentes','Asociado','2014-08-27',5),(80,'grupo fuentes-rascon','educacion digital','Asociado','2017-01-06',22),(81,'canales-villegas e hijos','biologia aplicada','Titular','2019-11-18',43),(82,'urena y ornelas s. r.l. de c.v.','economia circular','Asistente','2010-12-22',81),(83,'carreon s.c.','ingenieria ambiental','Asociado','2022-07-01',20),(84,'collazo e hijos','biologia aplicada','Asociado','2013-09-07',15),(85,'corporacin marroquin y balderas','economia circular','Asistente','2021-11-28',62),(86,'florez y narvaez s. r.l. de c.v.','biologia aplicada','Asistente','2021-12-23',3),(87,'salgado y arroyo s.a.','tecnologias emergentes','Asistente','2017-08-16',13),(88,'mena, holguin y posada','tecnologias emergentes','Titular','2015-03-05',75),(89,'corporacin valenzuela-cotto','agricultura de precision','Asistente','2014-02-18',49),(90,'pena a.c.','educacion digital','Asociado','2020-07-13',9),(91,'tovar-mora s. r.l. de c.v.','educacion digital','Titular','2017-11-26',58),(92,'proyectos macias-zedillo','economia circular','Asociado','2017-02-13',7),(93,'granados-navarrete s.a.','geografia urbana','Asistente','2021-03-20',75),(94,'garibay-suarez y asociados','ingenieria ambiental','Asociado','2020-07-17',43),(95,'toledo a.c.','robotica educativa','Asociado','2015-05-12',15),(96,'club cano, barrios y otero','economia circular','Titular','2018-01-29',68),(97,'caban y benitez y asociados','geografia urbana','Asociado','2016-01-10',96),(98,'fajardo-contreras','tecnologias emergentes','Asistente','2011-12-12',22),(99,'santiago-valencia e hijos','educacion digital','Asociado','2019-10-14',65),(100,'proyectos fernandez-cordova','educacion digital','Titular','2021-09-24',66);
/*!40000 ALTER TABLE `adscripcion` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Table structure for table `cuerpoacademico`
--

DROP TABLE IF EXISTS `cuerpoacademico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuerpoacademico` (
  `IdCuerpo` int NOT NULL,
  `Nombre` varchar(250) NOT NULL,
  `IdIntegrante` int NOT NULL,
  PRIMARY KEY (`IdCuerpo`),
  KEY `IdIntegrante` (`IdIntegrante`),
  CONSTRAINT `cuerpoacademico_ibfk_1` FOREIGN KEY (`IdIntegrante`) REFERENCES `integrante` (`IdIntegrante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuerpoacademico`
--

LOCK TABLES `cuerpoacademico` WRITE;
/*!40000 ALTER TABLE `cuerpoacademico` DISABLE KEYS */;
INSERT INTO `cuerpoacademico` VALUES (1,'Cuerpo Académico de Matemáticas',1),(2,'Cuerpo Académico de Física',2),(3,'Cuerpo Académico de Química',3),(4,'Cuerpo Académico de Biología',4),(5,'Cuerpo Académico de Historia',5),(6,'Cuerpo Académico de Literatura',6),(7,'Cuerpo Académico de Filosofía',7),(8,'Cuerpo Académico de Sociología',8),(9,'Cuerpo Académico de Psicología',9),(10,'Cuerpo Académico de Educación',10),(11,'Cuerpo Académico de Ingeniería',1),(12,'Cuerpo Académico de Arquitectura',2),(13,'Cuerpo Académico de Diseño',3),(14,'Cuerpo Académico de Comunicación',4),(15,'Cuerpo Académico de Derecho',5),(16,'Cuerpo Académico de Economía',6),(17,'Cuerpo Académico de Administración',7),(18,'Cuerpo Académico de Contabilidad',8),(19,'Cuerpo Académico de Mercadotecnia',9),(20,'Cuerpo Académico de Ciencias Políticas',10),(21,'Cuerpo Académico de Antropología',1),(22,'Cuerpo Académico de Arqueología',2),(23,'Cuerpo Académico de Geografía',3),(24,'Cuerpo Académico de Lingüística',4),(25,'Cuerpo Académico de Música',5),(26,'Cuerpo Académico de Artes Visuales',6),(27,'Cuerpo Académico de Teatro',7),(28,'Cuerpo Académico de Danza',8),(29,'Cuerpo Académico de Cine',9),(30,'Cuerpo Académico de Fotografía',10),(31,'Cuerpo Académico de Ciencias de la Computación',1),(32,'Cuerpo Académico de Sistemas',2),(33,'Cuerpo Académico de Redes',3),(34,'Cuerpo Académico de Inteligencia Artificial',4),(35,'Cuerpo Académico de Big Data',5),(36,'Cuerpo Académico de Ciberseguridad',6),(37,'Cuerpo Académico de Desarrollo de Software',7),(38,'Cuerpo Académico de Robótica',8),(39,'Cuerpo Académico de Bioinformática',9),(40,'Cuerpo Académico de Matemáticas Aplicadas',10),(41,'Cuerpo Académico de Física Teórica',1),(42,'Cuerpo Académico de Química Orgánica',2),(43,'Cuerpo Académico de Biología Molecular',3),(44,'Cuerpo Académico de Historia Contemporánea',4),(45,'Cuerpo Académico de Literatura Comparada',5),(46,'Cuerpo Académico de Ética',6),(47,'Cuerpo Académico de Métodos Cuantitativos',7),(48,'Cuerpo Académico de Psicología Social',8),(49,'Cuerpo Académico de Educación Especial',9),(50,'Cuerpo Académico de Ingeniería Civil',10),(51,'Cuerpo Académico de Ingeniería Electrónica',1),(52,'Cuerpo Académico de Ingeniería Mecánica',2),(53,'Cuerpo Académico de Ingeniería Industrial',3),(54,'Cuerpo Académico de Ingeniería Química',4),(55,'Cuerpo Académico de Ingeniería de Software',5),(56,'Cuerpo Académico de Ingeniería Ambiental',6),(57,'Cuerpo Académico de Ingeniería de Transporte',7),(58,'Cuerpo Académico de Ingeniería de Telecomunicaciones',8),(59,'Cuerpo Académico de Ingeniería de Sistemas Computacionales',9),(60,'Cuerpo Académico de Ingeniería de Energías Renovables',10),(61,'Cuerpo Académico de Ciencias de la Salud',1),(62,'Cuerpo Académico de Medicina',2),(63,'Cuerpo Académico de Enfermería',3),(64,'Cuerpo Académico de Odontología',4),(65,'Cuerpo Académico de Nutrición',5),(66,'Cuerpo Académico de Fisioterapia',6),(67,'Cuerpo Académico de Psicología Clínica',7),(68,'Cuerpo Académico de Salud Pública',8),(69,'Cuerpo Académico de Farmacia',9),(70,'Cuerpo Académico de Terapia Ocupacional',10),(71,'Cuerpo Académico de Ciencias Sociales',1),(72,'Cuerpo Académico de Trabajo Social',2),(73,'Cuerpo Académico de Sociología Aplicada',3),(74,'Cuerpo Académico de Política Social',4),(75,'Cuerpo Académico de Desarrollo Comunitario',5),(76,'Cuerpo Académico de Educación para la Paz',6),(77,'Cuerpo Académico de Estudios de Género',7),(78,'Cuerpo Académico de Derechos Humanos',8),(79,'Cuerpo Académico de Migración',9),(80,'Cuerpo Académico de Cultura y Sociedad',10),(81,'Cuerpo Académico de Ciencias de la Tierra',1),(82,'Cuerpo Académico de Geología',2),(83,'Cuerpo Académico de Meteorología',3),(84,'Cuerpo Académico de Oceanografía',4),(85,'Cuerpo Académico de Ecología',5),(86,'Cuerpo Académico de Recursos Naturales',6),(87,'Cuerpo Académico de Biotecnología',7),(88,'Cuerpo Académico de Conservación Ambiental',8),(89,'Cuerpo Académico de Gestión Ambiental',9),(90,'Cuerpo Académico de Agricultura Sostenible',10),(91,'Cuerpo Académico de Ciencias de la Comunicación',1),(92,'Cuerpo Académico de Periodismo',2),(93,'Cuerpo Académico de Publicidad',3),(94,'Cuerpo Académico de Relaciones Públicas',4),(95,'Cuerpo Académico de Comunicación Organizacional',5),(96,'Cuerpo Académico de Comunicación Audiovisual',6),(97,'Cuerpo Académico de Comunicación Digital',7),(98,'Cuerpo Académico de Comunicación Intercultural',8),(99,'Cuerpo Académico de Comunicación Política',9),(100,'Cuerpo Académico de Comunicación y Cultura',10);
/*!40000 ALTER TABLE `cuerpoacademico` ENABLE KEYS */;
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
-- Table structure for table `formacion`
--

DROP TABLE IF EXISTS `formacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formacion` (
  `IdFormacion` int NOT NULL,
  `Grado` varchar(18) NOT NULL,
  `Institucion` varchar(70) NOT NULL,
  `Nombre` varchar(120) NOT NULL,
  `FechaTermino` date NOT NULL,
  `IdInvestigador` int NOT NULL,
  PRIMARY KEY (`IdFormacion`),
  KEY `IdInvestigador` (`IdInvestigador`),
  CONSTRAINT `formacion_ibfk_1` FOREIGN KEY (`IdInvestigador`) REFERENCES `investigador` (`IdInvestigador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formacion`
--

LOCK TABLES `formacion` WRITE;
/*!40000 ALTER TABLE `formacion` DISABLE KEYS */;
INSERT INTO `formacion` VALUES (1,'Maestria','pulido-naranjo','celia','2022-07-16',15),(2,'Maestria','alvarado y lebron s.c.','adriana','2012-03-07',23),(3,'Licenciatura','ceja-mora y asociados','julio','2015-01-27',58),(4,'Maestria','almonte, roldan y haro','cesar','2012-11-05',55),(5,'Licenciatura','grupo razo-villareal','georgina','2017-03-17',18),(6,'Maestria','despacho mayorga-saiz','ignacio','2021-05-11',56),(7,'Licenciatura','verduzco-aleman','guillermo','2018-11-21',20),(8,'Doctorado','quesada-merino s.c.','adriana','2005-07-07',75),(9,'Doctorado','maestas-marrero','silvano','2021-08-12',39),(10,'Maestria','grupo casares-holguin','magdalena','2018-12-09',83),(11,'Doctorado','alonso-longoria s.a. de c.v.','helena','2022-10-26',22),(12,'Maestria','castellanos-leiva','eduardo','2021-01-09',75),(13,'Maestria','laboy-urias s.a. de c.v.','maria eugenia','2016-01-06',38),(14,'Maestria','llamas-batista s.a. de c.v.','claudio','2022-04-20',47),(15,'Doctorado','cordero y madrid s.c.','silvia','2019-09-29',3),(16,'Licenciatura','rodrigez y figueroa y asociados','david','2016-06-03',83),(17,'Maestria','padilla-alva s.a.','augusto','2007-06-05',8),(18,'Licenciatura','corporacin de jesus, figueroa y renteria','wilfrido','2010-11-24',44),(19,'Doctorado','sisneros y avila a.c.','ivonne','2023-02-03',66),(20,'Licenciatura','proyectos luevano-muniz','emiliano','2019-07-17',75),(21,'Maestria','macias s.c.','natalia','2008-11-23',31),(22,'Licenciatura','quezada-montanez','rafael','2022-02-21',86),(23,'Maestria','saucedo y urbina y asociados','wendolin','2012-05-09',95),(24,'Licenciatura','benavidez y lozano s.a. de c.v.','mauro','2012-11-29',48),(25,'Licenciatura','grupo ochoa-delgadillo','andrea','2008-11-11',60),(26,'Licenciatura','betancourt-vanegas y asociados','magdalena','2017-10-17',9),(27,'Maestria','club rincon y montano','aida','2009-10-05',72),(28,'Licenciatura','olivo s. r.l. de c.v.','jeronimo','2005-05-17',63),(29,'Doctorado','rosado y limon s.a. de c.v.','caridad','2008-10-25',71),(30,'Doctorado','cuellar-aguirre e hijos','aldonza','2012-11-07',90),(31,'Maestria','granados-uribe','luis miguel','2018-10-21',51),(32,'Maestria','grupo baca, garcia y rubio','zeferino','2016-05-21',83),(33,'Maestria','montanez y pineda y asociados','estela','2019-05-05',32),(34,'Doctorado','grupo lerma, espinoza y yanez','sara','2020-03-07',39),(35,'Doctorado','verduzco y varela e hijos','mariana','2009-03-08',69),(36,'Licenciatura','club gil, valdez y alonzo','alicia','2017-02-19',41),(37,'Maestria','corporacin naranjo y matos','emiliano','2013-04-24',47),(38,'Maestria','corona-medrano a.c.','aldonza','2012-12-20',15),(39,'Maestria','ledesma-mesa y asociados','cristian','2017-06-15',53),(40,'Licenciatura','laboratorios batista y trevino','maria eugenia','2009-08-25',55),(41,'Maestria','toro-sevilla','angelica','2010-07-12',5),(42,'Licenciatura','jurado-aparicio','rodrigo','2016-12-27',46),(43,'Maestria','olivas-cavazos','hernan','2007-10-28',82),(44,'Maestria','pedraza y velazquez y asociados','irma','2014-10-27',70),(45,'Doctorado','frias-hurtado','bianca','2012-08-09',63),(46,'Maestria','altamirano y asociados','mariano','2009-01-18',10),(47,'Doctorado','leyva-montero s. r.l. de c.v.','zoe','2010-06-22',70),(48,'Licenciatura','club jiminez y bravo','luis miguel','2015-04-02',62),(49,'Licenciatura','corporacin cantu, dominguez y saldana','alejandra','2008-09-13',87),(50,'Doctorado','proyectos sisneros y rendon','elena','2011-06-01',40),(51,'Doctorado','ojeda-munoz e hijos','esther','2019-06-02',23),(52,'Licenciatura','anguiano e hijos','jose eduardo','2005-08-16',55),(53,'Licenciatura','industrias tapia-montero','perla','2022-01-18',76),(54,'Maestria','industrias madera-trejo','karla','2012-07-30',12),(55,'Doctorado','de la rosa, zamudio y alcantar','juan carlos','2009-11-22',49),(56,'Licenciatura','cortez, alonso y botello','ana luisa','2022-12-06',31),(57,'Doctorado','industrias alcantar y romero','sonia','2015-11-19',68),(58,'Licenciatura','cornejo, olivas y esquivel','lucas','2013-09-02',96),(59,'Licenciatura','godoy y tello s.a.','agustin','2008-08-04',98),(60,'Licenciatura','corporacin negrete y zambrano','bernabe','2015-08-17',4),(61,'Maestria','laboratorios ballesteros y villanueva','eugenia','2009-11-21',2),(62,'Doctorado','corporacin botello, caldera y perales','rolando','2017-01-02',19),(63,'Licenciatura','despacho iglesias, valverde y fierro','cristian','2021-08-26',67),(64,'Licenciatura','jaimes s.c.','genaro','2013-02-21',32),(65,'Maestria','griego, alcantar y olivas','fidel','2022-03-18',7),(66,'Maestria','valadez-acevedo s.a. de c.v.','serafin','2016-09-11',6),(67,'Maestria','despacho colunga-calderon','ricardo','2022-06-03',70),(68,'Doctorado','corporacin arce y amador','gabriela','2016-06-26',48),(69,'Doctorado','tafoya y avalos s. r.l. de c.v.','leticia','2019-10-29',50),(70,'Doctorado','club pulido, martinez y urbina','evelio','2018-06-06',79),(71,'Doctorado','laboratorios chacon-de la rosa','hermelinda','2009-09-22',90),(72,'Maestria','aragon-almonte','francisco','2019-04-05',39),(73,'Maestria','elizondo y carrasco s.a. de c.v.','graciela','2018-01-14',43),(74,'Maestria','grupo martinez, ruiz y casanova','jeronimo','2009-06-29',50),(75,'Doctorado','lugo y munguia s.a. de c.v.','susana','2019-06-10',20),(76,'Maestria','proyectos valverde y molina','marco antonio','2010-12-19',53),(77,'Doctorado','melendez-calderon','antonio','2010-09-04',75),(78,'Licenciatura','jaimes-duran e hijos','gregorio','2011-08-15',30),(79,'Maestria','ocampo y del valle s.a.','benjamin','2017-12-10',93),(80,'Licenciatura','cordova, arredondo y garza','agustin','2017-07-16',83),(81,'Maestria','palacios y arriaga a.c.','francisca','2015-09-25',75),(82,'Licenciatura','valladares-olivarez s. r.l. de c.v.','florencia','2017-06-19',25),(83,'Licenciatura','grupo tamayo y mojica','monica','2020-09-10',15),(84,'Maestria','grupo cornejo y salinas','jeronimo','2012-06-06',16),(85,'Doctorado','zarate, ballesteros y guzman','oliver','2006-10-23',90),(86,'Licenciatura','vargas-barragan a.c.','yuridia','2012-04-03',40),(87,'Doctorado','arredondo-moreno','pascual','2020-08-12',68),(88,'Doctorado','luna, sanches y jiminez','mauricio','2016-02-13',39),(89,'Doctorado','ozuna y guillen s.a.','irma','2011-09-21',11),(90,'Maestria','barrientos s.a. de c.v.','rolando','2014-03-08',86),(91,'Licenciatura','caban-tafoya','dalia','2019-02-28',44),(92,'Maestria','prado y asociados','maria cristina','2022-08-25',82),(93,'Maestria','pacheco e hijos','dario','2006-04-30',42),(94,'Maestria','rendon y aguayo s. r.l. de c.v.','aurora','2015-09-28',67),(95,'Licenciatura','preciado-zedillo','caridad','2015-06-05',15),(96,'Doctorado','alba-hernandez','sara','2017-06-26',6),(97,'Licenciatura','hinojosa-barrera','julio','2016-01-08',32),(98,'Licenciatura','laboratorios urrutia y toledo','zoe','2014-09-11',30),(99,'Licenciatura','miramontes, manzanares y baca','trinidad','2022-11-04',24),(100,'Doctorado','corporacin rael y cortez','irene','2019-01-23',48);
/*!40000 ALTER TABLE `formacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `integrante`
--

DROP TABLE IF EXISTS `integrante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `integrante` (
  `IdIntegrante` int NOT NULL,
  `IdPersona` int NOT NULL,
  PRIMARY KEY (`IdIntegrante`),
  KEY `IdPersona` (`IdPersona`),
  CONSTRAINT `integrante_ibfk_1` FOREIGN KEY (`IdPersona`) REFERENCES `persona` (`IdPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `integrante`
--

LOCK TABLES `integrante` WRITE;
/*!40000 ALTER TABLE `integrante` DISABLE KEYS */;
INSERT INTO `integrante` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50),(51,51),(52,52),(53,53),(54,54),(55,55),(56,56),(57,57),(58,58),(59,59),(60,60),(61,61),(62,62),(63,63),(64,64),(65,65),(66,66),(67,67),(68,68),(69,69),(70,70),(71,71),(72,72),(73,73),(74,74),(75,75),(76,76),(77,77),(78,78),(79,79),(80,80),(81,81),(82,82),(83,83),(84,84),(85,85),(86,86),(87,87),(88,88),(89,89),(90,90),(91,91),(92,92),(93,93),(94,94),(95,95),(96,96),(97,97),(98,98),(99,99),(100,100);
/*!40000 ALTER TABLE `integrante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `integrantelinea`
--

DROP TABLE IF EXISTS `integrantelinea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `integrantelinea` (
  `IdIntegranteLinea` int NOT NULL,
  `Vigente` tinyint(1) NOT NULL,
  `Inicio` date NOT NULL,
  `Termina` date NOT NULL,
  `IdLinea` int NOT NULL,
  `IdIntegrante` int NOT NULL,
  PRIMARY KEY (`IdIntegranteLinea`),
  KEY `IdLinea` (`IdLinea`),
  KEY `IdIntegrante` (`IdIntegrante`),
  CONSTRAINT `integrantelinea_ibfk_1` FOREIGN KEY (`IdLinea`) REFERENCES `linea` (`IdLinea`),
  CONSTRAINT `integrantelinea_ibfk_2` FOREIGN KEY (`IdIntegrante`) REFERENCES `integrante` (`IdIntegrante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `integrantelinea`
--

LOCK TABLES `integrantelinea` WRITE;
/*!40000 ALTER TABLE `integrantelinea` DISABLE KEYS */;
INSERT INTO `integrantelinea` VALUES (1,1,'2020-01-15','2023-01-15',1,1),(2,1,'2021-02-20','2024-02-20',2,2),(3,1,'2019-03-10','2022-03-10',3,3),(4,1,'2020-04-05','2023-04-05',4,4),(5,1,'2021-05-25','2024-05-25',5,5),(6,0,'2018-06-30','2021-06-30',6,6),(7,1,'2020-07-15','2023-07-15',7,7),(8,1,'2021-08-20','2024-08-20',8,8),(9,1,'2019-09-10','2022-09-10',9,9),(10,1,'2020-10-05','2023-10-05',10,10),(11,1,'2021-11-15','2024-11-15',1,11),(12,0,'2018-12-20','2021-12-20',2,12),(13,1,'2020-01-10','2023-01-10',3,13),(14,1,'2021-02-15','2024-02-15',4,14),(15,1,'2019-03-20','2022-03-20',5,15),(16,1,'2020-04-25','2023-04-25',6,16),(17,1,'2021-05-30','2024-05-30',7,17),(18,0,'2018-06-15','2021-06-15',8,18),(19,1,'2020-07-10','2023-07-10',9,19),(20,1,'2021-08-25','2024-08-25',10,20),(21,1,'2019-09-15','2022-09-15',1,21),(22,1,'2020-10-20','2023-10-20',2,22),(23,1,'2021-11-30','2024-11-30',3,23),(24,0,'2018-12-10','2021-12-10',4,24),(25,1,'2020-01-05','2023-01-05',5,25),(26,1,'2021-02-20','2024-02-20',6,26),(27,1,'2019-03-10','2022-03-10',7,27),(28,1,'2020-04-15','2023-04-15',8,28),(29,1,'2021-05-25','2024-05-25',9,29),(30,0,'2018-06-30','2021-06-30',10,30),(31,1,'2020-07-15','2023-07-15',1,31),(32,1,'2021-08-20','2024-08-20',2,32),(33,1,'2019-09-10','2022-09-10',3,33),(34,1,'2020-10-05','2023-10-05',4,34),(35,1,'2021-11-15','2024-11-15',5,35),(36,0,'2018-12-20','2021-12-20',6,36),(37,1,'2020-01-10','2023-01-10',7,37),(38,1,'2021-02-15','2024-02-15',8,38),(39,1,'2019-03-20','2022-03-20',9,39),(40,1,'2020-04-25','2023-04-25',10,40),(41,1,'2021-05-30','2024-05-30',1,41),(42,0,'2018-06-15','2021-06-15',2,42),(43,1,'2020-07-10','2023-07-10',3,43),(44,1,'2021-08-25','2024-08-25',4,44),(45,1,'2019-09-15','2022-09-15',5,45),(46,1,'2020-10-20','2023-10-20',6,46),(47,1,'2021-11-30','2024-11-30',7,47),(48,0,'2018-12-10','2021-12-10',8,48),(49,1,'2020-01-05','2023-01-05',9,49),(50,1,'2021-02-20','2024-02-20',10,50),(51,1,'2019-03-10','2022-03-10',1,51),(52,1,'2020-04-15','2023-04-15',2,52),(53,1,'2021-05-25','2024-05-25',3,53),(54,0,'2018-06-30','2021-06-30',4,54),(55,1,'2020-07-15','2023-07-15',5,55),(56,1,'2021-08-20','2024-08-20',6,56),(57,1,'2019-09-10','2022-09-10',7,57),(58,1,'2020-10-05','2023-10-05',8,58),(59,1,'2021-11-15','2024-11-15',9,59),(60,0,'2018-12-20','2021-12-20',10,60),(61,1,'2020-01-10','2023-01-10',1,61),(62,1,'2021-02-15','2024-02-15',2,62),(63,1,'2019-03-20','2022-03-20',3,63),(64,1,'2020-04-25','2023-04-25',4,64),(65,1,'2021-05-30','2024-05-30',5,65),(66,0,'2018-06-15','2021-06-15',6,66),(67,1,'2020-07-10','2023-07-10',7,67),(68,1,'2021-08-25','2024-08-25',8,68),(69,1,'2019-09-15','2022-09-15',9,69),(70,1,'2020-10-20','2023-10-20',10,70),(71,1,'2021-11-30','2024-11-30',1,71),(72,0,'2018-12-10','2021-12-10',2,72),(73,1,'2020-01-05','2023-01-05',3,73),(74,1,'2021-02-20','2024-02-20',4,74),(75,1,'2019-03-10','2022-03-10',5,75),(76,1,'2020-04-15','2023-04-15',6,76),(77,1,'2021-05-25','2024-05-25',7,77),(78,0,'2018-06-30','2021-06-30',8,78),(79,1,'2020-07-15','2023-07-15',9,79),(80,1,'2021-08-20','2024-08-20',10,80),(81,1,'2019-09-10','2022-09-10',1,81),(82,1,'2020-10-05','2023-10-05',2,82),(83,1,'2021-11-15','2024-11-15',3,83),(84,0,'2018-12-20','2021-12-20',4,84),(85,1,'2020-01-10','2023-01-10',5,85),(86,1,'2021-02-15','2024-02-15',6,86),(87,1,'2019-03-20','2022-03-20',7,87),(88,1,'2020-04-25','2023-04-25',8,88),(89,1,'2021-05-30','2024-05-30',9,89),(90,0,'2018-06-15','2021-06-15',10,90),(91,1,'2020-07-10','2023-07-10',1,91),(92,1,'2021-08-25','2024-08-25',2,92),(93,1,'2019-09-15','2022-09-15',3,93),(94,1,'2020-10-20','2023-10-20',4,94),(95,1,'2021-11-30','2024-11-30',5,95),(96,0,'2018-12-10','2021-12-10',6,96),(97,1,'2020-01-05','2023-01-05',7,97),(98,1,'2021-02-20','2024-02-20',8,98),(99,1,'2019-03-10','2022-03-10',9,99),(100,1,'2020-04-15','2023-04-15',10,100);
/*!40000 ALTER TABLE `integrantelinea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investigador`
--

DROP TABLE IF EXISTS `investigador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investigador` (
  `IdInvestigador` int NOT NULL,
  `Orcid` varchar(30) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `Movil` varchar(15) NOT NULL,
  `IdPersona` int NOT NULL,
  PRIMARY KEY (`IdInvestigador`),
  KEY `IdPersona` (`IdPersona`),
  CONSTRAINT `investigador_ibfk_1` FOREIGN KEY (`IdPersona`) REFERENCES `persona` (`IdPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investigador`
--

LOCK TABLES `investigador` WRITE;
/*!40000 ALTER TABLE `investigador` DISABLE KEYS */;
INSERT INTO `investigador` VALUES (1,'6231-8991-9917-1706','armasgonzalo@example.net','5522769539',1),(2,'3237-4455-8768-5573','augusto45@example.net','5571714239',2),(3,'4260-7209-7592-6131','esperanza41@example.net','5519313947',3),(4,'5166-1668-2779-3607','imenchaca@example.org','5530963609',4),(5,'4550-3025-7291-6625','nancymarin@example.org','5597490067',5),(6,'4624-5557-1426-3868','almanzanatalia@example.net','5527756176',6),(7,'8478-8535-4649-1324','reynosofrancisca@example.org','5562048900',7),(8,'7839-8908-1120-6461','jaimemartha@example.org','5544568534',8),(9,'9993-8581-3972-5859','grijalvaleonor@example.org','5558484801',9),(10,'8776-2486-7230-8113','luisa81@example.org','5598745414',10),(11,'9277-1546-6576-3446','sofiade-la-cruz@example.com','5576802263',11),(12,'7128-8446-6422-4692','qverduzco@example.net','5531369286',12),(13,'3819-1670-2620-2240','estherpadron@example.org','5529532952',13),(14,'7518-8659-7056-7505','abril12@example.org','5513132619',14),(15,'1721-1058-6034-8840','concepcioncristobal@example.net','5589788722',15),(16,'9170-8736-8568-7825','dulceolivas@example.net','5585915814',16),(17,'9420-2748-7893-7015','lrincon@example.org','5555308824',17),(18,'3493-3989-7377-7365','anguloisaac@example.org','5513634050',18),(19,'7817-4771-1854-2848','fmuniz@example.org','5545652978',19),(20,'9424-9935-3707-7418','barrientosaurora@example.com','5521231381',20),(21,'2237-2469-1418-1052','vrios@example.com','5596595059',21),(22,'5792-3150-7657-3781','gilbertomontoya@example.org','5511203112',22),(23,'3420-1127-3521-9976','molinagilberto@example.net','5580076648',23),(24,'8214-9551-2346-3667','marcela52@example.com','5585909615',24),(25,'5752-3429-2249-5887','maria-del-carmenarmendariz@example.org','5578469976',25),(26,'2818-6898-2886-9298','jeronimovega@example.net','5554643713',26),(27,'7079-6398-7791-7188','regaladogabriel@example.org','5599031937',27),(28,'3620-3061-5930-6497','ursulamontero@example.org','5596734202',28),(29,'9648-6062-2134-8492','bravoluis@example.net','5558870153',29),(30,'8344-5759-4381-8716','cristal13@example.com','5545051293',30),(31,'8543-5800-2938-5462','carreonbernabe@example.com','5524056106',31),(32,'4959-6138-8929-9923','salva@example.org','5566110023',32),(33,'5818-1775-3724-8917','eduardo12@example.com','5547216977',33),(34,'9790-7757-1348-1339','de-jesusamanda@example.net','5551990045',34),(35,'8791-8989-7540-3990','gallardomaria-teresa@example.net','554465139 2',35),(36,'4157-1714-3342-8916','cristinamontano@example.net','5594820171',36),(37,'5501-5458-2684-6293','golivarez@example.com','5572550296',37),(38,'5865-2850-1485-2283','wmares@example.com','5519911295',38),(39,'5336-8501-7762-3229','aldonza69@example.com','5539768162',39),(40,'5411-1162-8149-7600','rolandoorosco@example.com','5531059587',40),(41,'2155-3506-4576-9453','carmen79@example.org','5557029683',41),(42,'9056-9550-6567-3804','fernandosalgado@example.org','5594076520',42),(43,'9635-2964-2387-5162','rolonestela@example.org','5520906641',43),(44,'9061-6343-3643-4901','angelica03@example.org','5531337713',44),(45,'3983-7898-3551-9010','vierabenito@example.com','5563833881',45),(46,'3949-6148-6190-4363','bvaldez@example.com','5520083386',46),(47,'8410-7424-6232-3327','wvaldez@example.org','5561322744',47),(48,'9228-1790-8086-4482','irenedel-valle@example.org','5569026615',48),(49,'3371-1765-5086-6205','angelajaimes@example.net','5524910148',49),(50,'7387-9299-4297-1438','luis-manuel56@example.net','5548556949',50),(51,'8460-9209-4944-3953','sabrego@example.org','5592908912',51),(52,'6871-1664-5398-1492','hadame@example.com','5548720558',52),(53,'7197-8777-7592-7434','pberrios@example.com','5531902063',53),(54,'4453-6769-8855-4413','marisol03@example.net','5597848761',54),(55,'5558-4239-2625-8293','albertoarriaga@example.com','5556512116',55),(56,'7031-1018-5971-7919','eugeniacarmona@example.com','5557577138',56),(57,'3577-7181-6787-7562','gregorio66@example.net','5548287740',57),(58,'1141-9738-7927-6036','jose-carlosbarreto@example.com','5541463234',58),(59,'1646-4525-1219-5801','clara91@example.net','5514170824',59),(60,'6440-6377-6296-4612','samaniegoalta-gracia@example.net','5515744715',60),(61,'7764-1258-1219-8194','aurrutia@example.net','5577001738',61),(62,'7196-2550-1327-7646','cardenasesmeralda@example.net','5510920578',62),(63,'9502-2305-7272-8631','aolivares@example.org','5516232800',63),(64,'4907-9140-8276-1399','rubycotto@example.net','5515014711',64),(65,'2814-9997-7803-7981','lgallardo@example.org','5598410767',65),(66,'9791-8017-7283-5694','alfredoheredia@example.com','5562499127',66),(67,'2128-8615-7862-2282','cmontez@example.org','5534484106',67),(68,'4739-7760-9677-1637','anel87@example.org','5544230483',68),(69,'2388-4040-7778-9653','xmata@example.net','5544539628',69),(70,'5709-3525-7976-9950','zcedillo@example.net','5576377237',70),(71,'2922-8213-1662-4850','jaqueline58@example.net','5550043191',71),(72,'5582-5675-8610-9103','evaluevano@example.com','5566810275',72),(73,'101 3-9150-5492-3915','de-jesuscristina@example.net','5547028847',73),(74,'3648-8531-7396-5313','kde-leon@example.com','5564119555',74),(75,'7763-7644-5548-8762','fcarrillo@example.org','5561554907',75),(76,'5217-8737-3476-4309','rtrevino@example.com','5583283993',76),(77,'6406-1646-7420-6772','oliverarroyo@example.com','5539159489',77),(78,'8971-9643-1928-9819','marcelaalarcon@example.net','5571628078',78),(79,'8455-1315-3551-1624','modestoaguilera@example.net','5582817713',79),(80,'7640-1320-2102-4200','sofiaflores@example.org','5527956602',80),(81,'8811-7977-3799-6765','esther89@example.com','5595602175',81),(82,'7419-9669-4134-9005','amayorga@example.com','5588399459',82),(83,'2062-5950-4217-8186','rcarmona@example.net','5548562748',83),(84,'6899-6572-5973-7794','dariomorales@example.org','5579120001',84),(85,'9285-9133-5106-7221','elias35@example.org','5515813210',85),(86,'8105-2663-9855-7321','evelio37@example.org','5520699819',86),(87,'8496-8027-8094-6859','leonardo01@example.org','5585446008',87),(88,'7577-3132-3006-4236','nguzman@example.com','5541152823',88),(89,'8752-3786-4822-4842','rosarioeva@example.org','5519437103',89),(90,'5199-3602-3324-4385','elvia61@example.org','5549055888',90),(91,'1139-5950-7557-6963','xbriseno@example.com','5550275935',91),(92,'9642-8666-4384-9705','jacinto56@example.net','5574140445',92),(93,'4260-1301-5547-9943','renteriacarlos@example.com','5556146219',93),(94,'6971-3063-2647-7054','caridad98@example.org','5574439817',94),(95,'9314-7215-8405-6800','mgodinez@example.com','5519334473',95),(96,'4678-9991-6817-2266','robertocamarillo@example.com','5578746463',96),(97,'2583-9346-9111-4364','jacobo68@example.org','5542094064',97),(98,'1148-4451-6639-7438','angelrael@example.com','5515875286',98),(99,'9707-3140-4063-8119','anguianolorena@example.org','5572480397',99),(100,'4241-1550-5355-5320','dtirado@example.net','5564794779',100);
/*!40000 ALTER TABLE `investigador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linea`
--

DROP TABLE IF EXISTS `linea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `linea` (
  `IdLinea` int NOT NULL,
  `Nombre` varchar(150) NOT NULL,
  `Descripcion` varchar(500) NOT NULL,
  `IdCuerpo` int NOT NULL,
  PRIMARY KEY (`IdLinea`),
  KEY `IdCuerpo` (`IdCuerpo`),
  CONSTRAINT `linea_ibfk_1` FOREIGN KEY (`IdCuerpo`) REFERENCES `cuerpoacademico` (`IdCuerpo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linea`
--

LOCK TABLES `linea` WRITE;
/*!40000 ALTER TABLE `linea` DISABLE KEYS */;
INSERT INTO `linea` VALUES (1,'Matemáticas Puras','Investigación en teorías y aplicaciones de matemáticas puras.',1),(2,'Matemáticas Aplicadas','Estudio de aplicaciones matemáticas en diversas disciplinas.',1),(3,'Física Teórica','Desarrollo de teorías físicas y modelos matemáticos.',2),(4,'Física Experimental','Investigación experimental en física.',2),(5,'Química Orgánica','Estudio de compuestos orgánicos y sus reacciones.',3),(6,'Química Inorgánica','Investigación en compuestos inorgánicos y sus propiedades.',3),(7,'Biología Molecular','Estudio de procesos biológicos a nivel molecular.',4),(8,'Ecología','Investigación sobre interacciones entre organismos y su entorno.',4),(9,'Historia Moderna','Análisis de eventos históricos desde el siglo XVIII.',5),(10,'Literatura Hispanoamericana','Estudio de obras literarias de América Latina.',6),(11,'Filosofía Contemporánea','Investigación en corrientes filosóficas actuales.',7),(12,'Sociología Urbana','Estudio de dinámicas sociales en entornos urbanos.',8),(13,'Psicología Cognitiva','Investigación sobre procesos mentales y cognición.',9),(14,'Educación Inclusiva','Desarrollo de estrategias para la educación inclusiva.',10),(15,'Ingeniería Matemática','Aplicación de matemáticas en problemas de ingeniería.',11),(16,'Diseño Arquitectónico','Investigación en técnicas y estilos de diseño arquitectónico.',12),(17,'Diseño Gráfico','Estudio de principios y técnicas de diseño gráfico.',13),(18,'Comunicación Digital','Investigación en medios y plataformas digitales.',14),(19,'Derecho Constitucional','Estudio de principios y normas constitucionales.',15),(20,'Economía Internacional','Análisis de relaciones económicas entre países.',16),(21,'Administración de Proyectos','Desarrollo de metodologías para la gestión de proyectos.',17),(22,'Contabilidad Financiera','Estudio de principios contables y su aplicación.',18),(23,'Mercadotecnia Digital','Investigación en estrategias de marketing en línea.',19),(24,'Ciencias Políticas Comparadas','Análisis comparativo de sistemas políticos.',20),(25,'Antropología Cultural','Estudio de culturas y sus prácticas sociales.',21),(26,'Arqueología Prehispánica','Investigación sobre civilizaciones antiguas en América.',22),(27,'Geografía Humana','Estudio de la relación entre humanos y su entorno.',23),(28,'Lingüística Aplicada','Investigación sobre el uso del lenguaje en contextos prácticos.',24),(29,'Música Clásica','Estudio de la historia y teoría de la música clásica.',25),(30,'Artes Visuales Contemporáneas','Investigación en tendencias actuales en artes visuales.',26),(31,'Teatro Moderno','Estudio de obras y técnicas teatrales contemporáneas.',27),(32,'Danza Contemporánea','Investigación en estilos y técnicas de danza moderna.',28),(33,'Cine Documental','Estudio de técnicas y narrativas en el cine documental.',29),(34,'Fotografía Artística','Investigación en técnicas y estilos de fotografía artística.',30),(35,'Ciencias de la Computación Teórica','Estudio de fundamentos teóricos en computación.',31),(36,'Sistemas de Información','Investigación en diseño y gestión de sistemas de información.',32),(37,'Redes de Computadoras','Estudio de diseño y gestión de redes informáticas.',33),(38,'Inteligencia Artificial','Investigación en algoritmos y aplicaciones de IA.',34),(39,'Big Data y Análisis de Datos','Estudio de técnicas para el análisis de grandes volúmenes de datos.',35),(40,'Ciberseguridad','Investigación en protección de sistemas y datos contra ataques cibernéticos.',36),(41,'Desarrollo de Software Ágil','Estudio de metodologías ágiles en el desarrollo de software.',37),(42,'Robótica Avanzada','Investigación en técnicas y aplicaciones de robótica.',38),(43,'Bioinformática Aplicada','Estudio de aplicaciones de la informática en biología.',39),(44,'Matemáticas Financieras','Investigación en modelos matemáticos aplicados a finanzas.',40),(45,'Física Aplicada','Estudio de aplicaciones prácticas de principios físicos.',41),(46,'Química Analítica','Investigación en técnicas de análisis químico.',42),(47,'Biología Ambiental','Estudio de interacciones biológicas en el medio ambiente.',43),(48,'Historia de la Ciencia','Análisis de la evolución del pensamiento científico.',44),(49,'Literatura Infantil','Estudio de obras literarias dirigidas a niños.',45),(50,'Filosofía de la Ciencia','Investigación sobre fundamentos filosóficos de la ciencia.',46),(51,'Sociología de la Educación','Estudio de la relación entre educación y sociedad.',47),(52,'Psicología del Desarrollo','Investigación sobre el desarrollo humano a lo largo de la vida.',48),(53,'Educación a Distancia','Desarrollo de metodologías para la educación en línea.',49),(54,'Ingeniería de Software','Estudio de principios y prácticas en el desarrollo de software.',50),(55,'Arquitectura Sostenible','Investigación en prácticas de diseño arquitectónico sostenible.',51),(56,'Diseño de Interiores','Estudio de técnicas y estilos en diseño de interiores.',52),(57,'Comunicación Intercultural','Investigación sobre interacciones entre diferentes culturas.',53),(58,'Derecho Internacional','Estudio de normas y principios del derecho internacional.',54),(59,'Economía del Desarrollo','Análisis de estrategias para el desarrollo económico.',55),(60,'Administración Pública','Estudio de gestión y políticas en el sector público.',56),(61,'Contabilidad de Costos','Investigación en métodos de contabilidad de costos.',57),(62,'Mercadotecnia Estratégica','Estudio de estrategias de marketing a largo plazo.',58),(63,'Ciencias Políticas y Relaciones Internacionales','Investigación en políticas y relaciones entre naciones.',59),(64,'Antropología Social','Estudio de estructuras sociales y relaciones humanas.',60),(65,'Arqueología Histórica','Investigación sobre civilizaciones históricas y su legado.',61),(66,'Geografía Física','Estudio de procesos físicos en la Tierra.',62),(67,'Lingüística Teórica','Investigación en teorías del lenguaje y su estructura.',63),(68,'Música Popular','Estudio de géneros y estilos de música popular.',64),(69,'Artes Escénicas','Investigación en diversas formas de artes escénicas.',65),(70,'Cine de Ficción','Estudio de técnicas y narrativas en el cine de ficción.',66),(71,'Fotografía Documental','Investigación en técnicas de fotografía para documentar realidades.',67),(72,'Ciencias de la Computación Aplicadas','Estudio de aplicaciones prácticas en computación.',68),(73,'Sistemas de Seguridad Informática','Investigación en protección de sistemas informáticos.',69),(74,'Redes Sociales','Estudio de dinámicas y efectos de las redes sociales.',70),(75,'Inteligencia de Negocios','Investigación en análisis de datos para la toma de decisiones empresariales.',71),(76,'Big Data en Salud','Estudio de aplicaciones de Big Data en el sector salud.',72),(77,'Ciberinteligencia','Investigación en técnicas de inteligencia cibernética.',73),(78,'Desarrollo de Aplicaciones Móviles','Estudio de metodologías para el desarrollo de apps móviles.',74),(79,'Robótica Educativa','Investigación en el uso de robótica en entornos educativos.',75),(80,'Bioinformática Genómica','Estudio de aplicaciones de bioinformática en genómica.',76),(81,'Matemáticas para la Ingeniería','Investigación en aplicaciones matemáticas en ingeniería.',77),(82,'Física de Materiales','Estudio de propiedades físicas de materiales.',78),(83,'Química Verde','Investigación en prácticas sostenibles en química.',79),(84,'Biología de la Conservación','Estudio de estrategias para la conservación de especies.',80),(85,'Historia del Arte','Análisis de la evolución del arte a través de la historia.',81),(86,'Literatura Comparativa','Estudio de comparaciones entre diferentes tradiciones literarias.',82),(87,'Filosofía Política','Investigación sobre teorías y prácticas políticas.',83),(88,'Sociología Rural','Estudio de dinámicas sociales en áreas rurales.',84),(89,'Psicología Organizacional','Investigación sobre comportamiento en entornos laborales.',85),(90,'Educación en Valores','Desarrollo de programas educativos centrados en valores.',86),(91,'Ingeniería de Datos','Estudio de técnicas para la gestión y análisis de datos.',87),(92,'Arquitectura de Paisaje','Investigación en diseño de espacios exteriores.',88),(93,'Diseño de Productos','Estudio de procesos de diseño y desarrollo de productos.',89),(94,'Comunicación Política','Investigación sobre estrategias de comunicación en política.',90),(95,'Derecho Penal','Estudio de normas y principios del derecho penal.',91),(96,'Economía Comportamental','Análisis de factores psicológicos en decisiones económicas.',92),(97,'Administración de Recursos Humanos','Estudio de gestión del talento humano en organizaciones.',93),(98,'Contabilidad Internacional','Investigación en normas contables a nivel internacional.',94),(99,'Mercadotecnia Internacional','Estudio de estrategias de marketing en mercados globales.',95),(100,'Ciencias Políticas y Teoría Crítica','Investigación en teorías críticas de la política.',96);
/*!40000 ALTER TABLE `linea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `IdPersona` int NOT NULL,
  `Paterno` varchar(90) NOT NULL,
  `Materno` varchar(90) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`IdPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'valle','ibarra','yuridia'),(2,'tovar','madrid','timoteo'),(3,'de la garza','puente','oliver'),(4,'rosado','monroy','aldo'),(5,'pedroza','noriega','indira'),(6,'peralta','zamora','susana'),(7,'lebron','navarrete','norma'),(8,'zelaya','mondragon','abelardo'),(9,'jimenez','benitez','armando'),(10,'casas','bernal','amelia'),(11,'rosales','ontiveros','jose emilio'),(12,'mata','rico','rolando'),(13,'lovato','venegas','cristina'),(14,'padilla','garay','emilia'),(15,'de la cruz','cortez','eva'),(16,'vera','arce','catalina'),(17,'esparza','quinonez','linda'),(18,'godinez','apodaca','francisco javier'),(19,'valdez','zambrano','marcos'),(20,'yanez','salcedo','martha'),(21,'rodrigez','carvajal','samuel'),(22,'hernandes','montes','raquel'),(23,'barajas','de la garza','rafael'),(24,'alonzo','ferrer','susana'),(25,'saucedo','valverde','yolanda'),(26,'bueno','rosales','dulce'),(27,'villalpando','cabrera','lucas'),(28,'cardenas','gonzalez','hermelinda'),(29,'ulibarri','espino','marcos'),(30,'lugo',' covarrubias','esmeralda'),(31,'griego','valenzuela','patricio'),(32,'zarate','nieves','francisca'),(33,'duran','chacon','juana'),(34,'barela','valencia','gustavo'),(35,'arias','corona','irma'),(36,'garcia','trejo','luz'),(37,'betancourt','gracia','clara'),(38,'castellanos','arredondo','gerardo'),(39,'perez','madrid','nayeli'),(40,'nieves','palacios','lucia'),(41,'de jesus','rosado','cristian'),(42,'uribe','hinojosa','wilfrido'),(43,'lugo','hurtado','angelica'),(44,'vega','paez','fidel'),(45,'de anda','de la o','cristian'),(46,'rodrigez','bravo','luis miguel'),(47,'regalado','pena','paulina'),(48,'portillo','cardenas','oliver'),(49,'aranda','parra','silvano'),(50,'bustamante','bravo','mauro'),(51,'loera','zepeda','joaquin'),(52,'zavala','escalante','juan carlos'),(53,'ontiveros','duenas','eloy'),(54,'tijerina','ayala','julio'),(55,'muniz','arriaga','helena'),(56,'franco','frias','pedro'),(57,'benavides','alvarado','jorge luis'),(58,'espinosa','puente','rodrigo'),(59,'montoya','pizarro','reynaldo'),(60,'mendoza','estrada','porfirio'),(61,'armendariz','heredia','augusto'),(62,'espinosa','rivera','natalia'),(63,'peres','davila','raul'),(64,'haro','alarcon','bernabe'),(65,'pabon','pulido','agustin'),(66,'jasso','lozano','jose'),(67,'giron','baez','norma'),(68,'galvez','menchaca','reynaldo'),(69,'nevarez','toledo','amanda'),(70,'badillo','melendez','salvador'),(71,'teran','velasquez','elena'),(72,'aguirre','zambrano','leonardo'),(73,'gamez','granado','cristian'),(74,'narvaez','marroquin','ana'),(75,'barrientos','preciado','paola'),(76,'cotto','arguello','virginia'),(77,'ortega','lara','juan carlos'),(78,'garza','batista','delia'),(79,'perales','lara','jesus'),(80,'canales','duarte','federico'),(81,'leyva','covarrubias','anabel'),(82,'blanco','maya','abigail'),(83,'baeza','arguello','elias'),(84,'castro','verduzco','emilia'),(85,'cardenas','hernandez','elvira'),(86,'solorio','lugo','amanda'),(87,'arias','gracia','olivia'),(88,'robledo','almonte','ines'),(89,'gurule','pulido','abigail'),(90,'ceja','vasquez','rosa'),(91,'lira','viera','ana maria'),(92,'briones','toro','araceli'),(93,'delgado','saldivar','olivia'),(94,'jasso','gallardo','noemi'),(95,'palomo','aparicio','juan carlos'),(96,'aponte','flores','oscar'),(97,'anaya','guillen','patricia'),(98,'garibay','molina','josefina'),(99,'campos','lovato','camilo'),(100,'lerma','velez','amanda');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produccion`
--

DROP TABLE IF EXISTS `produccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produccion` (
  `IdProduccion` int NOT NULL,
  `tipo` varchar(60) NOT NULL,
  `Titulo` varchar(250) NOT NULL,
  `anio` int NOT NULL,
  `IdInvestigador` int NOT NULL,
  PRIMARY KEY (`IdProduccion`),
  KEY `IdInvestigador` (`IdInvestigador`),
  CONSTRAINT `produccion_ibfk_1` FOREIGN KEY (`IdInvestigador`) REFERENCES `investigador` (`IdInvestigador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produccion`
--

LOCK TABLES `produccion` WRITE;
/*!40000 ALTER TABLE `produccion` DISABLE KEYS */;
INSERT INTO `produccion` VALUES (1,'Libro','estudio de biodiversidad urbana',2009,8),(2,'Articulo','uso sostenible del agua',2007,94),(3,'Ponencia','desarrollo de tecnologia educativa',2023,51),(4,'Articulo','desarrollo de tecnologia educativa',2018,45),(5,'Ponencia','desarrollo de tecnologia educativa',2024,71),(6,'Ponencia','procesamiento de imagenes satelitales',2010,71),(7,'Informe','modelo de prediccion climatica',2020,47),(8,'Capitulo','sistemas inteligentes aplicados',2000,97),(9,'Ponencia','evaluacion de impacto social',2014,45),(10,'Ponencia','estudio de biodiversidad urbana',2017,65),(11,'Articulo','eficiencia energetica en viviendas',2025,84),(12,'Articulo','eficiencia energetica en viviendas',2024,63),(13,'Articulo','modelo de prediccion climatica',2010,57),(14,'Ponencia','modelo de prediccion climatica',2021,78),(15,'Libro','sistemas inteligentes aplicados',2024,82),(16,'Informe','eficiencia energetica en viviendas',2013,95),(17,'Ponencia','procesamiento de imagenes satelitales',2001,78),(18,'Informe','modelo de prediccion climatica',2016,88),(19,'Articulo','modelo de prediccion climatica',2010,58),(20,'Informe','modelo de prediccion climatica',2022,90),(21,'Articulo','sistemas inteligentes aplicados',2008,90),(22,'Articulo','procesamiento de imagenes satelitales',2012,9),(23,'Informe','sistemas inteligentes aplicados',2012,19),(24,'Informe','analisis de datos ambientales',2013,32),(25,'Informe','estudio de biodiversidad urbana',2025,100),(26,'Informe','modelo de prediccion climatica',2013,49),(27,'Libro','eficiencia energetica en viviendas',2018,40),(28,'Libro','sistemas inteligentes aplicados',2004,57),(29,'Libro','tecnicas de conservacion',2013,89),(30,'Ponencia','tecnicas de conservacion',2002,100),(31,'Articulo','uso sostenible del agua',2003,95),(32,'Informe','desarrollo de tecnologia educativa',2010,70),(33,'Capitulo','uso sostenible del agua',2025,62),(34,'Informe','eficiencia energetica en viviendas',2015,37),(35,'Ponencia','desarrollo de tecnologia educativa',2025,60),(36,'Capitulo','modelo de prediccion climatica',2006,71),(37,'Ponencia','tecnicas de conservacion',2008,49),(38,'Articulo','procesamiento de imagenes satelitales',2002,46),(39,'Articulo','modelo de prediccion climatica',2004,90),(40,'Ponencia','evaluacion de impacto social',2021,65),(41,'Informe','estudio de biodiversidad urbana',2001,66),(42,'Libro','uso sostenible del agua',2004,63),(43,'Ponencia','sistemas inteligentes aplicados',2000,5),(44,'Articulo','estudio de biodiversidad urbana',2001,62),(45,'Informe','tecnicas de conservacion',2010,86),(46,'Informe','analisis de datos ambientales',2025,98),(47,'Libro','procesamiento de imagenes satelitales',2024,96),(48,'Capitulo','eficiencia energetica en viviendas',2021,81),(49,'Libro','sistemas inteligentes aplicados',2018,54),(50,'Ponencia','estudio de biodiversidad urbana',2018,98),(51,'Articulo','evaluacion de impacto social',2010,18),(52,'Ponencia','eficiencia energetica en viviendas',2017,1),(53,'Informe','uso sostenible del agua',2002,3),(54,'Libro','tecnicas de conservacion',2017,14),(55,'Capitulo','evaluacion de impacto social',2011,50),(56,'Articulo','modelo de prediccion climatica',2020,79),(57,'Libro','uso sostenible del agua',2024,33),(58,'Libro','modelo de prediccion climatica',2002,46),(59,'Articulo','procesamiento de imagenes satelitales',2003,70),(60,'Libro','estudio de biodiversidad urbana',2007,5),(61,'Articulo','tecnicas de conservacion',2008,94),(62,'Informe','tecnicas de conservacion',2023,19),(63,'Ponencia','tecnicas de conservacion',2008,93),(64,'Informe','evaluacion de impacto social',2023,66),(65,'Ponencia','estudio de biodiversidad urbana',2018,4),(66,'Articulo','estudio de biodiversidad urbana',2023,8),(67,'Libro','desarrollo de tecnologia educativa',2000,91),(68,'Ponencia','uso sostenible del agua',2015,53),(69,'Ponencia','sistemas inteligentes aplicados',2001,28),(70,'Articulo','procesamiento de imagenes satelitales',2010,87),(71,'Capitulo','tecnicas de conservacion',2006,38),(72,'Libro','modelo de prediccion climatica',2001,52),(73,'Articulo','modelo de prediccion climatica',2017,55),(74,'Informe','procesamiento de imagenes satelitales',2012,18),(75,'Articulo','evaluacion de impacto social',2012,59),(76,'Capitulo','uso sostenible del agua',2001,54),(77,'Articulo','procesamiento de imagenes satelitales',2008,34),(78,'Articulo','sistemas inteligentes aplicados',2015,15),(79,'Ponencia','tecnicas de conservacion',2002,4),(80,'Libro','procesamiento de imagenes satelitales',2015,61),(81,'Ponencia','procesamiento de imagenes satelitales',2022,46),(82,'Libro','evaluacion de impacto social',2019,74),(83,'Informe','evaluacion de impacto social',2012,48),(84,'Ponencia','tecnicas de conservacion',2012,26),(85,'Informe','evaluacion de impacto social',2021,89),(86,'Capitulo','modelo de prediccion climatica',2021,33),(87,'Ponencia','estudio de biodiversidad urbana',2017,32),(88,'Capitulo','sistemas inteligentes aplicados',2000,64),(89,'Informe','sistemas inteligentes aplicados',2009,81),(90,'Informe','modelo de prediccion climatica',2023,55),(91,'Capitulo','eficiencia energetica en viviendas',2004,29),(92,'Ponencia','estudio de biodiversidad urbana',2009,30),(93,'Informe','sistemas inteligentes aplicados',2004,85),(94,'Informe','tecnicas de conservacion',2018,90),(95,'Articulo','uso sostenible del agua',2007,89),(96,'Capitulo','sistemas inteligentes aplicados',2021,28),(97,'Capitulo','tecnicas de conservacion',2010,77),(98,'Articulo','procesamiento de imagenes satelitales',2012,55),(99,'Libro','analisis de datos ambientales',2003,38),(100,'Libro','desarrollo de tecnologia educativa',2013,12);
/*!40000 ALTER TABLE `produccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor`
--

DROP TABLE IF EXISTS `profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesor` (
  `IdProfesor` int NOT NULL,
  `email` varchar(250) NOT NULL,
  `fechaIngreso` date NOT NULL,
  `IdPersona` int NOT NULL,
  PRIMARY KEY (`IdProfesor`),
  KEY `IdPersona` (`IdPersona`),
  CONSTRAINT `profesor_ibfk_1` FOREIGN KEY (`IdPersona`) REFERENCES `persona` (`IdPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor`
--

LOCK TABLES `profesor` WRITE;
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
INSERT INTO `profesor` VALUES (1,'armasgonzalo@example.net','2020-01-01',1),(2,'augusto45@example.net','2020-02-01',2),(3,'esperanza41@example.net','2020-03-01',3),(4,'imenchaca@example.org','2020-04-01',4),(5,'nancymarin@example.org','2020-05-01',5),(6,'almanzanatalia@example.net','2020-06-01',6),(7,'reynosofrancisca@example.org','2020-07-01',7),(8,'jaimemartha@example.org','2020-08-01',8),(9,'grijalvaleonor@example.org','2020-09-01',9),(10,'luisa81@example.org','2020-10-01',10),(11,'sofiade-la-cruz@example.com','2020-11-01',11),(12,'qverduzco@example.net','2020-12-01',12),(13,'estherpadron@example.org','2021-01-01',13),(14,'abril12@example.org','2021-02-01',14),(15,'concepcioncristobal@example.net','2021-03-01',15),(16,'dulceolivas@example.net','2021-04-01',16),(17,'lrincon@example.org','2021-05-01',17),(18,'anguloisaac@example.org','2021-06-01',18),(19,'fmuniz@example.org','2021-07-01',19),(20,'barrientosaurora@example.com','2021-08-01',20),(21,'vrios@example.com','2021-09-01',21),(22,'gilbertomontoya@example.org','2021-10-01',22),(23,'molinagilberto@example.net','2021-11-01',23),(24,'marcela52@example.com','2021-12-01',24),(25,'maria-del-carmenarmendariz@example.org','2022-01-01',25),(26,'jeronimovega@example.net','2022-02-01',26),(27,'regaladogabriel@example.org','2022-03-01',27),(28,'ursulamontero@example.org','2022-04-01',28),(29,'bravoluis@example.net','2022-05-01',29),(30,'cristal13@example.com','2022-06-01',30),(31,'carreonbernabe@example.com','2022-07-01',31),(32,'salva@example.org','2022-08-01',32),(33,'eduardo12@example.com','2022-09-01',33),(34,'de-jesusamanda@example.net','2022-10-01',34),(35,'gallardomaria-teresa@example.net','2022-11-01',35),(36,'cristinamontano@example.net','2022-12-01',36),(37,'golivarez@example.com','2023-01-01',37),(38,'wmares@example.com','2023-02-01',38),(39,'aldonza69@example.com','2023-03-01',39),(40,'rolandoorosco@example.com','2023-04-01',40),(41,'carmen79@example.org','2023-05-01',41),(42,'fernandosalgado@example.org','2023-06-01',42),(43,'rolonestela@example.org','2023-07-01',43),(44,'angelica03@example.org','2023-08-01',44),(45,'vierabenito@example.com','2023-09-01',45),(46,'bvaldez@example.com','2023-10-01',46),(47,'wvaldez@example.org','2023-11-01',47),(48,'irenedel-valle@example.org','2023-12-01',48),(49,'angelajaimes@example.net','2024-01-01',49),(50,'luis-manuel56@example.net','2024-02-01',50),(51,'sabrego@example.org','2024-03-01',51),(52,'hadame@example.com','2024-04-01',52),(53,'pberrios@example.com','2024-05-01',53),(54,'marisol03@example.net','2024-06-01',54),(55,'albertoarriaga@example.com','2024-07-01',55),(56,'eugeniacarmona@example.com','2024-08-01',56),(57,'gregorio66@example.net','2024-09-01',57),(58,'jose-carlosbarreto@example.com','2024-10-01',58),(59,'clara91@example.net','2024-11-01',59),(60,'samaniegoalta-gracia@example.net','2024-12-01',60),(61,'aurrutia@example.net','2025-01-01',61),(62,'cardenasesmeralda@example.net','2025-02-01',62),(63,'aolivares@example.org','2025-03-01',63),(64,'rubycotto@example.net','2025-04-01',64),(65,'lgallardo@example.org','2025-05-01',65),(66,'alfredoheredia@example.com','2025-06-01',66),(67,'cmontez@example.org','2025-07-01',67),(68,'anel87@example.org','2025-08-01',68),(69,'xmata@example.net','2025-09-01',69),(70,'zcedillo@example.net','2025-10-01',70),(71,'jaqueline58@example.net','2025-11-01',71),(72,'evaluevano@example.com','2025-12-01',72),(73,'de-jesuscristina@example.net','2026-01-01',73),(74,'kde-leon@example.com','2026-02-01',74),(75,'fcarrillo@example.org','2026-03-01',75),(76,'rtrevino@example.com','2026-04-01',76),(77,'oliverarroyo@example.com','2026-05-01',77),(78,'marcelaalarcon@example.net','2026-06-01',78),(79,'modestoaguilera@example.net','2026-07-01',79),(80,'sofiaflores@example.org','2026-08-01',80),(81,'esther89@example.com','2026-09-01',81),(82,'amayorga@example.com','2026-10-01',82),(83,'rcarmona@example.net','2026-11-01',83),(84,'dariomorales@example.org','2026-12-01',84),(85,'elias35@example.org','2027-01-01',85),(86,'evelio37@example.org','2027-02-01',86),(87,'leonardo01@example.org','2027-03-01',87),(88,'nguzman@example.com','2027-04-01',88),(89,'rosarioeva@example.org','2027-05-01',89),(90,'elvia61@example.org','2027-06-01',90),(91,'xbriseno@example.com','2027-07-01',91),(92,'jacinto56@example.net','2027-08-01',92),(93,'renteriacarlos@example.com','2027-09-01',93),(94,'caridad98@example.org','2027-10-01',94),(95,'mgodinez@example.com','2027-11-01',95),(96,'robertocamarillo@example.com','2027-12-01',96),(97,'jacobo68@example.org','2028-01-01',97),(98,'angelrael@example.com','2028-02-01',98),(99,'anguianolorena@example.org','2028-03-01',99),(100,'dtirado@example.net','2028-04-01',100);
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

--
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyecto` (
  `IdProyecto` int NOT NULL,
  `Nombre` varchar(250) NOT NULL,
  `Inicio` date NOT NULL,
  `Final` date NOT NULL,
  `IdInvestigador` int NOT NULL,
  PRIMARY KEY (`IdProyecto`),
  KEY `IdInvestigador` (`IdInvestigador`),
  CONSTRAINT `proyecto_ibfk_1` FOREIGN KEY (`IdInvestigador`) REFERENCES `investigador` (`IdInvestigador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
INSERT INTO `proyecto` VALUES (1,'eficiencia energetica en viviendas','2015-05-13','2024-06-01',69),(2,'eficiencia energetica en viviendas','2020-06-12','2024-12-10',93),(3,'tecnicas de conservacion','2016-10-26','2024-07-05',29),(4,'evaluacion de impacto social','2017-12-06','2024-06-14',32),(5,'desarrollo de tecnologia educativa','2017-12-22','2025-03-22',24),(6,'evaluacion de impacto social','2019-12-09','2024-06-07',98),(7,'desarrollo de tecnologia educativa','2022-01-02','2024-09-27',6),(8,'analisis de datos ambientales','2018-11-04','2025-01-11',52),(9,'procesamiento de imagenes satelitales','2022-07-04','2024-06-25',31),(10,'uso sostenible del agua','2018-02-08','2024-10-13',60),(11,'desarrollo de tecnologia educativa','2020-05-15','2025-03-31',77),(12,'procesamiento de imagenes satelitales','2019-06-30','2025-03-11',76),(13,'modelo de prediccion climatica','2016-03-25','2024-11-27',100),(14,'estudio de biodiversidad urbana','2020-07-22','2024-07-28',79),(15,'eficiencia energetica en viviendas','2017-08-24','2024-07-06',17),(16,'analisis de datos ambientales','2016-06-26','2024-11-27',11),(17,'sistemas inteligentes aplicados','2017-01-28','2024-08-15',31),(18,'analisis de datos ambientales','2019-09-29','2024-06-03',93),(19,'modelo de prediccion climatica','2020-10-11','2024-05-31',89),(20,'sistemas inteligentes aplicados','2023-03-18','2024-07-29',4),(21,'tecnicas de conservacion','2018-02-22','2024-12-12',3),(22,'uso sostenible del agua','2017-03-29','2024-05-17',42),(23,'sistemas inteligentes aplicados','2021-07-11','2024-08-03',57),(24,'desarrollo de tecnologia educativa','2017-11-30','2024-12-09',73),(25,'modelo de prediccion climatica','2021-02-01','2025-01-07',80),(26,'procesamiento de imagenes satelitales','2020-10-17','2024-07-02',18),(27,'eficiencia energetica en viviendas','2022-02-27','2024-06-16',93),(28,'tecnicas de conservacion','2019-03-25','2024-05-31',92),(29,'eficiencia energetica en viviendas','2017-09-08','2024-05-13',7),(30,'sistemas inteligentes aplicados','2021-10-21','2024-06-01',16),(31,'analisis de datos ambientales','2020-11-30','2025-04-21',9),(32,'sistemas inteligentes aplicados','2018-04-01','2025-03-17',2),(33,'eficiencia energetica en viviendas','2022-02-04','2025-03-09',56),(34,'estudio de biodiversidad urbana','2017-06-23','2024-07-31',50),(35,'sistemas inteligentes aplicados','2022-07-27','2024-08-11',41),(36,'analisis de datos ambientales','2016-04-19','2025-02-15',60),(37,'modelo de prediccion climatica','2018-10-13','2025-03-03',38),(38,'evaluacion de impacto social','2022-03-13','2024-09-13',28),(39,'estudio de biodiversidad urbana','2022-09-07','2024-11-15',69),(40,'estudio de biodiversidad urbana','2021-06-28','2024-10-08',6),(41,'estudio de biodiversidad urbana','2017-03-11','2024-08-17',96),(42,'desarrollo de tecnologia educativa','2017-06-22','2025-01-12',69),(43,'analisis de datos ambientales','2017-02-27','2024-09-02',7),(44,'evaluacion de impacto social','2019-10-10','2025-03-03',14),(45,'sistemas inteligentes aplicados','2015-08-02','2024-11-16',82),(46,'evaluacion de impacto social','2019-02-27','2024-05-26',10),(47,'procesamiento de imagenes satelitales','2017-11-04','2024-07-02',23),(48,'eficiencia energetica en viviendas','2021-07-15','2024-05-28',36),(49,'procesamiento de imagenes satelitales','2017-04-04','2024-08-02',32),(50,'tecnicas de conservacion','2022-06-20','2024-06-28',55),(51,'evaluacion de impacto social','2022-04-02','2024-10-30',40),(52,'evaluacion de impacto social','2019-11-15','2024-10-20',71),(53,'uso sostenible del agua','2015-06-29','2024-07-30',43),(54,'evaluacion de impacto social','2022-02-17','2024-11-07',87),(55,'modelo de prediccion climatica','2020-07-31','2024-10-30',4),(56,'tecnicas de conservacion','2018-07-08','2024-12-21',34),(57,'sistemas inteligentes aplicados','2016-03-23','2024-05-19',91),(58,'uso sostenible del agua','2015-07-06','2024-10-27',64),(59,'tecnicas de conservacion','2020-08-19','2025-02-17',62),(60,'eficiencia energetica en viviendas','2021-06-15','2024-05-20',73),(61,'analisis de datos ambientales','2019-09-19','2024-09-12',25),(62,'modelo de prediccion climatica','2016-02-16','2025-03-28',73),(63,'tecnicas de conservacion','2016-12-26','2024-07-04',46),(64,'analisis de datos ambientales','2021-06-09','2024-10-29',91),(65,'desarrollo de tecnologia educativa','2018-11-22','2024-09-19',28),(66,'desarrollo de tecnologia educativa','2017-01-23','2024-11-21',44),(67,'sistemas inteligentes aplicados','2019-01-30','2025-03-22',97),(68,'tecnicas de conservacion','2022-11-10','2025-01-10',38),(69,'modelo de prediccion climatica','2020-08-05','2024-06-09',90),(70,'procesamiento de imagenes satelitales','2015-05-13','2025-04-03',58),(71,'uso sostenible del agua','2017-11-13','2024-10-18',56),(72,'uso sostenible del agua','2022-08-06','2024-07-01',40),(73,'eficiencia energetica en viviendas','2015-08-11','2025-01-25',46),(74,'eficiencia energetica en viviendas','2015-10-01','2025-02-04',15),(75,'uso sostenible del agua','2021-10-04','2024-10-24',1),(76,'procesamiento de imagenes satelitales','2021-09-09','2025-02-07',93),(77,'procesamiento de imagenes satelitales','2020-07-11','2024-10-10',36),(78,'analisis de datos ambientales','2019-07-19','2025-03-05',38),(79,'desarrollo de tecnologia educativa','2018-06-12','2025-01-28',9),(80,'uso sostenible del agua','2016-07-07','2025-03-10',87),(81,'evaluacion de impacto social','2022-05-23','2024-10-01',38),(82,'desarrollo de tecnologia educativa','2017-01-12','2024-07-02',18),(83,'procesamiento de imagenes satelitales','2021-01-25','2024-08-28',51),(84,'analisis de datos ambientales','2022-03-02','2025-01-23',19),(85,'estudio de biodiversidad urbana','2018-05-16','2024-05-03',70),(86,'analisis de datos ambientales','2019-08-12','2024-07-31',4),(87,'analisis de datos ambientales','2016-04-11','2024-05-11',7),(88,'eficiencia energetica en viviendas','2021-07-22','2024-11-05',38),(89,'eficiencia energetica en viviendas','2018-01-18','2024-10-26',69),(90,'eficiencia energetica en viviendas','2018-05-16','2024-08-15',5),(91,'procesamiento de imagenes satelitales','2019-10-15','2024-07-29',13),(92,'sistemas inteligentes aplicados','2022-05-17','2025-02-19',8),(93,'uso sostenible del agua','2022-02-15','2025-01-16',51),(94,'estudio de biodiversidad urbana','2023-01-24','2024-06-12',14),(95,'estudio de biodiversidad urbana','2021-10-09','2024-07-22',2),(96,'desarrollo de tecnologia educativa','2015-07-10','2024-09-06',42),(97,'analisis de datos ambientales','2022-08-01','2024-12-17',50),(98,'sistemas inteligentes aplicados','2021-10-30','2024-10-20',80),(99,'sistemas inteligentes aplicados','2022-11-22','2025-01-22',14),(100,'evaluacion de impacto social','2021-07-13','2025-02-07',27);
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-30 12:06:03
