-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 25 juin 2019 à 23:18
-- Version du serveur :  10.1.40-MariaDB
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `api`
--

-- --------------------------------------------------------

--
-- Structure de la table `sujet`
--

CREATE TABLE `sujet` (
  `id` int(11) NOT NULL,
  `universite` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `departement` varchar(255) NOT NULL,
  `semestre` varchar(255) NOT NULL,
  `cession` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `enseignant` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sujet`
--

INSERT INTO `sujet` (`id`, `universite`, `type`, `departement`, `semestre`, `cession`, `url`, `enseignant`) VALUES
(1, 'Institut Supérieur des Etudes Technologiques de Djerba', 'Examen TP', 'Technologie de de l\'informatique', 'Semestre 2', '2018-2019', 'http://localhost/api/images/examenTP-L2DSI_Mai_2019.png', 'M.Anis Assas'),
(2, 'Institut Supérieur des Etudes Technologiques de Djerba', 'Devoir de contrôle', 'Technologie de l\'Informatique', 'Semestre 1', '2018-2019', 'api/images/csharpdc.pdf', 'M. Mohamed Ourir Raouf'),
(3, 'Institut Supérieur des Etudes Technologiques de Djerba', 'Devoir de synthèse', 'Technologie de l\'Informatique', 'Semestre 2', '2018-2019', 'api/images/plsql.pdf', 'M. Ben Hassane');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `sujet`
--
ALTER TABLE `sujet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `sujet`
--
ALTER TABLE `sujet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
