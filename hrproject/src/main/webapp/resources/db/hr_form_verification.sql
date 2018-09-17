-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2018 at 06:14 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`general_settings_id`, `name`, `description`) VALUES
(1, 'image_upload_location', 'e:/photos/images');

-- --------------------------------------------------------

--
-- Table structure for table `tblimages`
--

CREATE TABLE IF NOT EXISTS `tblimages` (
  `images_id` bigint(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `imagetype` varchar(10) NOT NULL,
  `imagename` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblimages`
--

INSERT INTO `tblimages` (`images_id`, `username`, `imagetype`, `imagename`) VALUES
(19, 'admin', '101', 'admin101.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `usertbl`
--

CREATE TABLE IF NOT EXISTS `usertbl` (
  `userid` bigint(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(21844) NOT NULL,
  `name1` varchar(35) NOT NULL,
  `father` varchar(35) NOT NULL,
  `mother` varchar(35) NOT NULL,
  `spouse` varchar(35) NOT NULL,
  `permanentaddress` varchar(35) NOT NULL,
  `tempaddress` varchar(35) NOT NULL,
  `citizenshipno` varchar(100) NOT NULL,
  `phonenumber` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `ageyr` varchar(3) NOT NULL,
  `agemth` varchar(2) NOT NULL,
  `ageday` varchar(2) NOT NULL,
  `lastpassedexam` varchar(35) NOT NULL,
  `passeddatebs` varchar(10) NOT NULL,
  `passeddatead` varchar(10) NOT NULL,
  `advertiseno` varchar(25) DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT '1',
  `res3` varchar(100) DEFAULT NULL,
  `open_comp` tinyint(1) NOT NULL DEFAULT '0',
  `mahila` tinyint(1) NOT NULL DEFAULT '0',
  `adibasi` tinyint(1) NOT NULL DEFAULT '0',
  `madhesi` tinyint(1) NOT NULL DEFAULT '0',
  `dalit` tinyint(1) NOT NULL DEFAULT '0',
  `apanga` tinyint(1) NOT NULL DEFAULT '0',
  `pichadiyeko_chetra` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertbl`
--

INSERT INTO `usertbl` (`userid`, `username`, `password`, `name`, `name1`, `father`, `mother`, `spouse`, `permanentaddress`, `tempaddress`, `citizenshipno`, `phonenumber`, `email`, `dob`, `ageyr`, `agemth`, `ageday`, `lastpassedexam`, `passeddatebs`, `passeddatead`, `advertiseno`, `status`, `res3`, `open_comp`, `mahila`, `adibasi`, `madhesi`, `dalit`, `apanga`, `pichadiyeko_chetra`) VALUES
(1, 'admin', 'admin', '&#2361;&#2352;&#2367;&#2350;&#2366;&#2344; &#2358;&#2381;&#2352;&#2375;&#2359;&#2381;&#2336;', '', 'Shankar', 'Sima', 'Sunita', 'nepalgunj', 'kathmandu', '123456', '1234567891', 'admin@admin.com', '2020-02-15', '45', '02', '25', 'Bachlor', '20450215', '20180515', '2/2075-2076', '1', NULL, 1, 0, 1, 0, 0, 0, 0),
(15, 'gagan', 'gagan', 'uugdfg', 'Gagan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2/2075-2076', '1', NULL, 0, 0, 0, 0, 0, 0, 0),
(16, 'hariman', 'hariman', '&#2361;&#2352;&#2367;&#2350;&#2366;&#2344; &#2358;&#2381;&#2352;&#2375;&#2359;&#2381;&#2336;', 'hariman Shrestha', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1/2075-2076', '1', NULL, 0, 0, 0, 0, 0, 0, 0),
(17, 'sunil', 'sunil', 'uug', 'Sunil', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1/2075-2076', '1', NULL, 0, 0, 0, 0, 0, 0, 0),
(18, 'abc', 'abc', 'z`lgn sfsL{', 'abc', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1/2075-2076', '1', NULL, 0, 0, 0, 0, 0, 0, 0),
(19, 'sun', 'sun', '&#2358;&#2369;&#2344;&#2367;&#2354; &#2325;&#2369;&#2350;&#2366;&#2352; &#2325;&#2366;&#2352;&#2381;&#2325;&#2368;', 'Sunil', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1/2075-2076', '1', NULL, 0, 0, 0, 0, 0, 0, 0),
(20, 'ram', 'ram', 'sf', 'Ram', 'Suman', 'sunita', 'sumitra', '', '', '', '', '', '', '', '', '', '', '', '', '1/2075-2076', '1', NULL, 0, 0, 0, 0, 0, 0, 0),
(21, 'binod', 'binod', '&#2357;&#2367;&#2344;&#2366;&#2342; &#2325;&#2375;&#2366;&#2311;&#2352;&#2366;&#2354;&#2366;', 'Binod Koirala', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2/2075-2076', '1', NULL, 0, 0, 0, 0, 0, 0, 0),
(22, 'gyanu', 'gyanu', '&#2332;&#2381;&#2334;&#2366;&#2344;&#2369; &#2325;&#2366;&#2352;&#2381;&#2325;&#2368;', 'Gyanu Karki', 'Rudra Bdr', 'sunita', 'Sunil Karki', 'Jajarkot', 'Kritipur', '123456', '9843471701', 'gyanu@gmail.com', '20280415', '45', '2', '1', 'BC Com', '20750215', '2017', '2/2075-2076', '1', NULL, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vacancytbl`
--

CREATE TABLE IF NOT EXISTS `vacancytbl` (
  `id` int(11) NOT NULL DEFAULT '0',
  `advertiseno` varchar(25) DEFAULT NULL,
  `posten` varchar(30) DEFAULT NULL,
  `postnp` varchar(30) DEFAULT NULL,
  `serviceen` varchar(30) DEFAULT NULL,
  `servicenp` varchar(30) DEFAULT NULL,
  `groupen` varchar(30) DEFAULT NULL,
  `groupnp` varchar(30) DEFAULT NULL,
  `date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vacancytbl`
--

INSERT INTO `vacancytbl` (`id`, `advertiseno`, `posten`, `postnp`, `serviceen`, `servicenp`, `groupen`, `groupnp`, `date`) VALUES
(1, '1/2075-2076', 'Section Officer', 'zfvf clws[t', 'General Service', 'k|zf;g', 'Service', 'k|zf;g', '2075/02/15'),
(2, '2/2075-2076', 'Computer Eng', 'sDKo''6/ OlGhlgo/', 'General Service1', 'k|fljlws', 'Service1', 'k|fljlws', '2075/04/15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`general_settings_id`);

--
-- Indexes for table `tblimages`
--
ALTER TABLE `tblimages`
  ADD PRIMARY KEY (`images_id`);

--
-- Indexes for table `usertbl`
--
ALTER TABLE `usertbl`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `vacancytbl`
--
ALTER TABLE `vacancytbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `general_settings_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblimages`
--
ALTER TABLE `tblimages`
  MODIFY `images_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `usertbl`
--
ALTER TABLE `usertbl`
  MODIFY `userid` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
