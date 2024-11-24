-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2024 at 05:21 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arlington_sprouts`
--

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `Did` int(11) NOT NULL,
  `Ctid` int(11) NOT NULL,
  `Sdate` date DEFAULT NULL,
  `Ctime` time DEFAULT NULL,
  `Cname` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contract`
--

INSERT INTO `contract` (`Did`, `Ctid`, `Sdate`, `Ctime`, `Cname`) VALUES
(2, 1, '2024-06-24', '13:00:00', 'Sprout Buddies'),
(2, 2, '2024-07-01', '13:00:00', 'Sprout Buddies'),
(4, 2, '2024-06-26', '16:00:00', 'Sprout Certifications'),
(5, 2, '2024-07-26', '14:00:00', 'Sprout Buddies'),
(2, 3, '2024-07-07', '13:00:00', 'Sprout Buddies'),
(5, 3, '2024-07-26', '15:00:00', 'Sprout Sandwiches'),
(2, 4, '2024-07-14', '14:00:00', 'Sprout Sandwiches'),
(5, 4, '2024-07-26', '16:00:00', 'Sprout Sandwiches'),
(5, 5, '2024-07-26', '17:00:00', 'Microgreens');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cId` int(11) NOT NULL,
  `Cname` varchar(42) NOT NULL,
  `Street` varchar(42) NOT NULL,
  `City` varchar(42) NOT NULL,
  `StateAb` varchar(2) NOT NULL,
  `Zipcode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cId`, `Cname`, `Street`, `City`, `StateAb`, `Zipcode`) VALUES
(1, 'Abed Abdi', '309 Hcounty Road', 'Abbott', 'TX', '76621-0057'),
(2, 'Ismail Gulg', '405 E Mesquite Street', 'Abbott', 'TX', '76621-0057'),
(3, 'Shakir Ali', '5000 Spectrum Street', 'Addison', 'TX', '75001-6880'),
(4, 'Abdur Rahman', '1000 County Road', 'Bradley', 'Ok', '73011-0121'),
(5, 'Kalipada Ghoshal', 'Boundary Road', 'Bradley', 'OK', '73011-9600'),
(6, 'Manishi Dey', '450 Main Street', 'Mound City', 'KS', '66056-0001'),
(7, 'Nandalal Bose', 'S Metcalf Road', 'Louisburg', 'KS', '66053-0541'),
(8, 'Raja Ravi Varma', '2000 Forest Grove blvd', 'Allen', 'TX', '75002-8811'),
(9, 'Sunil Das', '4000 Woodcreek Road', 'Carrollton', 'TX', '75006-1911'),
(10, 'Jasper Johns', '2500 Sunset Ridge Drive', 'Rockwall', 'TX', '75032-0006'),
(11, 'Winslow Homer', '11300 Juniper Lane', 'Irving', 'TX', '75039-0101'),
(12, 'Albert Bierstadt', '400 Spruce Street', 'Leavenworth', 'KS', '66048-0001'),
(13, 'Edward Hopper', '1500 255th Street', 'Hillsdale', 'KS', '66036-0061'),
(14, 'Georgia O Keeffe', '3000 Weiss Lane', 'Irving', 'TX', '75039-0006'),
(15, 'Modupeola Fadugba', '1112 18TH Street', 'Plano', 'TX', '75086-0019'),
(16, 'Ekene Maduka', '15TH Street', 'Plano', 'TX', '75086-0015'),
(17, 'Olu Amoda', '200 Travis Street', 'Sherman', 'TX', '75090-0005'),
(18, 'Koki Tanaka', '5000 W Holiday Road', 'Fate', 'TX', '75087-2136'),
(19, 'Tatsuo Miyajima', 'Bella Ranch Drive', 'Choctaw', 'OK', '73020-0017'),
(20, 'Li Chen', '2090 County Road', 'Cement', 'OK', '73017-1100'),
(21, 'Zhan Wang', '1600 N Santa Fe', 'Edmond', 'OK', '73003-3661');

-- --------------------------------------------------------

--
-- Table structure for table `dealer`
--

CREATE TABLE `dealer` (
  `Did` int(11) NOT NULL,
  `Dname` char(32) NOT NULL,
  `Street` char(32) NOT NULL,
  `City` char(16) NOT NULL,
  `State_AB` char(2) NOT NULL,
  `Zip_Code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dealer`
--

INSERT INTO `dealer` (`Did`, `Dname`, `Street`, `City`, `State_AB`, `Zip_Code`) VALUES
(1, 'Organic Nature', '1500 E Exchange Road', 'Allen', 'TX', '75002-4504'),
(2, 'Green Valley', '1405 Julian Street', 'Addison', 'TX', '75001-4633'),
(3, 'Green Mountains', '800 Preston Road', 'Gunter', 'TX', '75058-0001'),
(4, 'Whole Foods', '1010 Spicewood Drive', 'Garland', 'TX', '75044-2569'),
(5, 'LA Queen', '500 Angi Road', 'Minden', 'LA', '71055-1004'),
(6, 'Castor Sprouts', '100 New Ramah Road', 'Castor', 'LA', '71016-2402');

-- --------------------------------------------------------

--
-- Table structure for table `dealer_item`
--

CREATE TABLE `dealer_item` (
  `Did` int(11) NOT NULL,
  `Iid` int(11) NOT NULL,
  `Dprice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dealer_item`
--

INSERT INTO `dealer_item` (`Did`, `Iid`, `Dprice`) VALUES
(1, 1, 2),
(1, 2, 2),
(1, 3, 1),
(1, 14, 1),
(2, 4, 3),
(2, 5, 2),
(2, 6, 2),
(2, 13, 4),
(3, 7, 3),
(3, 8, 2),
(3, 9, 2),
(3, 10, 2),
(4, 11, 3),
(4, 12, 3),
(4, 13, 2),
(4, 14, 2),
(5, 7, 3),
(5, 11, 2),
(5, 13, 5),
(5, 14, 3),
(6, 7, 2),
(6, 8, 1),
(6, 9, 3),
(6, 10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `dealer_shop`
--

CREATE TABLE `dealer_shop` (
  `Did` int(11) NOT NULL,
  `Sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dealer_shop`
--

INSERT INTO `dealer_shop` (`Did`, `Sid`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `sId` int(11) NOT NULL,
  `SSN` char(9) NOT NULL,
  `Ename` varchar(42) NOT NULL,
  `Street` varchar(42) NOT NULL,
  `City` varchar(42) NOT NULL,
  `StateAb` varchar(2) NOT NULL,
  `Zipcode` varchar(10) NOT NULL,
  `Bdate` date DEFAULT NULL,
  `Sdate` date NOT NULL,
  `Edate` date DEFAULT NULL,
  `Etype` char(1) NOT NULL,
  `Level_` varchar(16) DEFAULT NULL,
  `Asalary` int(11) DEFAULT NULL,
  `Agency` char(42) DEFAULT NULL,
  `Hsalary` int(11) DEFAULT NULL,
  `Institute` char(42) DEFAULT NULL,
  `Itype` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`sId`, `SSN`, `Ename`, `Street`, `City`, `StateAb`, `Zipcode`, `Bdate`, `Sdate`, `Edate`, `Etype`, `Level_`, `Asalary`, `Agency`, `Hsalary`, `Institute`, `Itype`) VALUES
(1, '123456666', 'Olampiosi Pi', '100 Varsity Circle', 'Arlington', 'TX', '76019-1111', '2005-01-02', '2023-01-20', NULL, 'T', NULL, NULL, 'Top Performers', 10, NULL, NULL),
(1, '123456777', 'Radha Gupta', '200 Nedderman Dr', 'Arlington', 'TX', '76019-1111', '2005-01-20', '2023-01-20', NULL, 'T', NULL, NULL, 'AR Manpower', 10, NULL, NULL),
(1, '123456780', 'Cao Peng', '12 W. Mitchell St.', 'Arlington', 'TX', '76019-1111', '2008-01-20', '2023-01-20', NULL, 'I', NULL, NULL, NULL, NULL, 'UTA', 'U'),
(1, '123456781', 'Giun Seong', '12 S. Pecan St.', 'Arlington', 'TX', '76019-1111', '2007-01-01', '2023-01-20', '0000-00-00', 'I', NULL, NULL, NULL, NULL, 'Arlington High School', 'S'),
(1, '123456788', 'Christian Cart', '20 Main Street', 'Arlington', 'TX', '76019-1111', '2001-01-02', '2023-01-20', NULL, 'F', 'Associate 1', 25000, NULL, NULL, NULL, NULL),
(1, '123456789', 'Mary Durer', '11 Cooper Street', 'Arlington', 'TX', '76019-1111', '2000-01-20', '2023-01-20', NULL, 'F', 'Associate 2', 30000, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `Iid` int(11) NOT NULL,
  `Iname` char(32) NOT NULL,
  `Sprice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`Iid`, `Iname`, `Sprice`) VALUES
