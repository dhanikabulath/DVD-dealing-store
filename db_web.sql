-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2017 at 10:50 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_cus`
--

CREATE TABLE `tb_cus` (
  `cus_id` int(5) NOT NULL,
  `cus_name` varchar(40) NOT NULL,
  `cus_nic` int(11) NOT NULL,
  `cus_add` varchar(50) NOT NULL,
  `cus_email` varchar(20) NOT NULL,
  `cus_contact` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_cus`
--

INSERT INTO `tb_cus` (`cus_id`, `cus_name`, `cus_nic`, `cus_add`, `cus_email`, `cus_contact`) VALUES
(1212, 'Username', 952642513, 'add1', '1212@gmail.com', '11542485'),
(2323, 'kevin', 955342513, 'kevin1', '2323@gmail.com', '11942485'),
(3434, 'ann', 952647513, 'ann1', '3434@gmail.com', '11563485'),
(4545, 'mike', 952752513, 'mike1', '4545@gmail.com', '11742485'),
(5656, 'chen', 952742513, 'chen1', '5656@gmail.com', '11572485');

-- --------------------------------------------------------

--
-- Table structure for table `tb_emp`
--

CREATE TABLE `tb_emp` (
  `emp_id` int(4) NOT NULL,
  `emp_name` varchar(30) NOT NULL,
  `nic` int(11) NOT NULL,
  `emp_email` varchar(20) NOT NULL,
  `user_name` varchar(15) NOT NULL,
  `user_pw` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_emp`
--

INSERT INTO `tb_emp` (`emp_id`, `emp_name`, `nic`, `emp_email`, `user_name`, `user_pw`) VALUES
(11, 'name1', 123, 'name1@gmail.com', 'emp1', ''),
(12, 'name2', 234, 'name2@gmail.com', 'emp2', ''),
(13, 'name3', 345, 'name3@gmail.com', 'emp3', 'name3'),
(14, 'name4', 456, 'name4@gmail.com', 'emp4', ''),
(15, 'name5', 567, 'name5@gmail.com', 'emp5', 'name5'),
(16, 'name6', 678, 'name6@gmail.com', 'emp6', 'name6'),
(17, 'name7', 789, 'name7@gmail.com', 'emp7', 'name7'),
(18, 'name8', 891, 'name8@gmail.com', 'emp8', ''),
(19, 'name9', 912, 'name9@gmail.com', 'emp9', ''),
(20, 'name20', 923, 'name20@gmail.com', 'emp10', ''),
(21, 'name21', 934, 'name21@gmail.com', 'emp11', 'name21'),
(22, 'name22', 945, 'name22@gmail.com', 'emp12', 'name22'),
(23, 'name23', 956, 'name23@gmail.com', 'emp13', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_item`
--

CREATE TABLE `tb_item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(20) NOT NULL,
  `item_cost` int(11) NOT NULL,
  `who_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `qua_stock` int(11) NOT NULL,
  `or_lev` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_item`
--

INSERT INTO `tb_item` (`item_id`, `item_name`, `item_cost`, `who_price`, `rent_price`, `qua_stock`, `or_lev`) VALUES
(44, 'asasasas', 500, 120, 200, 5500, 5600),
(45, 'sdsdsdsd', 600, 120, 250, 5550, 5650),
(46, 'sdsdsdsd', 600, 120, 250, 5550, 5650),
(47, 'fgfgfgfg', 800, 150, 300, 5000, 5700);

-- --------------------------------------------------------

--
-- Table structure for table `tb_retail`
--

CREATE TABLE `tb_retail` (
  `inv_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_retail`
--

INSERT INTO `tb_retail` (`inv_id`, `item_id`, `qty`, `total`) VALUES
(1, 12, 5, 1111),
(2, 13, 5, 1222),
(3, 14, 5, 1333),
(4, 15, 5, 1444),
(5, 16, 55, 1555),
(6, 17, 55, 1666);

-- --------------------------------------------------------

--
-- Table structure for table `tb_retail_rt`
--

CREATE TABLE `tb_retail_rt` (
  `inv_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_retail_rt`
--

INSERT INTO `tb_retail_rt` (`inv_id`, `item_id`, `qty`) VALUES
(1, 22, 55),
(2, 22, 55),
(3, 22, 55),
(4, 22, 45),
(5, 22, 665),
(6, 22, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tb_whole`
--

CREATE TABLE `tb_whole` (
  `inv_id` int(11) NOT NULL,
  `cust_name` varchar(260) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_whole`
--

INSERT INTO `tb_whole` (`inv_id`, `cust_name`, `item_id`, `qty`, `total`) VALUES
(2, 'xyz', 45, 5, 1110),
(3, 'username', 45, 1234, 34657),
(4, 'Username', 45, 55, 4335),
(5, 'Username', 45, 55, 5676);

-- --------------------------------------------------------

--
-- Table structure for table `tb_whole_rt`
--

CREATE TABLE `tb_whole_rt` (
  `inv_id` int(11) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_whole_rt`
--

INSERT INTO `tb_whole_rt` (`inv_id`, `cust_name`, `item_id`, `qty`) VALUES
(1, 'Username', 44, 44),
(2, 'Username', 44, 50),
(3, 'Username', 44, 55),
(4, 'Username', 44, 270);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_cus`
--
ALTER TABLE `tb_cus`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `tb_emp`
--
ALTER TABLE `tb_emp`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `tb_item`
--
ALTER TABLE `tb_item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `tb_retail`
--
ALTER TABLE `tb_retail`
  ADD PRIMARY KEY (`inv_id`);

--
-- Indexes for table `tb_retail_rt`
--
ALTER TABLE `tb_retail_rt`
  ADD PRIMARY KEY (`inv_id`);

--
-- Indexes for table `tb_whole`
--
ALTER TABLE `tb_whole`
  ADD PRIMARY KEY (`inv_id`);

--
-- Indexes for table `tb_whole_rt`
--
ALTER TABLE `tb_whole_rt`
  ADD PRIMARY KEY (`inv_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_cus`
--
ALTER TABLE `tb_cus`
  MODIFY `cus_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5657;
--
-- AUTO_INCREMENT for table `tb_emp`
--
ALTER TABLE `tb_emp`
  MODIFY `emp_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tb_item`
--
ALTER TABLE `tb_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `tb_retail`
--
ALTER TABLE `tb_retail`
  MODIFY `inv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_retail_rt`
--
ALTER TABLE `tb_retail_rt`
  MODIFY `inv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_whole`
--
ALTER TABLE `tb_whole`
  MODIFY `inv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_whole_rt`
--
ALTER TABLE `tb_whole_rt`
  MODIFY `inv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
