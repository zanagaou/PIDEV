-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 27 fév. 2020 à 02:33
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projetpi`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `login` varchar(20) NOT NULL,
  `mdp` varchar(20) NOT NULL,
  `etat_compte` int(4) NOT NULL DEFAULT '0',
  `mail` varchar(50) NOT NULL,
  PRIMARY KEY (`login`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`login`, `mdp`, `etat_compte`, `mail`) VALUES
('admin', 'test', 0, 'test@esprit.tn'),
('aziz', 'test', 0, 'test@esprit.tn'),
('barhoumi', 'jjjkkkk', 0, 'barhoumi@gmail.tn');

-- --------------------------------------------------------

--
-- Structure de la table `adminrh`
--

DROP TABLE IF EXISTS `adminrh`;
CREATE TABLE IF NOT EXISTS `adminrh` (
  `login` varchar(20) NOT NULL,
  `mdp` varchar(20) NOT NULL,
  `etat_compte` int(4) NOT NULL DEFAULT '0',
  `mail` varchar(50) NOT NULL,
  PRIMARY KEY (`login`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `adminrh`
--

INSERT INTO `adminrh` (`login`, `mdp`, `etat_compte`, `mail`) VALUES
('barhoumi', 'haha', 0, 'barhoumi@gmail.tn');

-- --------------------------------------------------------

--
-- Structure de la table `chauffeur`
--

DROP TABLE IF EXISTS `chauffeur`;
CREATE TABLE IF NOT EXISTS `chauffeur` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `cin` int(255) DEFAULT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `tel` int(255) NOT NULL,
  `sexe` varchar(20) NOT NULL,
  `date_naissance` date DEFAULT NULL,
  `salaire` double DEFAULT NULL,
  `note` float DEFAULT NULL,
  `image` varbinary(6000) DEFAULT NULL,
  `etat_compte` int(11) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `num_permis` int(255) DEFAULT NULL,
  `mdp` varchar(50) DEFAULT NULL,
  `id_vehicule` int(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_vehicule` (`id_vehicule`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `chauffeur`
--

INSERT INTO `chauffeur` (`id`, `cin`, `nom`, `prenom`, `tel`, `sexe`, `date_naissance`, `salaire`, `note`, `image`, `etat_compte`, `role`, `num_permis`, `mdp`, `id_vehicule`) VALUES
(18, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 1, 'taxi', 4455, 'hahaha', 39),
(19, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(20, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(25, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(26, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(27, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(28, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(29, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(30, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(31, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(32, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(33, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(34, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(35, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(36, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(37, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(38, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(39, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(40, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(41, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(42, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(43, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(44, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(45, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(46, 1133, 'mohamed', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(47, 1133, 'aziz', 'mmmmmm', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(48, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(49, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(50, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(51, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(52, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(53, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(54, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(55, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(56, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(57, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(58, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(59, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(60, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(61, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(62, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(63, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(64, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(65, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(66, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(67, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(68, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(69, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(70, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(71, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(72, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 190.80022, 4, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(73, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(74, 1133, 'aziz', 'barhoumi', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(75, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(76, 1133, 'aziz', 'barhoumi', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(77, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(78, 1133, 'aziz', 'barhoumi', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(79, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(80, 1133, 'aziz', 'barhoumi', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(81, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(82, 1133, 'aziz', 'barhoumi', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(83, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(84, 1133, 'aziz', 'barhoumi', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(85, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(86, 1133, 'aziz', 'barhoumi', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(87, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(88, 1133, 'aziz', 'barhoumi', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(89, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(90, 1133, 'aziz', 'barhoumi', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(91, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(92, 1133, 'aziz', 'barhoumi', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(93, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(94, 1133, 'aziz', 'barhoumi', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(95, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(96, 1133, 'aziz', 'barhoumi', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(97, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(98, 1133, 'aziz', 'barhoumi', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(99, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(100, 1133, 'aziz', 'barhoumi', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(101, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(102, 1133, 'aziz', 'barhoumi', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(103, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(104, 1133, 'aziz', 'barhoumi', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(105, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(106, 1133, 'aziz', 'barhoumi', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(107, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(108, 1133, 'aziz', 'barhoumi', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(109, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(110, 1133, 'aziz', 'barhoumi', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(111, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(112, 1133, 'aziz', 'barhoumi', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(113, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(114, 1133, 'aziz', 'barhoumi', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(115, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(116, 1133, 'aziz', 'barhoumi', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(117, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(118, 1133, 'aziz', 'barhoumi', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(119, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(120, 1133, 'aziz', 'barhoumi', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(121, 1133, 'samy', 'bejaoui', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 40),
(161, 13011288, 'Aziz', 'rajel', 98293289, 'homme', NULL, NULL, NULL, NULL, NULL, NULL, 3361448, NULL, NULL),
(162, 13011288, 'Aziz', 'rajel', 98293289, 'homme', NULL, NULL, NULL, NULL, NULL, NULL, 3361448, NULL, NULL),
(163, 4874541, 'hechmi', 'mohamed', 98293289, 'homme', NULL, NULL, NULL, NULL, NULL, NULL, 122236, NULL, NULL),
(164, 4874541, 'hechmi', 'mohamed', 98293289, 'homme', NULL, NULL, NULL, NULL, NULL, NULL, 122236, NULL, NULL),
(166, 1133, 'aziz', 'barhoumi', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 0, 'taxi', 4455, 'hahaha', 39),
(167, 1111, 'lll', 'ssss', 222, 'femme', NULL, NULL, NULL, NULL, NULL, NULL, 232, NULL, NULL),
(168, 1111, 'lll', 'ssss', 222, 'femme', NULL, NULL, NULL, NULL, NULL, NULL, 232, NULL, NULL),
(170, 13011288, 'Aziz', 'rajel', 98293289, 'homme', NULL, NULL, NULL, NULL, NULL, NULL, 3361448, NULL, NULL),
(171, 4874541, 'hechmi', 'mohamed', 98293289, 'homme', NULL, NULL, NULL, NULL, NULL, NULL, 122236, NULL, NULL),
(172, 4874541, 'hechmi', 'mohamed', 98293289, 'homme', NULL, NULL, NULL, NULL, NULL, NULL, 122236, NULL, NULL),
(174, 454, 'ffjf', 'fffff', 9694, 'homme', NULL, NULL, NULL, NULL, NULL, NULL, 44444, NULL, NULL),
(175, 1111, 'lll', 'ssss', 222, 'femme', NULL, NULL, NULL, NULL, NULL, NULL, 232, NULL, NULL),
(176, 1111, 'lll', 'ssss', 222, 'femme', NULL, NULL, NULL, NULL, NULL, NULL, 232, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `tel` int(255) NOT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `mdp` varchar(250) NOT NULL,
  `etat_compte` int(4) NOT NULL DEFAULT '0',
  `image` varbinary(6000) DEFAULT NULL,
  `mail` varchar(50) NOT NULL,
  `point` int(20) NOT NULL DEFAULT '0',
  `avertissement` int(5) NOT NULL DEFAULT '0',
  `cadeau` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `tel`, `adresse`, `mdp`, `etat_compte`, `image`, `mail`, `point`, `avertissement`, `cadeau`) VALUES
(46, 'samy', 'samy', 92108304, 'ennasr', 'hello', 0, NULL, 'samy.bejaoui@esprit.tn', 0, 1, 1),
(48, 'khalil', 'bejaoui', 1231, 'menzah 1', 'mdrlolmdr', 0, NULL, 'hh@hh', 0, 0, 0),
(50, 'khalil', 'bejaoui', 1231, 'menzah 1', '123412', 0, NULL, 'khalil@gmail.com', 0, 0, 0),
(122, 'barhoumi', 'mohamed', 1232, 'ariana', 'mdrlolmdr', 0, NULL, 'hh@hh', 0, 0, 0),
(181, 'alaa', 'dachraui', 54626266, NULL, '123456', 0, NULL, 'alaa', 0, 0, 0),
(183, 'dach', 'alaa', 54698456, NULL, '15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225', 0, NULL, 'alaa@', 0, 0, 0),
(184, 'aloulou', 'aloulou', 54262626, NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 0, NULL, 'alaaa', 0, 0, 0),
(185, 'iyadh', 'iyadh', 12334123, NULL, '662a8f78af0eeb99a4fc793547c50a97b31b53830401812ab71fcf0420afc3e9', 0, NULL, 'iyadhtajouri@esprit.tn', 0, 0, 0),
(205, 'barhoumi', 'aymen', 98293289, '11rue4760', '11111', 0, NULL, 'aymen.barhoumi@esprit.tn', 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

DROP TABLE IF EXISTS `formation`;
CREATE TABLE IF NOT EXISTS `formation` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `titre` varchar(40) NOT NULL,
  `lieu` varchar(40) NOT NULL,
  `time` varchar(20) NOT NULL,
  `nbr_place` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`id`, `date_debut`, `date_fin`, `titre`, `lieu`, `time`, `nbr_place`) VALUES
(76, '2020-02-19', '2020-02-20', 'ionic', 'tunis', '', 0),
(96, '0011-12-11', '0011-12-11', 'formation', 'tunis', '', 0),
(100, '2020-02-20', '2020-02-28', 'Gestion de stress', 'hotel moradi', '', 10),
(102, '0011-12-11', '0011-12-11', 'formation', 'ariana', '', 0),
(104, '2020-02-28', '2020-02-29', 'time Managment', 'manouba', '', 5),
(105, '0011-12-11', '0011-12-11', 'formation', 'ariana', '', 0),
(106, '0011-12-11', '0011-12-11', 'formation', 'ariana', '', 0),
(107, '2020-02-29', '2020-02-29', 'anglais', 'esprit', '10:00', 10),
(109, '2020-02-28', '2020-02-28', 'body luanguage', 'moradi ', '08:00', 14),
(111, '2020-02-27', '2020-02-27', 'body luanguage', 'tunis', '08:24', 0),
(112, '2020-02-27', '2020-02-28', 'ionic', 'tunis', '08:04', 5),
(113, '2020-02-18', '2020-02-20', 'ionic', 'tunis', '10:00', 7),
(117, '2020-02-27', '2020-02-28', 'Gestion de stress', 'tunis', '12:28', 12);

-- --------------------------------------------------------

--
-- Structure de la table `inscri_offre`
--

DROP TABLE IF EXISTS `inscri_offre`;
CREATE TABLE IF NOT EXISTS `inscri_offre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_offre` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_offreur` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_id_client_offre` (`id_client`),
  KEY `Fk_id_offreur_offre` (`id_offreur`),
  KEY `FK_id_offre` (`id_offre`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `inscri_offre`
--

INSERT INTO `inscri_offre` (`id`, `id_offre`, `id_client`, `id_offreur`) VALUES
(1, 73, 122, 46),
(3, 73, 50, 46);

-- --------------------------------------------------------

--
-- Structure de la table `meuble`
--

DROP TABLE IF EXISTS `meuble`;
CREATE TABLE IF NOT EXISTS `meuble` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `taille` varchar(50) NOT NULL,
  `prix` float NOT NULL,
  `id_reservation` int(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_meuble_reservation` (`id_reservation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

DROP TABLE IF EXISTS `note`;
CREATE TABLE IF NOT EXISTS `note` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `note` float NOT NULL,
  `id_client` int(20) NOT NULL,
  `id_chauffeur` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `note`
--

INSERT INTO `note` (`id`, `note`, `id_client`, `id_chauffeur`) VALUES
(1, 4, 46, 18),
(2, 4, 46, 18),
(3, 4, 46, 18),
(4, 4, 46, 18),
(5, 4, 46, 18),
(6, 4, 46, 18),
(7, 4, 46, 18),
(8, 4, 46, 18),
(9, 4, 46, 18),
(10, 4, 46, 18),
(11, 4, 46, 18),
(12, 4, 46, 18),
(13, 4, 46, 18),
(14, 4, 46, 18),
(15, 4, 46, 18),
(16, 4, 46, 18),
(17, 4, 46, 18),
(18, 4, 46, 18),
(19, 4, 46, 18),
(20, 4, 46, 18),
(21, 4, 46, 18),
(22, 4, 46, 18),
(23, 4, 46, 18),
(24, 4, 46, 18),
(25, 4, 46, 18),
(26, 4, 46, 18);

-- --------------------------------------------------------

--
-- Structure de la table `offre`
--

DROP TABLE IF EXISTS `offre`;
CREATE TABLE IF NOT EXISTS `offre` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `nb_place` int(250) NOT NULL,
  `depart` varchar(40) NOT NULL,
  `arrive` varchar(40) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(20) NOT NULL,
  `tarif` double NOT NULL,
  `id_offreur` int(50) NOT NULL,
  `id_client` int(50) DEFAULT NULL,
  `vehicule` varchar(30) NOT NULL,
  `bagage` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_offreur` (`id_offreur`),
  KEY `id_client` (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `offre`
--

INSERT INTO `offre` (`id`, `nb_place`, `depart`, `arrive`, `date`, `time`, `tarif`, `id_offreur`, `id_client`, `vehicule`, `bagage`) VALUES
(73, 3, 'tunis', 'ariana', '2020-02-28', '21:14:00.000000', 4, 46, 46, 'bmw', 'non'),
(75, 2, 'tunis', 'ariana', '2020-02-20', '21:55:00.000000', 3.2, 46, 46, 'mercedes', 'm'),
(76, 2, 'tunis', 'ariana', '2020-02-20', '10:55:00.000000', 3.2, 46, 46, 'mercedes', 'm'),
(77, 3, 'ariana', 'zaghouen', '2020-02-19', '22:59:00.000000', 4, 46, 46, 'peugeot', 's'),
(105, 2, 'eazeaze', 'aeazeaze', '2020-02-20', '21:09', 1, 46, 46, 'aeaz', 'non'),
(106, 2, 'eazeaead', 'dsqsqqd', '2020-02-20', '12:09', 1, 46, 46, 'eazeaz', 'm'),
(107, 3, 'wdadwa', 'dqsdqsd', '2020-02-20', '19:10', 11, 46, 46, 'za', 'm'),
(108, 4, 'ea', 'aeaz', '2020-02-20', '23:10', 1, 46, 46, 'eeaea', 's'),
(109, 4, 'eazea', 'aezaea', '2020-02-20', '18:10', 2, 46, 46, 'eaadfgg', 'non'),
(110, 3, 'bndab', 'bdbsnbdn', '2020-02-28', '21:05', 3, 46, 46, 'eaead', 'l'),
(117, 4, 'dasad', 'seazezaea', '2020-02-27', '16:57', 33, 46, 46, 'eazea', 'm'),
(118, 2, 'wddq', 'eaea', '2020-02-27', '19:04', 3, 46, 46, 'ds', 'm'),
(119, 2, 'eazezas', 'sqeqea', '2020-02-27', '16:06', 2, 46, 46, 'eas', 's'),
(120, 3, 'seqdsq', 'cvccv', '2020-02-27', '16:08', 3, 46, 46, 'dsqd', 'm'),
(121, 3, 'xcqxc', 'zaeaze', '2020-02-27', '18:38', 2, 46, 46, 'eads', 'm'),
(122, 2, 'dq', 'eaea', '2020-02-29', '19:46', 4, 46, 46, 'eaez', 'm'),
(123, 3, 'ezaeza', 'ezaa', '2020-02-21', '07:13', 23, 46, 46, 'zeae', 's'),
(124, 3, 'eaz', 'dqsq', '2020-02-28', '06:33', 2, 46, 46, 'eaea', 'l'),
(125, 4, 'esaf', 'ffafa', '2020-02-28', '04:36', 3, 46, 46, 'rrrz', 'm'),
(126, 4, 'adad', 'zeaea', '2020-02-29', '07:38', 3, 46, 46, 'red', 's'),
(127, 3, 'nbnb', 'nnbnbnn', '2020-02-28', '09:40', 4, 46, 46, 'fff', 's'),
(128, 3, 'klkl', 'klklkl', '2020-02-29', '05:43', 4, 46, 46, 'eaeaz', 'm'),
(129, 4, 'cxb', 'nbnqd', '2020-02-28', '05:49', 4, 46, 46, 'esaesa', 'm'),
(130, 4, 'xxcw', 'bnxbnq', '2020-02-28', '07:50', 3, 46, 46, 'ff', 's'),
(131, 3, 'bncxbnbv', 'nbdns', '2020-02-28', '04:52', 3, 46, 46, 'jkjkk', 'm'),
(132, 3, 'bvvb', 'vvbvb', '2020-02-28', '07:56', 3, 46, 46, 'lmlm', 'm'),
(133, 3, 'bvvb', 'vvbvb', '2020-02-28', '07:56', 3, 46, 46, 'lmlm', 'm'),
(134, 3, 'oppk', 'ppkpk', '2020-02-28', '05:01', 3, 46, 46, 'lalklds', 'm'),
(135, 3, 'npn', 'nnn', '2020-02-28', '04:04', 3, 46, 46, 'ppp', 'non'),
(136, 3, 'pllp', 'plplp', '2020-02-29', '08:05', 4, 46, 46, 'popo', 'non'),
(141, 2, 'tunis', 'zagh', '2020-02-27', '20:12', 3, 46, 46, 'aea', 'm'),
(142, 3, 'kasserine', 'ariana', '2020-02-27', '19:13', 3.5, 46, 46, 'ert', 's'),
(148, 4, 'menzah', 'tunis', '2020-02-28', '07:10', 3, 46, 46, 'aeae', 'm'),
(149, 3, 'menzah', 'nasr', '2020-02-27', '06:16', 4, 46, 46, 'mercedes', 'm');

-- --------------------------------------------------------

--
-- Structure de la table `participation`
--

DROP TABLE IF EXISTS `participation`;
CREATE TABLE IF NOT EXISTS `participation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_formation` int(11) NOT NULL,
  `id_chauffeur` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_id_chauffeur` (`id_chauffeur`),
  KEY `FK_id_formation` (`id_formation`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `participation`
--

INSERT INTO `participation` (`id`, `id_formation`, `id_chauffeur`) VALUES
(47, 76, 47),
(50, 102, 47),
(54, 104, 47),
(56, 76, 46),
(59, 76, 46),
(60, 96, 46),
(61, 76, 46),
(62, 112, 46),
(63, 106, 46),
(64, 111, 46),
(65, 112, 46),
(66, 112, 46),
(67, 112, 46),
(68, 112, 46),
(69, 112, 46),
(70, 112, 46),
(71, 112, 46),
(72, 112, 46),
(73, 112, 46),
(74, 112, 46),
(75, 104, 46),
(76, 109, 46),
(77, 104, 46);

-- --------------------------------------------------------

--
-- Structure de la table `postulation`
--

DROP TABLE IF EXISTS `postulation`;
CREATE TABLE IF NOT EXISTS `postulation` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `date_demande` date NOT NULL,
  `num_permis` int(30) NOT NULL,
  `cin` int(30) NOT NULL,
  `sexe` varchar(20) NOT NULL,
  `experience` varchar(20) NOT NULL,
  `Langue` varchar(20) NOT NULL,
  `id_client` int(20) NOT NULL,
  `tel` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_client` (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `postulation`
--

INSERT INTO `postulation` (`id`, `date_demande`, `num_permis`, `cin`, `sexe`, `experience`, `Langue`, `id_client`, `tel`, `nom`, `prenom`) VALUES
(40, '2020-02-25', 122236, 4874541, 'homme', '122236', 'Langue', 205, 98293289, 'hechmi', 'mohamed'),
(41, '2020-02-25', 122236, 4874541, 'homme', '122236', 'Langue', 205, 98293289, 'hechmi', 'mohamed'),
(42, '2020-02-25', 3361448, 13011288, 'homme', '3361448', 'francais', 205, 98293289, 'Aziz', 'rajel'),
(43, '2020-02-27', 12345, 123456, 'homme', '12345', 'francais', 205, 12345, 'aymen', 'barhoumi');

-- --------------------------------------------------------

--
-- Structure de la table `reclamation`
--

DROP TABLE IF EXISTS `reclamation`;
CREATE TABLE IF NOT EXISTS `reclamation` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `message` varchar(50) NOT NULL,
  `date_rec` date NOT NULL,
  `type` varchar(20) NOT NULL,
  `id_client` int(50) NOT NULL,
  `id_chauffeur` int(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_client` (`id_client`),
  KEY `id_chauffeur` (`id_chauffeur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `distance` double NOT NULL,
  `depart` varchar(50) NOT NULL,
  `arrive` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `id_chauffeur` int(50) NOT NULL,
  `id_client` int(50) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `tarif` float NOT NULL,
  `etat` int(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id_chauffeur` (`id_chauffeur`),
  KEY `id_client` (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

DROP TABLE IF EXISTS `vehicule`;
CREATE TABLE IF NOT EXISTS `vehicule` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `immatriculation` varchar(30) NOT NULL,
  `numero_assurance` int(20) NOT NULL,
  `marque` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `etat` int(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vehicule`
--

INSERT INTO `vehicule` (`id`, `immatriculation`, `numero_assurance`, `marque`, `type`, `etat`) VALUES
(39, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(40, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(41, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(42, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(43, '126 tunis 244444', 7777, 'Ford', 'Taxi', 1),
(44, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(45, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(46, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(47, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(48, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(49, '126 tunis 2030', 77777777, 'Ford', 'Taxi', 1),
(50, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(51, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(52, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(53, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(54, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(55, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(56, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(57, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(58, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(59, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(60, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(61, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(62, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(63, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(64, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(65, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(66, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(67, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(68, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(69, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(70, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(71, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(72, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(73, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(74, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(75, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(76, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(77, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(78, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(79, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(80, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(81, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(82, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(83, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(84, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(85, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(86, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(87, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(88, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(89, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(90, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(91, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(92, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(93, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(94, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(95, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(96, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(97, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(98, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(99, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(100, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(101, 'tunis', 1111, '555555', 'Taxi', 0),
(102, 'tunis', 1111, '555555', 'Camion', 0),
(103, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(104, 'tunis', 4444, 'fiat', 'Camion', 0),
(105, 'tunis', 4444, '1289', 'Taxi', 0),
(106, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(107, 'tunis', 55555, 'khalil', 'Taxi', 0),
(108, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(109, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(110, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(111, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(112, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(113, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(114, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(115, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(116, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(117, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(118, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(119, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `chauffeur`
--
ALTER TABLE `chauffeur`
  ADD CONSTRAINT `FK_id_vehicule` FOREIGN KEY (`id_vehicule`) REFERENCES `vehicule` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `inscri_offre`
--
ALTER TABLE `inscri_offre`
  ADD CONSTRAINT `FK_id_client_offre` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `FK_id_offre` FOREIGN KEY (`id_offre`) REFERENCES `offre` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_id_offreur_offre` FOREIGN KEY (`id_offreur`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `meuble`
--
ALTER TABLE `meuble`
  ADD CONSTRAINT `FK_meuble_reservation` FOREIGN KEY (`id_reservation`) REFERENCES `reservation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `offre`
--
ALTER TABLE `offre`
  ADD CONSTRAINT `FK_offre_client` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_offre_offreur` FOREIGN KEY (`id_offreur`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `participation`
--
ALTER TABLE `participation`
  ADD CONSTRAINT `FK_id_chauffeur` FOREIGN KEY (`id_chauffeur`) REFERENCES `chauffeur` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_id_formation` FOREIGN KEY (`id_formation`) REFERENCES `formation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `postulation`
--
ALTER TABLE `postulation`
  ADD CONSTRAINT `FK_client_post` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `reclamation`
--
ALTER TABLE `reclamation`
  ADD CONSTRAINT `FK_reclamation_chauffeur` FOREIGN KEY (`id_chauffeur`) REFERENCES `chauffeur` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_reclamation_client` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `FK_reservation_chauffeur` FOREIGN KEY (`id_chauffeur`) REFERENCES `chauffeur` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_reservation_client` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
