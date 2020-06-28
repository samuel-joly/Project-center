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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES ('autocompletion','projects/autocompletion.pdf',4,2,1,2019,1),('ToDoList','projects/todolist.pdf',5,2,2,2019,1),('Boutique','projects/boutique.pdf',14,2,3,2019,3),('Forum','projects/forum.pdf',10,2,4,2019,3),('Oclock','projects/oclock.pdf',5,2,5,2019,1),('Blog','projects/blog.pdf',14,2,6,2019,3),('Classe','projects/classe.pdf',2,1,7,2019,3),('Memory','projects/memory.pdf',7,2,8,2019,3),('Réservation salle','projects/reservation_salle.pdf',6,1,9,2019,3),('Discussion','projects/discussion.pdf',6,1,10,2019,3),('Livre d\'or','projects/livre_or.pdf',6,1,11,2019,3),('Module Connexion','projects/module_connexion.pdf',6,1,12,2019,3),('Menuiserie','projects/menuiserie.pdf',3,2,13,2019,2),('Btp','projects/btp.pdf',3,2,14,2019,2),('fansite','projects/fansite.pdf',3,2,15,2019,2),('Botanique','projects/botanique.pdf',3,2,16,2019,2),('Portfolio','projects/portfolio.pdf',3,1,17,2019,2),('Connexion','projects/connexion.pdf',3,1,18,2019,2),('App Favorite','projects/app_favorite.pdf',3,1,19,2019,2),('Analytics','projects/analytics.pdf',5,2,20,2019,1),('Taquin','projects/taquin.pdf',5,2,21,2019,1),('Clicker','projects/clicker.pdf',10,2,22,2019,1),('Little Discord','projects/little_discord.pdf',7,2,23,2019,1),('Cinetech','projects/cimetech.pdf',7,2,24,2019,1),('Puissance 4','projects/puissance4.pdf',10,2,25,2019,1),('My PhpMyAdmin','projects/myphpmyadmin.pdf',10,2,26,2019,1),('La Ville de Marseille','projects/ville_de_marseille.pdf',5,2,28,2019,2),('Voyage','projects/Voyage.pdf',5,2,29,2019,2),('Phonotèque','projects/phonoteque.pdf',5,2,30,2019,2),('IDE','projects/ide.pdf',5,2,31,2019,2),('Agenda','projects/agenda.pdf',5,2,32,2019,2),('Cinetech','projects/cinetech.pdf',5,2,33,2019,2),('Videoteque','projects/videotheque.pdf',5,2,34,2019,2);
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
  `color` varchar(255) NOT NULL,
  `promo` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` VALUES (1,'JavaScript','Tout ce qu\'il faut pour pratiquer JavaScript,Jquery et Ajax. Devenez un pro du  web dynamique !','#dea700',1),(2,'HTML','Commencez simplement en créant vos contenu avec l\'HyperText Markup Language et décorez le avec les Cascading StyleSheet','#dc3545',1),(3,'PHP','Découvrez comment traiter les données d\'un site via PHP HYpertext Preprocessor et savegardez les données via MySQL','#28a745',1);
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `second_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `avatar` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `name` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `discord` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `promo` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Amar','Le prénom du plus beau.\r\nDu plus fort.\r\nDu plus...bon j\'ai plus d\'argument.\r\n\r\nAmar quoi.\r\n','1.jpg','le plus drole','Amar','','','',2019),(60,'Admin','Etudiant a LaPlateforme_','default.png',NULL,'Istre','Azefortwo','sadmin@laplateforme.io','$2y$10$4AwNW2yh..cOOWMvO8qpy.pmK0e/YNIJWCgxPBkLIVYt66yFKzeki',2019);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-28 22:50:35
