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
DEFAULT CHARACTER SET = utf8mb4