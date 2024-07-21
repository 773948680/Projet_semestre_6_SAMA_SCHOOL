-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 21 juil. 2024 à 17:06
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `attendancemsystem`
--

-- --------------------------------------------------------

--
-- Structure de la table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `emailAddress` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `tbladmin`
--

INSERT INTO `tbladmin` (`Id`, `firstName`, `lastName`, `emailAddress`, `password`) VALUES
(1, 'Admin', '', 'admin@mail.com', 'D00F5D5217896FB7FD601412CB890830');

-- --------------------------------------------------------

--
-- Structure de la table `tblattendance`
--

CREATE TABLE `tblattendance` (
  `Id` int(10) NOT NULL,
  `admissionNo` varchar(255) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmId` varchar(10) NOT NULL,
  `sessionTermId` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `dateTimeTaken` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `tblattendance`
--

INSERT INTO `tblattendance` (`Id`, `admissionNo`, `classId`, `classArmId`, `sessionTermId`, `status`, `dateTimeTaken`) VALUES
(236, '3', '11', '31', '8', '0', '2024-07-19'),
(235, '2', '11', '31', '8', '0', '2024-07-19'),
(234, '1', '11', '31', '8', '0', '2024-07-19'),
(237, '4', '11', '31', '8', '0', '2024-07-19'),
(204, 'AMS110', '4', '6', '1', '1', '2024-07-13'),
(205, 'AMS133', '4', '6', '1', '1', '2024-07-13'),
(206, 'AMS135', '4', '6', '1', '1', '2024-07-13'),
(207, 'AMS144', '4', '6', '1', '1', '2024-07-13'),
(208, 'AMS148', '4', '6', '1', '1', '2024-07-13'),
(209, 'AMS151', '4', '6', '1', '1', '2024-07-13'),
(210, 'AMS159', '4', '6', '1', '0', '2024-07-13'),
(211, 'AMS161', '4', '6', '1', '0', '2024-07-13'),
(212, 'AMS110', '4', '6', '1', '1', '2024-07-14'),
(213, 'AMS133', '4', '6', '1', '1', '2024-07-14'),
(214, 'AMS135', '4', '6', '1', '1', '2024-07-14'),
(215, 'AMS144', '4', '6', '1', '1', '2024-07-14'),
(216, 'AMS148', '4', '6', '1', '1', '2024-07-14'),
(217, 'AMS151', '4', '6', '1', '1', '2024-07-14'),
(218, 'AMS159', '4', '6', '1', '0', '2024-07-14'),
(219, 'AMS161', '4', '6', '1', '0', '2024-07-14'),
(220, 'AMS005', '5', '7', '1', '1', '2024-07-14'),
(221, 'AMS0015', '10', '16', '1', '1', '2024-07-14'),
(222, 'AMS0015', '10', '16', '5', '1', '2024-07-16'),
(223, 'AMS0015', '10', '18', '6', '1', '2024-07-16'),
(224, 'AMS0018', '10', '18', '6', '1', '2024-07-16'),
(225, 'AMS0019', '10', '18', '6', '1', '2024-07-16'),
(226, 'AMS0015', '10', '18', '7', '1', '2024-07-18'),
(227, 'AMS0018', '10', '18', '7', '1', '2024-07-18'),
(228, 'AMS0019', '10', '18', '7', '1', '2024-07-18'),
(229, 'AMS0017', '10', '18', '7', '1', '2024-07-18'),
(230, '1', '11', '31', '8', '0', '2024-07-18'),
(231, '2', '11', '31', '8', '1', '2024-07-18'),
(232, '3', '11', '31', '8', '1', '2024-07-18'),
(233, '4', '11', '31', '8', '0', '2024-07-18');

-- --------------------------------------------------------

--
-- Structure de la table `tblclass`
--

CREATE TABLE `tblclass` (
  `Id` int(10) NOT NULL,
  `className` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `tblclass`
--

INSERT INTO `tblclass` (`Id`, `className`) VALUES
(15, 'Premier S2'),
(14, 'Terminale L2'),
(13, 'Second L2'),
(12, 'Terminale S2'),
(11, 'Premier L2'),
(10, 'Second S2');

-- --------------------------------------------------------

--
-- Structure de la table `tblclassarms`
--

CREATE TABLE `tblclassarms` (
  `Id` int(10) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmName` varchar(255) NOT NULL,
  `isAssigned` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `tblclassarms`
--

INSERT INTO `tblclassarms` (`Id`, `classId`, `classArmName`, `isAssigned`) VALUES
(28, '12', 'Philosophie', '0'),
(27, '14', 'HG', '0'),
(26, '14', 'Math', '0'),
(25, '14', 'Philosophie', '0'),
(24, '11', 'Français', '0'),
(22, '15', 'SVT', '1'),
(21, '15', 'PC', '0'),
(23, '11', 'HG', '0'),
(20, '11', 'Anglais', '0'),
(19, '15', 'Français', '0'),
(18, '10', 'Math', '1'),
(17, '10', 'HG', '0'),
(16, '10', 'Histoire', '1'),
(29, '12', 'PC', '0'),
(30, '12', 'SVT', '0'),
(31, '11', 'Arabe', '1');

-- --------------------------------------------------------

--
-- Structure de la table `tblclassteacher`
--

CREATE TABLE `tblclassteacher` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phoneNo` varchar(50) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmId` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `tblclassteacher`
--

INSERT INTO `tblclassteacher` (`Id`, `firstName`, `lastName`, `emailAddress`, `password`, `phoneNo`, `classId`, `classArmId`, `dateCreated`) VALUES
(7, 'Alpha', 'DIALLO', 'alpha@gmail.com', '32250170a0dca92d53ec9624f336ca24', '776543212', '5', '7', '2024-07-14'),
(8, 'Mariame', 'DIA', 'mariame@gmail.com', '32250170a0dca92d53ec9624f336ca24', '765432112', '10', '16', '2024-07-14'),
(9, 'Salif', 'Seck', 'seck@gmail.com', '32250170a0dca92d53ec9624f336ca24', '765432112', '15', '22', '2024-07-16'),
(10, 'Mariame', 'DIA', 'mariae@gmail.com', '32250170a0dca92d53ec9624f336ca24', '765432119', '10', '18', '2024-07-16'),
(11, 'Matar', 'SARR', 'sarr@gmail.com', '32250170a0dca92d53ec9624f336ca24', '9088855444', '11', '31', '2024-07-18');

-- --------------------------------------------------------

--
-- Structure de la table `tblsessionterm`
--

CREATE TABLE `tblsessionterm` (
  `Id` int(10) NOT NULL,
  `sessionName` varchar(50) NOT NULL,
  `termId` varchar(50) NOT NULL,
  `isActive` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `tblsessionterm`
--

INSERT INTO `tblsessionterm` (`Id`, `sessionName`, `termId`, `isActive`, `dateCreated`) VALUES
(8, '2024/12/12', '2', '1', '2024-07-18'),
(7, 'Session', '1', '0', '2024-07-16');

-- --------------------------------------------------------

--
-- Structure de la table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `otherName` varchar(255) NOT NULL,
  `admissionNumber` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmId` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `tblstudents`
--

INSERT INTO `tblstudents` (`Id`, `firstName`, `lastName`, `otherName`, `admissionNumber`, `password`, `classId`, `classArmId`, `dateCreated`) VALUES
(18, 'Aziz', 'Diop', '', 'AMS0015', '12345', '10', '16', '2024-07-14'),
(19, 'Aziz', 'Diop', '', 'AMS0015', '12345', '10', '18', '2024-07-16'),
(20, 'Mariame', 'DIA', '', 'AMS0018', '12345', '10', '18', '2024-07-16'),
(21, 'Alpha', 'DIALLO', '', 'AMS0019', '12345', '10', '18', '2024-07-16'),
(22, 'Faty', 'KA', '', 'AMS0016', '12345', '10', '', '2024-07-16'),
(23, 'Faty', 'KA', '', 'AMS0017', '12345', '10', '18', '2024-07-16'),
(24, 'Ouseynou', 'BA', '', '1', '12345', '11', '31', '2024-07-18'),
(25, 'Tapha', 'Marr', '', '2', '12345', '11', '31', '2024-07-18'),
(26, 'SAMBA', 'Camara', '', '3', '12345', '11', '31', '2024-07-18'),
(27, 'Tidiane', 'Ndao', '', '4', '12345', '11', '31', '2024-07-18');

-- --------------------------------------------------------

--
-- Structure de la table `tblterm`
--

CREATE TABLE `tblterm` (
  `Id` int(10) NOT NULL,
  `termName` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `tblterm`
--

INSERT INTO `tblterm` (`Id`, `termName`) VALUES
(1, 'First'),
(2, 'Second'),
(3, 'Third');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `tblattendance`
--
ALTER TABLE `tblattendance`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `tblclass`
--
ALTER TABLE `tblclass`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `tblclassarms`
--
ALTER TABLE `tblclassarms`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `tblclassteacher`
--
ALTER TABLE `tblclassteacher`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `tblsessionterm`
--
ALTER TABLE `tblsessionterm`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `tblterm`
--
ALTER TABLE `tblterm`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tblattendance`
--
ALTER TABLE `tblattendance`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT pour la table `tblclass`
--
ALTER TABLE `tblclass`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `tblclassarms`
--
ALTER TABLE `tblclassarms`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `tblclassteacher`
--
ALTER TABLE `tblclassteacher`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `tblsessionterm`
--
ALTER TABLE `tblsessionterm`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `tblterm`
--
ALTER TABLE `tblterm`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
