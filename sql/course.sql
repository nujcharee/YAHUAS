CREATE TABLE IF NOT EXISTS `yahuas`.`course` (
  `course_no` VARCHAR(6) NOT NULL,
  `instructor_id` INT NULL,
  `course_title` VARCHAR(100) NOT NULL,
  `room_no` VARCHAR(3) NOT NULL,
  `dept_name` VARCHAR(100) NOT NULL,
  `dept_telno` VARCHAR(11) NOT NULL,
  `updated_by` VARCHAR(10) NOT NULL DEFAULT 'admin',
  `updated` VARCHAR(10) NOT NULL DEFAULT CURRENT_DATE,
  PRIMARY KEY (`course_no`),
  INDEX `instructor_id_idx` (`instructor_id` ASC) VISIBLE,
  CONSTRAINT `instructor_id`
    FOREIGN KEY (`instructor_id`)
    REFERENCES `yahuas`.`instructor` (`instructor_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)

