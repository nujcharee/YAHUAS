CREATE TABLE IF NOT EXISTS `yahuas`.`login` (
  `username` VARCHAR(100) NOT NULL,
  `password` VARCHAR(8) NULL,
  `email` VARCHAR(100) NULL,
  PRIMARY KEY (`username`))
ENGINE = InnoDB