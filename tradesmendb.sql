-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2024 at 09:29 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tradesmendb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(50) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 123456789, 'adminuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-06-14 12:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(10) NOT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `Category`, `CreationDate`) VALUES
(1, 'Maid', '2022-05-29 00:41:22'),
(2, 'Driver', '2022-05-30 05:41:18'),
(3, 'Cook', '2022-05-30 05:41:27'),
(4, 'Milkman', '2022-05-30 05:41:36'),
(5, 'Paperboy', '2022-05-30 05:41:46'),
(6, 'Car Cleaner', '2022-05-30 05:41:58'),
(8, 'Tuition Teacher', '2022-05-30 05:41:18'),
(9, 'Gym Instructor', '2022-05-30 05:41:29'),
(10, 'Plumber', '2022-05-30 05:41:39'),
(11, 'Basketball Instructor', '2022-05-30 05:41:56'),
(12, 'Electrician', '2022-05-30 05:41:30'),
(13, 'Fitting', '2022-05-30 05:41:42'),
(14, 'Carpenter', '2022-05-30 05:41:52'),
(15, 'House Cleaning', '2022-05-30 05:41:05'),
(16, 'Painter', '2022-05-30 05:41:14'),
(17, 'Grocery Shop', '2022-05-30 05:41:24'),
(18, 'Doctor', '2022-05-30 05:41:37'),
(19, 'Physiotherapist', '2022-05-30 05:41:02'),
(20, 'Nurse', '2022-05-30 05:41:12'),
(21, 'Laundry', '2022-05-30 05:41:29'),
(22, 'Gardener', '2022-05-30 05:41:41'),
(23, 'Flower Delivery', '2022-05-30 05:41:55'),
(24, 'Tailor', '2022-05-30 05:41:10'),
(25, 'Other', '2022-05-30 05:41:22'),
(26, 'Barber', '2022-05-10 04:42:20');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(50) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<span style=\"font-family: arial, sans-serif; font-size: 14px;\"><font color=\"#6a6a6a\"><b>\"Tradesmen Service\"</b></font></span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif; font-size: 14px;\">&nbsp;is the use of specialized Internet&nbsp;</span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif; font-size: 14px;\">search engines</span><span style=\"color: rgb(84, 84, 84); font-family: arial, sans-serif; font-size: 14px;\">&nbsp;that allow users to submit geographically constrained searches against a structured database of&nbsp;</span><span style=\"font-weight: bold; color: rgb(106, 106, 106); font-family: arial, sans-serif; font-size: 14px;\">local businesses.</span>', NULL, NULL, '2024-01-02 10:19:13'),
(2, 'contactus', 'Contact Us', 'UK', 'admin@gmail.com', 1234567890, '2024-01-02 10:39:40');

-- --------------------------------------------------------

--
-- Table structure for table `tblperson`
--

CREATE TABLE `tblperson` (
  `ID` int(10) NOT NULL,
  `Category` varchar(200) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Picture` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `City` varchar(200) NOT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblperson`
--

INSERT INTO `tblperson` (`ID`, `Category`, `Name`, `Picture`, `MobileNumber`, `Address`, `City`, `RegDate`) VALUES
(2, 'Maid', 'Ruchi', '28a4dabb553d68fc173017ba547c5ea61704188010.jpg', 6464564654, 'Vasnat Kunj B&K-2345 ', 'Iandon', '2022-05-02 04:42:21'),
(4, 'Driver', 'Joesph Rana', '612420e2267b3871bb719083bd4f9afd1704188106.jpg', 4646546546, 'K-908, Laxmi Nagar ', 'USA', '2022-05-02 04:42:58'),
(7, 'Cook', 'Mayanka Nolpoi', 'd896292796847b7d66b9efffcddc5ebf1704187592.jpg', 4654489748, 'lklkl-80898, Noda Secto-10', 'Noida', '2022-05-02 04:42:13'),
(9, 'Milkman', 'Richard', '75487424fc8ccccb846c656e626127c31704188173.jpg', 4547897654, 'o-909, ko gulagao', 'Scotland', '2022-05-02 04:42:08'),
(11, 'Paperboy', 'Jimmi', '07737ac60d93afda861c569ddcf3366c1704188440.jpg', 6897979798, 'K-889, Janki Das Street', 'USA', '2022-05-02 04:42:02'),
(12, 'Car Cleaner', 'James', 'dd2a5b57db08e71b6f374e9c44300f1d1704188502.jpg', 5656565656, 'J-898, peergari, Near Reliance frsh ', 'California', '2022-05-02 04:42:59'),
(14, 'Tuition Teacher', 'Gurprit', 'b9fb9d37bdf15a699bc071ce49baea531704190290.jpg', 6715486742, 'H.N0-90/468 Gurugovindsingh road ', 'Australia', '2022-05-02 04:42:07'),
(17, 'Tuition Teacher', 'jenny', 'b3fa64cec4dc2153fcc9cec58fa3b1451704190417.jpg', 3465464654, 'g-9887979, nEwli.jjkvkuhf', 'london', '2022-05-02 04:42:25'),
(18, 'Gym Instructor', 'Jogy Rana', '5ad9a6efdfe74b23b2615e862dcaab0f1704190532.jpg', 6898744574, 'Jahangirpuri B-26687 B-block', 'Canada', '2022-05-02 04:42:15'),
(20, 'Plumber', 'Remo', '7373c590dc4f96a6f9af18defb390a741704190640.jpg', 6723867278, 'Byan Gao jahngirpuri kausjhgjhmkljiujfurhkgetj', 'Oman', '2022-05-02 04:42:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `created_at`) VALUES
(1, 'user', '$2y$10$DVYSO6.BBz9DkvojMCeN5.3N2U41K2H2xbSATCB5ZyBUPOzU1a8qO', 'user123@gmail.com', '2024-01-18 07:44:08');

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
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Category` (`Category`),
  ADD KEY `CreationDate` (`CreationDate`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblperson`
--
ALTER TABLE `tblperson`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Category` (`Category`),
  ADD KEY `Category_2` (`Category`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblperson`
--
ALTER TABLE `tblperson`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD CONSTRAINT `tbladmin_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `tblcategory` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
