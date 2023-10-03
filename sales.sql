-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 16, 2022 at 09:02 AM
-- Server version: 5.7.38-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sales`
--

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `transaction_id` int(11) NOT NULL,
  `entry_date` varchar(70) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `asset_cat` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`transaction_id`, `entry_date`, `name`, `amount`, `supplier`, `asset_cat`, `remarks`) VALUES
(1, '2020-08-29', 'Mandela', '200000', 'Phones Ltd', 'current', 'for office 12'),
(2, '07/15/22', 'john', '86000', 'Phones Ltd', 'current', 'kins');

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `transaction_id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `membership_number` varchar(100) NOT NULL,
  `prod_name` varchar(550) NOT NULL,
  `expected_date` varchar(500) NOT NULL,
  `note` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `contact`, `membership_number`, `prod_name`, `expected_date`, `note`) VALUES
(1, 'ggg', 'vhghvhhv', '8866', '56455', 'hoe', '2020-08-22', 'ghgh'),
(2, 'John', 'Banda', '0786031444', '2', 'Bak 12', '2020-08-26', 'Noted12'),
(3, 'kelvin', 'madvan', '0754321376', '10', 'panadol', '2022-07-06', 'on  credit');

-- --------------------------------------------------------

--
-- Table structure for table `equity`
--

CREATE TABLE `equity` (
  `equity_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `remarks` varchar(200) NOT NULL,
  `entry_date` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equity`
--

INSERT INTO `equity` (`equity_id`, `name`, `amount`, `remarks`, `entry_date`) VALUES
(2, 'sabs', '80000', 'sabs', '07/14/22'),
(3, 'henry', '65000', 'part', '07/15/22');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `expense_id` int(11) NOT NULL,
  `item` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `remarks` varchar(200) NOT NULL,
  `entry_date` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`expense_id`, `item`, `amount`, `remarks`, `entry_date`) VALUES
(3, 'lunch', '3000', '1 staff', '08/28/20'),
(5, 'water', '50000', 'office', '07/15/22'),
(6, 'soap', '6000', 'for clen', '01/01/70'),
(7, 'lunch', '5000', 'am', '07/15/22');

-- --------------------------------------------------------

--
-- Table structure for table `liabilities`
--

CREATE TABLE `liabilities` (
  `transaction_id` int(11) NOT NULL,
  `entry_date` varchar(70) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `liab_cat` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `liabilities`
--

INSERT INTO `liabilities` (`transaction_id`, `entry_date`, `name`, `amount`, `supplier`, `liab_cat`, `remarks`) VALUES
(1, '2020-08-29', 'peter ltd', '1000', '', 'current', 'for buying tea'),
(2, '2020-08-29', 'cente', '50000', '', 'current', 'for buning phones'),
(3, '07/15/22', 'Mandela Shaban', '70000', '', 'current', 'sony'),
(4, '2022-07-15', 'kunsa', '9000', '', 'current', 'payable in 2 weeks'),
(5, '07/15/22', '2 tables', '65000', '', 'current', 'sabs');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `product_id` int(11) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `o_price` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `onhand_qty` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `qty_sold` int(10) NOT NULL,
  `expiry_date` varchar(500) NOT NULL,
  `date_arrival` varchar(500) NOT NULL,
  `med_name` varchar(255) DEFAULT NULL,
  `quantity_ordered` varchar(255) DEFAULT NULL,
  `sell_type` varchar(255) DEFAULT NULL,
  `reg_date` varchar(255) DEFAULT NULL,
  `exp_date` varchar(255) DEFAULT NULL,
  `tot_buy` varchar(255) DEFAULT NULL,
  `del_no` varchar(255) DEFAULT NULL,
  `qty_left` varchar(255) DEFAULT NULL,
  `category` varchar(266) DEFAULT NULL,
  `status` varchar(266) DEFAULT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`, `med_name`, `quantity_ordered`, `sell_type`, `reg_date`, `exp_date`, `tot_buy`, `del_no`, `qty_left`, `category`, `status`, `order_id`) VALUES
(6, '', '', '', '', '300', '600', '300', 'Tech Ltd', 0, 0, 0, '', '2020-11-15', 'Paracetamol	', '300', 'Tab', '2020-11-15', '2022-11-02', '90000', 'n.10', '249', 'Abdominal', 'Approved', 11),
(4, '', '', '', '', '900', '1600', '700', 'Phones Ltd', 0, 0, 0, '', '2020-11-23', 'Periton	', '160', 'Bot', '2020-11-23', '2014-11-03', '18900', '9s', '109', 'Head ache', 'Pending', 13);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL DEFAULT 'None',
  `cost` varchar(100) NOT NULL,
  `o_price` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL DEFAULT 'None',
  `profit` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `onhand_qty` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `qty_sold` int(10) NOT NULL,
  `expiry_date` varchar(500) NOT NULL,
  `date_arrival` varchar(500) NOT NULL,
  `med_name` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `sell_type` varchar(255) DEFAULT NULL,
  `reg_date` varchar(255) DEFAULT NULL,
  `exp_date` varchar(255) DEFAULT NULL,
  `tot_buy` varchar(255) DEFAULT NULL,
  `del_no` varchar(255) DEFAULT NULL,
  `qty_left` int(10) DEFAULT NULL,
  `category` varchar(266) DEFAULT NULL,
  `status` varchar(266) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`, `med_name`, `quantity`, `sell_type`, `reg_date`, `exp_date`, `tot_buy`, `del_no`, `qty_left`, `category`, `status`) VALUES
