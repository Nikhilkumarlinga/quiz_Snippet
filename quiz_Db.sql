-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2021 at 07:19 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_options`
--

CREATE TABLE `tbl_options` (
  `optionId` int(10) NOT NULL,
  `qId` int(10) NOT NULL,
  `optionText` varchar(600) NOT NULL,
  `optionType` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_options`
--

INSERT INTO `tbl_options` (`optionId`, `qId`, `optionText`, `optionType`) VALUES
(1, 9, '1-25', 'option'),
(2, 9, '26-50', 'option'),
(3, 9, '51-100', 'option'),
(4, 9, '101-250', 'option'),
(14, 12, 'Large scale disruption (> 60% reduction in sales)', 'radio'),
(15, 12, 'Mid scale disruption (25-60% reduction in sales)', 'radio'),
(16, 12, 'Minor disruption (10 - 25% reduction in sales)', 'radio'),
(17, 12, 'No disruption/Increase in sales', 'radio'),
(18, 13, 'Reductions in capital and operational expenses on IT infrastructure', 'checkbox'),
(19, 13, 'Transforming products or services', 'checkbox'),
(20, 13, 'Preparation for new technical capabilities e.g. strengthening Cybersecurity, Disaster recovery, backup, etc.', 'checkbox'),
(21, 13, 'Scaling to meet business demands', 'checkbox'),
(30, 14, '< INR 1 lac', 'radio'),
(31, 14, 'INR 1 lac to INR 5 lacs', 'radio'),
(32, 14, 'INR 5 lacs to INR 10 lacs', 'radio'),
(33, 14, '>10 lacs', 'radio'),
(34, 15, 'Growth', 'checkbox'),
(35, 15, 'Cost reduction', 'checkbox'),
(36, 15, 'Collaboration', 'checkbox'),
(37, 15, 'Compliance or regulation', 'checkbox');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_questions`
--

CREATE TABLE `tbl_questions` (
  `qId` int(10) NOT NULL,
  `qText` text NOT NULL,
  `qType` varchar(50) NOT NULL,
  `qName` varchar(50) NOT NULL,
  `correctAnswer` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_questions`
--

INSERT INTO `tbl_questions` (`qId`, `qText`, `qType`, `qName`, `correctAnswer`) VALUES
(9, 'Number of Employees', 'select', 'num_employees', 3),
(12, 'Did your business face disruption in terms of revenue/ new sales due to Covid 19?', 'scq', 'face_disruption', 16),
(13, 'What are your top business priorities to initiate your cloud transformation journey (Tick all that apply]? ', 'mcq', 'business_priorities', 20),
(14, 'What is your monthly spend on technology infrastructure?', 'scq', 'technology_infrastructure', 31),
(15, 'What are the factors driving your technology spend?', 'mcq', 'technology_spend', 27);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_submissions`
--

CREATE TABLE `tbl_submissions` (
  `ansId` int(11) NOT NULL,
  `qId` int(10) NOT NULL,
  `clientId` varchar(18) NOT NULL,
  `optionId` varchar(500) NOT NULL,
  `dateAdded` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_options`
--
ALTER TABLE `tbl_options`
  ADD PRIMARY KEY (`optionId`);

--
-- Indexes for table `tbl_questions`
--
ALTER TABLE `tbl_questions`
  ADD PRIMARY KEY (`qId`);

--
-- Indexes for table `tbl_submissions`
--
ALTER TABLE `tbl_submissions`
  ADD PRIMARY KEY (`ansId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_options`
--
ALTER TABLE `tbl_options`
  MODIFY `optionId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `tbl_questions`
--
ALTER TABLE `tbl_questions`
  MODIFY `qId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tbl_submissions`
--
ALTER TABLE `tbl_submissions`
  MODIFY `ansId` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
