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
-- Structure for view `failed_insp`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `failed_insp`  AS SELECT `inspection`.`inspect_date` AS `inspect_date`, `inspection`.`satisfy_yn` AS `satisfy_yn`, `inspection`.`comment` AS `comment`, `inspection`.`inspection_id` AS `inspection_id`, `inspection`.`staff_no` AS `staff_no`, `inspection`.`flat_no` AS `flat_no`, `flat`.`address` AS `address`, `staff`.`staff_fname` AS `staff_fname`, `staff`.`staff_sname` AS `staff_sname` FROM ((`inspection` join `flat` on(`flat`.`flat_no` = `inspection`.`flat_no`)) join `staff` on(`staff`.`staff_no` = `inspection`.`staff_no`)) WHERE `inspection`.`satisfy_yn` = 'N' ;

--
-- VIEW `failed_insp`
-- Data: None
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
