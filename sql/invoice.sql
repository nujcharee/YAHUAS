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
DEFAULT CHARACTER SET = utf8mb4