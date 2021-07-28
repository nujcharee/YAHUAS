CREATE TABLE IF NOT EXISTS `yahuas`.`address` (
  `address_id` INT NOT NULL AUTO_INCREMENT,
  `addr1` VARCHAR(50) NULL,
  `postcode` VARCHAR(8) NOT NULL,
  `updated_by` VARCHAR(10) NOT NULL DEFAULT 'admin',
  `updated` DATE NULL,
  PRIMARY KEY (`address_id`))
ENGINE = InnoDB
