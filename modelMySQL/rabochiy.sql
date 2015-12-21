-- MySQL Script generated by MySQL Workbench
-- Вс. 20 дек. 2015 18:52:21
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
CREATE SCHEMA IF NOT EXISTS `vetl` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `vetl` ;

-- -----------------------------------------------------
-- Table `vetl`.`tbl_type_locality`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vetl`.`tbl_type_locality` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `type_locality` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vetl`.`tbl_locality`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vetl`.`tbl_locality` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `locality` VARCHAR(45) NOT NULL COMMENT '',
  `type_locality_id` INT UNSIGNED NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '',
  INDEX `fk_tbl_locality_tbl_type_locality_idx` (`type_locality_id` ASC)  COMMENT '',
  CONSTRAINT `fk_tbl_locality_tbl_type_locality`
    FOREIGN KEY (`type_locality_id`)
    REFERENCES `vetl`.`tbl_type_locality` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vetl`.`tbl_hazard_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vetl`.`tbl_hazard_category` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `hazard_category` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vetl`.`tbl_facility`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vetl`.`tbl_facility` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `facility` VARCHAR(45) NOT NULL COMMENT '',
  `hazard_category_id` INT UNSIGNED NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '',
  INDEX `fk_tbl_facility_tbl_hazard_category_idx` (`hazard_category_id` ASC)  COMMENT '',
  CONSTRAINT `fk_tbl_facility_tbl_hazard_category`
    FOREIGN KEY (`hazard_category_id`)
    REFERENCES `vetl`.`tbl_hazard_category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vetl`.`tbl_brigada`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vetl`.`tbl_brigada` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `room_brigade` VARCHAR(45) NOT NULL COMMENT '',
  `last_name_SHNS` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vetl`.`tdl_measuring_instrument`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vetl`.`tdl_measuring_instrument` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `type_measuring_instrument` VARCHAR(45) NOT NULL COMMENT '',
  `serial_number` VARCHAR(45) NULL COMMENT '',
  `inventory_number` VARCHAR(45) NULL COMMENT '',
  `calibration_date` DATE NOT NULL COMMENT '',
  `number_certificate` VARCHAR(45) NOT NULL COMMENT '',
  `calibration_interval` VARCHAR(45) NOT NULL COMMENT '',
  `next_calibration` DATE NOT NULL COMMENT '',
  `notices` VARCHAR(1024) NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vetl`.`tbl_type_object`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vetl`.`tbl_type_object` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `type_object` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vetl`.`tbl_name_object`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vetl`.`tbl_name_object` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `name_object` VARCHAR(254) NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vetl`.`tbl_object`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vetl`.`tbl_object` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `type_object_id` INT UNSIGNED NOT NULL COMMENT '',
  `tbl_name_object_id` INT UNSIGNED NOT NULL COMMENT '',
  `tbl_brigada_id` INT UNSIGNED NOT NULL COMMENT '',
  `inventory_number` VARCHAR(45) NULL COMMENT '',
  `tbl_locality_id` INT UNSIGNED NOT NULL COMMENT '',
  `facility_id` INT UNSIGNED NOT NULL COMMENT '',
  `inspection_date` DATE NOT NULL COMMENT '',
  `inspection_interval` VARCHAR(45) NOT NULL COMMENT '',
  `next_inspection` DATE NOT NULL COMMENT '',
  `protocol_number` VARCHAR(45) NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '',
  INDEX `fk_tbl_object_tbl_type_object1_idx` (`type_object_id` ASC)  COMMENT '',
  INDEX `fk_tbl_object_tbl_facility1_idx` (`facility_id` ASC)  COMMENT '',
  INDEX `fk_tbl_object_tbl_locality1_idx` (`tbl_locality_id` ASC)  COMMENT '',
  INDEX `fk_tbl_object_tbl_brigada1_idx` (`tbl_brigada_id` ASC)  COMMENT '',
  INDEX `fk_tbl_object_tbl_name_object1_idx` (`tbl_name_object_id` ASC)  COMMENT '',
  CONSTRAINT `fk_tbl_object_tbl_type_object1`
    FOREIGN KEY (`type_object_id`)
    REFERENCES `vetl`.`tbl_type_object` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_object_tbl_facility1`
    FOREIGN KEY (`facility_id`)
    REFERENCES `vetl`.`tbl_facility` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_object_tbl_locality1`
    FOREIGN KEY (`tbl_locality_id`)
    REFERENCES `vetl`.`tbl_locality` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_object_tbl_brigada1`
    FOREIGN KEY (`tbl_brigada_id`)
    REFERENCES `vetl`.`tbl_brigada` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_object_tbl_name_object1`
    FOREIGN KEY (`tbl_name_object_id`)
    REFERENCES `vetl`.`tbl_name_object` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vetl`.`tbl_certificate`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vetl`.`tbl_certificate` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `issued` VARCHAR(254) NOT NULL COMMENT '',
  `name_certificate` VARCHAR(254) NOT NULL COMMENT '',
  `number_certificate` VARCHAR(45) NOT NULL COMMENT '',
  `date_issue_certificate` DATE NOT NULL COMMENT '',
  `valid_to_certificate` DATE NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
