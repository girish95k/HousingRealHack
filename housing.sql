-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 26, 2015 at 10:52 AM
-- Server version: 5.5.43-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `housing`
--

-- --------------------------------------------------------

--
-- Table structure for table `broker`
--

CREATE TABLE IF NOT EXISTS `broker` (
  `brokerid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `points` int(11) NOT NULL,
  PRIMARY KEY (`brokerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE IF NOT EXISTS `property` (
  `propid` int(11) NOT NULL AUTO_INCREMENT,
  `ownerid` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `bhk` int(11) NOT NULL,
  `lat` double(10,7) NOT NULL,
  `lon` double(10,7) NOT NULL,
  `numppl` int(11) NOT NULL,
  `rentable` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`propid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`propid`, `ownerid`, `price`, `bhk`, `lat`, `lon`, `numppl`, `rentable`, `description`, `address`) VALUES
(4, 1, 10000, 3, 23.0000000, 77.0000000, 4, 0, '3 BHK Independent House.\r\nPH: +9190362610', 'Opp. Shriram apts., S S A Road, Hebbal, Bangalore, Karnataka.'),
(5, 1, 5000, 2, 24.0000000, 76.0000000, 4, 0, '100 Acre Land.\r\n\r\nPH: +9181475654', 'Shivananda Circle, Race Course Road, Bangalore, Karnataka.'),
(6, 1, 30000, 2, 12.9784390, 77.5789620, 3, 1, '2BHK Apartment.', '138, 5th Cross Rd, Gandhi Nagar, Bengaluru, Karnataka.'),
(7, 1, 25000, 2, 12.9695840, 77.5972210, 3, 1, '2BHK Apartment.\r\n', 'Ajanta Apartments, Vittal Mallya Road.'),
(8, 1, 30000, 2, 12.9707650, 77.5970280, 3, 1, '2 BHK Apartment.', 'Residency Road, Bangalore, Karnataka.'),
(9, 1, 50000, 3, 12.9673360, 77.5892070, 5, 0, '3BHK Independent House.', '5th Cross Road, Gandhi Nagar, Bangalore, Karnataka.');

-- --------------------------------------------------------

--
-- Table structure for table `propvideo`
--

CREATE TABLE IF NOT EXISTS `propvideo` (
  `propid` int(11) NOT NULL,
  `url` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `brokerid` int(11) NOT NULL,
  `videoid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`videoid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `propvideo`
--

INSERT INTO `propvideo` (`propid`, `url`, `brokerid`, `videoid`) VALUES
(1, 'youtube.com', 2, 1),
(2, 'http://google.com', 3, 2),
(1, 'http://yahoo.com', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `openness` int(11) NOT NULL,
  `conscience` int(11) NOT NULL,
  `extroverted` int(11) NOT NULL,
  `agreeable` int(11) NOT NULL,
  `neurotic` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `budget` int(11) NOT NULL,
  `phno` varchar(20) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `name`, `openness`, `conscience`, `extroverted`, `agreeable`, `neurotic`, `gender`, `budget`, `phno`) VALUES
(1, 'John', 1, 1, 2, 2, 6, 'M', 0, ''),
(2, 'John', 1, 1, 2, 2, 5, 'M', 0, ''),
(3, 'John', 1, 1, 2, 2, 5, 'M', 0, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
