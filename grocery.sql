-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2020 at 10:06 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('anjali', 'anjali', 'pp@gmail.com', '8197914426', 'jhgsadyjdf', '123'),
('demo', 'demo', 'pp@gmail.com', '8197914426', 'resdtfghj', '123'),
('pratheek083', 'Pratheek Shiri', 'pratheek@gmail.com', '8779546521', 'Hyderabad', 'pratheek'),
('rakshithk00', 'Rakshith Kotian', 'rakshith@gmail.com', '9547123658', 'Gujarath', 'rakshith'),
('sampritha', 'sampritha', 's@gmail.com', '9854785456', 'erdctfvgbyhujik', '123'),
('sharu', 'Sharath Kumar T', 'sht@gmail.com', '9446773203', 'Thadegallu H,P.O padre', '123');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) CHARACTER SET utf8 NOT NULL,
  `images_path` varchar(200) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `images_path`) VALUES
(3, 'Green Apple', 90, 'Naturally Tasty', 'img/apple.jpg'),
(5, 'Banana', 25, 'Good For Health', 'img/banana.jpg'),
(9, 'BeetRoot', 25, 'Good For Health', 'img/beetroot.jpg'),
(10, 'Chilli munchi', 20, 'Khara khara!!!!', 'img/chilli-green.jpg'),
(11, 'Carrot', 20, 'Good for life', 'img/carrot.jpg'),
(12, 'Lady\'s Finger', 24, 'Good', 'img/ladies finger.jpg'),
(15, 'Sun', 50, 'Good', 'img/oil.jpg'),
(16, 'Olay Fair and Lovely', 125, 'For Darker Face', 'img/olay-skin-cream.jpg'),
(17, 'Potato', 25, 'minimini', 'img/potato.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('admin', 'admin', 'admin@admin.com', '9856589656', 'Mangalore,car street 2nd cross', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `productname` varchar(30) CHARACTER SET utf8 NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `productname`, `price`, `quantity`, `order_date`, `username`) VALUES
(1, 11, 'Carrot', 20, 3, '2019-11-23', 'sharu'),
(2, 10, 'Chilli munchi', 20, 1, '2019-11-23', 'sharu'),
(3, 13, 'Syrup', 55, 1, '2019-11-23', 'sharu'),
(4, 11, 'Carrot', 20, 1, '2019-11-23', 'anjali'),
(5, 15, 'Sun', 50, 1, '2019-11-23', 'sharu'),
(6, 15, 'Sun', 50, 2, '2019-11-25', 'anjali'),
(7, 11, 'Carrot', 20, 1, '2019-11-25', 'anjali'),
(8, 9, 'BeetRoot', 25, 1, '2020-02-09', 'anjali'),
(9, 8, 'Water', 45, 1, '2020-02-10', 'sharu'),
(10, 15, 'Sun', 50, 2, '2020-02-20', 'demo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`,`F_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
