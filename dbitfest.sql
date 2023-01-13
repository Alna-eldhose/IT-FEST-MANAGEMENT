-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 03, 2021 at 05:51 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbitfest`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_allocation`
--

CREATE TABLE IF NOT EXISTS `tbl_allocation` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `eventid` int(50) NOT NULL,
  `judgeid` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_allocation`
--

INSERT INTO `tbl_allocation` (`id`, `eventid`, `judgeid`) VALUES
(2, 1, 1),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_college`
--

CREATE TABLE IF NOT EXISTS `tbl_college` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(20) NOT NULL,
  `caddress` varchar(50) NOT NULL,
  `ccontact` bigint(12) NOT NULL,
  `cemail` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_college`
--

INSERT INTO `tbl_college` (`cid`, `cname`, `caddress`, `ccontact`, `cemail`, `status`) VALUES
(1, 'carmel college ', 'mala p.o ', 9090909090, 'carmel@gmail.com', '1'),
(2, 'st thomas college ', 'Tcr', 8787879876, 'stthomas@gmail.com', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coordinator`
--

CREATE TABLE IF NOT EXISTS `tbl_coordinator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_coordinator`
--

INSERT INTO `tbl_coordinator` (`id`, `name`, `address`, `contact`, `place`, `email`, `status`) VALUES
(1, 'Sruthy', 'wqusu', '6767676777', 'idukki', 'sruthy@gmail.com', '1'),
(2, 'cera', 'aynikkal', '8080800800', 'Tcr', 'cera@gmail.com', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_event`
--

CREATE TABLE IF NOT EXISTS `tbl_event` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `ename` varchar(50) NOT NULL,
  `edate` date NOT NULL,
  `venue` varchar(50) NOT NULL,
  `etime` varchar(50) NOT NULL,
  `peoplenum` int(3) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_event`
--

INSERT INTO `tbl_event` (`id`, `ename`, `edate`, `venue`, `etime`, `peoplenum`, `status`) VALUES
(1, 'Click And Talk', '2020-02-28', 'Auditorium', '10:00', 1, 1),
(2, 'blind coding', '2021-05-14', 'Ekm', '03:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE IF NOT EXISTS `tbl_feedback` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `studentid` int(50) NOT NULL,
  `feedback` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_feedback`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_judge`
--

CREATE TABLE IF NOT EXISTS `tbl_judge` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `place` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_judge`
--

INSERT INTO `tbl_judge` (`id`, `name`, `contact`, `place`, `email`, `image`, `status`) VALUES
(1, 'Shilpa', '9898989899', 'pathanamthitta', 'shilpa@gmail.com', '/media/2018-02.webp', '1'),
(2, 'jude', '8086808080', 'koratty', 'jude@gmail.com', '/media/colge1%20(1)%20(4).jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE IF NOT EXISTS `tbl_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `usertype` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `username`, `password`, `usertype`, `status`) VALUES
(1, 'admin@gmail.com', 'admin', 'Admin', 1),
(14, 'shyam@gmail.com', 'shyam', 'Student', 1),
(15, 'sruthy@gmail.com', 'sruthy', 'Coordinator', 1),
(16, 'shilpa@gmail.com', 'shilpa', 'Judge', 1),
(17, 'carmel@gmail.com', 'carmel@123', 'College', 1),
(18, 'sona@gmail.com', 'sona@123', 'Student', 1),
(19, 'cera@gmail.com', 'cera@123', 'Coordinator', 1),
(20, 'jude@gmail.com', 'jude@123', 'Judge', 1),
(21, 'stthomas@gmail.com', 'stthomas@123', 'College', 1),
(22, 'sruthy@gmail.com', 'sruthy@123', 'Student', 1),
(23, 'sajan@gmail.com', 'sajan@123', 'Student', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mark`
--

CREATE TABLE IF NOT EXISTS `tbl_mark` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `pid` int(50) NOT NULL,
  `eventname` int(12) NOT NULL,
  `judgeid` int(50) NOT NULL,
  `score` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_mark`
--

INSERT INTO `tbl_mark` (`id`, `pid`, `eventname`, `judgeid`, `score`) VALUES
(1, 1, 1, 1, '50'),
(2, 2, 2, 2, '46'),
(3, 4, 2, 2, '20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_participants`
--

CREATE TABLE IF NOT EXISTS `tbl_participants` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `pid` int(50) NOT NULL,
  `eventid` int(50) NOT NULL,
  `cid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_participants`
--

INSERT INTO `tbl_participants` (`id`, `pid`, `eventid`, `cid`) VALUES
(1, 1, 1, 1),
(4, 2, 2, 1),
(5, 2, 1, 1),
(6, 4, 2, 2),
(7, 4, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE IF NOT EXISTS `tbl_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `saddress` varchar(50) NOT NULL,
  `scontact` varchar(50) NOT NULL,
  `semail` varchar(50) NOT NULL,
  `idproof` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`id`, `cid`, `sname`, `saddress`, `scontact`, `semail`, `idproof`, `status`) VALUES
(1, 1, 'Shyam', 'idukki', '9898989899', 'shyam@gmail.com', '/media/748c4f1e0bf2de00da7cdae61eee15ae.jpg', '1'),
(2, 1, 'sona', 'meladoor p.o', '8080800800', 'sona@gmail.com', '/media/maths_WfR2eyy.jpg', '1'),
(3, 2, 'sruthy', 'rosevilla (h)', '8086808080', 'sruthy@gmail.com', '/media/maths_WfR2eyy_2NSvrzi.jpg', '0'),
(4, 2, 'sajan', 'gracevilla', '9090909090', 'sajan@gmail.com', '/media/maths_WfR2eyy_gY4NMNx.jpg', '0');

-- --------------------------------------------------------

--
-- Table structure for table `winner`
--

CREATE TABLE IF NOT EXISTS `winner` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `pid` int(50) NOT NULL,
  `ename` int(12) NOT NULL,
  `score` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `winner`
--

INSERT INTO `winner` (`id`, `pid`, `ename`, `score`) VALUES
(1, 1, 1, '50'),
(4, 2, 2, '46');
