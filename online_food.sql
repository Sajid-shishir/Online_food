-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2021 at 06:50 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Sajid', 'admin', 1686662852, 'sajidulhaque007@gmail.com', '4a7d1ed414474e4033ac29ccb8653d9b', '2020-10-30 07:16:39');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(5) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(3, 'Itallian', '2019-04-05 10:36:01'),
(4, 'Thai', '2019-04-05 10:36:25'),
(7, 'Desserts', '2019-04-05 10:43:13'),
(9, 'Chinease', '2019-04-24 05:43:08'),
(11, 'Bangla', '2020-04-16 14:26:37'),
(12, 'Fast Food', '2021-01-05 08:38:34');

-- --------------------------------------------------------

--
-- Table structure for table `tblchats`
--

CREATE TABLE `tblchats` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'unseen'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblconversations`
--

CREATE TABLE `tblconversations` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciver_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblconversations`
--

INSERT INTO `tblconversations` (`id`, `sender_id`, `reciver_id`) VALUES
(3, 6, 1),
(4, 1, 1),
(5, 12, 1),
(6, 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblfood`
--

CREATE TABLE `tblfood` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `ItemName` varchar(120) DEFAULT NULL,
  `ItemPrice` varchar(120) DEFAULT NULL,
  `ItemDes` varchar(500) DEFAULT NULL,
  `Image` varchar(120) DEFAULT NULL,
  `ItemQty` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfood`
--

INSERT INTO `tblfood` (`ID`, `CategoryName`, `ItemName`, `ItemPrice`, `ItemDes`, `Image`, `ItemQty`) VALUES
(18, 'Bangla', 'bhatdaal', '30', 'Hot rice with daal and vaji              	', 'aa592c7fd3e83b29d4e809f1d2b145d3.jpg', '1'),
(19, 'Itallian', 'Pepperoni Pizza', '300', 'Pepperoni is an American variety of salami, made from beef seasoned with paprika or other chili pepper.                                                 	', 'fd22c88e0f348ac30d03b9f228759382.jpg', '1'),
(20, 'Itallian', 'Cheese Crust Pizza', '350', 'barbequed chicken cubes mixed with white & spicy naga sauce, mozzarella & cheddar cheese, topped with crispy bacon bits.                                           	', '18b0195c4582415a315aa2aca9cbe84e.jpg', '1'),
(21, 'Fast Food', 'Grilled Burger', '300', 'The key to juicy grilled burgers is choosing the right type of ground beef, not overworking the patties, and setting up a two-zone fire on the grill.                                                 	', 'c3e441b1c8136d244b68f6f76c9f8d41.jpg', '1'),
(22, 'Desserts', 'Fruit Cake', '500', 'A heavenly mouth-feel with this pretty-in-brown, sugar-petaled christmas fruit cake.                                                 	', '8a37768e4327b911b1c18258d9e2a31f.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblfoodtracking`
--

CREATE TABLE `tblfoodtracking` (
  `ID` int(10) NOT NULL,
  `OrderId` char(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `status` char(50) DEFAULT NULL,
  `StatusDate` timestamp NULL DEFAULT current_timestamp(),
  `OrderCanclledByUser` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfoodtracking`
--

INSERT INTO `tblfoodtracking` (`ID`, `OrderId`, `remark`, `status`, `StatusDate`, `OrderCanclledByUser`) VALUES
(1, '783218118', 'Restaurant Closed.', 'Order Cancelled', '2019-05-05 16:07:35', NULL),
(6, '448858080', 'I want  to cancel this order', 'Order Cancelled', '2019-05-05 17:33:42', 1),
(7, '270156472', 'Order confiremed', 'Order Confirmed', '2019-05-06 16:30:38', NULL),
(8, '270156472', 'Food is preparing.', 'Food being Prepared', '2019-05-06 16:31:08', NULL),
(9, '270156472', 'Food on the way', 'Food Pickup', '2019-05-06 16:31:42', NULL),
(10, '270156472', 'Food is delivired', 'Food Delivered', '2019-05-06 16:35:27', NULL),
(11, '201712648', 'order Cancelled', 'Order Cancelled', '2019-05-06 16:41:55', NULL),
(12, '905866476', 'No neeed', 'Order Cancelled', '2020-04-13 07:11:15', 1),
(13, '231348816', 'hello', 'Food being Prepared', '2020-04-15 18:54:22', NULL),
(14, '231348816', 'hello', 'Order Confirmed', '2020-04-15 18:56:49', NULL),
(15, '231348816', 'order confirmed', 'Order Confirmed', '2020-04-16 14:38:54', NULL),
(16, '231348816', 'food is not available', 'Order Cancelled', '2020-04-16 14:58:38', NULL),
(17, '663410373', 'ok', 'Order Confirmed', '2020-04-16 15:39:20', NULL),
(18, '663410373', 'yu', 'Order Cancelled', '2020-04-16 15:40:20', 1),
(19, '516864130', '4eeeeeeeeeeeeeeeee', 'Food being Prepared', '2020-04-17 13:19:05', NULL),
(20, '271587083', 'sad', 'Order Cancelled', '2020-11-05 12:53:00', 1),
(21, '516864130', 'dsfs', 'Order Cancelled', '2020-12-14 13:33:06', 1),
(22, '534524096', 'Money Has been paid', 'Order Confirmed', '2021-01-05 13:05:45', NULL),
(23, '534524096', 'delivered', 'Food Delivered', '2021-01-05 13:26:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblorderaddresses`
--

CREATE TABLE `tblorderaddresses` (
  `ID` int(11) NOT NULL,
  `UserId` char(100) DEFAULT NULL,
  `Ordernumber` char(100) DEFAULT NULL,
  `Flatnobuldngno` varchar(255) DEFAULT NULL,
  `StreetName` varchar(255) DEFAULT NULL,
  `Area` varchar(255) DEFAULT NULL,
  `Landmark` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `OrderTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `OrderFinalStatus` varchar(255) DEFAULT NULL,
  `Payment` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorderaddresses`
--

INSERT INTO `tblorderaddresses` (`ID`, `UserId`, `Ordernumber`, `Flatnobuldngno`, `StreetName`, `Area`, `Landmark`, `City`, `OrderTime`, `OrderFinalStatus`, `Payment`) VALUES
(16, '22', '534524096', '2', '10', 'sector-10', '', 'uttara', '2021-01-05 12:59:43', 'Food Delivered', '01634714881/22225');

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `ID` int(11) NOT NULL,
  `UserId` char(10) DEFAULT NULL,
  `FoodId` char(10) DEFAULT NULL,
  `IsOrderPlaced` int(11) DEFAULT NULL,
  `OrderNumber` char(100) DEFAULT NULL,
  `Quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(12) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(1, 'Sajid', 'Shishir', '16103354@iubat.edu', 168666285, '81dc9bdb52d04dc20036dbd8313ed055', '2020-12-14 18:08:08'),
(22, 'test', 'user', 'test@test.com', 1111111111, '81dc9bdb52d04dc20036dbd8313ed055', '2021-01-05 12:58:40'),
(23, 'd', 'd', 'd@d.com', 1634714881, 'a01610228fe998f515a72dd730294d87', '2021-01-05 15:33:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblchats`
--
ALTER TABLE `tblchats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ForeignKey` (`conversation_id`),
  ADD KEY `OneToOne` (`sender_id`);

--
-- Indexes for table `tblconversations`
--
ALTER TABLE `tblconversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblfood`
--
ALTER TABLE `tblfood`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`Ordernumber`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`FoodId`,`OrderNumber`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblchats`
--
ALTER TABLE `tblchats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tblconversations`
--
ALTER TABLE `tblconversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblfood`
--
ALTER TABLE `tblfood`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblchats`
--
ALTER TABLE `tblchats`
  ADD CONSTRAINT `ForeignKey` FOREIGN KEY (`conversation_id`) REFERENCES `tblconversations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `OneToOne` FOREIGN KEY (`sender_id`) REFERENCES `tbluser` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
