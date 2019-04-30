-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 30, 2019 at 03:15 PM
-- Server version: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 7.2.17-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ECommerceAnalytics`
--
CREATE DATABASE IF NOT EXISTS `ECommerceAnalytics` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ECommerceAnalytics`;

-- --------------------------------------------------------

--
-- Table structure for table `Event`
--

CREATE TABLE `Event` (
  `EventId` int(11) NOT NULL,
  `TrackingId` int(255) NOT NULL,
  `StoreId` int(255) NOT NULL,
  `StoreDomain` varchar(255) NOT NULL,
  `CustomerIPAddress` varchar(255) NOT NULL,
  `EventType` int(255) NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `EventDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `GroupId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Event`
--

INSERT INTO `Event` (`EventId`, `TrackingId`, `StoreId`, `StoreDomain`, `CustomerIPAddress`, `EventType`, `IsDeleted`, `EventDate`, `GroupId`) VALUES
(2, 1, 32, '4', '52', 1, 1, '2019-04-25 19:40:03', 0),
(3, 2, 2, 'test', '1112.15.24.2', 1, 1, '2019-04-30 15:07:56', 2);

-- --------------------------------------------------------

--
-- Table structure for table `EventTypes`
--

CREATE TABLE `EventTypes` (
  `EventTypeId` int(11) NOT NULL,
  `EventTypeName` varchar(255) NOT NULL,
  `EventAddedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EventTypes`
--

INSERT INTO `EventTypes` (`EventTypeId`, `EventTypeName`, `EventAddedDate`) VALUES
(1, 'Deepak', '2019-04-25 19:11:43'),
(2, 'Deepak', '2019-04-25 19:14:09'),
(3, 'Deepak', '2019-04-25 19:15:29'),
(4, 'Deepak', '2019-04-25 19:18:26'),
(5, 'Deepak', '2019-04-25 19:28:15'),
(6, 'Deepak', '2019-04-25 19:28:41'),
(7, 'Deepak', '2019-04-25 19:47:29'),
(8, 'Deepak', '2019-04-25 19:48:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Event`
--
ALTER TABLE `Event`
  ADD PRIMARY KEY (`EventId`),
  ADD KEY `EventType` (`EventType`);

--
-- Indexes for table `EventTypes`
--
ALTER TABLE `EventTypes`
  ADD PRIMARY KEY (`EventTypeId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Event`
--
ALTER TABLE `Event`
  MODIFY `EventId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `EventTypes`
--
ALTER TABLE `EventTypes`
  MODIFY `EventTypeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
