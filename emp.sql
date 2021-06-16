-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 23, 2017 at 01:17 AM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `heyzot-analytics`
--
--
-- Table structure for table `student`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `names` varchar(30) NOT NULL,
  `marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city`
--

INSERT INTO `students` (`id`, `Name`) VALUES
(1, 'rizvi',30),
(2, 'krish',40),
(3, 'vasim',20),
(4, 'asim',35),
(5, 'abdullah',15);

-- --------------------------------------------------------

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `names` varchar(30) NOT NULL,
  `marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- `
--

INSERT INTO `student` (`id`, `name`) VALUES
(1, 'rizvi',30),
(2, 'krish',40),
(3, 'vasim',20),
(4, 'asim',35),
(5, 'abdullah',15);




--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `state`varchar(30)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`) VALUES
(1, 'pune'),
(2, 'apple'),
(3, 'city c'),
(4, 'city d'),
(5, 'city e');



CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cityId` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(10) NOT NULL
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emp`
--

INSERT INTO `employee` (`id`, `name`, `cityId`, `score`, `age`, `gender` ) VALUES
(21, 'a', 1, 5, 20, 'male'),
(22, 'b', 2, 4, 30, 'female'),
(23, 'c', 3, 6, 25, 'male'),
(24, 'd', 4, 4, 35, 'male'),
(25, 'e', 5, 6, 40, 'female'),
(26, 'g', 1, 2, 40, 'male'),
(27, 'h', 2, 9, 50, 'male'),
(28, 'i', 3, 4, 43, 'female'),
(29, 'j', 4, 3, 10, 'male'),
(30, 'k', 5, 6, 30, 'male');
-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cityId` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(10) NOT NULL
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`id`, `name`, `cityId`, `score`, `age`, `gender` ) VALUES
(21, 'a', 1, 5, 20, 'male'),
(22, 'b', 2, 4, 30, 'female'),
(23, 'c', 3, 6, 25, 'male'),
(24, 'd', 4, 4, 35, 'male'),
(25, 'e', 5, 6, 40, 'female'),
(26, 'g', 1, 2, 40, 'male'),
(27, 'h', 2, 9, 50, 'male'),
(28, 'i', 3, 4, 43, 'female'),
(29, 'j', 4, 3, 10, 'male'),
(30, 'k', 5, 6, 30, 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cityId` (`cityId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emp`
--
ALTER TABLE `emp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `emp`
--
ALTER TABLE `emp`
  ADD CONSTRAINT `emp_ibfk_1` FOREIGN KEY (`cityId`) REFERENCES `city` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
