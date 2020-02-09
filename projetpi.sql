-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 09 fév. 2020 à 14:31
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
('aziz', 'test', 0, 'test@esprit.tn');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `chauffeur`
--

INSERT INTO `chauffeur` (`id`, `cin`, `nom`, `prenom`, `tel`, `sexe`, `date_naissance`, `salaire`, `note`, `image`, `etat_compte`, `role`, `num_permis`, `mdp`, `id_vehicule`) VALUES
(6, 1133, 'aziz', 'alaa', 55231, 'homme', '0011-12-11', 133.2, 4.3, NULL, 1, 'taxi', 4455, 'hahaha', 28);

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
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `tel`, `adresse`, `mdp`, `etat_compte`, `image`, `mail`) VALUES
(44, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

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
  PRIMARY KEY (`id`),
  KEY `id_chauffeur` (`id_chauffeur`),
  KEY `id_client` (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vehicule`
--

INSERT INTO `vehicule` (`id`, `immatriculation`, `numero_assurance`, `marque`, `type`, `etat`) VALUES
(28, '126 tunis 2030', 1111, 'Ford', 'Taxi', 'mal');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `chauffeur`
--
ALTER TABLE `chauffeur`
  ADD CONSTRAINT `FK_id_vehicule` FOREIGN KEY (`id_vehicule`) REFERENCES `vehicule` (`id`);

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
