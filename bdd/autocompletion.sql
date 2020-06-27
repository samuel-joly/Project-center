-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: localhost    Database: autocompletion
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `prenoms`
--

DROP TABLE IF EXISTS `prenoms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prenoms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `prenom` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `image` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prenoms`
--

LOCK TABLES `prenoms` WRITE;
/*!40000 ALTER TABLE `prenoms` DISABLE KEYS */;
INSERT INTO `prenoms` VALUES (1,'Amar','Le prénom du plus beau.\r\nDu plus fort.\r\nDu plus...bon j\'ai plus d\'argument.\r\n\r\nAmar quoi.\r\n','1.jpg','le plus drole'),(2,'Samuel','Le prénom d\'un homme de bien.','',NULL),(3,'Enzo','Le prénom du mec qui dors plus qu\'il ne vit.','',NULL),(4,'Devon','Devon.','',NULL),(5,'Mathilde','La plus forte\r\nLa plus belle\r\nLa plus tout.\r\n\r\nC\'est comme Amar, mais en pas pareil.','',NULL),(6,'Sarah','La plus forte\r\nLa plus belle\r\nLa plus tout.\r\n\r\nC\'est comme Amar, mais en pas pareil et avec des chats.','',NULL),(7,'Solenn','La plus forte\r\nLa plus belle\r\nLa plus tout.\r\n\r\nC\'est comme Amar, mais en pas pareil. Et en couleur.','',NULL),(8,'Gertrude','Le prénom qui existe plus.','',NULL),(9,'uvuvwevwevwe onyetenyevwe ugwemuhwem','osas','',NULL),(10,'Gwénaël','Il joue a BDO. Et stuff > Skill.','',NULL),(11,'Anthony','j\'ai pas d\'id','',NULL),(12,'Scooby ','Doobie Doo','',NULL),(14,'Jon Snow','mah queen','',NULL),(17,'Daenerys','du Typhon de la Maison Targaryen, premiÃ¨re du nom, Reine des Andals, de Rhoynar et des Premiers Hommes, Suzeraine des Sept Couronnes et Protectrice du Royaume, Dame de Peyredragon, Reine de Meereen, Khaleesi de la Grande Mer herbeuse, lâ€™ImbrÃ»lÃ©e, Briseuse de chaÃ®nes et MÃ¨re des dragons. ','',NULL),(18,'Goku','De 0 en hÃ©ros','',NULL),(19,'Arthas','SpÃ© one shot','',NULL),(20,'Adibou','le truc qui sert a apprendre.','',NULL),(21,'zidane','sacrÃ© coup de boule','',NULL),(22,'Xiaoyu','la diversitÃ©','',NULL),(23,'Toto','le meilleur ami de Terry','',NULL),(24,'Terry','Le meilleur ami de Toto','',NULL),(25,'Gambino','Chanteur cool','',NULL),(26,'Michael','Chanteur lÃ©gendaire','',NULL),(27,'Didier','Judoka','',NULL),(28,'Bruce','Le mec qui fait du kung-fu','',NULL),(29,'Myriam','Un nom joli','',NULL),(30,'test','test','',NULL),(32,'Jean-michel','Bruitages','',NULL),(34,'Onizuka','22 ans cÃ©libataire, libre comme l\'air.','',NULL),(35,'Illidan','Vous n\'Ãªtes pas prÃªts.','',NULL),(36,'Adrien','Un homme de bien','',NULL),(37,'Pascal','Un fou de Wow','',NULL),(38,'George','George','',NULL),(39,'Cecile','Cecile','',NULL),(40,'Elsa','Elsa','',NULL),(41,'Farouk','Farouk','',NULL),(42,'Damien','Damien','',NULL),(43,'Fred','Fred','',NULL),(44,'Sebastien','Sebastien','',NULL),(45,'Jégivup','Plus d\'idées','','Plus d\'idées'),(46,'Thomas','Thomas','',NULL),(47,'Paolo','Paolo','',NULL),(48,'Amelie','Amelie','',NULL),(49,'Clement','Clement','',NULL),(50,'Mika','Mika','',NULL),(51,'Alex','Alex','',NULL);
/*!40000 ALTER TABLE `prenoms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `name` varchar(255) NOT NULL,
  `pdf` varchar(255) NOT NULL,
  `chrono` int NOT NULL,
  `min_size` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `promo` int NOT NULL,
  `unit` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES ('autocompletion','projects/autocompletion.pdf',4,2,1,1,1);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promo`
--

DROP TABLE IF EXISTS `promo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promo`
--

LOCK TABLES `promo` WRITE;
/*!40000 ALTER TABLE `promo` DISABLE KEYS */;
INSERT INTO `promo` VALUES (1,'2019');
/*!40000 ALTER TABLE `promo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `units` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` VALUES (1,'JavaScript','Tout ce qu\'il faut pour pratiquer JavaScript,Jquery et Ajax. Devenez un pro du  web dynamique !'),(2,'HTML','Commencez simplement en créant vos contenu avec l\'HyperText Markup Language et décorez le avec les Cascading StyleSheet'),(3,'PHP','Découvrez comment traiter les données d\'un site via PHP HYpertext Preprocessor et savegardez les données via MySQL');
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-27 11:06:08
