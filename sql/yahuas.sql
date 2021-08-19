-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2021 at 09:19 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yahuas`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `addr1` varchar(50) DEFAULT NULL,
  `postcode` varchar(8) DEFAULT NULL,
  `updated_by` varchar(10) NOT NULL DEFAULT 'admin',
  `updated` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `addr1`, `postcode`, `updated_by`, `updated`) VALUES
(1, '1 Rose St', 'TS9 1AA', 'admin', '2021-07-26'),
(2, '2 Rose St', 'TS9 1AA', 'admin', '2021-07-26'),
(3, '3 Rose St', 'TS9 1AA', 'admin', '2021-07-26'),
(4, '4 Rose St', 'TS9 1AA', 'admin', '2021-07-26'),
(5, '5 Rose St', 'TS9 1AA', 'admin', '2021-07-26'),
(6, '6 Rose St', 'TS9 1AA', 'admin', '2021-07-26'),
(7, '7 Rose St', 'TS9 1AA', 'admin', '2021-07-26'),
(8, '8 Rose St', 'TS9 1AA', 'admin', '2021-07-26'),
(9, '9 Rose St', 'TS9 1AA', 'admin', '2021-07-26'),
(10, '10 Rose St', 'TS9 1AA', 'admin', '2021-07-26'),
(11, 'York Rd', 'TS9 1AA', 'admin', '2021-07-26'),
(12, 'Leeds Rd', 'TS9 1AA', 'admin', '2021-07-26'),
(13, 'Newcastle Rd.', 'TS9 1AA', 'admin', '2021-07-26'),
(14, 'Rose Rd', 'TS9 1AA', 'admin', '2021-07-26');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_no` varchar(6) NOT NULL,
  `course_title` varchar(100) NOT NULL,
  `room_no` varchar(3) NOT NULL,
  `instructor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_no`, `course_title`, `room_no`, `instructor_id`) VALUES
