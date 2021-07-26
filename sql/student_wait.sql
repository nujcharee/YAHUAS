-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2021 at 10:52 PM
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
-- Structure for view `student_wait`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_wait`  AS SELECT `student`.`student_id` AS `student_id`, `student`.`stu_title` AS `stu_title`, `student`.`stu_fname` AS `stu_fname`, `student`.`stu_sname` AS `stu_sname`, `student`.`category` AS `category`, `student`.`dob` AS `dob`, `student`.`next_of_kin_name` AS `next_of_kin_name`, `student`.`next_of_kin_rel` AS `next_of_kin_rel`, `student`.`next_of_kin_addr` AS `next_of_kin_addr`, `student`.`next_of_kin_telno` AS `next_of_kin_telno`, `student`.`next_of_kin_email` AS `next_of_kin_email`, `student`.`course_no` AS `course_no`, `student`.`address_id` AS `address_id`, `student`.`updated` AS `updated`, `student`.`updated_by` AS `updated_by`, `student`.`status` AS `status` FROM `student` WHERE `student`.`status` = 'Waiting' ;

--
-- VIEW `student_wait`
-- Data: None
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
