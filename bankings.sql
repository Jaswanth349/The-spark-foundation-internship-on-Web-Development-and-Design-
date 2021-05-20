-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2021 at 07:16 AM
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
-- Database: `bankings`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `s_no` int(100) NOT NULL,
  `account_holder` text NOT NULL,
  `account_no` int(100) NOT NULL,
  `branch` text NOT NULL,
  `ifsc_code` int(100) NOT NULL,
  `account_type` text NOT NULL,
  `phone_no` int(100) NOT NULL,
  `address` text NOT NULL,
  `gmail` varchar(100) NOT NULL,
  `age` int(100) NOT NULL,
  `balance` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`s_no`, `account_holder`, `account_no`, `branch`, `ifsc_code`, `account_type`, `phone_no`, `address`, `gmail`, `age`, `balance`) VALUES
(1, 'Balu', 10001, 'Vijayawada', 52007, 'current', 998988556, 'Vijayawada', 'balu143@gmail.com', 22, 2978000),
(2, 'sri', 10002, 'Hyd', 521200, 'saving', 568898712, 'ongol', 'sri123@gmail.com', 21, 19999500),
(3, 'raj', 10003, 'TS', 521205, 'saving', 566698985, 'delhi', 'raj145@yahoo.com', 19, 10000000),
(4, 'babu', 10004, 'delhi', 5211010, 'saving', 635575212, 'delhi', 'babu123@yahoo.com', 30, 40000067),
(5, 'bharath', 10005, 'tirupati', 521110, 'current', 985858572, 'Tirupati', 'bullet123@yahoo.com', 21, 899950000),
(6, 'munni', 100003, 'vijayawada', 521205, 'saving', 986526523, 'vijayawada', 'munni987@gmail.com', 27, 80080),
(7, 'bunni', 10007, 'nuzvid', 521206, 'saving', 630055856, 'Nuzvid', 'bunnivis112@gmail.com', 23, 900072500),
(8, 'Raja', 10008, 'one town', 212120, 'current', 998563612, 'Viayawada', 'raja1432@yahoo.com', 25, 700000000),
(9, 'chinni', 10009, 'chennai', 520071, 'saving', 635898712, 'chennai', 'chinni14512@gmail.com', 28, 1000000),
(10, 'sunny', 100010, 'kochi', 522020, 'current', 963258712, 'kerala', 'sunny456@gmail.com', 27, 9000000);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `s_no` int(100) NOT NULL,
  `sender_account_no` int(100) NOT NULL,
  `receiver_account_no` int(100) NOT NULL,
  `amount` int(100) NOT NULL,
  `timestamp` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`s_no`, `sender_account_no`, `receiver_account_no`, `amount`, `timestamp`) VALUES
(0, 10001, 10007, 2000, ''),
(0, 10001, 10007, 20000, ''),
(0, 10002, 10007, 500, ''),
(0, 10005, 10007, 50000, '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
