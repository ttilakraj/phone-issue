-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2026 at 10:49 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee2`
--

-- --------------------------------------------------------

--
-- Table structure for table `emp_detail`
--

CREATE TABLE `emp_detail` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(11) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `emp_phoneno` int(12) NOT NULL,
  `emp_salary` decimal(11,2) NOT NULL,
  `emp_city` varchar(11) NOT NULL,
  `emp_state` varchar(15) NOT NULL,
  `emp_country` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emp_detail`
--

INSERT INTO `emp_detail` (`emp_id`, `emp_name`, `email_id`, `emp_phoneno`, `emp_salary`, `emp_city`, `emp_state`, `emp_country`) VALUES
(1101, 'sangeeta', '', 943795783, 25000.00, 'SBP', 'odisha', 'india'),
(1102, 'sukanya', '', 957830943, 20000.00, 'cttck', 'odisha', 'india'),
(1103, 'sagarika', '', 637056080, 30000.00, 'SBP', 'odisha', 'india'),
(1104, 'aniee', '', 608056345, 40000.00, 'bolangir', 'odisha', 'india'),
(1107, 'sunena', '', 943795783, 25000.00, 'BBSR', 'Odisha', 'IND'),
(1108, 'Rohit', 'rohit@gmail.com', 943795783, 35000.00, 'BBSR', 'Odisha', 'IND'),
(1109, 'dinesh', 'dinesh@gmail.com', 2147483647, 30000.00, 'Bhubaneswar', 'Odisha', 'India'),
(1110, 'mahesh', '', 2147483647, 45000.00, 'BBSR', 'Odisha', 'IND'),
(1111, 'mahesh', '', 2147483647, 45000.00, 'BBSR', 'Odisha', 'IND'),
(1112, 'mahesh', '', 2147483647, 45000.00, 'BBSR', 'Odisha', 'IND'),
(1113, 'mahesh', '', 2147483647, 45000.00, 'BBSR', 'Odisha', 'IND'),
(1114, 'mahesh', '', 2147483647, 45000.00, 'BBSR', 'Odisha', 'IND'),
(1115, 'mahesh', '', 2147483647, 45000.00, 'BBSR', 'Odisha', 'IND'),
(1116, 'farhan', '', 2147483647, 40000.00, 'BBSR', 'Odisha', 'IND'),
(1117, 'farhan', '', 2147483647, 40000.00, 'BBSR', 'Odisha', 'IND'),
(1118, 'farhan', '', 2147483647, 40000.00, 'BBSR', 'Odisha', 'IND'),
(1119, 'kishan', '', 2147483647, 30000.00, 'BBSR', 'Odisha', 'IND'),
(1120, 'Karthik', 'karthik@gmail.com', 2147483647, 35000.00, 'Bhubaneswar', 'Khordha', 'India'),
(1121, 'Karthik S', 'karthiks@gmail.com', 2147483647, 30000.00, 'Bhubaneswar', 'Khordha', 'India'),
(1122, 'Karthik A', 'karthika@gmail.com', 2147483647, 35000.00, 'Bhubaneswar', 'Khordha', 'India'),
(1123, 'Karthik B', 'karthikb@gmail.com', 2147483647, 34000.00, 'Bhubaneswar', 'Khordha', 'India'),
(1124, 'Karthik C', 'karthikc@gmail.com', 2147483647, 34000.00, 'Bhubaneswar', 'Khordha', 'India'),
(1125, 'Jagdish S', 'jagdishs@gmail.com', 2147483647, 854141.00, 'Bhubaneswar', 'Khordha', 'India'),
(1126, 'Nitin D', 'nitind@gmail.com', 2147483647, 34000.00, 'Bhubaneswar', 'Khordha', 'India'),
(1127, 'Jay M', 'jaym@gmail.com', 2147483647, 854125.00, 'Bhubaneswar', 'Khordha', 'India'),
(1128, 'ganesh', 'ganesh@gmail.com', 2147483647, 784578.00, 'Khordha', 'Khordha,OD', 'India'),
(1129, 'Vinit', 'vinit@gmail.com', 2147483647, 74747.00, 'Bhubaneswar', 'Odisha', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`email`, `password`) VALUES
('dinesh@gmail.com', 'dinesh@1357'),
('rohit@gmail.com', 'rohit@0987'),
('farhan@gmail.com', 'farhan@1234'),
('farhan@gmail.com', 'farhan@1234'),
('kishan@gmail.com', 'kishan@7896');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emp_detail`
--
ALTER TABLE `emp_detail`
  ADD PRIMARY KEY (`emp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emp_detail`
--
ALTER TABLE `emp_detail`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1130;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
