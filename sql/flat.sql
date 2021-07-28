CREATE TABLE IF NOT EXISTS `yahuas`.`flat` (
  `flat_no` VARCHAR(3) NOT NULL,
  `address_id` INT NOT NULL,
  `postcode` VARCHAR(8) NOT NULL,
  `num_of_bed` SMALLINT(6) NOT NULL,
  `updated_by` VARCHAR(10) NOT NULL 'admin',
  `updated` DATE NOT NULL DEFAULT CURRENT_DATE,
  PRIMARY KEY (`flat_no`),
  INDEX `address_id_idx` (`address_id` ASC) VISIBLE,
  CONSTRAINT `address_id`
    FOREIGN KEY (`address_id`)
    REFERENCES `myahuas`.`address` (`address_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
