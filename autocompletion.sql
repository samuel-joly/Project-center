-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 08 juin 2020 à 06:18
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `autocompletion`
--
CREATE DATABASE IF NOT EXISTS `autocompletion` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `autocompletion`;

-- --------------------------------------------------------

--
-- Structure de la table `prenoms`
--

DROP TABLE IF EXISTS `prenoms`;
CREATE TABLE IF NOT EXISTS `prenoms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(255) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Déchargement des données de la table `prenoms`
--

INSERT INTO `prenoms` (`id`, `prenom`, `description`) VALUES
(1, 'Amar', 'Le prénom du plus beau.\r\nDu plus fort.\r\nDu plus...bon j\'ai plus d\'argument.\r\n\r\nAmar quoi.\r\n'),
(2, 'Samuel', 'Le prénom d\'un homme de bien.'),
(3, 'Enzo', 'Le prénom du mec qui dors plus qu\'il ne vit.'),
(4, 'Devon', 'Devon.'),
(5, 'Mathilde', 'La plus forte\r\nLa plus belle\r\nLa plus tout.\r\n\r\nC\'est comme Amar, mais en pas pareil.'),
(6, 'Sarah', 'La plus forte\r\nLa plus belle\r\nLa plus tout.\r\n\r\nC\'est comme Amar, mais en pas pareil et avec des chats.'),
(7, 'Solenn', 'La plus forte\r\nLa plus belle\r\nLa plus tout.\r\n\r\nC\'est comme Amar, mais en pas pareil. Et en couleur.'),
(8, 'Gertrude', 'Le prénom qui existe plus.'),
(9, 'uvuvwevwevwe onyetenyevwe ugwemuhwem', 'osas'),
(10, 'Gwénaël', 'Il joue a BDO. Et stuff > Skill.'),
(11, 'Anthony', 'j\'ai pas d\'id'),
(12, 'Scooby ', 'Doobie Doo'),
(14, 'Jon Snow', 'mah queen'),
(17, 'Daenerys', 'du Typhon de la Maison Targaryen, premiÃ¨re du nom, Reine des Andals, de Rhoynar et des Premiers Hommes, Suzeraine des Sept Couronnes et Protectrice du Royaume, Dame de Peyredragon, Reine de Meereen, Khaleesi de la Grande Mer herbeuse, lâ€™ImbrÃ»lÃ©e, Briseuse de chaÃ®nes et MÃ¨re des dragons. '),
(18, 'Goku', 'De 0 en hÃ©ros'),
(19, 'Arthas', 'SpÃ© one shot'),
(20, 'Adibou', 'le truc qui sert a apprendre.'),
(21, 'zidane', 'sacrÃ© coup de boule'),
(22, 'Xiaoyu', 'la diversitÃ©'),
(23, 'Toto', 'le meilleur ami de Terry'),
(24, 'Terry', 'Le meilleur ami de Toto'),
(25, 'Gambino', 'Chanteur cool'),
(26, 'Michael', 'Chanteur lÃ©gendaire'),
(27, 'Didier', 'Judoka'),
(28, 'Bruce', 'Le mec qui fait du kung-fu'),
(29, 'Myriam', 'Un nom joli'),
(30, 'test', 'test'),
(32, 'Jean-michel', 'Bruitages'),
(34, 'Onizuka', '22 ans cÃ©libataire, libre comme l\'air.'),
(35, 'Illidan', 'Vous n\'Ãªtes pas prÃªts.'),
(36, 'Adrien', 'Un homme de bien'),
(37, 'Pascal', 'Un fou de Wow'),
(38, 'George', 'George'),
(39, 'Cecile', 'Cecile'),
(40, 'Elsa', 'Elsa'),
(41, 'Farouk', 'Farouk'),
(42, 'Damien', 'Damien'),
(43, 'Fred', 'Fred'),
(44, 'Sebastien', 'Sebastien'),
(45, 'JÃ©givup', 'JÃ©givup'),
(46, 'Thomas', 'Thomas'),
(47, 'Paolo', 'Paolo'),
(48, 'Amelie', 'Amelie'),
(49, 'Clement', 'Clement'),
(50, 'Mika', 'Mika'),
(51, 'Alex', 'Alex');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
