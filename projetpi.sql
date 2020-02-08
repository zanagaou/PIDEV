-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 08 fév. 2020 à 10:22
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `tel`, `adresse`, `mdp`, `etat_compte`, `image`, `mail`) VALUES
(44, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh'),
(66, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh');

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
  PRIMARY KEY (`id`),
  KEY `id_client` (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `postulation`
--

INSERT INTO `postulation` (`id`, `date_demande`, `num_permis`, `cin`, `sexe`, `etat`, `id_client`) VALUES
(12, '0011-12-11', 4512, 11223, 'homme', 1, 44);

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
  `etat` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vehicule`
--

INSERT INTO `vehicule` (`id`, `immatriculation`, `numero_assurance`, `marque`, `type`, `etat`) VALUES
(19, '126 tunis 2030', 1111, 'Ford', 'Taxi', 'mal'),
(20, '126 tunis 2030', 1111, 'Ford', 'Taxi', 'mal');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `chauffeur`
--
ALTER TABLE `chauffeur`
  ADD CONSTRAINT `FK_id_vehicule` FOREIGN KEY (`id_vehicule`) REFERENCES `vehicule` (`id`);

--
-- Contraintes pour la table `postulation`
--
ALTER TABLE `postulation`
  ADD CONSTRAINT `FK_client_post` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
