-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2019 at 04:36 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` char(1) NOT NULL,
  `dob` date NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `login_id` varchar(255) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `lastlogin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `gender`, `dob`, `relationship`, `department`, `address`, `mobile`, `login_id`, `pwd`, `lastlogin`) VALUES
(1, 'Avvari Raviraja', 'M', '1994-01-01', 'unmarried', 'Administrator', 'Lovely Professional University', '9464091279', 'admin', 'admin123', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `atm`
--

CREATE TABLE `atm` (
  `id` int(10) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `account_no` int(10) NOT NULL,
  `atm_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `atm`
--

INSERT INTO `atm` (`id`, `cust_name`, `account_no`, `atm_status`) VALUES
(1, 'vamshi', 53, 'ISSUED');

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary1`
--

CREATE TABLE `beneficiary1` (
  `id` int(10) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `sender_name` varchar(255) NOT NULL,
  `reciever_id` int(10) NOT NULL,
  `reciever_name` varchar(255) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beneficiary1`
--

INSERT INTO `beneficiary1` (`id`, `sender_id`, `sender_name`, `reciever_id`, `reciever_name`, `status`) VALUES
(1, 0, '', 52, 'Sayesha', 'PENDING'),
(2, 52, 'sayesha', 51, 'Avvari', 'ACTIVE'),
(3, 53, 'vamshi', 51, 'ravi', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `cheque_book`
--

CREATE TABLE `cheque_book` (
  `id` int(10) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `account_no` int(10) NOT NULL,
  `cheque_book_status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` char(1) NOT NULL,
  `dob` date NOT NULL,
  `nominee` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `ifsc` varchar(255) NOT NULL,
  `lastlogin` datetime NOT NULL,
  `accstatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `dob`, `nominee`, `account`, `address`, `mobile`, `email`, `password`, `branch`, `ifsc`, `lastlogin`, `accstatus`) VALUES
(51, 'Avvari', 'M', '1998-11-15', 'fghjk', 'Savings', 'xcvjk', 'ravi@gmail.', 'ravi@gmailcom', '790979d19c1220c9063be78fb4da5dae72587dbb', 'HYDERABAD', 'HYD00001386', '0000-00-00 00:00:00', 'ACTIVE'),
(52, 'sayesha', 'M', '1989-12-22', 'ddfghj', 'CURRENT', 'fghj', '9865975966', 'sayesha@gmail.com', '790979d19c1220c9063be78fb4da5dae72587dbb', 'BANGALORE', 'BAN0001387', '2019-11-14 07:35:41', 'ACTIVE'),
(53, 'vamshi', 'M', '1998-12-15', 'ravi', 'SAVINGS', 'lpu', '7032646236', 'vamshi@gmail.com', '790979d19c1220c9063be78fb4da5dae72587dbb', 'HYDERABAD', 'HYD00001386', '2019-11-18 05:28:39', 'ACTIVE'),
(54, 'dinesh', 'M', '1998-12-12', 'gfh', 'SAVINGS', 'lpu', '9464031789', 'dinesh@gmail.com', '790979d19c1220c9063be78fb4da5dae72587dbb', 'HYDERABAD', 'HYD00001386', '0000-00-00 00:00:00', 'ACTIVE'),
(55, 'Hitesh', 'M', '1998-12-21', 'Varma', 'SAVINGS', 'LPU', '8125648956', 'hitesh@gmail.com', '790979d19c1220c9063be78fb4da5dae72587dbb', 'HYDERABAD', 'HYD00001386', '0000-00-00 00:00:00', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `passbook1`
--

CREATE TABLE `passbook1` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook1`
--

INSERT INTO `passbook1` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2019-11-14', 'Avvari Raviraja', 'BANGALORE', 'B6A9E', 1000000, 0, 1000000.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `passbook34`
--

CREATE TABLE `passbook34` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `passbook42`
--

CREATE TABLE `passbook42` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `passbook43`
--

CREATE TABLE `passbook43` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `passbook44`
--

CREATE TABLE `passbook44` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `passbook45`
--

CREATE TABLE `passbook45` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `passbook46`
--

CREATE TABLE `passbook46` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `passbook50`
--

CREATE TABLE `passbook50` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook50`
--

INSERT INTO `passbook50` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2019-11-14', 'Vamshi Varma', 'DELHI', 'D30AC', 10000, 0, 10000.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `passbook51`
--

CREATE TABLE `passbook51` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook51`
--

INSERT INTO `passbook51` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2019-11-14', 'Avvari', 'HYDERABAD', 'HYD00001386', 100000, 0, 100000.00, 'Account Open'),
(2, '2019-11-14', 'Avvari', 'HYDERABAD', 'HYD00001386', 4999, 0, 104999.00, 'BY sayesha'),
(3, '2019-11-17', 'Avvari', 'HYDERABAD', 'HYD00001386', 9500, 0, 114499.00, 'BY vamshi');

-- --------------------------------------------------------

--
-- Table structure for table `passbook52`
--

CREATE TABLE `passbook52` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook52`
--

INSERT INTO `passbook52` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2019-11-14', 'sayesha', 'BANGALORE', 'BAN0001387', 10000, 0, 10000.00, 'Account Open'),
(2, '2019-11-14', 'sayesha', 'BANGALORE', 'BAN0001387', 0, 4999, 5001.00, 'TO Avvari');

-- --------------------------------------------------------

--
-- Table structure for table `passbook53`
--

CREATE TABLE `passbook53` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook53`
--

INSERT INTO `passbook53` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2019-11-17', 'vamshi', 'HYDERABAD', 'HYD00001386', 10000, 0, 10000.00, 'Account Open'),
(2, '2019-11-17', 'vamshi', 'HYDERABAD', 'HYD00001386', 0, 9500, 500.00, 'TO Avvari');

-- --------------------------------------------------------

--
-- Table structure for table `passbook54`
--

CREATE TABLE `passbook54` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook54`
--

INSERT INTO `passbook54` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2019-11-18', 'dinesh', 'HYDERABAD', 'HYD00001386', 10000, 0, 10000.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `passbook55`
--

CREATE TABLE `passbook55` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook55`
--

INSERT INTO `passbook55` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2019-11-28', 'Hitesh', 'HYDERABAD', 'HYD00001386', 10000, 0, 10000.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `doj` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `gender` char(1) NOT NULL,
  `lastlogin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `dob`, `relationship`, `department`, `doj`, `address`, `mobile`, `email`, `pwd`, `gender`, `lastlogin`) VALUES
(3, 'Vikas Kumar', '1998-01-15', 'married', 'developer', '2015-12-20', 'LPU, Jalandhar', '7986039970', 'vikaskumar@gmail.com', 'vikas', 'M', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`login_id`);

--
-- Indexes for table `atm`
--
ALTER TABLE `atm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary1`
--
ALTER TABLE `beneficiary1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cheque_book`
--
ALTER TABLE `cheque_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `passbook1`
--
ALTER TABLE `passbook1`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook34`
--
ALTER TABLE `passbook34`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook42`
--
ALTER TABLE `passbook42`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook43`
--
ALTER TABLE `passbook43`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook44`
--
ALTER TABLE `passbook44`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook45`
--
ALTER TABLE `passbook45`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook46`
--
ALTER TABLE `passbook46`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook50`
--
ALTER TABLE `passbook50`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook51`
--
ALTER TABLE `passbook51`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook52`
--
ALTER TABLE `passbook52`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook53`
--
ALTER TABLE `passbook53`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook54`
--
ALTER TABLE `passbook54`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook55`
--
ALTER TABLE `passbook55`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `atm`
--
ALTER TABLE `atm`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `beneficiary1`
--
ALTER TABLE `beneficiary1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cheque_book`
--
ALTER TABLE `cheque_book`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `passbook1`
--
ALTER TABLE `passbook1`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `passbook34`
--
ALTER TABLE `passbook34`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `passbook42`
--
ALTER TABLE `passbook42`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `passbook43`
--
ALTER TABLE `passbook43`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `passbook44`
--
ALTER TABLE `passbook44`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `passbook45`
--
ALTER TABLE `passbook45`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `passbook46`
--
ALTER TABLE `passbook46`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `passbook50`
--
ALTER TABLE `passbook50`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `passbook51`
--
ALTER TABLE `passbook51`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `passbook52`
--
ALTER TABLE `passbook52`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `passbook53`
--
ALTER TABLE `passbook53`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `passbook54`
--
ALTER TABLE `passbook54`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `passbook55`
--
ALTER TABLE `passbook55`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
