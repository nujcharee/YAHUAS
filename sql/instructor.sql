CREATE TABLE IF NOT EXISTS `mydb`.`instructor` (
  `instructor_id` INT NOT NULL AUTO_INCREMENT,
  `instructor_fname` VARCHAR(30) NULL,
  `instructor_sname` VARCHAR(50) NULL,
  `dept_id` INT NULL,
  `updated` DATE NULL,
  `updated_by` VARCHAR(10) NULL DEFAULT 'admin',
  PRIMARY KEY (`instructor_id`),
  INDEX `dept_id_idx` (`dept_id` ASC) VISIBLE,
  CONSTRAINT `dept_id`
    FOREIGN KEY (`dept_id`)
    REFERENCES `mydb`.`department` (`dept_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB