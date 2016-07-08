-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2016 at 06:27 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ceslogin`
--

-- --------------------------------------------------------

--
-- Table structure for table `addtext`
--

CREATE TABLE IF NOT EXISTS `addtext` (
`id` int(20) NOT NULL,
  `addedtext` varchar(500) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cloudfaq`
--

CREATE TABLE IF NOT EXISTS `cloudfaq` (
`Id` int(11) NOT NULL,
  `Header` varchar(5000) NOT NULL,
  `Question` varchar(5000) NOT NULL,
  `PostingName` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
`Id` int(11) NOT NULL,
  `Header` varchar(3000) NOT NULL,
  `Question` varchar(50000) NOT NULL,
  `PostingName` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `healthfaq`
--

CREATE TABLE IF NOT EXISTS `healthfaq` (
`Id` int(11) NOT NULL,
  `Header` varchar(1500) NOT NULL,
  `Question` varchar(5000) NOT NULL,
  `PostingName` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phonenumber` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `signin`
--

CREATE TABLE IF NOT EXISTS `signin` (
`Id` int(10) NOT NULL,
  `UserName` varchar(150) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `Age` int(10) NOT NULL,
  `Project` varchar(40) NOT NULL,
  `Designation` varchar(200) NOT NULL,
  `SkillSet` varchar(200) NOT NULL,
  `photo` longblob NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addtext`
--
ALTER TABLE `addtext`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cloudfaq`
--
ALTER TABLE `cloudfaq`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `healthfaq`
--
ALTER TABLE `healthfaq`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `signin`
--
ALTER TABLE `signin`
 ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addtext`
--
ALTER TABLE `addtext`
MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `cloudfaq`
--
ALTER TABLE `cloudfaq`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=169;
--
-- AUTO_INCREMENT for table `healthfaq`
--
ALTER TABLE `healthfaq`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `signin`
--
ALTER TABLE `signin`
MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
