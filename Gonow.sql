-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 25, 2017 at 06:54 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Gonow`
--

-- --------------------------------------------------------

--
-- Table structure for table `Gender`
--

CREATE TABLE `Gender` (
  `genderID` int(11) NOT NULL,
  `genderType` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Gender`
--

INSERT INTO `Gender` (`genderID`, `genderType`) VALUES
(1, 'male'),
(2, 'female');

-- --------------------------------------------------------

--
-- Table structure for table `Position`
--

CREATE TABLE `Position` (
  `positionID` int(11) NOT NULL,
  `PositionName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Position`
--

INSERT INTO `Position` (`positionID`, `PositionName`) VALUES
(1, 'Admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `Trip`
--

CREATE TABLE `Trip` (
  `tripName` text NOT NULL,
  `tripCountry` text NOT NULL,
  `tripBudget` float NOT NULL,
  `typeOfVahicle` text NOT NULL,
  `IDTripOwner` int(11) NOT NULL,
  `IDTypeOfTrip` int(11) NOT NULL,
  `quantityMember` int(11) NOT NULL,
  `tripPlan` text NOT NULL,
  `tripLocation` text NOT NULL,
  `genderID` int(11) NOT NULL,
  `tripDuration` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `TripFeedback`
--

CREATE TABLE `TripFeedback` (
  `userID` int(11) NOT NULL,
  `tripName` text NOT NULL,
  `Review` text NOT NULL,
  `tripRating` int(11) NOT NULL,
  `ownerTripRating` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `TripMember`
--

CREATE TABLE `TripMember` (
  `tripName` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `userStatus` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `TripType`
--

CREATE TABLE `TripType` (
  `typeID` int(11) NOT NULL,
  `typeName` text NOT NULL,
  `typeDetail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `userID` int(11) NOT NULL,
  `userName` text NOT NULL,
  `userGender` int(11) NOT NULL,
  `userCountry` text NOT NULL,
  `userMobile` int(10) NOT NULL,
  `userLastName` text NOT NULL,
  `userAddress` text NOT NULL,
  `userDateOfBirth` date NOT NULL,
  `userRole` int(11) NOT NULL,
  `userPassword` text NOT NULL,
  `userIDcard` text NOT NULL,
  `userCity` text NOT NULL,
  `userEmail` text NOT NULL,
  `userPicture` tinyblob NOT NULL,
  `Name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`userID`, `userName`, `userGender`, `userCountry`, `userMobile`, `userLastName`, `userAddress`, `userDateOfBirth`, `userRole`, `userPassword`, `userIDcard`, `userCity`, `userEmail`, `userPicture`, `Name`) VALUES
(1000001, 'iamlkate', 2, 'Thailand\r\n', 875851651, 'Jaiaree', '205 Bang-Mod', '1996-07-24', 1, '1234555', '1234567891111', 'Bangkok', 'late.ary@gmail.com', '', 'Areeya'),
(10000002, 'iamlkate', 2, 'Thailand\r\n', 875851651, 'Jaiaree', '205 Bang-Mod', '1996-07-24', 1, '1234555', '1234567891111', 'Bangkok', 'late.ary@gmail.com', '', 'Areeya'),
(10000003, 'nitacamel', 1, 'Thailand', 882112826, 'Poonsawad', '123 Prapadeang', '1996-01-24', 1, 'fsyfvtd', '1234567892222', 'Bangkok', 'nita@gmail.com', '', 'Nichanat'),
(10000004, 'korkoyy', 2, 'Thailand', 879299591, 'Channiam', '345 Bang-Mod', '1996-06-21', 1, 'ASDFGHJKL', '1234567893333', 'Bangkok', 'korkoyy@gmail.com', '', 'Ruthai'),
(10000005, 'natap', 2, 'Thailand', 951100842, 'Keeratiyutapaisarn', '679 Prapadeang', '1996-02-26', 2, 'zxcvbnmdfghjk', '1234567894444', 'Bangkok', 'nat_tap@hotmail.com', '', 'Pattaranit'),
(10000006, 'miewlali', 2, 'Thailand', 824559520, 'Boonsan', '406 Bang-Mod', '1995-04-26', 2, 'zxcnqwjioteu', '1234567895555', 'Bangkok', 'miewlali@gmail.com', '', 'Lalita'),
(10000007, 'mmminorrr', 2, 'Thailand', 872341234, 'Natiprawat', '123 Bang-Mod', '1996-03-02', 2, 'awfd5tsfrywqr76', '1234567896666', 'Bangkok', 'minorrr@gmail.com', '', 'Kanyakorn');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Gender`
--
ALTER TABLE `Gender`
  ADD PRIMARY KEY (`genderID`);

--
-- Indexes for table `Position`
--
ALTER TABLE `Position`
  ADD PRIMARY KEY (`positionID`);

--
-- Indexes for table `Trip`
--
ALTER TABLE `Trip`
  ADD PRIMARY KEY (`IDTypeOfTrip`);

--
-- Indexes for table `TripFeedback`
--
ALTER TABLE `TripFeedback`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `TripType`
--
ALTER TABLE `TripType`
  ADD PRIMARY KEY (`typeID`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`userID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
