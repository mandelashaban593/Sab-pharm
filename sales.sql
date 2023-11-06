-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 30, 2023 at 09:54 AM
-- Server version: 8.0.34-0ubuntu0.22.04.1
-- PHP Version: 8.1.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
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
  `transaction_id` int NOT NULL,
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
(1, '08/29/20', 'Mandela', '200000', 'Phones Ltd', 'current', 'for office 12'),
(2, '07/15/22', 'john', '86000', 'Phones Ltd', 'current', 'kins'),
(3, '10/01/23', 'Chair', '40000', 'Babekri Sadala', 'current', 'For office'),
(4, '10/01/23', '1 table', '30000', 'Ken', 'current', 'For office'),
(5, '10/01/23', 'pen', '1000', 'sum', 'current', 'For office'),
(6, '10/01/23', 'Book', '1000', 'Chris', 'current', 'For office'),
(7, '10/11/23', 'speaker', '25000', 'kkl', 'current', 'p'),
(8, '10/12/23', 'carteen', '40000', 'po', 'current', 'pp');

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `transaction_id` int NOT NULL,
  `date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `balance` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `membership_number` varchar(355) DEFAULT NULL,
  `prod_name` varchar(355) DEFAULT NULL,
  `expected_date` varchar(355) DEFAULT NULL,
  `note` varchar(355) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `contact`, `membership_number`, `prod_name`, `expected_date`, `note`) VALUES
(1, 'ggg', 'vhghvhhv', '8866', '56455', 'hoe', '2020-08-22', 'ghgh'),
(2, 'John', 'Banda', '0786031444', '2', 'Bak 12', '2020-08-26', 'Noted12'),
(3, 'kelvin', 'madvan', '0754321376', '10', 'panadol', '2022-07-06', 'on  credit'),
(4, 'Octpm1007Africa/Addis_AbabaSaturdaypm', 'Mmndk', '07834949', '0', '', '0', 'err'),
(5, 'Ruky Pharmacy', 'kka pla', '79939', '0', '', '0', 'No'),
(6, 'JJ Pharmacy', 'mm', '90998889', '0', '', '0', 'jss'),
(7, 'Remmy', 'mm', '90998889', '0', '', '0', 'jss'),
(10, 'Karem3', 'jina', '030030', '0', '', '0', 'djkd');

-- --------------------------------------------------------

--
-- Table structure for table `equity`
--

CREATE TABLE `equity` (
  `equity_id` int NOT NULL,
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
(3, 'henry', '65000', 'part', '07/15/22'),
(4, 'Sean', '3000000', 'capital contribution', '10/01/23'),
(5, 'Patrick', '22000000', 'capital contribution', '10/01/23');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `expense_id` int NOT NULL,
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
(7, 'lunch', '5000', 'am', '07/15/22'),
(8, 'Lunch', '5000', 'For Juma', '10/01/23'),
(9, 'Tea', '3000', 'for mary', '09/29/23');

-- --------------------------------------------------------

--
-- Table structure for table `liabilities`
--

CREATE TABLE `liabilities` (
  `transaction_id` int NOT NULL,
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
(5, '07/15/22', '2 tables', '65000', '', 'current', 'sabs'),
(6, '10/01/23', 'Jerican', '5000', '', 'current', 'from jj'),
(7, '10/01/23', 'monitor', '140000', '', 'current', 'from HP Ent'),
(8, '10/01/23', 'CPU', '400000', '', 'current', 'From Comp Ent'),
(9, '10/12/23', 'Loan', '200000', '', 'long', 'kk'),
(10, '10/12/23', 'Chair', '30000', '', 'current', 'll');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `product_id` int NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `o_price` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `onhand_qty` int NOT NULL,
  `qty` int NOT NULL,
  `qty_sold` int NOT NULL,
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
  `order_id` int NOT NULL
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
  `product_id` int NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL DEFAULT 'None',
  `cost` varchar(255) DEFAULT NULL,
  `o_price` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL DEFAULT 'None',
  `profit` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `onhand_qty` int NOT NULL,
  `qty` int NOT NULL,
  `qty_sold` int NOT NULL,
  `expiry_date` varchar(500) NOT NULL,
  `date_arrival` varchar(500) NOT NULL,
  `med_name` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `sell_type` varchar(255) DEFAULT NULL,
  `reg_date` varchar(255) DEFAULT NULL,
  `exp_date` varchar(255) DEFAULT NULL,
  `tot_buy` varchar(255) DEFAULT NULL,
  `del_no` varchar(255) DEFAULT NULL,
  `qty_left` int DEFAULT NULL,
  `category` varchar(266) DEFAULT NULL,
  `status` varchar(266) DEFAULT NULL,
  `batch_no` varchar(255) DEFAULT NULL,
  `inventory` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`, `med_name`, `quantity`, `sell_type`, `reg_date`, `exp_date`, `tot_buy`, `del_no`, `qty_left`, `category`, `status`, `batch_no`, `inventory`) VALUES
