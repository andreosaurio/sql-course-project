-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: university_db_schema
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `courses_id` int NOT NULL AUTO_INCREMENT,
  `courses_name` varchar(120) DEFAULT NULL,
  `courses_code` char(8) DEFAULT NULL,
  `courses_professor_id` int DEFAULT NULL,
  PRIMARY KEY (`courses_id`),
  UNIQUE KEY `courses_id_UNIQUE` (`courses_id`),
  KEY `courses_professors_id_idx` (`courses_professor_id`),
  CONSTRAINT `courses_professors_id` FOREIGN KEY (`courses_professor_id`) REFERENCES `professors` (`professors_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Introducción a la Programación','12345678',1),(2,'Programación Orientada a Objetos','23456789',2),(3,'Estructuras de Datos','34567890',3),(4,'Algoritmos y Complejidad','45678901',4),(5,'Bases de Datos','56789012',5),(6,'Desarrollo Web','67890123',6),(7,'Programación en Python','78901234',7),(8,'Desarrollo de Aplicaciones Móviles','89012345',8),(9,'Ingeniería de Software','90123456',9),(10,'Programación en Java','11223344',10),(11,'Ciberseguridad','22334455',1),(12,'Inteligencia Artificial','33445566',2),(13,'Programación en C++','44556677',3),(14,'Sistemas Operativos','55667788',4),(15,'Redes de Computadoras','66778899',5),(16,'Programación en JavaScript','77889900',6),(17,'Computación en la Nube','88990011',7),(18,'Machine Learning','99001122',8);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `grades_id` int NOT NULL AUTO_INCREMENT,
  `grades_students_id` int DEFAULT NULL,
  `grades_courses_id` int DEFAULT NULL,
  `grade` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`grades_id`),
  UNIQUE KEY `grades_id_UNIQUE` (`grades_id`),
  KEY `grades_students_id_idx` (`grades_students_id`),
  KEY `grades_courses_id_idx` (`grades_courses_id`),
  CONSTRAINT `grades_courses_id` FOREIGN KEY (`grades_courses_id`) REFERENCES `courses` (`courses_id`) ON DELETE CASCADE,
  CONSTRAINT `grades_students_id` FOREIGN KEY (`grades_students_id`) REFERENCES `students` (`students_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (1,1,1,8.95),(2,2,2,7.63),(3,3,3,9.28),(4,4,4,8.82),(5,5,5,9.40),(6,6,6,7.84),(7,7,7,8.56),(8,8,8,9.15),(9,9,9,8.72),(10,10,10,9.00),(11,11,11,8.35),(12,12,12,7.97),(13,13,13,8.89),(14,14,14,8.60),(15,15,15,9.31),(16,16,16,8.05),(17,17,17,7.73),(18,18,18,8.96),(19,19,1,8.42),(20,20,2,9.23),(21,21,3,7.85),(22,22,4,8.97),(23,23,5,9.14),(24,24,6,7.68),(25,25,7,8.75),(26,26,8,9.05),(27,27,9,8.34),(28,28,10,9.18),(29,29,11,8.55),(30,30,12,7.92),(31,31,13,8.60),(32,32,14,8.87),(33,33,15,9.09),(34,34,16,7.88),(35,35,17,8.64),(36,36,18,9.07),(37,37,1,8.76),(38,38,2,7.95),(39,39,3,9.21),(40,40,4,8.68),(41,41,5,9.11),(42,42,6,7.78),(43,43,7,8.53),(44,44,8,9.04),(45,45,9,8.91),(46,46,10,8.79),(47,47,11,7.96),(48,48,12,8.71),(49,49,13,9.10),(50,1,1,8.95),(51,2,2,7.63),(52,3,3,9.28),(53,4,4,8.82),(54,5,5,9.40),(55,6,6,7.84),(56,7,7,8.56),(57,8,8,9.15),(58,9,9,8.72),(59,10,10,9.00),(60,11,11,8.35),(61,12,12,7.97),(62,13,13,8.89),(63,14,14,8.60),(64,15,15,9.31),(65,16,16,8.05),(66,17,17,7.73),(67,18,18,8.96),(68,19,1,8.42),(69,20,2,9.23),(70,21,3,7.85),(71,22,4,8.97),(72,23,5,9.14),(73,24,6,7.68),(74,25,7,8.75),(75,26,8,9.05),(76,27,9,8.34),(77,28,10,9.18),(78,29,11,8.55),(79,30,12,7.92),(80,31,13,8.60),(81,32,14,8.87),(82,33,15,9.09),(83,34,16,7.88),(84,35,17,8.64),(85,36,18,9.07),(86,37,1,8.76),(87,38,2,7.95),(88,39,3,9.21),(89,40,4,8.68),(90,41,5,9.11),(91,42,6,7.78),(92,43,7,8.53),(93,44,8,9.04),(94,45,9,8.91),(95,46,10,8.79),(96,47,11,7.96),(97,48,12,8.71),(98,49,13,9.10),(99,1,11,8.50),(100,2,12,7.75),(101,3,13,8.90),(102,4,14,8.60),(103,5,15,9.20),(104,6,16,8.10),(105,7,17,8.80),(106,8,18,9.00);
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professors`
--

DROP TABLE IF EXISTS `professors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professors` (
  `professors_id` int NOT NULL AUTO_INCREMENT,
  `professors_first_name` varchar(45) DEFAULT NULL,
  `professors_last_name` varchar(45) DEFAULT NULL,
  `professors_email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`professors_id`),
  UNIQUE KEY `professors_id_UNIQUE` (`professors_id`),
  UNIQUE KEY `professors_email_UNIQUE` (`professors_email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professors`
--

LOCK TABLES `professors` WRITE;
/*!40000 ALTER TABLE `professors` DISABLE KEYS */;
INSERT INTO `professors` VALUES (1,'Juan','Pérez','juan.perez@example.com'),(2,'María','González','maria.gonzalez@example.com'),(3,'Carlos','Rodríguez','carlos.rodriguez@example.com'),(4,'Ana','Martínez','ana.martinez@example.com'),(5,'Luis','López','luis.lopez@example.com'),(6,'Laura','Hernández','laura.hernandez@example.com'),(7,'José','García','jose.garcia@example.com'),(8,'Carmen','Sánchez','carmen.sanchez@example.com'),(9,'Miguel','Fernández','miguel.fernandez@example.com'),(10,'Elena','Ramírez','elena.ramirez@example.com');
/*!40000 ALTER TABLE `professors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `students_id` int NOT NULL AUTO_INCREMENT,
  `students_first_name` varchar(45) DEFAULT NULL,
  `students_last_name` varchar(45) DEFAULT NULL,
  `students_email` varchar(45) NOT NULL,
  PRIMARY KEY (`students_id`),
  UNIQUE KEY `students_id_UNIQUE` (`students_id`),
  UNIQUE KEY `students_email_UNIQUE` (`students_email`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'John','Doe','john.doe@example.com'),(2,'Jane','Smith','jane.smith@example.com'),(3,'Michael','Johnson','michael.johnson@example.com'),(4,'Emily','Davis','emily.davis@example.com'),(5,'David','Brown','david.brown@example.com'),(6,'Sarah','Miller','sarah.miller@example.com'),(7,'Chris','Wilson','chris.wilson@example.com'),(8,'Amanda','Moore','amanda.moore@example.com'),(9,'Joshua','Taylor','joshua.taylor@example.com'),(10,'Jessica','Anderson','jessica.anderson@example.com'),(11,'Matthew','Thomas','matthew.thomas@example.com'),(12,'Carlos','García','carlos.garcia@example.com'),(13,'María','Rodríguez','maria.rodriguez@example.com'),(14,'Luis','Martínez','luis.martinez@example.com'),(15,'Ana','Hernández','ana.hernandez@example.com'),(16,'José','López','jose.lopez@example.com'),(17,'Elena','González','elena.gonzalez@example.com'),(18,'Pedro','Pérez','pedro.perez@example.com'),(19,'Laura','Sánchez','laura.sanchez@example.com'),(20,'Javier','Ramírez','javier.ramirez@example.com'),(21,'Carmen','Torres','carmen.torres@example.com'),(22,'Daniel','Flores','daniel.flores@example.com'),(23,'Isabel','Rivera','isabel.rivera@example.com'),(24,'Miguel','Gómez','miguel.gomez@example.com'),(25,'Lucía','Díaz','lucia.diaz@example.com'),(26,'Francisco','Reyes','francisco.reyes@example.com'),(27,'Sofía','Cruz','sofia.cruz@example.com'),(28,'Diego','Ortiz','diego.ortiz@example.com'),(29,'Marta','Morales','marta.morales@example.com'),(30,'Álvaro','Vargas','alvaro.vargas@example.com'),(31,'Adriana','Ramos','adriana.ramos@example.com'),(32,'Andrés','Ruiz','andres.ruiz@example.com'),(33,'Natalia','Gutiérrez','natalia.gutierrez@example.com'),(34,'Santiago','Jiménez','santiago.jimenez@example.com'),(35,'Paula','Mendoza','paula.mendoza@example.com'),(36,'Fernando','Silva','fernando.silva@example.com'),(37,'Patricia','Castro','patricia.castro@example.com'),(38,'Gabriel','Romero','gabriel.romero@example.com'),(39,'Teresa','Suárez','teresa.suarez@example.com'),(40,'Juan','Santos','juan.santos@example.com'),(41,'Valeria','Ortega','valeria.ortega@example.com'),(42,'Ricardo','Delgado','ricardo.delgado@example.com'),(43,'Lorena','Pena','lorena.pena@example.com'),(44,'Oscar','Ferrer','oscar.ferrer@example.com'),(45,'Beatriz','Cabrera','beatriz.cabrera@example.com'),(46,'Mario','Cortes','mario.cortes@example.com'),(47,'Eva','Aguilar','eva.aguilar@example.com'),(48,'Hugo','Navarro','hugo.navarro@example.com'),(49,'Claudia','Herrera','claudia.herrera@example.com');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-19 18:49:58
