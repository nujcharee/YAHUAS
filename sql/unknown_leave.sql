-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2021 at 11:06 PM
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
-- Structure for view `unknown_leave`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `unknown_leave`  AS SELECT `l`.`lease_no` AS `lease_no`, `s`.`stu_title` AS `stu_title`, `s`.`stu_fname` AS `stu_fname`, `s`.`stu_sname` AS `stu_sname`, `l`.`date_enter` AS `date_enter`, `l`.`accom_type` AS `accom_type`, `l`.`place_no` AS `place_no`, coalesce(`h`.`hall_no`,`f`.`flat_no`) AS `Hall_Flat_No`, coalesce(`a`.`addr1`,`aa`.`addr1`) AS `Hall_Flat_Address`, coalesce(`a`.`postcode`,`aa`.`postcode`) AS `Hall_Flat_Postcode` FROM (((((((`lease` `l` join `student` `s` on(`s`.`student_id` = `l`.`student_id`)) left join `flat_room` `fr` on(`fr`.`place_no` = `l`.`place_no`)) left join `flat` `f` on(`f`.`flat_no` = `fr`.`flat_no` = `f`.`flat_no`)) left join `hall_room` `hr` on(`hr`.`place_no` = `l`.`place_no`)) left join `hall` `h` on(`h`.`hall_no` = `hr`.`hall_no`)) left join `address` `a` on(`a`.`address_id` = `h`.`address_id`)) left join `address` `aa` on(`a`.`address_id` = `f`.`address_id`)) WHERE `l`.`date_leave` is null ;

--
-- VIEW `unknown_leave`
-- Data: None
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
