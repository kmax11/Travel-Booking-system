-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 27, 2023 at 01:15 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `buy_pac`
--

CREATE TABLE `buy_pac` (
  `full_name` varchar(100) NOT NULL,
  `pac_id` varchar(20) NOT NULL,
  `confi` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buy_pac`
--

INSERT INTO `buy_pac` (`full_name`, `pac_id`, `confi`) VALUES
('kida', 'NVSQ74BNB6', 1),
('kida', 'NVSQ74BNB6', 1);

-- --------------------------------------------------------

--
-- Table structure for table `confirmation`
--

CREATE TABLE `confirmation` (
  `full_name` varchar(20) NOT NULL,
  `tin_no` varchar(20) NOT NULL,
  `confi` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `confirmation`
--

INSERT INTO `confirmation` (`full_name`, `tin_no`, `confi`) VALUES
('kida', 'Q1BZGXVJ8@', 0),
('kida', 'EG0K6F@NB@', 0),
('kida', 'JN@VSDPFY%', 0);

-- --------------------------------------------------------

--
-- Table structure for table `costs`
--

CREATE TABLE `costs` (
  `start` varchar(20) NOT NULL,
  `distn` varchar(20) NOT NULL,
  `flight` int(11) NOT NULL,
  `bus` int(11) NOT NULL,
  `train` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `costs`
--

INSERT INTO `costs` (`start`, `distn`, `flight`, `bus`, `train`) VALUES
('ADDIS ABABA', 'DIRE DAWA', 4000, 1000, 600),
('ADDIS ABABA', 'BAHIRE DAR', 3000, 700, 700),
('ADDIS ABABA', 'MEKELE', 5000, 1500, 1000),
('ADDIS ABABA', 'JIMMA', 1000, 400, 100),
('ADDIS ABABA', 'GONDER', 4000, 1000, 700),
('ADDIS ABABA', 'ARBA MINCHE', 2000, 1000, 500);

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `from_m` varchar(50) NOT NULL,
  `to_o` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `via` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`from_m`, `to_o`, `date`, `via`) VALUES
('JIMMA', 'ADDIS ABEBA', '2023-12-02', 'FLIGHT'),
('BAHIRE DAR', 'ADDIS ABEBA', '2023-02-22', 'FLIGHT'),
('ADDIS ABEBA', 'MEKELE', '2023-02-02', 'FLIGHT'),
('ARBA MINCHE', 'ADDIS ABEBA', '2023-02-02', 'FLIGHT'),
('ADDIS ABEBA', 'DIRE DAWA', '2023-02-02', 'BUS'),
('ADDIS ABEBA', 'DIRE DAWA', '2023-02-02', 'BUS');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `full_name` varchar(100) NOT NULL,
  `start` varchar(20) NOT NULL,
  `distn` varchar(20) NOT NULL,
  `tin_no` varchar(50) NOT NULL,
  `via` varchar(6) NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`full_name`, `start`, `distn`, `tin_no`, `via`, `date`) VALUES
('kida', 'ADDIS ABEBA', 'DIRE DAWA', 'EG0K6F@NB@', 'BUS', '2023-02-02'),
('kida', 'JIMMA', 'ADDIS ABEBA', 'JN@VSDPFY%', 'FLIGHT', '2023-12-02'),
('kida', 'ARBA MINCHE', 'ADDIS ABEBA', 'Q1BZGXVJ8@', 'FLIGHT', '2023-02-02');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `pac_id` varchar(20) NOT NULL,
  `pac_dist` varchar(30) NOT NULL,
  `pac_contains` varchar(10000) NOT NULL,
  `pac_amount` int(11) NOT NULL,
  `pac_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`pac_id`, `pac_dist`, `pac_contains`, `pac_amount`, `pac_price`) VALUES
('NP&CS4XFXB', 'Dire Dawa/Harer', '-ghcfgc\r\n-gcgh\r\n-hcvgh', 100, 2000),
('NVSQ74BNB6', 'Gonder', '-ajhcsbd \r\n-akjds\r\n-cjkabdc', 100, 2999);

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `p_no` int(14) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(12) NOT NULL,
  `roll` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`full_name`, `email`, `p_no`, `sex`, `age`, `address`, `password`, `roll`) VALUES
('abel', 'abel@gmail.com', 92323, 'male', 31, 'dire', '789000', 'true'),
('Abel Wendmu', 'legendielive@gmail.com', 978513510, 'Male', 22, 'Dire Dawa', '123', 'true'),
('abelwendmu', 'abew@gmail.com', 932233223, 'male', 22, 'dire ', '7890', 'true'),
('GAGA', 'legendielive@gmail.com', 943930570, 'Female', 30, 'Dire Dawa', '123', 'false'),
('kida', 'kida@gmail.com', 9434343, 'Male', 21, '456', '456', 'false'),
('testo', 'tes@gmail.com', 9322332, 'Male', 22, 'ADDIS ABEBA', '234', 'true');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buy_pac`
--
ALTER TABLE `buy_pac`
  ADD KEY `bu` (`pac_id`);

--
-- Indexes for table `confirmation`
--
ALTER TABLE `confirmation`
  ADD KEY `buy_bok` (`tin_no`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`tin_no`),
  ADD KEY `order` (`full_name`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`pac_id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`full_name`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buy_pac`
--
ALTER TABLE `buy_pac`
  ADD CONSTRAINT `bu` FOREIGN KEY (`pac_id`) REFERENCES `package` (`pac_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `confirmation`
--
ALTER TABLE `confirmation`
  ADD CONSTRAINT `buy_bok` FOREIGN KEY (`tin_no`) REFERENCES `orders` (`tin_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `order` FOREIGN KEY (`full_name`) REFERENCES `User` (`full_name`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
