-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2020 at 12:28 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `squahlmp_fos`
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
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Adi', 'admin', 7894561238, 'test@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2019-04-05 07:16:39');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(5) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(3, 'Itallian', '2019-04-05 10:36:01'),
(4, 'Thai', '2019-04-05 10:36:25'),
(5, 'South Indian', '2019-04-05 10:36:35'),
(6, 'North Indian', '2019-04-05 10:36:47'),
(7, 'Desserts', '2019-04-05 10:43:13'),
(8, 'Starters', '2019-04-05 10:43:45'),
(9, 'Chinease', '2019-04-24 05:43:08'),
(10, 'Test Food ', '2019-05-06 16:36:16'),
(11, 'Bangla', '2020-04-16 14:26:37');

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

--
-- Dumping data for table `tblchats`
--

INSERT INTO `tblchats` (`id`, `sender_id`, `message`, `conversation_id`, `date`, `status`) VALUES
(6, 6, 'wow', 3, '2020-04-13 20:21:41', 'unseen'),
(7, 6, 'great bro', 3, '2020-04-13 20:22:46', 'unseen'),
(8, 6, 'baler kahini', 3, '2020-04-13 20:23:33', 'unseen'),
(9, 6, 'aibar to howar kotha', 3, '2020-04-13 20:24:12', 'unseen'),
(12, 1, 'hi', 4, '2020-04-14 13:56:43', 'unseen'),
(13, 1, 'hi', 3, '2020-04-14 14:02:44', 'unseen'),
(14, 1, 'upoer gelo kn?', 3, '2020-04-14 14:02:58', 'unseen'),
(15, 1, 'aibar hoyse to ?', 3, '2020-04-14 14:06:18', 'unseen'),
(16, 1, 'right hi ta amri silo', 4, '2020-04-14 14:06:44', 'unseen'),
(17, 1, 'wah great', 4, '2020-04-14 14:07:15', 'unseen'),
(18, 6, 'hmm aibar hoyse vai', 3, '2020-04-14 14:09:26', 'unseen'),
(19, 6, 'goo work', 3, '2020-04-14 14:09:35', 'unseen'),
(20, 1, 'ok thanks man', 3, '2020-04-14 14:09:52', 'unseen'),
(21, 1, 'hi', 3, '2020-04-15 09:43:25', 'unseen'),
(22, 1, 'ki je hobe janina tobe sob thik ase vai dekhi ki hoy a mia tmr je asar kotha silo aslana kn? akhn koi aso ? ber hoba naki?', 3, '2020-04-15 13:18:18', 'unseen'),
(23, 1, 'wow', 3, '2020-04-15 13:27:37', 'unseen'),
(24, 6, 'hi admin', 3, '2020-04-16 01:54:37', 'unseen'),
(25, 1, 'hi Adi tell me whats your problem?', 3, '2020-04-16 02:07:44', 'unseen'),
(26, 6, 'I want alu vorta', 3, '2020-04-16 02:08:10', 'unseen'),
(27, 1, 'ok', 3, '2020-04-16 02:08:22', 'unseen'),
(28, 1, 'hello', 3, '2020-04-16 10:43:37', 'unseen'),
(29, 1, 'hello', 3, '2020-04-16 10:43:50', 'unseen'),
(30, 1, 'what is the problem', 3, '2020-04-16 10:44:00', 'unseen'),
(31, 1, 'can u plz tell me ur order id no?', 3, '2020-04-16 10:44:20', 'unseen'),
(32, 1, 'gnngnnngn', 4, '2020-04-16 10:45:00', 'unseen'),
(33, 6, 'hlw', 3, '2020-04-16 11:51:18', 'unseen'),
(34, 1, 'can u plz tell me ur order no?', 4, '2020-04-16 11:52:19', 'unseen'),
(35, 6, 'hlw', 3, '2020-04-16 11:56:53', 'unseen'),
(36, 1, 'hlw', 3, '2020-04-16 11:57:33', 'unseen'),
(37, 6, 'i wanna cancel my order', 3, '2020-04-16 11:58:30', 'unseen'),
(38, 1, 'why???', 3, '2020-04-16 11:58:42', 'unseen'),
(39, 6, 'hlw', 3, '2020-04-16 12:01:35', 'unseen'),
(40, 10, 'Ffgg', 4, '2020-04-16 18:41:27', 'unseen'),
(41, 1, 'e', 3, '2020-04-17 09:20:00', 'unseen');

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
(4, 1, 1);

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
(3, 'Italian', 'Corn Pizza', '220', 'Sprinkle with salt and pepper; let stand 20 minutes. Place pizza crust on a parchment paper-lined baking sheet', 'f97fcb777fbc60235e7cfdf991cb0cfa.jpg', 'Large'),
(4, 'Italian', 'Veg Extravaganza Pizza', '450', 'Veg ExtravaganzaA pizza that decidedly staggers', '73323ff74a39e6157cf73ad52cf15c66.jpg', 'Medium'),
(6, 'North Indian', 'Chana Masala', '120', 'To make this chana masala we start with a trio of ingredients found in most Indian curriesâ€“onion, garlic, and ginger. ', '0ee2405d162c60e415bfba56a24aca8c.jpg', 'Full'),
(7, 'North Indian', 'Rajma Masala', '125', 'Rajma Masala is a much loved spicy curry in most Indian Households.                               	', '63d50ef58f33ec97cf928c05deb8ccd3.jpg', 'Full'),
(8, 'South Indian', 'Dosa', '85', 'Dosa  are served hot along with sambar, a stuffing of potatoes, and chutney.                             	', 'd984b4a23552203107391bc98dd0e4dc.jpg', 'Regular'),
(9, 'South Indian', 'Idli', '75', 'Idli are a type of savoury rice cake, originating from the Indian subcontinent and served coconut chutney.                                         	', '0cbe727a2529cc6cd8dcbd40ee53fe2c.jpg', '2 pcs'),
(10, 'South Indian', 'Vada', '60', 'Medu vada served with hot shambhar and coconut chutney ', '66d5785b3c99179f5a5bb7d7d94636dd.jpg', '2 pcs'),
(11, 'North Indian', 'Chole Bhature', '120', 'Chole Bhuture is a combination of chana masala (spicy white chickpeas) and bhatura,                                                	', 'da41d10bb09c6cfac8168435164ff0b3.jpg', '2 pcs'),
(12, 'North Indian', 'Aloo paratha', '85', ' Aloo paratha is served with butter, chutney, or Indian pickles in different parts of northern and western India.                                                 	', '8cc336b118e1feb503f9a54f3bdcdf1b.jpg', '2 pieces'),
(13, 'North Indian', 'Mix Pratha', '85', 'veg paratha soft, healthy and delicious whole wheat parathas made with mix vegetables. ... this no onion no garlic veg paratha recipe is pretty flexible.                                               	', '4b4f0a570c7f36f0db9e4f8e7fa60442.jpg', '2 pieces'),
(14, 'North Indian', 'Paneer Paratha.', '95', 'paneer paratha. paneer paratha is an indian flat bread made with cottage cheese stuffing. paneer paratha are popular breakfast recipe in punjabi homes.                                                 	', 'a19b8b7095ad0c23ddd95a28c3f85268.jpg', '2 pieces'),
(15, 'Chinease', 'Hakka Noodle', '120', 'Hakka Noodle is one our famous food which is made up by our homemade masale.                                               	', 'f8f34e70f13c6d9e982640e3b39f317b.jpg', 'full'),
(16, 'Chinese', 'Veg Chowmin', '120', 'Veg Chowmien full Plate                                                 	', '927f5a1c2bcfff25ff8a936fa98d5f2f.jpg', 'Full'),
(17, 'Desserts', 'fgfgfgf', '23', '                  fgfgfg                               	', '2760735506a5bc187a35f6c829fae70d.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblfoodtracking`
--

CREATE TABLE `tblfoodtracking` (
  `ID` int(10) NOT NULL,
  `OrderId` char(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `status` char(50) DEFAULT NULL,
  `StatusDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
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
(19, '516864130', '4eeeeeeeeeeeeeeeee', 'Food being Prepared', '2020-04-17 13:19:05', NULL);

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
  `OrderTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `OrderFinalStatus` varchar(255) DEFAULT NULL,
  `Payment` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorderaddresses`
--

INSERT INTO `tblorderaddresses` (`ID`, `UserId`, `Ordernumber`, `Flatnobuldngno`, `StreetName`, `Area`, `Landmark`, `City`, `OrderTime`, `OrderFinalStatus`, `Payment`) VALUES
(1, '1', '783218118', 'Hno 546', 'Gali No10', 'New Delhi', 'NA', 'Delhi', '2019-05-05 16:03:28', 'Order Cancelled', '902832202893/DO59393X29'),
(2, '1', '448858080', 'Flat 12A', 'ABC', 'XYZ', 'ABCDEF', 'New Delhi', '2019-05-05 17:01:58', 'Order Cancelled', NULL),
(3, '2', '201712648', 'A-10', 'HK pg house', 'Mayur Vihar', 'Near Reliance Fresh', 'New Delhi', '2019-05-06 06:27:28', 'Order Cancelled', NULL),
(4, '5', '270156472', 'Flat no 123', 'ABC Street', 'XYZ Area', 'NA', 'New Delhi', '2019-05-06 16:28:18', 'Food Delivered', NULL),
(5, '6', '905866476', '202', 'Devid Company Para', 'Gaibandha', 'Manik Store', 'Gaibandha', '2020-04-13 05:22:01', 'Order Cancelled', NULL),
(6, '6', '231348816', '203', 'Devid Company Para', 'Gaibandha', 'Manik Store', 'Gaibandha', '2020-04-13 12:13:20', 'Order Cancelled', NULL),
(7, '6', '663410373', 'as', 'as', 'as', 'as', 'as', '2020-04-16 15:37:56', 'Order Cancelled', NULL),
(8, '12', '516864130', '202', 'Kalibari', 'Gaibandha', 'Jhubly School', 'Gaibandha', '2020-04-17 07:46:03', 'Food being Prepared', NULL),
(9, '14', '327424085', '43/2', 'Sukrabad Rd', 'Dhanmondi', 'Dhanmodi 32 Lake', 'Dhaka', '2020-04-24 05:33:30', NULL, '01757110294/YIIEOWXOWX'),
(10, '14', '369125343', 'r', 'we', 'wer', 'wer', 'wer', '2020-04-24 07:17:11', NULL, '01757110296/666666'),
(11, '14', '284291279', 'reeer', 'qwe', 'aweq', 'wwg', 'fsa', '2020-04-24 08:20:43', NULL, '01757110296/55555'),
(12, '14', '415812373', 'ee', 'wer', 'wer', 'werwer', 'afde', '2020-04-26 10:05:00', NULL, 'COD'),
(13, '14', '507376149', 'qdf', 'fsdf', 'werew', 'werwe', 'werswer', '2020-04-26 10:26:30', NULL, NULL);

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
  `Quantity` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`ID`, `UserId`, `FoodId`, `IsOrderPlaced`, `OrderNumber`, `Quantity`) VALUES
(35, '14', '1', 1, '327424085', 4),
(36, '14', '9', 1, '327424085', 3),
(37, '14', '8', 1, '327424085', 7),
(38, '14', '2', 1, '369125343', 10),
(39, '14', '8', 1, '369125343', 7),
(40, '14', '6', 1, '369125343', 3),
(41, '14', '4', 1, '284291279', 5),
(42, '14', '6', 1, '284291279', 3),
(43, '14', '10', 1, '415812373', 3),
(44, '14', '11', 1, '415812373', 3),
(45, '14', '9', 1, '415812373', 1),
(46, '14', '4', 1, '415812373', 1),
(47, '14', '3', 1, '507376149', 2),
(48, '14', '11', 1, '507376149', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(1, 'Pankaj', 'Shahu', 'testuser@gmail.com', 7894561236, '1234', '2019-04-08 07:41:22'),
(2, 'Rakesh', 'Chandra', 'rakesh@gmail.com', 7656234589, '202cb962ac59075b964b07152d234b70', '2019-04-08 07:43:28'),
(3, 'Yogesh', 'Chandra', 'y@gmail.com', 8989898989, '202cb962ac59075b964b07152d234b70', '2019-04-24 07:04:02'),
(4, 'Yogesh', 'Shah', 'Test1@gmail.com', 8975895698, '202cb962ac59075b964b07152d234b70', '2019-05-06 09:09:05'),
(5, 'Test demo', 'User', 'testuser123@gmail.com', 1234567890, '7ec66345281b134a33f784bcd06d7ea5', '2019-05-06 16:26:40'),
(6, 'md. adi', 'Amin', 'adi@gmail.com', 131810334, '1234', '2020-04-13 05:07:44'),
(7, 'Asif', 'hasan', 'asifhasan@gmail.com', 163268588, 'cfdc3f407236c1cf0e21f49dadccad0d', '2020-04-16 14:18:56'),
(8, 'Asif', 'Hasan', 'asifhasan123@gmail.com', 171134756, 'c003ffff88c9ef6d74848e88200e3d70', '2020-04-16 14:23:05'),
(9, 'asif', 'hfgf', 'asif1234@gmail.com', 195021708, 'e649023406eb24ece55fa341592bd5e7', '2020-04-16 14:51:59'),
(10, 'Sihab', 'Bashar', 'samiulsihab@gmail.com', 199922445, '5573fe5f6872c8377a07ce56a2fa6061', '2020-04-16 22:37:48'),
(11, 'asif', 'hasan', 'asif12345@gmail.com', 1111111111, '5573fe5f6872c8377a07ce56a2fa6061', '2020-04-17 06:46:31'),
(12, 'Adi', 'Amin', 'amin@gmail.com', 175055847, '81dc9bdb52d04dc20036dbd8313ed055', '2020-04-17 07:44:37'),
(14, 'Abdur', 'Rahman', 'asadsoon114@gmail.com', 175711029, '3157d7a30c5a93785a5f5b602fbb415c', '2020-04-23 16:42:20');

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
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblchats`
--
ALTER TABLE `tblchats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tblconversations`
--
ALTER TABLE `tblconversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblfood`
--
ALTER TABLE `tblfood`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
