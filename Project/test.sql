-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2015 at 03:10 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `bookid` int(11) NOT NULL AUTO_INCREMENT,
  `department` varchar(15) NOT NULL,
  `bname` longtext NOT NULL,
  `author` longtext NOT NULL,
  `total` int(11) NOT NULL,
  `Takenbook` int(11) NOT NULL,
  `a_books` int(11) NOT NULL,
  UNIQUE KEY `bookid` (`bookid`),
  KEY `department` (`department`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Books in the Library' AUTO_INCREMENT=1119 ;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookid`, `department`, `bname`, `author`, `total`, `Takenbook`, `a_books`) VALUES
(1101, 'CSE', 'Begining PHP 5.3', 'Matt Doyle', 9, 1, 8),
(1102, 'CSE', 'Jumping into C++', 'Alex Allan', 12, 0, 12),
(1103, 'CSE', 'OOAD', 'Elavarsi', 6, 1, 5),
(1104, 'CSE', 'Internet Programming HTML5 PHP Java/JS XML', 'Puntambekar', 17, 2, 15),
(1105, 'CSE', 'Computer Graphics', 'Donald Hearn,M Pauline Baker', 13, 1, 12),
(1108, 'CSE', 'Programming PHP', 'Rasmus Lerdorf ,Kevin Tatroe', 17, 1, 16),
(1110, 'CSE', 'Introduction to Linux', 'Machtelt Garrels', 11, 0, 11),
(1111, 'CSE', 'Hello Android 3rd Edition', 'Ed Burnette', 21, 0, 21),
(1112, 'ECE', 'Digital Signal Processing', 'DR.Ramesh Babu', 19, 0, 19),
(1116, 'ECE', 'Transmission Lines and Wave Guides', 'Manoharan', 25, 0, 25),
(1118, 'ECE', 'Electronic Circuits', 'Bakshi', 24, 0, 24);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `userid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Student User ID',
  `username` varchar(50) NOT NULL COMMENT 'Student Name',
  `pwd` longtext NOT NULL COMMENT 'Students login password',
  `mobile` bigint(15) NOT NULL COMMENT 'mobile no',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `userid` (`userid`,`username`),
  KEY `username_2` (`username`),
  FULLTEXT KEY `pwd` (`pwd`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Student user info' AUTO_INCREMENT=1044 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`userid`, `username`, `pwd`, `mobile`) VALUES
(1001, 'vignesh', 'zxcvbnm', 0),
(1002, 'Shyam', 'asdfghjkl', 0),
(1003, 'Naresh', 'hseran', 0),
(1004, 'vicky', 'any12', 0),
(1005, 'shyamkumar', 'asdfgh', 0),
(1012, 'hello', 'zxcvbnm', 0),
(1020, 'Vigne', 'qwerty', 0),
(1021, 'qwert', 'zxcvb', 0),
(1038, 'vignesh1234', 'asdfg', 9566154529),
(1039, 'vicky1', 'baba', 9840051399),
(1040, 'helo', 'asdfg', 9940510542),
(1042, 'helo1', 'hello', 9834252232),
(1043, 'vishal', 'asdfgh', 9876543210);

-- --------------------------------------------------------

--
-- Table structure for table `takenbook`
--

CREATE TABLE IF NOT EXISTS `takenbook` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `bookid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL COMMENT 'Username of Takenbook',
  `takenbook` longtext NOT NULL COMMENT 'Takenbooks Name...',
  UNIQUE KEY `sl_no` (`sl_no`),
  UNIQUE KEY `sl_no_2` (`sl_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `takenbook`
--

INSERT INTO `takenbook` (`sl_no`, `bookid`, `username`, `takenbook`) VALUES
(7, 1104, 'vishal', 'Begining'),
(8, 1105, 'vishal', 'Jumping'),
(9, 1101, 'vignesh', 'Begining'),
(10, 1104, 'vignesh', 'Jumping'),
(11, 1108, 'vignesh', 'OOAD');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
