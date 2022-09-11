SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema moviesdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `moviesdb` DEFAULT CHARACTER SET utf8 ;
USE `moviesdb` ;

-- -----------------------------------------------------
-- Table `moviesdb`.`person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `moviesdb`.`person` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `dof` DATE NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `moviesdb`.`movie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `moviesdb`.`movie` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `year` VARCHAR(45) NOT NULL,
  `runtime_in_minutes` INT NOT NULL,
  `genre` VARCHAR(45) NOT NULL,
  `earnings_rank` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `moviesdb`.`oscar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `moviesdb`.`oscar` (
  `type` VARCHAR(45) NOT NULL,
  `year` INT NOT NULL,
  `movie_id` INT NOT NULL,
  `person_id` INT NOT NULL,
  PRIMARY KEY (`movie_id`, `person_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `moviesdb`.`actor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `moviesdb`.`actor` (
  `actor_id` INT NOT NULL,
  `movie_id` INT NOT NULL,
  PRIMARY KEY (`actor_id`, `movie_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `moviesdb`.`director`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `moviesdb`.`director` (
  `director_id` INT NOT NULL,
  `movie_id` INT NOT NULL,
  PRIMARY KEY (`director_id`, `movie_id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
