-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2021 at 06:41 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoppingmall`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintable`
--

CREATE TABLE `admintable` (
  `id` int(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admintable`
--

INSERT INTO `admintable` (`id`, `user`, `pass`) VALUES
(1, 'humaira', 'cselab');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EID` int(11) NOT NULL,
  `DOB` int(11) NOT NULL,
  `JoinDate` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `OwnerID` int(11) NOT NULL,
  `OwnwerTL` int(11) NOT NULL,
  `PersonID` int(11) DEFAULT NULL,
  `F_Name` varchar(30) DEFAULT NULL,
  `L_Name` varchar(30) DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Phone` varchar(30) DEFAULT NULL,
  `Gender` varchar(30) DEFAULT NULL,
  `Salary` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gets`
--

CREATE TABLE `gets` (
  `TID` int(11) NOT NULL,
  `SAID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `ProductId` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `OwnerID` int(11) NOT NULL,
  `OwnwerTL` int(11) NOT NULL,
  `F_Name` varchar(30) DEFAULT NULL,
  `L_Name` varchar(30) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phonenumber`
--

CREATE TABLE `phonenumber` (
  `ID` int(11) NOT NULL,
  `OwnerID` int(11) NOT NULL,
  `TID` int(11) NOT NULL,
  `PhoneNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `EID` int(11) NOT NULL,
  `POST` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

CREATE TABLE `rent` (
  `ReceiptNo` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `F_Name` varchar(30) DEFAULT NULL,
  `L_Name` varchar(30) DEFAULT NULL,
  `ShopId` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `OwnerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sells`
--

CREATE TABLE `sells` (
  `ShopID` int(11) NOT NULL,
  `ShopNo` int(11) NOT NULL,
  `ProductID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `ShopId` int(11) NOT NULL,
  `ShopNo` int(11) NOT NULL,
  `FloorNo` int(11) NOT NULL,
  `RentPerMonth` int(11) NOT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `OwnerID` int(11) NOT NULL,
  `Owner_Tl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shopallocation`
--

CREATE TABLE `shopallocation` (
  `SAID` int(11) NOT NULL,
  `ShopId` int(11) NOT NULL,
  `ShopNo` int(11) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` varchar(20) NOT NULL,
  `dateofbirth` int(20) NOT NULL,
  `pnumber` int(20) NOT NULL,
  `tdnumber` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `cpassword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`fname`, `lname`, `email`, `dateofbirth`, `pnumber`, `tdnumber`, `password`, `cpassword`) VALUES
('Pial', 'Rahman', 'pialrahman922@gmail.', 1051994, 2147483647, '123456789', '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `ProductID` int(11) NOT NULL,
  `Size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tenant`
--

CREATE TABLE `tenant` (
  `TID` int(11) NOT NULL,
  `RentRate` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `FloorNo` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `OwnerID` int(11) NOT NULL,
  `OwnerTL` int(11) NOT NULL,
  `F_Name` varchar(30) DEFAULT NULL,
  `L_Name` varchar(30) DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admintable`
--
ALTER TABLE `admintable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EID`),
  ADD KEY `ID` (`ID`),
  ADD KEY `OwnerID` (`OwnerID`);

--
-- Indexes for table `gets`
--
ALTER TABLE `gets`
  ADD KEY `TID` (`TID`),
  ADD KEY `SAID` (`SAID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ProductId`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`OwnerID`);

--
-- Indexes for table `phonenumber`
--
ALTER TABLE `phonenumber`
  ADD KEY `ID` (`ID`),
  ADD KEY `OwnerID` (`OwnerID`),
  ADD KEY `TID` (`TID`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD KEY `EID` (`EID`);

--
-- Indexes for table `rent`
--
ALTER TABLE `rent`
  ADD PRIMARY KEY (`ReceiptNo`),
  ADD KEY `ShopId` (`ShopId`),
  ADD KEY `ID` (`ID`),
  ADD KEY `OwnerID` (`OwnerID`);

--
-- Indexes for table `sells`
--
ALTER TABLE `sells`
  ADD KEY `ShopID` (`ShopID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`ShopId`);

--
-- Indexes for table `shopallocation`
--
ALTER TABLE `shopallocation`
  ADD PRIMARY KEY (`SAID`),
  ADD KEY `ShopId` (`ShopId`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `tenant`
--
ALTER TABLE `tenant`
  ADD PRIMARY KEY (`TID`),
  ADD KEY `ID` (`ID`),
  ADD KEY `OwnerID` (`OwnerID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admintable`
--
ALTER TABLE `admintable`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `admintable` (`id`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`OwnerID`) REFERENCES `owner` (`OwnerID`);

--
-- Constraints for table `gets`
--
ALTER TABLE `gets`
  ADD CONSTRAINT `gets_ibfk_1` FOREIGN KEY (`TID`) REFERENCES `tenant` (`TID`),
  ADD CONSTRAINT `gets_ibfk_2` FOREIGN KEY (`SAID`) REFERENCES `shopallocation` (`SAID`);

--
-- Constraints for table `phonenumber`
--
ALTER TABLE `phonenumber`
  ADD CONSTRAINT `phonenumber_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `admintable` (`id`),
  ADD CONSTRAINT `phonenumber_ibfk_2` FOREIGN KEY (`OwnerID`) REFERENCES `owner` (`OwnerID`),
  ADD CONSTRAINT `phonenumber_ibfk_3` FOREIGN KEY (`TID`) REFERENCES `tenant` (`TID`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`EID`) REFERENCES `employee` (`EID`);

--
-- Constraints for table `rent`
--
ALTER TABLE `rent`
  ADD CONSTRAINT `rent_ibfk_1` FOREIGN KEY (`ShopId`) REFERENCES `shop` (`ShopId`),
  ADD CONSTRAINT `rent_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `admintable` (`id`),
  ADD CONSTRAINT `rent_ibfk_3` FOREIGN KEY (`OwnerID`) REFERENCES `owner` (`OwnerID`);

--
-- Constraints for table `sells`
--
ALTER TABLE `sells`
  ADD CONSTRAINT `sells_ibfk_1` FOREIGN KEY (`ShopID`) REFERENCES `shop` (`ShopId`),
  ADD CONSTRAINT `sells_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `item` (`ProductId`);

--
-- Constraints for table `shopallocation`
--
ALTER TABLE `shopallocation`
  ADD CONSTRAINT `shopallocation_ibfk_1` FOREIGN KEY (`ShopId`) REFERENCES `shop` (`ShopId`),
  ADD CONSTRAINT `shopallocation_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `admintable` (`id`);

--
-- Constraints for table `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `item` (`ProductId`);

--
-- Constraints for table `tenant`
--
ALTER TABLE `tenant`
  ADD CONSTRAINT `tenant_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `admintable` (`id`),
  ADD CONSTRAINT `tenant_ibfk_2` FOREIGN KEY (`OwnerID`) REFERENCES `owner` (`OwnerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
