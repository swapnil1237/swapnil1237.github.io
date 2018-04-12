-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2018 at 01:27 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website`
--

-- --------------------------------------------------------

--
-- Table structure for table `compost`
--

CREATE TABLE `compost` (
  `username` varchar(50) NOT NULL,
  `number` bigint(20) NOT NULL,
  `address` varchar(70) NOT NULL,
  `quantity` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `compost`
--

INSERT INTO `compost` (`username`, `number`, `address`, `quantity`, `id`) VALUES
('tarun', 12345, 'clement town,dehradun', 10, 1),
('jeet', 45678, 'vikas nagar,dehradun', 12, 2),
('tarun', 12345, 'clement town,dehradun', 15, 3),
('swapnil', 456, 'mussorie road,dehradun', 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `username` varchar(50) NOT NULL,
  `number` bigint(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`username`, `number`, `address`, `id`) VALUES
('tarun', 12345, 'clement town,dehradun', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `number` int(11) NOT NULL,
  `password` text NOT NULL,
  `address` varchar(60) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`firstname`, `lastname`, `number`, `password`, `address`, `id`) VALUES
('tarun', 'tiwari', 1234, 'asdf', 'clement town,dehradun', 1),
('aman', 'bijl', 1234, 'awse', 'tehri', 2),
('mohit', 'singh', 7890, 'mohit', 'subhash nagar', 3),
('jeet', 'bhai', 12345, '1234', 'vikas nagar,dehradun', 5),
('a', 'b', 789, 'jkjl', 'jjkl', 12),
('swapnil', 'singh', 456, '123', 'mussorie road,dehradun', 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `compost`
--
ALTER TABLE `compost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `compost`
--
ALTER TABLE `compost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
