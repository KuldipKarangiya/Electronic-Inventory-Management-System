-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2021 at 06:12 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `investery`
--
CREATE DATABASE IF NOT EXISTS `investery` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `investery`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `cus_id` int(10) NOT NULL,
  `cus_name` varchar(25) NOT NULL,
  `cus_email` varchar(40) NOT NULL,
  `cus_moblie_num` bigint(10) NOT NULL,
  `cus_address` varchar(100) NOT NULL,
  `cus_pan` varchar(15) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  PRIMARY KEY (`cus_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncate table before insert `customer`
--

TRUNCATE TABLE `customer`;
--
-- Dumping data for table `customer`
--

INSERT DELAYED IGNORE INTO `customer` (`cus_id`, `cus_name`, `cus_email`, `cus_moblie_num`, `cus_address`, `cus_pan`, `user_id`) VALUES
(401, 'NIKHIL', 'NIKHIL@GMAIL.COM', 9812564472, 'SARU SECTION ROAD ,JAMNAGAR', 'PM455JH4', 'LS103'),
(402, 'ABHAY', 'ABHAY@GMAIL.COM', 7016599878, 'PATEL COLONY,JAMNAGAR', 'MP448KL8', 'LS104'),
(403, 'HARSH', 'HARSHYU@GMAIL.COM', 5589566993, 'MAHAVEER SOCITY,SURAT', 'KJ448KL8', 'LS101'),
(404, 'JAM', 'JAMJAM@GMAIL.COM', 2147483647, 'US MARKET,NADIAD', 'KJ448PO8', 'LS106');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `login_username` varchar(20) NOT NULL,
  `login_password` varchar(20) NOT NULL,
  `login_role_id` int(10) NOT NULL,
  `login_id` varchar(10) NOT NULL,
  PRIMARY KEY (`login_id`),
  KEY `login_role_id` (`login_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncate table before insert `login`
--

TRUNCATE TABLE `login`;
--
-- Dumping data for table `login`
--

INSERT DELAYED IGNORE INTO `login` (`login_username`, `login_password`, `login_role_id`, `login_id`) VALUES
('MIHIR', '73982013be4b31788669', 200, 'LS101'),
('RAJU', '5d226ae69d7413df5123', 500, 'LS102'),
('YASH', '91ca6647cfb9a3ceebc8', 200, 'LS103'),
('KULDIP', '47067728daa9bc6e6277', 300, 'LS104'),
('RAM', '98f8c0e426c80ef73da5', 300, 'LS105'),
('HARSH', '0127b03ca9700e539693', 200, 'LS106'),
('NIKUNJ', '77113177b98eaff56855', 200, 'LS107'),
('HERO', 'db7e95981a3da3131339', 300, 'LS108');

-- --------------------------------------------------------

--
-- Table structure for table `order_d`
--

DROP TABLE IF EXISTS `order_d`;
CREATE TABLE IF NOT EXISTS `order_d` (
  `order_id` int(15) NOT NULL,
  `order_quinity` int(10) NOT NULL,
  `order_prize` int(15) NOT NULL,
  `order_date` date NOT NULL,
  `pay_id` int(9) NOT NULL,
  `cus_id` int(10) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `pay_id` (`pay_id`),
  KEY `cus_id` (`cus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncate table before insert `order_d`
--

TRUNCATE TABLE `order_d`;
--
-- Dumping data for table `order_d`
--

INSERT DELAYED IGNORE INTO `order_d` (`order_id`, `order_quinity`, `order_prize`, `order_date`, `pay_id`, `cus_id`, `product_id`) VALUES
(101, 5, 300, '2020-12-25', 701, 401, '8P7'),
(102, 1, 250, '2020-01-28', 703, 402, 'CSK'),
(103, 4, 49000, '2020-01-28', 703, 402, 'KBC'),
(104, 10, 80000, '2020-11-30', 702, 401, 'PZ7'),
(105, 11, 80000, '2020-08-01', 710, 403, 'PZ7'),
(106, 25, 523, '2020-03-08', 708, 404, 'AB2'),
(107, 15, 25000, '2020-03-08', 708, 404, '8ZZ'),
(108, 3, 550000, '2020-11-05', 711, 402, '87Z'),
(109, 8, 75000, '2020-02-27', 705, 403, '11Z'),
(110, 7, 25000, '2020-12-25', 701, 401, '87Z');

-- --------------------------------------------------------

--
-- Table structure for table `pay`
--

DROP TABLE IF EXISTS `pay`;
CREATE TABLE IF NOT EXISTS `pay` (
  `cus_pay_id` int(17) NOT NULL,
  `pay_id` int(9) NOT NULL,
  `pay_desc` varchar(25) NOT NULL,
  `pay_date` date NOT NULL,
  `pay_amount` int(10) NOT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncate table before insert `pay`
--

TRUNCATE TABLE `pay`;
--
-- Dumping data for table `pay`
--

INSERT DELAYED IGNORE INTO `pay` (`cus_pay_id`, `pay_id`, `pay_desc`, `pay_date`, `pay_amount`) VALUES
(1122, 701, 'UPI', '2020-12-25', 280000),
(1024, 702, 'UPI', '2020-12-01', 80000),
(1058, 703, 'CASH', '2020-02-05', 108300),
(2038, 705, 'CASH', '2020-05-05', 75000),
(1189, 708, 'UPI', '2020-05-03', 852300),
(5007, 710, 'NET BANKING', '2020-12-25', 102300),
(1050, 711, 'CASH', '2020-09-05', 550000);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` varchar(20) NOT NULL,
  `product_name` varchar(40) NOT NULL,
  `product_type` varchar(40) NOT NULL,
  `product_items` int(25) NOT NULL,
  `product_prize` int(10) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncate table before insert `product`
--

TRUNCATE TABLE `product`;
--
-- Dumping data for table `product`
--

INSERT DELAYED IGNORE INTO `product` (`product_id`, `product_name`, `product_type`, `product_items`, `product_prize`) VALUES
('11Z', 'SUMSUNG M88', 'PHONE', 7, 60000),
('87Z', 'PENDRIVE', 'ASS', 8, 9000),
('8P7', 'BOAT HEADPHONE', 'MUSIC LIS', 25, 6250),
('8Z7', 'JBL 405PH', 'MUSIC LIS', 2, 3000),
('8ZZ', '3D GAME CRICKET', 'GAME', 8, 30000),
('ABZ', 'HP 15DK0047', 'LAPTOP', 4, 180000),
('CSK', 'MOUSE', 'ASS', 20, 15000),
('KBC', 'DELL XXZ', 'LAPTOP', 25, 990000),
('PZ7', 'IPHONE', 'PHONE', 5, 490000);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `role_id` int(10) NOT NULL,
  `role_name` varchar(20) NOT NULL,
  `role_desc` varchar(30) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncate table before insert `roles`
--

TRUNCATE TABLE `roles`;
--
-- Dumping data for table `roles`
--

INSERT DELAYED IGNORE INTO `roles` (`role_id`, `role_name`, `role_desc`) VALUES
(200, 'STAFF', 'HARD WORKER'),
(300, 'CO-MANAGER', 'MANAGE'),
(500, 'MANAGER', 'ALL MANAGE');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE IF NOT EXISTS `stock` (
  `stock_id` varchar(20) NOT NULL,
  `stock_quntity` int(10) DEFAULT NULL,
  `stock_type` varchar(10) NOT NULL,
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncate table before insert `stock`
--

TRUNCATE TABLE `stock`;
--
-- Dumping data for table `stock`
--

INSERT DELAYED IGNORE INTO `stock` (`stock_id`, `stock_quntity`, `stock_type`) VALUES
('11Z', 85, 'PHONE'),
('87Z', 1080, 'ASS'),
('8P7', 8000, 'MUSIC LIS');

-- --------------------------------------------------------

--
-- Table structure for table `username`
--

DROP TABLE IF EXISTS `username`;
CREATE TABLE IF NOT EXISTS `username` (
  `user_id` varchar(10) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_email` varchar(40) NOT NULL,
  `user_moblie_num` bigint(10) NOT NULL,
  `user_address` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncate table before insert `username`
--

TRUNCATE TABLE `username`;
--
-- Dumping data for table `username`
--

INSERT DELAYED IGNORE INTO `username` (`user_id`, `user_name`, `user_email`, `user_moblie_num`, `user_address`) VALUES
('LS101', 'MIHIR', '9845678913', 8899556677, 'AARTI SOCIETY,SURAT'),
('LS103', 'YASH KANJIYA', '9328711593', 9328711593, 'PATEL COLONY,JAMNAGAR'),
('LS104', 'KULDIP', '7065898778', 9873256789, 'SQURE CIRCULE,NADIAD'),
('LS108', 'HERO PARMAR', '1111555566', 7016288995, 'JUMP ROAD,MOON');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `username` (`user_id`);

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`login_role_id`) REFERENCES `roles` (`role_id`),
  ADD CONSTRAINT `login_ibfk_2` FOREIGN KEY (`login_id`) REFERENCES `username` (`user_id`),
  ADD CONSTRAINT `login_ibfk_3` FOREIGN KEY (`login_role_id`) REFERENCES `roles` (`role_id`);

--
-- Constraints for table `order_d`
--
ALTER TABLE `order_d`
  ADD CONSTRAINT `order_d_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `order_d_ibfk_2` FOREIGN KEY (`pay_id`) REFERENCES `pay` (`pay_id`),
  ADD CONSTRAINT `order_d_ibfk_3` FOREIGN KEY (`cus_id`) REFERENCES `customer` (`cus_id`),
  ADD CONSTRAINT `order_d_ibfk_4` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `order_d_ibfk_5` FOREIGN KEY (`pay_id`) REFERENCES `pay` (`pay_id`),
  ADD CONSTRAINT `order_d_ibfk_6` FOREIGN KEY (`cus_id`) REFERENCES `customer` (`cus_id`);

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`stock_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `stock_ibfk_2` FOREIGN KEY (`stock_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `username`
--
ALTER TABLE `username`
  ADD CONSTRAINT `username_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `login` (`login_id`),
  ADD CONSTRAINT `username_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `login` (`login_id`),
  ADD CONSTRAINT `username_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `login` (`login_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
