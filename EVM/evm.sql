-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2018 at 10:41 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Name`, `username`, `password`) VALUES
('Yogeeta ', 'Yogeeta', '123');

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `c_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `party` varchar(50) NOT NULL,
  `DOE` date NOT NULL,
  `location` varchar(100) NOT NULL,
  `phno` double NOT NULL,
  `symbol` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`c_id`, `name`, `party`, `DOE`, `location`, `phno`, `symbol`) VALUES
(27, 'Modi', 'BJP', '2018-06-10', 'Pune', 9875436839, 'images/09-06-2018-1528562417.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `startelection`
--

CREATE TABLE `startelection` (
  `id` int(11) NOT NULL,
  `ElecName` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `startelection`
--

INSERT INTO `startelection` (`id`, `ElecName`, `start_date`, `start_time`, `end_time`) VALUES
(3, 'abc', '2018-06-11', '09:00:00', '23:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `voter`
--

CREATE TABLE `voter` (
  `ElectionId` varchar(30) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `mobile` double NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `ward_no` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL DEFAULT '0',
  `registered` varchar(20) NOT NULL DEFAULT 'No',
  `voted` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voter`
--

INSERT INTO `voter` (`ElectionId`, `Name`, `address`, `mobile`, `email_id`, `ward_no`, `username`, `password`, `registered`, `voted`) VALUES
('12345', 'Archie Fernandes', 'Margao', 9867896576, 'archie@gmail.com', 5, '12345', '0', 'No', '0'),
('9876', 'Vijeta', 'Margao', 9876543456, 'vijeta@gmail.com', 2, '9876', '0', 'No', '0');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `Date` date NOT NULL,
  `elec_name` varchar(50) NOT NULL,
  `ID` int(11) DEFAULT NULL,
  `Candidate` varchar(50) NOT NULL,
  `Vote` int(11) DEFAULT NULL,
  `symbol` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`Date`, `elec_name`, `ID`, `Candidate`, `Vote`, `symbol`) VALUES
('2018-06-05', 'abc', 18, 'Archie Fernandes', 4, 'images/04-06-2018-1528115086.jpg'),
('2018-06-07', 'test', 21, 'Frosty', 1, 'images/07-06-2018-1528393365.jpg'),
('2018-06-07', 'test', 19, 'Vijeta Raikar', 1, 'images/07-06-2018-1528356994.png'),
('2018-06-08', 'Panchayat', 18, 'Archie Fernandes', 1, 'images/04-06-2018-1528115086.jpg'),
('2018-06-09', 'abc', 26, 'Archie ', 1, 'images/09-06-2018-1528543738.jpg'),
('2018-06-09', 'abc', 27, 'Modi', 1, 'images/09-06-2018-1528562417.jpg'),
('2018-06-11', 'abc', 27, 'Modi', 1, 'images/09-06-2018-1528562417.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `startelection`
--
ALTER TABLE `startelection`
  ADD PRIMARY KEY (`id`,`start_date`) USING BTREE;

--
-- Indexes for table `voter`
--
ALTER TABLE `voter`
  ADD PRIMARY KEY (`ElectionId`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`Date`,`Candidate`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `startelection`
--
ALTER TABLE `startelection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
