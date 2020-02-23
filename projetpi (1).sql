-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  Dim 23 fév. 2020 à 09:48
-- Version du serveur :  5.7.28
-- Version de PHP :  7.3.12

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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `chauffeur`
--

INSERT INTO `chauffeur` (`id`, `cin`, `nom`, `prenom`, `tel`, `sexe`, `date_naissance`, `salaire`, `note`, `image`, `etat_compte`, `role`, `num_permis`, `mdp`, `id_vehicule`) VALUES
(20, 1, '1', '1', 1, '1', '2020-02-05', 1, 1, NULL, 0, '1', 1, '1', 99),
(99, 99, 'ammar', 'jabalou', 99, 'homme', '2020-02-05', 500, 1, NULL, 0, 'Taxi', 1234, '1234', 98);

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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `tel`, `adresse`, `mdp`, `etat_compte`, `image`, `mail`, `point`) VALUES
(175, 'samy', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(176, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(177, 'samy', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(178, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(179, 'samy', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(180, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(181, 'samy', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(182, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(183, 'samy', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(184, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(185, 'samy', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0),
(186, 'khalil', 'bejaoui', 1231, 'menzah 1', 'hello', 0, NULL, 'hh@hh', 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

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
(42, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(43, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(44, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(45, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(46, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(47, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(48, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(49, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(50, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(51, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(52, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(53, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(54, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(55, '0011-12-11', '0011-12-11', 'formation', 'tunis'),
(56, '0011-12-11', '0011-12-11', 'formation', 'ariana'),
(57, '0011-12-11', '0011-12-11', 'formation', 'ariana'),
(58, '0011-12-11', '0011-12-11', 'formation', 'ariana'),
(59, '0011-12-11', '0011-12-11', 'formation', 'ariana'),
(60, '0011-12-11', '0011-12-11', 'formation', 'ariana'),
(61, '0011-12-11', '0011-12-11', 'formation', 'ariana'),
(62, '0011-12-11', '0011-12-11', 'formation', 'ariana'),
(63, '0011-12-11', '0011-12-11', 'formation', 'ariana'),
(64, '0011-12-11', '0011-12-11', 'formation', 'ariana'),
(65, '0011-12-11', '0011-12-11', 'formation', 'ariana'),
(66, '0011-12-11', '0011-12-11', 'formation', 'ariana'),
(67, '0011-12-11', '0011-12-11', 'formation', 'ariana'),
(68, '0011-12-11', '0011-12-11', 'formation', 'ariana'),
(69, '0011-12-11', '0011-12-11', 'formation', 'ariana'),
(70, '0011-12-11', '0011-12-11', 'formation', 'ariana'),
(71, '0011-12-11', '0011-12-11', 'formation', 'ariana');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `meuble`
--

INSERT INTO `meuble` (`id`, `taille`, `prix`, `id_reservation`) VALUES
(50, 'grande', 10, 1),
(60, 'grande', 1, 188),
(61, 'grande', 1, 189),
(62, 'grande', 1, 192);

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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

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
(26, 4, 46, 18),
(27, 4, 46, 18),
(28, 4, 46, 18),
(29, 4, 46, 18);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `type` varchar(50) NOT NULL,
  `tarif` float NOT NULL,
  `etat` int(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id_chauffeur` (`id_chauffeur`),
  KEY `id_client` (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id`, `distance`, `depart`, `arrive`, `date`, `id_chauffeur`, `id_client`, `type`, `tarif`, `etat`) VALUES
(1, 20, 'aa', 'bb', '2020-02-19', 20, 184, 'Transporteur', 1, 1),
(2, 2, '2', '2', '2020-02-05', 99, 182, 'Transporteur', 22, 1),
(171, 45.4, '9', '9', '2020-02-19', 99, 180, 'Transporteur', 45.4, 1),
(173, 45.4, '7', '4444', '2020-02-19', 99, 180, 'Transporteur', 0, 0),
(175, 45.4, '4', '4', '2020-02-19', 99, 180, 'Transporteur', 45.4, 1),
(177, 45.4, '66', '66', '2020-02-19', 99, 180, 'Transporteur', 45.4, 1),
(178, 45.4, '888', '888', '2020-02-20', 99, 180, 'Transporteur', 45.4, 1),
(179, 45.4, '6', '6', '2020-02-20', 99, 180, 'taxi', 45.4, 1),
(180, 45.4, '', '', '2020-02-20', 99, 180, 'taxi', 45.4, 1),
(181, 45.4, '', '', '2020-02-20', 99, 180, 'taxi', 45.4, 1),
(182, 45.4, '9999', '9999', '2020-02-20', 99, 180, 'Transporteur', 45.4, 1),
(183, 45.4, '98', '98', '2020-02-20', 99, 180, 'Transporteur', 45.4, 1),
(184, 45.4, '9', '8', '2020-02-20', 99, 180, 'Transporteur', 45.4, 1),
(185, 45.4, '8', '8', '2020-02-20', 99, 180, 'taxi', 45.4, 1),
(188, 45.4, '', '', '2020-02-20', 99, 180, 'Transporteur', 45.4, 1),
(189, 45.4, '77', '77', '2020-02-20', 99, 180, 'Transporteur', 45.4, 1),
(192, 45.4, 'nabeul', 'zaghouan', '2020-02-20', 99, 180, 'Transporteur', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `test`
--

DROP TABLE IF EXISTS `test`;
CREATE TABLE IF NOT EXISTS `test` (
  `login` varchar(20) NOT NULL,
  `mdp` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `test`
--

INSERT INTO `test` (`login`, `mdp`) VALUES
('aa', 'aa'),
('ttt', 'ghjk'),
('k', 'k'),
('MM', 'HHHGGG');

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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vehicule`
--

INSERT INTO `vehicule` (`id`, `immatriculation`, `numero_assurance`, `marque`, `type`, `etat`) VALUES
(98, '126 tunis 2030', 1111, 'Ford', 'Taxi', 0),
(99, '456tunis1', 22, 'fff', 'Camion', 0);

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