(3, '', '', '', '', '900', '1500', '600', 'Phones Ltd', 0, 0, 0, '', '2044-11-01', 'Periton ', '110000', 'Bot', '11/23/20', '07/14/22', '18900', '9s', 100000, 'Head ache', 'Approved', 'B211', NULL),
(4, '', '', '', '', '900', '1600', '700', 'Phones Ltd', 0, 0, 0, '', '2044-11-01', 'Periton	', '109923', 'Bot', '11/23/20', '07/14/22', '18900', '9s', 100000, 'Head ache', 'Approved', 'B111', NULL),
(5, '', '', '', '', '200', '1000', '800', 'Tech Ltd', 0, 0, 0, '', '2044-11-16', 'Painkiller', '264', 'Bot', '11/15/20', '07/13/22', '32000', 'n-20', 160, 'Abdominal', 'Approved', NULL, NULL),
(7, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '200', '50', 'abacus pharmacy', 0, 20, 20, '2022-07-12', '2022-07-08', 'Paracetamol', '100639', 'Bot', '2022-07-06', '2022-07-12', '3000', '124', 20, 'Painkillers', 'Approved', NULL, NULL),
(8, 'Painv', 'Painv', 'Painv', '150', '150', '200', '50', 'White star', 0, 300, 0, '07/14/22', '2033-07-12', 'Painv', '294', 'Bot', '07/13/22', '07/13/22', '4575000', '203', 305, 'Painkillers', 'Approved', NULL, NULL),
(9, 'Mabendozol', 'Mabendozol', 'Mabendozol', '150', '150', '200', '50', 'abacus pharmacy', 0, 200, 0, '07/16/22', '2022-07-11', 'Mabendozol', '1167', 'Bot', '07/13/22', '07/14/55', '3000000', '392', 200, 'Urinary affection', 'Approved', NULL, NULL),
(10, 'Asprine', 'Asprine', 'Asprine', '50', '50', '150', '100', 'abacus pharmacy', 0, 9000, 0, '2023-09-28', 'Asprine', 'Asprine', '9413', 'Tab', '2023-09-28', NULL, NULL, 'fff-933', 0, 'PainKiller', 'Approved', NULL, NULL),
(11, 'Capsul', 'Capsul', 'Capsul', '150', '150', '200', '50', 'whitestar', 0, 90000, 0, '2026-11-02', 'Capsul', 'Capsul', '90000', 'Tab', '2023-10-02', NULL, NULL, 'f34', 0, 'Painkiller', 'Approved', NULL, NULL),
(12, 'Quatem', 'Quatem', 'Quatem', '200', '200', '300', '100', 'Guardian Pharmacy', 0, 9000, 0, '2027-10-07', 'Quatem', 'Quatem', '18910', 'Tab', '2023-10-02', NULL, NULL, 'DD093', 0, 'Painkiller', 'Approved', NULL, NULL),
(13, 'Ceptrine', 'Ceptrine', 'Ceptrine', '400', '400', '900', '500', 'Super Medic', 0, 10000, 0, '2055-10-05', 'Ceptrine', 'Ceptrine', '10021', 'Tab', '2023-10-01', NULL, '4000000', 'HFFF43', 0, 'Painkiller', 'Approved', NULL, NULL),
(14, 'ArtEFAN', 'ArtEFAN', 'ArtEFAN', '2400', '2400', '4000', '1600', 'Super Medic', 0, 9000, 0, '2033-06-02', 'ArtEFAN', 'ArtEFAN', '8988', 'Tab', '2023-10-02', NULL, '21600000', 'nn-303', 0, 'Antimalario', 'Approved', NULL, NULL),
(15, 'Periton	', '', 'Periton	', NULL, '900', '1600', '2600', 'Super Medic', 0, 200, 0, '2023-10-26', 'Periton	', 'Periton	', '188', 'cash', '2023-10-05', NULL, '700000', '9s', 100000, 'Head ache', 'Approved', 'B632', NULL),
(16, 'Mabendozol', 'Mabendozol', 'Mabendozol', NULL, '150', '200', '5564', 'Super Medic', 0, 140, 0, '2023-11-03', 'Mabendozol', 'Mabendozol', '131', 'cash', '2023-10-05', NULL, '800000', '392', 200, 'Urinary affection', 'Approved', 'B6432', NULL),
(17, 'Asprine', 'Asprine', 'Asprine', '50', '50', '150', '12750', 'whitestar', 0, 50, 0, '2023-10-21', 'Asprine', 'Asprine', '3998', 'cash', '2023-10-05', NULL, '640000', 'fff-933', 0, 'PainKiller', 'Approved', 'B11873', NULL),
(18, 'Mabendozol', 'Mabendozol', 'Mabendozol', '150', '150', '200', '111516', 'whitestar', 0, 6, 0, '2023-10-05', 'Mabendozol', 'Mabendozol', '306', 'cash', '2023-10-11', NULL, '670000', '392', 6, 'Urinary affection', 'Approved', 'RS2132', NULL),
(19, 'Ceptrine', 'Ceptrine', 'Ceptrine', '400', '400', '900', '6903', 'abacus pharmacy', 0, 89, 0, '2023-10-04', 'Ceptrine', 'Ceptrine', '8976', 'cash', '2023-10-05', NULL, '650000', 'HFFF43', 89, 'Painkiller', 'Approved', 'B987544', NULL),
(20, 'ArtEFAN', 'ArtEFAN', 'ArtEFAN', '2400', '2400', '4000', '9010', 'abacus pharmacy', 0, 78, 0, '2023-10-25', 'ArtEFAN', 'ArtEFAN', '70', 'cash', '2023-10-05', NULL, '890000', 'nn-303', 78, 'Antimalario', 'Approved', 'B87233', NULL),
(21, 'Capsul', 'Capsul', 'Capsul', '150', '150', '200', '304', 'Super Medic', 0, 44, 0, '2023-10-12', 'Capsul', 'Capsul', '90039', 'credit', '2023-10-05', NULL, '20000', 'f34', 44, 'Painkiller', 'Approved', 'B7201', NULL),
(22, 'Ceptrine', 'Ceptrine', 'Ceptrine', '400', '400', '900', '9600', 'Super Medic', 0, 34, 0, '2023-11-01', 'Ceptrine', 'Ceptrine', '123', 'credit', '2023-10-05', NULL, '340000', 'HFFF43', 34, 'Painkiller', 'Approved', 'B78532', NULL),
(23, 'D-Artepp', 'D-Artepp', 'D-Artepp', '120', '120', '200', '80', 'None', 0, 20, 0, '2023-11-01', 'D-Artepp', 'D-Artepp', '20', 'Stp', '2023-10-06', NULL, '2400', 'D876', 0, 'Healer', 'Approved', NULL, NULL),
(24, 'Painkiller', '', 'Painkiller', '200', '200', '1000', '1050', 'Super Medic', 0, 4, 0, '2023-10-07', 'Painkiller', 'Painkiller', '4', 'cash', '2023-10-07', NULL, '5000', 'n-20', 4, 'Abdominal', 'Approved', 'b3', NULL),
(25, 'Painkiller', '', 'Painkiller', '200', '200', '1000', '800', 'Super Medic', 0, 5, 0, '2023-10-04', 'Painkiller', 'Painkiller', '2', 'cash', '2023-10-07', NULL, '5000', 'n-20', 5, 'Abdominal', 'Approved', 'b6', NULL),
(26, 'Ceptrine', 'Ceptrine', 'Ceptrine', '400', '400', '900', '600', 'Super Medic', 0, 2, 0, '2023-10-25', 'Ceptrine', 'Ceptrine', '2', 'cash', '2023-10-07', NULL, '2000', 'HFFF43', 2, 'Painkiller', 'Approved', 'B66', NULL),
(27, 'Mabendozol', 'Mabendozol', 'Mabendozol', '150', '150', '200', '3850', 'Super Medic', 0, 3, 0, '2023-10-25', 'Mabendozol', 'Mabendozol', '3', 'cash', '2023-10-07', NULL, '12000', '392', 3, 'Urinary affection', 'Approved', 'b4', NULL),
(28, 'Painkiller', '', 'Painkiller', '200', '200', '1000', '-20', 'abacus pharmacy', 0, 5, 0, '2023-10-07', 'Painkiller', 'Painkiller', '10', 'cash', '', NULL, '900', 'n-20', 5, 'Abdominal', 'Approved', 'B64', NULL),
(29, 'Ceptrine', 'Ceptrine', 'Ceptrine', '400', '400', '900', '-234', 'abacus pharmacy', 0, 6, 0, '2023-10-05', 'Ceptrine', 'Ceptrine', '90200', 'cash', '', NULL, '1000', 'HFFF43', 6, 'Painkiller', 'Approved', 'B88', NULL),
(30, 'Mabendozol', 'Mabendozol', 'Mabendozol', '150', '150', '200', '3350', 'Guardian Pharmacy', 0, 2, 0, '2023-10-25', 'Mabendozol', 'Mabendozol', '2', 'cash', '2023-10-12', NULL, '7000', '392', 2, 'Urinary affection', 'Approved', 'B31', NULL),
(31, 'Kuiris', 'Kuiris', 'Kuiris', '0', '0', '300', '300', 'None', 0, 0, 0, '', 'Kuiris', 'Kuiris', '0', 'Bot', '2023-10-07', NULL, '0', 'D876', 0, 'Antibiotics', 'Approved', NULL, NULL),
(32, 'Centaprintecil', 'Centaprintecil', 'Centaprintecil', '0', '0', '300', '300', 'None', 0, 4, 0, '', 'Centaprintecil', 'Centaprintecil', '4', 'Tab', '2023-10-07', NULL, '0', 'D876', 0, 'Painkiller', 'Approved', NULL, NULL),
(33, 'Pensil', 'Pensil', 'Pensil', '0', '0', '300', '300', 'None', 0, 12, 0, '', 'Pensil', 'Pensil', '24', 'Bot', '2023-10-07', NULL, '0', 'D876', 0, 'Antibiotics', 'Approved', NULL, NULL),
(34, 'Muniscapuls', 'Munis capuls', 'Muniscapuls', '0', '0', '300', '300', 'None', 0, 0, 0, '', 'Muniscapuls', 'Muniscapuls', '', 'Tab', '2023-10-07', NULL, '0', 'D876', 0, 'Painkiller', 'Approved', NULL, NULL),
(35, 'Asprine', 'Asprine', 'Asprine', '50', '50', '150', '819', 'Super Medic', 0, 23, 0, '2023-10-11', 'Asprine', 'Asprine', '26', 'cash', '2023-10-11', NULL, '20000', 'fff-933', 23, 'PainKiller', 'Approved', 'B43', NULL),
(36, 'ArtEFAN', 'ArtEFAN', 'ArtEFAN', '2400', '2400', '4000', '-1538', 'Super Medic', 0, 522, 0, '2023-10-17', 'ArtEFAN', 'ArtEFAN', '522', 'cash', '2023-10-11', NULL, '450000', 'nn-303', 522, 'Antimalario', 'Approved', 'B722', NULL),
(37, 'Amoin', 'Amoin', 'Amoin', '0', '0', '400', '40', 'None', 0, 0, 0, '', 'Amoin', 'Amoin', '8995', 'Gell', '+03002023-10-11T00:39:02+03:0031-11-2023', NULL, '0', 'D876', 0, 'Antiprotoazol', 'Approved', '', 'Consumable'),
(38, 'REMOS', 'REMOS', 'REMOS', '0', '0', '500', '500', 'None', 0, 0, 0, '', 'REMOS', 'REMOS', '8995', 'Tabs', '10/11/23', NULL, '0', 'D876', 0, 'Anti-ulcers', 'Approved', '', 'Consumable'),
(39, 'Periton	', 'Periton	', 'Periton	', '0', '0', '1600', '', 'None', 0, 40, 0, '', 'Periton	', 'Periton	', '40', 'Tabs', '10/12/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Approved', 'B111', 'Consumable'),
(40, 'Periton	', 'Periton	', 'Periton	', '0', '0', '1600', '', 'None', 0, 40, 0, '', 'Periton	', 'Periton	', '40', 'Tabs', '10/12/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Approved', 'B111', 'Consumable'),
(41, 'Periton	', 'Periton	', 'Periton	', '0', '0', '1600', '', 'None', 0, 40, 0, '', 'Periton	', 'Periton	', '40', 'Tabs', '10/12/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Approved', 'B111', 'Consumable'),
(42, 'Periton	', 'Periton	', 'Periton	', '0', '0', '1600', '', 'None', 0, 40, 0, '', 'Periton	', 'Periton	', '40', 'Tabs', '10/12/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Approved', 'B111', 'Consumable'),
(43, 'Periton	', 'Periton	', 'Periton	', '0', '0', '1600', '', 'None', 0, 10000, 0, '', 'Periton	', 'Periton	', '10000', 'Tabs', '10/12/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Approved', 'B111', 'Consumable'),
(44, 'Periton	', 'Periton	', 'Periton	', '0', '0', '1600', '', 'None', 0, 10000, 0, '', 'Periton	', 'Periton	', '10000', 'Tabs', '10/12/23', NULL, '0', 'D876', 0, 'Anti-spasmotic', 'Approved', 'B111', 'Consumable'),
(45, 'Periton	', 'Periton	', 'Periton	', '0', '0', '1600', '', 'None', 0, 10000, 0, '', 'Periton	', 'Periton	', '10000', 'Tabs', '10/12/23', NULL, '0', 'D876', 10000, 'Anti-spasmotic', 'Approved', 'B111', 'Consumable'),
(46, 'Periton	', 'Periton	', 'Periton	', '0', '0', '1600', '', 'None', 0, 40, 0, '', 'Periton	', 'Periton	', '40', 'Tabs', '10/12/23', NULL, '0', 'D876', 40, 'Anti-spasmotic', 'Approved', 'B111', 'Consumable'),
(47, 'Amoin', 'Amoin', 'Amoin', '0', '0', '400', '', 'None', 0, 6000, 0, '', 'Amoin', 'Amoin', '8995', 'Tabs', '10/12/23', NULL, '0', 'D876', 6000, 'Anti-spasmotic', 'Approved', '', 'Consumable'),
(48, 'Periton	', '', 'Periton	', '900', '900', '1600', '-868', 'Guardian Pharmacy', 0, 8000, 0, '2023-10-26', 'Periton	', 'Periton	', '8003', 'cash', '2023-10-12', NULL, '260000', '9s', 8000, 'Head ache', 'Approved', 'B7777', NULL),
(49, 'Mabendozol', 'Mabendozol', 'Mabendozol', '150', '150', '200', '19850', 'Super Medic', 0, 3, 0, '2023-10-18', 'Mabendozol', 'Mabendozol', '3', 'cash', '2023-10-27', NULL, '60000', '392', 3, 'Urinary affection', 'Approved', 'B33', NULL),
(50, 'Capsul', 'Capsul', 'Capsul', '150', '150', '200', '14850', 'Super Medic', 0, 6, 0, '2023-10-31', 'Capsul', 'Capsul', '6', 'cash', '2023-10-27', NULL, '90000', 'f34', 6, 'Painkiller', 'Approved', 'B7322', NULL),
(51, 'Asprine', 'Asprine', 'Asprine', '50', '50', '150', '6616', 'dddd5', 0, 3, 0, '2023-10-28', 'Asprine', 'Asprine', '3', 'cash', '2023-10-28', NULL, '20000', 'fff-933', 3, 'PainKiller', 'Approved', 'B344', NULL),
(52, 'Asprine', 'Asprine', 'Asprine', '50', '50', '150', '124950', 'Hans kk2', 0, 2, 0, '2023-11-04', 'Asprine', 'Asprine', '0', 'cash', '2023-10-28', NULL, '250000', 'fff-933', 2, 'PainKiller', 'Approved', 'B544', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `transaction_id` int NOT NULL,
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
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `qty` int NOT NULL,
  `cost` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchases_ret`
--

CREATE TABLE `purchases_ret` (
  `transaction_id` int NOT NULL DEFAULT '0',
  `invoice_number` varchar(100) NOT NULL,
  `cashier` varchar(100) NOT NULL,
  `curdate` varchar(255) DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `due_date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `balance` varchar(100) NOT NULL DEFAULT '0',
  `SalesOrderID` varchar(255) DEFAULT NULL,
  `amt_paid` int DEFAULT NULL,
  `tme` varchar(255) DEFAULT NULL,
  `date` varchar(266) DEFAULT NULL,
  `batch_no` varchar(266) DEFAULT NULL,
  `productid` varchar(266) DEFAULT NULL,
  `total` varchar(266) DEFAULT NULL,
  `pay_type` varchar(266) DEFAULT NULL,
  `quantity` varchar(266) DEFAULT NULL,
  `exp_date` varchar(266) DEFAULT NULL,
  `suplier_id` varchar(266) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchases_ret`
--

INSERT INTO `purchases_ret` (`transaction_id`, `invoice_number`, `cashier`, `curdate`, `type`, `amount`, `profit`, `due_date`, `name`, `balance`, `SalesOrderID`, `amt_paid`, `tme`, `date`, `batch_no`, `productid`, `total`, `pay_type`, `quantity`, `exp_date`, `suplier_id`) VALUES
(0, 'B333', 'admin', NULL, 'cash', '150', '150', '2023-10-05', 'Guardian Pharmacy', '0', NULL, NULL, '13:39:12', '2023-10-05', NULL, '10', '', 'cash', '90', NULL, NULL),
(0, 'B431', 'admin', NULL, 'cash', '1500', '1500', '2023-10-05', 'whitestar', '0', NULL, NULL, '13:41:19', '2023-10-05', NULL, '3', '', 'cash', '3', NULL, NULL),
(0, 'RE76', 'admin', NULL, 'cash', '1600', '1600', '2023-10-05', 'whitestar', '0', NULL, NULL, '13:47:47', '2023-10-05', NULL, '4', '', 'cash', '8', NULL, NULL),
(0, 'RS33', 'admin', NULL, 'cash', '1500', '1500', '2023-10-05', 'abacus pharmacy', '0', NULL, NULL, '20:27:45', '2023-10-10', NULL, '3', '', 'cash', '4', NULL, NULL),
(0, 'RS33', 'admin', NULL, 'cash', '1500', '1500', '2023-10-05', 'abacus pharmacy', '0', NULL, NULL, '20:30:09', '2023-10-10', NULL, '3', '', 'cash', '4', NULL, NULL),
(0, 'RS33', 'admin', NULL, 'cash', '1500', '1500', '2023-10-05', 'abacus pharmacy', '0', NULL, NULL, '20:32:38', '2023-10-10', NULL, '3', '', 'cash', '4', NULL, NULL),
(0, 'RS777', 'admin', NULL, 'cash', '1500', '1500', '2023-10-05', 'whitestar', '0', NULL, NULL, '20:38:04', '2023-10-05', NULL, '3', '', 'cash', '5', NULL, NULL),
(0, 'RS777', 'admin', NULL, 'cash', '1500', '1500', '2023-10-05', 'whitestar', '0', NULL, NULL, '20:41:17', '2023-10-05', NULL, '3', '', 'cash', '5', NULL, NULL),
(0, 'RS777', 'admin', NULL, 'cash', '1500', '1500', '2023-10-05', 'whitestar', '0', NULL, NULL, '20:44:49', '2023-10-05', NULL, '3', '', 'cash', '5', NULL, NULL),
(0, 'Rs21', 'admin', NULL, 'cash', '200', '200', '2023-10-05', 'Super Medic', '0', NULL, NULL, '20:51:36', '2023-10-05', NULL, '9', '30000', 'cash', '5', NULL, NULL),
(0, 'RS532', 'admin', NULL, 'cash', '1000', '1000', '2023-10-05', 'Guardian Pharmacy', '0', NULL, NULL, '20:53:12', '2023-10-05', NULL, '5', '', 'cash', '89', NULL, NULL),
(0, 'R333', 'admin', NULL, 'cash', '200', '200', '2023-10-05', 'Guardian Pharmacy', '0', NULL, NULL, '20:54:12', '2023-10-03', NULL, '9', '', 'cash', '554', NULL, NULL),
(0, 'Re422', 'admin', NULL, 'cash', '200', '200', '2023-10-05', 'Guardian Pharmacy', '0', NULL, NULL, '20:55:42', '2023-10-05', NULL, '7', '', 'cash', '33', NULL, NULL),
(0, 'rs4322', 'admin', NULL, 'cash', '200', '200', '2023-10-05', 'abacus pharmacy', '0', NULL, NULL, '20:57:38', '2023-10-05', NULL, '7', '', 'cash', '4', NULL, NULL),
(0, 'Rs444', 'admin', NULL, 'cash', '1000', '1000', '2023-10-05', 'Super Medic', '0', NULL, NULL, '21:00:57', '2023-10-05', NULL, '5', '', 'cash', '4', NULL, NULL),
(0, 'rs422', 'admin', NULL, 'cash', '200', '200', '2023-10-05', 'whitestar', '0', NULL, NULL, '21:03:19', '2023-10-05', NULL, '7', '', 'cash', '4', NULL, NULL),
(0, 'rs422', 'admin', NULL, 'cash', '', '0', '2023-10-05', 'whitestar', '0', NULL, NULL, '21:20:01', '2023-10-05', NULL, '1', '', 'cash', '4', NULL, NULL),
(0, 'rs422', 'admin', NULL, 'cash', '', '0', '2023-10-05', 'whitestar', '0', NULL, NULL, '21:22:26', '2023-10-05', NULL, '1', '', 'cash', '4', NULL, NULL),
(0, 'rs42', 'admin', NULL, 'cash', '200', '200', '2023-10-05', 'abacus pharmacy', '0', NULL, NULL, '21:23:18', '2023-10-05', NULL, '7', '', 'cash', '45', NULL, NULL),
(0, 'rs32', 'admin', NULL, 'cash', '1600', '1600', '2023-10-05', 'Guardian Pharmacy', '0', NULL, NULL, '21:27:04', '2023-10-05', NULL, '4', '', 'cash', '444', NULL, NULL),
(0, 'rs32', 'admin', NULL, 'cash', '1600', '1600', '2023-10-05', 'Guardian Pharmacy', '0', NULL, NULL, '21:28:47', '2023-10-05', NULL, '4', '', 'cash', '444', NULL, NULL),
(0, 'rs32', 'admin', NULL, 'cash', '1600', '1600', '2023-10-05', 'Guardian Pharmacy', '0', NULL, NULL, '21:30:06', '2023-10-05', NULL, '4', '', 'cash', '444', NULL, NULL),
(0, 'RS321', 'admin', NULL, 'cash', '1000', '1000', '2023-10-05', 'whitestar', '0', NULL, NULL, '21:31:57', '2023-10-05', NULL, '5', '', 'cash', '4', NULL, NULL),
(0, 'RS89', 'admin', NULL, 'cash', '1000', '1000', '2023-10-05', 'Super Medic', '0', NULL, NULL, '21:44:02', '2023-10-05', NULL, '5', '', 'cash', '5', NULL, NULL),
(0, 'RS89', 'admin', NULL, 'cash', '1000', '1000', '2023-10-05', 'Super Medic', '0', NULL, NULL, '21:46:57', '2023-10-05', NULL, '5', '0', 'cash', '5', NULL, NULL),
(0, 'rd3444', 'admin', NULL, 'Array', '200', '200', '2023-10-05', 'whitestar', '0', NULL, NULL, '22:01:44', '2023-10-05', NULL, '7', '0', 'cash', '67', NULL, NULL),
(0, 'rd3444', 'admin', NULL, 'Array', '900', '900', '2023-10-05', 'whitestar', '0', NULL, NULL, '22:01:44', '2023-10-05', NULL, '13', '0', 'cash', '4', NULL, NULL),
(0, 'rd3444', 'admin', NULL, 'Array', 'Array', '', '2023-10-05', 'whitestar', '0', NULL, NULL, '22:03:51', '2023-10-05', NULL, '7', '0', 'cash', '67', NULL, NULL),
(0, 'rd3444', 'admin', NULL, 'Array', 'Array', '', '2023-10-05', 'whitestar', '0', NULL, NULL, '22:03:52', '2023-10-05', NULL, '13', '0', 'cash', '4', NULL, NULL),
(0, 'rd3444', 'admin', NULL, 'Array', 'Array', '', '2023-10-05', 'whitestar', '0', NULL, NULL, '22:32:39', '2023-10-05', NULL, '7', '0', 'cash', '67', NULL, NULL),
(0, 'rd3444', 'admin', NULL, 'Array', 'Array', '', '2023-10-05', 'whitestar', '0', NULL, NULL, '22:32:39', '2023-10-05', NULL, '13', '0', 'cash', '4', NULL, NULL),
(0, 'rd3444', 'admin', NULL, 'Array', 'Array', '', '2023-10-05', 'whitestar', '0', NULL, NULL, '22:33:46', '2023-10-05', NULL, '7', '9000', 'cash', '67', NULL, NULL),
(0, 'rd3444', 'admin', NULL, 'Array', 'Array', '', '2023-10-05', 'whitestar', '0', NULL, NULL, '22:33:46', '2023-10-05', NULL, '13', '780000', 'cash', '4', NULL, NULL),
(0, 'rd3444', 'admin', NULL, 'cash', '134.33', '', '2023-10-05', 'whitestar', '0', NULL, NULL, '22:35:50', '2023-10-05', NULL, '7', '9000', 'cash', '67', NULL, NULL),
(0, 'rd3444', 'admin', NULL, 'cash', '195000.00', '', '2023-10-05', 'whitestar', '0', NULL, NULL, '22:35:50', '2023-10-05', NULL, '13', '780000', 'cash', '4', NULL, NULL),
(0, 'rd3444', 'admin', NULL, 'cash', '134.33', '200', '2023-10-05', 'whitestar', '0', NULL, NULL, '22:38:07', '2023-10-05', NULL, '7', '9000', 'cash', '67', NULL, NULL),
(0, 'rd3444', 'admin', NULL, 'cash', '195000.00', '900', '2023-10-05', 'whitestar', '0', NULL, NULL, '22:38:07', '2023-10-05', NULL, '13', '780000', 'cash', '4', NULL, NULL),
(0, 'rd3444', 'admin', NULL, 'cash', '134.33', '200', '2023-10-05', 'whitestar', '0', NULL, NULL, '22:41:53', '2023-10-05', '444', '7', '9000', 'cash', '67', '2023-10-05', NULL),
(0, 'rd3444', 'admin', NULL, 'cash', '195000.00', '900', '2023-10-05', 'whitestar', '0', NULL, NULL, '22:41:53', '2023-10-05', '532', '13', '780000', 'cash', '4', '2023-10-06', NULL),
(0, 'rd3444', 'admin', NULL, 'cash', '134.33', '134', '2023-10-05', 'whitestar', '0', NULL, NULL, '22:44:11', '2023-10-05', '444', '7', '9000', 'cash', '67', '2023-10-05', NULL),
(0, 'rd3444', 'admin', NULL, 'cash', '195000.00', '195000', '2023-10-05', 'whitestar', '0', NULL, NULL, '22:44:12', '2023-10-05', '532', '13', '780000', 'cash', '4', '2023-10-06', NULL),
(0, 'rd3444', 'admin', NULL, 'cash', '134.33', '-16', '2023-10-05', 'whitestar', '0', NULL, NULL, '22:45:36', '2023-10-05', '444', '7', '9000', 'cash', '67', '2023-10-05', NULL),
(0, 'rd3444', 'admin', NULL, 'cash', '195000.00', '194600', '2023-10-05', 'whitestar', '0', NULL, NULL, '22:45:37', '2023-10-05', '532', '13', '780000', 'cash', '4', '2023-10-06', NULL),
(0, 'rd3444', 'admin', NULL, 'cash', '134.33', '-16', '2023-10-05', 'whitestar', '0', NULL, NULL, '22:46:27', '2023-10-05', '444', '7', '9000', 'cash', '67', '2023-10-05', NULL),
(0, 'rd3444', 'admin', NULL, 'cash', '195000.00', '194600', '2023-10-05', 'whitestar', '0', NULL, NULL, '22:46:27', '2023-10-05', '532', '13', '780000', 'cash', '4', '2023-10-06', NULL),
(0, 'rd3444', 'admin', NULL, 'cash', '134.33', '-16', '2023-10-05', 'whitestar', '0', NULL, NULL, '22:48:36', '2023-10-05', '444', '7', '9000', 'cash', '67', '2023-10-05', NULL),
(0, 'rd3444', 'admin', NULL, 'cash', '195000.00', '194600', '2023-10-05', 'whitestar', '0', NULL, NULL, '22:48:36', '2023-10-05', '532', '13', '780000', 'cash', '4', '2023-10-06', NULL),
(0, 'RS4351', 'admin', NULL, 'cash', '3500.00', '2600', '2023-10-05', 'Super Medic', '0', NULL, NULL, '22:50:20', '2023-10-05', 'B632', '4', '700000', 'cash', '200', '2023-10-26', NULL),
(0, 'RS4351', 'admin', NULL, 'cash', '5714.29', '5564', '2023-10-05', 'Super Medic', '0', NULL, NULL, '22:50:20', '2023-10-05', 'B6432', '9', '800000', 'cash', '140', '2023-11-03', NULL),
(0, 'RS4351', 'admin', NULL, 'cash', '3500.00', '2600', '2023-10-05', 'Super Medic', '0', NULL, NULL, '23:16:53', '2023-10-05', 'B632', '4', '700000', 'cash', '200', '2023-10-26', NULL),
(0, 'RS4351', 'admin', NULL, 'cash', '5714.29', '5564', '2023-10-05', 'Super Medic', '0', NULL, NULL, '23:16:54', '2023-10-05', 'B6432', '9', '800000', 'cash', '140', '2023-11-03', NULL),
(0, 'RS4351', 'admin', NULL, 'cash', '3500.00', '2600', '2023-10-05', 'Super Medic', '0', NULL, NULL, '23:17:22', '2023-10-05', 'B632', '4', '700000', 'cash', '200', '2023-10-26', NULL),
(0, 'RS4351', 'admin', NULL, 'cash', '5714.29', '5564', '2023-10-05', 'Super Medic', '0', NULL, NULL, '23:17:23', '2023-10-05', 'B6432', '9', '800000', 'cash', '140', '2023-11-03', NULL),
(0, 'RS4351', 'admin', NULL, 'cash', '3500.00', '2600', '2023-10-05', 'Super Medic', '0', NULL, NULL, '23:20:12', '2023-10-05', 'B632', '4', '700000', 'cash', '200', '2023-10-26', NULL),
(0, 'RS4351', 'admin', NULL, 'cash', '5714.29', '5564', '2023-10-05', 'Super Medic', '0', NULL, NULL, '23:20:14', '2023-10-05', 'B6432', '9', '800000', 'cash', '140', '2023-11-03', NULL),
(0, 'RS2132', 'admin', NULL, 'cash', '22500.00', '21600', '2023-10-05', 'whitestar', '0', NULL, NULL, '23:22:45', '2023-10-05', 'B632', '3', '90000', 'cash', '4', '2023-11-01', NULL),
(0, 'RS2132', 'admin', NULL, 'cash', '12800.00', '12750', '2023-10-05', 'whitestar', '0', NULL, NULL, '23:22:45', '2023-10-05', 'B11873', '10', '640000', 'cash', '50', '2023-10-21', NULL),
(0, 'RS2132', 'admin', NULL, 'cash', '22500.00', '21600', '2023-10-05', 'whitestar', '0', NULL, NULL, '23:25:01', '2023-10-05', 'B632', '3', '90000', 'cash', '4', '2023-11-01', NULL),
(0, 'RS2132', 'admin', NULL, 'cash', '12800.00', '12750', '2023-10-05', 'whitestar', '0', NULL, NULL, '23:25:03', '2023-10-05', 'B11873', '10', '640000', 'cash', '50', '2023-10-21', NULL),
(0, 'RE12333', 'admin', NULL, 'cash', '111666.67', '111516', '2023-10-05', 'whitestar', '0', NULL, NULL, '23:28:05', '2023-10-11', 'RS2132', '9', '670000', 'cash', '6', '2023-10-05', NULL),
(0, 'RE12333', 'admin', NULL, 'cash', '111666.67', '111516', '2023-10-05', 'whitestar', '0', NULL, NULL, '23:29:02', '2023-10-11', 'RS2132', '9', '670000', 'cash', '6', '2023-10-05', NULL),
(0, 'RS312', 'admin', NULL, 'cash', '127290.89', '127240', '2023-10-05', 'whitestar', '0', NULL, NULL, '23:30:19', '2023-10-19', 'RS2132', '17', '7000999', 'cash', '55', '2023-10-11', NULL),
(0, 'RS312', 'admin', NULL, 'cash', '127290.89', '127240', '2023-10-05', 'whitestar', '0', NULL, NULL, '23:31:03', '2023-10-19', 'RS2132', '17', '7000999', 'cash', '55', '2023-10-11', NULL),
(0, 'RS312', 'admin', NULL, 'cash', '127290.89', '127240', '2023-10-05', 'whitestar', '0', NULL, NULL, '23:31:48', '2023-10-19', 'RS2132', '17', '7000999', 'cash', '55', '2023-10-11', NULL),
(0, 'RS312', 'admin', NULL, 'cash', '127290.89', '127240', '2023-10-05', 'whitestar', '0', NULL, NULL, '23:32:29', '2023-10-19', 'RS2132', '17', '7000999', 'cash', '55', '2023-10-11', NULL),
(0, 'RS312', 'admin', NULL, 'cash', '127290.89', '127240', '2023-10-05', 'whitestar', '0', NULL, NULL, '23:33:36', '2023-10-19', 'RS2132', '17', '7000999', 'cash', '55', '2023-10-11', NULL),
(0, 'RS312', 'admin', NULL, 'cash', '127290.89', '127240', '2023-10-05', 'whitestar', '0', NULL, NULL, '23:35:02', '2023-10-19', 'RS2132', '17', '7000999', 'cash', '55', '2023-10-11', NULL),
(0, 'RS312', 'admin', NULL, 'cash', '127290.89', '127240', '2023-10-05', 'whitestar', '0', NULL, NULL, '23:35:47', '2023-10-19', 'RS2132', '17', '7000999', 'cash', '55', '2023-10-11', NULL),
(0, 'RS32333', 'admin', NULL, 'cash', '64000.00', '63950', '2023-10-05', 'Guardian Pharmacy', '0', NULL, NULL, '23:36:48', '2023-10-05', 'RS2132', '17', '640000', 'cash', '10', '2023-10-13', NULL),
(0, 'RS32333', 'admin', NULL, 'cash', '64000.00', '63950', '2023-10-05', 'Guardian Pharmacy', '0', NULL, NULL, '23:37:18', '2023-10-05', 'RS2132', '17', '640000', 'cash', '10', '2023-10-13', NULL),
(0, 'RD2233', 'admin', NULL, 'cash', '400000.00', '399950', '2023-10-05', 'Guardian Pharmacy', '0', NULL, NULL, '23:38:39', '2023-10-05', 'RS2132', '17', '8000000', 'cash', '20', '2023-11-04', NULL),
(0, 'RD2233', 'admin', NULL, 'cash', '400000.00', '399950', '2023-10-05', 'Guardian Pharmacy', '0', NULL, NULL, '23:40:51', '2023-10-05', 'RS2132', '17', '8000000', 'cash', '20', '2023-11-04', NULL),
(0, 'RW653', 'admin', NULL, 'cash', '18750.00', '18700', '2023-10-05', 'whitestar', '0', NULL, NULL, '23:41:34', '2023-10-12', 'RS2132', '17', '750000', 'cash', '40', '2023-10-05', NULL),
(0, 'RE6788', 'admin', NULL, 'cash', '7303.37', '6903', '2023-10-05', 'abacus pharmacy', '0', NULL, NULL, '23:47:55', '2023-10-05', 'B987544', '13', '650000', 'cash', '89', '2023-10-04', NULL),
(0, 'RE6788', 'admin', NULL, 'cash', '11410.26', '9010', '2023-10-05', 'abacus pharmacy', '0', NULL, NULL, '23:47:56', '2023-10-05', 'B87233', '14', '890000', 'cash', '78', '2023-10-25', NULL),
(0, 'RS3342', 'admin', NULL, 'credit', '454.55', '304', '2023-10-05', 'Super Medic', '0', NULL, NULL, '23:51:21', '2023-10-05', 'B7201', '11', '20000', 'credit', '44', '2023-10-12', NULL),
(0, 'RS3342', 'admin', NULL, 'credit', '10000.00', '9600', '2023-10-05', 'Super Medic', '0', NULL, NULL, '23:51:22', '2023-10-05', 'B78532', '19', '340000', 'credit', '34', '2023-11-01', NULL),
(0, 'RS3342', 'admin', NULL, 'credit', '454.55', '304', '2023-10-05', 'Super Medic', '0', NULL, NULL, '23:55:39', '2023-10-05', 'B7201', '11', '20000', 'credit', '44', '2023-10-12', NULL),
(0, 'RS3342', 'admin', NULL, 'credit', '10000.00', '9600', '2023-10-05', 'Super Medic', '0', NULL, NULL, '23:55:39', '2023-10-05', 'B78532', '19', '340000', 'credit', '34', '2023-11-01', NULL),
(0, ' RS452113', 'admin', NULL, 'cash', '1250.00', '1050', '2023-10-07', 'Super Medic', '0', NULL, NULL, '09:33:25', '2023-10-07', 'b3', '5', '5000', 'cash', '4', '2023-10-07', NULL),
(0, ' RS452113', 'admin', NULL, 'cash', '1000.00', '800', '2023-10-07', 'Super Medic', '0', NULL, NULL, '09:33:25', '2023-10-07', 'b6', '5', '5000', 'cash', '5', '2023-10-04', NULL),
(0, ' RS452113', 'admin', NULL, 'cash', '1000.00', '600', '2023-10-07', 'Super Medic', '0', NULL, NULL, '09:33:25', '2023-10-07', 'B66', '13', '2000', 'cash', '2', '2023-10-25', NULL),
(0, ' RS452113', 'admin', NULL, 'cash', '4000.00', '3850', '2023-10-07', 'Super Medic', '0', NULL, NULL, '09:33:25', '2023-10-07', 'b4', '9', '12000', 'cash', '3', '2023-10-25', NULL),
(0, 'RS92992', 'admin', NULL, 'cash', '180.00', '-20', '2023-10-07', 'abacus pharmacy', '0', NULL, NULL, '10:03:11', '', 'B64', '5', '900', 'cash', '5', '2023-10-07', '5'),
(0, 'RS92992', 'admin', NULL, 'cash', '166.67', '-234', '2023-10-07', 'abacus pharmacy', '0', NULL, NULL, '10:03:11', '', 'B88', '13', '1000', 'cash', '6', '2023-10-05', '5'),
(0, 'RS553', 'admin', NULL, 'cash', '30.00', '-120', '2023-10-07', 'Guardian Pharmacy', '0', NULL, NULL, '10:06:10', '2023-10-12', 'B88', '11', '6000', 'cash', '200', '2023-10-19', '6'),
(0, 'RS553', 'admin', NULL, 'cash', '3500.00', '3350', '2023-10-07', 'Guardian Pharmacy', '0', NULL, NULL, '10:06:10', '2023-10-12', 'B31', '16', '7000', 'cash', '2', '2023-10-25', '6'),
(0, 'RS3242251', 'admin', NULL, 'cash', '869.57', '819', '2023-10-07', 'Super Medic', '0', NULL, NULL, '16:24:43', '2023-10-11', 'B43', '10', '20000', 'cash', '23', '2023-10-11', '4'),
(0, 'RS3242251', 'admin', NULL, 'cash', '862.07', '-1538', '2023-10-07', 'Super Medic', '0', NULL, NULL, '16:24:43', '2023-10-11', 'B722', '20', '450000', 'cash', '522', '2023-10-17', '4'),
(0, 'RS341200', 'admin', NULL, 'cash', '32.50', '-868', '2023-10-12', 'Guardian Pharmacy', '0', NULL, NULL, '14:16:32', '2023-10-12', 'B7777', '4', '260000', 'cash', '8000', '2023-10-26', '6'),
(0, 'RS341200', 'admin', NULL, 'cash', '32.50', '-868', '2023-10-12', 'Guardian Pharmacy', '0', NULL, NULL, '14:17:00', '2023-10-12', 'B7777', '4', '260000', 'cash', '8000', '2023-10-26', '6'),
(0, 'RS920303', 'admin', NULL, 'cash', '20000.00', '19850', '2023-10-27', 'Super Medic', '0', NULL, NULL, '11:53:18', '2023-10-27', 'B33', '27', '60000', 'cash', '3', '2023-10-18', '4'),
(0, 'RS920303', 'admin', NULL, 'cash', '15000.00', '14850', '2023-10-27', 'Super Medic', '0', NULL, NULL, '11:53:18', '2023-10-27', 'B7322', '11', '90000', 'cash', '6', '2023-10-31', '4'),
(0, 'RS920303', 'admin', NULL, 'cash', '14285.71', '11885', '2023-10-27', 'Super Medic', '0', NULL, NULL, '11:53:19', '2023-10-27', 'B7322', '14', '100000', 'cash', '7', '2023-10-27', '4'),
(0, 'RS30023', 'admin', NULL, 'cash', '6666.67', '6616', '2023-10-28', 'dddd5', '0', NULL, NULL, '17:07:58', '2023-10-28', 'B344', '35', '20000', 'cash', '3', '2023-10-28', '8'),
(0, 'RS30023', 'admin', NULL, 'cash', '7500.00', '7300', '2023-10-28', 'dddd5', '0', NULL, NULL, '17:07:58', '2023-10-28', 'B33', '28', '30000', 'cash', '4', '2023-11-10', '8'),
(0, 'RS30023', 'admin', NULL, 'cash', '6666.67', '6616', '2023-10-28', 'dddd5', '0', NULL, NULL, '17:08:22', '2023-10-28', 'B344', '35', '20000', 'cash', '3', '2023-10-28', '8'),
(0, 'RS30023', 'admin', NULL, 'cash', '7500.00', '7300', '2023-10-28', 'dddd5', '0', NULL, NULL, '17:08:22', '2023-10-28', 'B33', '28', '30000', 'cash', '4', '2023-11-10', '8'),
(0, 'RS11212', 'admin', NULL, 'cash', '50000.00', '49100', '2023-10-28', 'Hans kk2', '0', NULL, NULL, '17:11:12', '2023-10-28', 'B344', '48', '150000', 'cash', '3', '2023-10-26', '7'),
(0, 'RS11212', 'admin', NULL, 'cash', '125000.00', '124950', '2023-10-28', 'Hans kk2', '0', NULL, NULL, '17:11:12', '2023-10-28', 'B544', '10', '250000', 'cash', '2', '2023-11-04', '7');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `product_id` int NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL DEFAULT 'None',
  `cost` varchar(100) NOT NULL,
  `o_price` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL DEFAULT 'None',
  `profit` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `onhand_qty` int NOT NULL,
  `qty` int NOT NULL,
  `qty_sold` int NOT NULL,
  `expiry_date` varchar(500) NOT NULL,
  `date_arrival` varchar(500) NOT NULL,
  `med_name` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `sell_type` varchar(255) DEFAULT NULL,
  `reg_date` varchar(255) DEFAULT NULL,
  `exp_date` varchar(255) DEFAULT NULL,
  `tot_buy` varchar(255) DEFAULT NULL,
  `del_no` varchar(255) DEFAULT NULL,
  `qty_left` int DEFAULT NULL,
  `category` varchar(266) DEFAULT NULL,
  `status` varchar(266) DEFAULT NULL,
  `invoice` varchar(255) DEFAULT NULL,
  `batch_no` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_details`
--

INSERT INTO `purchase_details` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`, `med_name`, `quantity`, `sell_type`, `reg_date`, `exp_date`, `tot_buy`, `del_no`, `qty_left`, `category`, `status`, `invoice`, `batch_no`) VALUES
(1, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 12, 0, '2027-01-06', '2022-07-06', 'Paracetamol', '12', 'Bot', '2022-07-06', '2027-01-06', '1800', '123', 12, 'Painkillers', 'Available', NULL, NULL),
(2, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 26, 0, '2022-07-13', '2022-07-06', 'Paracetamol', '26', 'Bot', '2022-07-06', '2022-07-13', '3900', '124', 26, 'Painkillers', 'Available', NULL, NULL),
(3, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 20, 0, '2022-07-14', '2022-07-14', 'Paracetamol', '20', 'Bot', '2022-07-06', '2022-07-14', '3000', '124', 20, 'Painkillers', 'Available', NULL, NULL),
(4, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 20, 0, '2022-07-22', '2022-07-15', 'Paracetamol', '20', 'Tab', '2022-07-06', '2022-07-22', '3000', '124', 20, 'Painkillers', 'Available', NULL, NULL),
(5, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 20, 0, '2022-07-22', '2022-07-15', 'Paracetamol', '20', 'Tab', '2022-07-06', '2022-07-22', '3000', '124', 20, 'Painkillers', 'Available', NULL, NULL),
(6, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 20, 0, '2022-07-22', '2022-07-15', 'Paracetamol', '20', 'Tab', '2022-07-06', '2022-07-22', '3000', '124', 20, 'Painkillers', 'Available', NULL, NULL),
(7, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 10, 0, '2022-07-11', '2022-07-07', 'Paracetamol', '10', 'Bot', '2022-07-06', '2022-07-11', '1500', '123', 10, 'Painkillers', 'Available', NULL, NULL),
(8, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 10, 0, '2022-07-11', '2022-07-07', 'Paracetamol', '10', 'Bot', '2022-07-06', '2022-07-11', '1500', '123', 10, 'Painkillers', 'Available', NULL, NULL),
(9, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 10, 0, '2022-07-11', '2022-07-07', 'Paracetamol', '10', 'Bot', '2022-07-06', '2022-07-11', '1500', '123', 10, 'Painkillers', 'Available', NULL, NULL),
(10, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 20, 0, '2022-07-12', '2022-07-08', 'Paracetamol', '20', 'Bot', '2022-07-06', '2022-07-12', '3000', '124', 20, 'Painkillers', 'Available', NULL, NULL),
(11, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 20, 0, '2022-07-14', '2022-07-06', 'Paracetamol', '20', 'Bot', '2022-07-06', '2022-07-14', '3000', '124', 20, 'Painkillers', 'Available', NULL, NULL),
(12, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 20, 0, '2022-07-14', '2022-07-06', 'Paracetamol', '20', 'Bot', '2022-07-06', '2022-07-14', '3000', '124', 20, 'Painkillers', 'Available', NULL, NULL),
(13, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 20, 0, '2022-07-14', '2022-07-06', 'Paracetamol', '20', 'Bot', '2022-07-06', '2022-07-14', '3000', '124', 20, 'Painkillers', 'Available', NULL, NULL),
(14, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 20, 0, '2022-07-07', '2022-07-06', 'Paracetamol', '20', 'Bot', '2022-07-06', '2022-07-07', '3000', '124', 20, 'Painkillers', 'Available', NULL, NULL),
(15, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 20, 0, '2022-07-07', '2022-07-06', 'Paracetamol', '20', 'Bot', '2022-07-06', '2022-07-07', '3000', '124', 20, 'Painkillers', 'Available', NULL, NULL),
(16, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 30, 0, '2022-07-14', '2022-07-15', 'Paracetamol', '30', 'Bot', '2022-07-06', '2022-07-14', '4500', '124', 30, 'Painkillers', 'Available', NULL, NULL),
(17, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 30, 0, '2022-07-15', '2022-07-05', 'Paracetamol', '30', 'Bot', '2022-07-06', '2022-07-15', '4500', '124', 30, 'Painkillers', 'Available', NULL, NULL),
(18, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 30, 0, '2022-07-06', '2022-07-21', 'Paracetamol', '30', 'Bot', '2022-07-07', '2022-07-06', '4500', '124', 30, 'Painkillers', 'Available', NULL, NULL),
(19, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 30, 0, '2022-07-06', '2022-07-21', 'Paracetamol', '30', 'Bot', '2022-07-07', '2022-07-06', '4500', '124', 30, 'Painkillers', 'Available', NULL, NULL),
(20, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 40, 0, '2022-07-07', '2022-07-12', 'Paracetamol', '40', 'Bot', '2022-07-06', '2022-07-07', '6000', '203', 40, 'Painkillers', 'Available', NULL, NULL),
(21, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 40, 0, '2022-07-07', '2022-07-12', 'Paracetamol', '40', 'Bot', '2022-07-06', '2022-07-07', '6000', '203', 40, 'Painkillers', 'Available', NULL, NULL),
(22, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 45, 0, '2022-07-14', '2022-07-13', 'Paracetamol', '45', 'Bot', '2022-07-06', '2022-07-14', '6750', '123', 45, 'Painkillers', 'Available', NULL, NULL),
(23, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 100, 0, '2022-07-09', '2022-07-14', 'Paracetamol', '100', 'Bot', '2022-07-06', '2022-07-09', '15000', '128', 100, 'Painkillers', 'Available', NULL, NULL),
(24, 'Paracetamol', 'Paracetamol', 'Paracetamol', '1500', '1500', '70000', '68500', 'abacus pharmacy', 0, 40, 0, '2022-07-13', '2022-07-06', 'Paracetamol', '40', 'Bot', '2022-07-07', '2022-07-13', '60000', '124', 40, 'Painkillers', 'Available', NULL, NULL),
(25, 'Paracetamol', 'Paracetamol', 'Paracetamol', '150', '150', '70000', '69850', 'abacus pharmacy', 0, 20, 0, '2022-07-14', '2022-07-06', 'Paracetamol', '20', 'Bot', '2022-07-06', '2022-07-14', '3000', '124', 20, 'Painkillers', 'Available', NULL, NULL),
(26, 'Painkiller', 'Painkiller', 'Painkiller', '15000', '15000', '70000', '55000', 'abacus pharmacy', 0, 30, 0, '2032-01-14', '2022-07-06', 'Painkiller', '30', 'Bot', '2022-07-06', '2032-01-14', '450000', '128', 30, 'Painkillers', 'Available', NULL, NULL),
(27, 'Painkiller', 'Painkiller', 'Painkiller', '15000', '15000', '70000', '55000', 'abacus pharmacy', 0, 30, 0, '2032-01-14', '2022-07-06', 'Painkiller', '30', 'Bot', '2022-07-06', '2032-01-14', '450000', '128', 30, 'Painkillers', 'Available', NULL, NULL),
(28, 'Painkiller', 'Painkiller', 'Painkiller', '15000', '15000', '70000', '55000', 'abacus pharmacy', 0, 30, 0, '2032-01-14', '2022-07-06', 'Painkiller', '30', 'Bot', '2022-07-06', '2032-01-14', '450000', '128', 30, 'Painkillers', 'Available', NULL, NULL),
(29, 'Painkiller', 'Painkiller', 'Painkiller', '15000', '15000', '70000', '55000', 'abacus pharmacy', 0, 30, 0, '2032-01-14', '2022-07-06', 'Painkiller', '30', 'Bot', '2022-07-06', '2032-01-14', '450000', '128', 30, 'Painkillers', 'Available', NULL, NULL),
(30, 'Quatem', 'Quatem', 'Quatem', '200', '200', '300', '100', 'Guardian Pharmacy', 0, 9000, 0, '2027-10-07', '2023-10-02', 'Quatem', '9000', 'Tab', '2023-10-02', '2027-10-07', '1800000', 'DD093', 9000, 'Painkiller', 'Approved', NULL, NULL),
(31, 'Quatem', 'Quatem', 'Quatem', '200', '200', '300', '100', 'Guardian Pharmacy', 0, 9000, 0, '2027-10-07', '2023-10-02', 'Quatem', '9000', 'Tab', '2023-10-02', '2027-10-07', '1800000', 'DD093', 9000, 'Painkiller', 'Approved', NULL, NULL),
(32, 'Ceptrine', 'Ceptrine', 'Ceptrine', '400', '400', '900', '500', 'Super Medic', 0, 10000, 0, '2055-10-05', '2023-10-02', 'Ceptrine', '10000', 'Tab', '2023-10-01', '2055-10-05', '4000000', 'HFFF43', 10000, 'Painkiller', 'Approved', NULL, NULL),
(33, 'Quatem', 'Quatem', 'Quatem', '100', '100', '400', '300', 'whitestar', 0, 900, 0, '2035-10-02', '2023-10-04', 'Quatem', '900', 'Tab', '2023-10-02', '2035-10-02', '90000', 'HH900', 900, 'Painkiller', 'Approved', NULL, NULL),
(34, 'ArtEFAN', 'ArtEFAN', 'ArtEFAN', '2400', '2400', '4000', '1600', 'Super Medic', 0, 9000, 0, '2033-06-02', '2023-10-02', 'ArtEFAN', '9000', 'Tab', '2023-10-02', '2033-06-02', '21600000', 'nn-303', 9000, 'Antimalario', 'Approved', NULL, NULL),
(35, 'Anti Malario', 'Anti Malario', 'Anti Malario', '150', '150', '200', '50', 'whitestar', 0, 5, 0, '2023-10-03', '', 'Anti Malario', '5', 'Tab', '10/03/23', '2023-10-03', '0', '', NULL, '', '', '2023-10-03', '111'),
(36, 'Anti Malario', 'Anti Malario', 'Anti Malario', '150', '150', '200', '50', 'whitestar', 0, 5, 0, '2023-10-03', '', 'Anti Malario', '5', 'Tab', '10/03/23', '2023-10-03', '750', '', NULL, '', '', '2023-10-03', '111'),
(37, 'Anti Malario', 'Anti Malario', 'Anti Malario', '150', '150', '200', '50', 'whitestar', 0, 5, 0, '2023-10-03', '', 'Anti Malario', '5', 'Tab', '10/03/23', '2023-10-03', '750', '', NULL, '', '', '2023-10-03', '111'),
(38, 'Anti Malario', 'Anti Malario', 'Anti Malario', '150', '150', '200', '100', 'whitestar', 0, 5, 0, '2023-10-03', '', 'Asprine', '5', 'Tab', '10/03/23', '2023-10-03', '750', '', NULL, 'PainKiller', '', '2023-10-03', '111'),
(39, 'Anti Malario', 'Anti Malario', 'Anti Malario', '150', '150', '200', '100', 'whitestar', 0, 5, 0, '2023-10-03', '', 'Asprine', '5', 'Tab', '10/03/23', '2023-10-03', '750', '', NULL, 'PainKiller', '', '2023-10-03', '111'),
(40, 'Anti Malario', 'Anti Malario', 'Anti Malario', '150', '150', '200', '100', 'whitestar', 0, 5, 0, '2023-10-03', '', 'Asprine', '5', 'Tab', '10/03/23', '2023-10-03', '750', '', NULL, 'PainKiller', '', '2023-10-03', '111'),
(41, 'Anti Malario', 'Anti Malario', 'Anti Malario', '50', '50', '100', '700', 'Guardian Pharmacy', 0, 4, 0, '2023-10-03', '', 'Periton	', '4', 'Tab', '10/03/23', '2023-10-03', '200', '', NULL, 'Head ache', '', '2023-10-03', 'b344'),
(42, 'Anti Malario', 'Anti Malario', 'Anti Malario', '140', '140', '300', '50', 'Guardian Pharmacy', 0, 5, 0, '2023-10-03', '', 'Capsul', '5', 'Tab', '10/03/23', '2023-10-03', '700', '', NULL, 'Painkiller', '', '2023-10-03', 'b5333'),
(43, 'Anti Malario', 'Anti Malario', 'Anti Malario', '140', '140', '400', '100', 'Super Medic', 0, 6, 0, '2030-10-01', '', 'Quatem', '6', 'Tab', '10/03/23', '2030-10-01', '840', '', NULL, 'Painkiller', '', '2023-10-03', '111'),
(44, 'Anti Malario', 'Anti Malario', 'Anti Malario', '200', '200', '500', '50', 'whitestar', 0, 6, 0, '2023-10-03', '', 'Mabendozol', '6', 'Tab', '10/03/23', '2023-10-03', '1200', '', NULL, 'Urinary affection', '', '222', 'v233'),
(45, 'Anti Malario', 'Anti Malario', 'Anti Malario', '100', '100', '200', '700', 'Super Medic', 0, 3, 0, '2023-10-03', '', 'Periton	', '3', 'Tab', '10/03/23', '2023-10-03', '300', '', NULL, 'Head ache', '', '222', 'd42'),
(46, 'Anti Malario', 'Anti Malario', 'Anti Malario', '100', '100', '200', '700', 'Super Medic', 0, 3, 0, '2023-10-03', '', 'Periton	', '3', 'Tab', '10/03/23', '2023-10-03', '300', '', NULL, 'Head ache', '', '222', 'd42'),
(47, 'Anti Malario', 'Anti Malario', 'Anti Malario', '200', '200', '400', '800', 'Super Medic', 0, 4, 0, '2024-10-15', '', 'Painkiller', '4', 'Tab', '10/03/23', '2024-10-15', '800', '', NULL, 'Abdominal', '', '333', 'b334'),
(48, 'Anti Malario', 'Anti Malario', 'Anti Malario', '5000', '5000', '6000', '100', 'abacus pharmacy', 0, 6, 0, '2023-10-11', '', 'Quatem', '6', 'Tab', '10/03/23', '2023-10-11', '30000', '', NULL, 'Painkiller', '', '333', 'b344'),
(49, '', '', '', '23000', '23000', '', '600', 'whitestar', 0, 3, 0, '2023-02-04', '', 'Periton ', '3', 'Bot', '10/05/23', '2023-02-04', '69000', '', NULL, 'Head ache', '', 'jh', 'yufgh'),
(50, 'D-Artepp', 'D-Artepp', 'D-Artepp', '120', '120', '200', '80', 'None', 0, 20, 0, '2023-11-01', 'Oct-06-2023', 'D-Artepp', '20', 'Stp', '2023-10-06', '2023-11-01', '2400', 'D876', 20, 'Healer', 'Approved', NULL, NULL),
(51, 'Kuiris', 'Kuiris', 'Kuiris', '0', '0', '300', '300', 'None', 0, 0, 0, '', 'Oct-07-2023', 'Kuiris', '', 'Bot', '2023-10-07', '', '0', 'D876', NULL, 'Antibiotics', 'Approved', NULL, NULL),
(52, 'Kuiris', 'Kuiris', 'Kuiris', '0', '0', '300', '300', 'None', 0, 0, 0, '', 'Oct-07-2023', 'Kuiris', '', 'Bot', '2023-10-07', '', '0', 'D876', NULL, 'Antibiotics', 'Approved', NULL, NULL),
(53, 'Kuiris', 'Kuiris', 'Kuiris', '0', '0', '300', '300', 'None', 0, 0, 0, '', 'Oct-07-2023', 'Kuiris', '', 'Bot', '2023-10-07', '', '0', 'D876', NULL, 'Antibiotics', 'Approved', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `transaction_id` int NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `cashier` varchar(100) NOT NULL,
  `curdate` varchar(255) DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `due_date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `balance` varchar(100) NOT NULL DEFAULT '0',
  `SalesOrderID` varchar(255) DEFAULT NULL,
  `amt_paid` int DEFAULT NULL,
  `tme` varchar(255) DEFAULT NULL,
  `date` varchar(266) DEFAULT NULL,
  `batch_no` varchar(266) DEFAULT NULL,
  `productid` varchar(266) DEFAULT NULL,
  `total` varchar(266) DEFAULT NULL,
  `pay_type` varchar(266) DEFAULT NULL,
  `quantity` varchar(266) DEFAULT NULL,
  `customer_id` varchar(266) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`transaction_id`, `invoice_number`, `cashier`, `curdate`, `type`, `amount`, `profit`, `due_date`, `name`, `balance`, `SalesOrderID`, `amt_paid`, `tme`, `date`, `batch_no`, `productid`, `total`, `pay_type`, `quantity`, `customer_id`) VALUES
