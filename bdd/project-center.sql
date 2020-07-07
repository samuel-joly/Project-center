-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 07, 2020 at 06:20 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project-center`
--
CREATE DATABASE IF NOT EXISTS `project-center` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `project-center`;

-- --------------------------------------------------------

--
-- Table structure for table `difficulty`
--

DROP TABLE IF EXISTS `difficulty`;
CREATE TABLE IF NOT EXISTS `difficulty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_project` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3828 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `name` varchar(255) NOT NULL,
  `pdf` varchar(255) NOT NULL,
  `chrono` int(11) NOT NULL,
  `min_size` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promo` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `max_size` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`name`, `pdf`, `chrono`, `min_size`, `id`, `promo`, `unit`, `max_size`) VALUES
('autocompletion', 'projects/autocompletion.pdf', 4, 2, 1, 2019, 3, 0),
('ToDoList', 'projects/todolist.pdf', 5, 2, 2, 2019, 3, 2),
('Boutique', 'projects/boutique.pdf', 14, 2, 3, 2019, 2, 2),
('Forum', 'projects/forum.pdf', 10, 2, 4, 2019, 2, 3),
('Oclock', 'projects/oclock.pdf', 5, 2, 5, 2019, 3, 2),
('Blog', 'projects/blog.pdf', 14, 2, 6, 2019, 2, 2),
('Classe', 'projects/classe.pdf', 2, 1, 7, 2019, 2, 1),
('Memory', 'projects/memory.pdf', 7, 2, 8, 2019, 2, 3),
('Réservation salle', 'projects/reservation_salle.pdf', 6, 1, 9, 2019, 2, 3),
('Discussion', 'projects/discussion.pdf', 6, 1, 10, 2019, 2, 3),
('Livre d\'or', 'projects/livre_or.pdf', 6, 1, 11, 2019, 2, 2),
('Module Connexion', 'projects/module_connexion.pdf', 6, 1, 12, 2019, 2, 3),
('Menuiserie', 'projects/menuiserie.pdf', 3, 2, 13, 2019, 1, 2),
('Btp', 'projects/btp.pdf', 3, 2, 14, 2019, 1, 2),
('fansite', 'projects/fansite.pdf', 3, 2, 15, 2019, 1, 2),
('Botanique', 'projects/botanique.pdf', 3, 2, 16, 2019, 1, 2),
('Portfolio', 'projects/portfolio.pdf', 3, 1, 17, 2019, 1, 1),
('Connexion', 'projects/connexion.pdf', 3, 1, 18, 2019, 1, 1),
('App Favorite', 'projects/app_favorite.pdf', 3, 1, 19, 2019, 1, 1),
('Analytics', 'projects/analytics.pdf', 5, 2, 20, 2019, 3, 2),
('Taquin', 'projects/taquin.pdf', 5, 2, 21, 2019, 3, 2),
('Clicker', 'projects/clicker.pdf', 10, 2, 22, 2019, 3, 2),
('Little Discord', 'projects/little_discord.pdf', 7, 2, 23, 2019, 3, 2),
('Cinetech', 'projects/cinetech1.pdf', 7, 2, 24, 2019, 3, 2),
('Puissance 4', 'projects/puissance4.pdf', 10, 2, 25, 2019, 3, 2),
('My PhpMyAdmin', 'projects/myphpmyadmin.pdf', 10, 2, 26, 2019, 3, 2),
('La Ville de Marseille', 'projects/ville_de_marseille.pdf', 5, 2, 28, 2019, 1, 0),
('Voyage', 'projects/Voyage.pdf', 5, 2, 29, 2019, 1, 0),
('Phonotèque', 'projects/phonoteque.pdf', 5, 2, 30, 2019, 1, 0),
('IDE', 'projects/ide.pdf', 5, 2, 31, 2019, 1, 0),
('Agenda', 'projects/agenda.pdf', 5, 2, 32, 2019, 1, 0),
('Cinetech', 'projects/cinetech.pdf', 5, 2, 33, 2019, 1, 2),
('Videoteque', 'projects/videotheque.pdf', 5, 2, 34, 2019, 1, 0),
('Work in progress', 'work_in_progress.pdf', 2, 1, 35, 2019, 1, 1),
('404', '404.pdf', 2, 1, 36, 2019, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `promo`
--

DROP TABLE IF EXISTS `promo`;
CREATE TABLE IF NOT EXISTS `promo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promo`
--

INSERT INTO `promo` (`id`, `nom`) VALUES
(1, '2019');

-- --------------------------------------------------------

--
-- Table structure for table `requirements`
--

DROP TABLE IF EXISTS `requirements`;
CREATE TABLE IF NOT EXISTS `requirements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_project` int(11) NOT NULL,
  `html` int(11) NOT NULL,
  `css` int(11) NOT NULL,
  `php` int(11) NOT NULL,
  `js` int(11) NOT NULL,
  `dtb` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requirements`
--

INSERT INTO `requirements` (`id`, `id_project`, `html`, `css`, `php`, `js`, `dtb`) VALUES
(1, 2, 0, 0, 25, 0, 25),
(2, 3, 400, 400, 50, 0, 50),
(3, 4, 0, 0, 18, 0, 18),
(4, 5, 0, 0, 25, 0, 25),
(5, 6, 0, 0, 18, 0, 18),
(6, 7, 0, 0, 0, 0, 0),
(7, 8, 300, 300, 18, 0, 18),
(8, 9, 300, 0, 6, 0, 6),
(9, 10, 0, 0, 4, 0, 4),
(10, 11, 0, 0, 0, 0, 0),
(11, 12, 0, 0, 0, 0, 0),
(12, 13, 70, 70, 0, 0, 0),
(13, 14, 70, 70, 0, 0, 0),
(14, 15, 70, 70, 0, 0, 0),
(15, 16, 70, 70, 0, 0, 0),
(16, 17, 15, 15, 0, 0, 0),
(17, 18, 15, 15, 0, 0, 0),
(18, 19, 15, 15, 0, 0, 0),
(19, 35, 0, 0, 0, 0, 0),
(20, 36, 0, 0, 0, 0, 0),
(21, 26, 0, 0, 0, 50, 0),
(22, 24, 0, 0, 40, 10, 40),
(23, 23, 0, 0, 20, 10, 20),
(24, 22, 0, 0, 0, 10, 0),
(25, 21, 0, 0, 0, 0, 0),
(26, 20, 0, 40, 40, 10, 0),
(27, 21, 0, 0, 40, 10, 40),
(28, 25, 0, 0, 0, 50, 0);

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
CREATE TABLE IF NOT EXISTS `units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `color` varchar(255) NOT NULL,
  `promo` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `description`, `color`, `promo`) VALUES
