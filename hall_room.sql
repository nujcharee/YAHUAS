-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 19, 2021 at 09:38 PM
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
-- Table structure for table `hall_room`
--

CREATE TABLE `hall_room` (
  `room_no` varchar(6) NOT NULL,
  `monthly_rent_rate` float NOT NULL,
  `place_no` varchar(16) NOT NULL,
  `hall_no` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hall_room`
--
ALTER TABLE `hall_room`
  ADD PRIMARY KEY (`room_no`),
  ADD KEY `hall_no` (`hall_no`),
  ADD KEY `place_no` (`place_no`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hall_room`
--
ALTER TABLE `hall_room`
  ADD CONSTRAINT `hall_room_ibfk_1` FOREIGN KEY (`hall_no`) REFERENCES `hall` (`hall_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hall_room_ibfk_2` FOREIGN KEY (`place_no`) REFERENCES `lease` (`place_no`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