(1, 'Broccoli Sprouts', 3),
(2, 'Kale Sprouts', 3),
(3, 'Candy Shop', 6),
(4, 'Mung Sprouts', 4),
(5, 'Chickpeas Sprouts', 4),
(6, 'Onion Sprouts', 4),
(7, 'Soyabean Sprouts', 5),
(8, 'Clover Sprouts', 3),
(9, 'Kidney Beans Sprouts', 4),
(10, 'Adzuki Bean Sprouts', 4),
(11, 'Beet Sprouts', 5),
(12, 'Green Pea Sprouts', 5),
(13, 'Radish Sprouts', 6),
(14, 'Lentil Sprouts', 4);

-- --------------------------------------------------------

--
-- Stand-in structure for view `itemview`
-- (See below for the actual view)
--
CREATE TABLE `itemview` (
`ItemId` int(11)
,`ItemName` char(32)
,`NoOfBoxes` bigint(21)
,`ItemPrice` int(11)
,`ItemCustomers` bigint(21)
,`ItemRevenue` bigint(31)
);

-- --------------------------------------------------------

--
-- Table structure for table `oldprice`
--

CREATE TABLE `oldprice` (
  `Iid` int(11) NOT NULL,
  `Sprice` int(11) NOT NULL,
  `Sdate` date NOT NULL,
  `Edate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oldprice`
--

INSERT INTO `oldprice` (`Iid`, `Sprice`, `Sdate`, `Edate`) VALUES
(1, 3, '0000-00-00', NULL),
(2, 3, '0000-00-00', NULL),
(3, 1, '0000-00-00', '0000-00-00'),
(3, 2, '0000-00-00', '0000-00-00'),
(3, 3, '0000-00-00', NULL),
(4, 4, '0000-00-00', NULL),
(5, 4, '0000-00-00', NULL),
(6, 4, '0000-00-00', NULL),
(7, 5, '0000-00-00', NULL),
(8, 3, '0000-00-00', NULL),
(9, 4, '0000-00-00', NULL),
(10, 4, '0000-00-00', NULL),
(11, 5, '0000-00-00', NULL),
(12, 5, '0000-00-00', NULL),
(13, 6, '0000-00-00', NULL),
(14, 2, '0000-00-00', '0000-00-00'),
(14, 3, '0000-00-00', '0000-00-00'),
(14, 4, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Oid` int(11) NOT NULL,
  `Sid` int(11) NOT NULL,
  `Cid` int(11) NOT NULL,
  `Odate` date NOT NULL,
  `Ddate` date NOT NULL,
  `Amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Oid`, `Sid`, `Cid`, `Odate`, `Ddate`, `Amount`) VALUES
(1, 1, 1, '2023-01-20', '2023-01-21', 3),
(2, 1, 2, '2023-01-20', '2023-01-21', 3),
(3, 1, 3, '2023-01-20', '2023-01-21', 4),
(4, 1, 4, '2023-01-20', '2023-01-21', 12),
(5, 1, 5, '2023-01-20', '2023-01-21', 4),
(6, 1, 6, '2023-01-20', '2023-01-21', 27),
(7, 1, 7, '2023-01-20', '2023-01-21', 4),
(8, 1, 8, '2023-01-20', '2023-01-21', 5),
(9, 1, 9, '2023-01-20', '2023-01-21', 5),
(10, 1, 10, '2023-01-20', '2023-01-21', 5),
(11, 1, 11, '2023-01-20', '2023-01-21', 3),
(12, 1, 12, '2023-01-25', '2023-01-26', 4),
(13, 1, 13, '2023-01-25', '2023-01-26', 4),
(14, 1, 14, '2023-01-25', '2023-01-26', 4),
(15, 1, 2, '2023-01-25', '2023-01-26', 22),
(16, 1, 5, '2023-01-25', '2023-01-26', 5),
(17, 1, 9, '2023-01-25', '2023-01-26', 6),
(18, 1, 15, '2023-01-30', '2023-01-31', 6),
(19, 1, 16, '2023-01-30', '2023-01-31', 3),
(20, 1, 17, '2023-01-30', '2023-01-31', 3),
(21, 1, 2, '2023-01-30', '2023-01-31', 4),
(22, 1, 9, '2023-01-30', '2023-01-31', 4),
(23, 1, 18, '2023-02-05', '2023-02-06', 4),
(24, 1, 19, '2023-02-05', '2023-02-06', 4),
(25, 1, 20, '2023-02-05', '2023-02-06', 4),
(26, 1, 21, '2023-02-10', '2023-02-11', 4),
(27, 1, 21, '2023-02-12', '2023-02-13', 4);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `oId` int(11) NOT NULL,
  `sId` int(11) NOT NULL,
  `iId` int(11) NOT NULL,
  `Icount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`oId`, `sId`, `iId`, `Icount`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 4, 1),
(4, 1, 5, 1),
(4, 1, 6, 2),
(5, 1, 5, 1),
(6, 1, 5, 1),
(6, 1, 6, 2),
(6, 1, 7, 3),
(7, 1, 6, 1),
(8, 1, 7, 1),
(9, 1, 7, 1),
(10, 1, 7, 1),
(11, 1, 8, 1),
(12, 1, 9, 1),
(13, 1, 10, 1),
(14, 1, 10, 1),
(15, 1, 4, 1),
(15, 1, 5, 1),
(15, 1, 6, 1),
(15, 1, 7, 2),
(16, 1, 12, 1),
(17, 1, 13, 1),
(18, 1, 13, 1),
(19, 1, 1, 1),
(20, 1, 2, 1),
(21, 1, 4, 1),
(22, 1, 4, 1),
(23, 1, 4, 1),
(24, 1, 4, 1),
(25, 1, 5, 1),
(26, 1, 5, 1),
(27, 1, 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `Sid` int(11) NOT NULL,
  `Sname` char(42) NOT NULL,
  `Street` char(42) NOT NULL,
  `City` char(20) NOT NULL,
  `State_AB` char(2) NOT NULL,
  `Zip_Code` varchar(10) NOT NULL,
  `Sdate` date DEFAULT NULL,
  `TelNo` bigint(20) DEFAULT NULL,
  `URL` char(68) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`Sid`, `Sname`, `Street`, `City`, `State_AB`, `Zip_Code`, `Sdate`, `TelNo`, `URL`) VALUES
(1, 'Arlington Sprouts-1', 'Cooper Street', 'Arlington', 'TX', '76019-0012', '0000-00-00', 8172721111, 'www.ArlingtonSrouts-1.com');

-- --------------------------------------------------------

--
-- Table structure for table `shop_customer`
--

CREATE TABLE `shop_customer` (
  `sId` int(11) NOT NULL,
  `cId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_customer`
--

INSERT INTO `shop_customer` (`sId`, `cId`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21);

-- --------------------------------------------------------

--
-- Table structure for table `shop_item`
--

CREATE TABLE `shop_item` (
  `sId` int(11) NOT NULL,
  `iId` int(11) NOT NULL,
  `Scount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_item`
--

INSERT INTO `shop_item` (`sId`, `iId`, `Scount`) VALUES
(1, 1, 10),
(1, 2, 10),
(1, 3, 10),
(1, 4, 10),
(1, 5, 10),
(1, 6, 10),
(1, 7, 10),
(1, 8, 10),
(1, 9, 10),
(1, 10, 12),
(1, 11, 13),
(1, 12, 10),
(1, 13, 16),
(1, 14, 15);

-- --------------------------------------------------------

--
-- Structure for view `itemview`
--
DROP TABLE IF EXISTS `itemview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `itemview`  AS SELECT `i`.`Iid` AS `ItemId`, `i`.`Iname` AS `ItemName`, count(`oi`.`iId`) AS `NoOfBoxes`, `i`.`Sprice` AS `ItemPrice`, count(distinct `o`.`Cid`) AS `ItemCustomers`, count(`oi`.`iId`) * `i`.`Sprice` AS `ItemRevenue` FROM ((`item` `i` join `order_item` `oi` on(`i`.`Iid` = `oi`.`iId`)) join `orders` `o` on(`oi`.`oId` = `o`.`Oid`)) GROUP BY `i`.`Iid`, `i`.`Iname`, `i`.`Sprice` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`Ctid`,`Did`),
  ADD KEY `Did` (`Did`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cId`);

--
-- Indexes for table `dealer`
--
ALTER TABLE `dealer`
  ADD PRIMARY KEY (`Did`);

--
-- Indexes for table `dealer_item`
--
ALTER TABLE `dealer_item`
  ADD PRIMARY KEY (`Did`,`Iid`),
  ADD KEY `Iid` (`Iid`);

--
-- Indexes for table `dealer_shop`
--
ALTER TABLE `dealer_shop`
  ADD PRIMARY KEY (`Did`,`Sid`),
  ADD KEY `Sid` (`Sid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`SSN`,`sId`),
  ADD KEY `sId` (`sId`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`Iid`);

--
-- Indexes for table `oldprice`
--
ALTER TABLE `oldprice`
  ADD KEY `Iid` (`Iid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Oid`,`Sid`),
  ADD KEY `Sid` (`Sid`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD KEY `oId` (`oId`),
  ADD KEY `sId` (`sId`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`Sid`);

--
-- Indexes for table `shop_customer`
--
ALTER TABLE `shop_customer`
  ADD PRIMARY KEY (`sId`,`cId`),
  ADD KEY `cId` (`cId`);

--
-- Indexes for table `shop_item`
--
ALTER TABLE `shop_item`
  ADD PRIMARY KEY (`sId`,`iId`),
  ADD KEY `iId` (`iId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contract`
--
ALTER TABLE `contract`
  ADD CONSTRAINT `contract_ibfk_1` FOREIGN KEY (`Did`) REFERENCES `dealer` (`Did`);

--
-- Constraints for table `dealer_item`
--
ALTER TABLE `dealer_item`
  ADD CONSTRAINT `dealer_item_ibfk_1` FOREIGN KEY (`Did`) REFERENCES `dealer` (`Did`),
  ADD CONSTRAINT `dealer_item_ibfk_2` FOREIGN KEY (`Iid`) REFERENCES `item` (`Iid`);

--
-- Constraints for table `dealer_shop`
--
ALTER TABLE `dealer_shop`
  ADD CONSTRAINT `dealer_shop_ibfk_1` FOREIGN KEY (`Did`) REFERENCES `dealer` (`Did`),
  ADD CONSTRAINT `dealer_shop_ibfk_2` FOREIGN KEY (`Sid`) REFERENCES `shop` (`Sid`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`sId`) REFERENCES `shop` (`Sid`);

--
-- Constraints for table `oldprice`
--
ALTER TABLE `oldprice`
  ADD CONSTRAINT `oldprice_ibfk_1` FOREIGN KEY (`Iid`) REFERENCES `item` (`Iid`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Sid`) REFERENCES `shop` (`Sid`);

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`oId`) REFERENCES `orders` (`Oid`),
  ADD CONSTRAINT `order_item_ibfk_2` FOREIGN KEY (`sId`) REFERENCES `shop` (`Sid`);

--
-- Constraints for table `shop_customer`
--
ALTER TABLE `shop_customer`
  ADD CONSTRAINT `shop_customer_ibfk_1` FOREIGN KEY (`sId`) REFERENCES `shop` (`Sid`),
  ADD CONSTRAINT `shop_customer_ibfk_2` FOREIGN KEY (`cId`) REFERENCES `customer` (`cId`);

--
-- Constraints for table `shop_item`
--
ALTER TABLE `shop_item`
  ADD CONSTRAINT `shop_item_ibfk_1` FOREIGN KEY (`sId`) REFERENCES `shop` (`Sid`),
  ADD CONSTRAINT `shop_item_ibfk_2` FOREIGN KEY (`iId`) REFERENCES `customer` (`cId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
