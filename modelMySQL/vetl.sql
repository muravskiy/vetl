-- MySQL Script generated by MySQL Workbench
-- 12/22/15 11:19:47
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema vetl
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema vetl
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `vetl` DEFAULT CHARACTER SET utf8 ;
USE `vetl` ;

-- -----------------------------------------------------
-- Table `vetl`.`typelocality`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vetl`.`typelocality` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_locality` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vetl`.`locality`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vetl`.`locality` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `locality` VARCHAR(45) NOT NULL,
  `type_locality_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tbl_locality_tbl_type_locality_idx` (`type_locality_id` ASC),
  CONSTRAINT `fk_locality_typelocality`
    FOREIGN KEY (`type_locality_id`)
    REFERENCES `vetl`.`typelocality` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vetl`.`hazardcategory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vetl`.`hazardcategory` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `hazard_category` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vetl`.`facility`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vetl`.`facility` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `facility` VARCHAR(45) NOT NULL,
  `hazard_category_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tbl_facility_tbl_hazard_category_idx` (`hazard_category_id` ASC),
  CONSTRAINT `fk_facility_hazardcategory`
    FOREIGN KEY (`hazard_category_id`)
    REFERENCES `vetl`.`hazardcategory` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vetl`.`brigada`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vetl`.`brigada` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `room_brigade` VARCHAR(45) NOT NULL,
  `last_name_SHNS` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vetl`.`measuringinstrument`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vetl`.`measuringinstrument` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_measuring_instrument` VARCHAR(45) NOT NULL,
  `serial_number` VARCHAR(45) NULL,
  `inventory_number` VARCHAR(45) NULL,
  `calibration_date` DATE NOT NULL,
  `number_certificate` VARCHAR(45) NOT NULL,
  `calibration_interval` VARCHAR(45) NOT NULL,
  `next_calibration` DATE NOT NULL,
  `notices` VARCHAR(1024) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vetl`.`typeobject`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vetl`.`typeobject` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_object` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vetl`.`nameobject`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vetl`.`nameobject` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_object` VARCHAR(254) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vetl`.`object`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vetl`.`object` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_object_id` INT UNSIGNED NOT NULL,
  `tbl_name_object_id` INT UNSIGNED NOT NULL,
  `tbl_brigada_id` INT UNSIGNED NOT NULL,
  `inventory_number` VARCHAR(45) NULL,
  `tbl_locality_id` INT UNSIGNED NOT NULL,
  `facility_id` INT UNSIGNED NOT NULL,
  `inspection_date` DATE NOT NULL,
  `inspection_interval` VARCHAR(45) NOT NULL,
  `next_inspection` DATE NOT NULL,
  `protocol_number` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tbl_object_tbl_type_object1_idx` (`type_object_id` ASC),
  INDEX `fk_tbl_object_tbl_facility1_idx` (`facility_id` ASC),
  INDEX `fk_tbl_object_tbl_locality1_idx` (`tbl_locality_id` ASC),
  INDEX `fk_tbl_object_tbl_brigada1_idx` (`tbl_brigada_id` ASC),
  INDEX `fk_tbl_object_tbl_name_object1_idx` (`tbl_name_object_id` ASC),
  CONSTRAINT `fk_object_type_object`
    FOREIGN KEY (`type_object_id`)
    REFERENCES `vetl`.`typeobject` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_object_facility`
    FOREIGN KEY (`facility_id`)
    REFERENCES `vetl`.`facility` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_object_locality`
    FOREIGN KEY (`tbl_locality_id`)
    REFERENCES `vetl`.`locality` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_object_brigada`
    FOREIGN KEY (`tbl_brigada_id`)
    REFERENCES `vetl`.`brigada` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_object_nameobject`
    FOREIGN KEY (`tbl_name_object_id`)
    REFERENCES `vetl`.`nameobject` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vetl`.`certificate`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vetl`.`certificate` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `issued` VARCHAR(254) NOT NULL,
  `name_certificate` VARCHAR(254) NOT NULL,
  `number_certificate` VARCHAR(45) NOT NULL,
  `date_issue_certificate` DATE NOT NULL,
  `valid_to_certificate` DATE NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
