-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema dockernetworktestdb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dockernetworktestdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dockernetworktestdb` DEFAULT CHARACTER SET utf8 ;
USE `dockernetworktestdb` ;

-- -----------------------------------------------------
-- Table `dockernetworktestdb`.`animal`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dockernetworktestdb`.`animal` ;

CREATE TABLE IF NOT EXISTS `dockernetworktestdb`.`animal` (
  `name` VARCHAR(255) NOT NULL,
  `sound` VARCHAR(255) NULL,
  `number_of_legs` INT NULL,
  `has_tail` TINYINT NULL,
  `has_fur` TINYINT NULL,
  PRIMARY KEY (`name`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS dockernetworkuser;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'dockernetworkuser' IDENTIFIED BY 'user';

GRANT SELECT, INSERT, TRIGGER ON TABLE `dockernetworktestdb`.* TO 'dockernetworkuser';
GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE `dockernetworktestdb`.* TO 'dockernetworkuser';
GRANT SELECT ON TABLE `dockernetworktestdb`.* TO 'dockernetworkuser';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