(1, 'HTML', 'Commencez simplement en créant vos contenu avec l\'HyperText Markup Language et décorez le avec les Cascading StyleSheet', '#ffbbc1', 1),
(2, 'PHP', 'Découvrez comment traiter les données d\'un site via PHP HYpertext Preprocessor et savegardez les données via MySQL', '#befdcc', 1),
(3, 'JavaScript', 'Tout ce qu\'il faut pour pratiquer JavaScript,Jquery et Ajax. Devenez un pro du  web dynamique !', '#f9e8b7', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `second_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `avatar` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `discord` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(250) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `promo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `second_name`, `description`, `avatar`, `status`, `name`, `discord`, `email`, `password`, `promo`) VALUES
(1, 'Amar', 'Le prénom du plus beau.\r\nDu plus fort.\r\nDu plus...bon j\'ai plus d\'argument.\r\n\r\nAmar quoi.\r\n', '1.jpg', 'le plus drole', 'Amar', '', '', '', 2019),
(60, 'Admin', 'Etudiant a LaPlateforme_', 'default.png', NULL, 'Istre', 'Azefortwo', 'sadmin@laplateforme.io', '$2y$10$4AwNW2yh..cOOWMvO8qpy.pmK0e/YNIJWCgxPBkLIVYt66yFKzeki', 2019);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
