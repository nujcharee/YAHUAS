-- MySQL Script generated by MySQL Workbench
-- Sun Jul 25 20:33:16 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema yahuas
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema yahuas
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `yahuas` DEFAULT CHARACTER SET utf8mb4 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`address` (
  `address_id` INT NOT NULL AUTO_INCREMENT,
  `addr1` VARCHAR(50) NULL,
  `postcode` VARCHAR(8) NULL,
  `updated_by` VARCHAR(10) NULL,
  `updated` DATE NULL,
  PRIMARY KEY (`address_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`department`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`department` (
  `dept_id` INT NOT NULL,
  `dept_name` VARCHAR(45) NULL,
  `office_id` INT NULL,
  PRIMARY KEY (`dept_id`),
  INDEX `office_id_idx` (`office_id` ASC) VISIBLE,
  CONSTRAINT `office_id`
    FOREIGN KEY (`office_id`)
    REFERENCES `yahuas`.`office` (`office_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`instructor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`instructor` (
  `instructor_id` INT NOT NULL AUTO_INCREMENT,
  `instructor_fname` VARCHAR(30) NULL,
  `instructor_sname` VARCHAR(50) NULL,
  `dept_id` INT NULL,
  PRIMARY KEY (`instructor_id`),
  INDEX `dept_id_idx` (`dept_id` ASC) VISIBLE,
  CONSTRAINT `dept_id`
    FOREIGN KEY (`dept_id`)
    REFERENCES `mydb`.`department` (`dept_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`login`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`login` (
  `username` VARCHAR(100) NOT NULL,
  `password` VARCHAR(8) NULL,
  `email` VARCHAR(100) NULL,
  PRIMARY KEY (`username`))
ENGINE = InnoDB;

USE `yahuas` ;

-- -----------------------------------------------------
-- Table `yahuas`.`course`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `yahuas`.`course` (
  `course_no` VARCHAR(6) NOT NULL,
  `course_title` VARCHAR(100) NOT NULL,
  `course_instructor` VARCHAR(100) NOT NULL,
  `instructor_telno` VARCHAR(11) NOT NULL,
  `instructor_email` VARCHAR(11) NOT NULL,
  `room_no` VARCHAR(3) NOT NULL,
  `dept_name` VARCHAR(100) NOT NULL,
  `dept_telno` VARCHAR(11) NOT NULL,
  `updated_by` VARCHAR(10) NULL,
  `updated` DATE NULL,
  PRIMARY KEY (`course_no`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `yahuas`.`flat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `yahuas`.`flat` (
  `flat_no` VARCHAR(3) NOT NULL,
  `address_id` INT NOT NULL,
  `postcode` VARCHAR(8) NOT NULL,
  `num_of_bed` SMALLINT(6) NOT NULL,
  `updated_by` VARCHAR(10) NULL,
  `updated` DATE NULL,
  PRIMARY KEY (`flat_no`),
  INDEX `address_id_idx` (`address_id` ASC) VISIBLE,
  CONSTRAINT `address_id`
    FOREIGN KEY (`address_id`)
    REFERENCES `mydb`.`address` (`address_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `yahuas`.`flat_room`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `yahuas`.`flat_room` (
  `room_no` VARCHAR(2) NOT NULL,
  `month_rent_rate` FLOAT NOT NULL,
  `place_no` VARCHAR(5) NOT NULL,
  `smoking_room_yn` VARCHAR(1) NOT NULL,
  `flat_no` VARCHAR(3) NOT NULL,
  `updated_by` VARCHAR(10) NULL,
  `updated` DATE NULL,
  PRIMARY KEY (`place_no`),
  INDEX `flat_no_idx` (`flat_no` ASC) VISIBLE,
  CONSTRAINT `flat_no`
    FOREIGN KEY (`flat_no`)
    REFERENCES `yahuas`.`flat` (`flat_no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `yahuas`.`hall`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `yahuas`.`hall` (
  `hall_name` VARCHAR(100) NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `telno` VARCHAR(11) NOT NULL,
  `manager_no` VARCHAR(4) NOT NULL,
  `postcode` VARCHAR(8) NULL DEFAULT NULL,
  `hall_no` VARCHAR(3) NOT NULL,
  `updated_by` VARCHAR(10) NULL,
  `updated` DATE NULL,
  PRIMARY KEY (`hall_no`),
  INDEX `manager_no_idx` (`manager_no` ASC) VISIBLE,
  CONSTRAINT `manager_no`
    FOREIGN KEY (`manager_no`)
    REFERENCES `yahuas`.`staff` (`staff_no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `yahuas`.`hall_room`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `yahuas`.`hall_room` (
  `room_no` VARCHAR(2) NOT NULL,
  `monthly_rent_rate` FLOAT NOT NULL,
  `place_no` VARCHAR(5) NOT NULL,
  `hall_no` VARCHAR(2) NULL,
  `updated_by` VARCHAR(10) NULL,
  `updated` DATE NULL,
  PRIMARY KEY (`place_no`),
  INDEX `hall_no_idx` (`hall_no` ASC) VISIBLE,
  CONSTRAINT `hall_no`
    FOREIGN KEY (`hall_no`)
    REFERENCES `yahuas`.`hall` (`hall_no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `yahuas`.`inspection`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `yahuas`.`inspection` (
  `staff_no` VARCHAR(4) NOT NULL,
  `place_no` VARCHAR(2) NOT NULL,
  `inspect_date` DATE NOT NULL,
  `satisfy_yn` VARCHAR(1) NOT NULL,
  `comment` VARCHAR(500) NULL DEFAULT NULL,
  `inspection_id` INT NOT NULL AUTO_INCREMENT,
  `updated_by` VARCHAR(10) NULL,
  `updated` DATE NULL,
  INDEX `fk_inspection_staff1_idx` (`staff_no` ASC) VISIBLE,
  PRIMARY KEY (`inspection_id`),
  INDEX `place_no_idx` (`place_no` ASC) VISIBLE,
  CONSTRAINT `fk_inspection_staff1`
    FOREIGN KEY (`staff_no`)
    REFERENCES `yahuas`.`staff` (`staff_no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `flat_no`
    FOREIGN KEY (`place_no`)
    REFERENCES `yahuas`.`flat` (`flat_no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `yahuas`.`invoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `yahuas`.`invoice` (
  `invoice_no` VARCHAR(10) NOT NULL,
  `lease_no` VARCHAR(8) NOT NULL,
  `pay_due` DATE NOT NULL,
  `paid_date` DATE NOT NULL,
  `payment_method` VARCHAR(15) NOT NULL,
  `updated_by` VARCHAR(10) NULL,
  `updated` DATE NULL,
  PRIMARY KEY (`invoice_no`),
  INDEX `lease_no_idx` (`lease_no` ASC) VISIBLE,
  CONSTRAINT `lease_no`
    FOREIGN KEY (`lease_no`)
    REFERENCES `yahuas`.`lease` (`lease_no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `yahuas`.`lease`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `yahuas`.`lease` (
  `duration` VARCHAR(1) NOT NULL DEFAULT '1',
  `student_id` VARCHAR(8) NOT NULL,
  `accom_type` VARCHAR(4) NOT NULL,
  `place_no` VARCHAR(5) NOT NULL,
  `date_enter` DATE NOT NULL,
  `date_leave` DATE NULL DEFAULT NULL,
  `lease_no` VARCHAR(8) NOT NULL,
  `updated_by` VARCHAR(10) NULL,
  `updated` DATE NULL,
  PRIMARY KEY (`lease_no`),
  INDEX `place_no_idx` (`place_no` ASC) VISIBLE,
  CONSTRAINT `place_no`
    FOREIGN KEY (`place_no`)
    REFERENCES `yahuas`.`flat_room` (`place_no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `place_no`
    FOREIGN KEY (`place_no`)
    REFERENCES `yahuas`.`hall_room` (`place_no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `yahuas`.`login`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `yahuas`.`login` (
  `email` VARCHAR(100) NOT NULL,
  `password` VARCHAR(8) NULL,
  PRIMARY KEY (`email`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `yahuas`.`office`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `yahuas`.`office` (
  `office_id` INT(4) NOT NULL,
  `office_title` VARCHAR(100) NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `postcode` VARCHAR(8) NOT NULL,
  `telno` VARCHAR(11) NOT NULL,
  `updated_by` VARCHAR(10) NULL,
  `updated` DATE NULL,
  PRIMARY KEY (`office_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `yahuas`.`staff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `yahuas`.`staff` (
  `staff_fname` VARCHAR(100) NOT NULL,
  `staff_sname` VARCHAR(100) NOT NULL,
  `office_id` INT(4) NOT NULL,
  `staff_gender` VARCHAR(10) NOT NULL,
  `title` VARCHAR(100) NOT NULL,
  `staff_no` VARCHAR(4) NOT NULL,
  `updated_by` VARCHAR(10) NULL,
  `updated` DATE NULL,
  INDEX `fk_staff_office1_idx` (`office_id` ASC) VISIBLE,
  PRIMARY KEY (`staff_no`),
  CONSTRAINT `fk_staff_office1`
    FOREIGN KEY (`office_id`)
    REFERENCES `yahuas`.`office` (`office_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `yahuas`.`student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `yahuas`.`student` (
  `stu_title` VARCHAR(5) NOT NULL DEFAULT 'Mr',
  `stu_fname` VARCHAR(100) NOT NULL,
  `stu_sname` VARCHAR(100) NOT NULL,
  `stu_gender` VARCHAR(10) NOT NULL,
  `category` VARCHAR(50) NOT NULL,
  `dob` DATE NOT NULL,
  `next_of_kin_name` VARCHAR(100) NOT NULL,
  `next_of_kin_rel` VARCHAR(50) NOT NULL,
  `next_of_kin_addr` VARCHAR(255) NOT NULL,
  `next_of_kin_telno` VARCHAR(50) NOT NULL,
  `next_of_kin_email` VARCHAR(50) NOT NULL,
  `accom_status` VARCHAR(10) NOT NULL,
  `student_id` VARCHAR(8) NOT NULL,
  `course_no` VARCHAR(6) NULL,
  `address_id` INT NULL,
  `updated_by` VARCHAR(10) NULL,
  `updated` DATE NULL,
  PRIMARY KEY (`student_id`),
  INDEX `course_no_idx` (`course_no` ASC) VISIBLE,
  INDEX `address_id_idx` (`address_id` ASC) VISIBLE,
  CONSTRAINT `course_no`
    FOREIGN KEY (`course_no`)
    REFERENCES `yahuas`.`course` (`course_no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `address_id`
    FOREIGN KEY (`address_id`)
    REFERENCES `mydb`.`address` (`address_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
