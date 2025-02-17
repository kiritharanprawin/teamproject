-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2025 at 12:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `team_projecttable`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_science_year2`
--

CREATE TABLE `data_science_year2` (
  `student_ID` int(4) NOT NULL,
  `Firstname` varchar(265) NOT NULL,
  `Lastname` varchar(265) NOT NULL,
  `Attendance` varchar(265) NOT NULL,
  `student_photo` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_science_year2`
--

INSERT INTO `data_science_year2` (`student_ID`, `Firstname`, `Lastname`, `Attendance`, `student_photo`) VALUES
(3, 'Jessica', 'Harrison', 'Late', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_science_year2`
--
ALTER TABLE `data_science_year2`
  ADD PRIMARY KEY (`student_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_science_year2`
--
ALTER TABLE `data_science_year2`
  MODIFY `student_ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
