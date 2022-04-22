-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `canio`
--

DROP TABLE IF EXISTS `canio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canio` (
  `id_anio` int NOT NULL AUTO_INCREMENT,
  `anio` int DEFAULT NULL,
  PRIMARY KEY (`id_anio`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canio`
--

LOCK TABLES `canio` WRITE;
/*!40000 ALTER TABLE `canio` DISABLE KEYS */;
INSERT INTO `canio` VALUES (1,2004);
/*!40000 ALTER TABLE `canio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casignatura`
--

DROP TABLE IF EXISTS `casignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casignatura` (
  `id_aignatura` int NOT NULL AUTO_INCREMENT,
  `asignatura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_aignatura`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casignatura`
--

LOCK TABLES `casignatura` WRITE;
/*!40000 ALTER TABLE `casignatura` DISABLE KEYS */;
INSERT INTO `casignatura` VALUES (1,'TECNICAS DE PROGRAMACION PERSONAL CON CALIDAD'),(2,'LAB. DE TECNOLOGIAS DE LA INFORMACION II'),(3,'BASES DE DATOS'),(4,'PROGRAMACION Y SERVICIOS WEB');
/*!40000 ALTER TABLE `casignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdia`
--

DROP TABLE IF EXISTS `cdia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdia` (
  `id_dia` int NOT NULL AUTO_INCREMENT,
  `dia` int DEFAULT NULL,
  PRIMARY KEY (`id_dia`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdia`
--

LOCK TABLES `cdia` WRITE;
/*!40000 ALTER TABLE `cdia` DISABLE KEYS */;
INSERT INTO `cdia` VALUES (1,24);
/*!40000 ALTER TABLE `cdia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cgrupo`
--

DROP TABLE IF EXISTS `cgrupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cgrupo` (
  `id_grupo` int NOT NULL AUTO_INCREMENT,
  `grupo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_grupo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cgrupo`
--

LOCK TABLES `cgrupo` WRITE;
/*!40000 ALTER TABLE `cgrupo` DISABLE KEYS */;
INSERT INTO `cgrupo` VALUES (1,'4IV8');
/*!40000 ALTER TABLE `cgrupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chora`
--

DROP TABLE IF EXISTS `chora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chora` (
  `id_hora` int NOT NULL AUTO_INCREMENT,
  `hora` int DEFAULT NULL,
  PRIMARY KEY (`id_hora`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chora`
--

LOCK TABLES `chora` WRITE;
/*!40000 ALTER TABLE `chora` DISABLE KEYS */;
INSERT INTO `chora` VALUES (1,12);
/*!40000 ALTER TABLE `chora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clab`
--

DROP TABLE IF EXISTS `clab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clab` (
  `id_Lab` int NOT NULL AUTO_INCREMENT,
  `laboratorio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Lab`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clab`
--

LOCK TABLES `clab` WRITE;
/*!40000 ALTER TABLE `clab` DISABLE KEYS */;
INSERT INTO `clab` VALUES (1,'Laboratorio de Base de Datos'),(2,'Laboratorio de Desarrollo de Software'),(3,'Laboratorio de Nuevas Teconologias'),(4,'Laboratorio 4.0');
/*!40000 ALTER TABLE `clab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmarca`
--

DROP TABLE IF EXISTS `cmarca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cmarca` (
  `id_marca` int NOT NULL AUTO_INCREMENT,
  `marca` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmarca`
--

LOCK TABLES `cmarca` WRITE;
/*!40000 ALTER TABLE `cmarca` DISABLE KEYS */;
INSERT INTO `cmarca` VALUES (1,'HP'),(2,'DELL'),(3,'Lenovo'),(4,'Asus'),(5,'Alien'),(6,'Apple'),(7,'Huawei'),(8,'Microsoft'),(9,'Linux'),(10,'Intel'),(11,'AMD');
/*!40000 ALTER TABLE `cmarca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmes`
--

DROP TABLE IF EXISTS `cmes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cmes` (
  `id_mes` int NOT NULL AUTO_INCREMENT,
  `mes` int DEFAULT NULL,
  PRIMARY KEY (`id_mes`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmes`
--

LOCK TABLES `cmes` WRITE;
/*!40000 ALTER TABLE `cmes` DISABLE KEYS */;
INSERT INTO `cmes` VALUES (1,9);
/*!40000 ALTER TABLE `cmes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cprioridad`
--

DROP TABLE IF EXISTS `cprioridad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cprioridad` (
  `id_prioridad` int NOT NULL AUTO_INCREMENT,
  `prioridad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_prioridad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cprioridad`
--

LOCK TABLES `cprioridad` WRITE;
/*!40000 ALTER TABLE `cprioridad` DISABLE KEYS */;
/*!40000 ALTER TABLE `cprioridad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cprivilegio`
--

DROP TABLE IF EXISTS `cprivilegio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cprivilegio` (
  `id_privilegio` int NOT NULL AUTO_INCREMENT,
  `privilegio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_privilegio`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cprivilegio`
--

LOCK TABLES `cprivilegio` WRITE;
/*!40000 ALTER TABLE `cprivilegio` DISABLE KEYS */;
INSERT INTO `cprivilegio` VALUES (1,'Estudiante');
/*!40000 ALTER TABLE `cprivilegio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crol`
--

DROP TABLE IF EXISTS `crol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crol` (
  `id_rol` int NOT NULL AUTO_INCREMENT,
  `rol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crol`
--

LOCK TABLES `crol` WRITE;
/*!40000 ALTER TABLE `crol` DISABLE KEYS */;
INSERT INTO `crol` VALUES (1,'Alumno');
/*!40000 ALTER TABLE `crol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csemestre`
--

DROP TABLE IF EXISTS `csemestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `csemestre` (
  `id_semestre` int NOT NULL AUTO_INCREMENT,
  `semestre` int DEFAULT NULL,
  PRIMARY KEY (`id_semestre`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csemestre`
--

LOCK TABLES `csemestre` WRITE;
/*!40000 ALTER TABLE `csemestre` DISABLE KEYS */;
INSERT INTO `csemestre` VALUES (1,4);
/*!40000 ALTER TABLE `csemestre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csexo`
--

DROP TABLE IF EXISTS `csexo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `csexo` (
  `id_sexo` int NOT NULL AUTO_INCREMENT,
  `sexo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_sexo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csexo`
--

LOCK TABLES `csexo` WRITE;
/*!40000 ALTER TABLE `csexo` DISABLE KEYS */;
INSERT INTO `csexo` VALUES (1,'Masculino'),(2,'Femenino');
/*!40000 ALTER TABLE `csexo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dpersona`
--

DROP TABLE IF EXISTS `dpersona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dpersona` (
  `id_persona` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `appat` varchar(100) DEFAULT NULL,
  `apmat` varchar(100) DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `contraseña` varchar(100) DEFAULT NULL,
  `id_img` int NOT NULL,
  `id_fecha` int NOT NULL,
  `id_grupo` int NOT NULL,
  `id_sexo` int NOT NULL,
  `id_semestre` int NOT NULL,
  `id_rol` int NOT NULL,
  `id_privilegio` int NOT NULL,
  PRIMARY KEY (`id_persona`,`id_img`,`id_fecha`,`id_grupo`,`id_sexo`,`id_semestre`,`id_rol`,`id_privilegio`),
  KEY `fk_DPersona_MImg1_idx` (`id_img`),
  KEY `fk_DPersona_MFecha1_idx` (`id_fecha`),
  KEY `fk_DPersona_CGrupo1_idx` (`id_grupo`),
  KEY `fk_DPersona_CSexo1_idx` (`id_sexo`),
  KEY `fk_DPersona_CSemestre1_idx` (`id_semestre`),
  KEY `fk_DPersona_CRol1_idx` (`id_rol`),
  KEY `fk_DPersona_CPrivilegio1_idx` (`id_privilegio`),
  CONSTRAINT `fk_DPersona_CGrupo1` FOREIGN KEY (`id_grupo`) REFERENCES `cgrupo` (`id_grupo`),
  CONSTRAINT `fk_DPersona_CPrivilegio1` FOREIGN KEY (`id_privilegio`) REFERENCES `cprivilegio` (`id_privilegio`),
  CONSTRAINT `fk_DPersona_CRol1` FOREIGN KEY (`id_rol`) REFERENCES `crol` (`id_rol`),
  CONSTRAINT `fk_DPersona_CSemestre1` FOREIGN KEY (`id_semestre`) REFERENCES `csemestre` (`id_semestre`),
  CONSTRAINT `fk_DPersona_CSexo1` FOREIGN KEY (`id_sexo`) REFERENCES `csexo` (`id_sexo`),
  CONSTRAINT `fk_DPersona_MFecha1` FOREIGN KEY (`id_fecha`) REFERENCES `mfecha` (`id_fecha`),
  CONSTRAINT `fk_DPersona_MImg1` FOREIGN KEY (`id_img`) REFERENCES `mimg` (`id_img`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='						';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dpersona`
--

LOCK TABLES `dpersona` WRITE;
/*!40000 ALTER TABLE `dpersona` DISABLE KEYS */;
INSERT INTO `dpersona` VALUES (1,'Rodrigo','Morales','Campuzano','Rolo3650','Morales3',1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `dpersona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dreporte_de_equipo`
--

DROP TABLE IF EXISTS `dreporte_de_equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dreporte_de_equipo` (
  `id_dreporte` int NOT NULL AUTO_INCREMENT,
  `id_aignatura` int NOT NULL,
  `id_fecha` int NOT NULL,
  `id_equipo` int NOT NULL,
  `id_prioridad` int NOT NULL,
  `boleta` int NOT NULL,
  `id_problema` int NOT NULL,
  PRIMARY KEY (`id_dreporte`,`id_aignatura`,`id_fecha`,`id_equipo`,`id_prioridad`,`boleta`,`id_problema`),
  KEY `fk_DReporte_de_Equipo_CAsignatura1_idx` (`id_aignatura`),
  KEY `fk_DReporte_de_Equipo_MFecha1_idx` (`id_fecha`),
  KEY `fk_DReporte_de_Equipo_MEquipo1_idx` (`id_equipo`),
  KEY `fk_DReporte_de_Equipo_CPrioridad1_idx` (`id_prioridad`),
  KEY `fk_DReporte_de_Equipo_MPersona1_idx` (`boleta`),
  KEY `fk_DReporte_de_Equipo_MProblema1_idx` (`id_problema`),
  CONSTRAINT `fk_DReporte_de_Equipo_CAsignatura1` FOREIGN KEY (`id_aignatura`) REFERENCES `casignatura` (`id_aignatura`),
  CONSTRAINT `fk_DReporte_de_Equipo_CPrioridad1` FOREIGN KEY (`id_prioridad`) REFERENCES `cprioridad` (`id_prioridad`),
  CONSTRAINT `fk_DReporte_de_Equipo_MEquipo1` FOREIGN KEY (`id_equipo`) REFERENCES `mequipo` (`id_equipo`),
  CONSTRAINT `fk_DReporte_de_Equipo_MFecha1` FOREIGN KEY (`id_fecha`) REFERENCES `mfecha` (`id_fecha`),
  CONSTRAINT `fk_DReporte_de_Equipo_MPersona1` FOREIGN KEY (`boleta`) REFERENCES `mpersona` (`boleta`),
  CONSTRAINT `fk_DReporte_de_Equipo_MProblema1` FOREIGN KEY (`id_problema`) REFERENCES `mproblema` (`id_problema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dreporte_de_equipo`
--

LOCK TABLES `dreporte_de_equipo` WRITE;
/*!40000 ALTER TABLE `dreporte_de_equipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `dreporte_de_equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maccesorios`
--

DROP TABLE IF EXISTS `maccesorios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maccesorios` (
  `id_accesorios` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(500) DEFAULT NULL,
  `id_marca` int NOT NULL,
  PRIMARY KEY (`id_accesorios`,`id_marca`),
  KEY `fk_MAccesorios_CMarca1_idx` (`id_marca`),
  CONSTRAINT `fk_MAccesorios_CMarca1` FOREIGN KEY (`id_marca`) REFERENCES `cmarca` (`id_marca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maccesorios`
--

LOCK TABLES `maccesorios` WRITE;
/*!40000 ALTER TABLE `maccesorios` DISABLE KEYS */;
/*!40000 ALTER TABLE `maccesorios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mconfirguracion`
--

DROP TABLE IF EXISTS `mconfirguracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mconfirguracion` (
  `id_config` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(500) DEFAULT NULL,
  `id_marca` int NOT NULL,
  PRIMARY KEY (`id_config`,`id_marca`),
  KEY `fk_MConfirguracion_CMarca1_idx` (`id_marca`),
  CONSTRAINT `fk_MConfirguracion_CMarca1` FOREIGN KEY (`id_marca`) REFERENCES `cmarca` (`id_marca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mconfirguracion`
--

LOCK TABLES `mconfirguracion` WRITE;
/*!40000 ALTER TABLE `mconfirguracion` DISABLE KEYS */;
/*!40000 ALTER TABLE `mconfirguracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mcpu`
--

DROP TABLE IF EXISTS `mcpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mcpu` (
  `serial_cpu` varchar(100) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `id_marca` int NOT NULL,
  PRIMARY KEY (`serial_cpu`,`id_marca`),
  KEY `fk_MCPU_CMarca1_idx` (`id_marca`),
  CONSTRAINT `fk_MCPU_CMarca1` FOREIGN KEY (`id_marca`) REFERENCES `cmarca` (`id_marca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mcpu`
--

LOCK TABLES `mcpu` WRITE;
/*!40000 ALTER TABLE `mcpu` DISABLE KEYS */;
/*!40000 ALTER TABLE `mcpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mequipo`
--

DROP TABLE IF EXISTS `mequipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mequipo` (
  `id_equipo` int NOT NULL AUTO_INCREMENT,
  `equipo_etiqueta` int DEFAULT NULL,
  `id_accesorios` int NOT NULL,
  `id_Lab` int NOT NULL,
  `id_config` int NOT NULL,
  `MCPU_serial_cpu` varchar(100) NOT NULL,
  `MMonitor_serial_monitor` varchar(100) NOT NULL,
  PRIMARY KEY (`id_equipo`,`id_accesorios`,`id_Lab`,`id_config`,`MCPU_serial_cpu`,`MMonitor_serial_monitor`),
  UNIQUE KEY `id_config_UNIQUE` (`id_config`),
  KEY `fk_MEquipo_MAccesorios1_idx` (`id_accesorios`),
  KEY `fk_MEquipo_CLab1_idx` (`id_Lab`),
  KEY `fk_MEquipo_MConfirguracion1_idx` (`id_config`),
  KEY `fk_MEquipo_MCPU1_idx` (`MCPU_serial_cpu`),
  KEY `fk_MEquipo_MMonitor1_idx` (`MMonitor_serial_monitor`),
  CONSTRAINT `fk_MEquipo_CLab1` FOREIGN KEY (`id_Lab`) REFERENCES `clab` (`id_Lab`),
  CONSTRAINT `fk_MEquipo_MAccesorios1` FOREIGN KEY (`id_accesorios`) REFERENCES `maccesorios` (`id_accesorios`),
  CONSTRAINT `fk_MEquipo_MConfirguracion1` FOREIGN KEY (`id_config`) REFERENCES `mconfirguracion` (`id_config`),
  CONSTRAINT `fk_MEquipo_MCPU1` FOREIGN KEY (`MCPU_serial_cpu`) REFERENCES `mcpu` (`serial_cpu`),
  CONSTRAINT `fk_MEquipo_MMonitor1` FOREIGN KEY (`MMonitor_serial_monitor`) REFERENCES `mmonitor` (`serial_monitor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mequipo`
--

LOCK TABLES `mequipo` WRITE;
/*!40000 ALTER TABLE `mequipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `mequipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mestado_de_reporte`
--

DROP TABLE IF EXISTS `mestado_de_reporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mestado_de_reporte` (
  `id_estado_de_reporte` int NOT NULL AUTO_INCREMENT,
  `estado_de_reporte` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_estado_de_reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mestado_de_reporte`
--

LOCK TABLES `mestado_de_reporte` WRITE;
/*!40000 ALTER TABLE `mestado_de_reporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `mestado_de_reporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mfecha`
--

DROP TABLE IF EXISTS `mfecha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mfecha` (
  `id_fecha` int NOT NULL AUTO_INCREMENT,
  `id_anio` int NOT NULL,
  `CMes_id_mes` int NOT NULL,
  `CDia_id_dia` int NOT NULL,
  `CHora_id_hora` int NOT NULL,
  PRIMARY KEY (`id_fecha`,`id_anio`,`CMes_id_mes`,`CDia_id_dia`,`CHora_id_hora`),
  KEY `fk_MFecha_CAnio_idx` (`id_anio`),
  KEY `fk_MFecha_CMes1_idx` (`CMes_id_mes`),
  KEY `fk_MFecha_CDia1_idx` (`CDia_id_dia`),
  KEY `fk_MFecha_CHora1_idx` (`CHora_id_hora`),
  CONSTRAINT `fk_MFecha_CAnio` FOREIGN KEY (`id_anio`) REFERENCES `canio` (`id_anio`),
  CONSTRAINT `fk_MFecha_CDia1` FOREIGN KEY (`CDia_id_dia`) REFERENCES `cdia` (`id_dia`),
  CONSTRAINT `fk_MFecha_CHora1` FOREIGN KEY (`CHora_id_hora`) REFERENCES `chora` (`id_hora`),
  CONSTRAINT `fk_MFecha_CMes1` FOREIGN KEY (`CMes_id_mes`) REFERENCES `cmes` (`id_mes`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mfecha`
--

LOCK TABLES `mfecha` WRITE;
/*!40000 ALTER TABLE `mfecha` DISABLE KEYS */;
INSERT INTO `mfecha` VALUES (1,1,1,1,1);
/*!40000 ALTER TABLE `mfecha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mimg`
--

DROP TABLE IF EXISTS `mimg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mimg` (
  `id_img` int NOT NULL AUTO_INCREMENT,
  `ruta` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_img`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mimg`
--

LOCK TABLES `mimg` WRITE;
/*!40000 ALTER TABLE `mimg` DISABLE KEYS */;
INSERT INTO `mimg` VALUES (1,'ImgAlumno/img1.jpg');
/*!40000 ALTER TABLE `mimg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mmonitor`
--

DROP TABLE IF EXISTS `mmonitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mmonitor` (
  `serial_monitor` varchar(100) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `id_marca` int NOT NULL,
  PRIMARY KEY (`serial_monitor`,`id_marca`),
  KEY `fk_MMonitor_CMarca1_idx` (`id_marca`),
  CONSTRAINT `fk_MMonitor_CMarca1` FOREIGN KEY (`id_marca`) REFERENCES `cmarca` (`id_marca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mmonitor`
--

LOCK TABLES `mmonitor` WRITE;
/*!40000 ALTER TABLE `mmonitor` DISABLE KEYS */;
/*!40000 ALTER TABLE `mmonitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mpersona`
--

DROP TABLE IF EXISTS `mpersona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mpersona` (
  `boleta` int NOT NULL AUTO_INCREMENT,
  `id_person` int NOT NULL,
  PRIMARY KEY (`boleta`,`id_person`),
  KEY `fk_MPersona_DPersona1_idx` (`id_person`),
  CONSTRAINT `fk_MPersona_DPersona1` FOREIGN KEY (`id_person`) REFERENCES `dpersona` (`id_persona`)
) ENGINE=InnoDB AUTO_INCREMENT=2021090488 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mpersona`
--

LOCK TABLES `mpersona` WRITE;
/*!40000 ALTER TABLE `mpersona` DISABLE KEYS */;
INSERT INTO `mpersona` VALUES (2021090487,1);
/*!40000 ALTER TABLE `mpersona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mproblema`
--

DROP TABLE IF EXISTS `mproblema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mproblema` (
  `id_problema` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_problema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mproblema`
--

LOCK TABLES `mproblema` WRITE;
/*!40000 ALTER TABLE `mproblema` DISABLE KEYS */;
/*!40000 ALTER TABLE `mproblema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mregistro_de_equipo`
--

DROP TABLE IF EXISTS `mregistro_de_equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mregistro_de_equipo` (
  `id_registro` int NOT NULL AUTO_INCREMENT,
  `boleta` int NOT NULL,
  `id_aignatura` int NOT NULL,
  `id_equipo` int NOT NULL,
  PRIMARY KEY (`id_registro`,`boleta`,`id_aignatura`,`id_equipo`),
  KEY `fk_MRegistro_de_Equipo_MPersona1_idx` (`boleta`),
  KEY `fk_MRegistro_de_Equipo_CAsignatura1_idx` (`id_aignatura`),
  KEY `fk_MRegistro_de_Equipo_MEquipo1_idx` (`id_equipo`),
  CONSTRAINT `fk_MRegistro_de_Equipo_CAsignatura1` FOREIGN KEY (`id_aignatura`) REFERENCES `casignatura` (`id_aignatura`),
  CONSTRAINT `fk_MRegistro_de_Equipo_MEquipo1` FOREIGN KEY (`id_equipo`) REFERENCES `mequipo` (`id_equipo`),
  CONSTRAINT `fk_MRegistro_de_Equipo_MPersona1` FOREIGN KEY (`boleta`) REFERENCES `mpersona` (`boleta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mregistro_de_equipo`
--

LOCK TABLES `mregistro_de_equipo` WRITE;
/*!40000 ALTER TABLE `mregistro_de_equipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `mregistro_de_equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mreporte`
--

DROP TABLE IF EXISTS `mreporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mreporte` (
  `id_reporte` int NOT NULL AUTO_INCREMENT,
  `id_dreporte` int NOT NULL,
  `id_estado_de_reporte` int NOT NULL,
  PRIMARY KEY (`id_reporte`,`id_dreporte`,`id_estado_de_reporte`),
  KEY `fk_MReporte_DReporte_de_Equipo1_idx` (`id_dreporte`),
  KEY `fk_MReporte_MEstado_de_Reporte1_idx` (`id_estado_de_reporte`),
  CONSTRAINT `fk_MReporte_DReporte_de_Equipo1` FOREIGN KEY (`id_dreporte`) REFERENCES `dreporte_de_equipo` (`id_dreporte`),
  CONSTRAINT `fk_MReporte_MEstado_de_Reporte1` FOREIGN KEY (`id_estado_de_reporte`) REFERENCES `mestado_de_reporte` (`id_estado_de_reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mreporte`
--

LOCK TABLES `mreporte` WRITE;
/*!40000 ALTER TABLE `mreporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `mreporte` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-22  0:52:48
