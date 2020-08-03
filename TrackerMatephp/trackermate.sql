-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2020 at 09:06 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trackermate`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_Id` varchar(20) NOT NULL,
  `Password` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_Id`, `Password`) VALUES
('admin@admin.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `deleterecords`
--

CREATE TABLE `deleterecords` (
  `Id` varchar(5) NOT NULL,
  `PrisonerName` varchar(30) NOT NULL,
  `Age` int(3) NOT NULL,
  `Gender` varchar(7) NOT NULL,
  `BlockAt` varchar(20) NOT NULL,
  `A_Block` tinyint(1) NOT NULL,
  `B_Block` tinyint(1) NOT NULL,
  `C_Block` tinyint(1) NOT NULL,
  `Credit_points` int(3) NOT NULL,
  `Images` longtext NOT NULL,
  `Crimes` int(5) NOT NULL,
  `Prisoner_address` varchar(500) NOT NULL,
  `Identification_marks` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prisonertable`
--

CREATE TABLE `prisonertable` (
  `Id` varchar(3) NOT NULL,
  `PrisonerName` varchar(20) NOT NULL,
  `Age` int(2) NOT NULL,
  `Gender` varchar(7) NOT NULL,
  `BlockAt` varchar(7) NOT NULL,
  `A_Block` tinyint(1) NOT NULL,
  `B_Block` tinyint(1) NOT NULL,
  `C_Block` tinyint(1) NOT NULL,
  `Credit_points` int(11) NOT NULL,
  `Images` longtext NOT NULL,
  `Crimes` int(5) NOT NULL,
  `Prisoner_address` varchar(500) NOT NULL,
  `Identification_marks` varchar(200) NOT NULL,
  `Remarks` varchar(500) NOT NULL,
  `Balance` int(6) NOT NULL,
  `source` varchar(300) NOT NULL,
  `destination` varchar(300) NOT NULL,
  `start_at` time NOT NULL,
  `end_at` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prisonertable`
--

INSERT INTO `prisonertable` (`Id`, `PrisonerName`, `Age`, `Gender`, `BlockAt`, `A_Block`, `B_Block`, `C_Block`, `Credit_points`, `Images`, `Crimes`, `Prisoner_address`, `Identification_marks`, `Remarks`, `Balance`, `source`, `destination`, `start_at`, `end_at`) VALUES
('A01', 'Nithin', 19, 'Male', 'A block', 0, 0, 0, 95, 'nithin.jpeg', 10, 'Trippur', 'scar in right hand', 'nothing', 0, '', '', '00:00:00', '00:00:00'),
('A02', 'Sanjaiy ', 19, 'Male', 'A block', -1, 0, 0, 100, 'sanjaiy.png', 10, 'Trichy', 'scar in right hand', '1.  afSdff\r\n2.kjxbkj\r\n\r\njwf,kjgbkg,feg\r\ndfsDFfd\r\n', 0, 'A Block', 'Canteen', '10:30:20', '11:01:30'),
('A03', 'Naveen Kumar ', 19, 'Male', 'A Block', -1, 1, 1, 100, 'naveen.jpeg', 3, 'Karur', 'Scar at face', '', 0, 'A Block', 'Gym', '04:31:20', '05:01:20'),
('A05', 'Kiran Subramanian', 19, 'Male', 'A Block', -1, 1, 1, 100, 'kiran.jpeg', 5, 'Salem', 'Scar at right hand', '', 0, 'B block', 'Medical', '10:20:25', '10:50:25'),
('B01', 'Vijayaalayan A', 19, 'Male', 'B Block', -1, 1, 0, 100, 'vijay.jpeg', 50, 'Erode', 'Scar at right hand', '', 0, 'B block', 'Canteen', '01:07:00', '01:37:00'),
('B02', 'swetha', 19, 'Female', 'B block', 0, 0, 0, 100, 'swetha.jpeg', 10, 'Coimbatore', 'scar in right hand', '', 0, '', '', '00:00:00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `warden`
--

CREATE TABLE `warden` (
  `Warden_Name` varchar(20) NOT NULL,
  `Warden_Id` varchar(20) NOT NULL,
  `Warden_Password` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `warden`
--

INSERT INTO `warden` (`Warden_Name`, `Warden_Id`, `Warden_Password`) VALUES
('Nithin', 'Nithin@warden.com', 'nithin123'),
('sanjaiy', 'sk@warden.com', 'sk123'),
('Vijayalayan', 'vijay@warden.com', 'vijay123'),
('Warden', 'warden@warden.com', 'warden123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `prisonertable`
--
ALTER TABLE `prisonertable`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `warden`
--
ALTER TABLE `warden`
  ADD PRIMARY KEY (`Warden_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
