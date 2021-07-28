CREATE TABLE IF NOT EXISTS `yahuas`.`staff` (
  `staff_fname` VARCHAR(100) NOT NULL,
  `staff_sname` VARCHAR(100) NOT NULL,
  `office_id` INT(4) NOT NULL,
  `staff_gender` VARCHAR(10) NOT NULL,
  `title` VARCHAR(100) NOT NULL,
  `staff_no` VARCHAR(4) NOT NULL,
  `updated_by` VARCHAR(10) NOT NULL 'admin',
  `updated` DATE NOT NULL DEFAULT CURRENT_DATE,
  INDEX `fk_staff_office1_idx` (`office_id` ASC),
  PRIMARY KEY (`staff_no`),
  CONSTRAINT `fk_staff_office1`
    FOREIGN KEY (`office_id`)
    REFERENCES `yahuas`.`office` (`office_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)

