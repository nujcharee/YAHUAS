CREATE TABLE `invoice` (
  `invoice_no` varchar(14) NOT NULL,
  `lease_no` varchar(10) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `pay_due` float NOT NULL,
  `student_id` varchar(10) NOT NULL,
  `pay_date` date NOT NULL,
   `updated_by` VARCHAR(10) NOT NULL DEFAULT 'admin',
  `updated` DATE NOT NULL
) 