(4, '', '', '', '', '900', '1600', '700', 'Phones Ltd', 0, 0, 0, '', '2044-11-01', 'Periton	', '21', 'Bot', '11/23/20', '07/14/22', '18900', '9s', 21, 'Head ache', NULL),
(5, '', '', '', '', '200', '1000', '800', 'Tech Ltd', 0, 0, 0, '', '2044-11-16', 'Painkiller', '160', 'Bot', '11/15/20', '07/13/22', '32000', 'n-20', 160, 'Abdominal', 'Available'),
(7, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 20, 20, '2022-07-12', '2022-07-08', 'Paracetamol', '225', 'Bot', '2022-07-06', '2022-07-12', '3000', '124', 20, 'Painkillers', 'Available'),
(8, 'Painv', 'Painv', 'Painv', '15000', '15000', '70000', '55000', 'White star', 0, 300, 0, '07/14/22', '2033-07-12', 'Painv', '305', 'Bot', '07/13/22', '07/13/22', '4575000', '203', 305, 'Painkillers', 'Available'),
(9, 'Mabendozol', 'Mabendozol', 'Mabendozol', '15000', '15000', '70000', '55000', 'abacus pharmacy', 0, 200, 0, '07/16/22', '2022-07-11', 'Mabendozol', '200', 'Bot', '07/13/22', '07/14/55', '3000000', '392', 200, 'Urinary affection', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `transaction_id` int(11) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `suplier` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchases_item`
--

CREATE TABLE `purchases_item` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `product_id` int(11) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL DEFAULT 'None',
  `cost` varchar(100) NOT NULL,
  `o_price` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL DEFAULT 'None',
  `profit` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `onhand_qty` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `qty_sold` int(10) NOT NULL,
  `expiry_date` varchar(500) NOT NULL,
  `date_arrival` varchar(500) NOT NULL,
  `med_name` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `sell_type` varchar(255) DEFAULT NULL,
  `reg_date` varchar(255) DEFAULT NULL,
  `exp_date` varchar(255) DEFAULT NULL,
  `tot_buy` varchar(255) DEFAULT NULL,
  `del_no` varchar(255) DEFAULT NULL,
  `qty_left` int(10) DEFAULT NULL,
  `category` varchar(266) DEFAULT NULL,
  `status` varchar(266) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_details`
--

INSERT INTO `purchase_details` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`, `med_name`, `quantity`, `sell_type`, `reg_date`, `exp_date`, `tot_buy`, `del_no`, `qty_left`, `category`, `status`) VALUES
(1, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 12, 0, '2027-01-06', '2022-07-06', 'Paracetamol', '12', 'Bot', '2022-07-06', '2027-01-06', '1800', '123', 12, 'Painkillers', 'Available'),
(2, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 26, 0, '2022-07-13', '2022-07-06', 'Paracetamol', '26', 'Bot', '2022-07-06', '2022-07-13', '3900', '124', 26, 'Painkillers', 'Available'),
(3, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 20, 0, '2022-07-14', '2022-07-14', 'Paracetamol', '20', 'Bot', '2022-07-06', '2022-07-14', '3000', '124', 20, 'Painkillers', 'Available'),
(4, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 20, 0, '2022-07-22', '2022-07-15', 'Paracetamol', '20', 'Tab', '2022-07-06', '2022-07-22', '3000', '124', 20, 'Painkillers', 'Available'),
(5, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 20, 0, '2022-07-22', '2022-07-15', 'Paracetamol', '20', 'Tab', '2022-07-06', '2022-07-22', '3000', '124', 20, 'Painkillers', 'Available'),
(6, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 20, 0, '2022-07-22', '2022-07-15', 'Paracetamol', '20', 'Tab', '2022-07-06', '2022-07-22', '3000', '124', 20, 'Painkillers', 'Available'),
(7, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 10, 0, '2022-07-11', '2022-07-07', 'Paracetamol', '10', 'Bot', '2022-07-06', '2022-07-11', '1500', '123', 10, 'Painkillers', 'Available'),
(8, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 10, 0, '2022-07-11', '2022-07-07', 'Paracetamol', '10', 'Bot', '2022-07-06', '2022-07-11', '1500', '123', 10, 'Painkillers', 'Available'),
(9, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 10, 0, '2022-07-11', '2022-07-07', 'Paracetamol', '10', 'Bot', '2022-07-06', '2022-07-11', '1500', '123', 10, 'Painkillers', 'Available'),
(10, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 20, 0, '2022-07-12', '2022-07-08', 'Paracetamol', '20', 'Bot', '2022-07-06', '2022-07-12', '3000', '124', 20, 'Painkillers', 'Available'),
(11, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 20, 0, '2022-07-14', '2022-07-06', 'Paracetamol', '20', 'Bot', '2022-07-06', '2022-07-14', '3000', '124', 20, 'Painkillers', 'Available'),
(12, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 20, 0, '2022-07-14', '2022-07-06', 'Paracetamol', '20', 'Bot', '2022-07-06', '2022-07-14', '3000', '124', 20, 'Painkillers', 'Available'),
(13, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 20, 0, '2022-07-14', '2022-07-06', 'Paracetamol', '20', 'Bot', '2022-07-06', '2022-07-14', '3000', '124', 20, 'Painkillers', 'Available'),
(14, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 20, 0, '2022-07-07', '2022-07-06', 'Paracetamol', '20', 'Bot', '2022-07-06', '2022-07-07', '3000', '124', 20, 'Painkillers', 'Available'),
(15, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 20, 0, '2022-07-07', '2022-07-06', 'Paracetamol', '20', 'Bot', '2022-07-06', '2022-07-07', '3000', '124', 20, 'Painkillers', 'Available'),
(16, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 30, 0, '2022-07-14', '2022-07-15', 'Paracetamol', '30', 'Bot', '2022-07-06', '2022-07-14', '4500', '124', 30, 'Painkillers', 'Available'),
(17, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 30, 0, '2022-07-15', '2022-07-05', 'Paracetamol', '30', 'Bot', '2022-07-06', '2022-07-15', '4500', '124', 30, 'Painkillers', 'Available'),
(18, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 30, 0, '2022-07-06', '2022-07-21', 'Paracetamol', '30', 'Bot', '2022-07-07', '2022-07-06', '4500', '124', 30, 'Painkillers', 'Available'),
(19, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 30, 0, '2022-07-06', '2022-07-21', 'Paracetamol', '30', 'Bot', '2022-07-07', '2022-07-06', '4500', '124', 30, 'Painkillers', 'Available'),
(20, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 40, 0, '2022-07-07', '2022-07-12', 'Paracetamol', '40', 'Bot', '2022-07-06', '2022-07-07', '6000', '203', 40, 'Painkillers', 'Available'),
(21, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 40, 0, '2022-07-07', '2022-07-12', 'Paracetamol', '40', 'Bot', '2022-07-06', '2022-07-07', '6000', '203', 40, 'Painkillers', 'Available'),
(22, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 45, 0, '2022-07-14', '2022-07-13', 'Paracetamol', '45', 'Bot', '2022-07-06', '2022-07-14', '6750', '123', 45, 'Painkillers', 'Available'),
(23, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 100, 0, '2022-07-09', '2022-07-14', 'Paracetamol', '100', 'Bot', '2022-07-06', '2022-07-09', '15000', '128', 100, 'Painkillers', 'Available'),
(24, 'Paracetamol', 'Paracetamol', 'Paracetamol', '1500', '1500', '70000', '68500', 'abacus pharmacy', 0, 40, 0, '2022-07-13', '2022-07-06', 'Paracetamol', '40', 'Bot', '2022-07-07', '2022-07-13', '60000', '124', 40, 'Painkillers', 'Available'),
(25, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 20, 0, '2022-07-14', '2022-07-06', 'Paracetamol', '20', 'Bot', '2022-07-06', '2022-07-14', '3000', '124', 20, 'Painkillers', 'Available'),
(26, 'Painkiller', 'Painkiller', 'Painkiller', '15000', '15000', '70000', '55000', 'abacus pharmacy', 0, 30, 0, '2032-01-14', '2022-07-06', 'Painkiller', '30', 'Bot', '2022-07-06', '2032-01-14', '450000', '128', 30, 'Painkillers', 'Available'),
(27, 'Painkiller', 'Painkiller', 'Painkiller', '15000', '15000', '70000', '55000', 'abacus pharmacy', 0, 30, 0, '2032-01-14', '2022-07-06', 'Painkiller', '30', 'Bot', '2022-07-06', '2032-01-14', '450000', '128', 30, 'Painkillers', 'Available'),
(28, 'Painkiller', 'Painkiller', 'Painkiller', '15000', '15000', '70000', '55000', 'abacus pharmacy', 0, 30, 0, '2032-01-14', '2022-07-06', 'Painkiller', '30', 'Bot', '2022-07-06', '2032-01-14', '450000', '128', 30, 'Painkillers', 'Available'),
(29, 'Painkiller', 'Painkiller', 'Painkiller', '15000', '15000', '70000', '55000', 'abacus pharmacy', 0, 30, 0, '2032-01-14', '2022-07-06', 'Painkiller', '30', 'Bot', '2022-07-06', '2032-01-14', '450000', '128', 30, 'Painkillers', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `transaction_id` int(11) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `cashier` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `due_date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `balance` varchar(100) NOT NULL,
  `SalesOrderID` varchar(255) DEFAULT NULL,
  `amt_paid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`transaction_id`, `invoice_number`, `cashier`, `date`, `type`, `amount`, `profit`, `due_date`, `name`, `balance`, `SalesOrderID`, `amt_paid`) VALUES
(1, 'RS-808303', 'Admin', '08/27/20', 'cash', '19200', '1200', '300', 'John', ' ', NULL, NULL),
(2, 'RS-808303', 'Admin', '08/27/20', 'cash', '19200', '1200', '2020-08-04', 'John', ' ', NULL, NULL),
(3, 'RS-808303', 'Admin', '08/27/20', 'cash', '19200', '1200', '2020-08-27', 'John', ' ', NULL, NULL),
(4, 'RS-20303332', 'Administrator', '07/12/22', 'cash', '1200', '600', '07/12/22', 'John', '0', '', 1200),
(5, 'RS-50220', 'sab', '07/15/22', 'cash', '1600', '700', '07/15/22', 'John', '900', '', 700);

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE `sales_order` (
  `transaction_id` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `product` varchar(50) DEFAULT 'None',
  `qty` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `product_code` varchar(50) DEFAULT 'None',
  `gen_name` varchar(50) DEFAULT 'None',
  `name` varchar(50) DEFAULT 'None',
  `price` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `date` varchar(50) DEFAULT 'None',
  `customer_name` varchar(255) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `med_name` varchar(100) DEFAULT NULL,
  `due_date` varchar(100) DEFAULT NULL,
  `sales_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_order`
--

INSERT INTO `sales_order` (`transaction_id`, `invoice`, `product`, `qty`, `amount`, `profit`, `product_code`, `gen_name`, `name`, `price`, `discount`, `date`, `customer_name`, `category`, `med_name`, `due_date`, `sales_date`) VALUES
(1, 'RS-808303', '5', '1', 'Pens Bek    ', 'Bak 3', 'Pens Bek', '', '1600', '100', 'John', ' ', 'Pens Bek', NULL, NULL, NULL, NULL),
(3, 'RS-808303', 'Bak 3', '2', '1600', '200', 'Pens Bek', 'Pens Bek', 'Pens Bek     ', '100', '', ' ', 'John', NULL, NULL, NULL, NULL),
(4, 'RS-808303', 'Bak 3', '2', '3200', '200', 'Pens Bek', 'Pens Bek', 'Pens Bek     ', '100', '', ' ', 'John', NULL, NULL, NULL, NULL),
(5, 'RS-808303', 'Bak 3', '2', '3200', '200', 'Pens Bek', 'Pens Bek', 'Pens Bek     ', '100', '', ' ', 'John', NULL, NULL, NULL, NULL),
(6, 'RS-808303', 'Bak 3', '3', '4800', '300', 'Pens Bek', 'Pens Bek', 'Pens Bek     ', '100', '', ' ', 'John', NULL, NULL, NULL, NULL),
(7, 'RS-393280', 'Book12', '1', '500', '500', 'Book', 'Book', 'Book', '500', '', ' ', 'John', NULL, NULL, NULL, NULL),
(8, 'RS-040320', 'None', '1', '0', '0', 'None', 'None', 'None', '0', '0.0', 'None', 'kelvin', '', '', NULL, '2022-07-12'),
(9, 'RS-040320', 'None', '2', '3200', '1400', 'None', 'None', 'None', '1600', '0.0', 'None', 'John', 'Head ache', 'Periton	', NULL, '2022-07-12'),
(10, 'RS-040320', 'None', '5', '3000', '1500', 'None', 'None', 'None', '600', '0.0', 'None', 'John', 'Abdominal', 'Paracetamol	', NULL, '2022-07-12'),
(11, 'RS-040320', 'None', '5', '3000', '1500', 'None', 'None', 'None', '600', '0.0', 'None', 'John', 'Abdominal', 'Paracetamol	', NULL, '2022-07-12'),
(12, 'RS-62373', 'None', '5', '8000', '3500', 'None', 'None', 'None', '1600', '0.0', 'None', 'John', 'Head ache', 'Periton	', NULL, '2022-07-12'),
(13, 'RS-62373', 'None', '5', '8000', '3500', 'None', 'None', 'None', '1600', '0.0', 'None', 'John', 'Head ache', 'Periton	', NULL, '2022-07-12'),
(14, 'RS-62373', 'None', '5', '8000', '3500', 'None', 'None', 'None', '1600', '0.0', 'None', 'John', 'Head ache', 'Periton	', NULL, '2022-07-12'),
(15, '', 'None', '5', '3000', '1500', 'None', 'None', 'None', '600', '0.0', 'None', 'kelvin', 'Abdominal', 'Paracetamol	', NULL, '2022-07-12'),
(16, '', 'None', '10', '6000', '3000', 'None', 'None', 'None', '600', '0.0', 'None', 'John', 'Abdominal', 'Paracetamol	', NULL, '2022-07-12'),
(17, '', 'None', '5', '3000', '1500', 'None', 'None', 'None', '600', '0.0', 'None', 'kelvin', 'Abdominal', 'Paracetamol	', NULL, '2022-07-12'),
(18, 'RS-62373', 'None', '5', '8000', '3500', 'None', 'None', 'None', '1600', '0.0', 'None', 'John', 'Head ache', 'Periton	', NULL, '2022-07-12'),
(19, 'RS-20303332', 'None', '4', '2400', '1200', 'None', 'None', 'None', '600', '0.0', 'None', 'John', 'Abdominal', 'Paracetamol	', NULL, '2022-07-12'),
(20, 'RS-20303332', 'None', '3', '4800', '2100', 'None', 'None', 'None', '1600', '0.0', 'None', 'John', 'Head ache', 'Periton	', NULL, '2022-07-12'),
(21, 'RS-20303332', 'None', '2', '3200', '1400', 'None', 'None', 'None', '1600', '0.0', 'None', 'kelvin', 'Head ache', 'Periton	', NULL, '2022-07-12'),
(22, 'RS-20303332', 'None', '2', '1200', '600', 'None', 'None', 'None', '600', '0.0', 'None', 'John', 'Abdominal', 'Paracetamol	', NULL, '2022-07-12'),
(23, 'RS-50220', 'None', '1', '1600', '700', 'None', 'None', 'None', '1600', '0.0', 'None', 'John', 'Head ache', 'Periton	', NULL, '2022-07-15');

-- --------------------------------------------------------

--
-- Table structure for table `supliers`
--

CREATE TABLE `supliers` (
  `suplier_id` int(11) NOT NULL,
  `suplier_name` varchar(100) NOT NULL,
  `suplier_address` varchar(100) NOT NULL,
  `suplier_contact` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `note` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supliers`
--

INSERT INTO `supliers` (`suplier_id`, `suplier_name`, `suplier_address`, `suplier_contact`, `contact_person`, `note`) VALUES
(3, 'Phones Ltd', 'China', 'peter', '0786031442', ' iphones, android'),
(4, 'Tech Ltd', 'india', 'Ronny', '0786031447', 'androids, iphone, blue'),
(5, 'abacus pharmacy', 'nizam road', 'kumar', '075432876', 'notes2'),
(6, 'White star', 'jinja d', 'adam', '0755943443', 'cloves,hcg'),
(7, 'Hans kk', 'jinn', '0755943416', 'mary', 'hins');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `position`) VALUES
(1, 'store', 'store', 'Medical depot', 'store'),
(2, 'sab', 'sab', 'sab', 'pharmacist'),
(3, 'admin', 'admin123', 'Administrator', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `equity`
--
ALTER TABLE `equity`
  ADD PRIMARY KEY (`equity_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`expense_id`);

--
-- Indexes for table `liabilities`
--
ALTER TABLE `liabilities`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `purchases_item`
--
ALTER TABLE `purchases_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `supliers`
--
ALTER TABLE `supliers`
  ADD PRIMARY KEY (`suplier_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `equity`
--
ALTER TABLE `equity`
  MODIFY `equity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `expense_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `liabilities`
--
ALTER TABLE `liabilities`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purchases_item`
--
ALTER TABLE `purchases_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `supliers`
--
ALTER TABLE `supliers`
  MODIFY `suplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
