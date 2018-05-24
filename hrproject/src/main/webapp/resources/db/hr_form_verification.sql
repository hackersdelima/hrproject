-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2018 at 05:53 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hr_form_verification`
--

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE IF NOT EXISTS `general_settings` (
  `general_settings_id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`general_settings_id`, `name`, `description`) VALUES
(1, 'image_upload_location', 'localhost:8080/hr_images'),
(2, 'image_download_location', '');

-- --------------------------------------------------------

--
-- Table structure for table `usertbl`
--

CREATE TABLE IF NOT EXISTS `usertbl` (
  `userid` bigint(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `citizenshipno` varchar(100) NOT NULL,
  `phonenumber` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT '1',
  `name` varchar(100) NOT NULL,
  `advertiseno` varchar(25) DEFAULT NULL,
  `res3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertbl`
--

INSERT INTO `usertbl` (`userid`, `username`, `password`, `citizenshipno`, `phonenumber`, `email`, `status`, `name`, `advertiseno`, `res3`) VALUES
(6, 'admin', 'admin', '123456', '1234567891', 'admin@admin.com', '1', 'Admin Admin', '2/2075-2076', NULL),
(9, 'shishirkarki', 'shishir', '123456', '9845811254', 'shishir@gmail.com', '1', 'Shishir', '1/2075-2076', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vacancytbl`
--

CREATE TABLE IF NOT EXISTS `vacancytbl` (
  `id` int(11) DEFAULT NULL,
  `advertiseno` varchar(25) DEFAULT NULL,
  `posten` varchar(30) DEFAULT NULL,
  `postnp` varchar(30) DEFAULT NULL,
  `serviceen` varchar(30) DEFAULT NULL,
  `servicenp` varchar(30) DEFAULT NULL,
  `groupen` varchar(30) DEFAULT NULL,
  `groupnp` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vacancytbl`
--

INSERT INTO `vacancytbl` (`id`, `advertiseno`, `posten`, `postnp`, `serviceen`, `servicenp`, `groupen`, `groupnp`) VALUES
(1, '1/2075-2076', 'Section Officer', 'acdag', 'General Service', 'adjk', 'Service', 'abck'),
(2, '2/2075-2076', 'Section Officer1', 'acdag', 'General Service1', 'adjk', 'Service1', 'abck');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`general_settings_id`);

--
-- Indexes for table `usertbl`
--
ALTER TABLE `usertbl`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `general_settings_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `usertbl`
--
ALTER TABLE `usertbl`
  MODIFY `userid` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
