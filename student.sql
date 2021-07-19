-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 19, 2021 at 09:39 PM
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
-- Database: `YAHUAS`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` varchar(10) NOT NULL,
  `stu_title` varchar(5) NOT NULL,
  `stu_fname` varchar(100) NOT NULL,
  `stu_sname` varchar(100) NOT NULL,
  `stu_gender` varchar(10) NOT NULL,
  `stu_addr1` varchar(100) NOT NULL,
  `stu_postcode` varchar(8) NOT NULL,
  `category` varchar(50) NOT NULL,
  `dob` date DEFAULT NULL,
  `next_of_kin_name` varchar(100) DEFAULT NULL,
  `next_of_kin_rel` varchar(100) DEFAULT NULL,
  `next_of_kin_addr` varchar(255) DEFAULT NULL,
  `next_of_kin_telno` varchar(100) DEFAULT NULL,
  `next_of_kin_email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `stu_title`, `stu_fname`, `stu_sname`, `stu_gender`, `stu_addr1`, `stu_postcode`, `category`, `dob`, `next_of_kin_name`, `next_of_kin_rel`, `next_of_kin_addr`, `next_of_kin_telno`, `next_of_kin_email`) VALUES
('', 'Mr', 'Ped', 'Haswell', 'M', '4 Rose', 'TS9 6QT', 'PhD', '1977-12-11', 'David', 'Same', 'Same', '099999', 'bat@bat.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `student_id_2` (`student_id`),
  ADD KEY `student_id` (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
