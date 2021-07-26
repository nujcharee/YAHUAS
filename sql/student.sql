CREATE TABLE IF NOT EXISTS `yahuas`.`student` (
  `stu_title` VARCHAR(5) NOT NULL DEFAULT 'Mr',
  `stu_fname` VARCHAR(100) NOT NULL,
  `stu_sname` VARCHAR(100) NOT NULL,
  `stu_gender` VARCHAR(10) NOT NULL,
  `category` VARCHAR(50) NOT NULL,
  `dob` DATE NOT NULL,
  `next_of_kin_name` VARCHAR(100) NOT NULL,
  `next_of_kin_rel` VARCHAR(50) NOT NULL,
  `next_of_kin_addr` VARCHAR(255) NOT NULL,
  `next_of_kin_telno` VARCHAR(50) NOT NULL,
  `next_of_kin_email` VARCHAR(50) NOT NULL,
  `accom_status` VARCHAR(10) NOT NULL,
  `student_id` VARCHAR(8) NOT NULL,
  `course_no` VARCHAR(6) NULL,
  `address_id` INT NULL,
  `updated_by` VARCHAR(10) NULL DEFAULT 'admin',
  `updated` DATE NULL,
  PRIMARY KEY (`student_id`),
  INDEX `course_no_idx` (`course_no` ASC) VISIBLE,
  INDEX `address_id_idx` (`address_id` ASC) VISIBLE,
  CONSTRAINT `course_no`
    FOREIGN KEY (`course_no`)
    REFERENCES `yahuas`.`course` (`course_no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `address_id`
    FOREIGN KEY (`address_id`)
    REFERENCES `mydb`.`address` (`address_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4