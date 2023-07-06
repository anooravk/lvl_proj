-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 16, 2020 at 10:30 AM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airlinedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) NOT NULL,
  `nname` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `ssubject` varchar(25) NOT NULL,
  `ddescription` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `nname`, `email`, `ssubject`, `ddescription`) VALUES
(1, 'Aanoora Sehar', 'anooravk@gmail.com', 'Nothing', 'user'),
(2, 'Urooj Qaiser', 'uroojmr@gmail.com', 'Nothing', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `fid` int(10) NOT NULL,
  `flightid` varchar(20) NOT NULL,
  `ttime` varchar(12) NOT NULL,
  `ffrom` varchar(20) NOT NULL,
  `tto` varchar(20) NOT NULL,
  `ddate` date NOT NULL,
  `seat` varchar(10) NOT NULL,
  `fare` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--


INSERT INTO `flight` (`fid`, `flightid`, `ttime`, `ffrom`, `tto`, `ddate`, `seat`, `fare`)
VALUES
(9, 'F1004', '08:00', 'Islamabad', 'Peshawar', '2023-06-13', '20', '30000'),
(10, 'F1005', '10:30', 'Islamabad', 'Lahore', '2023-06-13', '20', '25000'),
(11, 'F1006', '13:00', 'Islamabad', 'Karachi', '2023-06-13', '20', '45000'),
(12, 'F1007', '15:30', 'Peshawar', 'Islamabad', '2023-06-13', '20', '35000'),
(13, 'F1008', '18:00', 'Peshawar', 'Lahore', '2023-06-13', '20', '28000'),
(14, 'F1009', '20:30', 'Peshawar', 'Karachi', '2023-06-13', '20', '50000'),
(15, 'F1010', '09:30', 'Lahore', 'Islamabad', '2023-06-13', '20', '32000'),
(16, 'F1011', '12:00', 'Lahore', 'Peshawar', '2023-06-13', '20', '27000'),
(17, 'F1012', '14:30', 'Lahore', 'Karachi', '2023-06-13', '20', '40000'),
(18, 'F1013', '11:30', 'Karachi', 'Islamabad', '2023-06-13', '20', '38000'),
(19, 'F1014', '14:00', 'Karachi', 'Peshawar', '2023-06-13', '20', '32000'),
(20, 'F1015', '16:30', 'Karachi', 'Lahore', '2023-06-13', '20', '35000');


-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(10) NOT NULL,
  `ddate` varchar(25) NOT NULL,
  `notice` text NOT NULL,
  `ttype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `ddate`, `notice`, `ttype`) VALUES
(5, '2023-05-13 16:36:35', 'urooj', 'user'),
(8, '2023-05-13 17:37:16', 'anoora', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `tid` int(10) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `flightid` int(10) NOT NULL,
  `sseat` varchar(11) NOT NULL,
  `phonen` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`tid`, `uname`, `flightid`, `sseat`, `phonen`) VALUES
(170, 'urooj', 8, 'A1', '456456456');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(20) NOT NULL,
  `fname` varchar(11) NOT NULL,
  `lname` varchar(11) NOT NULL,
  `uname` varchar(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` int(11) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `bdate` date NOT NULL,
  `pass` varchar(11) NOT NULL,
  `utype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `fname`, `lname`, `uname`, `email`, `phone`, `gender`, `bdate`, `pass`, `utype`) VALUES
(1, 'Aanoora', 'Sehar', 'anoora', 'anooravk@gmail.com', 123123123, 'Female', '2002-02-26', 'anoora', 'user'),
(3, 'Urooj', 'Qaiser', 'urooj', 'uroojmr@gmail.com', 456456456, 'Female', '2002-01-18', 'urooj', 'user'),
(8, 'Super', 'Admin', 'superadmin', 'super@gmail.com', 1721214996, 'male', '2001-03-10', 'superadmin', 'superadmin'),
(19, 'Admin', '_1', 'admin', 'admin@gmail.com', 111111111, 'Male', '2004-04-01', 'admin', 'admin');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `flightid` (`flightid`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`,`uname`,`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `fid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `tid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
