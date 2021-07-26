CREATE TABLE IF NOT EXISTS `mydb`.`department` (
  `dept_id` INT NOT NULL,
  `dept_name` VARCHAR(45) NULL,
  `office_id` INT NULL,
  `updated` DATE NULL,
  `updated_by` VARCHAR(10) NULL,
  PRIMARY KEY (`dept_id`),
  INDEX `office_id_idx` (`office_id` ASC) VISIBLE,
  CONSTRAINT `office_id`
    FOREIGN KEY (`office_id`)
    REFERENCES `yahuas`.`office` (`office_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB