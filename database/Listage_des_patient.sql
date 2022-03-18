-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le : ven. 18 mars 2022 à 11:50
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `listage_des_patient`
--

DELIMITER $$
--
-- Procédures
--
DROP PROCEDURE IF EXISTS `add_historique`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_historique` (IN `id` INT(10), IN `nom` VARCHAR(45), IN `prenom` VARCHAR(45), IN `age` INT(10), IN `taille` INT(10), IN `poids` INT(10))  NO SQL
INSERT INTO `historique` (`id`, `nom`, `prenom`, `age`, `taille`, `poids`) VALUES (NULL, nom, prenom, age, taille, poids)$$

DROP PROCEDURE IF EXISTS `add_patient`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_patient` (IN `nom` VARCHAR(45), IN `prenom` VARCHAR(45), IN `age` INT(10), IN `taille` INT(10), IN `poids` INT(10))  NO SQL
INSERT INTO `patient` (`id`, `nom`, `prenom`, `age`, `taille`, `poids`) VALUES (NULL, nom, prenom, age, taille, poids)$$

DROP PROCEDURE IF EXISTS `del_patient`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `del_patient` (IN `id` INT(10))  NO SQL
DELETE FROM `patient` WHERE `patient`.`id` = id$$

DROP PROCEDURE IF EXISTS `modif_historique`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `modif_historique` (IN `id` INT(10), IN `nom` INT(45), IN `prenom` INT(45), IN `age` INT(10), IN `taille` INT(10), IN `poids` INT(10))  NO SQL
INSERT INTO `historique` (`id`, `id_patient`, `nom`, `prenom`, `age`, `taille`, `poids`) VALUES (NULL, id, nom, prenom, age, taille, poids)$$

DROP PROCEDURE IF EXISTS `modif_patient`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `modif_patient` (IN `id` INT(10), IN `nom` VARCHAR(45), IN `prenom` VARCHAR(45), IN `age` INT(10), IN `taille` INT(10), IN `poids` INT(10))  NO SQL
UPDATE `historique` SET `nom` = nom, `prenom` = prenom, `age` = age, `taille` = taille, `poids` = piods WHERE `historique`.`id` = id$$

DROP PROCEDURE IF EXISTS `patient`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `patient` ()  NO SQL
Select * FROM patient$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  `prenom` varchar(45) DEFAULT NULL,
  `age` int(10) DEFAULT NULL,
  `taille` int(10) DEFAULT NULL,
  `poids` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `patient`
--

INSERT INTO `patient` (`id`, `nom`, `prenom`, `age`, `taille`, `poids`) VALUES
(1, 'Teixeira1', 'alexandre1', 20, 166, 56);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
