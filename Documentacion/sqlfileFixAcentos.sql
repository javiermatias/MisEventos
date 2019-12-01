-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: renacer
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES latin1 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


--
-- Table structure for table `asistencia`
--

DROP TABLE IF EXISTS `asistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `asistencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idSocio` int(11) NOT NULL,
  `idEncargado` int(11) NOT NULL,
  `idDetalleEvento` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `fechaAsistencia` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_idSocio` (`idSocio` DESC) USING BTREE,
  KEY `IX_idEncargado` (`idEncargado` DESC) USING BTREE,
  KEY `IX_idDetalleEvento` (`idDetalleEvento` DESC) USING BTREE,
  KEY `FK_Asistencia_DetalleEvento_idDetalleEvento` (`idDetalleEvento`),
  KEY `FK_Asistencia_Encargado_idEncargado` (`idEncargado`),
  KEY `FK_Asistencia_Socio_idSocio` (`idSocio`),
  CONSTRAINT `FK_Asistencia_DetalleEvento_idDetalleEvento` FOREIGN KEY (`idDetalleEvento`) REFERENCES `detalleevento` (`id`),
  CONSTRAINT `FK_Asistencia_Encargado_idEncargado` FOREIGN KEY (`idEncargado`) REFERENCES `encargado` (`id`),
  CONSTRAINT `FK_Asistencia_Socio_idSocio` FOREIGN KEY (`idSocio`) REFERENCES `socio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia`
--

