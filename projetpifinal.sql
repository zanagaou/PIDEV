-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 12 fév. 2020 à 16:36
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
('barhoumi', 'kalalalalal', 0, 'barhoumi@gmail.tn');

-- --------------------------------------------------------

--
-- Structure de la table `chauffeur`
--

DROP TABLE IF EXISTS `chauffeur`;
CREATE TABLE IF NOT EXISTS `chauffeur` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `cin` int(255) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `tel` int(255) NOT NULL,
  `sexe` varchar(20) NOT NULL,
  `date_naissance` date NOT NULL,
  `salaire` double NOT NULL,
  `note` float NOT NULL,
  `image` varbinary(6000) DEFAULT NULL,
  `etat_compte` int(11) NOT NULL DEFAULT '0',
  `role` varchar(20) NOT NULL,
  `num_permis` int(255) NOT NULL,
  `mdp` varchar(50) NOT NULL,
  `id_vehicule` int(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_vehicule` (`id_vehicule`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `chauffeur`
--

INSERT INTO `chauffeur` (`id`, `cin`, `nom`, `prenom`, `tel`, `sexe`, `date_naissance`, `salaire`, `note`, `image`, `etat_compte`, `role`, `num_permis`, `mdp`, `id_vehicule`) VALUES
(18, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 159.6001, 4.3, NULL, 1, 'taxi', 4455, 'hahaha', 39),
(19, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 1, 'taxi', 4455, 'hahaha', 39),
(20, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 1, 'taxi', 4455, 'hahaha', 39),
(25, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 1, 'taxi', 4455, 'hahaha', 39),
(26, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 1, 'taxi', 4455, 'hahaha', 39),
(27, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 1, 'taxi', 4455, 'hahaha', 39),
(28, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 1, 'taxi', 4455, 'hahaha', 39),
(29, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 1, 'taxi', 4455, 'hahaha', 39),
(30, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 1, 'taxi', 4455, 'hahaha', 39),
(31, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 1, 'taxi', 4455, 'hahaha', 39),
(32, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 1, 'taxi', 4455, 'hahaha', 39),
(33, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 1, 'taxi', 4455, 'hahaha', 39),
(34, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 1, 'taxi', 4455, 'hahaha', 39),
(35, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 1, 'taxi', 4455, 'hahaha', 39),
(36, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 1, 'taxi', 4455, 'hahaha', 39),
(37, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 1, 'taxi', 4455, 'hahaha', 39),
(38, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 1, 'taxi', 4455, 'hahaha', 39),
(39, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 1, 'taxi', 4455, 'hahaha', 39),
(40, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 1, 'taxi', 4455, 'hahaha', 39),
(41, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 1, 'taxi', 4455, 'hahaha', 39),
(42, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 1, 'taxi', 4455, 'hahaha', 39),
(43, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 1, 'taxi', 4455, 'hahaha', 39),
(44, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 1, 'taxi', 4455, 'hahaha', 39),
(45, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 1, 'taxi', 4455, 'hahaha', 39),
(46, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 1, 'taxi', 4455, 'hahaha', 39),
(47, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 1, 'taxi', 4455, 'hahaha', 39),
(48, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 1, 'taxi', 4455, 'hahaha', 39);

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
  `adresse` varchar(50) NOT NULL,
  `mdp` varchar(50) NOT NULL,
  `etat_compte` int(4) NOT NULL DEFAULT '0',
  `image` varbinary(6000) DEFAULT NULL,
  `mail` varchar(50) NOT NULL,
  `point` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `tel`, `adresse`, `mdp`, `etat_compte`, `image`, `mail`, `point`) VALUES
(44, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 21),
(46, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(48, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(50, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(52, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(54, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(56, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(58, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(60, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(62, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(64, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(66, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(68, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(70, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(72, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(74, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(76, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(78, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(80, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(82, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(84, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(86, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(88, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(90, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(92, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(94, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(96, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(98, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(100, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(102, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(104, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(106, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(108, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(110, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(112, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(114, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(116, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(118, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(120, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(122, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(124, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(126, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(128, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0);

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`id`, `date_debut`, `date_fin`, `titre`, `lieu`) VALUES
(1, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(2, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(3, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(4, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(5, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(6, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(7, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(8, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(9, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(10, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(11, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(12, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(13, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(14, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(15, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(16, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(17, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(18, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(19, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(20, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(21, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(22, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(23, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(24, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(25, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(26, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(27, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(28, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(29, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(30, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(31, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(32, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(33, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(34, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(35, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(36, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(37, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(38, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(39, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(40, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(41, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(42, '0011-12-11', '0011-12-11', 'formation', 'tunis');

-- --------------------------------------------------------

--
-- Structure de la table `meuble`
--

DROP TABLE IF EXISTS `meuble`;
CREATE TABLE IF NOT EXISTS `meuble` (
  `id` int(20) NOT NULL,
  `taille` varchar(50) NOT NULL,
  `quantite` int(20) NOT NULL,
  `prix` float NOT NULL,
  `id_reservation` int(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_meuble_reservation` (`id_reservation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `tarif` double NOT NULL,
  `id_offreur` int(50) NOT NULL,
  `id_client` int(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_offreur` (`id_offreur`),
  KEY `id_client` (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `offre`
--

INSERT INTO `offre` (`id`, `nb_place`, `depart`, `arrive`, `date`, `tarif`, `id_offreur`, `id_client`) VALUES
(1, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(2, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(3, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(4, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(5, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(6, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(7, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(8, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(9, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(10, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(11, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(12, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(13, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(14, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(15, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(16, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(17, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(18, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(19, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(20, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(21, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(22, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(23, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(24, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(25, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(26, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(27, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(28, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(29, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(30, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(31, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(32, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(33, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(34, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(35, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(36, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(37, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(38, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(39, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(40, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(41, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44),
(42, 4, 'kasserine', 'sousse', '0011-12-11', 4.2, 44, 44);

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
  `etat` int(4) NOT NULL DEFAULT '0',
  `id_client` int(20) NOT NULL,
  `cv_fichier` mediumblob,
  PRIMARY KEY (`id`),
  KEY `id_client` (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `postulation`
--

INSERT INTO `postulation` (`id`, `date_demande`, `num_permis`, `cin`, `sexe`, `etat`, `id_client`, `cv_fichier`) VALUES
(8, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL),
(9, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL),
(10, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL),
(11, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL),
(12, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL),
(13, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL),
(14, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL),
(15, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL),
(16, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL),
(17, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL),
(18, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL),
(19, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL),
(20, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL),
(21, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL),
(22, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL),
(23, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL),
(24, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL),
(25, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL),
(26, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL),
(27, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL),
(28, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL),
(29, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL),
(30, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL),
(31, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL),
(32, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL),
(33, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL),
(34, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL),
(35, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL),
(36, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL),
(37, '0011-12-11', 4512, 11223, 'homme', 1, 44, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `reclamation`
--

INSERT INTO `reclamation` (`id`, `message`, `date_rec`, `type`, `id_client`, `id_chauffeur`) VALUES
(15, 'chauffeurppp', '0011-12-11', 'chauffeur', 44, 18),
(16, 'chauffeurppp', '0011-12-11', 'chauffeur', 44, 18),
(17, 'chauffeurppp', '0011-12-11', 'chauffeur', 44, 18),
(18, 'chauffeurppp', '0011-12-11', 'chauffeur', 44, 18),
(19, 'chauffeurppp', '0011-12-11', 'chauffeur', 44, 18),
(20, 'chauffeurppp', '0011-12-11', 'chauffeur', 44, 18),
(21, 'chauffeurppp', '0011-12-11', 'chauffeur', 44, 18),
(22, 'chauffeurppp', '0011-12-11', 'chauffeur', 44, 18),
(23, 'chauffeurppp', '0011-12-11', 'chauffeur', 44, 18),
(24, 'chauffeurppp', '0011-12-11', 'chauffeur', 44, 18),
(25, 'chauffeurppp', '0011-12-11', 'chauffeur', 44, 18),
(26, 'chauffeurppp', '0011-12-11', 'chauffeur', 44, 18),
(27, 'chauffeurppp', '0011-12-11', 'chauffeur', 44, 18),
(28, 'chauffeurppp', '0011-12-11', 'chauffeur', 44, 18),
(29, 'chauffeurppp', '0011-12-11', 'chauffeur', 44, 18),
(30, 'chauffeurppp', '0011-12-11', 'chauffeur', 44, 18),
(31, 'chauffeurppp', '0011-12-11', 'chauffeur', 44, 18),
(32, 'chauffeurppp', '0011-12-11', 'chauffeur', 44, 18),
(33, 'chauffeurppp', '0011-12-11', 'chauffeur', 44, 18),
(34, 'chauffeurppp', '0011-12-11', 'chauffeur', 44, 18),
(35, 'chauffeurppp', '0011-12-11', 'chauffeur', 44, 18),
(36, 'chauffeurppp', '0011-12-11', 'chauffeur', 44, 18),
(37, 'chauffeurppp', '0011-12-11', 'chauffeur', 44, 18),
(38, 'chauffeurppp', '0011-12-11', 'chauffeur', 44, 18),
(39, 'chauffeurppp', '0011-12-11', 'chauffeur', 44, 18),
(40, 'chauffeurppp', '0011-12-11', 'chauffeur', 44, 18),
(41, 'chauffeurppp', '0011-12-11', 'chauffeur', 44, 18),
(42, 'chauffeurppp', '0011-12-11', 'chauffeur', 44, 18);

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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id`, `distance`, `depart`, `arrive`, `date`, `id_chauffeur`, `id_client`, `type`, `tarif`, `etat`) VALUES
(14, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(15, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(16, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(17, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(18, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(19, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(20, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(21, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(22, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(23, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(24, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(25, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(26, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(27, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(28, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(29, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(30, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(31, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(32, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(33, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(34, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(35, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(36, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(37, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(38, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(39, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(40, 22.3, 'tunis', 'monastir', '0011-12-11', 19, 44, 1, 0, 0),
(41, 22.3, 'tunis', 'monastir', '0011-12-11', 19, 44, 1, 0, 0),
(42, 22.3, 'tunis', 'monastir', '0011-12-11', 19, 44, 1, 0, 0),
(43, 22.3, 'tunis', 'monastir', '0011-12-11', 19, 44, 1, 0, 0),
(44, 22.3, 'tunis', 'monastir', '0011-12-11', 19, 44, 1, 0, 0),
(45, 22.3, 'tunis', 'monastir', '0011-12-11', 19, 44, 1, 0, 0),
(46, 22.3, 'tunis', 'monastir', '0011-12-11', 19, 44, 1, 0, 0),
(47, 22.3, 'tunis', 'monastir', '0011-12-11', 19, 44, 1, 0, 0),
(48, 22.3, 'tunis', 'monastir', '0011-12-11', 19, 44, 1, 0, 0),
(49, 22.3, 'tunis', 'monastir', '0011-12-11', 19, 44, 1, 0, 0),
(50, 22.3, 'tunis', 'monastir', '0011-12-11', 19, 44, 1, 0, 0),
(51, 22.3, 'tunis', 'monastir', '0011-12-11', 19, 44, 1, 0, 0),
(52, 22.3, 'tunis', 'monastir', '0011-12-11', 19, 44, 1, 0, 0),
(53, 22.3, 'tunis', 'monastir', '0011-12-11', 19, 44, 1, 0, 0),
(54, 22.3, 'tunis', 'monastir', '0011-12-11', 19, 44, 1, 0, 0),
(55, 22.3, 'tunis', 'monastir', '0011-12-11', 19, 44, 1, 0, 0),
(56, 22.3, 'tunis', 'monastir', '0011-12-11', 19, 44, 1, 0, 0),
(57, 22.3, 'tunis', 'monastir', '0011-12-11', 19, 44, 1, 0, 0),
(58, 22.3, 'tunis', 'monastir', '0011-12-11', 19, 44, 1, 0, 0),
(59, 22.3, 'tunis', 'monastir', '0011-12-11', 19, 44, 1, 0, 0),
(60, 22.3, 'tunis', 'monastir', '0011-12-11', 19, 44, 1, 0, 0),
(61, 22.3, 'tunis', 'monastir', '0011-12-11', 19, 44, 1, 0, 0),
(62, 22.3, 'monastir', 'sousse', '0011-12-11', 19, 44, 0, 0, 0),
(63, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(64, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(65, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(66, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(67, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(68, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(69, 22.3, 'tunis', 'monastir', '0011-12-11', 18, 44, 1, 0, 0),
(70, 22.3, 'monastir', 'sousse', '0011-12-11', 18, 44, 0, 0, 0);

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
  `etat` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vehicule`
--

INSERT INTO `vehicule` (`id`, `immatriculation`, `numero_assurance`, `marque`, `type`, `etat`) VALUES
(39, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(40, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(41, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(42, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(43, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(44, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(45, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(46, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(47, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(48, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
(49, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1),
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
(70, '126 tunis 2030', 1111, 'Ford', 'Taxi', 1);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `chauffeur`
--
ALTER TABLE `chauffeur`
  ADD CONSTRAINT `FK_id_vehicule` FOREIGN KEY (`id_vehicule`) REFERENCES `vehicule` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
