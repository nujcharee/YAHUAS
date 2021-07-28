CREATE TABLE `hall` (
  `hall_no` varchar(2) NOT NULL,
  `hall_name` varchar(100) NOT NULL,
  `address_id` INT NULL,
  `telno` varchar(11) NOT NULL,
  `manager_no` varchar(4) NOT NULL,
  `updated_by` VARCHAR(10) NOT NULL DEFAULT 'admin',
  `updated` DATE NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

