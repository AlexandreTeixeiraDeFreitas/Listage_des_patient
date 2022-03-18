-- MySQL Script generated by MySQL Workbench
-- Fri Mar 18 10:00:53 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema Listage_des_patient
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Listage_des_patient
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Listage_des_patient` DEFAULT CHARACTER SET utf8 ;
USE `Listage_des_patient` ;

-- -----------------------------------------------------
-- Table `Listage_des_patient`.`Patient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Listage_des_patient`.`Patient` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NULL,
  `prenom` VARCHAR(45) NULL,
  `age` INT(10) NULL,
  `taille` INT(10) NULL,
  `poids` INT(10) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Listage_des_patient`.`Historique`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Listage_des_patient`.`Historique` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_patient` INT NOT NULL,
  `nom` VARCHAR(45) NULL,
  `prenom` VARCHAR(45) NULL,
  `age` INT(10) NULL,
  `taille` INT(10) NULL,
  `poids` INT(10) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Historique_Pacient_idx` (`id_patient` ASC) VISIBLE,
  CONSTRAINT `fk_Historique_Pacient`
    FOREIGN KEY (`id_patient`)
    REFERENCES `Listage_des_patient`.`Patient` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

Aff : Select * FROM patient;

add : INSERT INTO `patient` (`id`, `nom`, `prenom`, `age`, `taille`, `poids`) VALUES (NULL, 'Teixeira', 'alexandre', '19', '165', '55');
INSERT INTO `historique` (`id`, `id_patient`, `nom`, `prenom`, `age`, `taille`, `poids`) VALUES (NULL, '1', 'Teixeira', 'alexandre', '19', '165', '55');

modif : UPDATE `historique` SET `nom` = 'Teixeira1', `prenom` = 'alexandre1', `age` = '20', `taille` = '166', `poids` = '56' WHERE `historique`.`id` = 1;
INSERT INTO `historique` (`id`, `id_patient`, `nom`, `prenom`, `age`, `taille`, `poids`) VALUES (NULL, '1', 'Teixeira1', 'alexandre1', '20', '166', '56');

del : DELETE FROM `patient` WHERE `patient`.`id` = 1;