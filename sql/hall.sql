CREATE TABLE IF NOT EXISTS `yahuas`.`hall` (
  `hall_name` VARCHAR(100) NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `telno` VARCHAR(11) NOT NULL,
  `manager_no` VARCHAR(4) NOT NULL,
  `postcode` VARCHAR(8) NULL DEFAULT NULL,
  `hall_no` VARCHAR(3) NOT NULL,
  `updated_by` VARCHAR(10) NULL DEFAULT 'admin',
  `updated` DATE NULL,
  PRIMARY KEY (`hall_no`),
  INDEX `manager_no_idx` (`manager_no` ASC) VISIBLE,
  CONSTRAINT `manager_no`
    FOREIGN KEY (`manager_no`)
    REFERENCES `yahuas`.`staff` (`staff_no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4