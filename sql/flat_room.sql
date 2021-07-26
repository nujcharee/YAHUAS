CREATE TABLE IF NOT EXISTS `yahuas`.`flat_room` (
  `room_no` VARCHAR(2) NOT NULL,
  `month_rent_rate` FLOAT NOT NULL,
  `place_no` VARCHAR(5) NOT NULL,
  `smoking_room_yn` VARCHAR(1) NOT NULL,
  `flat_no` VARCHAR(3) NOT NULL,
  `updated_by` VARCHAR(10) NULL,
  `updated` DATE NULL,
  PRIMARY KEY (`place_no`),
  INDEX `flat_no_idx` (`flat_no` ASC) VISIBLE,
  CONSTRAINT `flat_no`
    FOREIGN KEY (`flat_no`)
    REFERENCES `yahuas`.`flat` (`flat_no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4