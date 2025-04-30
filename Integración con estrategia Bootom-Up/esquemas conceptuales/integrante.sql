CREATE DATABASE  IF NOT EXISTS `integrantebd` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `integrantebd`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: integrantebd
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
-- Table structure for table `integrante`
--

DROP TABLE IF EXISTS `integrante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `integrante` (
  `IdIntegrante` int NOT NULL,
  `Paterno` varchar(90) NOT NULL,
  `Materno` varchar(90) NOT NULL,
  `Nombre` varchar(110) NOT NULL,
  PRIMARY KEY (`IdIntegrante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `integrante`
--

LOCK TABLES `integrante` WRITE;
/*!40000 ALTER TABLE `integrante` DISABLE KEYS */;
INSERT INTO `integrante` VALUES (1,'valle','ibarra','yuridia'),(2,'tovar','madrid','timoteo'),(3,'de la garza','puente','oliver'),(4,'rosado','monroy','aldo'),(5,'pedroza','noriega','indira'),(6,'peralta','zamora','susana'),(7,'lebron','navarrete','norma'),(8,'zelaya','mondragon','abelardo'),(9,'jimenez','benitez','armando'),(10,'casas','bernal','amelia'),(11,'rosales','ontiveros','jose emilio'),(12,'mata','rico','rolando'),(13,'lovato','venegas','cristina'),(14,'padilla','garay','emilia'),(15,'de la cruz','cortez','eva'),(16,'vera','arce','catalina'),(17,'esparza','quinonez','linda'),(18,'godinez','apodaca','francisco javier'),(19,'valdez','zambrano','marcos'),(20,'yanez','salcedo','martha'),(21,'rodrigez','carvajal','samuel'),(22,'hernandes','montes','raquel'),(23,'barajas','de la garza','rafael'),(24,'alonzo','ferrer','susana'),(25,'saucedo','valverde','yolanda'),(26,'bueno','rosales','dulce'),(27,'villalpando','cabrera','lucas'),(28,'cardenas','gonzalez','hermelinda'),(29,'ulibarri','espino','marcos'),(30,'lugo','covarrubias','esmeralda'),(31,'griego','valenzuela','patricio'),(32,'zarate','nieves','francisca'),(33,'duran','chacon','juana'),(34,'barela','valencia','gustavo'),(35,'arias','corona','irma'),(36,'garcia','trejo','luz'),(37,'betancourt','gracia','clara'),(38,'castellanos','arredondo','gerardo'),(39,'perez','madrid','nayeli'),(40,'nieves','palacios','lucia'),(41,'de jesus','rosado','cristian'),(42,'uribe','hinojosa','wilfrido'),(43,'lugo','hurtado','angelica'),(44,'vega','paez','fidel'),(45,'de anda','de la o','cristian'),(46,'rodrigez','bravo','luis miguel'),(47,'regalado','pena','paulina'),(48,'portillo','cardenas','oliver'),(49,'aranda','parra','silvano'),(50,'bustamante','bravo','mauro'),(51,'loera','zepeda','joaquin'),(52,'zavala','escalante','juan carlos'),(53,'ontiveros','duenas','eloy'),(54,'tijerina','ayala','julio'),(55,'muniz','arriaga','helena'),(56,'franco','frias','pedro'),(57,'benavides','alvarado','jorge luis'),(58,'espinosa','puente','rodrigo'),(59,'montoya','pizarro','reynaldo'),(60,'mendoza','estrada','porfirio'),(61,'armendariz','heredia','augusto'),(62,'espinosa','rivera','natalia'),(63,'peres','davila','raul'),(64,'haro','alarcon','bernabe'),(65,'pabon','pulido','agustin'),(66,'jasso','lozano','jose'),(67,'giron','baez','norma'),(68,'galvez','menchaca','reynaldo'),(69,'nevarez','toledo','amanda'),(70,'badillo','melendez','salvador'),(71,'teran','velasquez','elena'),(72,'aguirre','zambrano','leonardo'),(73,'gamez','granado','cristian'),(74,'narvaez','marroquin','ana'),(75,'barrientos','preciado','paola'),(76,'cotto','arguello','virginia'),(77,'ortega','lara','juan carlos'),(78,'garza','batista','delia'),(79,'perales','lara','jesus'),(80,'canales','duarte','federico'),(81,'leyva','covarrubias','anabel'),(82,'blanco','maya','abigail'),(83,'baeza','arguello','elias'),(84,'castro','verduzco','emilia'),(85,'cardenas','hernandez','elvira'),(86,'solorio','lugo','amanda'),(87,'arias','gracia','olivia'),(88,'robledo','almonte','ines'),(89,'gurule','pulido','abigail'),(90,'ceja','vasquez','rosa'),(91,'lira','viera','ana maria'),(92,'briones','toro','araceli'),(93,'delgado','saldivar','olivia'),(94,'jasso','gallardo','noemi'),(95,'palomo','aparicio','juan carlos'),(96,'aponte','flores','oscar'),(97,'anaya','guillen','patricia'),(98,'garibay','molina','josefina'),(99,'campos','lovato','camilo'),(100,'lerma','velez','amanda');
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
  `IdIntegrante` int NOT NULL,
  `IdLinea` int NOT NULL,
  PRIMARY KEY (`IdIntegranteLinea`),
  KEY `IdIntegrante` (`IdIntegrante`),
  KEY `IdLinea` (`IdLinea`),
  CONSTRAINT `integrantelinea_ibfk_1` FOREIGN KEY (`IdIntegrante`) REFERENCES `integrante` (`IdIntegrante`),
  CONSTRAINT `integrantelinea_ibfk_2` FOREIGN KEY (`IdLinea`) REFERENCES `linea` (`IdLinea`)
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
-- Table structure for table `linea`
--

DROP TABLE IF EXISTS `linea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `linea` (
  `IdLinea` int NOT NULL,
  `Nombre` varchar(120) NOT NULL,
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-30 12:05:13
