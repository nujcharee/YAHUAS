CREATE TABLE IF NOT EXISTS `yahuas`.`inspection` (
  `staff_no` VARCHAR(4) NOT NULL,
  `place_no` VARCHAR(2) NOT NULL,
  `inspect_date` DATE NOT NULL,
  `satisfy_yn` VARCHAR(1) NOT NULL,
  `comment` VARCHAR(500) NULL DEFAULT NULL,
  `inspection_id` INT NOT NULL AUTO_INCREMENT,
  `updated_by` VARCHAR(10) NULL,
  `updated` DATE NULL,
  INDEX `fk_inspection_staff1_idx` (`staff_no` ASC) VISIBLE,
  PRIMARY KEY (`inspection_id`),
  INDEX `flat_no_idx` (`place_no` ASC) VISIBLE,
  CONSTRAINT `fk_inspection_staff1`
    FOREIGN KEY (`staff_no`)
    REFERENCES `yahuas`.`staff` (`staff_no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `flat_no`
    FOREIGN KEY (`place_no`)
    REFERENCES `yahuas`.`flat_room` (`place_no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4