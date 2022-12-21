-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 21 déc. 2022 à 14:09
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `societe`
--

-- --------------------------------------------------------

--
-- Structure de la table `employes`
--

CREATE TABLE `employes` (
  `EMPNO` int(11) NOT NULL,
  `EMPNOM` varchar(35) NOT NULL,
  `EMPPREN` varchar(35) NOT NULL,
  `EMPSEXE` varchar(1) NOT NULL,
  `EMPSALAIRE` double DEFAULT NULL,
  `EMPPRIME` double DEFAULT NULL,
  `SRVNO` smallint(6) NOT NULL,
  `CHEFSRV` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `employes`
--

INSERT INTO `employes` (`EMPNO`, `EMPNOM`, `EMPPREN`, `EMPSEXE`, `EMPSALAIRE`, `EMPPRIME`, `SRVNO`, `CHEFSRV`) VALUES
(0, 'Nomtest', 'Prenomtest', 'M', 7777.777, 777.777, 4, NULL),
(1, 'LEBOSS', 'GILLES', 'M', 6860, 762.25, 1, 0),
(2, 'ORGAN', 'INGRID', 'F', 5336, 846.93, 1, 0),
(3, 'DUPLAFOND', 'GREGOIRE', 'M', 5336, 846.93, 1, 0),
(4, 'VENDUE', 'ROSALIE', 'F', 3048.98, 152.45, 2, 0),
(5, 'DUDESERT', 'RAISSA', 'F', 3048.98, 152.45, 2, 0),
(6, 'LEBLOND', 'BERTRAND', 'M', 914.69, 76.22, 2, 0),
(7, 'LABELLE', 'REINE', 'F', 2744.08, 152.45, 3, 0),
(8, 'LEDUR', 'ALAIN', 'M', 1524.49, 686.02, 3, 0),
(9, 'DUPONT', 'INES', 'F', 914.69, 152.49, 3, 0),
(10, 'DUMONT', 'ADELPHE', 'M', 2286.74, 228.67, 4, 0),
(11, 'LEROUX', 'APPOLIN', 'M', 1524.49, 228.67, 4, 0),
(12, 'LEDUR', 'AIME', 'M', 990.92, 15.32, 4, 0),
(13, 'LEBON', 'ROLAND', 'M', 914.609, 30.51, 4, 0),
(14, 'LABRUTE', 'EDITH', 'M', 838.55, 15.32, 4, 0),
(15, 'DESTIN', 'RENAID', 'M', 2439.18, 152.45, 5, 0),
(16, 'DUJARDIN', 'NADEGE', 'F', 609.8, 152.45, 5, 0),
(17, 'BRILLES', 'EMILIE', 'F', 761.25, 30.49, 5, 0),
(18, 'LEBRUN', 'DAVY', 'M', 731.76, 152.45, 5, 0),
(19, 'LEGRAND', 'MATHIEU', 'M', 762.25, 152.45, 5, 0),
(20, 'DESPLANT', 'MAURICE', 'M', 1006.19, 84.69, 6, 0),
(21, 'GRANCHEF', 'YAKA', 'M', 1111.11, 111.11, 1, 1),
(22, 'FÉLÉCOURS', 'YVES', 'M', 2222.22, 222.22, 2, 1),
(23, 'MAOUANE', 'ASSIBA', 'F', 3333.33, 333.33, 3, 1),
(24, 'TEUSE', 'ISABELLE', 'F', 4444.44, 444.44, 4, 1),
(25, 'LAPLOMB', 'JÉRÉMY', 'M', 5555.55, 555.55, 5, 1),
(26, 'PALHERBE', 'GASTON', 'M', 6666.66, 666.66, 6, 1),
(27, 'a', 'a', 'M', 2, 2, 1, 0),
(28, 'a', 'a', 'M', 1, 1, 1, 0),
(29, 'a', 'a', 'M', 2, 2, 1, 0),
(30, 'a', 'a', 'M', 2, 2, 1, 0),
(31, 'a', 'a', 'M', 2, 2, 1, 0),
(32, 'f', 'f', 'M', 3, 3, 1, 0),
(33, 'a', 'a', 'M', 11, 11, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `intervenir`
--

CREATE TABLE `intervenir` (
  `PROJNO` int(11) NOT NULL,
  `EMPNO` int(11) NOT NULL,
  `NBHEURES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `intervenir`
--

INSERT INTO `intervenir` (`PROJNO`, `EMPNO`, `NBHEURES`) VALUES
(1, 9, 15),
(1, 13, 8),
(1, 14, 8),
(1, 15, 24),
(1, 17, 50),
(2, 14, 70),
(2, 19, 70),
(2, 20, 70),
(3, 6, 10),
(3, 14, 16),
(3, 15, 80),
(3, 20, 85);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `project120`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `project120` (
`PROJLIB` varchar(35)
);

-- --------------------------------------------------------

--
-- Structure de la table `projets`
--

CREATE TABLE `projets` (
  `PROJNO` int(11) NOT NULL,
  `PROJLIB` varchar(35) NOT NULL,
  `SRVNO` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `projets`
--

INSERT INTO `projets` (`PROJNO`, `PROJLIB`, `SRVNO`) VALUES
(1, 'CENTRE VILLE', 5),
(2, 'NOUVPISCINE', 4),
(3, 'EAUPURIFIEE', 6);

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `SRVNO` smallint(6) NOT NULL,
  `SRVNOM` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`SRVNO`, `SRVNOM`) VALUES
(1, 'DIRECTION'),
(2, 'COMMERCIAL'),
(3, 'COMPTABILITE'),
(4, 'TERRASSEMENT'),
(5, 'MACONNERIE'),
(6, 'ESPACES VERTS');

-- --------------------------------------------------------

--
-- Structure de la vue `project120`
--
DROP TABLE IF EXISTS `project120`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `project120`  AS SELECT `projets`.`PROJLIB` AS `PROJLIB` FROM (`projets` join `intervenir`) WHERE `projets`.`PROJNO` = `intervenir`.`PROJNO` HAVING count(`intervenir`.`NBHEURES`) > 120120  ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `employes`
--
ALTER TABLE `employes`
  ADD PRIMARY KEY (`EMPNO`),
  ADD KEY `SRVNO` (`SRVNO`);

--
-- Index pour la table `intervenir`
--
ALTER TABLE `intervenir`
  ADD PRIMARY KEY (`PROJNO`,`EMPNO`),
  ADD KEY `EMPNO` (`EMPNO`);

--
-- Index pour la table `projets`
--
ALTER TABLE `projets`
  ADD PRIMARY KEY (`PROJNO`),
  ADD KEY `SRVNO` (`SRVNO`);

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`SRVNO`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `employes`
--
ALTER TABLE `employes`
  ADD CONSTRAINT `employes_ibfk_1` FOREIGN KEY (`SRVNO`) REFERENCES `services` (`SRVNO`);

--
-- Contraintes pour la table `intervenir`
--
ALTER TABLE `intervenir`
  ADD CONSTRAINT `intervenir_ibfk_1` FOREIGN KEY (`PROJNO`) REFERENCES `projets` (`PROJNO`),
  ADD CONSTRAINT `intervenir_ibfk_2` FOREIGN KEY (`EMPNO`) REFERENCES `employes` (`EMPNO`);

--
-- Contraintes pour la table `projets`
--
ALTER TABLE `projets`
  ADD CONSTRAINT `projets_ibfk_1` FOREIGN KEY (`SRVNO`) REFERENCES `services` (`SRVNO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
