CREATE TABLE IF NOT EXISTS `yahuas`.`office` (
  `office_id` INT(4) NOT NULL,
  `office_title` VARCHAR(100) NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `postcode` VARCHAR(8) NOT NULL,
  `telno` VARCHAR(11) NOT NULL,
  `updated_by` VARCHAR(10) NULL DEFAULT 'admin',
  `updated` DATE NOT NULL DEFAULT CURRENT_DATE,
  PRIMARY KEY (`office_id`))
