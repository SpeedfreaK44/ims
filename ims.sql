-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2020 at 09:47 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ims`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cust_id` int(11) NOT NULL,
  `cust_fname` varchar(25) NOT NULL,
  `cust_lname` varchar(25) NOT NULL,
  `cust_email` text NOT NULL,
  `cust_phone` varchar(15) NOT NULL,
  `cust_gender` varchar(10) NOT NULL,
  `cust_alt_phone` varchar(15) NOT NULL,
  `cust_state` varchar(25) NOT NULL,
  `cust_city` varchar(25) NOT NULL,
  `cust_code` varchar(10) NOT NULL,
  `cust_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cust_id`, `cust_fname`, `cust_lname`, `cust_email`, `cust_phone`, `cust_gender`, `cust_alt_phone`, `cust_state`, `cust_city`, `cust_code`, `cust_address`) VALUES
(1, 'Mehul', 'Gajinkar', 'mg@gmail.com', '8523697410', 'male', '', 'Maharashtra', 'Mumbai', '400025', 'Nahur'),
(2, 'Jay', 'Ashra', 'jay@gmail.com', '0123456789', 'male', '9632587410', 'Maharashtra', 'Mumbai', '502362', 'SomeAddress'),
(7, 'Dhairya', 'Bhadra', 'dhairya@gmail.com', '7412589630', 'male', '1234567890', 'Maharashtra', 'Mumbaiya', '478569', 'Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_number` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `grand_total` float NOT NULL,
  `invoice_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_number`, `cust_id`, `grand_total`, `invoice_date`) VALUES
(1, 7, 206000, '2020-11-28');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prod_id` int(11) NOT NULL,
  `supp_id` int(11) NOT NULL,
  `prod_name` text NOT NULL,
  `prod_company_name` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `prod_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `supp_id`, `prod_name`, `prod_company_name`, `quantity`, `price`, `prod_date`) VALUES
(2, 1, 'i7', 'Intel', 7, 68000, '2020-03-25'),
(12, 9, 'SteelsSeries Sensei', 'SteelSeries', 488, 4000, '2020-03-21'),
(13, 1, 'Predator Helios 300', 'Acer', 78, 80000, '2020-03-21'),
(14, 5, 'Nvidia Geforce GTX 1050 Ti', 'Nvidia', 498, 14800, '2020-03-21'),
(15, 5, 'Razer DeathAdder', 'Razer', 3995, 3000, '2020-03-22'),
(16, 1, 'OnePlus 5T', 'OnePlus', 97, 35000, '2020-03-22'),
(17, 1, 'OnePlus 3T', 'OnePlus', 23, 25000, '2020-03-22'),
(18, 1, 'Mouse', 'Mouse12345', 11, 4500, '2020-03-24'),
(20, 10, 'G400', 'Logitech', 135, 1500, '2020-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `quantity` int(10) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sale_id`, `invoice_number`, `prod_id`, `quantity`, `amount`) VALUES
(1, 1, 2, 2, 68000),
(2, 1, 16, 2, 35000);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supp_id` int(11) NOT NULL,
  `supp_fname` varchar(25) NOT NULL,
  `supp_lname` varchar(25) NOT NULL,
  `supp_email` text NOT NULL,
  `supp_phone` varchar(15) NOT NULL,
  `business_name` varchar(25) NOT NULL,
  `business_address` text NOT NULL,
  `business_email` text NOT NULL,
  `business_phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supp_id`, `supp_fname`, `supp_lname`, `supp_email`, `supp_phone`, `business_name`, `business_address`, `business_email`, `business_phone`) VALUES
(16, 'Dhairya', 'Bhadra', 'x2020flc@stfx.ca', '1123456789', 'testing', 'India', 'testing@gmail.com', '1123456789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_number`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