LOCK TABLES `asistencia` WRITE;
/*!40000 ALTER TABLE `asistencia` DISABLE KEYS */;
INSERT INTO `asistencia` VALUES (1,1,1,1,0,'2019-10-18 02:48:12'),(2,2,1,1,0,'2019-10-18 02:48:12'),(3,10,1,1,0,'2019-10-18 02:48:12'),(4,1,1,2,0,'2019-10-18 02:48:17'),(5,3,1,2,0,'2019-10-18 02:48:17'),(6,10,1,2,0,'2019-10-18 02:48:17'),(7,4,1,9,0,'2019-10-27 14:18:30'),(8,1,1,9,0,'2019-10-27 14:18:30'),(9,11,1,9,0,'2019-10-27 14:18:30'),(10,4,1,10,0,'2019-10-27 14:18:35'),(11,1,1,10,0,'2019-10-27 14:18:35'),(12,11,1,10,0,'2019-10-27 14:18:35'),(13,3,1,3,0,'2019-10-27 20:47:04'),(14,1,1,3,0,'2019-10-27 20:47:04'),(15,10,1,3,0,'2019-10-27 20:47:04'),(16,2,1,3,0,'2019-10-27 20:47:04'),(17,3,1,4,0,'2019-10-27 20:47:16'),(18,1,1,4,0,'2019-10-27 20:47:16'),(19,10,1,4,0,'2019-10-27 20:47:16'),(20,1,1,5,0,'2019-11-11 03:11:29'),(21,3,1,5,0,'2019-11-11 03:11:29'),(22,3,1,6,0,'2019-11-11 03:11:38'),(23,2,1,6,0,'2019-11-11 03:11:38'),(24,10,1,6,0,'2019-11-11 03:11:38'),(25,1,1,7,0,'2019-11-11 03:11:46'),(26,10,1,7,0,'2019-11-11 03:11:46'),(27,3,1,7,0,'2019-11-11 03:11:46'),(28,1,1,8,0,'2019-11-11 03:11:57'),(29,10,1,8,0,'2019-11-11 03:11:57'),(30,4,1,11,0,'2019-11-11 03:12:07'),(31,11,1,11,0,'2019-11-11 03:12:07'),(32,4,1,12,0,'2019-11-11 03:12:13'),(33,1,1,12,0,'2019-11-11 03:12:13'),(34,1,1,25,0,'2019-11-11 03:12:46'),(35,4,1,25,0,'2019-11-11 03:12:46'),(36,11,1,25,0,'2019-11-11 03:12:46'),(37,14,1,26,0,'2019-11-11 03:12:52'),(38,1,1,26,0,'2019-11-11 03:12:52'),(39,4,1,26,0,'2019-11-11 03:12:52'),(40,14,1,27,0,'2019-11-11 03:12:58'),(41,11,1,27,0,'2019-11-11 03:12:58'),(43,1,1,39,0,'2019-11-11 03:13:05'),(44,4,1,39,0,'2019-11-11 03:13:05'),(45,4,1,59,0,'2019-11-13 00:15:15'),(46,1,1,59,0,'2019-11-13 00:15:15'),(47,12,1,59,0,'2019-11-13 00:15:15'),(48,3,1,59,0,'2019-11-13 00:15:15'),(49,10,1,59,0,'2019-11-13 00:15:15'),(50,2,1,59,0,'2019-11-13 00:15:15'),(51,1,1,60,0,'2019-11-13 00:24:51'),(52,3,1,60,0,'2019-11-13 00:24:51'),(53,2,1,60,0,'2019-11-13 00:24:51'),(54,10,1,60,0,'2019-11-13 00:24:51'),(55,12,1,60,0,'2019-11-13 00:24:51'),(56,2,3,13,0,'2019-11-17 18:44:14'),(57,2,3,14,0,'2019-11-17 18:44:17'),(58,2,3,15,0,'2019-11-17 18:44:20'),(59,2,3,16,0,'2019-11-17 18:44:23'),(60,2,3,17,0,'2019-11-17 18:44:26'),(61,2,3,18,0,'2019-11-17 18:44:30'),(62,2,3,19,0,'2019-11-17 18:44:32'),(63,2,3,20,0,'2019-11-17 18:44:36'),(64,4,1,28,0,'2019-11-21 22:38:18'),(65,1,1,28,0,'2019-11-21 22:38:18'),(66,11,1,28,0,'2019-11-21 22:38:18'),(67,1,1,29,0,'2019-11-21 22:38:25'),(68,14,1,29,0,'2019-11-21 22:38:25'),(69,11,1,29,0,'2019-11-21 22:38:25'),(70,4,1,30,0,'2019-11-22 01:23:39'),(71,1,1,30,0,'2019-11-22 01:23:39'),(72,14,1,30,0,'2019-11-22 01:23:39'),(73,11,1,40,0,'2019-11-22 01:24:21'),(74,1,1,40,0,'2019-11-22 01:24:21'),(75,4,1,40,0,'2019-11-22 01:24:21'),(76,11,1,41,0,'2019-11-22 01:24:26'),(77,1,1,41,0,'2019-11-22 01:24:26'),(78,1,1,61,0,'2019-11-26 17:04:47'),(79,3,1,61,0,'2019-11-26 17:04:47'),(80,4,1,61,0,'2019-11-26 17:04:47'),(81,2,1,61,0,'2019-11-26 17:04:47'),(82,10,1,61,0,'2019-11-26 17:04:47'),(83,12,1,61,0,'2019-11-26 17:04:47'),(84,3,1,69,0,'2019-11-26 17:05:22'),(85,11,1,69,0,'2019-11-26 17:05:22'),(86,15,1,69,0,'2019-11-26 17:05:22'),(87,1,1,69,0,'2019-11-26 17:05:22'),(88,4,1,69,0,'2019-11-26 17:05:22'),(89,1,1,31,0,'2019-11-26 17:11:49'),(90,14,1,31,0,'2019-11-26 17:11:49'),(91,11,1,31,0,'2019-11-26 17:11:49'),(92,4,1,31,0,'2019-11-26 17:11:49');
/*!40000 ALTER TABLE `asistencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `apellido` longtext,
  `tipoDoc_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_tipoDoc_id` (`tipoDoc_id` DESC) USING BTREE,
  KEY `FK_Cliente_TipoDocumento_tipoDoc_id` (`tipoDoc_id`),
  CONSTRAINT `FK_Cliente_TipoDocumento_tipoDoc_id` FOREIGN KEY (`tipoDoc_id`) REFERENCES `tipodocumento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacto`
--

DROP TABLE IF EXISTS `contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `contacto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `apellido` longtext,
  `telefono` longtext,
  `celular` longtext,
  `email` longtext,
  `relacion` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto`
--

LOCK TABLES `contacto` WRITE;
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
INSERT INTO `contacto` VALUES (1,'juan','jose','3432324324','242143134','juan@juan.com','Hermano/a'),(2,'Javier','Jimenez','3543604130','','','Hijo/a'),(3,'Agua Sacha','JIMENEZ','03543604130','','','Madre'),(4,'Agua Sacha','JIMENEZ','03543604130','','','Madre'),(5,'Maria','Antonieta','23423423','','','Pareja'),(6,'JOse','Gomez','3232232323','','','Hermano/a'),(7,'JOse','Gomez','3232232323','','','Hermano/a'),(8,'Agua Sachan8744','Jimenez','03543604130','','','Nieto/a'),(9,'Agua Sacha 8744','Matias','03543403668','','','Hijo/a'),(10,'Pablo','Giorgio','4587105','','','Hijo/a'),(11,'Juana','Armella','4897865','','','Pareja'),(12,'Ramona','Gutierrez','351478975','','','Amigo/a'),(13,'Ramona','Julieta','46879982','','','Pareja'),(14,'','','','','',''),(15,'','','','','',''),(16,'','','','','',''),(17,'','','','','',''),(18,'','','','','',''),(19,'','','','','',''),(20,'','','','','',''),(21,'','','','','',''),(22,'','','','','',''),(23,'','','','','',''),(24,'','','','','',''),(25,'','','','','',''),(26,'','','','','',''),(27,'','','','','',''),(28,'','','','','',''),(29,'','','','','',''),(30,'','','','','',''),(31,'','','','','',''),(32,'','','','','',''),(33,'','','','','',''),(34,'','','','','',''),(35,'','','','','',''),(36,'','','','','',''),(37,'','','','','',''),(38,'','','','','',''),(39,'','','','','',''),(40,'','','','','',''),(41,'','','','','',''),(42,'','','','','',''),(43,'','','','','',''),(44,'','','','','',''),(45,'','','','','',''),(46,'','','','','',''),(47,'','','','','',''),(48,'','','','','',''),(49,'','','','','',''),(50,'','','','','',''),(51,'','','','','',''),(52,'','','','','',''),(53,'','','','','',''),(54,'','','','','',''),(55,'','','','','','');
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuotas`
--

DROP TABLE IF EXISTS `cuotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cuotas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `monto` decimal(18,2) NOT NULL,
  `Evento_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_Evento_id` (`Evento_id` DESC) USING BTREE,
  KEY `FK_Cuotas_Evento_Evento_id` (`Evento_id`),
  CONSTRAINT `FK_Cuotas_Evento_Evento_id` FOREIGN KEY (`Evento_id`) REFERENCES `evento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuotas`
--

LOCK TABLES `cuotas` WRITE;
/*!40000 ALTER TABLE `cuotas` DISABLE KEYS */;
INSERT INTO `cuotas` VALUES (2,'Cuota 1',400.00,1),(3,'Cuota 2',400.00,1),(4,'Cuota 3',400.00,1),(5,'Cuota 1',325.00,2),(6,'Cuota 2',325.00,2),(7,'Cuota 3',325.00,2),(8,'Cuota 4',325.00,2),(9,'Cuota 1',600.00,3),(10,'Cuota 2',600.00,3),(11,'Cuota 3',600.00,3),(12,'Cuota 1',500.00,5),(13,'Cuota 2',500.00,5),(14,'Cuota 3',500.00,5),(15,'Cuota 1',1000.00,6),(16,'Cuota 2',1000.00,6),(17,'Cuota 1',500.00,8),(18,'Cuota 2',500.00,8),(19,'Cuota 3',500.00,8),(20,'Cuota 1',500.00,9),(21,'Cuota 2',500.00,9),(22,'Cuota 3',500.00,9),(23,'Cuota 4',500.00,9),(24,'Cuota 1',1000.00,10),(25,'Cuota 2',1000.00,10),(26,'Cuota 3',1000.00,10),(27,'Cuota 1',1000.00,11),(28,'Cuota 2',1000.00,11),(29,'Cuota 1',1000.00,12),(30,'Cuota 2',1000.00,12),(31,'Cuota 3',1000.00,12),(32,'Cuota 1',2500.00,13),(33,'Cuota 2',2500.00,13),(34,'Cuota 1',500.00,14),(35,'Cuota 2',500.00,14),(36,'Cuota 3',500.00,14),(37,'Cuota 1',2000.00,15),(38,'Cuota 2',2000.00,15),(39,'Cuota 1',600.00,16),(40,'Cuota 1',1000.00,20),(41,'Cuota 2',1000.00,20),(42,'Cuota 1',1000.00,21),(43,'Cuota 2',1000.00,21),(44,'Cuota 1',1000.00,22),(45,'Cuota 2',1000.00,22),(46,'Cuota 1',300.00,23),(47,'Cuota 1',150.00,26),(48,'Cuota 1',600.00,28),(49,'Cuota 2',600.00,28),(50,'Cuota 1',600.00,29);
/*!40000 ALTER TABLE `cuotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalleevento`
--

DROP TABLE IF EXISTS `detalleevento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `detalleevento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `descripcion` longtext,
  `idEncargado` int(11) NOT NULL,
  `idEvento` int(11) NOT NULL,
  `idEspacio` int(11) NOT NULL,
  `fechaDesde` datetime NOT NULL,
  `fechaHasta` datetime NOT NULL,
  `fechaBaja` datetime DEFAULT NULL,
  `estado` longtext,
  `dia` longtext,
  `asistencia` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_idEncargado` (`idEncargado` DESC) USING BTREE,
  KEY `IX_idEvento` (`idEvento` DESC) USING BTREE,
  KEY `IX_idEspacio` (`idEspacio` DESC) USING BTREE,
  KEY `FK_DetalleEvento_EspacioComun_idEspacio` (`idEspacio`),
  KEY `FK_DetalleEvento_Evento_idEvento` (`idEvento`),
  KEY `FK_DetalleEvento_Encargado_idEncargado` (`idEncargado`),
  CONSTRAINT `FK_DetalleEvento_Encargado_idEncargado` FOREIGN KEY (`idEncargado`) REFERENCES `encargado` (`id`),
  CONSTRAINT `FK_DetalleEvento_EspacioComun_idEspacio` FOREIGN KEY (`idEspacio`) REFERENCES `espaciocomun` (`id`),
  CONSTRAINT `FK_DetalleEvento_Evento_idEvento` FOREIGN KEY (`idEvento`) REFERENCES `evento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalleevento`
--

LOCK TABLES `detalleevento` WRITE;
/*!40000 ALTER TABLE `detalleevento` DISABLE KEYS */;
INSERT INTO `detalleevento` VALUES (1,'Taller de costura','Taller donde se aprenderán distintas técnicas de costura',1,1,1,'2019-10-14 10:00:00','2019-10-14 12:00:00',NULL,'Nuevo','Lunes',1),(2,'Taller de costura','Taller donde se aprenderán distintas técnicas de costura',1,1,1,'2019-10-16 12:00:00','2019-10-16 14:00:00',NULL,'Nuevo','Miercoles',1),(3,'Taller de costura','Taller donde se aprenderán distintas técnicas de costura',1,1,1,'2019-10-21 10:00:00','2019-10-21 12:00:00',NULL,'Nuevo','Lunes',1),(4,'Taller de costura','Taller donde se aprenderán distintas técnicas de costura',1,1,1,'2019-10-23 12:00:00','2019-10-23 14:00:00',NULL,'Nuevo','Miercoles',1),(5,'Taller de costura','Taller donde se aprenderán distintas técnicas de costura',1,1,1,'2019-10-28 10:00:00','2019-10-28 12:00:00',NULL,'Nuevo','Lunes',1),(6,'Taller de costura','Taller donde se aprenderán distintas técnicas de costura',1,1,1,'2019-10-30 12:00:00','2019-10-30 14:00:00',NULL,'Nuevo','Miercoles',1),(7,'Taller de costura','Taller donde se aprenderán distintas técnicas de costura',1,1,1,'2019-11-04 10:00:00','2019-11-04 12:00:00',NULL,'Nuevo','Lunes',1),(8,'Taller de costura','Taller donde se aprenderán distintas técnicas de costura',1,1,1,'2019-11-06 12:00:00','2019-11-06 14:00:00',NULL,'Nuevo','Miercoles',1),(9,'Taller pintura sobre oleo','Se enseña a pintar con diferentes tecnicas sobre tela en oleo.',1,2,1,'2019-10-17 14:00:00','2019-10-17 16:00:00',NULL,'Nuevo','Jueves',1),(10,'Taller pintura sobre oleo','Se enseña a pintar con diferentes tecnicas sobre tela en oleo.',1,2,1,'2019-10-21 14:00:00','2019-10-21 16:00:00',NULL,'Nuevo','Lunes',1),(11,'Taller pintura sobre oleo','Se enseña a pintar con diferentes tecnicas sobre tela en oleo.',1,2,1,'2019-10-24 14:00:00','2019-10-24 16:00:00',NULL,'Nuevo','Jueves',1),(12,'Taller pintura sobre oleo','Se enseña a pintar con diferentes tecnicas sobre tela en oleo.',1,2,1,'2019-10-28 14:00:00','2019-10-28 16:00:00',NULL,'Nuevo','Lunes',1),(13,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-10-22 16:00:00','2019-10-22 18:00:00',NULL,'Nuevo','Martes',1),(14,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-10-25 16:00:00','2019-10-25 18:00:00',NULL,'Nuevo','Viernes',1),(15,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-10-29 16:00:00','2019-10-29 18:00:00',NULL,'Nuevo','Martes',1),(16,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-01 16:00:00','2019-11-01 18:00:00',NULL,'Nuevo','Viernes',1),(17,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-05 16:00:00','2019-11-05 18:00:00',NULL,'Nuevo','Martes',1),(18,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-08 16:00:00','2019-11-08 18:00:00',NULL,'Nuevo','Viernes',1),(19,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-12 16:00:00','2019-11-12 18:00:00',NULL,'Nuevo','Martes',1),(20,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-15 16:00:00','2019-11-15 18:00:00',NULL,'Nuevo','Viernes',1),(21,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-19 16:00:00','2019-11-19 18:00:00',NULL,'Nuevo','Martes',0),(22,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-22 16:00:00','2019-11-22 18:00:00',NULL,'Nuevo','Viernes',0),(23,'Curso Office Word','Se dictara un curso para aprender a usar el Word',3,3,1,'2019-11-26 16:00:00','2019-11-26 18:00:00',NULL,'Nuevo','Martes',0),(24,'Campaña Vacunación ','Campaña para vacunar a menores de edad',3,4,1,'2019-10-21 20:00:00','2019-10-21 22:00:00',NULL,'Nuevo','Lunes',0),(25,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-01 19:00:00','2019-11-01 20:00:00',NULL,'Nuevo','Viernes',1),(26,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-04 19:00:00','2019-11-04 21:00:00',NULL,'Nuevo','Lunes',1),(27,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-08 19:00:00','2019-11-08 20:00:00',NULL,'Nuevo','Viernes',1),(28,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-11 19:00:00','2019-11-11 21:00:00',NULL,'Nuevo','Lunes',1),(29,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-15 19:00:00','2019-11-15 20:00:00',NULL,'Nuevo','Viernes',1),(30,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-18 19:00:00','2019-11-18 21:00:00',NULL,'Nuevo','Lunes',1),(31,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-22 19:00:00','2019-11-22 20:00:00',NULL,'Nuevo','Viernes',1),(32,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-25 19:00:00','2019-11-25 21:00:00',NULL,'Nuevo','Lunes',0),(33,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-11-29 19:00:00','2019-11-29 20:00:00',NULL,'Nuevo','Viernes',0),(34,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-12-02 19:00:00','2019-12-02 21:00:00',NULL,'Nuevo','Lunes',0),(35,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-12-06 19:00:00','2019-12-06 20:00:00',NULL,'Nuevo','Viernes',0),(36,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-12-09 19:00:00','2019-12-09 21:00:00',NULL,'Nuevo','Lunes',0),(37,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-12-13 19:00:00','2019-12-13 20:00:00',NULL,'Nuevo','Viernes',0),(38,'Baile de salsa','Aprender a bailar salsa.',1,5,2,'2019-12-16 19:00:00','2019-12-16 21:00:00',NULL,'Nuevo','Lunes',0),(39,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-11-06 15:00:00','2019-11-06 17:00:00',NULL,'Nuevo','Miercoles',1),(40,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-11-12 14:00:00','2019-11-12 16:00:00',NULL,'Nuevo','Martes',1),(41,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-11-13 15:00:00','2019-11-13 17:00:00',NULL,'Nuevo','Miercoles',1),(42,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-11-19 14:00:00','2019-11-19 16:00:00',NULL,'Nuevo','Martes',0),(43,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-11-20 15:00:00','2019-11-20 17:00:00',NULL,'Nuevo','Miercoles',0),(44,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-11-26 14:00:00','2019-11-26 16:00:00',NULL,'Nuevo','Martes',0),(45,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-11-27 15:00:00','2019-11-27 17:00:00',NULL,'Nuevo','Miercoles',0),(46,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-12-03 14:00:00','2019-12-03 16:00:00',NULL,'Nuevo','Martes',0),(47,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-12-04 15:00:00','2019-12-04 17:00:00',NULL,'Nuevo','Miercoles',0),(48,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-12-10 14:00:00','2019-12-10 16:00:00',NULL,'Nuevo','Martes',0),(49,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-12-11 15:00:00','2019-12-11 17:00:00',NULL,'Nuevo','Miercoles',0),(50,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-12-17 14:00:00','2019-12-17 16:00:00',NULL,'Nuevo','Martes',0),(51,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',1,6,2,'2019-12-18 15:00:00','2019-12-18 17:00:00',NULL,'Nuevo','Miercoles',0),(52,'Seminario Fertilidad','Se hablara sobre la fertilidad y se derribaran mitos.',3,7,3,'2019-10-28 09:00:00','2019-10-28 12:00:00',NULL,'Nuevo','Lunes',0),(53,'Taller de prueba','Es un taller de prueba',1,8,2,'2019-11-04 14:00:00','2019-11-04 16:00:00','2019-11-02 23:23:45','Nuevo','Lunes',0),(54,'Taller de prueba','Es un taller de prueba',1,8,2,'2019-11-06 16:00:00','2019-11-06 18:00:00','2019-11-02 23:23:45','Nuevo','Miercoles',0),(55,'Taller de prueba','Es un taller de prueba',1,8,2,'2019-11-11 14:00:00','2019-11-11 16:00:00','2019-11-02 23:23:45','Nuevo','Lunes',0),(56,'Taller de prueba','Es un taller de prueba',1,8,2,'2019-11-13 16:00:00','2019-11-13 18:00:00','2019-11-02 23:23:45','Nuevo','Miercoles',0),(57,'Taller de prueba','Es un taller de prueba',1,8,2,'2019-11-18 14:00:00','2019-11-18 16:00:00','2019-11-02 23:23:45','Nuevo','Lunes',0),(58,'Taller de prueba','Es un taller de prueba',1,8,2,'2019-11-20 16:00:00','2019-11-20 18:00:00','2019-11-02 23:23:45','Nuevo','Miercoles',0),(59,'Curso de meditación','Aprenderemos distintas técnicas para meditar',1,9,2,'2019-11-11 10:00:00','2019-11-11 12:00:00',NULL,'Nuevo','Lunes',1),(60,'Curso de meditación','Aprenderemos distintas técnicas para meditar',1,9,2,'2019-11-11 14:00:00','2019-11-11 16:00:00',NULL,'Nuevo','Lunes',1),(61,'Curso de meditación','Aprenderemos distintas técnicas para meditar',1,9,2,'2019-11-18 10:00:00','2019-11-18 12:00:00',NULL,'Nuevo','Lunes',1),(62,'Curso de meditación','Aprenderemos distintas técnicas para meditar',1,9,2,'2019-11-18 14:00:00','2019-11-18 16:00:00',NULL,'Nuevo','Lunes',0),(63,'Curso de meditación','Aprenderemos distintas técnicas para meditar',1,9,2,'2019-11-25 10:00:00','2019-11-25 12:00:00',NULL,'Nuevo','Lunes',0),(64,'Curso de meditación','Aprenderemos distintas técnicas para meditar',1,9,2,'2019-11-25 14:00:00','2019-11-25 16:00:00',NULL,'Nuevo','Lunes',0),(65,'Curso de meditación','Aprenderemos distintas técnicas para meditar',1,9,2,'2019-12-02 10:00:00','2019-12-02 12:00:00',NULL,'Nuevo','Lunes',0),(66,'Curso de meditación','Aprenderemos distintas técnicas para meditar',1,9,2,'2019-12-02 14:00:00','2019-12-02 16:00:00',NULL,'Nuevo','Lunes',0),(67,'Curso de meditación','Aprenderemos distintas técnicas para meditar',1,9,2,'2019-12-09 10:00:00','2019-12-09 12:00:00',NULL,'Nuevo','Lunes',0),(68,'Curso de meditación','Aprenderemos distintas técnicas para meditar',1,9,2,'2019-12-09 14:00:00','2019-12-09 16:00:00',NULL,'Nuevo','Lunes',0),(69,'Curso excel avanzado','Se aprenderán funciones avanzadas de excel',1,10,2,'2019-11-21 16:00:00','2019-11-21 20:00:00',NULL,'Nuevo','Jueves',1),(70,'Curso excel avanzado','Se aprenderán funciones avanzadas de excel',1,10,2,'2019-11-28 16:00:00','2019-11-28 20:00:00',NULL,'Nuevo','Jueves',0),(71,'Curso excel avanzado','Se aprenderán funciones avanzadas de excel',1,10,2,'2019-12-05 16:00:00','2019-12-05 20:00:00',NULL,'Nuevo','Jueves',0),(72,'Curso excel avanzado','Se aprenderán funciones avanzadas de excel',1,10,2,'2019-12-12 16:00:00','2019-12-12 20:00:00',NULL,'Nuevo','Jueves',0),(73,'Curso excel avanzado','Se aprenderán funciones avanzadas de excel',1,10,2,'2019-12-19 16:00:00','2019-12-19 20:00:00',NULL,'Nuevo','Jueves',0),(74,'CORTE Y CONFECCION','Es un taller para aprender a realizar corte y confeccion',3,11,5,'2019-11-15 19:00:00','2019-11-15 21:00:00',NULL,'Nuevo','Viernes',0),(75,'CORTE Y CONFECCION','Es un taller para aprender a realizar corte y confeccion',3,11,5,'2019-11-18 19:00:00','2019-11-18 21:00:00',NULL,'Nuevo','Lunes',0),(76,'CORTE Y CONFECCION','Es un taller para aprender a realizar corte y confeccion',3,11,5,'2019-11-22 19:00:00','2019-11-22 21:00:00',NULL,'Nuevo','Viernes',0),(77,'CORTE Y CONFECCION','Es un taller para aprender a realizar corte y confeccion',3,11,5,'2019-11-25 19:00:00','2019-11-25 21:00:00',NULL,'Nuevo','Lunes',0),(78,'CORTE Y CONFECCION','Es un taller para aprender a realizar corte y confeccion',3,11,5,'2019-11-29 19:00:00','2019-11-29 21:00:00',NULL,'Nuevo','Viernes',0),(79,'CORTE Y CONFECCION','Es un taller para aprender a realizar corte y confeccion',3,11,5,'2019-12-02 19:00:00','2019-12-02 21:00:00',NULL,'Nuevo','Lunes',0),(80,'CORTE Y CONFECCION','Es un taller para aprender a realizar corte y confeccion',3,11,5,'2019-12-06 19:00:00','2019-12-06 21:00:00',NULL,'Nuevo','Viernes',0),(81,'CORTE Y CONFECCION','Es un taller para aprender a realizar corte y confeccion',3,11,5,'2019-12-09 19:00:00','2019-12-09 21:00:00',NULL,'Nuevo','Lunes',0),(82,'CORTE Y CONFECCION','Es un taller para aprender a realizar corte y confeccion',3,11,5,'2019-12-13 19:00:00','2019-12-13 21:00:00',NULL,'Nuevo','Viernes',0),(83,'CORTE Y CONFECCION','Es un taller para aprender a realizar corte y confeccion',3,11,5,'2019-12-16 19:00:00','2019-12-16 21:00:00',NULL,'Nuevo','Lunes',0),(84,'GUITARRA Y CANTO','Se aprenderá a tocar la guitarra y acompañar con el canto',2,12,6,'2019-11-28 20:00:00','2019-11-28 22:00:00',NULL,'Nuevo','Jueves',0),(85,'GUITARRA Y CANTO','Se aprenderá a tocar la guitarra y acompañar con el canto',2,12,6,'2019-12-03 20:00:00','2019-12-03 22:00:00',NULL,'Nuevo','Martes',0),(86,'GUITARRA Y CANTO','Se aprenderá a tocar la guitarra y acompañar con el canto',2,12,6,'2019-12-05 20:00:00','2019-12-05 22:00:00',NULL,'Nuevo','Jueves',0),(87,'GUITARRA Y CANTO','Se aprenderá a tocar la guitarra y acompañar con el canto',2,12,6,'2019-12-10 20:00:00','2019-12-10 22:00:00',NULL,'Nuevo','Martes',0),(88,'GUITARRA Y CANTO','Se aprenderá a tocar la guitarra y acompañar con el canto',2,12,6,'2019-12-12 20:00:00','2019-12-12 22:00:00',NULL,'Nuevo','Jueves',0),(89,'GUITARRA Y CANTO','Se aprenderá a tocar la guitarra y acompañar con el canto',2,12,6,'2019-12-17 20:00:00','2019-12-17 22:00:00',NULL,'Nuevo','Martes',0),(90,'GUITARRA Y CANTO','Se aprenderá a tocar la guitarra y acompañar con el canto',2,12,6,'2019-12-19 20:00:00','2019-12-19 22:00:00',NULL,'Nuevo','Jueves',0),(91,'GUITARRA Y CANTO','Se aprenderá a tocar la guitarra y acompañar con el canto',2,12,6,'2019-12-24 20:00:00','2019-12-24 22:00:00',NULL,'Nuevo','Martes',0),(92,'GUITARRA Y CANTO','Se aprenderá a tocar la guitarra y acompañar con el canto',2,12,6,'2019-12-26 20:00:00','2019-12-26 22:00:00',NULL,'Nuevo','Jueves',0),(93,'SECRETARIADO Y RECEPCIÓN','Se formara al alumno para que cuentes con las habilidades correspondientes',2,13,6,'2019-11-26 09:00:00','2019-11-26 12:00:00',NULL,'Nuevo','Martes',0),(94,'SECRETARIADO Y RECEPCIÓN','Se formara al alumno para que cuentes con las habilidades correspondientes',2,13,6,'2019-11-30 09:00:00','2019-11-30 12:00:00',NULL,'Nuevo','Sabado',0),(95,'SECRETARIADO Y RECEPCIÓN','Se formara al alumno para que cuentes con las habilidades correspondientes',2,13,6,'2019-12-03 09:00:00','2019-12-03 12:00:00',NULL,'Nuevo','Martes',0),(96,'SECRETARIADO Y RECEPCIÓN','Se formara al alumno para que cuentes con las habilidades correspondientes',2,13,6,'2019-12-07 09:00:00','2019-12-07 12:00:00',NULL,'Nuevo','Sabado',0),(97,'SECRETARIADO Y RECEPCIÓN','Se formara al alumno para que cuentes con las habilidades correspondientes',2,13,6,'2019-12-10 09:00:00','2019-12-10 12:00:00',NULL,'Nuevo','Martes',0),(98,'SECRETARIADO Y RECEPCIÓN','Se formara al alumno para que cuentes con las habilidades correspondientes',2,13,6,'2019-12-14 09:00:00','2019-12-14 12:00:00',NULL,'Nuevo','Sabado',0),(99,'SECRETARIADO Y RECEPCIÓN','Se formara al alumno para que cuentes con las habilidades correspondientes',2,13,6,'2019-12-17 09:00:00','2019-12-17 12:00:00',NULL,'Nuevo','Martes',0),(100,'SECRETARIADO Y RECEPCIÓN','Se formara al alumno para que cuentes con las habilidades correspondientes',2,13,6,'2019-12-21 09:00:00','2019-12-21 12:00:00',NULL,'Nuevo','Sabado',0),(101,'SECRETARIADO Y RECEPCIÓN','Se formara al alumno para que cuentes con las habilidades correspondientes',2,13,6,'2019-12-24 09:00:00','2019-12-24 12:00:00',NULL,'Nuevo','Martes',0),(102,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-09-11 15:00:00','2019-09-11 16:30:00',NULL,'Nuevo','Miercoles',0),(103,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-09-12 15:00:00','2019-09-12 16:30:00',NULL,'Nuevo','Jueves',0),(104,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-09-18 15:00:00','2019-09-18 16:30:00',NULL,'Nuevo','Miercoles',0),(105,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-09-19 15:00:00','2019-09-19 16:30:00',NULL,'Nuevo','Jueves',0),(106,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-09-25 15:00:00','2019-09-25 16:30:00',NULL,'Nuevo','Miercoles',0),(107,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-09-26 15:00:00','2019-09-26 16:30:00',NULL,'Nuevo','Jueves',0),(108,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-10-02 15:00:00','2019-10-02 16:30:00',NULL,'Nuevo','Miercoles',0),(109,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-10-03 15:00:00','2019-10-03 16:30:00',NULL,'Nuevo','Jueves',0),(110,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-10-09 15:00:00','2019-10-09 16:30:00',NULL,'Nuevo','Miercoles',0),(111,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-10-10 15:00:00','2019-10-10 16:30:00',NULL,'Nuevo','Jueves',0),(112,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-10-16 15:00:00','2019-10-16 16:30:00',NULL,'Nuevo','Miercoles',0),(113,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-10-17 15:00:00','2019-10-17 16:30:00',NULL,'Nuevo','Jueves',0),(114,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-10-23 15:00:00','2019-10-23 16:30:00',NULL,'Nuevo','Miercoles',0),(115,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-10-24 15:00:00','2019-10-24 16:30:00',NULL,'Nuevo','Jueves',0),(116,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-10-30 15:00:00','2019-10-30 16:30:00',NULL,'Nuevo','Miercoles',0),(117,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-10-31 15:00:00','2019-10-31 16:30:00',NULL,'Nuevo','Jueves',0),(118,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-11-06 15:00:00','2019-11-06 16:30:00',NULL,'Nuevo','Miercoles',0),(119,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-11-07 15:00:00','2019-11-07 16:30:00',NULL,'Nuevo','Jueves',0),(120,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-11-13 15:00:00','2019-11-13 16:30:00',NULL,'Nuevo','Miercoles',0),(121,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-11-14 15:00:00','2019-11-14 16:30:00',NULL,'Nuevo','Jueves',0),(122,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-11-20 15:00:00','2019-11-20 16:30:00',NULL,'Nuevo','Miercoles',0),(123,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-11-21 15:00:00','2019-11-21 16:30:00',NULL,'Nuevo','Jueves',0),(124,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-11-27 15:00:00','2019-11-27 16:30:00',NULL,'Nuevo','Miercoles',0),(125,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-11-28 15:00:00','2019-11-28 16:30:00',NULL,'Nuevo','Jueves',0),(126,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-12-04 15:00:00','2019-12-04 16:30:00',NULL,'Nuevo','Miercoles',0),(127,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-12-05 15:00:00','2019-12-05 16:30:00',NULL,'Nuevo','Jueves',0),(128,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-12-11 15:00:00','2019-12-11 16:30:00',NULL,'Nuevo','Miercoles',0),(129,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-12-12 15:00:00','2019-12-12 16:30:00',NULL,'Nuevo','Jueves',0),(130,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-12-18 15:00:00','2019-12-18 16:30:00',NULL,'Nuevo','Miercoles',0),(131,'Taller de alfarería','Aprenderemos a hacer macetas de barro',1,14,6,'2019-12-19 15:00:00','2019-12-19 16:30:00',NULL,'Nuevo','Jueves',0),(132,'Curso de inglés I','Nivel inicial de inglés británico',4,15,2,'2019-09-23 17:00:00','2019-09-23 18:00:00',NULL,'Nuevo','Lunes',0),(133,'Curso de inglés I','Nivel inicial de inglés británico',4,15,2,'2019-09-27 17:00:00','2019-09-27 18:00:00',NULL,'Nuevo','Viernes',0),(134,'Curso de inglés I','Nivel inicial de inglés británico',4,15,2,'2019-09-30 17:00:00','2019-09-30 18:00:00',NULL,'Nuevo','Lunes',0),(135,'Curso de inglés I','Nivel inicial de inglés británico',4,15,2,'2019-10-04 17:00:00','2019-10-04 18:00:00',NULL,'Nuevo','Viernes',0),(136,'Curso de inglés I','Nivel inicial de inglés británico',4,15,2,'2019-10-07 17:00:00','2019-10-07 18:00:00',NULL,'Nuevo','Lunes',0),(137,'Curso de inglés I','Nivel inicial de inglés británico',4,15,2,'2019-10-11 17:00:00','2019-10-11 18:00:00',NULL,'Nuevo','Viernes',0),(138,'Curso de inglés I','Nivel inicial de inglés británico',4,15,2,'2019-10-14 17:00:00','2019-10-14 18:00:00',NULL,'Nuevo','Lunes',0),(139,'Curso de inglés I','Nivel inicial de inglés británico',4,15,2,'2019-10-18 17:00:00','2019-10-18 18:00:00',NULL,'Nuevo','Viernes',0),(140,'Curso de inglés I','Nivel inicial de inglés británico',4,15,2,'2019-10-21 17:00:00','2019-10-21 18:00:00',NULL,'Nuevo','Lunes',0),(141,'Curso de inglés I','Nivel inicial de inglés británico',4,15,2,'2019-10-25 17:00:00','2019-10-25 18:00:00',NULL,'Nuevo','Viernes',0),(142,'Curso de inglés I','Nivel inicial de inglés británico',4,15,2,'2019-10-28 17:00:00','2019-10-28 18:00:00',NULL,'Nuevo','Lunes',0),(143,'Curso de inglés I','Nivel inicial de inglés británico',4,15,2,'2019-11-01 17:00:00','2019-11-01 18:00:00',NULL,'Nuevo','Viernes',0),(144,'Curso de inglés I','Nivel inicial de inglés británico',4,15,2,'2019-11-04 17:00:00','2019-11-04 18:00:00',NULL,'Nuevo','Lunes',0),(145,'Curso de inglés I','Nivel inicial de inglés británico',4,15,2,'2019-11-08 17:00:00','2019-11-08 18:00:00',NULL,'Nuevo','Viernes',0),(146,'Curso de inglés I','Nivel inicial de inglés británico',4,15,2,'2019-11-11 17:00:00','2019-11-11 18:00:00',NULL,'Nuevo','Lunes',0),(147,'Curso de inglés I','Nivel inicial de inglés británico',4,15,2,'2019-11-15 17:00:00','2019-11-15 18:00:00',NULL,'Nuevo','Viernes',0),(148,'Curso de inglés I','Nivel inicial de inglés británico',4,15,2,'2019-11-18 17:00:00','2019-11-18 18:00:00',NULL,'Nuevo','Lunes',0),(149,'Curso de inglés I','Nivel inicial de inglés británico',4,15,2,'2019-11-22 17:00:00','2019-11-22 18:00:00',NULL,'Nuevo','Viernes',0),(150,'Curso de inglés I','Nivel inicial de inglés británico',4,15,2,'2019-11-25 17:00:00','2019-11-25 18:00:00',NULL,'Nuevo','Lunes',0),(151,'Curso de inglés I','Nivel inicial de inglés británico',4,15,2,'2019-11-29 17:00:00','2019-11-29 18:00:00',NULL,'Nuevo','Viernes',0),(152,'Curso de inglés I','Nivel inicial de inglés británico',4,15,2,'2019-12-02 17:00:00','2019-12-02 18:00:00',NULL,'Nuevo','Lunes',0),(153,'Curso de inglés I','Nivel inicial de inglés británico',4,15,2,'2019-12-06 17:00:00','2019-12-06 18:00:00',NULL,'Nuevo','Viernes',0),(154,'Curso de inglés I','Nivel inicial de inglés británico',4,15,2,'2019-12-09 17:00:00','2019-12-09 18:00:00',NULL,'Nuevo','Lunes',0),(155,'Curso de inglés I','Nivel inicial de inglés británico',4,15,2,'2019-12-13 17:00:00','2019-12-13 18:00:00',NULL,'Nuevo','Viernes',0),(156,'Danza 2019','Presentación de fin de año de la academia de baile Alma Brava',7,16,3,'2019-12-14 20:00:00','2019-12-14 23:00:00',NULL,'Nuevo','Sabado',0),(157,'Cáncer de mama','Enseñamos a realizar el autocontrol de nuestro cuerpo. Charlas con sobrevivientes',6,17,5,'2019-10-03 20:00:00','2019-10-03 21:00:00',NULL,'Nuevo','Jueves',0),(158,'Prevención VIH - SIDA','En el día internacional del VIH enseñaremos a prevenir esta enfermedad y otras ITS',2,18,5,'2019-12-01 15:00:00','2019-12-01 16:00:00',NULL,'Nuevo','Domingo',0),(159,'RCP','Aprendemos las técnicas para realizar RCP',4,19,6,'2019-09-18 10:00:00','2019-09-18 11:00:00',NULL,'Nuevo','Miercoles',0),(160,'Curso de Inglés II','Nivel intermedio de inglés británico',5,20,2,'2019-09-10 12:00:00','2019-09-10 13:00:00',NULL,'Nuevo','Martes',0),(161,'Curso de Inglés II','Nivel intermedio de inglés británico',5,20,2,'2019-09-12 12:00:00','2019-09-12 13:00:00',NULL,'Nuevo','Jueves',0),(162,'Curso de Inglés II','Nivel intermedio de inglés británico',5,20,2,'2019-09-17 12:00:00','2019-09-17 13:00:00',NULL,'Nuevo','Martes',0),(163,'Curso de Inglés II','Nivel intermedio de inglés británico',5,20,2,'2019-09-19 12:00:00','2019-09-19 13:00:00',NULL,'Nuevo','Jueves',0),(164,'Curso de Inglés II','Nivel intermedio de inglés británico',5,20,2,'2019-09-24 12:00:00','2019-09-24 13:00:00',NULL,'Nuevo','Martes',0),(165,'Curso de Inglés II','Nivel intermedio de inglés británico',5,20,2,'2019-09-26 12:00:00','2019-09-26 13:00:00',NULL,'Nuevo','Jueves',0),(166,'Curso de Inglés II','Nivel intermedio de inglés británico',5,20,2,'2019-10-01 12:00:00','2019-10-01 13:00:00',NULL,'Nuevo','Martes',0),(167,'Curso de Inglés II','Nivel intermedio de inglés británico',5,20,2,'2019-10-03 12:00:00','2019-10-03 13:00:00',NULL,'Nuevo','Jueves',0),(168,'Curso de Inglés II','Nivel intermedio de inglés británico',5,20,2,'2019-10-08 12:00:00','2019-10-08 13:00:00',NULL,'Nuevo','Martes',0),(169,'Curso de Inglés II','Nivel intermedio de inglés británico',5,20,2,'2019-10-10 12:00:00','2019-10-10 13:00:00',NULL,'Nuevo','Jueves',0),(170,'Curso de Inglés II','Nivel intermedio de inglés británico',5,20,2,'2019-10-15 12:00:00','2019-10-15 13:00:00',NULL,'Nuevo','Martes',0),(171,'Curso de Inglés II','Nivel intermedio de inglés británico',5,20,2,'2019-10-17 12:00:00','2019-10-17 13:00:00',NULL,'Nuevo','Jueves',0),(172,'Curso de Inglés II','Nivel intermedio de inglés británico',5,20,2,'2019-10-22 12:00:00','2019-10-22 13:00:00',NULL,'Nuevo','Martes',0),(173,'Curso de Inglés II','Nivel intermedio de inglés británico',5,20,2,'2019-10-24 12:00:00','2019-10-24 13:00:00',NULL,'Nuevo','Jueves',0),(174,'Curso de Inglés II','Nivel intermedio de inglés británico',5,20,2,'2019-10-29 12:00:00','2019-10-29 13:00:00',NULL,'Nuevo','Martes',0),(175,'Curso de Inglés II','Nivel intermedio de inglés británico',5,20,2,'2019-10-31 12:00:00','2019-10-31 13:00:00',NULL,'Nuevo','Jueves',0),(176,'Curso de Inglés II','Nivel intermedio de inglés británico',5,20,2,'2019-11-05 12:00:00','2019-11-05 13:00:00',NULL,'Nuevo','Martes',0),(177,'Curso de Inglés II','Nivel intermedio de inglés británico',5,20,2,'2019-11-07 12:00:00','2019-11-07 13:00:00',NULL,'Nuevo','Jueves',0),(178,'Curso de Inglés II','Nivel intermedio de inglés británico',5,20,2,'2019-11-12 12:00:00','2019-11-12 13:00:00',NULL,'Nuevo','Martes',0),(179,'Curso de Inglés II','Nivel intermedio de inglés británico',5,20,2,'2019-11-14 12:00:00','2019-11-14 13:00:00',NULL,'Nuevo','Jueves',0),(180,'Curso de Inglés II','Nivel intermedio de inglés británico',5,20,2,'2019-11-19 12:00:00','2019-11-19 13:00:00',NULL,'Nuevo','Martes',0),(181,'Curso de Inglés II','Nivel intermedio de inglés británico',5,20,2,'2019-11-21 12:00:00','2019-11-21 13:00:00',NULL,'Nuevo','Jueves',0),(182,'Curso de Inglés II','Nivel intermedio de inglés británico',5,20,2,'2019-11-26 12:00:00','2019-11-26 13:00:00',NULL,'Nuevo','Martes',0),(183,'Curso de Inglés II','Nivel intermedio de inglés británico',5,20,2,'2019-11-28 12:00:00','2019-11-28 13:00:00',NULL,'Nuevo','Jueves',0),(184,'Curso de portugués I','Curso inicial de portugués brasilero',6,21,2,'2019-09-10 10:00:00','2019-09-10 11:00:00',NULL,'Nuevo','Martes',0),(185,'Curso de portugués I','Curso inicial de portugués brasilero',6,21,2,'2019-09-12 10:00:00','2019-09-12 11:00:00',NULL,'Nuevo','Jueves',0),(186,'Curso de portugués I','Curso inicial de portugués brasilero',6,21,2,'2019-09-17 10:00:00','2019-09-17 11:00:00',NULL,'Nuevo','Martes',0),(187,'Curso de portugués I','Curso inicial de portugués brasilero',6,21,2,'2019-09-19 10:00:00','2019-09-19 11:00:00',NULL,'Nuevo','Jueves',0),(188,'Curso de portugués I','Curso inicial de portugués brasilero',6,21,2,'2019-09-24 10:00:00','2019-09-24 11:00:00',NULL,'Nuevo','Martes',0),(189,'Curso de portugués I','Curso inicial de portugués brasilero',6,21,2,'2019-09-26 10:00:00','2019-09-26 11:00:00',NULL,'Nuevo','Jueves',0),(190,'Curso de portugués I','Curso inicial de portugués brasilero',6,21,2,'2019-10-01 10:00:00','2019-10-01 11:00:00',NULL,'Nuevo','Martes',0),(191,'Curso de portugués I','Curso inicial de portugués brasilero',6,21,2,'2019-10-03 10:00:00','2019-10-03 11:00:00',NULL,'Nuevo','Jueves',0),(192,'Curso de portugués I','Curso inicial de portugués brasilero',6,21,2,'2019-10-08 10:00:00','2019-10-08 11:00:00',NULL,'Nuevo','Martes',0),(193,'Curso de portugués I','Curso inicial de portugués brasilero',6,21,2,'2019-10-10 10:00:00','2019-10-10 11:00:00',NULL,'Nuevo','Jueves',0),(194,'Curso de portugués I','Curso inicial de portugués brasilero',6,21,2,'2019-10-15 10:00:00','2019-10-15 11:00:00',NULL,'Nuevo','Martes',0),(195,'Curso de portugués I','Curso inicial de portugués brasilero',6,21,2,'2019-10-17 10:00:00','2019-10-17 11:00:00',NULL,'Nuevo','Jueves',0),(196,'Curso de portugués I','Curso inicial de portugués brasilero',6,21,2,'2019-10-22 10:00:00','2019-10-22 11:00:00',NULL,'Nuevo','Martes',0),(197,'Curso de portugués I','Curso inicial de portugués brasilero',6,21,2,'2019-10-24 10:00:00','2019-10-24 11:00:00',NULL,'Nuevo','Jueves',0),(198,'Curso de portugués I','Curso inicial de portugués brasilero',6,21,2,'2019-10-29 10:00:00','2019-10-29 11:00:00',NULL,'Nuevo','Martes',0),(199,'Curso de portugués I','Curso inicial de portugués brasilero',6,21,2,'2019-10-31 10:00:00','2019-10-31 11:00:00',NULL,'Nuevo','Jueves',0),(200,'Curso de portugués I','Curso inicial de portugués brasilero',6,21,2,'2019-11-05 10:00:00','2019-11-05 11:00:00',NULL,'Nuevo','Martes',0),(201,'Curso de portugués I','Curso inicial de portugués brasilero',6,21,2,'2019-11-07 10:00:00','2019-11-07 11:00:00',NULL,'Nuevo','Jueves',0),(202,'Curso de portugués I','Curso inicial de portugués brasilero',6,21,2,'2019-11-12 10:00:00','2019-11-12 11:00:00',NULL,'Nuevo','Martes',0),(203,'Curso de portugués I','Curso inicial de portugués brasilero',6,21,2,'2019-11-14 10:00:00','2019-11-14 11:00:00',NULL,'Nuevo','Jueves',0),(204,'Curso de portugués I','Curso inicial de portugués brasilero',6,21,2,'2019-11-19 10:00:00','2019-11-19 11:00:00',NULL,'Nuevo','Martes',0),(205,'Curso de portugués I','Curso inicial de portugués brasilero',6,21,2,'2019-11-21 10:00:00','2019-11-21 11:00:00',NULL,'Nuevo','Jueves',0),(206,'Curso de portugués II','Nivel intermedio del idioma brasilero',3,22,2,'2019-09-11 09:00:00','2019-09-11 10:00:00',NULL,'Nuevo','Miercoles',0),(207,'Curso de portugués II','Nivel intermedio del idioma brasilero',3,22,2,'2019-09-13 09:00:00','2019-09-13 10:00:00',NULL,'Nuevo','Viernes',0),(208,'Curso de portugués II','Nivel intermedio del idioma brasilero',3,22,2,'2019-09-18 09:00:00','2019-09-18 10:00:00',NULL,'Nuevo','Miercoles',0),(209,'Curso de portugués II','Nivel intermedio del idioma brasilero',3,22,2,'2019-09-20 09:00:00','2019-09-20 10:00:00',NULL,'Nuevo','Viernes',0),(210,'Curso de portugués II','Nivel intermedio del idioma brasilero',3,22,2,'2019-09-25 09:00:00','2019-09-25 10:00:00',NULL,'Nuevo','Miercoles',0),(211,'Curso de portugués II','Nivel intermedio del idioma brasilero',3,22,2,'2019-09-27 09:00:00','2019-09-27 10:00:00',NULL,'Nuevo','Viernes',0),(212,'Curso de portugués II','Nivel intermedio del idioma brasilero',3,22,2,'2019-10-02 09:00:00','2019-10-02 10:00:00',NULL,'Nuevo','Miercoles',0),(213,'Curso de portugués II','Nivel intermedio del idioma brasilero',3,22,2,'2019-10-04 09:00:00','2019-10-04 10:00:00',NULL,'Nuevo','Viernes',0),(214,'Curso de portugués II','Nivel intermedio del idioma brasilero',3,22,2,'2019-10-09 09:00:00','2019-10-09 10:00:00',NULL,'Nuevo','Miercoles',0),(215,'Curso de portugués II','Nivel intermedio del idioma brasilero',3,22,2,'2019-10-11 09:00:00','2019-10-11 10:00:00',NULL,'Nuevo','Viernes',0),(216,'Curso de portugués II','Nivel intermedio del idioma brasilero',3,22,2,'2019-10-16 09:00:00','2019-10-16 10:00:00',NULL,'Nuevo','Miercoles',0),(217,'Curso de portugués II','Nivel intermedio del idioma brasilero',3,22,2,'2019-10-18 09:00:00','2019-10-18 10:00:00',NULL,'Nuevo','Viernes',0),(218,'Curso de portugués II','Nivel intermedio del idioma brasilero',3,22,2,'2019-10-23 09:00:00','2019-10-23 10:00:00',NULL,'Nuevo','Miercoles',0),(219,'Curso de portugués II','Nivel intermedio del idioma brasilero',3,22,2,'2019-10-25 09:00:00','2019-10-25 10:00:00',NULL,'Nuevo','Viernes',0),(220,'Curso de portugués II','Nivel intermedio del idioma brasilero',3,22,2,'2019-10-30 09:00:00','2019-10-30 10:00:00',NULL,'Nuevo','Miercoles',0),(221,'Curso de portugués II','Nivel intermedio del idioma brasilero',3,22,2,'2019-11-01 09:00:00','2019-11-01 10:00:00',NULL,'Nuevo','Viernes',0),(222,'Curso de portugués II','Nivel intermedio del idioma brasilero',3,22,2,'2019-11-06 09:00:00','2019-11-06 10:00:00',NULL,'Nuevo','Miercoles',0),(223,'Curso de portugués II','Nivel intermedio del idioma brasilero',3,22,2,'2019-11-08 09:00:00','2019-11-08 10:00:00',NULL,'Nuevo','Viernes',0),(224,'Curso de portugués II','Nivel intermedio del idioma brasilero',3,22,2,'2019-11-13 09:00:00','2019-11-13 10:00:00',NULL,'Nuevo','Miercoles',0),(225,'Curso de portugués II','Nivel intermedio del idioma brasilero',3,22,2,'2019-11-15 09:00:00','2019-11-15 10:00:00',NULL,'Nuevo','Viernes',0),(226,'Curso de portugués II','Nivel intermedio del idioma brasilero',3,22,2,'2019-11-20 09:00:00','2019-11-20 10:00:00',NULL,'Nuevo','Miercoles',0),(227,'Curso de portugués II','Nivel intermedio del idioma brasilero',3,22,2,'2019-11-22 09:00:00','2019-11-22 10:00:00',NULL,'Nuevo','Viernes',0),(228,'Seguridad Informática','Detalles a tener en cuenta a la hora de realizar navegar por internet',4,23,4,'2019-10-17 19:00:00','2019-10-17 20:00:00',NULL,'Nuevo','Jueves',0),(229,'Bingo','Recolectamos dinero para la fundación con un bingo barrial',3,24,3,'2019-09-14 20:00:00','2019-09-14 23:00:00',NULL,'Nuevo','Sabado',0),(230,'Peña','Bailamos folklore',6,25,3,'2019-10-12 20:00:00','2019-10-12 23:00:00',NULL,'Nuevo','Sabado',0),(231,'Concurso de deletreo','Competencia intercolegial',6,27,3,'2019-11-11 15:00:00','2019-11-11 18:00:00',NULL,'Nuevo','Lunes',0),(232,'Literatura','Nos abrimos a través de la escritura',2,28,2,'2019-10-03 14:00:00','2019-10-03 15:00:00',NULL,'Nuevo','Jueves',0),(233,'Literatura','Nos abrimos a través de la escritura',2,28,2,'2019-10-10 14:00:00','2019-10-10 15:00:00',NULL,'Nuevo','Jueves',0),(234,'Literatura','Nos abrimos a través de la escritura',2,28,2,'2019-10-17 14:00:00','2019-10-17 15:00:00',NULL,'Nuevo','Jueves',0),(235,'Literatura','Nos abrimos a través de la escritura',2,28,2,'2019-10-24 14:00:00','2019-10-24 15:00:00',NULL,'Nuevo','Jueves',0),(236,'Literatura','Nos abrimos a través de la escritura',2,28,2,'2019-10-31 14:00:00','2019-10-31 15:00:00',NULL,'Nuevo','Jueves',0),(237,'Literatura','Nos abrimos a través de la escritura',2,28,2,'2019-11-07 14:00:00','2019-11-07 15:00:00',NULL,'Nuevo','Jueves',0),(238,'Literatura','Nos abrimos a través de la escritura',2,28,2,'2019-11-14 14:00:00','2019-11-14 15:00:00',NULL,'Nuevo','Jueves',0),(239,'Literatura','Nos abrimos a través de la escritura',2,28,2,'2019-11-21 14:00:00','2019-11-21 15:00:00',NULL,'Nuevo','Jueves',0),(240,'Literatura','Nos abrimos a través de la escritura',2,28,2,'2019-11-28 14:00:00','2019-11-28 15:00:00',NULL,'Nuevo','Jueves',0),(241,'Jardinería','Cuidados de las plantas',1,29,5,'2019-09-03 15:00:00','2019-09-03 16:00:00',NULL,'Nuevo','Martes',0),(242,'Jardinería','Cuidados de las plantas',1,29,5,'2019-09-06 16:00:00','2019-09-06 17:00:00',NULL,'Nuevo','Viernes',0),(243,'Jardinería','Cuidados de las plantas',1,29,5,'2019-09-10 15:00:00','2019-09-10 16:00:00',NULL,'Nuevo','Martes',0),(244,'Jardinería','Cuidados de las plantas',1,29,5,'2019-09-13 16:00:00','2019-09-13 17:00:00',NULL,'Nuevo','Viernes',0),(245,'Jardinería','Cuidados de las plantas',1,29,5,'2019-09-17 15:00:00','2019-09-17 16:00:00',NULL,'Nuevo','Martes',0),(246,'Jardinería','Cuidados de las plantas',1,29,5,'2019-09-20 16:00:00','2019-09-20 17:00:00',NULL,'Nuevo','Viernes',0),(247,'Cuidemos el ambiente','Se muestran diferentes prácticas para disminuir la basura',7,30,5,'2019-11-28 15:00:00','2019-11-28 18:00:00',NULL,'Nuevo','Jueves',0),(248,'Navidad en familia','Invitamos a nuestros socios a traer a sus familias para compartir el brindis ',2,31,5,'2019-12-21 20:00:00','2019-12-21 22:00:00',NULL,'Nuevo','Sabado',0);
/*!40000 ALTER TABLE `detalleevento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domicilio`
--

DROP TABLE IF EXISTS `domicilio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `domicilio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `barrio` longtext,
  `calle` longtext,
  `piso` longtext,
  `nro` longtext,
  `codPostal` int(11) NOT NULL,
  `depto` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domicilio`
--

LOCK TABLES `domicilio` WRITE;
/*!40000 ALTER TABLE `domicilio` DISABLE KEYS */;
INSERT INTO `domicilio` VALUES (1,'Alberdi','Juan del campillo','1','50',5000,'A'),(2,'LaÂ Floresta','bernis','1','3567',5008,'1'),(3,'Alta Cordoba','Agua Sacha 8744- Pta Baja- Dto \"A\" -Barrio Villa Rivera Indarte- Córdoba, capital (domicilio de contacto)','1','8744',5018,'Cordoba'),(4,'Alta Cordoba','Agua Sacha','1','500',5000,'A'),(5,'Alta Cordoba','Agua Sacha','1','500',5000,'A'),(6,'Ayacucho','Agua Sacha','1','50',5000,'A'),(7,'AltaÂ Cordoba','Agua Sacha','1','550',5000,'A'),(8,'AltaÂ Cordoba','Agua Sacha','1','550',5000,'A'),(9,'Jardín','Agua Sacha','','323',5000,''),(10,'Ayacucho','Agua Sacha','1','550',5000,'a'),(11,'Chateau Carreras','Buenos Aires','','458',5000,''),(12,'General Paz','Mariano Fragueiro','12','512',5000,'D'),(13,'Los Paraisos','27 de Septiembre','','1268',5000,''),(14,'Centro','Dean Funés','6','98',5000,'B'),(15,'General Bustos','Lugones','4','2107',5016,'B'),(16,'Alta Cordoba','Traful','','1277',5016,''),(17,'Jardín','Elias Yofre','','2349',5016,''),(18,'Alto Alberdi','Tafí','','2489',5016,''),(19,'Independencia','Independencia','','1549',5012,''),(20,'Hipolito Yrigoyen','Laprida','1','3201',5016,'A'),(21,'Alberdi','alberdi','','156',0,''),(22,'','','','',0,''),(23,'','','','',0,''),(24,'','','','',0,''),(25,'','','','',0,''),(26,'','','','',0,''),(27,'','','','',0,''),(28,'','','','',0,''),(29,'','','','',0,''),(30,'','','','',0,''),(31,'','','','',0,''),(32,'','','','',0,''),(33,'','','','',0,''),(34,'','','','',0,''),(35,'','','','',0,''),(36,'','','','',0,''),(37,'','','','',0,''),(38,'','','','',0,''),(39,'','','','',0,''),(40,'','','','',0,''),(41,'','','','',0,''),(42,'','','','',0,''),(43,'','','','',0,''),(44,'','','','',0,''),(45,'','','','',0,''),(46,'','','','',0,''),(47,'','','','',0,''),(48,'','','','',0,''),(49,'','','','',0,''),(50,'','','','',0,''),(51,'','','','',0,''),(52,'','','','',0,''),(53,'','','','',0,''),(54,'','','','',0,''),(55,'','','','',0,''),(56,'','','','',0,''),(57,'','','','',0,''),(58,'','','','',0,''),(59,'','','','',0,''),(60,'','','','',0,''),(61,'','','','',0,''),(62,'','','','',0,''),(63,'','','','',0,'');
/*!40000 ALTER TABLE `domicilio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encargado`
--

DROP TABLE IF EXISTS `encargado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `encargado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `apellido` longtext,
  `telefono` longtext,
  `celular` longtext,
  `email` longtext,
  `idTipoDoc` int(11) NOT NULL,
  `nroDocumento` longtext,
  `idDomicilio` int(11) NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  `fechaBaja` datetime DEFAULT NULL,
  `estado` longtext,
  `Tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_idTipoDoc` (`idTipoDoc` DESC) USING BTREE,
  KEY `IX_idDomicilio` (`idDomicilio` DESC) USING BTREE,
  KEY `FK_Encargado_Domicilio_idDomicilio` (`idDomicilio`),
  KEY `FK_Encargado_TipoDocumento_idTipoDoc` (`idTipoDoc`),
  KEY `IX_Tag_id` (`Tag_id` DESC) USING BTREE,
  KEY `FK_Encargado_Tags_Tag_id` (`Tag_id`),
  CONSTRAINT `FK_Encargado_Domicilio_idDomicilio` FOREIGN KEY (`idDomicilio`) REFERENCES `domicilio` (`id`),
  CONSTRAINT `FK_Encargado_Tags_Tag_id` FOREIGN KEY (`Tag_id`) REFERENCES `tags` (`id`),
  CONSTRAINT `FK_Encargado_TipoDocumento_idTipoDoc` FOREIGN KEY (`idTipoDoc`) REFERENCES `tipodocumento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encargado`
--

LOCK TABLES `encargado` WRITE;
/*!40000 ALTER TABLE `encargado` DISABLE KEYS */;
INSERT INTO `encargado` VALUES (1,'Juan','Gutierrez','351503140','351503140','juangutierrez@gmail.com',2,'23423234',1,'0001-01-01 00:00:00',NULL,'Activo',NULL),(2,'Javier','Pietro','343242242','343242242','javierpietro@gmail.com',2,'43232323',1,'0001-01-01 00:00:00',NULL,'Activo',NULL),(3,'Emanuel Alejo','Lopez','351574576','351574576','emanuel@gmail',1,'28907654',2,'2019-08-17 20:25:33',NULL,'Activo',NULL),(4,'Pedro','Rogel','46987213','35146895236','pedrorogel@gmail.com',1,'13549268',11,'2019-08-27 19:10:29',NULL,'Activo',NULL),(5,'Anita','Gorena','482168435','3515421608','anitag@hotmail.com',1,'30468921',12,'2019-08-27 19:12:20',NULL,'Activo',NULL),(6,'Claudia','Rodríiguez','4513705','3517468513','claurodri@gmail.com',1,'15789463',13,'2019-08-27 19:16:43',NULL,'Activo',NULL),(7,'Laura','Menso','46987542','3519648216','laumenso@gmail.com',1,'24876130',14,'2019-08-27 19:18:21',NULL,'Activo',NULL),(8,'Ramiro','Chiesa','4257498','3516034872','ramichiesa@gmail.com',1,'17489310',15,'2019-08-27 20:37:01',NULL,'Activo',NULL),(9,'Cecilia','Bereta','4612548','3513498103','ceciliab@gmail.com',1,'19751206',16,'2019-08-27 20:45:26',NULL,'Activo',NULL),(10,'Candelaria','Martina','4598112','3514557891','candemartina@gmail.com',1,'35012479',17,'2019-08-27 20:46:47',NULL,'Activo',NULL);
/*!40000 ALTER TABLE `encargado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `espaciocomun`
--

DROP TABLE IF EXISTS `espaciocomun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `espaciocomun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `descripcion` longtext,
  `capacidad` int(11) NOT NULL,
  `idTipoEspacio` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  `fechaBaja` datetime DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_idTipoEspacio` (`idTipoEspacio` DESC) USING BTREE,
  KEY `FK_EspacioComun_TipoEspacio_idTipoEspacio` (`idTipoEspacio`),
  CONSTRAINT `FK_EspacioComun_TipoEspacio_idTipoEspacio` FOREIGN KEY (`idTipoEspacio`) REFERENCES `tipoespacio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `espaciocomun`
--

LOCK TABLES `espaciocomun` WRITE;
/*!40000 ALTER TABLE `espaciocomun` DISABLE KEYS */;
INSERT INTO `espaciocomun` VALUES (1,'Aula 205','Aula con buen espacio y equipamiento.',20,1,0,'2019-10-06 15:41:24',NULL,NULL),(2,'Aula 207','Aula Mayormente equipada para las expresiones artísticas',15,1,0,'2019-10-18 02:22:32',NULL,NULL),(3,'SUM','Espacio al aire libre',200,4,0,'2019-10-18 02:23:09',NULL,NULL),(4,'Aula computacion','Es un aula destinada para el uso de PCs',18,1,0,'2019-11-11 03:02:20',NULL,NULL),(5,'Aula espacio libre','Es un aula con gran espacio libre',30,1,0,'2019-11-11 03:04:00',NULL,NULL),(6,'Aula 209','Aula',20,1,0,'2019-11-11 03:04:43',NULL,NULL);
/*!40000 ALTER TABLE `espaciocomun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `evento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `descripcion` longtext,
  `idTipoEvento` int(11) NOT NULL,
  `idEspacio` int(11) NOT NULL,
  `idEncargado` int(11) NOT NULL,
  `cupoMinimo` int(11) NOT NULL,
  `cupoMaximo` int(11) NOT NULL,
  `gratuito` tinyint(1) NOT NULL,
  `monto` float NOT NULL,
  `cantidadCuota` int(11) NOT NULL,
  `fechaDesde` datetime NOT NULL,
  `fechaHasta` datetime NOT NULL,
  `fechaDesdeInscripcion` datetime NOT NULL,
  `fechaHastaInscripcion` datetime NOT NULL,
  `estado` longtext,
  `fechaCreacion` datetime NOT NULL,
  `fechaBaja` datetime DEFAULT NULL,
  `estadoDeudores` longtext,
  PRIMARY KEY (`id`),
  KEY `IX_idTipoEvento` (`idTipoEvento` DESC) USING BTREE,
  KEY `IX_idEspacio` (`idEspacio` DESC) USING BTREE,
  KEY `IX_idEncargado` (`idEncargado` DESC) USING BTREE,
  KEY `FK_Evento_EspacioComun_idEspacio` (`idEspacio`),
  KEY `FK_Evento_Encargado_idEncargado` (`idEncargado`),
  KEY `FK_Evento_TipoEvento_idTipoEvento` (`idTipoEvento`),
  CONSTRAINT `FK_Evento_Encargado_idEncargado` FOREIGN KEY (`idEncargado`) REFERENCES `encargado` (`id`),
  CONSTRAINT `FK_Evento_EspacioComun_idEspacio` FOREIGN KEY (`idEspacio`) REFERENCES `espaciocomun` (`id`),
  CONSTRAINT `FK_Evento_TipoEvento_idTipoEvento` FOREIGN KEY (`idTipoEvento`) REFERENCES `tipoevento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
INSERT INTO `evento` VALUES (1,'Taller de costura','Taller donde se aprenderán distintas técnicas de costura',2,1,1,5,20,0,1200,3,'2019-10-11 00:00:00','2019-11-07 00:00:00','2019-10-06 00:00:00','2019-10-10 00:00:00','Finalizado','2019-10-06 15:45:22',NULL,'PAGO'),(2,NULL,'Se enseña a pintar con diferentes técnicas sobre tela en óleo.',2,1,1,5,20,0,1300,4,'2019-10-15 00:00:00','2019-10-30 00:00:00','2019-10-13 00:00:00','2019-10-18 00:00:00','Finalizado','2019-10-13 23:53:46',NULL,'PAGO'),(3,'Curso Office Word','Se dictará un curso para aprender a usar el Word',1,1,3,5,20,0,1800,3,'2019-10-22 00:00:00','2019-11-28 00:00:00','2019-10-16 00:00:00','2019-10-23 00:00:00','Finalizado','2019-10-16 23:48:49',NULL,'PAGO'),(4,NULL,'Campaña para vacunar a menores de edad',4,1,3,5,20,1,0,0,'2019-10-21 00:00:00','2019-10-21 00:00:00','2019-10-18 00:00:00','2019-10-20 00:00:00','Finalizado','2019-10-18 01:56:56',NULL,'ADEUDADO'),(5,'Baile de salsa','Aprender a bailar salsa.',6,2,1,5,15,0,1500,3,'2019-10-30 00:00:00','2019-12-18 00:00:00','2019-10-28 00:00:00','2019-11-05 00:00:00','Progreso','2019-10-27 16:26:33',NULL,'ADEUDADO'),(6,'Yoga ','Aprenderemos a relajarnos haciendo yoga.',2,2,1,4,14,0,2000,2,'2019-11-06 00:00:00','2019-12-23 00:00:00','2019-10-27 00:00:00','2019-11-05 00:00:00','Progreso','2019-10-27 16:35:47',NULL,'ADEUDADO'),(7,'Seminario Fertilidad','Se hablará sobre la fertilidad y se derribarán mitos.',3,3,3,5,25,1,0,0,'2019-10-28 00:00:00','2019-10-28 00:00:00','2019-10-27 00:00:00','2019-10-28 00:00:00','Finalizado','2019-10-27 18:01:03',NULL,'ADEUDADO'),(8,'Taller de stretching','Es un taller de estiramiento para aprender diferentes técnicas',2,2,1,5,15,0,1500,3,'2019-10-31 00:00:00','2019-11-20 00:00:00','2019-10-28 00:00:00','2019-10-31 00:00:00','Cancelado','2019-10-28 19:32:47','2019-11-02 23:31:37','ADEUDADO'),(9,NULL,'Aprenderemos distintas técnicas para meditar',1,2,1,5,10,0,2000,4,'2019-11-08 00:00:00','2019-12-13 00:00:00','2019-11-03 00:00:00','2019-11-12 00:00:00','Progreso','2019-11-03 15:08:52',NULL,'ADEUDADO'),(10,'Curso excel avanzado','Se aprenderán funciones avanzadas de excel',1,2,1,5,15,0,3000,3,'2019-11-21 00:00:00','2019-12-20 00:00:00','2019-11-08 00:00:00','2019-11-20 00:00:00','Progreso','2019-11-08 20:14:47',NULL,'ADEUDADO'),(11,'CORTE Y CONFECCION','Es un taller para aprender a realizar corte y confección',2,5,3,5,25,0,2000,2,'2019-11-13 00:00:00','2019-12-16 00:00:00','2019-11-11 00:00:00','2019-11-19 00:00:00','Progreso','2019-11-11 03:10:38',NULL,'ADEUDADO'),(12,'GUITARRA Y CANTO','Se aprenderá a tocar la guitarra y acompañar con el canto',2,6,2,5,20,0,3000,3,'2019-11-28 00:00:00','2019-12-26 00:00:00','2019-11-14 00:00:00','2019-11-27 00:00:00','Progreso','2019-11-14 16:00:44',NULL,'ADEUDADO'),(13,NULL,'Se formará al alumno para que cuente con las habilidades correspondientes',1,6,2,5,20,0,5000,2,'2019-11-25 00:00:00','2019-12-24 00:00:00','2019-11-15 00:00:00','2019-11-22 00:00:00','Progreso','2019-11-15 03:17:16',NULL,'ADEUDADO'),(14,NULL,'Aprenderemos a hacer macetas de barro',2,6,1,6,18,0,1500,3,'2019-09-09 00:00:00','2019-12-20 00:00:00','2019-08-28 00:00:00','2019-09-16 00:00:00','Progreso','2019-08-27 19:06:47',NULL,'ADEUDADO'),(15,NULL,'Nivel inicial de inglés británico',1,2,4,10,15,0,4000,2,'2019-09-23 00:00:00','2019-12-13 00:00:00','2019-08-27 00:00:00','2019-09-13 00:00:00','Progreso','2019-08-27 19:24:24',NULL,'ADEUDADO'),(16,'Danza 2019','Presentación de fin de año de la academia de baile Alma Brava',3,3,7,20,200,0,600,1,'2019-12-14 00:00:00','2019-12-14 00:00:00','2019-09-02 00:00:00','2019-12-06 00:00:00','Nuevo','2019-08-27 19:27:22',NULL,'ADEUDADO'),(17,NULL,'Enseñamos a realizar el autocontrol de nuestro cuerpo. Charlas con sobrevivientes',4,5,6,2,20,1,0,0,'2019-10-03 00:00:00','2019-10-03 00:00:00','2019-09-01 00:00:00','2019-09-30 00:00:00','Finalizado','2019-08-27 19:33:43',NULL,'ADEUDADO'),(18,NULL,'En el día internacional del VIH enseñaremos a prevenir esta enfermedad y otras ITS',4,5,2,2,30,1,0,0,'2019-12-01 00:00:00','2019-12-01 00:00:00','2019-11-01 00:00:00','2019-11-30 00:00:00','Finalizado','2019-08-27 19:36:59',NULL,'ADEUDADO'),(19,'RCP','Aprendemos las técnicas para realizar RCP',2,6,4,2,20,1,0,0,'2019-09-18 00:00:00','2019-09-18 00:00:00','2019-09-01 00:00:00','2019-09-17 00:00:00','Finalizado','2019-08-27 19:40:00',NULL,'ADEUDADO'),(20,NULL,'Nivel intermedio de inglés británico',1,2,5,2,15,0,2000,2,'2019-09-09 00:00:00','2019-11-29 00:00:00','2019-08-28 00:00:00','2019-09-16 00:00:00','Finalizado','2019-08-27 19:41:53',NULL,'ADEUDADO'),(21,NULL,'Curso inicial de portugués brasilero',1,2,6,2,15,0,2000,2,'2019-09-09 00:00:00','2019-11-22 00:00:00','2019-08-28 00:00:00','2019-09-16 00:00:00','Finalizado','2019-08-27 19:43:25',NULL,'ADEUDADO'),(22,NULL,'Nivel intermedio del idioma brasilero',1,2,3,2,15,0,2000,2,'2019-09-09 00:00:00','2019-11-22 00:00:00','2019-08-28 00:00:00','2019-09-16 00:00:00','Finalizado','2019-08-27 19:45:00',NULL,'ADEUDADO'),(23,NULL,'Detalles a tener en cuenta a la hora de realizar navegar por internet',3,4,4,2,18,0,300,1,'2019-10-17 00:00:00','2019-10-17 00:00:00','2019-09-01 00:00:00','2019-10-16 00:00:00','Finalizado','2019-08-27 19:51:24',NULL,'ADEUDADO'),(24,'Bingo','Recolectamos dinero para la fundación con un bingo barrial',4,3,3,2,200,1,0,0,'2019-09-14 00:00:00','2019-09-14 00:00:00','2019-08-27 00:00:00','2019-09-13 00:00:00','Finalizado','2019-08-27 19:58:10',NULL,'ADEUDADO'),(25,NULL,'Bailamos folklore',6,3,6,2,200,1,0,0,'2019-10-12 00:00:00','2019-10-12 00:00:00','2019-09-01 00:00:00','2019-10-11 00:00:00','Finalizado','2019-08-27 19:59:46',NULL,'ADEUDADO'),(26,NULL,'Traemos a nuestros padres/abuelos para reunirnos con toda la familia',4,3,6,2,200,0,150,1,'2019-09-27 00:00:00','2019-09-27 00:00:00','2019-09-10 00:00:00','2019-09-10 00:00:00','Finalizado','2019-08-27 20:02:05',NULL,'ADEUDADO'),(27,'Concurso de deletreo','Competencia intercolegial',2,3,6,2,200,1,0,0,'2019-11-11 00:00:00','2019-11-11 00:00:00','2019-10-01 00:00:00','2019-11-10 00:00:00','Finalizado','2019-08-27 20:04:36',NULL,'ADEUDADO'),(28,'Literatura','Nos abrimos a través de la escritura',8,2,2,2,15,0,1200,2,'2019-10-01 00:00:00','2019-11-30 00:00:00','2019-09-01 00:00:00','2019-09-30 00:00:00','Finalizado','2019-08-27 20:07:15',NULL,'ADEUDADO'),(29,NULL,'Cuidados de las plantas',8,5,1,2,30,0,600,1,'2019-09-01 00:00:00','2019-09-21 00:00:00','2019-08-27 00:00:00','2019-09-01 00:00:00','Finalizado','2019-08-27 20:08:52',NULL,'ADEUDADO'),(30,'Cuidemos el ambiente','Se muestran diferentes prácticas para disminuir la basura',4,5,7,2,30,1,0,0,'2019-11-28 00:00:00','2019-11-28 00:00:00','2019-11-01 00:00:00','2019-11-27 00:00:00','Finalizado','2019-08-27 20:11:00',NULL,'ADEUDADO'),(31,'Navidad en familia','Invitamos a nuestros socios a traer a sus familias para compartir el brindis ',4,5,2,2,30,1,0,0,'2019-12-21 00:00:00','2019-12-21 00:00:00','2019-11-23 00:00:00','2019-12-20 00:00:00','Nuevo','2019-11-30 18:17:36',NULL,'ADEUDADO');
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horarios`
--

DROP TABLE IF EXISTS `horarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `horarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dia` longtext,
  `dayOfWeek` int(11) NOT NULL,
  `horaDesde` longtext,
  `horaHasta` longtext,
  `Evento_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_Evento_id` (`Evento_id` DESC) USING BTREE,
  KEY `FK_Horarios_Evento_Evento_id` (`Evento_id`),
  CONSTRAINT `FK_Horarios_Evento_Evento_id` FOREIGN KEY (`Evento_id`) REFERENCES `evento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horarios`
--

LOCK TABLES `horarios` WRITE;
/*!40000 ALTER TABLE `horarios` DISABLE KEYS */;
INSERT INTO `horarios` VALUES (1,'Lunes',1,'10:00','12:00',1),(2,'Miercoles',3,'12:00','14:00',1),(3,'Lunes',1,'14:00','16:00',2),(4,'Jueves',4,'14:00','16:00',2),(5,'Viernes',5,'16:00','18:00',3),(6,'Martes',2,'16:00','18:00',3),(7,'Lunes',1,'20:00','22:00',4),(8,'Lunes',1,'19:00','21:00',5),(9,'Viernes',5,'19:00','20:00',5),(10,'Martes',2,'14:00','16:00',6),(11,'Miercoles',3,'15:00','17:00',6),(12,'Lunes',1,'09:00','12:00',7),(13,'Lunes',1,'14:00','16:00',8),(14,'Miercoles',3,'16:00','18:00',8),(15,'Lunes',1,'10:00','12:00',9),(16,'Lunes',1,'14:00','16:00',9),(17,'Jueves',4,'16:00','20:00',10),(18,'Lunes',1,'19:00','21:00',11),(19,'Viernes',5,'19:00','21:00',11),(20,'Martes',2,'20:00','22:00',12),(21,'Jueves',4,'20:00','22:00',12),(22,'Martes',2,'09:00','12:00',13),(23,'Sabado',6,'09:00','12:00',13),(24,'Jueves',4,'15:00','16:30',14),(25,'Miercoles',3,'15:00','16:30',14),(26,'Lunes',1,'17:00','18:00',15),(27,'Viernes',5,'17:00','18:00',15),(28,'Sabado',6,'20:00','23:00',16),(29,'Jueves',4,'20:00','21:00',17),(30,'Domingo',0,'15:00','16:00',18),(31,'Miercoles',3,'10:00','11:00',19),(32,'Jueves',4,'12:00','13:00',20),(33,'Martes',2,'12:00','13:00',20),(34,'Martes',2,'10:00','11:00',21),(35,'Jueves',4,'10:00','11:00',21),(36,'Miercoles',3,'09:00','10:00',22),(37,'Viernes',5,'09:00','10:00',22),(38,'Jueves',4,'19:00','20:00',23),(39,'Sabado',6,'20:00','23:00',24),(40,'Sabado',6,'20:00','23:00',25),(41,'Sabado',6,'12:00','15:00',26),(42,'Lunes',1,'15:00','18:00',27),(43,'Jueves',4,'14:00','15:00',28),(44,'Martes',2,'15:00','16:00',29),(45,'Viernes',5,'16:00','17:00',29),(46,'Jueves',4,'15:00','18:00',30),(47,'Sabado',6,'20:00','22:00',31);
/*!40000 ALTER TABLE `horarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscripcion`
--

DROP TABLE IF EXISTS `inscripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `inscripcion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idEvento` int(11) NOT NULL,
  `idSocio` int(11) NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  `fechaBaja` datetime DEFAULT NULL,
  `estado` longtext,
  `estadoEncuesta` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_idEvento` (`idEvento` DESC) USING BTREE,
  KEY `IX_idSocio` (`idSocio` DESC) USING BTREE,
  KEY `FK_Inscripcion_Evento_idEvento` (`idEvento`),
  KEY `FK_Inscripcion_Socio_idSocio` (`idSocio`),
  CONSTRAINT `FK_Inscripcion_Evento_idEvento` FOREIGN KEY (`idEvento`) REFERENCES `evento` (`id`),
  CONSTRAINT `FK_Inscripcion_Socio_idSocio` FOREIGN KEY (`idSocio`) REFERENCES `socio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscripcion`
--

LOCK TABLES `inscripcion` WRITE;
/*!40000 ALTER TABLE `inscripcion` DISABLE KEYS */;
INSERT INTO `inscripcion` VALUES (5,1,1,'2019-10-06 16:05:03',NULL,'PAGADO',0),(6,1,2,'2019-10-07 00:26:18',NULL,'PAGADO',1),(7,1,3,'2019-10-07 00:26:46',NULL,'PAGADO',0),(8,1,10,'2019-10-07 00:26:46',NULL,'PAGADO',0),(14,2,11,'2019-10-13 23:54:58',NULL,'PAGADO',0),(15,2,4,'2019-10-13 23:54:58',NULL,'PAGADO',0),(16,2,1,'2019-10-13 23:54:58',NULL,'PAGADO',0),(17,4,2,'2019-10-18 02:25:15',NULL,'ADEUDADO',1),(18,3,2,'2019-10-18 02:45:16',NULL,'PAGADO',0),(19,7,1,'2019-10-27 18:01:46',NULL,'ADEUDADO',0),(20,7,2,'2019-10-27 18:01:46',NULL,'ADEUDADO',0),(21,7,4,'2019-10-27 18:01:46',NULL,'ADEUDADO',0),(22,7,3,'2019-10-27 18:01:46',NULL,'ADEUDADO',0),(23,5,2,'2019-10-27 20:49:57','2019-11-03 14:24:47','PAGADO',0),(24,5,1,'2019-10-28 17:56:55',NULL,'PAGADO',0),(25,8,2,'2019-10-28 19:33:41',NULL,'PAGADO',0),(26,8,1,'2019-10-28 19:33:41',NULL,'PAGADO',0),(27,8,11,'2019-10-28 19:33:41',NULL,'ADEUDADO',0),(28,5,14,'2019-10-30 02:43:23',NULL,'ADEUDADO',0),(29,5,4,'2019-11-03 02:30:00',NULL,'PAGADO',0),(30,5,11,'2019-11-03 02:30:00',NULL,'ADEUDADO',0),(31,6,2,'2019-11-03 14:19:34','2019-11-03 14:21:28','ADEUDADO',0),(32,6,4,'2019-11-03 14:19:34',NULL,'PAGADO',0),(33,6,1,'2019-11-03 14:19:34',NULL,'PAGADO',0),(34,6,11,'2019-11-03 14:21:08',NULL,'ADEUDADO',0),(35,9,1,'2019-11-06 21:57:27',NULL,'PAGADO',0),(36,9,3,'2019-11-06 21:57:27',NULL,'ADEUDADO',0),(37,9,15,'2019-11-06 21:57:27','2019-11-06 22:51:33','ADEUDADO',0),(38,9,12,'2019-11-06 21:57:27',NULL,'ADEUDADO',0),(39,9,10,'2019-11-06 21:57:28',NULL,'ADEUDADO',0),(40,9,2,'2019-11-06 21:57:28',NULL,'PAGADO',0),(41,9,4,'2019-11-06 21:57:28',NULL,'ADEUDADO',0),(42,10,3,'2019-11-10 22:06:37',NULL,'ADEUDADO',0),(43,10,11,'2019-11-10 22:06:39',NULL,'ADEUDADO',0),(44,10,15,'2019-11-10 22:06:40',NULL,'PAGADO',0),(45,10,1,'2019-11-10 22:06:41',NULL,'ADEUDADO',0),(46,10,4,'2019-11-10 22:06:41',NULL,'ADEUDADO',0),(47,11,2,'2019-11-13 00:34:54',NULL,'PAGADO',0),(48,11,10,'2019-11-13 00:34:54',NULL,'ADEUDADO',0),(49,11,4,'2019-11-13 00:34:54',NULL,'ADEUDADO',0),(50,11,15,'2019-11-13 00:34:54',NULL,'ADEUDADO',0),(51,11,1,'2019-11-13 00:34:54',NULL,'ADEUDADO',0),(52,12,4,'2019-11-15 03:13:11',NULL,'ADEUDADO',0),(53,12,13,'2019-11-15 03:13:11',NULL,'ADEUDADO',0),(54,12,1,'2019-11-15 03:13:11',NULL,'ADEUDADO',0),(55,12,2,'2019-11-15 03:13:11',NULL,'ADEUDADO',0),(56,12,11,'2019-11-15 03:13:11',NULL,'ADEUDADO',0),(57,13,3,'2019-11-17 19:26:35',NULL,'ADEUDADO',0),(58,13,11,'2019-11-17 19:26:35',NULL,'ADEUDADO',0),(59,13,2,'2019-11-17 19:26:35',NULL,'ADEUDADO',0),(60,13,12,'2019-11-17 19:26:35',NULL,'ADEUDADO',0),(61,13,15,'2019-11-17 19:26:36',NULL,'ADEUDADO',0),(62,13,1,'2019-11-17 19:26:36',NULL,'ADEUDADO',0),(63,12,14,'2019-11-26 02:48:10',NULL,'ADEUDADO',0),(64,12,12,'2019-11-26 03:13:57',NULL,'ADEUDADO',0),(65,12,15,'2019-11-26 03:15:34',NULL,'ADEUDADO',0);
/*!40000 ALTER TABLE `inscripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricula`
--

DROP TABLE IF EXISTS `matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `matricula` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anio` datetime NOT NULL,
  `valor` int(11) NOT NULL,
  `fechaVencimiento` datetime NOT NULL,
  `estado` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula`
--

LOCK TABLES `matricula` WRITE;
/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
INSERT INTO `matricula` VALUES (3,'2019-08-08 04:27:48',1200,'2019-12-31 00:00:00','Activa');
/*!40000 ALTER TABLE `matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matriculaxsocios`
--

DROP TABLE IF EXISTS `matriculaxsocios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `matriculaxsocios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idSocio` int(11) NOT NULL,
  `idMatricula` int(11) NOT NULL,
  `fechaPago` datetime NOT NULL,
  `pago` decimal(18,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_idSocio` (`idSocio` DESC) USING BTREE,
  KEY `IX_idMatricula` (`idMatricula` DESC) USING BTREE,
  KEY `FK_MatriculaXSocios_Matricula_idMatricula` (`idMatricula`),
  KEY `FK_MatriculaXSocios_Socio_idSocio` (`idSocio`),
  CONSTRAINT `FK_MatriculaXSocios_Matricula_idMatricula` FOREIGN KEY (`idMatricula`) REFERENCES `matricula` (`id`),
  CONSTRAINT `FK_MatriculaXSocios_Socio_idSocio` FOREIGN KEY (`idSocio`) REFERENCES `socio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matriculaxsocios`
--

LOCK TABLES `matriculaxsocios` WRITE;
/*!40000 ALTER TABLE `matriculaxsocios` DISABLE KEYS */;
INSERT INTO `matriculaxsocios` VALUES (1,2,3,'2019-09-17 01:01:47',1200.00),(2,3,3,'2019-09-17 01:02:19',1200.00),(3,12,3,'2019-10-27 18:02:57',1200.00),(4,13,3,'2019-10-27 21:10:41',1200.00),(5,11,3,'2019-10-28 19:38:21',1200.00),(6,14,3,'2019-11-01 18:34:29',1200.00),(7,15,3,'2019-11-06 23:08:32',1200.00),(8,16,3,'2019-11-06 23:25:21',1200.00),(9,18,3,'2019-11-07 00:32:47',1200.00),(10,10,3,'2019-11-26 03:27:00',1200.00),(11,56,3,'2019-11-30 17:19:56',1200.00),(12,19,3,'2019-11-30 17:20:02',1200.00),(13,27,3,'2019-11-30 17:20:16',1200.00),(14,4,3,'2019-11-30 17:21:16',1200.00),(15,21,3,'2019-11-30 17:21:19',1200.00),(16,24,3,'2019-11-30 17:21:22',1200.00),(17,73,3,'2019-11-30 17:42:03',1200.00),(18,165,3,'2019-11-30 17:42:23',1200.00),(19,74,3,'2019-11-30 17:42:37',1200.00),(20,89,3,'2019-11-30 17:42:44',1200.00),(21,164,3,'2019-11-30 17:43:10',1200.00),(22,75,3,'2019-11-30 17:43:27',1200.00),(23,32,3,'2019-11-30 17:43:31',1200.00),(24,28,3,'2019-11-30 17:44:35',1200.00),(25,34,3,'2019-11-30 17:44:45',1200.00),(26,66,3,'2019-11-30 17:44:57',1200.00),(27,35,3,'2019-11-30 17:45:08',1200.00),(28,23,3,'2019-11-30 17:45:29',1200.00),(29,82,3,'2019-11-30 17:45:35',1200.00),(30,36,3,'2019-11-30 17:45:39',1200.00),(31,69,3,'2019-11-30 17:45:44',1200.00),(32,163,3,'2019-11-30 17:45:52',1200.00),(33,161,3,'2019-11-30 17:46:01',1200.00),(34,160,3,'2019-11-30 17:46:23',1200.00),(35,155,3,'2019-11-30 17:46:40',1200.00),(36,29,3,'2019-11-30 17:46:44',1200.00),(37,162,3,'2019-11-30 17:46:49',1200.00),(38,159,3,'2019-11-30 17:46:53',1200.00),(39,157,3,'2019-11-30 17:47:13',1200.00),(40,37,3,'2019-11-30 17:47:17',1200.00),(41,156,3,'2019-11-30 17:47:25',1200.00),(42,87,3,'2019-11-30 17:50:03',1200.00),(43,154,3,'2019-11-30 17:50:09',1200.00),(44,152,3,'2019-11-30 17:50:13',1200.00),(45,86,3,'2019-11-30 17:51:04',1200.00),(46,153,3,'2019-11-30 17:51:14',1200.00),(47,158,3,'2019-11-30 17:51:28',1200.00),(48,151,3,'2019-11-30 17:51:33',1200.00),(49,150,3,'2019-11-30 17:51:38',1200.00),(50,149,3,'2019-11-30 17:51:42',1200.00),(51,148,3,'2019-11-30 17:51:48',1200.00),(52,147,3,'2019-11-30 17:51:52',1200.00),(53,146,3,'2019-11-30 17:51:56',1200.00),(54,145,3,'2019-11-30 17:52:00',1200.00),(55,144,3,'2019-11-30 17:52:05',1200.00),(56,39,3,'2019-11-30 17:55:27',1200.00),(57,41,3,'2019-11-30 17:55:31',1200.00),(58,42,3,'2019-11-30 17:55:35',1200.00),(59,40,3,'2019-11-30 17:56:26',1200.00),(60,80,3,'2019-11-30 17:56:31',1200.00),(61,95,3,'2019-11-30 17:56:54',1200.00),(62,94,3,'2019-11-30 17:57:02',1200.00),(63,142,3,'2019-11-30 17:57:08',1200.00),(64,143,3,'2019-11-30 17:57:13',1200.00),(65,141,3,'2019-11-30 17:57:22',1200.00),(66,20,3,'2019-11-30 17:57:40',1200.00),(67,140,3,'2019-11-30 17:57:47',1200.00),(68,139,3,'2019-11-30 17:57:53',1200.00),(69,138,3,'2019-11-30 17:57:58',1200.00),(70,45,3,'2019-11-30 17:58:40',1200.00),(71,137,3,'2019-11-30 17:58:45',1200.00),(72,136,3,'2019-11-30 17:58:52',1200.00),(73,135,3,'2019-11-30 17:58:57',1200.00),(74,134,3,'2019-11-30 17:59:01',1200.00),(75,133,3,'2019-11-30 17:59:32',1200.00),(76,132,3,'2019-11-30 17:59:36',1200.00),(77,131,3,'2019-11-30 18:00:24',1200.00),(78,130,3,'2019-11-30 18:00:29',1200.00),(79,129,3,'2019-11-30 18:00:34',1200.00),(80,128,3,'2019-11-30 18:00:38',1200.00),(81,127,3,'2019-11-30 18:00:45',1200.00),(82,126,3,'2019-11-30 18:00:55',1200.00),(83,125,3,'2019-11-30 18:01:05',1200.00),(84,124,3,'2019-11-30 18:01:16',1200.00),(85,123,3,'2019-11-30 18:01:23',1200.00),(86,122,3,'2019-11-30 18:01:34',1200.00),(87,121,3,'2019-11-30 18:01:39',1200.00),(88,120,3,'2019-11-30 18:01:45',1200.00),(89,119,3,'2019-11-30 18:01:51',1200.00),(90,118,3,'2019-11-30 18:02:05',1200.00),(91,117,3,'2019-11-30 18:02:43',1200.00),(92,116,3,'2019-11-30 18:02:50',1200.00),(93,99,3,'2019-11-30 18:02:57',1200.00),(94,115,3,'2019-11-30 18:04:32',1200.00),(95,114,3,'2019-11-30 18:04:37',1200.00),(96,113,3,'2019-11-30 18:05:01',1200.00),(97,112,3,'2019-11-30 18:05:24',1200.00),(98,111,3,'2019-11-30 18:05:30',1200.00),(99,110,3,'2019-11-30 18:05:35',1200.00),(100,46,3,'2019-11-30 18:05:39',1200.00);
/*!40000 ALTER TABLE `matriculaxsocios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago`
--

DROP TABLE IF EXISTS `pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `monto` float NOT NULL,
  `nroRecibo` int(11) NOT NULL,
  `idInscripcion` int(11) NOT NULL,
  `fechaCobro` datetime NOT NULL,
  `fechaBaja` datetime NOT NULL,
  `estaPagado` tinyint(1) NOT NULL,
  `idCuota` int(11) NOT NULL,
  `metodoPago` longtext,
  PRIMARY KEY (`id`),
  KEY `IX_idInscripcion` (`idInscripcion` DESC) USING BTREE,
  KEY `IX_idCuota` (`idCuota` DESC) USING BTREE,
  KEY `FK_Pago_Cuotas_idCuota` (`idCuota`),
  KEY `FK_Pago_Inscripcion_idInscripcion` (`idInscripcion`),
  CONSTRAINT `FK_Pago_Cuotas_idCuota` FOREIGN KEY (`idCuota`) REFERENCES `cuotas` (`id`),
  CONSTRAINT `FK_Pago_Inscripcion_idInscripcion` FOREIGN KEY (`idInscripcion`) REFERENCES `inscripcion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
INSERT INTO `pago` VALUES (5,'Cuota 1',400,0,5,'2019-10-07 00:27:11','0001-01-01 00:00:00',1,2,'Efectivo'),(6,'Cuota 2',400,0,5,'2019-10-07 00:27:27','0001-01-01 00:00:00',1,3,'Efectivo'),(7,'Cuota 3',400,0,5,'2019-10-18 02:08:43','0001-01-01 00:00:00',1,4,'Efectivo'),(8,'Cuota 1',400,10034,6,'2019-10-24 01:30:49','0001-01-01 00:00:00',1,2,'Efectivo'),(9,'Cuota 2',400,10034,6,'2019-10-24 01:32:02','0001-01-01 00:00:00',1,3,'Efectivo'),(10,'Cuota 3',400,10034,6,'2019-10-24 01:32:26','0001-01-01 00:00:00',1,4,'Efectivo'),(11,'Cuota 1',400,10066,7,'2019-11-05 02:25:01','0001-01-01 00:00:00',1,2,'Efectivo'),(12,'Cuota 2',400,10066,7,'2019-11-05 02:26:20','0001-01-01 00:00:00',1,3,'Efectivo'),(13,'Cuota 1',400,0,8,'2019-10-07 00:29:01','0001-01-01 00:00:00',1,2,'Efectivo'),(14,'Cuota 3',400,10066,7,'2019-11-06 16:28:14','0001-01-01 00:00:00',1,4,'Efectivo'),(15,'Cuota 2',400,10066,8,'2019-11-05 02:28:06','0001-01-01 00:00:00',1,3,'Efectivo'),(16,'Cuota 3',400,10066,8,'2019-11-05 03:04:58','0001-01-01 00:00:00',1,4,'Efectivo'),(20,'Cuota 1',325,10037,15,'2019-10-27 21:10:07','0001-01-01 00:00:00',1,5,'Efectivo'),(21,'Cuota 1',325,10094,14,'2019-11-08 22:51:37','0001-01-01 00:00:00',1,5,'Efectivo'),(22,'Cuota 2',325,10066,15,'2019-11-04 23:55:22','0001-01-01 00:00:00',1,6,'Efectivo'),(23,'Cuota 2',325,10094,14,'2019-11-08 22:52:40','0001-01-01 00:00:00',1,6,'Efectivo'),(24,'Cuota 3',325,10066,15,'2019-11-05 02:49:32','0001-01-01 00:00:00',1,7,'Efectivo'),(25,'Cuota 3',325,10094,14,'2019-11-08 22:52:52','0001-01-01 00:00:00',1,7,'Efectivo'),(26,'Cuota 4',325,10066,15,'2019-11-05 02:50:47','0001-01-01 00:00:00',1,8,'Efectivo'),(27,'Cuota 4',325,10094,14,'2019-11-08 22:53:49','0001-01-01 00:00:00',1,8,'Efectivo'),(28,'Cuota 1',325,10034,16,'2019-10-21 20:25:44','0001-01-01 00:00:00',1,7,'Efectivo'),(29,'Cuota 2',325,10066,16,'2019-11-05 01:57:19','0001-01-01 00:00:00',1,8,'Efectivo'),(30,'Cuota 3',325,10034,16,'2019-10-19 15:35:26','0001-01-01 00:00:00',1,5,'Efectivo'),(31,'Cuota 4',325,10066,16,'2019-11-05 01:59:37','0001-01-01 00:00:00',1,6,'Efectivo'),(32,'Cuota 1',600,10034,18,'2019-10-20 16:09:03','0001-01-01 00:00:00',1,10,'Efectivo'),(33,'Cuota 2',600,10034,18,'2019-10-20 16:09:10','0001-01-01 00:00:00',1,11,'Efectivo'),(34,'Cuota 3',600,10034,18,'2019-10-20 16:10:56','0001-01-01 00:00:00',1,9,'Efectivo'),(35,'Cuota 1',500,10040,23,'2019-10-28 17:57:46','0001-01-01 00:00:00',1,12,'Efectivo'),(36,'Cuota 2',500,10052,23,'2019-11-01 01:31:44','0001-01-01 00:00:00',1,13,'Efectivo'),(37,'Cuota 3',500,10052,23,'2019-11-01 01:26:19','0001-01-01 00:00:00',1,14,'Efectivo'),(38,'Cuota 1',500,10066,24,'2019-11-05 02:03:51','0001-01-01 00:00:00',1,12,'Efectivo'),(39,'Cuota 2',500,10066,24,'2019-11-05 02:08:30','0001-01-01 00:00:00',1,13,'Efectivo'),(40,'Cuota 3',500,10066,24,'2019-11-05 02:17:17','0001-01-01 00:00:00',1,14,'Efectivo'),(41,'Cuota 1',500,10049,25,'2019-10-28 19:34:35','0001-01-01 00:00:00',1,17,'Efectivo'),(42,'Cuota 2',500,10049,25,'2019-10-28 19:36:55','0001-01-01 00:00:00',1,18,'Efectivo'),(43,'Cuota 1',500,10066,26,'2019-11-05 00:40:08','0001-01-01 00:00:00',1,17,'Efectivo'),(44,'Cuota 3',500,10066,25,'2019-11-04 19:48:09','0001-01-01 00:00:00',1,19,'Efectivo'),(45,'Cuota 2',500,10066,26,'2019-11-05 02:18:43','0001-01-01 00:00:00',1,18,'Efectivo'),(46,'Cuota 3',500,10066,26,'2019-11-05 02:19:40','0001-01-01 00:00:00',1,19,'Efectivo'),(47,'Cuota 1',500,0,27,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,19,'Efectivo'),(48,'Cuota 2',500,0,27,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,17,'Efectivo'),(49,'Cuota 3',500,0,27,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,18,'Efectivo'),(50,'Cuota 1',500,0,28,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,14,'Efectivo'),(51,'Cuota 2',500,0,28,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,12,'Efectivo'),(52,'Cuota 3',500,0,28,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,13,'Efectivo'),(53,'Cuota 1',500,10066,29,'2019-11-05 03:08:01','0001-01-01 00:00:00',1,12,'Efectivo'),(54,'Cuota 1',500,0,30,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,12,'Efectivo'),(55,'Cuota 2',500,10066,29,'2019-11-05 03:08:13','0001-01-01 00:00:00',1,13,'Efectivo'),(56,'Cuota 2',500,0,30,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,13,'Efectivo'),(57,'Cuota 3',500,10066,29,'2019-11-05 03:12:31','0001-01-01 00:00:00',1,14,'Efectivo'),(58,'Cuota 3',500,0,30,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,14,'Efectivo'),(59,'Cuota 1',1000,10066,33,'2019-11-04 21:37:33','0001-01-01 00:00:00',1,15,'Efectivo'),(60,'Cuota 1',1000,0,31,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,15,'Efectivo'),(61,'Cuota 1',1000,10066,32,'2019-11-06 16:07:52','0001-01-01 00:00:00',1,15,'Efectivo'),(62,'Cuota 2',1000,10066,33,'2019-11-04 21:37:21','0001-01-01 00:00:00',1,16,'Efectivo'),(63,'Cuota 2',1000,10066,32,'2019-11-06 16:15:04','0001-01-01 00:00:00',1,16,'Efectivo'),(64,'Cuota 2',1000,0,31,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,16,'Efectivo'),(65,'Cuota 1',1000,0,34,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,15,'Efectivo'),(66,'Cuota 2',1000,0,34,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,16,'Efectivo'),(67,'Cuota 1',500,10094,35,'2019-11-10 21:50:49','0001-01-01 00:00:00',1,21,'Efectivo'),(68,'Cuota 1',500,10155,39,'2019-11-26 03:16:23','0001-01-01 00:00:00',1,21,'Efectivo'),(69,'Cuota 2',500,10094,35,'2019-11-10 21:58:01','0001-01-01 00:00:00',1,22,'Efectivo'),(70,'Cuota 2',500,0,39,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,22,'Efectivo'),(71,'Cuota 3',500,10155,35,'2019-11-26 03:22:26','0001-01-01 00:00:00',1,23,'Efectivo'),(72,'Cuota 1',500,10094,37,'2019-11-06 21:58:21','0001-01-01 00:00:00',1,21,'Efectivo'),(73,'Cuota 4',500,10155,35,'2019-11-26 03:22:33','0001-01-01 00:00:00',1,20,'Efectivo'),(74,'Cuota 1',500,0,38,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,21,'Efectivo'),(75,'Cuota 2',500,10094,37,'2019-11-06 22:37:13','0001-01-01 00:00:00',1,22,'Efectivo'),(76,'Cuota 3',500,0,39,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,23,'Efectivo'),(77,'Cuota 3',500,0,37,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,23,'Efectivo'),(78,'Cuota 1',500,0,36,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,21,'Efectivo'),(79,'Cuota 4',500,0,39,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,20,'Efectivo'),(80,'Cuota 2',500,0,38,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,22,'Efectivo'),(81,'Cuota 4',500,0,37,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,20,'Efectivo'),(82,'Cuota 3',500,0,38,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,23,'Efectivo'),(83,'Cuota 2',500,0,36,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,22,'Efectivo'),(84,'Cuota 4',500,0,38,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,20,'Efectivo'),(85,'Cuota 3',500,0,36,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,23,'Efectivo'),(86,'Cuota 4',500,0,36,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,20,'Efectivo'),(87,'Cuota 1',500,10094,40,'2019-11-07 00:34:48','0001-01-01 00:00:00',1,21,'Efectivo'),(88,'Cuota 2',500,10094,40,'2019-11-07 00:39:43','0001-01-01 00:00:00',1,22,'Efectivo'),(89,'Cuota 3',500,10094,40,'2019-11-07 00:41:43','0001-01-01 00:00:00',1,23,'Efectivo'),(90,'Cuota 4',500,10094,40,'2019-11-06 23:30:12','0001-01-01 00:00:00',1,20,'Tarjeta'),(91,'Cuota 1',500,0,41,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,20,'Efectivo'),(92,'Cuota 2',500,0,41,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,21,'Efectivo'),(93,'Cuota 3',500,0,41,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,22,'Efectivo'),(94,'Cuota 4',500,0,41,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,23,'Efectivo'),(95,'Cuota 1',1000,0,42,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,24,'Efectivo'),(96,'Cuota 2',1000,0,42,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,25,'Efectivo'),(97,'Cuota 3',1000,0,42,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,26,'Efectivo'),(98,'Cuota 1',1000,0,43,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,24,'Efectivo'),(99,'Cuota 2',1000,0,43,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,25,'Efectivo'),(100,'Cuota 3',1000,0,43,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,26,'Efectivo'),(101,'Cuota 1',1000,10119,44,'2019-11-13 02:15:02','0001-01-01 00:00:00',1,24,'Efectivo'),(102,'Cuota 2',1000,10119,44,'2019-11-13 02:15:09','0001-01-01 00:00:00',1,25,'Efectivo'),(103,'Cuota 3',1000,10146,44,'2019-11-17 19:27:28','0001-01-01 00:00:00',1,26,'Efectivo'),(104,'Cuota 1',1000,0,45,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,26,'Efectivo'),(105,'Cuota 2',1000,0,45,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,24,'Efectivo'),(106,'Cuota 3',1000,0,45,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,25,'Efectivo'),(107,'Cuota 1',1000,0,46,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,26,'Efectivo'),(108,'Cuota 2',1000,0,46,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,24,'Efectivo'),(109,'Cuota 3',1000,0,46,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,25,'Efectivo'),(110,'Cuota 1',1000,10119,47,'2019-11-14 02:02:22','0001-01-01 00:00:00',1,27,'Tarjeta'),(111,'Cuota 1',1000,0,48,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,27,'Efectivo'),(112,'Cuota 1',1000,0,49,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,27,'Efectivo'),(113,'Cuota 2',1000,0,49,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,28,'Efectivo'),(114,'Cuota 2',1000,10119,47,'2019-11-14 01:33:26','0001-01-01 00:00:00',1,28,'Tarjeta'),(115,'Cuota 2',1000,0,48,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,28,'Efectivo'),(116,'Cuota 1',1000,0,50,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,27,'Efectivo'),(117,'Cuota 2',1000,0,50,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,28,'Efectivo'),(118,'Cuota 1',1000,0,51,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,27,'Efectivo'),(119,'Cuota 2',1000,0,51,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,28,'Efectivo'),(120,'Cuota 1',1000,0,53,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,31,'Efectivo'),(121,'Cuota 1',1000,0,52,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,31,'Efectivo'),(122,'Cuota 2',1000,0,53,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,29,'Efectivo'),(123,'Cuota 2',1000,0,52,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,29,'Efectivo'),(124,'Cuota 3',1000,0,53,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,30,'Efectivo'),(125,'Cuota 3',1000,0,52,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,30,'Efectivo'),(126,'Cuota 1',1000,0,54,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,29,'Efectivo'),(127,'Cuota 2',1000,0,54,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,30,'Efectivo'),(128,'Cuota 1',1000,0,55,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,29,'Efectivo'),(129,'Cuota 3',1000,0,54,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,31,'Efectivo'),(130,'Cuota 2',1000,0,55,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,30,'Efectivo'),(131,'Cuota 3',1000,0,55,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,31,'Efectivo'),(132,'Cuota 1',1000,0,56,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,29,'Efectivo'),(133,'Cuota 2',1000,0,56,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,30,'Efectivo'),(134,'Cuota 3',1000,0,56,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,31,'Efectivo'),(135,'Cuota 1',2500,0,57,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,32,'Efectivo'),(136,'Cuota 2',2500,0,57,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,33,'Efectivo'),(137,'Cuota 1',2500,0,59,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,32,'Efectivo'),(138,'Cuota 2',2500,0,59,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,33,'Efectivo'),(139,'Cuota 1',2500,0,58,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,32,'Efectivo'),(140,'Cuota 2',2500,0,58,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,33,'Efectivo'),(141,'Cuota 1',2500,0,60,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,32,'Efectivo'),(142,'Cuota 2',2500,0,60,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,33,'Efectivo'),(143,'Cuota 1',2500,0,62,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,32,'Efectivo'),(144,'Cuota 1',2500,0,61,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,32,'Efectivo'),(145,'Cuota 2',2500,0,62,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,33,'Efectivo'),(146,'Cuota 2',2500,0,61,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,33,'Efectivo'),(147,'Cuota 1',1000,0,63,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,29,'Efectivo'),(148,'Cuota 2',1000,0,63,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,30,'Efectivo'),(149,'Cuota 3',1000,0,63,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,31,'Efectivo'),(150,'Cuota 1',1000,0,64,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,31,'Efectivo'),(151,'Cuota 2',1000,0,64,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,29,'Efectivo'),(152,'Cuota 3',1000,0,64,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,30,'Efectivo'),(153,'Cuota 1',1000,0,65,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,29,'Efectivo'),(154,'Cuota 2',1000,0,65,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,30,'Efectivo'),(155,'Cuota 3',1000,0,65,'0001-01-01 00:00:00','0001-01-01 00:00:00',0,31,'Efectivo');
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratingevento`
--

DROP TABLE IF EXISTS `ratingevento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ratingevento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ratingEvento` int(11) NOT NULL,
  `ratingContenido` int(11) NOT NULL,
  `ratingEncargado` int(11) NOT NULL,
  `textoDescripcion` longtext,
  `idEvento` int(11) NOT NULL,
  `idSocio` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_idEvento` (`idEvento` DESC) USING BTREE,
  KEY `IX_idSocio` (`idSocio` DESC) USING BTREE,
  KEY `FK_RatingEvento_Evento_idEvento` (`idEvento`),
  KEY `FK_RatingEvento_Socio_idSocio` (`idSocio`),
  CONSTRAINT `FK_RatingEvento_Evento_idEvento` FOREIGN KEY (`idEvento`) REFERENCES `evento` (`id`),
  CONSTRAINT `FK_RatingEvento_Socio_idSocio` FOREIGN KEY (`idSocio`) REFERENCES `socio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratingevento`
--

LOCK TABLES `ratingevento` WRITE;
/*!40000 ALTER TABLE `ratingevento` DISABLE KEYS */;
INSERT INTO `ratingevento` VALUES (2,3,2,4,'',4,2),(3,4,4,4,'',7,2),(4,4,3,4,'',4,2),(5,2,4,3,'',1,2),(6,5,4,4,'Buen Curso',2,1),(7,3,3,4,'Buen Curso',2,4),(8,3,4,3,'Buen Curso',2,11);
/*!40000 ALTER TABLE `ratingevento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recordatorios`
--

DROP TABLE IF EXISTS `recordatorios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `recordatorios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` longtext,
  `descripcion` longtext,
  `fechaRecordatorio` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recordatorios`
--

LOCK TABLES `recordatorios` WRITE;
/*!40000 ALTER TABLE `recordatorios` DISABLE KEYS */;
INSERT INTO `recordatorios` VALUES (2,'Dejar papeles al contador','Dejar papeles afip al contador','2019-07-30 05:29:11'),(3,'Avisar profesora computacion ','Llegada de nuevos mouses','2019-08-01 00:00:00'),(4,'Contadora','dasdas','2019-08-05 22:53:29');
/*!40000 ALTER TABLE `recordatorios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secretario`
--

DROP TABLE IF EXISTS `secretario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `secretario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `apellido` longtext,
  `telefono` longtext,
  `celular` longtext,
  `email` longtext,
  `sexo` longtext,
  `estadoCivil` longtext,
  `idTipoDoc` int(11) NOT NULL,
  `nroDocumento` longtext,
  `fechaNacimiento` datetime DEFAULT NULL,
  `fechaCreacion` datetime NOT NULL,
  `fechaBaja` datetime DEFAULT NULL,
  `estado` longtext,
  PRIMARY KEY (`id`),
  KEY `IX_idTipoDoc` (`idTipoDoc` DESC) USING BTREE,
  KEY `FK_Secretario_TipoDocumento_idTipoDoc` (`idTipoDoc`),
  CONSTRAINT `FK_Secretario_TipoDocumento_idTipoDoc` FOREIGN KEY (`idTipoDoc`) REFERENCES `tipodocumento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secretario`
--

LOCK TABLES `secretario` WRITE;
/*!40000 ALTER TABLE `secretario` DISABLE KEYS */;
INSERT INTO `secretario` VALUES (1,'jose','Jimenez','2312312','231312312','nose@gmail.com','MASCULINO','SOLTERO',1,'30822222','0001-01-01 00:00:00','0001-01-01 00:00:00','2019-08-16 03:19:58','ACTIVO'),(3,'Nelida','Gonzalez','',NULL,'nelida@gmail.com','Femenino','Soltero',1,'38907867',NULL,'2019-08-17 20:19:57',NULL,'Activo'),(4,'Romina','Gutierrez','3516943547','3516943547','rominaguitierrez@gmail.com','Femenino','Soltero',1,'26545072',NULL,'2019-11-15 20:58:00',NULL,'Activo'),(5,'Graciela','Sanchez','3516393547','3516393547','gragomez@gmail.com','Femenino','Soltero',1,'28899421',NULL,'2019-11-15 21:08:14',NULL,'Activo');
/*!40000 ALTER TABLE `secretario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socio`
--

DROP TABLE IF EXISTS `socio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `socio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `apellido` longtext,
  `telefono` longtext,
  `celular` longtext,
  `email` longtext,
  `sexo` longtext,
  `estadoCivil` longtext,
  `idTipoDoc` int(11) NOT NULL,
  `nroDocumento` longtext,
  `idDomicilio` int(11) NOT NULL,
  `idContacto` int(11) NOT NULL,
  `fechaNacimiento` datetime DEFAULT NULL,
  `fechaCreacion` datetime NOT NULL,
  `fechaBaja` datetime DEFAULT NULL,
  `estado` longtext,
  PRIMARY KEY (`id`),
  KEY `IX_idTipoDoc` (`idTipoDoc` DESC) USING BTREE,
  KEY `IX_idDomicilio` (`idDomicilio` DESC) USING BTREE,
  KEY `IX_idContacto` (`idContacto` DESC) USING BTREE,
  KEY `FK_Socio_Contacto_idContacto` (`idContacto`),
  KEY `FK_Socio_Domicilio_idDomicilio` (`idDomicilio`),
  KEY `FK_Socio_TipoDocumento_idTipoDoc` (`idTipoDoc`),
  CONSTRAINT `FK_Socio_Contacto_idContacto` FOREIGN KEY (`idContacto`) REFERENCES `contacto` (`id`),
  CONSTRAINT `FK_Socio_Domicilio_idDomicilio` FOREIGN KEY (`idDomicilio`) REFERENCES `domicilio` (`id`),
  CONSTRAINT `FK_Socio_TipoDocumento_idTipoDoc` FOREIGN KEY (`idTipoDoc`) REFERENCES `tipodocumento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socio`
--

LOCK TABLES `socio` WRITE;
/*!40000 ALTER TABLE `socio` DISABLE KEYS */;
INSERT INTO `socio` VALUES (1,'José','Quinteros','3543604130','3543604130','juanjose@gmail.com','Masculino','Soltero',1,'32972080',1,1,'1986-03-04 00:00:00','2019-11-10 14:52:06',NULL,'Activo'),(2,'AUGUSTO','Galan','3543604130','3543604130','juanjose@gmail.com','Masculino','Soltero',1,'32972081',1,1,'1960-11-06 00:00:00','2019-08-30 02:24:52',NULL,'Activo'),(3,'Laura','Miguez','3543604130','3543604130','laura1Miguez@gmail.com','Femenino','Casado',1,'30992080',1,1,'1950-11-06 00:00:00','2019-08-30 02:24:52',NULL,'Activo'),(4,'Maria','Del Valle','3543604132','3543604130','mariadelvalle@gmail.com','Femenino','Soltero',1,'40000001',1,1,'1976-03-04 00:00:00','2019-10-30 02:24:52',NULL,'Activo'),(10,'Jorge','galan','3543604130','3543604130','juanjose@gmail.com','Masculino','Casado',1,'40000002',1,1,'1960-03-04 00:00:00','2019-09-30 02:24:52',NULL,'Activo'),(11,'Soledad','Miguez','3543604130','3543604130','laura1Miguez@gmail.com','Femenino','Casado',1,'40000003',1,1,'1958-03-04 00:00:00','2019-09-30 02:24:52',NULL,'Activo'),(12,'Angélica','Valles','3543604132','3543604130','mariadelvalle@gmail.com','Femenino','Casado',1,'40000004',1,1,'1940-03-04 00:00:00','2019-09-30 02:24:52',NULL,'Activo'),(13,'Graciela María','Casartelli','03543403668','03543604130','gracielacasartelli946@hotmail.com','Femenino','Soltero',1,'30999888',3,2,'1950-07-03 01:12:28','2019-10-18 23:08:13',NULL,'Activo'),(14,'JAVIER','JIMENEZ','03543604130','3543604130','javierjimenez78@gmail.com','Masculino','Soltero',1,'30992080',5,4,'1946-03-04 00:00:00','2019-10-30 02:24:52',NULL,'Activo'),(15,'amelio','gutierrez','03543604130','3543604130','javierjimenez78@gmail.com','Masculino','Soltero',1,'32972080',6,5,'1987-05-14 00:00:00','2019-11-01 03:05:43',NULL,'Activo'),(16,'Julia','Agostini','03543604130','03543604130','javierjimenez78@gmail.com','Femenino','Soltero',1,'5489482',7,6,'1946-04-06 00:00:00','2019-11-06 23:10:16',NULL,'Activo'),(18,'alberto','JIMENEZ','03543604130','3543604130','javierjimenez78@gmail.com','Masculino','Soltero',1,'30999888',9,8,'1930-11-06 00:00:00','2019-11-06 23:24:46',NULL,'Activo'),(19,'JUANA','JUANA','03543604130','3543604130','javierjimenez78@gmail.com','Femenino','Soltero',1,'5498232',10,9,'1959-02-01 00:00:00','2019-11-07 01:32:33',NULL,'Activo'),(20,'LUCAS','GIORGIO','4875465','3534871950','lucasgiorgio@hotmail.com','Masculino','Soltero',1,'15789643',18,10,'1959-02-01 00:00:00','2019-05-27 20:51:02',NULL,'Activo'),(21,'JUAN','RICO','4685424','351748565','juanr@gmail.com','Masculino','Casado',1,'36487210',19,11,'1959-02-01 00:00:00','2019-06-07 20:53:58',NULL,'Activo'),(22,'CECILIA','LARRETA','4988764','3519745421','cecilialarreta@gmail.com','Femenino','Divorciado',1,'1546894',20,12,'1995-03-02 00:00:00','2019-06-15 20:56:03',NULL,'DebeMatricula'),(23,'LUCRECIA','PEREZ','4698794','3517984321','lucreperez@gmail.com','Femenino','Soltero',1,'15789465',21,13,'2019-08-07 00:00:00','2019-09-05 21:44:22',NULL,'Activo'),(24,'NATALIA','SONIA','4685795','35179462135','natisonia@gmail.com','Femenino','Casado',1,'4687652',22,14,'1985-05-02 00:00:00','2019-09-02 21:45:14',NULL,'Activo'),(25,'PAULA','PERALTA','4950187','3519784650','paulap@gmail.com','Femenino','Casado',1,'35798406',23,15,'1979-03-02 00:00:00','2019-09-04 21:48:08',NULL,'DebeMatricula'),(26,'LORENA','MORTERO','4685135','3517954320','loremorte@gmail.com','Masculino','Divorciado',1,'34879201',24,16,'1983-03-06 00:00:00','2019-09-03 21:50:22',NULL,'DebeMatricula'),(27,'ALBERTO','MACRI','4871546','351984065','albertomacri@gmail.com','Masculino','Divorciado',2,'15648987',25,17,'1993-01-09 00:00:00','2019-09-06 21:53:52',NULL,'Activo'),(28,'MELISA','SUAREZ','4146879','3517468216','melisasuarez@hotmail.com','Femenino','Casado',1,'15647798',26,18,'1989-04-11 00:00:00','2019-09-10 21:55:31',NULL,'Activo'),(29,'ROMINA','PEIRONE','4658795','351468720','romipeirone@gmail.com','Femenino','Casado',2,'465865',27,19,'1984-10-06 00:00:00','2019-09-05 21:56:34',NULL,'Activo'),(30,'PEDRO','ALASIA','4687510','3516520354','pedroalasia@hotmail.com','Masculino','Soltero',1,'34879562',28,20,'1992-08-17 00:00:00','2019-09-09 21:58:11',NULL,'DebeMatricula'),(31,'PATRICIO','LOPEZ','4687942','3514975462','plopez@gmail.com','Masculino','Soltero',1,'21468942',29,21,'1988-07-20 00:00:00','2019-08-27 21:59:35',NULL,'DebeMatricula'),(32,'ATILIO','CERBAN','48795116','351487005','aticerban@hotmail.com','Masculino','Casado',1,'28654465',30,22,'1990-05-16 00:00:00','2019-08-27 22:00:54',NULL,'Activo'),(33,'JOSEFINA','NATALONI','4687946','351746526','josefinanataloni@hotmail.com','Femenino','Soltero',2,'1564985',31,23,'1987-06-18 00:00:00','2019-10-05 22:02:12',NULL,'DebeMatricula'),(34,'BARBARA','LONGO','46798795','351679874','barbaralongo@hotmail.com','Masculino','Casado',1,'34549872',32,24,'1992-04-14 00:00:00','2019-09-16 22:03:07',NULL,'Activo'),(35,'AMANDA','LOPEZ','4784596','351478549','amilopez@gmail.com','Femenino','Soltero',1,'3516785',33,25,'1990-11-17 00:00:00','2019-09-13 22:04:38',NULL,'Activo'),(36,'JULIÁN','GARATE','4897654','351687965','juliangarate@gmail.com','Masculino','Viudo',1,'3541658',34,26,'1987-10-21 00:00:00','2019-09-17 22:06:50',NULL,'Activo'),(37,'ANA','ALASIA','46879456','3516498546','anaalasia@gmail.com','Femenino','Casado',1,'4657856',35,27,'1973-04-19 00:00:00','2019-09-17 22:07:47',NULL,'Activo'),(38,'MAFALDA','CERBAN','4659875','351754685','mafalda.cerban@gmail.com','Femenino','Casado',1,'4689756',36,28,'1977-03-17 00:00:00','2019-09-21 22:09:07',NULL,'DebeMatricula'),(39,'JULIETA','MERTA','4891602','3519468721','julimerta@hotmail.com','Femenino','Viudo',1,'26546897',37,29,'1971-06-16 00:00:00','2019-09-19 22:10:47',NULL,'Activo'),(40,'DIEGO','PEÑAS','46879654','351468749','diegopenas@gmail.com','Masculino','Soltero',1,'35487546',38,30,'1985-04-17 00:00:00','2019-09-21 22:13:49',NULL,'Activo'),(41,'MAXIMILIANO','CEBALLOS','46879465','3516498564','maxiceballos@gmaill.com','Masculino','Soltero',1,'468795',39,31,'1979-12-22 00:00:00','2019-09-23 22:16:13',NULL,'Activo'),(42,'MARTÍN','MASSIMINO','46598465','351649846','martin.massimino@gmail.com','Masculino','Divorciado',1,'3541655',40,32,'1983-08-20 00:00:00','2019-09-19 22:17:19',NULL,'Activo'),(43,'MARIELA','FALA','46879545','3516798465','mariela.fala@gmail.com','Femenino','Casado',1,'4612342',41,33,'1988-10-22 00:00:00','2019-09-23 22:18:24',NULL,'DebeMatricula'),(44,'NICOLÁS','FABIO','4697954','3516598798','nico.fabio@gmail.com','Masculino','Casado',1,'15486546',42,34,'1991-10-22 00:00:00','2019-09-20 22:19:31',NULL,'DebeMatricula'),(45,'VICTOR','PAREDES','4657986','3519795465','victor.paredes@gmail.com','Masculino','Casado',1,'16798465',43,35,'1984-08-18 00:00:00','2019-09-23 22:20:39',NULL,'Activo'),(46,'AGUSTINA','CARANDO','42165498','3516897965','agus.carando@gmail.com','Femenino','Soltero',2,'524154',44,36,'1994-12-18 00:00:00','2019-10-03 22:22:19',NULL,'Activo'),(47,'CAROLINA','CELESTE','468794646','3516879465','caro.celeste@hotmail.com','Femenino','Casado',1,'1654899',45,37,'1987-07-16 00:00:00','2019-09-30 22:23:29',NULL,'DebeMatricula'),(48,'SILVINA','ROA','46879462','3516549845','silvina.roa@gmail.com','Masculino','Casado',1,'24654986',46,38,'1984-09-14 00:00:00','2019-09-28 22:25:15',NULL,'DebeMatricula'),(49,'JUAN','BROCO','4659879','351654879','juanbroco','Masculino','Soltero',1,'4679546',47,39,'1984-07-10 00:00:00','2019-09-25 22:26:09',NULL,'DebeMatricula'),(50,'HUGO','FERNANDEZ','48712164','351986544','hugofernandez@gmail.com','Masculino','Casado',1,'29794216',48,40,'1986-12-09 00:00:00','2019-10-15 22:27:03',NULL,'DebeMatricula'),(51,'SANTIAGO','MARTINEZ','46987542','351687546546','santiagomartinez@gmail.com','Masculino','Soltero',1,'14789465',49,41,'1985-11-25 00:00:00','2019-09-26 05:30:31',NULL,'DebeMatricula'),(52,'LOURDES','RAMIREZ','46879723','3516795465','luliramirez@gmail.com','Masculino','Casado',1,'32514685',50,42,'1989-09-22 00:00:00','2019-10-29 05:32:58',NULL,'DebeMatricula'),(53,'FLORENCIA','FALAPPA','48781568','3517450165','flor.fala@gmail.com','Femenino','Soltero',1,'33468100',51,43,'1985-12-16 00:00:00','2019-10-06 05:34:42',NULL,'DebeMatricula'),(54,'PAMELA','COLMENA','48795421','3519754063','pamelacolme@gmail.com','Femenino','Casado',1,'12487952',52,44,'1989-06-12 00:00:00','2019-10-19 05:37:26',NULL,'DebeMatricula'),(55,'AMANDA','MANSO','48542168','3517142165','amimanso@gmail.com','Femenino','Soltero',1,'2342565',53,45,'1994-04-08 00:00:00','2019-12-01 05:39:34',NULL,'DebeMatricula'),(56,'FEDERICO','RUBIO','4903546','3514645987','federubio@hotmail.com','Masculino','Viudo',1,'16481359',54,46,'1989-01-05 00:00:00','2019-11-09 05:41:54',NULL,'Activo'),(57,'AGUSTÍN','LORENZO','4175498','3516984021','agustinlorenzo@gmail.com','Masculino','Casado',1,'26445465',55,47,'1986-07-03 00:00:00','2019-10-05 05:43:09',NULL,'DebeMatricula'),(58,'GASTÓN','LOSSIO','4152546','353462106','gastilossio@hotmail.com','N/C','Casado',1,'15468510',56,48,'2000-12-02 00:00:00','2019-10-25 05:45:18',NULL,'DebeMatricula'),(59,'CLAUDIA','CHARO','4621065','351649874','claucharo@gmail.com','Femenino','Divorciado',1,'15465879',57,49,'1972-04-01 00:00:00','2019-11-11 05:49:51',NULL,'DebeMatricula'),(60,'ENZO','PORTA','4510236','3514845016','enzoporta@hotmail.com','Masculino','Divorciado',1,'35456872',58,50,'1974-09-09 00:00:00','2019-10-28 05:51:34',NULL,'DebeMatricula'),(61,'LUCIANA','MENSO','4578913','3514652003','lumenso@gmail.com','Femenino','Soltero',1,'2342455',59,51,'1983-09-10 00:00:00','2019-11-07 05:53:10',NULL,'DebeMatricula'),(62,'JUAN','ROCCO','4125498','3516841302','juanrocco@gmail.com','Masculino','Casado',1,'3541569',60,52,'1972-12-11 00:00:00','2019-10-19 05:55:01',NULL,'DebeMatricula'),(63,'TOMÁS','GOTTARDI','4512068','3517421051','tomigot@gmail.com','Masculino','Casado',1,'21546852',61,53,'1978-10-13 00:00:00','2019-11-03 05:56:48',NULL,'DebeMatricula'),(64,'NATALIA','NATALIA','4621654','351321658','nati.perez@gmail.com','Masculino','Soltero',1,'4513549',62,54,'1988-02-27 00:00:00','2019-11-30 13:00:15',NULL,'DebeMatricula'),(65,'PABLO','PABLO','4561658','351687546','pablolammel@gmail.com','Masculino','Casado',1,'15465897',63,55,'1980-08-23 00:00:00','2019-11-30 13:01:20',NULL,'DebeMatricula'),(66,'Juliet','Abbott','4487861','3512590183','dui@egetlacus.edu','Masculino','Casado',1,'10621328',1,1,'1958-11-02 03:58:27','2018-05-05 20:54:54','1958-11-02 03:58:27','Activo'),(67,'Jerry','Soto','4941846','3515305542','adipiscing.elit@ametlorem.ca','Masculino','Casado',1,'26612917',1,1,'1951-06-20 23:31:46','2016-05-13 23:26:40','1958-11-02 03:58:28','DebeMatricula'),(68,'Colette','Steele','4078868','3516667075','Nulla.facilisis@luctusipsumleo.edu','Masculino','Casado',1,'25832942',1,1,'1982-12-02 12:36:45','2016-01-18 08:27:16','1958-11-02 03:58:29','DebeMatricula'),(69,'Zenia','Fowler','4124759','3512395975','dolor@Seddiam.net','Masculino','Casado',1,'16199219',1,1,'1995-12-31 23:17:47','2016-03-18 18:09:30','1958-11-02 03:58:30','Activo'),(70,'Gil','Ross','4058674','3515468336','Cras.eu.tellus@MorbivehiculaPellentesque.ca','Masculino','Casado',1,'31447702',1,1,'1946-11-18 01:29:23','2017-01-02 13:06:40','1958-11-02 03:58:31','DebeMatricula'),(71,'Zephr','Chapman','4429829','3519887985','luctus@perinceptos.org','Masculino','Casado',1,'42386425',1,1,'1977-11-07 01:37:37','2016-04-22 23:12:06','1958-11-02 03:58:32','DebeMatricula'),(72,'Winifred','Wright','4477581','3517803924','ornare.egestas.ligula@neceuismod.org','Masculino','Casado',1,'14533276',1,1,'1994-07-13 19:55:12','2018-05-18 21:29:23','1958-11-02 03:58:33','DebeMatricula'),(73,'Jaime','Hudson','4948792','3518465866','varius@musProinvel.edu','Masculino','Casado',1,'52771346',1,1,'1964-01-15 23:10:47','2018-11-18 03:48:33','1958-11-02 03:58:34','Activo'),(74,'Baxter','Sanford','4465201','3512429885','mi@aliquam.net','Masculino','Casado',1,'35917052',1,1,'1997-03-31 13:29:16','2016-12-15 14:27:29','1958-11-02 03:58:35','Activo'),(75,'Christopher','Lee','4726400','3511342555','enim.nec.tempus@Integer.edu','Masculino','Casado',1,'97010149',1,1,'1949-07-12 19:15:05','2018-03-12 00:23:53','1958-11-02 03:58:36','Activo'),(76,'Gannon','Valdez','4120683','3518844701','Aliquam@nec.co.uk','Femenino','Casado',1,'61842740',1,1,'1987-10-22 04:08:55','2016-11-09 09:26:29','1958-11-02 03:58:37','DebeMatricula'),(77,'Brent','Cantu','4570746','3513738437','ut.nulla.Cras@Nullamlobortis.com','Femenino','Casado',1,'77559971',1,1,'1943-05-16 21:19:46','2018-05-24 19:31:48','1958-11-02 03:58:38','DebeMatricula'),(78,'Adena','Stafford','4927352','3510448988','aliquet.odio@faucibus.net','Femenino','Casado',1,'71772046',1,1,'1974-02-01 05:58:15','2019-09-24 12:59:31','1958-11-02 03:58:39','DebeMatricula'),(79,'Gloria','Larsen','4313358','3512658792','scelerisque@maurisblandit.edu','Femenino','Casado',1,'33922681',1,1,'1953-02-05 06:16:39','2016-03-31 06:57:50','1958-11-02 03:58:40','DebeMatricula'),(80,'Vernon','Wall','4776850','3517010619','nunc@semper.net','Femenino','Casado',2,'98623396',1,1,'1957-09-11 10:16:14','2019-08-11 23:08:42','1958-11-02 03:58:41','Activo'),(81,'Tanya','Mcdaniel','4287252','3519232049','Vestibulum.ut.eros@loremvitaeodio.ca','Femenino','Casado',2,'56760008',1,1,'1982-12-13 17:21:19','2018-06-01 05:39:28','1958-11-02 03:58:42','DebeMatricula'),(82,'Britanni','Crawford','4889977','3512552342','facilisis.magna.tellus@laciniavitae.edu','Femenino','Casado',2,'57281409',1,1,'1994-01-08 16:05:52','2019-07-02 17:02:08','1958-11-02 03:58:43','Activo'),(83,'Cora','Mueller','4027676','3518203900','In.lorem.Donec@habitantmorbitristique.org','Femenino','Casado',2,'37110075',1,1,'1985-08-04 07:54:34','2016-08-01 21:15:30','1958-11-02 03:58:44','DebeMatricula'),(84,'Macaulay','Fulton','4391088','3510487042','blandit.viverra@non.net','Femenino','Casado',2,'21902046',1,1,'1951-05-13 17:18:12','2016-04-13 07:29:45','1958-11-02 03:58:45','DebeMatricula'),(85,'Honorato','Lynn','4587081','3514441961','nunc@volutpatNulladignissim.com','Femenino','Casado',2,'21642887',1,1,'1988-10-15 18:24:54','2016-03-27 15:23:31','1958-11-02 03:58:46','DebeMatricula'),(86,'Zorita','Jenkins','4878637','3510850145','Vestibulum.accumsan@Nullamutnisi.com','Masculino','Soltero',2,'92280093',1,1,'1948-09-01 20:02:48','2018-10-28 23:38:02','1958-11-02 03:58:47','Activo'),(87,'Gabriel','Newton','4440970','3519615927','ante@estmollis.ca','Masculino','Soltero',1,'78468190',1,1,'1951-10-28 03:10:01','2019-03-02 19:26:48','1958-11-02 03:58:48','Activo'),(88,'Brody','Boyd','4547118','3515108690','nulla@arcuVestibulumante.net','Masculino','Soltero',1,'53057548',1,1,'1982-10-26 02:19:26','2017-07-06 19:34:48','1958-11-02 03:58:49','DebeMatricula'),(89,'Karyn','Graham','4666927','3518495682','Integer.sem@vitaepurusgravida.ca','Masculino','Soltero',1,'58396023',1,1,'1960-01-12 21:28:17','2017-03-10 08:05:48','1958-11-02 03:58:50','Activo'),(90,'Gregory','Arnold','4871297','3514307184','ut.aliquam@non.edu','Masculino','Soltero',1,'11949534',1,1,'1996-01-31 08:52:41','2019-07-25 06:46:57','1958-11-02 03:58:51','DebeMatricula'),(91,'Abbot','Lee','4236022','3513050278','sed@fermentumconvallis.org','Masculino','Soltero',1,'46922235',1,1,'1980-09-29 06:27:16','2016-06-28 04:25:14','1958-11-02 03:58:52','DebeMatricula'),(92,'Harlan','Glenn','4388991','3513045891','diam@Aliquamornare.net','Masculino','Soltero',1,'57842118',1,1,'1968-10-28 02:20:02','2018-09-07 00:42:30','1958-11-02 03:58:53','DebeMatricula'),(93,'Erasmus','Rosales','4721663','3510850984','montes@Donecfelis.org','Masculino','Soltero',1,'98341346',1,1,'1996-07-25 02:47:37','2017-04-10 03:53:52','1958-11-02 03:58:54','DebeMatricula'),(94,'Arden','Riddle','4225191','3512074169','gravida@Suspendissealiquetmolestie.com','Masculino','Soltero',1,'41945464',1,1,'1988-04-16 18:46:44','2017-08-16 12:41:00','1958-11-02 03:58:55','Activo'),(95,'Hedley','Morton','4590926','3512304300','diam.dictum.sapien@Donecvitaeerat.edu','Masculino','Soltero',1,'41752854',1,1,'1952-10-19 00:21:32','2017-05-04 10:05:15','1958-11-02 03:58:56','Activo'),(96,'Rooney','Atkins','4832497','3511677345','Phasellus.elit@nisi.ca','Femenino','Soltero',1,'72498843',1,1,'1994-02-03 10:15:17','2017-10-19 20:43:10','1958-11-02 03:58:57','DebeMatricula'),(97,'Galvin','Hernandez','4709674','3519244551','dis@idenim.ca','Femenino','Soltero',1,'70822140',1,1,'1992-07-17 07:50:00','2018-06-18 06:07:27','1958-11-02 03:58:58','DebeMatricula'),(98,'Melanie','Holder','4430725','3511210790','Donec@odioa.net','Femenino','Soltero',1,'47465588',1,1,'1982-06-22 13:54:41','2018-09-05 15:43:05','1958-11-02 03:58:59','DebeMatricula'),(99,'Gisela','Meyers','4522550','3510333171','molestie.tortor.nibh@nonnisi.co.uk','Femenino','Soltero',1,'66939182',1,1,'1966-11-13 14:43:29','2016-03-16 14:24:14',NULL,'Activo'),(100,'Erasmus','Oneil','4914772','3518238759','pulvinar.arcu.et@scelerisquenequesed.com','Femenino','Soltero',1,'61515655',1,1,'1955-09-23 23:21:29','2018-08-01 10:50:34',NULL,'DebeMatricula'),(101,'Branden','Morgan','4677622','3510318590','Duis.dignissim.tempor@sedfacilisis.net','Femenino','Soltero',1,'35536430',1,1,'1959-03-04 14:30:46','2019-04-19 04:07:50',NULL,'DebeMatricula'),(102,'Daniel','Blankenship','4513971','3511662989','aliquet@varius.ca','Femenino','Soltero',1,'57614095',1,1,'1985-03-01 11:13:32','2018-03-11 20:45:16',NULL,'DebeMatricula'),(103,'Keiko','Burgess','4531712','3515365107','Quisque.imperdiet@urnasuscipit.co.uk','Femenino','Soltero',1,'84602070',1,1,'1951-04-18 23:37:21','2016-11-28 02:07:41',NULL,'DebeMatricula'),(104,'Ivy','Delaney','4338742','3516349765','lectus.quis.massa@rhoncusNullamvelit.com','Femenino','Soltero',1,'74900551',1,1,'1984-08-29 14:27:16','2017-07-16 14:07:43',NULL,'DebeMatricula'),(105,'Rosalyn','Horne','4485429','3515894704','ante.ipsum@Vestibulum.org','Femenino','Soltero',1,'80706893',1,1,'1998-06-04 17:35:51','2018-02-24 13:22:03',NULL,'DebeMatricula'),(106,'Blake','Burris','4989297','3517133235','litora@idante.org','Masculino','Soltero',1,'42441176',1,1,'1973-05-10 21:52:23','2017-10-06 08:39:44',NULL,'DebeMatricula'),(107,'Gretchen','Holmes','4336014','3518757466','Cum.sociis.natoque@SednequeSed.org','Masculino','Soltero',1,'70291041',1,1,'1985-02-09 19:00:06','2017-03-30 19:31:02',NULL,'DebeMatricula'),(108,'Giacomo','Kirk','4566386','3512958898','fames.ac@volutpatnuncsit.co.uk','Masculino','Soltero',1,'61671385',1,1,'1995-04-30 16:42:21','2017-08-11 01:12:20',NULL,'DebeMatricula'),(109,'MacKenzie','Lang','4547191','3519115124','id@tellusfaucibus.org','Masculino','Soltero',1,'59726925',1,1,'1980-02-06 13:43:22','2016-04-15 02:11:58',NULL,'DebeMatricula'),(110,'Katelyn','Tate','4315778','3517406572','nunc.sed.libero@Nulladignissim.co.uk','Masculino','Soltero',1,'42856449',1,1,'1972-04-28 01:12:40','2016-12-27 18:57:49',NULL,'Activo'),(111,'Norman','Acevedo','4853967','3513601321','Sed@elementumat.edu','Masculino','Soltero',1,'93349130',1,1,'1976-07-27 22:49:57','2018-03-01 13:04:08',NULL,'Activo'),(112,'Cyrus','Watts','4339134','3510357747','a.dui.Cras@a.ca','Masculino','Soltero',1,'80911833',1,1,'1989-08-23 07:21:22','2016-04-28 01:34:52',NULL,'Activo'),(113,'Kerry','Rollins','4775927','3516827365','Quisque@nec.co.uk','Masculino','Soltero',1,'34027065',1,1,'1996-08-31 18:02:40','2017-04-13 03:20:51',NULL,'Activo'),(114,'Libby','Curtis','4856215','3510751744','risus.Quisque.libero@parturientmontes.ca','Masculino','Soltero',1,'93636537',1,1,'1953-04-27 19:10:29','2019-07-15 00:51:57',NULL,'Activo'),(115,'Channing','Justice','4523559','3512785832','Sed@nonenim.com','Masculino','Soltero',1,'12956041',1,1,'1973-12-28 07:24:56','2019-10-24 08:40:52',NULL,'Activo'),(116,'Wylie','Cash','4494787','3512007420','orci.lobortis.augue@malesuadamalesuada.net','Femenino','Viudo',1,'10645390',1,1,'1978-09-28 16:34:33','2016-06-30 08:43:52',NULL,'Activo'),(117,'Avram','Simon','4257812','3510401363','dui.nec.tempus@vestibulum.edu','Femenino','Viudo',1,'32504338',1,1,'1945-05-01 15:23:03','2016-01-20 12:51:40',NULL,'Activo'),(118,'Driscoll','Kennedy','4984331','3518528380','facilisis.lorem@tempusrisus.co.uk','Femenino','Viudo',1,'92845665',1,1,'1969-10-17 10:53:08','2017-08-24 20:30:55',NULL,'Activo'),(119,'Nell','Wade','4946900','3516958862','vitae.semper.egestas@sit.com','Femenino','Viudo',1,'35949798',1,1,'1969-09-20 18:43:26','2018-10-26 16:14:47',NULL,'Activo'),(120,'Dolan','Thornton','4212135','3511969943','adipiscing.elit.Curabitur@estNunc.edu','Femenino','Viudo',1,'94966334',1,1,'1996-11-20 19:46:57','2019-07-12 15:53:17',NULL,'Activo'),(121,'Bryar','Carey','4972267','3512118158','at@egestasDuisac.edu','Femenino','Viudo',1,'80098590',1,1,'1962-04-07 10:23:02','2017-04-22 20:12:45',NULL,'Activo'),(122,'Kirk','Weiss','4094570','3515129200','sit@rutrum.edu','Femenino','Viudo',1,'42336214',1,1,'1969-12-31 07:44:31','2018-09-17 00:42:59',NULL,'Activo'),(123,'Hayley','Morales','4685056','3514551264','tincidunt.nibh.Phasellus@laoreet.org','Femenino','Viudo',1,'47902229',1,1,'1953-07-27 20:02:02','2018-05-13 07:40:40',NULL,'Activo'),(124,'Ulric','Blake','4263882','3519032671','diam@ipsum.ca','Femenino','Viudo',1,'43387646',1,1,'1964-12-13 23:33:12','2017-04-20 03:07:14',NULL,'Activo'),(125,'Michelle','Nixon','4196591','3514688917','adipiscing@nequenon.co.uk','Femenino','Viudo',1,'52555689',1,1,'1996-05-26 22:11:23','2016-03-04 18:46:40',NULL,'Activo'),(126,'Quyn','Wong','4546571','3514882031','nisl.arcu.iaculis@cursus.co.uk','Masculino','Viudo',1,'60613568',1,1,'1941-07-23 20:55:17','2017-05-28 05:18:36',NULL,'Activo'),(127,'Randall','Maddox','4582366','3518670452','magnis.dis.parturient@dapibusquamquis.edu','Masculino','Viudo',1,'28189446',1,1,'1944-09-20 19:16:34','2018-10-20 10:28:22',NULL,'Activo'),(128,'Henry','Hays','4142775','3510277628','primis.in.faucibus@senectus.edu','Masculino','Viudo',1,'95277175',1,1,'1942-06-15 23:50:22','2019-11-03 12:58:30',NULL,'Activo'),(129,'Cyrus','Ray','4818437','3515047976','erat.eget@dictumaugue.net','Masculino','Viudo',1,'98016536',1,1,'1963-04-19 10:41:53','2016-04-19 11:26:21',NULL,'Activo'),(130,'Perry','Aguilar','4160764','3516528036','mauris.sit.amet@purusMaecenaslibero.net','Masculino','Viudo',1,'42842502',1,1,'1994-09-13 06:01:24','2018-09-19 02:33:33',NULL,'Activo'),(131,'Rinah','Parsons','4754045','3512844468','natoque.penatibus@dolor.org','Masculino','Viudo',1,'50607551',1,1,'1949-04-26 07:32:41','2016-08-31 16:44:10',NULL,'Activo'),(132,'Arden','Mejia','4344568','3512728983','et.ultrices@aultriciesadipiscing.ca','Masculino','Viudo',1,'42682324',1,1,'1994-05-14 08:06:21','2016-12-27 14:33:36',NULL,'Activo'),(133,'Nora','Mclaughlin','4190103','3516067102','dolor.elit@tempor.ca','Masculino','Viudo',1,'55704667',1,1,'1974-02-16 03:23:45','2017-08-04 15:36:02',NULL,'Activo'),(134,'Ronan','Bernard','4115716','3519987313','ac@nuncinterdum.org','Masculino','Viudo',1,'17974818',1,1,'1990-06-13 14:57:34','2018-12-24 14:06:59',NULL,'Activo'),(135,'Alan','Hogan','4742114','3511398862','eget.mollis@convallisdolor.com','Masculino','Divorciado',1,'92420957',1,1,'1954-05-29 22:28:07','2016-05-18 16:32:21',NULL,'Activo'),(136,'Adele','Malone','4492049','3515225172','Quisque@euismodin.org','Femenino','Divorciado',1,'26403618',1,1,'1978-08-31 05:13:56','2017-02-18 22:46:08',NULL,'Activo'),(137,'Audra','Hopkins','4391267','3514140117','odio.Phasellus@Donecnon.org','Femenino','Divorciado',1,'89944029',1,1,'1950-01-05 08:40:32','2016-01-03 10:14:25',NULL,'Activo'),(138,'Yetta','Mcdowell','4951215','3515158411','consequat@sapien.com','Femenino','Divorciado',1,'93070975',1,1,'1961-12-28 09:53:03','2016-03-03 12:20:03',NULL,'Activo'),(139,'Garrett','Rollins','4471407','3513955214','Nullam.velit@Vivamus.edu','Femenino','Divorciado',1,'28167099',1,1,'1994-01-22 12:47:17','2019-03-31 18:53:22',NULL,'Activo'),(140,'Noelani','Weiss','4182923','3518496742','felis@dolor.net','Femenino','Divorciado',1,'71470296',1,1,'1951-11-08 15:18:21','2018-08-11 03:40:59',NULL,'Activo'),(141,'Latifah','Frost','4495217','3514753036','ultrices@acmattissemper.edu','Femenino','Divorciado',1,'59705878',1,1,'1966-03-04 16:40:39','2017-05-12 00:15:31',NULL,'Activo'),(142,'Rogan','Meyer','4022047','3511975470','Nulla.tincidunt@dui.com','Femenino','Divorciado',1,'92190432',1,1,'1984-11-13 11:43:53','2018-02-08 11:21:27',NULL,'Activo'),(143,'Malachi','Davis','4172085','3517277944','sagittis@portaelit.ca','Femenino','Divorciado',1,'11752231',1,1,'1983-09-03 02:35:02','2019-10-12 09:47:05',NULL,'Activo'),(144,'Jenette','Powell','4609603','3511327050','metus@nullaanteiaculis.co.uk','Femenino','Divorciado',1,'83894985',1,1,'1949-11-21 13:15:29','2018-03-18 14:33:13',NULL,'Activo'),(145,'Brianna','Cross','4834298','3511168507','et.magnis.dis@Nunccommodo.com','Femenino','Divorciado',1,'45921604',1,1,'1969-01-28 19:27:46','2018-05-26 09:21:07',NULL,'Activo'),(146,'Kay','Beach','4621448','3519470932','felis.orci@mauris.org','Masculino','Casado',1,'34062215',1,1,'1979-01-10 06:37:03','2016-07-04 15:19:19',NULL,'Activo'),(147,'Tara','Bishop','4275609','3515745362','dui@Maurisblanditenim.co.uk','Masculino','Casado',1,'30816496',1,1,'1972-11-19 22:51:39','2018-12-14 05:21:19',NULL,'Activo'),(148,'Britanney','Juarez','4793666','3515742963','vulputate.posuere.vulputate@accumsaninterdum.org','Masculino','Casado',1,'51728139',1,1,'1997-11-13 23:05:51','2018-10-18 05:21:05',NULL,'Activo'),(149,'Dawn','Valencia','4176645','3519996252','netus.et.malesuada@etnetus.com','Masculino','Casado',1,'36378683',1,1,'1970-12-06 14:26:59','2018-07-20 08:10:04',NULL,'Activo'),(150,'Hop','Stevenson','4129661','3511636111','neque.Sed.eget@tellusloremeu.org','Masculino','Casado',1,'71314336',1,1,'1982-03-27 22:18:43','2016-11-06 15:41:32',NULL,'Activo'),(151,'Cain','Edwards','4991243','3519375884','orci.lobortis@nonenimcommodo.org','Masculino','Casado',1,'13948111',1,1,'1961-05-24 20:44:59','2019-06-30 20:53:37',NULL,'Activo'),(152,'Ruby','Kirby','4693278','3519901730','erat.vitae@gravida.net','Masculino','Casado',1,'66976743',1,1,'1968-12-27 04:41:19','2016-05-17 21:13:51',NULL,'Activo'),(153,'Amery','Patel','4180397','3512203157','Nulla.facilisi.Sed@egestasrhoncusProin.net','Masculino','Casado',2,'11454140',1,1,'1979-08-12 19:56:40','2019-10-21 19:26:16',NULL,'Activo'),(154,'Dacey','Maldonado','4158085','3518941960','vel.convallis@eleifend.org','Masculino','Casado',2,'58034444',1,1,'1978-07-12 09:31:10','2019-08-03 15:08:54',NULL,'Activo'),(155,'Jennifer','Mendez','4253208','3517680152','vehicula@imperdieteratnonummy.co.uk','Masculino','Casado',2,'81525098',1,1,'1980-12-01 09:07:42','2016-09-27 11:39:05',NULL,'Activo'),(156,'Rama','Carlson','4278283','3510825966','a.scelerisque@utipsum.net','Femenino','Casado',2,'98931308',1,1,'1985-07-05 08:54:04','2018-05-03 05:38:37',NULL,'Activo'),(157,'Wang','Zimmerman','4933365','3513422883','ipsum.primis.in@etmagna.org','Femenino','Casado',1,'26699823',1,1,'1982-05-08 14:32:42','2018-05-03 08:50:01',NULL,'Activo'),(158,'Zia','Nichols','4136103','3514992430','eget.ipsum@Etiamligulatortor.co.uk','Femenino','Casado',1,'71927540',1,1,'1994-07-10 18:13:29','2018-02-28 06:20:04',NULL,'Activo'),(159,'Hop','Stafford','4174845','3514736422','lacus@estacmattis.co.uk','Femenino','Casado',1,'32196888',1,1,'1943-04-13 21:26:17','2017-03-10 15:16:39',NULL,'Activo'),(160,'Kareem','Allison','4152819','3518672238','et@malesuadamalesuada.net','Femenino','Casado',1,'18335691',1,1,'1941-10-24 11:23:36','2018-03-04 10:01:53',NULL,'Activo'),(161,'Austin','Santana','4974899','3514672390','pede@estcongue.net','Femenino','Casado',1,'84479165',1,1,'1975-12-18 17:28:06','2017-03-25 04:07:15',NULL,'Activo'),(162,'Brady','Nash','4307944','3511225033','lorem@Cras.org','Femenino','Casado',1,'12012873',1,1,'1987-07-19 04:48:11','2018-06-26 06:35:16',NULL,'Activo'),(163,'Kylie','Kirk','4926846','3514982355','nec.eleifend.non@Curabiturutodio.edu','Femenino','Casado',1,'56192790',1,1,'1991-12-01 08:32:12','2017-01-09 03:28:15',NULL,'Activo'),(164,'Melissa','Farley','4212809','3515548024','adipiscing@eu.edu','Femenino','Casado',1,'14190917',1,1,'1970-07-02 18:55:19','2018-07-23 09:16:32',NULL,'Activo'),(165,'Bertha','Diaz','4271787','3517975901','lacus.varius@nonegestas.net','Femenino','Casado',1,'81738321',1,1,'1955-11-19 22:54:36','2017-11-10 09:39:45',NULL,'Activo');
/*!40000 ALTER TABLE `socio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sociotags`
--

DROP TABLE IF EXISTS `sociotags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sociotags` (
  `Socio_id` int(11) NOT NULL,
  `Tag_id` int(11) NOT NULL,
  PRIMARY KEY (`Socio_id`,`Tag_id`),
  KEY `IX_Socio_id` (`Socio_id` DESC) USING BTREE,
  KEY `IX_Tag_id` (`Tag_id` DESC) USING BTREE,
  KEY `FK_SocioTags_Tags_Tag_id` (`Tag_id`),
  CONSTRAINT `FK_SocioTags_Socio_Socio_id` FOREIGN KEY (`Socio_id`) REFERENCES `socio` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SocioTags_Tags_Tag_id` FOREIGN KEY (`Tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sociotags`
--

LOCK TABLES `sociotags` WRITE;
/*!40000 ALTER TABLE `sociotags` DISABLE KEYS */;
INSERT INTO `sociotags` VALUES (65,18),(65,20),(65,22),(65,52),(65,62),(65,91),(64,14),(64,19),(64,39),(64,52),(64,62),(64,63),(63,2),(63,4),(63,13),(63,19),(63,24),(63,39),(63,81),(63,90),(62,20),(62,30),(62,62),(62,63),(62,84),(62,85),(62,86),(62,87),(62,88),(62,89),(61,4),(61,28),(61,54),(61,63),(60,2),(60,4),(60,34),(60,39),(60,52),(60,55),(60,69),(60,82),(59,2),(59,28),(59,62),(59,63),(59,84),(58,20),(58,43),(58,76),(58,81),(58,83),(58,84),(57,2),(57,65),(57,66),(56,19),(56,20),(56,36),(56,38),(56,39),(56,46),(56,55),(56,82),(55,19),(55,20),(55,42),(55,43),(55,45),(54,4),(54,19),(54,20),(54,23),(54,36),(53,2),(53,36),(53,40),(53,81),(52,9),(52,20),(52,33),(52,80),(51,76),(51,77),(51,78),(51,79),(50,5),(50,33),(50,60),(50,75),(49,35),(49,48),(49,71),(49,72),(49,73),(49,74),(48,39),(48,42),(48,43),(48,70),(47,20),(47,39),(47,68),(47,69),(46,33),(46,39),(46,61),(46,65),(46,66),(46,67),(45,33),(45,61),(45,62),(45,63),(45,64),(44,22),(44,33),(44,59),(44,60),(43,9),(43,25),(43,35),(43,57),(43,58),(42,9),(42,33),(42,35),(42,56),(41,4),(41,23),(41,55),(40,21),(40,33),(40,53),(40,54),(39,4),(39,42),(39,50),(39,51),(39,52),(38,20),(38,30),(38,48),(38,49),(37,33),(37,42),(37,48),(37,49),(36,4),(36,19),(36,38),(36,46),(36,47),(35,19),(35,42),(35,45),(34,27),(34,29),(34,36),(34,44),(33,41),(33,42),(33,43),(32,38),(32,40),(31,23),(31,29),(31,39),(30,19),(30,22),(30,37),(30,38),(29,4),(29,20),(29,29),(29,36),(28,9),(28,33),(28,34),(28,35),(27,30),(27,31),(27,32),(26,2),(26,4),(26,29),(26,30),(25,25),(25,26),(25,27),(25,28),(24,5),(24,15),(24,24),(23,2),(23,21),(23,22),(23,23),(21,16),(21,19),(21,20),(14,1),(14,5),(14,18),(3,2),(3,5),(3,13),(3,14),(3,15),(3,16),(2,2),(2,5),(2,6),(2,8),(2,9),(2,10),(2,11),(2,12),(2,17),(1,1),(1,2),(1,4),(1,5),(1,6),(1,7);
/*!40000 ALTER TABLE `sociotags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tagespaciocomuns`
--

DROP TABLE IF EXISTS `tagespaciocomuns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tagespaciocomuns` (
  `Tag_id` int(11) NOT NULL,
  `EspacioComun_id` int(11) NOT NULL,
  PRIMARY KEY (`Tag_id`,`EspacioComun_id`),
  KEY `IX_Tag_id` (`Tag_id` DESC) USING BTREE,
  KEY `IX_EspacioComun_id` (`EspacioComun_id` DESC) USING BTREE,
  KEY `FK_TagEspacioComuns_EspacioComun_EspacioComun_id` (`EspacioComun_id`),
  CONSTRAINT `FK_TagEspacioComuns_EspacioComun_EspacioComun_id` FOREIGN KEY (`EspacioComun_id`) REFERENCES `espaciocomun` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TagEspacioComuns_Tags_Tag_id` FOREIGN KEY (`Tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tagespaciocomuns`
--

LOCK TABLES `tagespaciocomuns` WRITE;
/*!40000 ALTER TABLE `tagespaciocomuns` DISABLE KEYS */;
/*!40000 ALTER TABLE `tagespaciocomuns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Sum'),(2,'aire libre'),(3,'Laboratorio'),(4,'caminar'),(5,'computacion'),(6,'android'),(7,'telefonos'),(8,'word'),(9,'pintura'),(10,'teatro'),(11,'ajedrez'),(12,'truco'),(13,'gimnasia'),(14,'telefono'),(15,'zumba'),(16,'baile'),(17,'salsa'),(18,'salir'),(19,'ejercicio'),(20,'amigos'),(21,'celular'),(22,'internet'),(23,'bailar'),(24,'correr'),(25,'tejido'),(26,'casero'),(27,'cocina'),(28,'manualidades'),(29,'familia'),(30,'social'),(31,'debate'),(32,'politica'),(33,'musica'),(34,'aprender'),(35,'arte'),(36,'salud'),(37,'futbol'),(38,'deporte'),(39,'comida'),(40,'fotografia'),(41,'citas'),(42,'viajar'),(43,'idioma'),(44,'reposteria'),(45,'mate'),(46,'basquet'),(47,'voley'),(48,'lectura'),(49,'libro'),(50,'television'),(51,'famosos'),(52,'tecnologia'),(53,'psicologia'),(54,'comunicacion'),(55,'juntada'),(56,'alfareria'),(57,'ropa'),(58,'diseño'),(59,'programar'),(60,'computadora'),(61,'naturaleza'),(62,'plantas'),(63,'jardineria'),(64,'semillas'),(65,'vegetariano'),(66,'animales'),(67,'feminismo'),(68,'comedia'),(69,'humor'),(70,'cartas'),(71,'fantasia'),(72,'literatura'),(73,'redaccion'),(74,'expresion'),(75,'nerd'),(76,'artes marciales'),(77,'japón'),(78,'cosplay'),(79,'costura'),(80,'actuar'),(81,'redes sociales'),(82,'asado'),(83,'defensa personal'),(84,'yoga'),(85,'religión'),(86,'solidaridad'),(87,'ayudar'),(88,'comunidad'),(89,'espiritual'),(90,'pastelería'),(91,'bicicleta');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipodocumento`
--

DROP TABLE IF EXISTS `tipodocumento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tipodocumento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodocumento`
--

LOCK TABLES `tipodocumento` WRITE;
/*!40000 ALTER TABLE `tipodocumento` DISABLE KEYS */;
INSERT INTO `tipodocumento` VALUES (1,'DNI'),(2,'PASAPORTE');
/*!40000 ALTER TABLE `tipodocumento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoespacio`
--

DROP TABLE IF EXISTS `tipoespacio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tipoespacio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoespacio`
--

LOCK TABLES `tipoespacio` WRITE;
/*!40000 ALTER TABLE `tipoespacio` DISABLE KEYS */;
INSERT INTO `tipoespacio` VALUES (1,'Aula'),(2,'SUM'),(3,'Patio'),(4,'Abierto'),(5,'Cerrado');
/*!40000 ALTER TABLE `tipoespacio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoevento`
--

DROP TABLE IF EXISTS `tipoevento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tipoevento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `descripcion` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoevento`
--

LOCK TABLES `tipoevento` WRITE;
/*!40000 ALTER TABLE `tipoevento` DISABLE KEYS */;
INSERT INTO `tipoevento` VALUES (1,'Curso','---'),(2,'Taller','---'),(3,'Conferencia','---'),(4,'Campaña social','---'),(6,'Baile','---'),(8,'Seminario','---');
/*!40000 ALTER TABLE `tipoevento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `usuario` longtext,
  `clave` longtext,
  `imagen` longtext,
  `rol` longtext,
  `email` longtext,
  `fechaCreacion` datetime NOT NULL,
  `fechaBaja` datetime NOT NULL,
  `token` longtext,
  `idEncargado` int(11) DEFAULT NULL,
  `idSocio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Augusto','admin','123456','images\\perfiles\\perfil-1.jpg','ADMIN','admin@admin.com','0001-01-01 00:00:00','0001-01-01 00:00:00','a17ae791a9bb4351b2874d1b36d90414',1,2),(2,'Laura','secre','123456','images\\perfiles\\perfil-2.jpg','SECRETARIO','secretario@secretario.com','0001-01-01 00:00:00','0001-01-01 00:00:00','206ea1173a9b4068b3ed95571aea18d0',NULL,2),(3,'Javier','socio','123456','images\\perfiles\\perfil-3.jpg','SOCIO','socio@socio.com','0001-01-01 00:00:00','0001-01-01 00:00:00','911e0077096d4f89af2f64ed2409740f',NULL,2),(4,'Juan','encargado','123456','images\\perfiles\\perfil-4.jpg','ENCARGADO','encargado@encargado.com','0001-01-01 00:00:00','0001-01-01 00:00:00','71e0dc977bb24fd39a5a74a0b91f7b30',1,2),(5,'DASH','dash','123456','assets/img/profile/users/augusto.png','DASH','socio@socio.com','0001-01-01 00:00:00','0001-01-01 00:00:00','43f12e739fcb49e9a5cbd0de4711be70',1,2),(6,'JAVIER','JIMENEZ227','JAVIER30992080','images\\perfiles\\perfil-6.jpg','SOCIO','javierjimenez78@gmail.com','2019-10-30 02:25:28','0001-01-01 00:00:00','f031bcd825684f6ab3223c9a1ef6dd0b',NULL,14),(7,'amelio','gutierrez613','amelio32972080','images\\perfiles\\perfil-1.jpg','SOCIO','javierjimenez78@gmail.com','2019-11-01 03:05:44','0001-01-01 00:00:00',NULL,NULL,15),(8,'Julia','Agostini891','Julia5489482','images\\perfiles\\julia.jpg','SOCIO','javierjimenez78@gmail.com','2019-11-06 23:10:16','0001-01-01 00:00:00','6bbb3a7bbfc7433faa438a2a14c0d9d7',NULL,16),(10,'alberto','JIMENEZ927','alberto30999888','images\\perfiles\\adam.jpg','SOCIO','javierjimenez78@gmail.com','2019-11-06 23:24:46','0001-01-01 00:00:00',NULL,NULL,18),(11,'JUANA','JUANA387','JUANA5498232','images\\perfiles\\julia.jpg','SOCIO','javierjimenez78@gmail.com','2019-11-07 01:32:33','0001-01-01 00:00:00',NULL,NULL,19),(13,'Emanuel','encargadoEmanuel','123456','images\\perfiles\\perfil-4.jpg','ENCARGADO','encargado@encargado.com','0001-01-01 00:00:00','0001-01-01 00:00:00','2bbd20445ed04d01b3e7df7b977e2650',3,3),(14,'LUCAS','LUCAS646','LUCAS15789643','images\\perfiles\\adam.jpg','SOCIO','lucasgiorgio@hotmail.com','2019-08-27 20:51:02','0001-01-01 00:00:00',NULL,NULL,20),(15,'JUAN','JUAN769','JUAN36487210','images\\perfiles\\adam.jpg','SOCIO','juanr@gmail.com','2019-08-27 20:53:58','0001-01-01 00:00:00',NULL,NULL,21),(16,'CECILIA','CECILIA165','CECILIA1546894','images\\perfiles\\julia.jpg','SOCIO','cecilialarreta@gmail.com','2019-08-27 20:56:03','0001-01-01 00:00:00',NULL,NULL,22),(17,'LUCRECIA','LUCRECIA230','LUCRECIA15789465','images\\perfiles\\julia.jpg','SOCIO','lucreperez@gmail.com','2019-08-27 21:44:22','0001-01-01 00:00:00',NULL,NULL,23),(18,'NATALIA','NATALIA915','NATALIA4687652','images\\perfiles\\julia.jpg','SOCIO','natisonia@gmail.com','2019-08-27 21:45:14','0001-01-01 00:00:00',NULL,NULL,24),(19,'PAULA','PAULA888','PAULA35798406','images\\perfiles\\julia.jpg','SOCIO','paulap@gmail.com','2019-08-27 21:48:08','0001-01-01 00:00:00',NULL,NULL,25),(20,'LORENA','LORENA621','LORENA34879201','images\\perfiles\\adam.jpg','SOCIO','loremorte@gmail.com','2019-08-27 21:50:23','0001-01-01 00:00:00',NULL,NULL,26),(21,'ALBERTO','ALBERTO984','ALBERTO15648987','images\\perfiles\\adam.jpg','SOCIO','albertomacri@gmail.com','2019-08-27 21:53:52','0001-01-01 00:00:00',NULL,NULL,27),(22,'MELISA','MELISA166','MELISA15647798','images\\perfiles\\julia.jpg','SOCIO','melisasuarez@hotmail.com','2019-08-27 21:55:31','0001-01-01 00:00:00',NULL,NULL,28),(23,'ROMINA','ROMINA753','ROMINA465865','images\\perfiles\\julia.jpg','SOCIO','romipeirone@gmail.com','2019-08-27 21:56:34','0001-01-01 00:00:00',NULL,NULL,29),(24,'PEDRO','PEDRO986','PEDRO34879562','images\\perfiles\\adam.jpg','SOCIO','pedroalasia@hotmail.com','2019-08-27 21:58:11','0001-01-01 00:00:00',NULL,NULL,30),(25,'PATRICIO','PATRICIO960','PATRICIO21468942','images\\perfiles\\adam.jpg','SOCIO','plopez@gmail.com','2019-08-27 21:59:35','0001-01-01 00:00:00',NULL,NULL,31),(26,'ATILIO','ATILIO116','ATILIO28654465','images\\perfiles\\adam.jpg','SOCIO','aticerban@hotmail.com','2019-08-27 22:00:55','0001-01-01 00:00:00',NULL,NULL,32),(27,'JOSEFINA','JOSEFINA725','JOSEFINA1564985','images\\perfiles\\julia.jpg','SOCIO','josefinanataloni@hotmail.com','2019-08-27 22:02:12','0001-01-01 00:00:00',NULL,NULL,33),(28,'BARBARA','BARBARA630','BARBARA34549872','images\\perfiles\\adam.jpg','SOCIO','barbaralongo@hotmail.com','2019-08-27 22:03:07','0001-01-01 00:00:00',NULL,NULL,34),(29,'AMANDA','AMANDA121','AMANDA3516785','images\\perfiles\\julia.jpg','SOCIO','amilopez@gmail.com','2019-08-27 22:04:38','0001-01-01 00:00:00',NULL,NULL,35),(30,'JULIÁN','JULIÁN844','JULIÁN3541658','images\\perfiles\\adam.jpg','SOCIO','juliangarate@gmail.com','2019-08-27 22:06:50','0001-01-01 00:00:00',NULL,NULL,36),(31,'ANA','ANA612','ANA4657856','images\\perfiles\\julia.jpg','SOCIO','anaalasia@gmail.com','2019-08-27 22:07:47','0001-01-01 00:00:00',NULL,NULL,37),(32,'MAFALDA','MAFALDA267','MAFALDA4689756','images\\perfiles\\julia.jpg','SOCIO','mafalda.cerban@gmail.com','2019-08-27 22:09:07','0001-01-01 00:00:00',NULL,NULL,38),(33,'JULIETA','JULIETA532','JULIETA26546897','images\\perfiles\\julia.jpg','SOCIO','julimerta@hotmail.com','2019-08-27 22:10:47','0001-01-01 00:00:00',NULL,NULL,39),(34,'DIEGO','DIEGO548','DIEGO35487546','images\\perfiles\\adam.jpg','SOCIO','diegopenas@gmail.com','2019-08-27 22:13:49','0001-01-01 00:00:00',NULL,NULL,40),(35,'MAXIMILIANO','MAXIMILIANO317','MAXIMILIANO468795','images\\perfiles\\adam.jpg','SOCIO','maxiceballos@gmaill.com','2019-08-27 22:16:14','0001-01-01 00:00:00',NULL,NULL,41),(36,'MARTÍN','MARTÍN270','MARTÍN3541655','images\\perfiles\\adam.jpg','SOCIO','martin.massimino@gmail.com','2019-08-27 22:17:19','0001-01-01 00:00:00',NULL,NULL,42),(37,'MARIELA','MARIELA353','MARIELA4612342','images\\perfiles\\julia.jpg','SOCIO','mariela.fala@gmail.com','2019-08-27 22:18:24','0001-01-01 00:00:00',NULL,NULL,43),(38,'NICOLÁS','NICOLÁS718','NICOLÁS15486546','images\\perfiles\\adam.jpg','SOCIO','nico.fabio@gmail.com','2019-08-27 22:19:31','0001-01-01 00:00:00',NULL,NULL,44),(39,'VICTOR','VICTOR324','VICTOR16798465','images\\perfiles\\adam.jpg','SOCIO','victor.paredes@gmail.com','2019-08-27 22:20:39','0001-01-01 00:00:00',NULL,NULL,45),(40,'AGUSTINA','AGUSTINA532','AGUSTINA524154','images\\perfiles\\julia.jpg','SOCIO','agus.carando@gmail.com','2019-08-27 22:22:19','0001-01-01 00:00:00',NULL,NULL,46),(41,'CAROLINA','CAROLINA789','CAROLINA1654899','images\\perfiles\\julia.jpg','SOCIO','caro.celeste@hotmail.com','2019-08-27 22:23:29','0001-01-01 00:00:00',NULL,NULL,47),(42,'SILVINA','SILVINA738','SILVINA24654986','images\\perfiles\\adam.jpg','SOCIO','silvina.roa@gmail.com','2019-08-27 22:25:15','0001-01-01 00:00:00',NULL,NULL,48),(43,'JUAN','JUAN821','JUAN4679546','images\\perfiles\\adam.jpg','SOCIO','juanbroco','2019-08-27 22:26:09','0001-01-01 00:00:00',NULL,NULL,49),(44,'HUGO','HUGO857','HUGO29794216','images\\perfiles\\adam.jpg','SOCIO','hugofernandez@gmail.com','2019-08-27 22:27:03','0001-01-01 00:00:00',NULL,NULL,50),(45,'SANTIAGO','SANTIAGO107','SANTIAGO14789465','images\\perfiles\\adam.jpg','SOCIO','santiagomartinez@gmail.com','2019-08-28 05:30:31','0001-01-01 00:00:00',NULL,NULL,51),(46,'LOURDES','LOURDES627','LOURDES32514685','images\\perfiles\\adam.jpg','SOCIO','luliramirez@gmail.com','2019-08-28 05:32:58','0001-01-01 00:00:00',NULL,NULL,52),(47,'FLORENCIA','FLORENCIA883','FLORENCIA33468100','images\\perfiles\\julia.jpg','SOCIO','flor.fala@gmail.com','2019-08-28 05:34:42','0001-01-01 00:00:00',NULL,NULL,53),(48,'PAMELA','PAMELA239','PAMELA12487952','images\\perfiles\\julia.jpg','SOCIO','pamelacolme@gmail.com','2019-08-28 05:37:26','0001-01-01 00:00:00',NULL,NULL,54),(49,'AMANDA','AMANDA607','AMANDA2342565','images\\perfiles\\julia.jpg','SOCIO','amimanso@gmail.com','2019-08-28 05:39:34','0001-01-01 00:00:00',NULL,NULL,55),(50,'FEDERICO','FEDERICO692','FEDERICO16481359','images\\perfiles\\adam.jpg','SOCIO','federubio@hotmail.com','2019-08-28 05:41:54','0001-01-01 00:00:00',NULL,NULL,56),(51,'AGUSTÍN','AGUSTÍN457','AGUSTÍN26445465','images\\perfiles\\adam.jpg','SOCIO','agustinlorenzo@gmail.com','2019-08-28 05:43:09','0001-01-01 00:00:00',NULL,NULL,57),(52,'GASTÓN','GASTÓN254','GASTÓN15468510','images\\perfiles\\julia.jpg','SOCIO','gastilossio@hotmail.com','2019-08-28 05:45:18','0001-01-01 00:00:00',NULL,NULL,58),(53,'CLAUDIA','CLAUDIA338','CLAUDIA15465879','images\\perfiles\\julia.jpg','SOCIO','claucharo@gmail.com','2019-08-28 05:49:51','0001-01-01 00:00:00',NULL,NULL,59),(54,'ENZO','ENZO632','ENZO35456872','images\\perfiles\\adam.jpg','SOCIO','enzoporta@hotmail.com','2019-08-28 05:51:34','0001-01-01 00:00:00',NULL,NULL,60),(55,'LUCIANA','LUCIANA639','LUCIANA2342455','images\\perfiles\\julia.jpg','SOCIO','lumenso@gmail.com','2019-08-28 05:53:10','0001-01-01 00:00:00',NULL,NULL,61),(56,'JUAN','JUAN138','JUAN3541569','images\\perfiles\\adam.jpg','SOCIO','juanrocco@gmail.com','2019-08-28 05:55:01','0001-01-01 00:00:00',NULL,NULL,62),(57,'TOMÁS','TOMÁS721','TOMÁS21546852','images\\perfiles\\adam.jpg','SOCIO','tomigot@gmail.com','2019-08-28 05:56:48','0001-01-01 00:00:00',NULL,NULL,63),(58,'NATALIA','NATALIA850','NATALIA4513549','images\\perfiles\\adam.jpg','SOCIO','nati.perez@gmail.com','2019-11-30 13:00:16','0001-01-01 00:00:00',NULL,NULL,64),(59,'PABLO','PABLO791','PABLO15465897','images\\perfiles\\adam.jpg','SOCIO','pablolammel@gmail.com','2019-11-30 13:01:20','0001-01-01 00:00:00',NULL,NULL,65);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-01  2:29:09
