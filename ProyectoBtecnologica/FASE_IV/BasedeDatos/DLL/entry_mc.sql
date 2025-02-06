-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: entry_mc
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `estado_ordenestrabajo`
--

DROP TABLE IF EXISTS `estado_ordenestrabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_ordenestrabajo` (
  `Id_Estado_Orden` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_EstadoOrden` varchar(20) NOT NULL,
  PRIMARY KEY (`Id_Estado_Orden`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_ordenestrabajo`
--

LOCK TABLES `estado_ordenestrabajo` WRITE;
/*!40000 ALTER TABLE `estado_ordenestrabajo` DISABLE KEYS */;
INSERT INTO `estado_ordenestrabajo` VALUES (1,'Creada'),(2,'En Curso'),(3,'Con Retraso'),(4,'Completada');
/*!40000 ALTER TABLE `estado_ordenestrabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_roles`
--

DROP TABLE IF EXISTS `estado_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_roles` (
  `Id_Estado_Rol` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Estado` varchar(20) NOT NULL,
  PRIMARY KEY (`Id_Estado_Rol`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_roles`
--

LOCK TABLES `estado_roles` WRITE;
/*!40000 ALTER TABLE `estado_roles` DISABLE KEYS */;
INSERT INTO `estado_roles` VALUES (1,'Activo'),(2,'Inactivo');
/*!40000 ALTER TABLE `estado_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados_registros`
--

DROP TABLE IF EXISTS `estados_registros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados_registros` (
  `Id_Estado_Registro` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Estado_Registro` varchar(20) NOT NULL,
  PRIMARY KEY (`Id_Estado_Registro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados_registros`
--

LOCK TABLES `estados_registros` WRITE;
/*!40000 ALTER TABLE `estados_registros` DISABLE KEYS */;
INSERT INTO `estados_registros` VALUES (1,'Circulación'),(2,'Patios'),(3,'Mantenimiento');
/*!40000 ALTER TABLE `estados_registros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados_usuarios`
--

DROP TABLE IF EXISTS `estados_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados_usuarios` (
  `Id_Estado_Usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Estado` varchar(25) NOT NULL,
  PRIMARY KEY (`Id_Estado_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados_usuarios`
--

LOCK TABLES `estados_usuarios` WRITE;
/*!40000 ALTER TABLE `estados_usuarios` DISABLE KEYS */;
INSERT INTO `estados_usuarios` VALUES (1,'Activo'),(2,'Inactivo');
/*!40000 ALTER TABLE `estados_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados_vehiculo`
--

DROP TABLE IF EXISTS `estados_vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados_vehiculo` (
  `Id_Estado_Vehiculo` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Estado` varchar(25) NOT NULL,
  PRIMARY KEY (`Id_Estado_Vehiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados_vehiculo`
--

LOCK TABLES `estados_vehiculo` WRITE;
/*!40000 ALTER TABLE `estados_vehiculo` DISABLE KEYS */;
INSERT INTO `estados_vehiculo` VALUES (1,'Activo'),(2,'Inactivo'),(3,'Circulación'),(4,'Patios'),(5,'Mantenimiento');
/*!40000 ALTER TABLE `estados_vehiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_trabajo`
--

DROP TABLE IF EXISTS `orden_trabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orden_trabajo` (
  `Id_Orden_Trabajo` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Vehiculo` int(11) NOT NULL,
  `Codigo_Vehiculo` varchar(10) NOT NULL,
  `Placa` varchar(6) NOT NULL,
  `Marca` varchar(10) DEFAULT NULL,
  `Modelo` int(4) DEFAULT NULL,
  `LLantas` varchar(25) DEFAULT NULL,
  `Ventanas` varchar(25) DEFAULT NULL,
  `Asignar` int(11) NOT NULL,
  `Luces` varchar(25) DEFAULT NULL,
  `Retrovisores` varchar(25) DEFAULT NULL,
  `Rayones` varchar(25) DEFAULT NULL,
  `Tipo_Mantemiento` int(11) NOT NULL,
  `Observaciones` varchar(250) NOT NULL,
  `Fecha_Orden_Trabajo` datetime DEFAULT NULL,
  `Estado_Orden_Trabajo` int(11) NOT NULL,
  PRIMARY KEY (`Id_Orden_Trabajo`),
  KEY `Id_Vehiculo` (`Id_Vehiculo`),
  KEY `Asignar` (`Asignar`),
  KEY `Tipo_Mantemiento` (`Tipo_Mantemiento`),
  KEY `Estado_Orden_Trabajo` (`Estado_Orden_Trabajo`),
  CONSTRAINT `orden_trabajo_ibfk_2` FOREIGN KEY (`Id_Vehiculo`) REFERENCES `vehiculos` (`Id_Vehiculo`),
  CONSTRAINT `orden_trabajo_ibfk_3` FOREIGN KEY (`Asignar`) REFERENCES `usuarios` (`Id_Usuario`),
  CONSTRAINT `orden_trabajo_ibfk_4` FOREIGN KEY (`Tipo_Mantemiento`) REFERENCES `tipos_mantenimiento` (`Id_Tipo_Mantenimiento`),
  CONSTRAINT `orden_trabajo_ibfk_5` FOREIGN KEY (`Estado_Orden_Trabajo`) REFERENCES `estado_ordenestrabajo` (`Id_Estado_Orden`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_trabajo`
--

LOCK TABLES `orden_trabajo` WRITE;
/*!40000 ALTER TABLE `orden_trabajo` DISABLE KEYS */;
INSERT INTO `orden_trabajo` VALUES (7,1,'MC001','KUM011','CHEVROLET',2021,'','',8,'','','',1,'','2023-06-25 19:40:00',2);
/*!40000 ALTER TABLE `orden_trabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permisos`
--

DROP TABLE IF EXISTS `permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permisos` (
  `Id_Permiso` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Permiso` varchar(50) NOT NULL,
  `Rol_Permiso` int(11) NOT NULL,
  PRIMARY KEY (`Id_Permiso`),
  KEY `Rol_Permiso` (`Rol_Permiso`),
  CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`Rol_Permiso`) REFERENCES `roles` (`Id_Rol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permisos`
--

LOCK TABLES `permisos` WRITE;
/*!40000 ALTER TABLE `permisos` DISABLE KEYS */;
INSERT INTO `permisos` VALUES (1,'FULL',1),(2,'GENERAL',2),(3,'RESTRINGIDO',3);
/*!40000 ALTER TABLE `permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_entrada`
--

DROP TABLE IF EXISTS `registro_entrada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registro_entrada` (
  `Id_Registro_Entrada` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Vehiculo` int(11) NOT NULL,
  `Codigo` varchar(10) NOT NULL,
  `Placa` varchar(6) NOT NULL,
  `Marca` varchar(10) DEFAULT NULL,
  `Modelo` int(4) DEFAULT NULL,
  `Estado_Vehiculo` int(11) NOT NULL,
  `Observaciones` varchar(350) NOT NULL,
  `Fecha_Registro_Entrada` datetime NOT NULL,
  PRIMARY KEY (`Id_Registro_Entrada`),
  CONSTRAINT `registro_entrada_ibfk_1` FOREIGN KEY (`Id_Vehiculo`) REFERENCES `vehiculos` (`Id_Vehiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_entrada`
--

LOCK TABLES `registro_entrada` WRITE;
/*!40000 ALTER TABLE `registro_entrada` DISABLE KEYS */;
INSERT INTO `registro_entrada` VALUES (34,1,'MC001','KUM011','CHEVROLET',2021,3,'Prueba Fecha','2023-06-30 19:33:00'),(35,2,'MC002','KUM012','CHEVROLET',2021,3,'','2023-06-26 13:42:00'),(36,5,'MC005','KUM015','CHEVROLET',2020,1,'','2023-06-30 10:38:00');
/*!40000 ALTER TABLE `registro_entrada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_salida`
--

DROP TABLE IF EXISTS `registro_salida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registro_salida` (
  `Id_Registro_Salida` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Vehiculo` int(11) NOT NULL,
  `Codigo` varchar(10) NOT NULL,
  `Placa` varchar(6) NOT NULL,
  `Marca` varchar(10) DEFAULT NULL,
  `Modelo` int(4) DEFAULT NULL,
  `Estado_Vehiculo` int(11) NOT NULL,
  `Observaciones` varchar(350) NOT NULL,
  `Fecha_Registro_Salida` date DEFAULT NULL,
  PRIMARY KEY (`Id_Registro_Salida`),
  KEY `Id_Vehiculo` (`Id_Vehiculo`),
  KEY `Estado_Vehiculo` (`Estado_Vehiculo`),
  CONSTRAINT `registro_salida_ibfk_1` FOREIGN KEY (`Id_Vehiculo`) REFERENCES `vehiculos` (`Id_Vehiculo`),
  CONSTRAINT `registro_salida_ibfk_2` FOREIGN KEY (`Estado_Vehiculo`) REFERENCES `vehiculos` (`Estado_Vehiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_salida`
--

LOCK TABLES `registro_salida` WRITE;
/*!40000 ALTER TABLE `registro_salida` DISABLE KEYS */;
INSERT INTO `registro_salida` VALUES (1,1,'MC001','KUM011','CHEVROLET',2021,1,'OK','2022-05-28'),(2,2,'MC002','KUM012','CHEVROLET',2021,1,'OK','2022-05-29'),(3,3,'MC003','KUM013','CHEVROLET',2020,1,'OK','2022-05-30'),(4,4,'MC004','KUM014','CHEVROLET',2022,1,'OK','2022-05-31'),(5,5,'MC005','KUM015','CHEVROLET',2020,1,'OK','2022-06-01'),(6,6,'MC006','KUM016','CHEVROLET',2020,1,'OK','2022-06-02'),(7,7,'MC007','KUM017','MERCEDES',2020,1,'OK','2022-06-03'),(8,8,'MC008','KUM018','MERCEDES',2022,1,'OK','2022-06-04'),(9,9,'MC009','KUM019','MERCEDES',2021,1,'OK','2022-06-05'),(10,10,'MC010','KUM020','MERCEDES',2020,1,'OK','2022-06-06'),(11,11,'MC011','KUM021','MERCEDES',2022,1,'OK','2022-06-07'),(12,12,'MC012','KUM022','MERCEDES',2021,1,'OK','2022-06-08'),(13,13,'MC013','KUM023','MERCEDES',2021,1,'OK','2022-06-09'),(14,14,'MC014','KUM024','MERCEDES',2020,1,'OK','2022-06-10'),(15,15,'MC015','KUM025','MERCEDES',2021,1,'OK','2022-06-11'),(16,16,'MC016','KUM026','MERCEDES',2022,1,'OK','2022-06-12'),(17,17,'MC017','KUM027','SUZUKI',2020,1,'OK','2022-06-13'),(18,18,'MC018','KUM028','SUZUKI',2020,1,'OK','2022-06-14'),(19,19,'MC019','KUM029','SUZUKI',2020,1,'OK','2022-06-15'),(20,20,'MC020','KUM030','SUZUKI',2021,1,'OK','2022-06-16'),(21,21,'MC021','KUM031','SUZUKI',2022,1,'OK','2022-06-17'),(22,22,'MC022','KUM032','SUZUKI',2022,1,'OK','2022-06-18'),(23,23,'MC023','KUM033','SUZUKI',2020,1,'OK','2022-06-19'),(24,24,'MC024','KUM034','SUZUKI',2021,1,'OK','2022-06-20'),(25,25,'MC025','KUM035','SUZUKI',2021,1,'OK','2022-06-21'),(26,26,'MC026','KUM036','MERCEDES',2022,1,'OK','2022-06-22'),(27,27,'MC027','KUM037','MERCEDES',2020,1,'OK','2022-06-23'),(28,28,'MC028','KUM038','MERCEDES',2020,1,'OK','2022-06-24'),(29,29,'MC029','KUM039','CHEVROLET',2020,1,'OK','2022-06-25'),(30,30,'MC030','KUM040','CHEVROLET',2020,1,'OK','2022-06-26');
/*!40000 ALTER TABLE `registro_salida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `Id_Rol` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Rol` varchar(20) NOT NULL,
  `Descripcion_Rol` varchar(250) DEFAULT NULL,
  `Estado_Rol` int(11) NOT NULL,
  PRIMARY KEY (`Id_Rol`),
  KEY `Estado_Rol` (`Estado_Rol`),
  CONSTRAINT `roles_ibfk_1` FOREIGN KEY (`Estado_Rol`) REFERENCES `estado_roles` (`Id_Estado_Rol`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Coordinador','Encargado del manejo total del software',1),(2,'Mecanico','Encargado del arreglo de vehiculos de errores mecanicos',1),(3,'Tecnico','Encargado del arreglos de vehiculos con fallas tecnicas',1),(4,'Supervisor','Encargado de supervisar el trabajo del area de mantenimiento',1),(5,'Inspector','Encargo del registro de entrada y salida de los vehiculos',1);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_documentos`
--

DROP TABLE IF EXISTS `tipo_documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_documentos` (
  `Id_Tipo_Documento` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Documento` varchar(25) NOT NULL,
  PRIMARY KEY (`Id_Tipo_Documento`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_documentos`
--

LOCK TABLES `tipo_documentos` WRITE;
/*!40000 ALTER TABLE `tipo_documentos` DISABLE KEYS */;
INSERT INTO `tipo_documentos` VALUES (1,'Cedula de Ciudadania'),(2,'Tarjeta de Identidada'),(3,'Pasaporte'),(4,'Cedula de Extranjeria');
/*!40000 ALTER TABLE `tipo_documentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_mantenimiento`
--

DROP TABLE IF EXISTS `tipos_mantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipos_mantenimiento` (
  `Id_Tipo_Mantenimiento` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Mantenimiento` varchar(20) NOT NULL,
  PRIMARY KEY (`Id_Tipo_Mantenimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_mantenimiento`
--

LOCK TABLES `tipos_mantenimiento` WRITE;
/*!40000 ALTER TABLE `tipos_mantenimiento` DISABLE KEYS */;
INSERT INTO `tipos_mantenimiento` VALUES (1,'Preventido'),(2,'Correctivo');
/*!40000 ALTER TABLE `tipos_mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_vehiculo`
--

DROP TABLE IF EXISTS `tipos_vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipos_vehiculo` (
  `Id_Tipo_Vehiculo` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Tipo_Vehiculo` varchar(25) NOT NULL,
  PRIMARY KEY (`Id_Tipo_Vehiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_vehiculo`
--

LOCK TABLES `tipos_vehiculo` WRITE;
/*!40000 ALTER TABLE `tipos_vehiculo` DISABLE KEYS */;
INSERT INTO `tipos_vehiculo` VALUES (1,'BUS'),(2,'BUSETA'),(3,'ARTICULADO');
/*!40000 ALTER TABLE `tipos_vehiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Usuario` varchar(25) NOT NULL,
  `Apellido_Usuario` varchar(25) NOT NULL,
  `Tipo_Documento` int(11) NOT NULL,
  `Numero_Documento` int(11) unsigned NOT NULL,
  `Direccion` varchar(65) DEFAULT NULL,
  `Correo_Electronico` varchar(30) NOT NULL,
  `Celular` varchar(15) DEFAULT NULL,
  `Id_Rol` int(11) NOT NULL,
  `Estado_Usuario` int(11) NOT NULL,
  `Login` varchar(15) NOT NULL,
  `Password` varchar(20) NOT NULL,
  PRIMARY KEY (`Id_Usuario`),
  UNIQUE KEY `Login` (`Login`),
  KEY `Tipo_Documento` (`Tipo_Documento`),
  KEY `Estado_Usuario` (`Estado_Usuario`),
  KEY `Id_Rol` (`Id_Rol`) USING BTREE,
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`Tipo_Documento`) REFERENCES `tipo_documentos` (`Id_Tipo_Documento`),
  CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`Id_Rol`) REFERENCES `roles` (`Id_Rol`),
  CONSTRAINT `usuarios_ibfk_3` FOREIGN KEY (`Estado_Usuario`) REFERENCES `estados_usuarios` (`Id_Estado_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Cristian','Ortega',1,1019117310,'kr 151 bis a # 138-19','cristian1002andres96@gmail.com','3132872707',1,1,'cortega','****'),(2,'jose','rodriguez',1,1098779654,'kr 123 sur','jr@gmail.com','3125696958',1,1,'jrodriguez','****'),(3,'Luis ','Ortega',1,1019118756,'kr 134','lo@gmail.com','3212566958',1,1,'lortega','****'),(5,'camilo','gomez',1,1019117632,'calle 26','cg@gmail.com','2147483647',1,1,'cgomez','****'),(6,'Diana','Ramirez',1,1019887532,'calle 123','dr@gmail.com','2147483647',1,1,'dramirez','****'),(7,'Yesika','Ramirez',1,1019118186,'Kr 155 bis a','yr@gmail.com','2147483647',1,1,'Yramirez','****'),(8,'Marlon','Martinez',1,1019116320,'Carrera 23 sur','mmartinez@gmail.com','2147483647',2,1,'mmartinez','****'),(10,'William','Alvarez',1,1123366596,'calle 50 sur','walvarez@gmail.com','2147483647',2,1,'walvarez','****'),(12,'Luis','Cordero',1,2365559985,'calle 9 ','lcordero@gmail.com','3116965578',1,1,'lcordero','****'),(15,'Camilo','Vasquez',1,1025336541,'calle 52','cv@gmail.com','3125685896',1,1,'cvasquez','****'),(16,'camilo','cienfuegos',1,1018885365,'cr 24','cc@gmail.com','3215469875',1,1,'ccienfuegos','****');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculos`
--

DROP TABLE IF EXISTS `vehiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehiculos` (
  `Id_Vehiculo` int(11) NOT NULL AUTO_INCREMENT,
  `Codigo` varchar(10) NOT NULL,
  `Placa` varchar(6) NOT NULL,
  `Marca` varchar(10) DEFAULT NULL,
  `Modelo` int(4) DEFAULT NULL,
  `Color` varchar(25) DEFAULT NULL,
  `Tipo_Vehiculo` int(11) NOT NULL,
  `Velocidad_MAX` varchar(20) DEFAULT NULL,
  `Estado_Vehiculo` int(11) NOT NULL,
  PRIMARY KEY (`Id_Vehiculo`),
  KEY `Tipo_Vehiculo` (`Tipo_Vehiculo`),
  KEY `Estado_Vehiculo` (`Estado_Vehiculo`),
  CONSTRAINT `vehiculos_ibfk_1` FOREIGN KEY (`Tipo_Vehiculo`) REFERENCES `tipos_vehiculo` (`Id_Tipo_Vehiculo`),
  CONSTRAINT `vehiculos_ibfk_2` FOREIGN KEY (`Estado_Vehiculo`) REFERENCES `estados_vehiculo` (`Id_Estado_Vehiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculos`
--

LOCK TABLES `vehiculos` WRITE;
/*!40000 ALTER TABLE `vehiculos` DISABLE KEYS */;
INSERT INTO `vehiculos` VALUES (1,'MC001','KUM011','CHEVROLET',2021,NULL,3,NULL,3),(2,'MC002','KUM012','CHEVROLET',2021,NULL,2,NULL,5),(3,'MC003','KUM013','CHEVROLET',2020,NULL,3,NULL,2),(4,'MC004','KUM014','CHEVROLET',2022,NULL,2,NULL,2),(5,'MC005','KUM015','CHEVROLET',2020,NULL,1,NULL,5),(6,'MC006','KUM016','CHEVROLET',2020,NULL,1,NULL,5),(7,'MC007','KUM017','MERCEDES',2020,NULL,3,NULL,5),(8,'MC008','KUM018','MERCEDES',2022,NULL,1,NULL,3),(9,'MC009','KUM019','MERCEDES',2021,NULL,1,NULL,1),(10,'MC010','KUM020','MERCEDES',2020,NULL,2,NULL,3),(11,'MC011','KUM021','MERCEDES',2022,NULL,1,NULL,5),(12,'MC012','KUM022','MERCEDES',2021,NULL,3,NULL,3),(13,'MC013','KUM023','MERCEDES',2021,NULL,1,NULL,1),(14,'MC014','KUM024','MERCEDES',2020,NULL,3,NULL,1),(15,'MC015','KUM025','MERCEDES',2021,NULL,2,NULL,3),(16,'MC016','KUM026','MERCEDES',2022,NULL,1,NULL,1),(17,'MC017','KUM027','SUZUKI',2020,NULL,3,NULL,2),(18,'MC018','KUM028','SUZUKI',2020,NULL,1,NULL,5),(19,'MC019','KUM029','SUZUKI',2020,NULL,2,NULL,1),(20,'MC020','KUM030','SUZUKI',2021,NULL,2,NULL,4),(21,'MC021','KUM031','SUZUKI',2022,NULL,3,NULL,4),(22,'MC022','KUM032','SUZUKI',2022,NULL,2,NULL,1),(23,'MC023','KUM033','SUZUKI',2020,NULL,2,NULL,2),(24,'MC024','KUM034','SUZUKI',2021,NULL,1,NULL,4),(25,'MC025','KUM035','SUZUKI',2021,NULL,1,NULL,4),(26,'MC026','KUM036','MERCEDES',2022,NULL,3,NULL,4),(27,'MC027','KUM037','MERCEDES',2020,NULL,3,NULL,1),(28,'MC028','KUM038','MERCEDES',2020,NULL,3,NULL,4),(29,'MC029','KUM039','CHEVROLET',2020,NULL,1,NULL,5),(30,'MC030','KUM040','CHEVROLET',2020,NULL,1,NULL,4);
/*!40000 ALTER TABLE `vehiculos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-26 23:29:34
