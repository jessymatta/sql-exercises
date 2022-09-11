SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema studentsdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `studentsdb` DEFAULT CHARACTER SET utf8 ;
USE `studentsdb` ;

-- -----------------------------------------------------
-- Table `studentsdb`.`student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `studentsdb`.`student` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `studentsdb`.`department`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `studentsdb`.`department` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `office` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `studentsdb`.`room`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `studentsdb`.`room` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `capacity` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `studentsdb`.`course`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `studentsdb`.`course` (
  `crn` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `start_time` DATE NULL,
  `end_time` DATE NULL,
  `room_id` INT NOT NULL,
  PRIMARY KEY (`crn`, `room_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `studentsdb`.`majorsIn`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `studentsdb`.`majorsIn` (
  `student_id` INT NOT NULL,
  `dept_id` INT NOT NULL,
  PRIMARY KEY (`student_id`, `dept_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `studentsdb`.`enrolled`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `studentsdb`.`enrolled` (
  `student_id` INT NOT NULL,
  `course_crn` INT NOT NULL,
  `credit_status` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`student_id`, `course_crn`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