(1, 'RS-808303', 'Admin', '08/27/20', 'cash', '19200', '1200', '300', 'John', ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'RS-808303', 'Admin', '08/27/20', 'cash', '19200', '1200', '2020-08-04', 'John', ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'RS-808303', 'Admin', '08/27/20', 'cash', '19200', '1200', '2020-08-27', 'John', ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'RS-20303332', 'Administrator', '07/12/22', 'cash', '1200', '600', '07/12/22', 'John', '0', '', 1200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'RS-50220', 'sab', '07/15/22', 'cash', '1600', '700', '07/15/22', 'John', '900', '', 700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '', 'Administrator', '09/28/23', 'cash', '840400', '100', '09/28/23', 'John', '0', NULL, 840400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'RS-82222733', 'Administrator', '09/28/23', 'cash', '840400', '100', '09/28/23', 'John', '0', NULL, 840400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'RS-335033', 'Administrator', '09/30/23', 'cash', '5600', '150', '2023-09-30', 'John', '0', NULL, 5600, '11:00:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'RS-4300332', 'Administrator', '09/30/23', 'cash', '1000', '100', '2023-09-30', 'John', '0', NULL, 1000, '11:19:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'RS-64233342', 'admin', NULL, 'cash', '1500', '1500', '2023-10-05', 'John', '0', NULL, NULL, '11:20:09', '10/05/23', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'RS-64233342', 'admin', NULL, 'cash', '1500', '1500', '2023-10-05', 'John', '0', NULL, NULL, '11:29:32', '10/05/23', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'RS-84303', 'admin', NULL, 'cash', '1500', '1500', '2023-10-05', 'kelvin', '0', NULL, NULL, '11:51:53', '10/05/23', NULL, '3', '9000.00', 'cash', '6', NULL),
(13, 'RS-3023522', 'admin', NULL, 'cash', '1500', '1500', '2023-10-05', 'kelvin', '0', NULL, NULL, '11:53:30', '10/05/23', NULL, '3', '33000.00', 'cash', '22', NULL),
(14, 'RS-043035', 'admin', NULL, 'cash', '1600', '1600', '2023-10-05', 'ggg', '0', NULL, NULL, '13:19:54', '10/05/23', NULL, '4', '9600.00', 'cash', '6', NULL),
(15, 'RS-043035', 'admin', NULL, 'cash', '1600', '1600', '2023-10-05', 'ggg', '0', NULL, NULL, '13:21:07', '10/05/23', NULL, '4', '9600.00', 'cash', '6', NULL),
(16, 'RS-043035', 'admin', NULL, 'cash', '1600', '1600', '2023-10-05', 'ggg', '0', NULL, NULL, '13:23:34', '10/05/23', NULL, '4', '9600.00', 'cash', '6', NULL),
(17, 'RS-2232235', 'admin', NULL, 'cash', '1600', '1600', '2023-10-07', 'Ruky Pharmacy', '0', NULL, NULL, '15:43:45', '10/07/23', NULL, '4', '4800.00', 'cash', '3', '5'),
(18, 'RS-083320', 'admin', NULL, 'cash', '1600', '1600', '2023-10-07', 'kelvin', '0', NULL, NULL, '15:44:38', '10/07/23', NULL, '4', '4800.00', 'cash', '3', '3'),
(19, 'RS-2902323', 'admin', NULL, 'cash', '200', '200', '2023-10-07', 'kelvin', '0', NULL, NULL, '15:56:43', '10/07/23', NULL, '7', '600.00', '', '3', '3'),
(20, 'RS-2902323', 'admin', NULL, 'cash', '0', '200', '2023-10-07', 'kelvin', '0', NULL, NULL, '15:56:44', '10/07/23', NULL, '16', '400.00', '', '2', '3'),
(21, 'RS-2902323', 'admin', NULL, 'cash', '200', '200', '2023-10-07', 'kelvin', '0', NULL, NULL, '15:56:53', '10/07/23', NULL, '7', '600.00', '', '3', '3'),
(22, 'RS-2902323', 'admin', NULL, 'cash', '0', '200', '2023-10-07', 'kelvin', '0', NULL, NULL, '15:56:53', '10/07/23', NULL, '16', '400.00', '', '2', '3'),
(23, 'RS-35282', 'admin', NULL, 'cash', '150', '150', '2023-10-07', 'JJ Pharmacy', '0', NULL, NULL, '15:57:57', '10/07/23', NULL, '10', '300.00', '', '2', '6'),
(24, 'RS-35282', 'admin', NULL, 'cash', '5', '200', '2023-10-07', 'JJ Pharmacy', '0', NULL, NULL, '15:57:57', '10/07/23', NULL, '18', '800.00', '', '4', '6'),
(25, 'RS-879302', 'admin', NULL, 'cash', '4000', '4000', '2023-10-07', 'Ruky Pharmacy', '0', NULL, NULL, '15:58:48', '10/07/23', NULL, '14', '12000.00', '', '3', '5'),
(26, 'RS-879302', 'admin', NULL, 'cash', '0', '1600', '2023-10-07', 'Ruky Pharmacy', '0', NULL, NULL, '15:58:50', '10/07/23', NULL, '15', '3200.00', '', '2', '5'),
(27, 'RS-879302', 'admin', NULL, 'cash', '4000', '1600', '2023-10-07', 'Ruky Pharmacy', '0', NULL, NULL, '16:06:02', '10/07/23', NULL, '14', '12000.00', 'cash', '3', '5'),
(28, 'RS-879302', 'admin', NULL, 'cash', '1600', '2600', '2023-10-07', 'Ruky Pharmacy', '0', NULL, NULL, '16:06:02', '10/07/23', NULL, '15', '3200.00', 'cash', '2', '5'),
(29, 'RS-32332037', 'admin', NULL, 'cash', '200', '5564', '2023-10-07', 'JJ Pharmacy', '0', NULL, NULL, '16:06:28', '10/07/23', NULL, '16', '800.00', 'cash', '4', '6'),
(30, 'RS-32332037', 'admin', NULL, 'cash', '200', '304', '2023-10-07', 'JJ Pharmacy', '0', NULL, NULL, '16:06:29', '10/07/23', NULL, '21', '1000.00', 'cash', '5', '6'),
(31, 'RS-27234', 'admin', NULL, 'cash', '1600', '700', '2023-10-07', 'Remmy', '0', NULL, NULL, '16:17:31', '10/07/23', NULL, '4', '8000.00', 'cash', '5', '7'),
(32, 'RS-27234', 'admin', NULL, 'cash', '300', '100', '2023-10-07', 'Remmy', '0', NULL, NULL, '16:17:31', '10/07/23', NULL, '12', '600.00', 'cash', '2', '7'),
(33, 'RS-5333392', 'admin', NULL, 'cash', '1000', '800', '2023-10-07', 'John', '0', NULL, NULL, '16:40:00', '2023-10-11', NULL, '5', '2000.00', 'cash', '2', '2'),
(34, 'RS-5333392', 'admin', NULL, 'cash', '200', '111516', '2023-10-07', 'John', '0', NULL, NULL, '16:40:00', '2023-10-11', NULL, '18', '600.00', 'cash', '3', '2'),
(35, 'RS-00332002', 'admin', NULL, 'cash', '1500', '600', '2023-10-11', 'kelvin', '0', NULL, NULL, '22:29:55', '2023-10-11', NULL, '3', '3000.00', 'cash', '2', '3'),
(36, 'RS-00332002', 'admin', NULL, 'cash', '200', '50', '2023-10-11', 'kelvin', '0', NULL, NULL, '22:29:56', '2023-10-11', NULL, '9', '600.00', 'cash', '3', '3'),
(37, 'RS-243329', 'admin', NULL, 'cash', '200', '50', '2023-10-11', 'Ruky Pharmacy', '0', NULL, NULL, '22:42:38', '2023-10-11', NULL, '9', '600.00', 'cash', '3', '5'),
(38, 'RS-243329', 'admin', NULL, 'cash', '200', '5564', '2023-10-11', 'Ruky Pharmacy', '0', NULL, NULL, '22:42:38', '2023-10-11', NULL, '16', '400.00', 'cash', '2', '5'),
(39, 'RS-32940', 'admin', NULL, 'cash', '200', '50', '2023-10-11', 'Remmy', '0', NULL, NULL, '22:44:04', '2023-10-11', NULL, '9', '800.00', 'cash', '4', '7'),
(40, 'RS-32940', 'admin', NULL, 'cash', '1600', '2600', '2023-10-11', 'Remmy', '0', NULL, NULL, '22:44:05', '2023-10-11', NULL, '15', '3200.00', 'cash', '2', '7'),
(41, 'RS-393302', 'admin', NULL, 'cash', '900', '6903', '2023-10-12', 'John', '0', NULL, NULL, '13:55:34', '2023-10-12', NULL, '19', '1800.00', 'cash', '2', '2'),
(42, 'RS-2226333', 'admin', NULL, 'cash', '900', '6903', '2023-10-12', 'Ruky Pharmacy', '0', NULL, NULL, '14:01:51', '2023-10-12', NULL, '19', '6300.00', 'cash', '7', '5'),
(43, 'RS-2462363', 'admin', NULL, 'cash', '900', '6903', '2023-10-12', 'Ruky Pharmacy', '0', NULL, NULL, '14:02:28', '2023-10-12', NULL, '19', '1800.00', 'cash', '2', '5'),
(44, 'RS-3652339', 'admin', NULL, 'cash', '900', '6903', '2023-10-12', 'kelvin', '0', NULL, NULL, '14:03:21', '2023-10-12', NULL, '19', '1800.00', 'cash', '2', '3'),
(45, 'RS-3652339', 'admin', NULL, 'cash', '4000', '9010', '2023-10-12', 'kelvin', '0', NULL, NULL, '14:03:21', '2023-10-12', NULL, '20', '32000.00', 'cash', '8', '3');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE `sales_order` (
  `transaction_id` int NOT NULL,
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
(23, 'RS-50220', 'None', '1', '1600', '700', 'None', 'None', 'None', '1600', '0.0', 'None', 'John', 'Head ache', 'Periton	', NULL, '2022-07-15'),
(24, 'RS-82222733', 'None', '4', '280000', '220000', 'None', 'None', 'None', '70000', '0.0', 'None', 'John', 'Urinary affection', 'Mabendozol', NULL, '2023-09-28'),
(25, 'RS-82222733', 'None', '4', '280000', '220000', 'None', 'None', 'None', '70000', '0.0', 'None', 'John', 'Urinary affection', 'Mabendozol', NULL, '2023-09-28'),
(26, 'RS-82222733', 'None', '4', '280000', '220000', 'None', 'None', 'None', '70000', '0.0', 'None', 'John', 'Urinary affection', 'Mabendozol', NULL, '2023-09-28'),
(27, 'RS-82222733', 'None', '2', '400', '100', 'None', 'None', 'None', '200', '0.0', 'None', 'John', 'Urinary affection', 'Mabendozol', NULL, '2023-09-28'),
(28, 'RS-335033', 'None', '5', '5000', '4000', 'None', 'None', 'None', '1000', '0.0', 'None', 'John', 'Abdominal', 'Painkiller', NULL, '2023-09-30'),
(29, 'RS-335033', 'None', '3', '600', '150', 'None', 'None', 'None', '200', '0.0', 'None', 'John', 'Painkillers', 'Painv', NULL, '2023-09-30'),
(30, 'RS-4300332', 'None', '4', '600', '400', 'None', 'None', 'None', '150', '0.0', 'None', 'John', 'PainKiller', 'Asprine', NULL, '2023-09-30'),
(31, 'RS-4300332', 'None', '2', '400', '100', 'None', 'None', 'None', '200', '0.0', 'None', 'John', 'Painkillers', 'Painv', NULL, '2023-09-30'),
(32, 'RS-30292', 'None', '5', '20000', '8000', 'None', 'None', 'None', '4000', '0.0', 'None', 'John', 'Antimalario', 'ArtEFAN', NULL, '2023-10-02'),
(33, 'RS-30292', 'None', '5', '1000', '250', 'None', 'None', 'None', '200', '0.0', 'None', 'John', 'Painkiller', 'Capsul', NULL, '2023-10-02'),
(34, 'RS-2203233', 'None', '3', '600', '150', 'None', 'None', 'None', '200', '0.0', 'None', 'John', 'Painkillers', 'Paracetamol', NULL, '2023-10-02'),
(35, 'RS-2203233', 'None', '6', '1200', '300', 'None', 'None', 'None', '200', '0.0', 'None', 'John', 'Painkillers', 'Painv', NULL, '2023-10-02'),
(36, 'RS-2203233', 'None', '5', '750', '500', 'None', 'None', 'None', '150', '0.0', 'None', 'John', 'PainKiller', 'Asprine', NULL, '2023-10-02'),
(37, 'RS-2203233', 'None', '7', '1050', '700', 'None', 'None', 'None', '150', '0.0', 'None', 'John', 'PainKiller', 'Asprine', NULL, '2023-10-02');

-- --------------------------------------------------------

--
-- Table structure for table `supliers`
--

CREATE TABLE `supliers` (
  `suplier_id` int NOT NULL,
  `suplier_name` varchar(100) NOT NULL,
  `suplier_address` varchar(100) NOT NULL,
  `suplier_contact` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `note` varchar(655) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supliers`
--

INSERT INTO `supliers` (`suplier_id`, `suplier_name`, `suplier_address`, `suplier_contact`, `contact_person`, `note`, `location`) VALUES
(3, 'whitestar', 'P.box 123', '0786031442', 'Peter Ken', ' iphones, android', 'Jinja'),
(4, 'Super Medic', 'p.o box dfd', '0765428193', 'John', 'androids, iphone, blue', 'Jinja'),
(5, 'abacus pharmacy', 'nizam road', '075432876', 'kumar', 'notes2', 'Jinja'),
(6, 'Guardian Pharmacy', 'P.box 23', '0755943443', 'Susan Maria', 'cloves,hcg', 'Jinja'),
(7, 'Hans kk2', 'jinn', '0755943416', 'mary', 'hins', 'Jinja'),
(8, 'dddd5', 'hhh', '075432876', 'hhh', NULL, 'gg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
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
(3, 'admin', 'admin123', 'Administrator', 'admin'),
(4, 'abacus', 'abacus', 'abacus pharmacy', 'supplier'),
(5, 'whitestar', 'whitestar', 'whitestar', 'supplier'),
(6, 'guardian', 'guardian', 'Guardian Pharmacy', 'supplier'),
(7, 'medic', 'medic', 'Super Medic', 'supplier');

-- --------------------------------------------------------

--
-- Table structure for table `wsales`
--

CREATE TABLE `wsales` (
  `transaction_id` int DEFAULT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `cashier` varchar(100) NOT NULL,
  `curdate` varchar(255) DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `due_date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `balance` varchar(100) NOT NULL DEFAULT '0',
  `SalesOrderID` varchar(255) DEFAULT NULL,
  `amt_paid` int DEFAULT NULL,
  `tme` varchar(255) DEFAULT NULL,
  `date` varchar(266) DEFAULT NULL,
  `batch_no` varchar(266) DEFAULT NULL,
  `productid` varchar(266) DEFAULT NULL,
  `total` varchar(266) DEFAULT NULL,
  `pay_type` varchar(266) DEFAULT NULL,
  `quantity` varchar(266) DEFAULT NULL,
  `customer_id` varchar(266) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wsales`
--

INSERT INTO `wsales` (`transaction_id`, `invoice_number`, `cashier`, `curdate`, `type`, `amount`, `profit`, `due_date`, `name`, `balance`, `SalesOrderID`, `amt_paid`, `tme`, `date`, `batch_no`, `productid`, `total`, `pay_type`, `quantity`, `customer_id`) VALUES
(NULL, 'RS-22823026', 'admin', NULL, 'cash', '1000.00', '850', '2023-10-12', 'kelvin', '0', NULL, NULL, '10:58:50', '2023-10-12', '', '9', '6000', 'cash', '6', '3'),
(NULL, 'RS-22823026', 'admin', NULL, 'cash', '35000.00', '34100', '2023-10-12', 'kelvin', '0', NULL, NULL, '10:58:50', '2023-10-12', '', '15', '70000', 'cash', '2', '3'),
(NULL, 'RS-3230023', 'admin', NULL, 'cash', '18000.00', '17600', '2023-10-12', 'Ruky Pharmacy', '0', NULL, NULL, '13:47:19', '2023-10-12', '', '19', '90000', 'cash', '5', '5'),
(NULL, 'RS-2022027', 'admin', NULL, 'cash', '8333.33', '7933', '2023-10-12', '', '0', NULL, NULL, '13:53:09', '2023-10-12', '', '19', '25000', 'cash', '3', ''),
(NULL, 'RS-333372', 'admin', NULL, 'cash', '16666.67', '16266', '2023-10-12', 'JJ Pharmacy', '0', NULL, NULL, '13:58:38', '2023-10-12', '', '19', '50000', 'cash', '3', '6'),
(NULL, 'RS-6230372', 'admin', NULL, 'cash', '40000.00', '39950', '2023-10-29', 'JJ Pharmacy', '0', NULL, NULL, '08:23:17', '2023-10-29', 'B544', '52', '80000', 'cash', '2', '6'),
(NULL, 'RS-6230372', 'admin', NULL, 'cash', '6666.67', '6466', '2023-10-29', 'JJ Pharmacy', '0', NULL, NULL, '08:23:18', '2023-10-29', 'b6', '25', '20000', 'cash', '3', '6'),
(NULL, 'RS-23353', 'admin', NULL, 'cash', '150', '100', '2023-10-29', 'Ruky Pharmacy', '0', NULL, NULL, '08:51:17', '2023-10-29', 'B11873', '17', '', 'cash', '2', '5'),
(NULL, 'RS-23353', 'admin', NULL, 'cash', '1000', '800', '2023-10-29', 'Ruky Pharmacy', '0', NULL, NULL, '08:51:17', '2023-10-29', 'B64', '28', '', 'cash', '3', '5');

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
  MODIFY `transaction_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `transaction_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `equity`
--
ALTER TABLE `equity`
  MODIFY `equity_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `expense_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `liabilities`
--
ALTER TABLE `liabilities`
  MODIFY `transaction_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `transaction_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases_item`
--
ALTER TABLE `purchases_item`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `transaction_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `transaction_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `supliers`
--
ALTER TABLE `supliers`
  MODIFY `suplier_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