('1DSR01', 'Data Science', 'A11', 1),
('2DSR01', 'Master Degree DS', 'BB1', 2),
('2DSR02', 'Advanced Course', 'YY1', 3),
('3DSR01', 'Public Health DS', 'XC1', NULL),
('4DSR02', 'Advanced Science II', 'XX0', NULL),
('5DSR01', 'Database', 'dfd', 1),
('6DSR01', 'Advanced Database', 'F08', NULL),
('7DSR02', 'Advanced Programming VI', 'XZ0', 6),
('8DSR01', 'Advanced Database II', 'F09', NULL),
('9DSR01', 'Advanced Programming', 'ZZ0', NULL),
('9DSR02', 'Advanced Programming II', 'XX0', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `course_dq`
-- (See below for the actual view)
--
CREATE TABLE `course_dq` (
`course_no` varchar(6)
,`course_title` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `department` varchar(45) DEFAULT NULL,
  `office_id` int(11) NOT NULL,
  `updated` date NOT NULL DEFAULT current_timestamp(),
  `updated_by` varchar(10) NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `department`, `office_id`, `updated`, `updated_by`) VALUES
(1, 'Math Science', 1, '2021-07-01', 'admin'),
(2, 'Data Science', 1, '0000-00-00', 'admin'),
(3, 'Health', 2, '0000-00-00', 'admin'),
(4, 'Engineer', 2, '0000-00-00', 'admin'),
(5, 'Science', 2, '2021-07-28', 'admin');

-- --------------------------------------------------------

--
-- Stand-in structure for view `empty_flat`
-- (See below for the actual view)
--
CREATE TABLE `empty_flat` (
`room_no` varchar(2)
,`month_rent_rate` float
,`place_no` varchar(5)
,`smoking_room_yn` varchar(1)
,`flat_no` varchar(3)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `empty_hall`
-- (See below for the actual view)
--
CREATE TABLE `empty_hall` (
`room_no` varchar(2)
,`monthly_rent_rate` float
,`place_no` varchar(5)
,`hall_no` varchar(3)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `failed_insp`
-- (See below for the actual view)
--
CREATE TABLE `failed_insp` (
`inspect_date` date
,`satisfy_yn` varchar(1)
,`comment` varchar(500)
,`inspection_id` int(11)
,`staff_no` varchar(4)
,`flat_no` varchar(3)
);

-- --------------------------------------------------------

--
-- Table structure for table `flat`
--

CREATE TABLE `flat` (
  `flat_no` varchar(3) NOT NULL,
  `address_id` int(11) NOT NULL,
  `postcode` varchar(8) NOT NULL,
  `num_of_bed` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flat`
--

INSERT INTO `flat` (`flat_no`, `address_id`, `postcode`, `num_of_bed`) VALUES
('F01', 12, 'TS9 8AA', 2),
('F02', 12, 'DL8 9AA', 5),
('F03', 11, 'NL8 9AA', 3),
('F04', 13, 'LA4 7AA', 4),
('F05', 13, 'LA4 7AA', 4);

-- --------------------------------------------------------

--
-- Stand-in structure for view `flat_lost_revenue`
-- (See below for the actual view)
--
CREATE TABLE `flat_lost_revenue` (
`LostIncome` double(19,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `flat_room`
--

CREATE TABLE `flat_room` (
  `room_no` varchar(2) NOT NULL,
  `month_rent_rate` float NOT NULL,
  `place_no` varchar(5) NOT NULL,
  `smoking_room_yn` varchar(1) NOT NULL,
  `flat_no` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flat_room`
--

INSERT INTO `flat_room` (`room_no`, `month_rent_rate`, `place_no`, `smoking_room_yn`, `flat_no`) VALUES
('Y1', 120, 'F1001', 'Y', 'F01'),
('Y2', 100.5, 'F1002', 'N', 'F02'),
('Y3', 100.25, 'F1003', 'Y', 'F01'),
('Y4', 78, 'F1004', 'Y', 'F03'),
('Y5', 99.99, 'F1005', 'N', 'F03'),
('A1', 99.99, 'F1010', 'N', 'F01');

-- --------------------------------------------------------

--
-- Table structure for table `hall`
--

CREATE TABLE `hall` (
  `hall_name` varchar(100) NOT NULL,
  `address_id` int(11) DEFAULT NULL,
  `telno` varchar(11) NOT NULL,
  `postcode` varchar(8) DEFAULT NULL,
  `hall_no` varchar(3) NOT NULL,
  `manager_no` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hall`
--

INSERT INTO `hall` (`hall_name`, `address_id`, `telno`, `postcode`, `hall_no`, `manager_no`) VALUES
('test', NULL, '09098', NULL, '', 'AA01'),
('York Hall', 11, '090999999', 'TS7 8AA', 'H01', 'AA11'),
('Leeds Hall', 11, '', 'LA1 1AA', 'H02', 'AA12'),
('Newcastle Hall', 12, '', 'NL1 1AA', 'H03', 'AA11'),
('Humber Hall', 13, '', 'HU11 1AA', 'H04', 'AA13'),
('Northallerton Hall', 12, '', 'TS11 7AA', 'H05', 'AA12');

-- --------------------------------------------------------

--
-- Stand-in structure for view `hall_lost_rev`
-- (See below for the actual view)
--
CREATE TABLE `hall_lost_rev` (
`LostIncome` double(19,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `hall_room`
--

CREATE TABLE `hall_room` (
  `room_no` varchar(2) NOT NULL,
  `monthly_rent_rate` float NOT NULL,
  `place_no` varchar(5) NOT NULL,
  `hall_no` varchar(3) DEFAULT NULL,
  `smoking_room_yn` varchar(1) DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hall_room`
--

INSERT INTO `hall_room` (`room_no`, `monthly_rent_rate`, `place_no`, `hall_no`, `smoking_room_yn`) VALUES
('H1', 175, 'H1001', 'H01', 'N'),
('H2', 60, 'H1002', 'H02', 'N'),
('H3', 95, 'H1003', 'H03', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `inspection`
--

CREATE TABLE `inspection` (
  `inspect_date` date NOT NULL,
  `satisfy_yn` varchar(1) NOT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `inspection_id` int(11) NOT NULL,
  `staff_no` varchar(4) DEFAULT NULL,
  `flat_no` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inspection`
--

INSERT INTO `inspection` (`inspect_date`, `satisfy_yn`, `comment`, `inspection_id`, `staff_no`, `flat_no`) VALUES
('2020-09-01', 'Y', 'OK', 1, 'AA11', 'F01'),
('2020-09-01', 'N', 'Toilets broke', 2, 'AA11', 'F02'),
('2020-08-01', 'N', 'Toilets are dirty', 3, 'AA12', 'H02');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `instructor_id` int(11) NOT NULL,
  `instructor_fname` varchar(30) DEFAULT NULL,
  `instructor_sname` varchar(50) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `updated_by` varchar(10) NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`instructor_id`, `instructor_fname`, `instructor_sname`, `dept_id`, `updated`, `updated_by`) VALUES
(1, 'Robert', 'Smith', 1, '2020-10-01', 'admin'),
(2, 'Will', 'Smith', 1, '2020-10-01', 'admin'),
(3, 'Bob', 'Smith', 1, '2020-10-01', 'admin'),
(4, 'David', 'Smith', 2, '2020-10-01', 'admin'),
(5, 'Gina', 'Smith', 3, '2020-10-01', 'admin'),
(6, 'Jane', 'Smith', 4, '2020-10-01', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_no` varchar(10) NOT NULL,
  `pay_due` date DEFAULT NULL,
  `paid_date` date DEFAULT NULL,
  `payment_method` varchar(15) DEFAULT NULL,
  `lease_no` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_no`, `pay_due`, `paid_date`, `payment_method`, `lease_no`) VALUES
('INV1000001', '2020-08-01', '2020-08-01', 'Visa', 'L1000001'),
('INV1000002', '2022-01-01', '0000-00-00', '', 'L1000002'),
('INV1000003', '2021-07-01', '0000-00-00', '', 'L1000003'),
('INV1000004', '2021-06-01', '2021-07-26', '', 'L1000004');

-- --------------------------------------------------------

--
-- Table structure for table `lease`
--

CREATE TABLE `lease` (
  `duration` varchar(1) NOT NULL DEFAULT '1' COMMENT 'S: Summer, 1: First Year, 2: Second Year',
  `student_id` varchar(10) DEFAULT NULL,
  `accom_type` varchar(4) DEFAULT NULL,
  `date_enter` date DEFAULT NULL,
  `date_leave` date DEFAULT NULL,
  `lease_no` varchar(8) NOT NULL,
  `place_no` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lease`
--

INSERT INTO `lease` (`duration`, `student_id`, `accom_type`, `date_enter`, `date_leave`, `lease_no`, `place_no`) VALUES
('S', 'A1000001', 'HALL', '2021-09-01', NULL, 'L1000001', 'H1001'),
('1', 'A1000002', 'HALL', '0000-00-00', NULL, 'L1000002', 'H1002'),
('1', 'A1000003', 'FLAT', '2021-04-01', '2021-10-31', 'L1000003', 'F1001'),
('S', 'A1000004', 'FLAT', '2021-04-01', '2021-10-31', 'L1000004', 'F1002');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(8) DEFAULT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `email`) VALUES
('David', 'david', 'David@bat.com'),
('Thomas', 'thomas', 'tj@bat.com');

-- --------------------------------------------------------

--
-- Table structure for table `office`
--

CREATE TABLE `office` (
  `office_id` int(2) NOT NULL,
  `office_title` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `postcode` varchar(8) NOT NULL,
  `telno` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `office`
--

INSERT INTO `office` (`office_id`, `office_title`, `address`, `postcode`, `telno`) VALUES
(1, 'York Campus', 'York this way', 'YO1 1AA', '01900 99999'),
(2, 'Newcastle Campus', 'Newcastle way', 'NL1 1AA', '09010 99999'),
(3, 'Leeds Campus', 'Leeds lane', 'LA1 1AA', '01678 99999'),
(4, 'Humber Campus', 'Humber road', 'HU1 1AA', '01789 99999');

-- --------------------------------------------------------

--
-- Stand-in structure for view `overdue`
-- (See below for the actual view)
--
CREATE TABLE `overdue` (
`invoice_no` varchar(10)
,`pay_due` date
,`paid_date` date
,`payment_method` varchar(15)
,`lease_no` varchar(8)
);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_fname` varchar(100) NOT NULL,
  `staff_sname` varchar(100) NOT NULL,
  `staff_gender` varchar(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `staff_no` varchar(4) NOT NULL,
  `office_id` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_fname`, `staff_sname`, `staff_gender`, `title`, `staff_no`, `office_id`) VALUES
('Mary\r\n', 'Joseph', 'F', 'Hall Manager', 'AA11', 1),
('Mary\r\n', 'Smith', 'F', 'Admin', 'AA12', 2),
('Jane', 'Doe', 'F', 'Inspector', 'AA13', 3),
('Maureen', 'Carpenter', 'F', 'Hall Manager', 'AA14', 1),
('Frances', 'Surname', 'F', 'Admin', 'AA15', 2),
('Dr Who', 'Rose', 'F', 'Hall Manager', 'AA16', NULL),
('Dr No', 'Pink', 'F', 'Admin', 'AA17', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `staff_no_office`
-- (See below for the actual view)
--
CREATE TABLE `staff_no_office` (
`staff_fname` varchar(100)
,`staff_sname` varchar(100)
,`staff_gender` varchar(10)
,`title` varchar(100)
,`staff_no` varchar(4)
,`office_id` int(2)
);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` varchar(10) NOT NULL,
  `stu_title` varchar(5) DEFAULT NULL,
  `stu_fname` varchar(100) DEFAULT NULL,
  `stu_sname` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `next_of_kin_name` varchar(100) DEFAULT NULL,
  `next_of_kin_rel` varchar(100) DEFAULT NULL,
  `next_of_kin_addr` varchar(255) DEFAULT NULL,
  `next_of_kin_telno` varchar(100) DEFAULT NULL,
  `next_of_kin_email` varchar(50) DEFAULT NULL,
  `course_no` varchar(6) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `updated` date NOT NULL DEFAULT current_timestamp(),
  `updated_by` varchar(10) NOT NULL DEFAULT 'admin',
  `status` varchar(10) NOT NULL DEFAULT 'Waiting',
  `stu_gender` varchar(1) DEFAULT 'M'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `stu_title`, `stu_fname`, `stu_sname`, `category`, `dob`, `next_of_kin_name`, `next_of_kin_rel`, `next_of_kin_addr`, `next_of_kin_telno`, `next_of_kin_email`, `course_no`, `address_id`, `updated`, `updated_by`, `status`, `stu_gender`) VALUES
('A1000001', 'Mr', 'David', 'Has', 'PhD', '1901-01-01', 'Ped', 'Wife', 'Same', NULL, 'ped@bat.com', NULL, NULL, '2021-07-24', 'admin', 'Placed', 'M'),
('A1000002', 'Ms', 'Ped', 'Has', 'PhD', '1988-01-01', 'David', 'Husband', 'Above', NULL, 'ped@bat.com', '1DSR01', NULL, '2021-07-24', 'admin', 'Placed', 'M'),
('A1000003', 'Dr', 'P', 'Hatwell', '', '1955-09-18', 'Thomas', 'Son', 'Same', NULL, NULL, '2DSR01', NULL, '0000-00-00', 'admin', 'Placed', 'M'),
('A1000004', 'Ms', 'Thomas', 'Has', 'PhD', '1988-12-01', 'Winter', 'Coming', 'Same', NULL, NULL, '2DSR01', 2, '2021-07-01', 'admin', 'Placed', 'M'),
('A1000005', 'Mr', 'James', 'Haswell', 'PhD', '1987-12-01', 'Summer', 'Autumn', 'Same', NULL, NULL, NULL, 3, '2021-07-01', 'admin', 'Placed', 'M'),
('A1000006', 'Ms', 'Lucy', 'Woe', 'PhD', '1985-12-01', 'Shaw', 'Shoe', 'Same', NULL, NULL, NULL, 4, '2021-07-01', 'admin', 'Placed', 'M'),
('A1000007', 'Ms', 'Damien', 'Doe', 'PhD', '1995-12-01', 'Thomas', 'Has', 'Same', NULL, NULL, '2DSR01', 3, '2021-07-01', 'admin', 'Placed', 'M'),
('A1000008', 'Ms', 'Shaw', 'Shoe', 'PhD', '2000-12-01', 'Wendy', 'Hu', 'Same', NULL, NULL, '3DSR01', 3, '2021-07-01', 'admin', 'Placed', 'M'),
('A1000009', 'Ms', 'May', 'June', 'PhD', '1971-12-01', 'Lucy', 'Woe', 'Same', NULL, NULL, '4DSR01', 3, '2021-07-01', 'admin', 'Placed', 'M'),
('A1000010', 'Ms', 'Summer', 'Autumn', 'PhD', '1977-12-01', 'June', 'Jug', 'Same', NULL, NULL, '5DSR01', 2, '2021-07-01', 'admin', 'Waiting', 'M'),
('A1000011', 'Ms', 'Winter', 'Coming', 'PhD', '1980-12-01', 'Damien', 'Doe', 'Same', NULL, NULL, '5DSR01', 1, '2021-07-01', 'admin', 'Waiting', 'M'),
('A1000012', 'Mr', 'Andrew', 'Smith', 'first-year undergraduate', NULL, 'Bernie Smith', 'Spouse', 'Bernie Smith', '07888888', 'spouse@nat.com', NULL, NULL, '2021-07-26', 'admin', 'Placed', '');

-- --------------------------------------------------------

--
-- Stand-in structure for view `student_wait`
-- (See below for the actual view)
--
CREATE TABLE `student_wait` (
`student_id` varchar(10)
,`stu_title` varchar(5)
,`stu_fname` varchar(100)
,`stu_sname` varchar(100)
,`category` varchar(50)
,`dob` date
,`next_of_kin_name` varchar(100)
,`next_of_kin_rel` varchar(100)
,`next_of_kin_addr` varchar(255)
,`next_of_kin_telno` varchar(100)
,`next_of_kin_email` varchar(50)
,`course_no` varchar(6)
,`address_id` int(11)
,`updated` date
,`updated_by` varchar(10)
,`status` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `unknown_leave`
-- (See below for the actual view)
--
CREATE TABLE `unknown_leave` (
`lease_no` varchar(8)
,`stu_title` varchar(5)
,`stu_fname` varchar(100)
,`stu_sname` varchar(100)
,`date_enter` date
,`accom_type` varchar(4)
,`place_no` varchar(5)
,`Hall_Flat_No` varchar(3)
,`Hall_Flat_Address` varchar(50)
,`Hall_Flat_Postcode` varchar(8)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `unpaid`
-- (See below for the actual view)
--
CREATE TABLE `unpaid` (
`invoice_no` varchar(10)
,`pay_due` date
,`paid_date` date
,`payment_method` varchar(15)
,`lease_no` varchar(8)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vacant_flats`
-- (See below for the actual view)
--
CREATE TABLE `vacant_flats` (
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vacant_halls`
-- (See below for the actual view)
--
CREATE TABLE `vacant_halls` (
);

-- --------------------------------------------------------

--
-- Structure for view `course_dq`
--
DROP TABLE IF EXISTS `course_dq`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `course_dq`  AS SELECT `course`.`course_no` AS `course_no`, `course`.`course_title` AS `course_title` FROM `course` WHERE `course`.`instructor_id` is null ;

-- --------------------------------------------------------

--
-- Structure for view `empty_flat`
--
DROP TABLE IF EXISTS `empty_flat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `empty_flat`  AS SELECT `f`.`room_no` AS `room_no`, `f`.`month_rent_rate` AS `month_rent_rate`, `f`.`place_no` AS `place_no`, `f`.`smoking_room_yn` AS `smoking_room_yn`, `f`.`flat_no` AS `flat_no` FROM (`flat_room` `f` left join `lease` `l` on(`f`.`place_no` = `l`.`place_no`)) WHERE `l`.`place_no` is null ;

-- --------------------------------------------------------

--
-- Structure for view `empty_hall`
--
DROP TABLE IF EXISTS `empty_hall`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `empty_hall`  AS SELECT `h`.`room_no` AS `room_no`, `h`.`monthly_rent_rate` AS `monthly_rent_rate`, `h`.`place_no` AS `place_no`, `h`.`hall_no` AS `hall_no` FROM (`hall_room` `h` left join `lease` `l` on(`h`.`place_no` = `l`.`place_no`)) WHERE `l`.`place_no` is null ;

-- --------------------------------------------------------

--
-- Structure for view `failed_insp`
--
DROP TABLE IF EXISTS `failed_insp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `failed_insp`  AS SELECT `inspection`.`inspect_date` AS `inspect_date`, `inspection`.`satisfy_yn` AS `satisfy_yn`, `inspection`.`comment` AS `comment`, `inspection`.`inspection_id` AS `inspection_id`, `inspection`.`staff_no` AS `staff_no`, `inspection`.`flat_no` AS `flat_no` FROM `inspection` WHERE `inspection`.`satisfy_yn` = 'N' ;

-- --------------------------------------------------------

--
-- Structure for view `flat_lost_revenue`
--
DROP TABLE IF EXISTS `flat_lost_revenue`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `flat_lost_revenue`  AS SELECT round(sum(`f`.`month_rent_rate`),2) AS `LostIncome` FROM (`flat_room` `f` left join `lease` `l` on(`f`.`place_no` = `l`.`place_no`)) WHERE `l`.`place_no` is null ;

-- --------------------------------------------------------

--
-- Structure for view `hall_lost_rev`
--
DROP TABLE IF EXISTS `hall_lost_rev`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `hall_lost_rev`  AS SELECT round(sum(`h`.`monthly_rent_rate`),2) AS `LostIncome` FROM (`hall_room` `h` left join `lease` `l` on(`h`.`place_no` = `l`.`place_no`)) WHERE `l`.`place_no` is null ;

-- --------------------------------------------------------

--
-- Structure for view `overdue`
--
DROP TABLE IF EXISTS `overdue`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `overdue`  AS SELECT `invoice`.`invoice_no` AS `invoice_no`, `invoice`.`pay_due` AS `pay_due`, `invoice`.`paid_date` AS `paid_date`, `invoice`.`payment_method` AS `payment_method`, `invoice`.`lease_no` AS `lease_no` FROM `invoice` WHERE `invoice`.`pay_due` < curdate() AND `invoice`.`paid_date` = '0000-00-00' ;

-- --------------------------------------------------------

--
-- Structure for view `staff_no_office`
--
DROP TABLE IF EXISTS `staff_no_office`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `staff_no_office`  AS SELECT `staff`.`staff_fname` AS `staff_fname`, `staff`.`staff_sname` AS `staff_sname`, `staff`.`staff_gender` AS `staff_gender`, `staff`.`title` AS `title`, `staff`.`staff_no` AS `staff_no`, `staff`.`office_id` AS `office_id` FROM `staff` WHERE `staff`.`office_id` is null ;

-- --------------------------------------------------------

--
-- Structure for view `student_wait`
--
DROP TABLE IF EXISTS `student_wait`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_wait`  AS SELECT `student`.`student_id` AS `student_id`, `student`.`stu_title` AS `stu_title`, `student`.`stu_fname` AS `stu_fname`, `student`.`stu_sname` AS `stu_sname`, `student`.`category` AS `category`, `student`.`dob` AS `dob`, `student`.`next_of_kin_name` AS `next_of_kin_name`, `student`.`next_of_kin_rel` AS `next_of_kin_rel`, `student`.`next_of_kin_addr` AS `next_of_kin_addr`, `student`.`next_of_kin_telno` AS `next_of_kin_telno`, `student`.`next_of_kin_email` AS `next_of_kin_email`, `student`.`course_no` AS `course_no`, `student`.`address_id` AS `address_id`, `student`.`updated` AS `updated`, `student`.`updated_by` AS `updated_by`, `student`.`status` AS `status` FROM `student` WHERE `student`.`status` = 'Waiting' ;

-- --------------------------------------------------------

--
-- Structure for view `unknown_leave`
--
DROP TABLE IF EXISTS `unknown_leave`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `unknown_leave`  AS SELECT `l`.`lease_no` AS `lease_no`, `s`.`stu_title` AS `stu_title`, `s`.`stu_fname` AS `stu_fname`, `s`.`stu_sname` AS `stu_sname`, `l`.`date_enter` AS `date_enter`, `l`.`accom_type` AS `accom_type`, `l`.`place_no` AS `place_no`, coalesce(`h`.`hall_no`,`f`.`flat_no`) AS `Hall_Flat_No`, coalesce(`a`.`addr1`,`aa`.`addr1`) AS `Hall_Flat_Address`, coalesce(`a`.`postcode`,`aa`.`postcode`) AS `Hall_Flat_Postcode` FROM (((((((`lease` `l` join `student` `s` on(`s`.`student_id` = `l`.`student_id`)) left join `flat_room` `fr` on(`fr`.`place_no` = `l`.`place_no`)) left join `flat` `f` on(`f`.`flat_no` = `fr`.`flat_no` = `f`.`flat_no`)) left join `hall_room` `hr` on(`hr`.`place_no` = `l`.`place_no`)) left join `hall` `h` on(`h`.`hall_no` = `hr`.`hall_no`)) left join `address` `a` on(`a`.`address_id` = `h`.`address_id`)) left join `address` `aa` on(`a`.`address_id` = `f`.`address_id`)) WHERE `l`.`date_leave` is null ;

-- --------------------------------------------------------

--
-- Structure for view `unpaid`
--
DROP TABLE IF EXISTS `unpaid`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `unpaid`  AS SELECT `invoice`.`invoice_no` AS `invoice_no`, `invoice`.`pay_due` AS `pay_due`, `invoice`.`paid_date` AS `paid_date`, `invoice`.`payment_method` AS `payment_method`, `invoice`.`lease_no` AS `lease_no` FROM `invoice` WHERE `invoice`.`paid_date` = '0000-00-00' ;

-- --------------------------------------------------------

--
-- Structure for view `vacant_flats`
--
DROP TABLE IF EXISTS `vacant_flats`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vacant_flats`  AS SELECT `f`.`room_no` AS `room_no`, `f`.`month_rent_rate` AS `month_rent_rate`, `f`.`place_no` AS `place_no`, `f`.`smoking_room_yn` AS `smoking_room_yn`, `f`.`flat_no` AS `flat_no`, `l`.`duration` AS `duration`, `l`.`student_id` AS `student_id`, `l`.`accom_type` AS `accom_type`, `l`.`flat_or_hall_no` AS `flat_or_hall_no`, `l`.`date_enter` AS `date_enter`, `l`.`date_leave` AS `date_leave`, `l`.`lease_no` AS `lease_no` FROM (`flat_room` `f` left join `lease` `l` on(`f`.`place_no` = `l`.`flat_or_hall_no`)) WHERE `l`.`lease_no` is null ;

-- --------------------------------------------------------

--
-- Structure for view `vacant_halls`
--
DROP TABLE IF EXISTS `vacant_halls`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vacant_halls`  AS SELECT `h`.`room_no` AS `room_no`, `h`.`monthly_rent_rate` AS `monthly_rent_rate`, `h`.`place_no` AS `place_no`, `h`.`hall_no` AS `hall_no`, `l`.`duration` AS `duration`, `l`.`student_id` AS `student_id`, `l`.`accom_type` AS `accom_type`, `l`.`flat_or_hall_no` AS `flat_or_hall_no`, `l`.`date_enter` AS `date_enter`, `l`.`date_leave` AS `date_leave`, `l`.`lease_no` AS `lease_no` FROM (`hall_room` `h` left join `lease` `l` on(`h`.`place_no` = `l`.`flat_or_hall_no`)) WHERE `l`.`lease_no` is null ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_no`),
  ADD KEY `instructor_id` (`instructor_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `flat`
--
ALTER TABLE `flat`
  ADD PRIMARY KEY (`flat_no`);

--
-- Indexes for table `flat_room`
--
ALTER TABLE `flat_room`
  ADD PRIMARY KEY (`place_no`);

--
-- Indexes for table `hall`
--
ALTER TABLE `hall`
  ADD PRIMARY KEY (`hall_no`);

--
-- Indexes for table `hall_room`
--
ALTER TABLE `hall_room`
  ADD PRIMARY KEY (`place_no`);

--
-- Indexes for table `inspection`
--
ALTER TABLE `inspection`
  ADD PRIMARY KEY (`inspection_id`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`instructor_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_no`);

--
-- Indexes for table `lease`
--
ALTER TABLE `lease`
  ADD PRIMARY KEY (`lease_no`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `office`
--
ALTER TABLE `office`
  ADD PRIMARY KEY (`office_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_no`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inspection`
--
ALTER TABLE `inspection`
  MODIFY `inspection_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `instructor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `instructor_id` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`instructor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
